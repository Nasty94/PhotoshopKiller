#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QLabel>
#include "Vector2.h"


class DrawingWidget;
class QMenu;

class MainWindow: public QMainWindow {
    Q_OBJECT
    public:
        MainWindow(QWidget *parent = 0);
        QLabel *m_vertexCountLabel;
        ~MainWindow();
        void addVertex(Vector2 vertex);
        QList<Vector2> getVertexList();
        int getCurrentState();
    public slots:
        void activateVertexAdding();

    protected:
        void initMenus();
        void initWidgets();

        int currentState;

        DrawingWidget *m_drawingWidget;

        QMenu *m_fileMenu;
            QAction *m_quitAction;
        QMenu *m_toolsMenu;
            QAction *m_addVertexAction;
            QAction *m_moveVertexAction;
            QAction *m_deleteVertexAction;

            QAction *m_addLineAction;
            QAction *m_deleteLineAction;
        QMenu *m_helpMenu;
            QAction *m_whatsThisAction;
            QAction *m_aboutAction;
        QStatusBar *m_statusBar;
        QLabel *m_toolNameLabel;

        QLabel *m_lineCountLabel;
        QList<Vector2> vertexList;
};

#endif // MAINWINDOW_H
