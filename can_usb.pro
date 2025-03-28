#-------------------------------------------------
#
# Project created by QtCreator 2018-12-02T19:24:24
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = CanalView
TEMPLATE = app

RC_ICONS = icon.ico

VERSION = 1.0.7
QMAKE_TARGET_COMPANY = RUSOKU Technologies
QMAKE_TARGET_PRODUCT = CANAL View
QMAKE_TARGET_DESCRIPTION = Demo software for CANAL library
QMAKE_TARGET_COPYRIGHT = LGPL

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

#CONFIG += c++11
#CONFIG += dll
#CONFIG -= embed_manifest_exe

SOURCES += \
    AnalyzerFrameTable.cpp \
    StreamFrameTable.cpp \
    rxworkerthread.cpp \
    main.cpp \
    mainwindow.cpp \
    mainwindowfiles.cpp \
    mainwindowsettings.cpp \
    mainwindowwidgitsinit.cpp \
    mainwindowsendcanmsg.cpp \
    txworkerthread.cpp \
    dialogabout.cpp \
    dialoginitstring.cpp


HEADERS += \
    AnalyzerFrameTable.h \
    StreamFrameTable.h \
    mainwindow.h \
    canal.h \
    messagetypes.h \
    rxworkerthread.h \
    portablesleep.h \
    canal_a.h \
    txworkerthread.h \
    dialogabout.h \
    dialoginitstring.h

FORMS += \
    mainwindow.ui \
    dialogabout.ui \
    dialoginitstring.ui

#DEFINES += QT_NO_CAST_FROM_ASCII \
#           QT_NO_CAST_TO_ASCII

#INCLUDEPATH += "$$PWD/ucrt"
#LIBS += -L"$$PWD/Libraries"

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

contains(QT_ARCH, i386) {
    CONFIG(release, debug|release): LIBS += -L$$PWD/Libraries -lcanal32
    CONFIG(debug, debug|release): LIBS += -L$$PWD/Libraries -lcanal32d

} else {
    CONFIG(release, debug|release): LIBS += -L$$PWD/Libraries -lcanal64
    CONFIG(debug, debug|release): LIBS += -L$$PWD/Libraries -lcanal64d
}

RESOURCES += \
    resource.qrc

DISTFILES +=

