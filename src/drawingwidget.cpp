#include "drawingwidget.h"

#include <QPainter>
#include <QPaintEvent>
#include "mainwindow.h"


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
    painter.drawEllipse(x-10,y-10,20,20);
}

void DrawingWidget::mousePressEvent(QMouseEvent *event){
    x=event->x();
    y=event->y();
    m_mainWindow->m_vertexCountLabel->setText("X:");
    update();
}

void DrawingWidget::mouseMoveEvent(QMouseEvent *event){
    x=event->x();
    y=event->y();
    update();
}


