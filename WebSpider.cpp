#include "WebSpider.h"
#include "ui_WebSpider.h"

WebSpider::WebSpider(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::WebSpider)
{
    ui->setupUi(this);
}

WebSpider::~WebSpider()
{
    delete ui;
}
