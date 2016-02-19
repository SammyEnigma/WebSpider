#ifndef WORKTHREAD_H
#define WORKTHREAD_H

#include "AbstractSpider.h"
#include "PageSpider.h"
#include "ImageSpider.h"
#include "DownloadSpider.h"
#include "UrlQueue.h"

#include <QObject>
#include <QNetworkAccessManager>
#include <QNetworkRequest>
#include <QNetworkReply>
#include <QUrl>
#include <QFile>

class WorkThread : public QObject
{
    Q_OBJECT
public:
    explicit WorkThread(QObject *parent = 0);
    ~WorkThread();

    void start();
    void stop();

    QNetworkAccessManager* httpServer();
    PageSpider* pageSpider();
    ImageSpider* imageSpider();

    bool isBusy() const;
    void setBusy(bool busy);

signals:

public slots:

private:
    QNetworkAccessManager*  m_httpServer;
    AbstractSpider*         m_pageSpider;
    AbstractSpider*         m_imageSpider;
    AbstractSpider*         m_downloadSpider;
    bool    m_busy;
};

#endif // WORKTHREAD_H
