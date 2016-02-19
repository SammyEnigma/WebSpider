#include "PageSpider.h"
#include <QRegExp>
#include <QMapIterator>
#include <QTimer>

#include <QDebug>

PageSpider::PageSpider() :
    m_completedCount(0), m_limitCount(2), m_totalCount(0)
{
    m_imgCount =0;
    m_httpManager = 0;
    m_hasNext = false;

    m_urlPattern = "<div\\s+class=['\"]pic['\"].*href=['\"]([^['\"]+)['\"].*<p>([^<]+)<";
    m_nextPattern = "<a\\s+class=[\"']next[\"'].*href=[\"']([^>]*page=\\d+.*)[\"']>";

//    m_urlPattern = "<li>\\s*<a.*href=['\"]([^['\"]+.html)['\"].*alt=['\"]([^>]+)['\"].*/></a>";
//    m_nextPattern = "<a\\s+href=['\"]([^['\"]+.html)['\"]>></a>";
}

PageSpider::PageSpider(AbstractSpider *spider):
    AbstractSpider(spider),
    m_completedCount(0), m_limitCount(2), m_totalCount(0)
{
    m_httpManager = 0;
    m_hasNext = false;

    m_urlPattern = "<div\\sclass=['\"]pic['\"].*href=['\"]([^['\"]+)['\"].*<p>([^<]+)<";
    m_nextPattern = "<a\\s+class=[\"']next[\"'].*href=[\"']([^>]*page=\\d+.*)[\"']>";

//    m_urlPattern = "<li>\\s*<a.*href=['\"]([^['\"]+.html)['\"].*alt=['\"]([^>]+)['\"].*/></a>";
//    m_nextPattern = "<a\\s+href=['\"]([^['\"]+.html)['\"]>></a>";
}

PageSpider::~PageSpider()
{
//    m_httpManager->deleteLater();
}

void PageSpider::doRequest(const QUrl &url)
{
    QString scheme = url.scheme();
    QString host = url.host();
    QString rootUrl = scheme + "://" + host;
    setRootUrl(rootUrl);
    append(url);
    spdierNextPage();

    if( this->nextSpider() != 0 )
    {
         qDebug() << "[PageSpider]: let next spider handle...";
         this->nextSpider()->doRequest(m_currentUrl->url());
    }
    else
    {
         qDebug() << "[PageSpider]: let me handle ...";
    }
}

void PageSpider::append(const QUrl &url)
{
    if( m_totalCount >= m_limitCount )
    {
        qDebug() << "Current completed page [ "<< m_totalCount << "]."
                 << "More than limit page [" << m_limitCount << "].";
        qDebug() <<  m_urls.count();
        return;
    }
    m_urls.enqueue(url);
    ++m_totalCount;
}

void PageSpider::parseUrl(const QByteArray &data)
{
    QRegExp rx(m_urlPattern);
    rx.setMinimal(true);//使用非贪婪匹配原则
    QString str = QString(data); //QString::fromUtf8(replyData);
    int pos = 0;
    while ((pos = rx.indexIn(str, pos)) != -1)
    {
        if( rx.captureCount() > 0)
        {
            QString strUrl = rx.cap(1);
            QString title = rx.cap(2);
            title = title.replace(QRegExp("&.*;"), "-");
            QUrl url(strUrl );
            if( url.isRelative() )
                url = QUrl( m_rootUrl + strUrl );
            Url _url(title, url);
            UrlQueue::instance()->imagePageEnqueue(_url);
            ++m_imgCount;
        }
        pos += rx.matchedLength();
    }
}

void PageSpider::parseNextUrl(const QByteArray &data)
{
    QRegExp rx(m_nextPattern);
    rx.setMinimal(true);//使用非贪婪匹配原则
    QString str = QString(data);
    if( rx.indexIn(str) > 0)
    {
        m_hasNext = true;
        QUrl next = QUrl( m_rootUrl + rx.cap(1) );
        qDebug() << "Has next page : " << next << rx.cap(1);
        this->append(next);
    }
}

void PageSpider::spdierNextPage()
{
    if( m_urls.isEmpty() )
    {
        qDebug() << m_completedCount << "/" << m_totalCount << " pages successfully"
                 << "images: " << m_imgCount;
        qDebug() << "=============All page done. No more page.==============";
        return;
    }

    QUrl url = m_urls.dequeue();
    QNetworkRequest request(url);
    request.setAttribute(QNetworkRequest::User, url);
    m_currentUrl = m_httpManager->get(request);

    connect(m_currentUrl, SIGNAL(finished()), this, SLOT(spiderUrlFinished()));
    connect(m_currentUrl, SIGNAL(readyRead()), this, SLOT(spiderUrlReadyRead()));

}

void PageSpider::spiderUrlFinished()
{
    if (m_currentUrl->error() == QNetworkReply::NoError)
    {
        QByteArray replyData = m_currentUrl->readAll();
        parseUrl(replyData);
        parseNextUrl(replyData);
        ++m_completedCount;

        qDebug() << m_completedCount << "/" << m_totalCount
                 << " page(s) completed. current page: " << m_currentUrl->url();
    }
    else
    {
        qDebug() << "Network error: " << m_currentUrl->errorString();

    }
    m_currentUrl->deleteLater();
    spdierNextPage();
}

void PageSpider::spiderUrlReadyRead()
{
    qDebug() << "[Ready to read next page.please wait...]";
}

QString PageSpider::rootUrl() const
{
    return m_rootUrl;
}

void PageSpider::setRootUrl(const QString &rootUrl)
{
    m_rootUrl = rootUrl;
}

QNetworkAccessManager *PageSpider::httpManager() const
{
    return m_httpManager;
}

void PageSpider::setHttpManager(QNetworkAccessManager *httpManager)
{
    m_httpManager = httpManager;
}

bool PageSpider::hasNext() const
{
    return m_hasNext;
}

void PageSpider::setHasNext(bool hasNext)
{
    m_hasNext = hasNext;
}


