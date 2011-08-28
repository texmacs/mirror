
#include <QWidget>


class QTMWidget: public QWidget {
  Q_OBJECT
  
public:
  
  QTMWidget() ;
  ~QTMWidget();
  
  
protected:
  virtual void keyPressEvent (QKeyEvent* event);
  virtual void inputMethodEvent (QInputMethodEvent* event);
  virtual void focusInEvent (QFocusEvent* event);
  virtual void focusOutEvent (QFocusEvent* event);
  virtual QVariant inputMethodQuery(Qt::InputMethodQuery property) const;

  //virtual bool event (QEvent *event);
  
};
