#include <QCoreApplication>

#include "WorkThread.h"
#include "AbstractSpider.h"
#include "PageSpider.h"
#include "ImageSpider.h"
//(0)http://sexy.faceks.com
//  0) 网页地址正则：<div\\s+class=['\"]pic['\"].*href=['\"]([^['\"]+)['\"].*<p>([^<]+)<
//  1) 下一页正则：<a\\s+class=[\"']next[\"'].*href=[\"']([^>]*page=\\d+.*)[\"']>
//  2) 图片地址正则:bigimgsrc=[\"']([^'\"]+)['\"]
//(1)http://www.2xiezhen.com
//  0) 网页地址正则："<li>\\s*<a.*href=['\"]([^['\"]+.html)['\"].*alt=['\"]([^>]+)['\"].*/></a>"
//  1) 图片地址正则："<a\\s+class=['\"]showpic['\"].*href=['\"]([^['\"]+.jpg)['\"].*src=['\"]([^['\"]+.jpg)['\"]\\s*/>"
//  2) 下一页正则a: "<a\\s+href=['\"]([^['\"]+.html)['\"]>></a>"
//     下一页正则b: "<a\\s+href=['\"]([^['\"]+.html)['\"]>下一页</a>"
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    WorkThread work;
    work.start();

    return a.exec();
}
