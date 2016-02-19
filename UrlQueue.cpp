#include "UrlQueue.h"
#include <QDebug>
#include <QTimer>

UrlQueue* UrlQueue::m_instance = 0;

UrlQueue::UrlQueue(QObject *parent) : QObject(parent)
{
}

UrlQueue *UrlQueue::instance()
{
    if(m_instance == NULL)
    {
        QMutex mutex;
        mutex.lock();
        if(m_instance == NULL)
            m_instance = new UrlQueue;
        mutex.unlock();
    }

    return m_instance;
}

Url UrlQueue::imagePageDequeue()
{
    return m_imagePageUrls.dequeue();
}

void UrlQueue::imagePageEnqueue(const Url &url)
{
    if( m_imagePageUrls.isEmpty() )
        QTimer::singleShot(0, this, SIGNAL(startSpiderImage()));

    m_mutex.lock();
    if( !m_imagePageUrls.contains(url) )
    {
        m_imagePageUrls.enqueue(url);
    }
    m_mutex.unlock();

//    qDebug() << " Page count: " << m_imagePageUrls.count();
}

Url UrlQueue::imageInfoDequeue()
{
    return m_imageInfoUrls.dequeue();
}

void UrlQueue::imageInfoEnqueue(const Url &url)
{
    if( m_imageInfoUrls.isEmpty() )
        QTimer::singleShot(0, this, SIGNAL(startImageDownload()));

    m_mutex.lock();
    if( !m_imageInfoUrls.contains(url) )
    {
        m_imageInfoUrls.enqueue(url);
    }
    m_mutex.unlock();

//    qDebug() << url.title() << url.url();
}

bool UrlQueue::isImagePageEmpty() const
{
    return m_imagePageUrls.isEmpty();
}

bool UrlQueue::isImageInfoEmpty() const
{
    return m_imageInfoUrls.isEmpty();
}

int UrlQueue::imagePageCount() const
{
    return m_imagePageUrls.count();
}

int UrlQueue::imageInfoCount() const
{
    return m_imageInfoUrls.count();
}

void UrlQueue::pageOutput()
{
    qDebug() << " before Page count: " << m_imagePageUrls.count();
    for(int i = 0; i < m_imagePageUrls.count(); ++i)
    {
//        Url url = m_instance->imagePageDequeue();
//        qDebug() << "[Dequeue]: " << url.title() << " ----- " << url.url();
        qDebug() << m_imagePageUrls.at(i).title() << " ----- " << m_imagePageUrls.at(i).url();
    }
}

void UrlQueue::imageOutput()
{
    qDebug() << " before Image count: " << m_imageInfoUrls.count();
    for(int i = 0; i < m_imageInfoUrls.count(); ++i)
    {
//        Url url = m_instance->imageInfoDequeue();
//        qDebug() << "[Dequeue]: " << url.title() << " ----- " << url.url();
        qDebug() << m_imageInfoUrls.at(i).title() << " ----- " << m_imageInfoUrls.at(i).url();
    }
}


