#ifndef IMAGESPIDER_H
#define IMAGESPIDER_H

#include "AbstractSpider.h"
#include "UrlQueue.h"
#include <QObject>
#include <QNetworkAccessManager>
#include <QNetworkRequest>
#include <QNetworkReply>

class ImageSpider : public AbstractSpider
{
    Q_OBJECT
public:
    ImageSpider();
    ImageSpider(AbstractSpider* spider);
    ~ImageSpider();

    void doRequest(const QUrl &url = QUrl());

    QNetworkAccessManager *httpManager() const;
    void setHttpManager(QNetworkAccessManager *httpManager);

private:
    void parseImageUrl(const QByteArray &data, const QUrl &url = QUrl());
    void parseImagePageUrl(const QByteArray &data);
    void parseNextImageUrl(const QByteArray &data);
    void append(const Url &url);

signals:
    void finished();
    void finishOutput();

public slots:
    void spiderNextImage();

private slots:
    void spiderUrlFinished();
    void spiderUrlReadyRead();

private:
    QNetworkAccessManager*  m_httpManager;
    QNetworkReply*          m_currentUrl;
    QQueue<Url>             m_urls;

    QString m_rootUrl;
    QString m_imagePattern;
    QString m_imagePagePattern;
    QString m_nextImagePattern;
    QString m_currentTitle;

    int     m_totalCount;
    int     m_completedCount;
    int     m_failedCount;
};

#endif // IMAGESPIDER_H
