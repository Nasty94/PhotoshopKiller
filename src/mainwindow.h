#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QLabel>


class DrawingWidget;
class QMenu;

class MainWindow: public QMainWindow {
    Q_OBJECT
    public:
        MainWindow(QWidget *parent = 0);
        QLabel *m_vertexCountLabel;
        ~MainWindow();

    protected:
        void initMenus();
        void initWidgets();

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
};

#endif // MAINWINDOW_H
