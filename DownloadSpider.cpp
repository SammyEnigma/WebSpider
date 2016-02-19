#include "DownloadSpider.h"
#include "UrlQueue.h"
#include <QDir>
#include <QCoreApplication>
#include <QTimer>
#include <QDataStream>
#include <QDebug>

DownloadSpider::DownloadSpider():
    m_downloader(new QNetworkAccessManager(this))
{
    m_downloadRoot = QCoreApplication::applicationDirPath() + "/Images/";
    setDownloadRoot(m_downloadRoot);
    m_downloadedCount = 0;
    m_totalCount = 0;
}

DownloadSpider::DownloadSpider(AbstractSpider *spider):
    AbstractSpider(spider),m_downloader(new QNetworkAccessManager(this))
{
    m_downloadRoot = QCoreApplication::applicationDirPath() + "/Images/";
    setDownloadRoot(m_downloadRoot);
    m_downloadedCount = 0;
    m_totalCount = 0;
}

DownloadSpider::~DownloadSpider()
{
    m_downloader->deleteLater();
}

void DownloadSpider::doRequest(const QUrl &url)
{
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

QNetworkAccessManager *DownloadSpider::httpManager() const
{
    return m_downloader;
}

void DownloadSpider::setHttpManager(QNetworkAccessManager *httpManager)
{
    m_downloader = httpManager;
}

QString DownloadSpider::title() const
{
    return m_title;
}

void DownloadSpider::setTitle(const QString &title)
{

    m_title = title;
}

QString DownloadSpider::downloadRoot() const
{
    return m_downloadRoot;
}

void DownloadSpider::setDownloadRoot(const QString &downloadRoot)
{
    m_downloadRoot = downloadRoot;
    QDir dir(m_downloadRoot);
    if( !dir.exists() )
    {
        dir.mkdir(m_downloadRoot);
    }
}

QString DownloadSpider::saveFileName(const QUrl &url)
{
    QString path = url.toString();
    QRegExp rx("([a-zA-Z0-9_-]+.jpg)");
    QString basename;
    if( rx.indexIn(path) > 0)
    {
        basename = rx.cap(1);//FileInfo(path).fileName();
    }

    if (basename.isEmpty())
        basename = "download";

    if (QFile::exists(basename))
    {
        // already exists, don't overwrite
        int i = 0;
        basename += '.';
        while (QFile::exists(basename + QString::number(i)))
            ++i;

        basename += QString::number(i);
    }

    return basename;
}

void DownloadSpider::startNextDownload()
{
    if (UrlQueue::instance()->isImageInfoEmpty())
    {
        //完成一类图片的下载
        printf("%d/%d files downloaded successfully\n", m_downloadedCount, m_totalCount);
        emit finished();
        return;
    }

    Url _url = UrlQueue::instance()->imageInfoDequeue();
    QUrl url = _url.url();
    QUrl refer = _url.refererUrl();
    m_title = _url.title();

    ++m_totalCount;

    QString path = m_downloadRoot + m_title;
    QDir dir(path);
    if( !dir.exists() )
    {
        dir.mkdir(path);
    }
    QString filename = path + QDir::separator() + saveFileName(url);
    m_output.setFileName(filename);
    if (!m_output.open(QIODevice::WriteOnly))
    {
        fprintf(stderr, "Problem opening save file '%s' for download '%s': %s\n",
                qPrintable(filename), url.toEncoded().constData(),
                qPrintable(m_output.errorString()));
        startNextDownload();
        return;                 // skip this download
    }
    QNetworkRequest request(url);
//    request.setAttribute(QNetworkRequest::User, url);
//    request.setHeader(QNetworkRequest::ContentTypeHeader, QVariant("image/jpeg"));
//    request.setRawHeader(QByteArray("Host"), "tu.2xiezhen.com");
//    request.setRawHeader(QByteArray("Connection"), QByteArray("keep-alive"));
    if( refer.isValid() )
        request.setRawHeader(QByteArray("Referer"), refer.toEncoded());
//    request.setRawHeader(QByteArray("User-Agent"), QByteArray("Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.101 Safari/537.36"));

//    QList<QNetworkCookie>  cookies = m_downloader->cookieJar()->cookiesForUrl(url);
//    QVariant var;
//    var.setValue(cookies);
//    request.setHeader(QNetworkRequest::CookieHeader, QVariant(var));

    m_currentDownload = m_downloader->get(request);

    connect(m_currentDownload, SIGNAL(downloadProgress(qint64,qint64)),
            SLOT(downloadProgress(qint64,qint64)));
    connect(m_currentDownload, SIGNAL(finished()),
            SLOT(downloadFinished()));
    connect(m_currentDownload, SIGNAL(readyRead()),
            SLOT(downloadReadyRead()));

    // prepare the output
    printf("Downloading %s...\n", url.toEncoded().constData());
    m_downloadTime.start();
}

void DownloadSpider::downloadProgress(qint64 bytesReceived, qint64 bytesTotal)
{
    // calculate the download speed
    double speed = bytesReceived * 1000.0 / m_downloadTime.elapsed();
    QString unit;
    if (speed < 1024)
    {
        unit = "bytes/sec";
    }
    else if (speed < 1024*1024)
    {
        speed /= 1024;
        unit = "kB/s";
    }
    else
    {
        speed /= 1024*1024;
        unit = "MB/s";
    }

//    qDebug() << QString::fromLatin1("%1 %2").arg(speed, 3, 'f', 1).arg(unit);
}

void DownloadSpider::downloadFinished()
{
    m_output.close();

    if (m_currentDownload->error())
    {
        // download failed
        fprintf(stderr, "Failed: %s\n", qPrintable(m_currentDownload->errorString()));
    }
    else
    {
        printf("One image download succeeded.\n");
        ++m_downloadedCount;
    }

    m_currentDownload->deleteLater();
    startNextDownload();
}

void DownloadSpider::downloadReadyRead()
{
    m_output.write(m_currentDownload->readAll());
}
