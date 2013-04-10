#ifndef DRAWINGWIDGET_H
#define DRAWINGWIDGET_H

#include <QWidget>

class MainWindow;

class DrawingWidget: public QWidget {
    Q_OBJECT
    public:
        DrawingWidget(MainWindow *parent = 0);
        ~DrawingWidget();

    protected:
        void paintEvent(QPaintEvent *event);
        void mousePressEvent(QMouseEvent *event);
        void mouseMoveEvent(QMouseEvent *event);
        MainWindow *m_mainWindow;
    private:
        int x;
        int y;

};

#endif // DRAWINGWIDGET_H
