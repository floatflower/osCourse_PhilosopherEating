#ifndef PHILOSOPHER_H
#define PHILOSOPHER_H
#include <QThread>

class Philosopher : public QThread
{
    Q_OBJECT
public:
    Philosopher(QObject *parent = 0);
    void run() Q_DECL_OVERRIDE;
    void setId(int id);
signals:
    void takeRightChopstick(int id, bool *ok);
    void takeLeftChopstick(int id, bool *ok);
    void eating(int id);
    void release(int id);
private:
    int m_philosopherId;

};

#endif // PHILOSOPHER_H
