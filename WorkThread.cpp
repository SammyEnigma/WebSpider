#include "WorkThread.h"

WorkThread::WorkThread(QObject *parent) : QObject(parent)
{
    m_busy = false;
    m_httpServer = new QNetworkAccessManager(this);
    m_pageSpider = new PageSpider;
    m_imageSpider = new ImageSpider;
    m_downloadSpider = new DownloadSpider;

    m_pageSpider->setHttpManager(m_httpServer);
    m_imageSpider->setHttpManager(m_httpServer);
//    m_downloadSpider->setHttpManager(m_httpServer);

    m_pageSpider->setNextSpider(m_imageSpider);
    m_imageSpider->setNextSpider(m_downloadSpider);

    connect(UrlQueue::instance(), SIGNAL(startSpiderImage()), m_imageSpider, SLOT(spiderNextImage()));
    connect(UrlQueue::instance(), SIGNAL(startImageDownload()), m_downloadSpider, SLOT(startNextDownload()));
}

WorkThread::~WorkThread()
{
    m_httpServer->deleteLater();
}

void WorkThread::start()
{
    m_busy = true;

//    while( m_busy )
    {
        //取出url种子
        //让httpServer从网络上抓取数据
        //将数据扔给工作spider处理
        m_pageSpider->doRequest( QUrl("http://sexy.faceks.com/?page=8") );
    }
}

void WorkThread::stop()
{
    m_busy = false;
}

bool WorkThread::isBusy() const
{
    return m_busy;
}

void WorkThread::setBusy(bool busy)
{
    m_busy = busy;
}


