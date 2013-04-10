include (../config.pri)

TEMPLATE = app
DESTDIR = ../bin
TARGET = Joonistamine

SOURCES += \
    drawingwidget.cpp \
    main.cpp \
    mainwindow.cpp \
    Vector2.cpp
HEADERS += \
    drawingwidget.h \
    mainwindow.h \
    DynamicLine.h \
    Vector2.h
