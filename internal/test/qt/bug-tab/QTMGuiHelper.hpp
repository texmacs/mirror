
#include <QObject>

class QTMGuiHelper : public QObject {
  Q_OBJECT
  
public:
  QTMGuiHelper () : QObject () {}
  
protected:
  bool eventFilter (QObject *obj, QEvent *event);
  
};


