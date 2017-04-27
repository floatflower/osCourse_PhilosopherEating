#ifndef PHILOSOPHER_H
#define PHILOSOPHER_H
#include <QThread>

class Philosopher : public QThread
{
public:
    Philosopher(QObject *parent = 0);
    void run() Q_DECL_OVERRIDE;
    void setId(int id);
private:
    int m_philosopherId;
signals:
    void takeRightChopstick(int id, bool *ok);
    void takeLeftChopstick(int id, bool *ok);
    void eating(int id);
    void release(int id);
};

#endif // PHILOSOPHER_H
