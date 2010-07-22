#include <QtGui>
#include <iostream>
#include "QTMGuiHelper.hpp"


bool
QTMGuiHelper::eventFilter (QObject *obj, QEvent *event) {
 if (event->type() == QEvent::KeyPress) {
    QKeyEvent *keyEvent = static_cast<QKeyEvent *>(event);
    if (keyEvent->key() == Qt::Key_Tab) {
      // Special tab handling
      std::cout << "tab\n";
      return true;
    } 
  }
  else {
    // standard event processing
    return QObject::eventFilter(obj, event);
  }
}

 int main(int argc, char *argv[])
 {
     QApplication app(argc, argv);
     QTMGuiHelper *gui_helper = new QTMGuiHelper;
     qApp->installEventFilter(gui_helper);
     QWidget window;
     window.resize(320, 240);
     window.show();
     window.setWindowTitle(
         QApplication::translate("toplevel", "Top-level widget"));
     return app.exec();
 }
