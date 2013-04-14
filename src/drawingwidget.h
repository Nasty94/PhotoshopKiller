#ifndef DRAWINGWIDGET_H
#define DRAWINGWIDGET_H

#include <QWidget>
#include "Vector2.h"
#include "DynamicLine.h"

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
        void mouseReleaseEvent(QMouseEvent *event);
        bool vertexAddingAllowed(Vector2 vertex);
        int getSelectedVertex(float x, float y);
        bool getSelectedVertex(float x, float y,int &count);
        MainWindow *m_mainWindow;

        bool firstVertexForLineSelected;
        bool secondVertexForLineSelected;

        bool hitTest(QLineF newLine,const QPoint& point);

        int firstVertexNr;
        int secondVertexNr;

        DynamicLine<Vector2> createNewLine(int firstVertexNr, int secondVertexNr);

    private:
        float x;
        float y;
        int count;
        Vector2 *currentVertex;
        bool vertexMoveAllowed;

};

#endif // DRAWINGWIDGET_H
