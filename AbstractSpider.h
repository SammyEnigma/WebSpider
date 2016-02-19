#ifndef ABSTRACTSPIDER_H
#define ABSTRACTSPIDER_H

#include <QObject>
#include <QNetworkAccessManager>
#include <QUrl>

class AbstractSpider : public QObject
{
    Q_OBJECT
public:
    virtual ~AbstractSpider();
    virtual void doRequest(const QUrl &url = QUrl()) = 0;
    AbstractSpider* nextSpider();
    void setNextSpider(AbstractSpider* spider);

    virtual QNetworkAccessManager *httpManager() const = 0;
    virtual void setHttpManager(QNetworkAccessManager *httpManager) = 0;

protected:
    explicit AbstractSpider(QObject *parent = 0);
    AbstractSpider(AbstractSpider* spider);

private:
    AbstractSpider* m_nextSpider;
};

#endif // ABSTRACTSPIDER_H
