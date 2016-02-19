#ifndef PAGESPIDER_H
#define PAGESPIDER_H

#include "AbstractSpider.h"
#include "UrlQueue.h"

#include <QObject>
#include <QNetworkAccessManager>
#include <QNetworkRequest>
#include <QNetworkReply>
#include <QUrl>
#include <QMap>

//抓取页面url
class PageSpider : public AbstractSpider
{
    Q_OBJECT
public:
    PageSpider();
    PageSpider(AbstractSpider* spider);
    ~PageSpider();

    void doRequest(const QUrl &url = QUrl());

    bool hasNext() const;
    void setHasNext(bool hasNext);

    QNetworkAccessManager *httpManager() const;
    void setHttpManager(QNetworkAccessManager *httpManager);

    QString rootUrl() const;
    void setRootUrl(const QString &rootUrl);

private:
    void parseUrl(const QByteArray &data);
    void parseNextUrl(const QByteArray &data);
    void append(const QUrl &url);

signals:
    void finished();

public slots:
    void spdierNextPage();

private slots:
    void spiderUrlFinished();
    void spiderUrlReadyRead();

private:
    QString         m_rootUrl;
    QQueue<QUrl>    m_urls;

    int     m_limitCount;       //限制抓取页数
    int     m_totalCount;       //总页数
    int     m_completedCount;   //已完成页数
    int     m_imgCount;

    QString m_urlPattern;
    QString m_nextPattern;
    bool    m_hasNext;

    QNetworkAccessManager*  m_httpManager;
    QNetworkReply*          m_currentUrl;

};

#endif // PAGESPIDER_H
