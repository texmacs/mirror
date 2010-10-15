#include <QtGui>
#include <iostream>
#include "QTMWidget.hpp"



QTMWidget::QTMWidget ()
: QWidget () {
  setObjectName("A QTMWidget");
  setFocusPolicy (Qt::StrongFocus);
  setAttribute(Qt::WA_InputMethodEnabled);
  setAttribute(Qt::WA_KeyCompression);
}


QTMWidget::~QTMWidget () {
  std::cout << "destroying " << this << "\n";
}


void
QTMWidget::keyPressEvent (QKeyEvent* event) {
  std::cout << "keypress "  << event->text().toUtf8().data() << "\n";
} 


void
QTMWidget::inputMethodEvent (QInputMethodEvent* event) {
  QString const & commit_string = event->commitString();
  if (!commit_string.isEmpty()) {
    int key = 0;
    for (int i = 0; i < commit_string.size(); ++i) {
      QKeyEvent ev(QEvent::KeyPress, key, Qt::NoModifier, commit_string[i]);
      keyPressEvent(&ev);
    }
    inputContext()->reset();
  }
  event->accept();
  QWidget::inputMethodEvent (event);
}  

QVariant 
QTMWidget::inputMethodQuery(Qt::InputMethodQuery property) const
{
  return QVariant();
}


void
QTMWidget::focusInEvent ( QFocusEvent * event ) {
  std::cout << "FOCUSIN\n";
  QWidget::focusInEvent (event);
}

void
QTMWidget::focusOutEvent ( QFocusEvent * event ) {
  std::cout << "FOCUSOUT\n";
  QWidget::focusOutEvent (event);
}


int main(int argc, char *argv[])
{
  QApplication app(argc, argv);
  QTMWidget window;
  window.resize(320, 240);
  window.show();
  window.setWindowTitle(
                        QApplication::translate("toplevel", "Top-level widget"));
  window.setFocus();
  
  QLineEdit le;
  le.show();
  
  return app.exec();
}
