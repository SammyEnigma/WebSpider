#include "AbstractSpider.h"

AbstractSpider::AbstractSpider(QObject *parent) : QObject(parent)
{
    m_nextSpider = 0;
}

AbstractSpider::AbstractSpider(AbstractSpider *spider)
{
    this->m_nextSpider = spider;
}

AbstractSpider::~AbstractSpider()
{
    delete m_nextSpider;
}

void AbstractSpider::doRequest(const QUrl &url)
{
    //do nothing
}

AbstractSpider *AbstractSpider::nextSpider()
{
    return m_nextSpider;
}

void AbstractSpider::setNextSpider(AbstractSpider *spider)
{
    this->m_nextSpider = spider;
}

