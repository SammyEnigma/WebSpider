#ifndef DOWNLOADSPIDER_H
#define DOWNLOADSPIDER_H

#include "AbstractSpider.h"
#include <QObject>
#include <QUrl>
#include <QString>
#include <QQueue>
#include <QNetworkAccessManager>
#include <QNetworkRequest>
#include <QNetworkReply>
#include <QFile>
#include <QNetworkCookie>
#include <QNetworkCookieJar>

class DownloadSpider : public AbstractSpider
{
    Q_OBJECT
public:
    DownloadSpider();
    DownloadSpider(AbstractSpider* spider);
    ~DownloadSpider();

    void doRequest(const QUrl &url = QUrl());

    QNetworkAccessManager *httpManager() const;
    void setHttpManager(QNetworkAccessManager *httpManager);

    QString title() const;
    void setTitle(const QString &title);

    QString downloadRoot() const;
    void setDownloadRoot(const QString &downloadRoot);

private:
    QString saveFileName(const QUrl &url);

signals:
    void finished();

private slots:
    void startNextDownload();
    void downloadProgress(qint64 bytesReceived, qint64 bytesTotal);
    void downloadFinished();
    void downloadReadyRead();

private:
    QString         m_title;
    QString         m_downloadRoot;
    QFile           m_output;
    QNetworkAccessManager*      m_downloader;
    QNetworkReply*              m_currentDownload;
    QTime   m_downloadTime;
    int     m_downloadedCount;
    int     m_totalCount;
};


class NetworkCookieJar : public QNetworkCookieJar
{
    Q_OBJECT
public:
    explicit NetworkCookieJar(QObject *parent = 0): QNetworkCookieJar(parent)
    {
    }

    QList<QNetworkCookie> cookies() { return allCookies(); }
    void setCookies(const QList<QNetworkCookie> cookies)
    {
        if( this == NULL )
            return;
        this->setAllCookies(cookies);
    }


signals:

public slots:

};

#endif // DOWNLOADSPIDER_H
