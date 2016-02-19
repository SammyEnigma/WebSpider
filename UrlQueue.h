#ifndef URLQUEUE_H
#define URLQUEUE_H

#include <QObject>
#include <QMap>
#include <QQueue>
#include <QUrl>
#include <QMutex>

class Url;
/**
 * @brief The UrlQueue class
 * 用来存储从网页上抓取回来的url种子
 */
class UrlQueue : public QObject
{
    Q_OBJECT
public:
    static UrlQueue *instance();

    Url imageInfoDequeue();
    void imageInfoEnqueue(const Url &url);

    Url imagePageDequeue();
    void imagePageEnqueue(const Url &url);

    bool isImageInfoEmpty() const;
    bool isImagePageEmpty() const;

    int imageInfoCount() const;
    int imagePageCount() const;

signals:
    void startSpiderImage();
    void startImageDownload();

public slots:
    void pageOutput();
    void imageOutput();

private:
    explicit UrlQueue(QObject *parent = 0);
    UrlQueue(const UrlQueue &) Q_DECL_EQ_DELETE;
    UrlQueue& operator=(UrlQueue rhs) Q_DECL_EQ_DELETE;

    int                 m_maxPageLength;
    static UrlQueue*    m_instance;
    QQueue<Url>         m_imagePageUrls;
    QQueue<Url>         m_imageInfoUrls;
    QMutex              m_mutex;

};

class Url
{
public:
    Url();
    Url(const QString &title, const QUrl &url, const QUrl &refer= QUrl())
    {
        m_title = title;
        m_url = url;
        m_refererUrl = refer;
    }

    Url(const Url &copy)
    {
        this->m_title = copy.m_title;
        this->m_url = copy.m_url;
        this->m_refererUrl = copy.m_refererUrl;
    }

    inline Url &operator=(Url &&other)
    {
        using std::swap;
        swap(m_title, other.m_title);
        swap(m_url, other.m_url);
        swap(m_refererUrl, other.m_refererUrl);
        return *this;
    }

    inline bool operator==(const Url &url)
    {
        if( this->m_title == url.m_title &&
                this->m_url == url.m_url && this->m_refererUrl == url.m_refererUrl)
            return true;
        return false;
    }

    QString title() const{ return m_title;}
    QUrl url() const { return m_url;}

    QUrl refererUrl() const
    {
        return m_refererUrl;
    }

    void setRefererUrl(const QUrl &refererUrl)
    {
        m_refererUrl = refererUrl;
    }

private:
    QString m_title;
    QUrl    m_url;
    QUrl    m_refererUrl;
};

#endif // URLQUEUE_H
