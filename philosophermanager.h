#ifndef PHILOSOPHERMANAGER_H
#define PHILOSOPHERMANAGER_H

#include <QObject>
#include <QThread>
#include <QString>
#include <QHash>

#include "philosopher.h"

class PhilosopherManager : public QObject
{
    Q_OBJECT
public:
    explicit PhilosopherManager(QObject *parent = 0, QObject *root = 0);
signals:
public slots:
    void onTakeRightChopstick(int id, bool *ok);
    void onTakeLeftChopstick(int id, bool *ok);
    void onEating(int id);
    void onRelease(int id);
private:
    Philosopher *m_phy1;
    Philosopher *m_phy2;
    Philosopher *m_phy3;
    Philosopher *m_phy4;
    Philosopher *m_phy5;
    Philosopher *m_phy6;
    Philosopher *m_phy7;
    Philosopher *m_phy8;
    QHash<QString, Philosopher*> *phyList;
    QObject *m_root;
};

#endif // PHILOSOPHERMANAGER_H
