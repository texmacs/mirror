/** 
* We demonstrate a bug in QWidget::update(QRegion).
* Apparently, for certain ranges of coordinates the call to update is ignored. 
*
* A timer change the background color of the scrollable widget in a cyclic
* way every half second. When scrolling with a vertical coordinate aroung 2^15
* the cyclic update is not performed even if the timer continues to fire
* and the tick signal is called normally.
* Normal behaviour is reestabilished by scrolling up or scrolling further down.
* Continuing scrolling down the problem reappears after a while.
*
* system: Mac OS X 10.5.6  (i386) 
* Qt versions: 4.4.3  (open source) 
* 
* build: qmake -project; qmake; make 
* 
*/ 

#include <iostream> 
#include <vector> 
using namespace std; 

#include <QApplication> 
#include <QMetaObject> 
#include <QObject> 
#include <QWidget> 
#include <QScrollArea> 
#include <QScrollBar> 
#include <QPainter> 
#include <QPixmap> 
#include <QEvent> 
#include <QPaintEvent> 
#include <QSize> 
#include <QTimer> 

QColor palette[] = { 
    QColor(0x001122), QColor(0x223344), QColor(0x334455), QColor(0x445566), 
    QColor(0x556677), QColor(0x667788), QColor(0x778899), QColor(0x8899AA), 
    QColor(0x99AABB), QColor(0xAABBCC), QColor(0xFF0000), 
}; 
     
class FilterObject : public QObject 
{ 
//    Q_OBJECT 

public: 
    FilterObject(QObject *parent = 0) : QObject(parent) {} 
     
protected: 
    bool eventFilter(QObject *object, QEvent *event) 
    { 
        enum QEvent::Type e = event->type(); 
         
        const QMetaObject *qm = object->metaObject(); 
        const char *type = qm->className(); 
        const char *name = qPrintable(object->objectName()); 
         
        QWidget *qw = dynamic_cast<QWidget *>(object); 
        if (qw == 0) 
            return false; 
         
        if (e == QEvent::Paint) { 
            cout << type << " " << name << " " << "[paint] " << e << endl; 
            return false; 
        } else if (e == QEvent::Move) { 
            cout << type << " " << name << " " << "[move]  " << e << endl; 
            return false; 
        } 
        cout << type << " " << name << " " << "[?]  " << e << endl; 
        return false; 
    } 
}; 

class AlignmentWidget : public QWidget 
{ 
    Q_OBJECT 

public: 
    AlignmentWidget(int length, int boxWidth, int boxHeight, 
                    QWidget *parent = 0) 
        : QWidget(parent), length(length), boxWidth(boxWidth), 
          boxHeight(boxHeight) 
    { 
        cout << "AlignmentWidget constructor called\n"; 
        for (int i=0; i<length; ++i) { 
            sequence.push_back(48+((i+1) % 10)); 
        } 
        pi = 0;
        setObjectName(QString("AlignmentWidget")); 
        update(); 
      
        QTimer *timer = new QTimer(this);
        connect(timer, SIGNAL(timeout()), this, SLOT(tick()));
        timer->start(500);
      
    } 

    QSize sizeHint() const 
    { 
        int hsize = 10 * boxWidth; 
        int vsize = length * boxHeight;  
        cout << "SIZEHINT " << hsize << " x " << vsize << endl; 
        return QSize(hsize, vsize); 
    } 

public slots:
  void tick ()
  {
    cout << "tick " << visibleRegion().boundingRect().top() << "\n";
    update(visibleRegion());
    pi ++;
  }

protected: 
    void paintEvent(QPaintEvent *event) 
    { 
        QRect rect = event->rect(); 

        int beginRow = rect.top() / boxHeight; 
        int endRow = rect.bottom() / boxHeight; 

        (void) printf("paintEvent(%d,%d)\n", beginRow, endRow); 

        QPainter painter(this); 
        painter.fillRect(rect.left(), rect.top(), rect.width(), 
                         rect.height(), QBrush(::palette[pi%10])); 
        painter.setBackgroundMode(Qt::OpaqueMode); 

      for (int i=0x4000; i<= height(); i += 0x8000) {

      
      painter.fillRect(rect.left(), i, rect.width(), 
                       1, QBrush(Qt::red)); 

        painter.fillRect(rect.left(), i-0x1000, 2, 
                         0x2000, QBrush(Qt::green)); 

      }
      
        QPixmap pixmap(boxWidth, boxHeight); 

        for (int i=beginRow; i<=endRow; ++i) { 
            pixmap.fill(::palette[i%10]); 
            painter.drawPixmap(boxWidth, i*boxHeight, pixmap); 
        } 
        if (beginRow == 0) { 
            pixmap.fill(::palette[10]); 
            painter.drawPixmap(boxWidth, 0, pixmap); 
        } 
        if (endRow == length-1) { 
            pixmap.fill(::palette[10]); 
            painter.drawPixmap(boxWidth,(length-1)*boxHeight,  pixmap); 
        } 
    } 

private: 
    int length; 
    int boxWidth; 
    int boxHeight; 
    int pi;
    vector<int> sequence; 
}; 



int main(int argc, char *argv[]) 
{ 
    int length = 100000; 

    cout << "Length: " << length << endl; 

    int boxWidth  = 10; 
    int boxHeight = 3; 

    QApplication app(argc, argv); 

    QScrollArea     *alignScroll = new QScrollArea(); 
    AlignmentWidget *alignWidget = new AlignmentWidget(length, boxWidth, boxHeight); 

    alignScroll->setWidget(alignWidget); 
    alignScroll->setBackgroundRole(QPalette::Dark); 
    alignScroll->verticalScrollBar()->setRange(0, length*boxHeight); 
    alignScroll->setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOn); 

    alignScroll->show(); 

    FilterObject *ef = new FilterObject(); 
    qApp->installEventFilter(ef); 

    QTimer::singleShot (500, alignWidget, SLOT (tick ()));
  
    return app.exec(); 
}

#include "test.moc"
