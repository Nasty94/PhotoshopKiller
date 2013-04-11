#include "drawingwidget.h"

#include <QPainter>
#include <QPaintEvent>
#include "mainwindow.h"

enum State{
    PASSIVE,
    ADD_VERTEX,
    MOVE_VERTEX,
    DELETE_VERTEX,
    ADD_LINE,
    MOVE_LINE,
    DELETE_LINE,
    CHANGE_LINE_COLOR
};

/**
  Constructs a drawing widget.
  \param[in] parent parent widget of the drawing widget.
*/
DrawingWidget::DrawingWidget(MainWindow *parent)
    : QWidget(parent), m_mainWindow(parent)
{
    // Nothing here yet
}

DrawingWidget::~DrawingWidget() {
    // Nothing here yet
}

/**
  Overridden method to handle all received paint events.
  \param[in] event the paint event that was received.
*/
void DrawingWidget::paintEvent(QPaintEvent *event) {

    QPainter painter(this);
    painter.fillRect(event->rect(), Qt::white);
    painter.setBrush(Qt::black);
    foreach(Vector2 vector,m_mainWindow->getVertexList()){
        painter.drawEllipse(QPoint(vector.x,vector.y),10,10);
    }




}

bool DrawingWidget::vertexAddingAllowed(Vector2 vertex){
    foreach(Vector2 vector,m_mainWindow->getVertexList()){
        if(vector.distanceFrom(vertex)<20){
            return false;
        }
    }
    return true;
}

void DrawingWidget::mousePressEvent(QMouseEvent *event){
    if(m_mainWindow->getCurrentState()==ADD_VERTEX){
        x=event->x();
        y=event->y();
        Vector2 p1 {x, y};
        if(vertexAddingAllowed(p1)){
            m_mainWindow->addVertex(p1);
            update();
        }
    }
}

void DrawingWidget::mouseMoveEvent(QMouseEvent *event){

}


