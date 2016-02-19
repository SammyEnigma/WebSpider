#ifndef WEBSPIDER_H
#define WEBSPIDER_H

#include <QWidget>

namespace Ui {
class WebSpider;
}

class WebSpider : public QWidget
{
    Q_OBJECT

public:
    explicit WebSpider(QWidget *parent = 0);
    ~WebSpider();

private:
    Ui::WebSpider *ui;
};

#endif // WEBSPIDER_H
