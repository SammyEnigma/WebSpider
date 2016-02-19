#-------------------------------------------------
#
# Project created by QtCreator 2015-11-30T21:34:46
#
#-------------------------------------------------

QT       += core network gui

TARGET = WebSpider
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app


SOURCES += main.cpp \
    AbstractSpider.cpp \
    PageSpider.cpp \
    ImageSpider.cpp \
    WorkThread.cpp \
    UrlQueue.cpp \
    DownloadSpider.cpp

HEADERS += \
    AbstractSpider.h \
    PageSpider.h \
    ImageSpider.h \
    WorkThread.h \
    UrlQueue.h \
    DownloadSpider.h

FORMS +=
