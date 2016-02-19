#include "ImageSpider.h"

#include <QRegExp>
#include <QTimer>

ImageSpider::ImageSpider() :
    m_totalCount(0), m_completedCount(0), m_failedCount(0)
{
    m_imagePattern = "bigimgsrc=[\"']([^'\"]+)['\"]";

//    m_imagePagePattern = "<li>\\s*<a.*href=['\"]([^['\"]+.html)['\"].*alt=['\"]([^>]+)\\(.*\\)['\"].*/></a>";
//    m_imagePattern = "<a\\s+class=['\"]showpic['\"].*href=['\"]([^['\"]+.jpg)['\"].*src=['\"]([^['\"]+.jpg)['\"]\\s*/>";
//    m_nextImagePattern = "<a\\s+href=['\"]([^['\"]+.html)['\"]>下一页</a>";
}

ImageSpider::ImageSpider(AbstractSpider *spider):
    AbstractSpider(spider),
    m_totalCount(0), m_completedCount(0), m_failedCount(0)
{
    m_imagePattern = "bigimgsrc=[\"']([^'\"]+)['\"]";

//    m_imagePagePattern = "<li>\\s*<a.*href=['\"]([^['\"]+.html)['\"].*alt=['\"]([^>]+)['\"].*/></a>";
//    m_imagePattern = "<a\\s+class=['\"]showpic['\"].*href=['\"]([^['\"]+.jpg)['\"].*src=['\"]([^['\"]+.jpg)['\"]\\s*/>";
//    m_nextImagePattern = "<a\\s+href=['\"]([^['\"]+.html)['\"]>下一页</a>";
}

ImageSpider::~ImageSpider()
{
//    m_httpManager->deleteLater();
}

void ImageSpider::doRequest(const QUrl &url)
{
    QString scheme = url.scheme();
    QString host = url.host();
    m_rootUrl = scheme + "://" + host;

    if( this->nextSpider() != 0 )
    {
        qDebug() << "[ImageSpider]: let next spider handle...";
        this->nextSpider()->doRequest(url);
    }
    else
    {
        qDebug() << "[ImageSpider]: let me handle ...";
    }
}

QNetworkAccessManager *ImageSpider::httpManager() const
{
    return m_httpManager;
}

void ImageSpider::setHttpManager(QNetworkAccessManager *httpManager)
{
    m_httpManager = httpManager;
}

void ImageSpider::append(const Url &url)
{
    m_urls.enqueue(url);
}

void ImageSpider::parseImageUrl(const QByteArray &data, const QUrl &url)
{
    QRegExp rx(m_imagePattern);
    if( !rx.isValid() )
        return;
    rx.setMinimal(true);//使用非贪婪匹配原则
    QString str = QString(data);
    int pos = 0;
    while ((pos = rx.indexIn(str, pos)) != -1)
    {
        if( rx.captureCount() > 0)
        {
            QString refer;
            QUrl referUrl;
            if( rx.captureCount() > 1)
            {
                 refer = QString(rx.cap(2));//href
                QUrl referUrl(QUrl::fromEncoded(str.toLocal8Bit()));
                if( referUrl.isRelative() )
                    referUrl = QUrl( m_rootUrl + refer );
            }
            QString strUrl = QString(rx.cap(1));// src
            QUrl _url(QUrl::fromEncoded(strUrl.toLocal8Bit()));
            if( _url.isRelative() )
                _url = QUrl( m_rootUrl + strUrl );
            Url theUrl(m_currentTitle, _url, referUrl);

            UrlQueue::instance()->imageInfoEnqueue( theUrl );
        }
        pos += rx.matchedLength();
    }
}

void ImageSpider::parseImagePageUrl(const QByteArray &data)
{
    if( m_imagePagePattern.isEmpty() )
        return;
    QRegExp rx(m_imagePagePattern);
    if( !rx.isValid() )
        return;
    rx.setMinimal(true);//使用非贪婪匹配原则
    QString str = QString(data);
    int pos = 0;
    while ((pos = rx.indexIn(str, pos)) != -1)
    {
        if( rx.captureCount() > 0)
        {
            QString strUrl = QString(rx.cap(1));
            if(rx.captureCount() > 1)
            {
                m_currentTitle = rx.cap(2);
            }
            QUrl _url(QUrl::fromEncoded(strUrl.toLocal8Bit()));
            if( _url.isRelative() )
                _url = QUrl( m_rootUrl + strUrl );

            Url url(m_currentTitle, _url);
            append(url);
        }
        pos += rx.matchedLength();
    }
}

void ImageSpider::parseNextImageUrl(const QByteArray &data)
{
    if( m_imagePagePattern.isEmpty() )
        return;
    QRegExp rx(m_nextImagePattern);
    rx.setMinimal(true);//使用非贪婪匹配原则
    QString str = QString(data);
    if(rx.indexIn(str) > 0)
    {
        QUrl next = QUrl( m_rootUrl + rx.cap(1) );
        Url url(m_currentTitle, next);
        append(url);
        qDebug() << "Has next image : " << next << rx.cap(1);
    }

}

void ImageSpider::spiderNextImage()
{
    qDebug() << "---[Ready to next image]---";
    QUrl url;
    if ( m_urls.isEmpty() )
    {
        qDebug() << "========All image page done.Start next page==========";
        if( UrlQueue::instance()->isImagePageEmpty() )
        {
            qDebug() << "========All page done!!!==========";
            return;
        }
        else
        {
            Url tmpUrl = UrlQueue::instance()->imagePageDequeue();
            m_currentTitle = tmpUrl.title();
            url = tmpUrl.url();
        }
    }
    else
    {
       Url tmpUrl = m_urls.dequeue();
       m_currentTitle = tmpUrl.title();
       url = tmpUrl.url();
    }

    ++m_totalCount;
    QNetworkRequest request(url);
    m_currentUrl = m_httpManager->get(request);
    connect(m_currentUrl, SIGNAL(finished()), this, SLOT(spiderUrlFinished()));
    connect(m_currentUrl, SIGNAL(readyRead()), this, SLOT(spiderUrlReadyRead()));
}

void ImageSpider::spiderUrlFinished()
{
    if (m_currentUrl->error() == QNetworkReply::NoError)
    {
        QByteArray replyData = m_currentUrl->readAll();
        parseImageUrl(replyData, m_currentUrl->url());
        parseImagePageUrl(replyData);
        parseNextImageUrl(replyData);
        ++m_completedCount;
    }
    else
    {
        ++m_failedCount;
        qDebug() << "Network error: " << m_currentUrl->errorString() << m_currentUrl->url();

    }
    qDebug() << m_completedCount << "/" << m_totalCount
             << " image(s) completed. error image: " << m_failedCount;

    m_currentUrl->deleteLater();
    spiderNextImage();
}

void ImageSpider::spiderUrlReadyRead()
{
    qDebug() << "[Ready to read next image.please wait...]";
}

