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
    foreach(DynamicLine<Vector2> line,m_mainWindow->lineList){

        painter.drawLine(line.p1->x,line.p1->y,line.p2->x,line.p2->y);
    }




}



void DrawingWidget::mousePressEvent(QMouseEvent *event){
    if(m_mainWindow->getCurrentState()==ADD_VERTEX){
        x=event->x();
        y=event->y();

        Vector2 p1 {x,y};
            m_mainWindow->addVertex(p1);
            update();

    }else if(m_mainWindow->getCurrentState()==MOVE_VERTEX){
        x=event->x();
        y=event->y();
        count = getSelectedVertex(x,y);
    }else if(m_mainWindow->getCurrentState()==DELETE_VERTEX){
        x=event->x();
        y=event->y();
        count = getSelectedVertex(x,y);
        m_mainWindow->vertexList.removeAt(count);
        update();
    }else if(m_mainWindow->getCurrentState()==ADD_LINE){
        x=event->x();
        y=event->y();
        if(!firstVertexForLineSelected){
            firstVertexForLineSelected =getSelectedVertex(x,y,firstVertexNr);


        } else
        if(!secondVertexForLineSelected){
            if(getSelectedVertex(x,y,secondVertexNr)){
                m_mainWindow->setMSG("Second!");
                DynamicLine<Vector2> newLine = createNewLine(firstVertexNr,secondVertexNr);
                m_mainWindow->lineList << newLine;
                if(m_mainWindow->lineList.size()>0){
                    m_mainWindow->setMSG("Added!");
                }
                firstVertexForLineSelected = false;
                secondVertexForLineSelected = false;

                update();
            }
        }
    }else if(m_mainWindow->getCurrentState()==DELETE_LINE){
        x=event->x();
        y=event->y();
        int k = 0;
        foreach(DynamicLine<Vector2> line,m_mainWindow->lineList){

            if(hitTest(QLineF(line.p1->x,line.p1->y,line.p2->x,line.p2->y),QPoint(x,y))){
                m_mainWindow->setMSG("LINE DELETED!!!!!!!!!");
                m_mainWindow->lineList.removeAt(k);
                update();
            }
            k=k+1;
        }

    }
}

bool DrawingWidget::hitTest(QLineF newLine,const QPoint& point){
    QPointF intersectPnt;
    QLineF line(point.x()-10, point.y()-10, point.x()+10, point.y()+10);

    return (newLine.intersect(line, &intersectPnt)==QLineF::BoundedIntersection);
}

DynamicLine<Vector2> DrawingWidget::createNewLine(int firstVertexNr,int secondVertexNr){


    DynamicLine<Vector2> l1 {&m_mainWindow->vertexList[firstVertexNr],
                &m_mainWindow->vertexList[secondVertexNr]};
    return l1;
}



bool DrawingWidget::getSelectedVertex(float x, float y,int &count){
    int k = 0;
    foreach(Vector2 vector,m_mainWindow->getVertexList()){
        if(vector.distanceFrom(x,y)<10){
            count= k;
            return true;
        }
        k=k+1;
    }
    return false;
}

int DrawingWidget::getSelectedVertex(float x, float y){
    int k = 0;
    foreach(Vector2 vector,m_mainWindow->getVertexList()){
        if(vector.distanceFrom(x,y)<10){
            vertexMoveAllowed=true;
            return k;
        }
        k=k+1;
    }
    return 0;
}



void DrawingWidget::mouseMoveEvent(QMouseEvent *event){
    x=event->x();
    y=event->y();
    if(m_mainWindow->getCurrentState()==MOVE_VERTEX && vertexMoveAllowed
            && m_mainWindow->rect().contains(x,y)){

        m_mainWindow->vertexList[(count)].setCoords(x,y);
        update();

    }

}

void DrawingWidget::mouseReleaseEvent(QMouseEvent *event){
    vertexMoveAllowed = false;
}


