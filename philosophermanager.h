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
    QHash<QString, Philosopher*> *phyList;
    QHash<QString, QObject*> *qml_chopstick;
    QHash<QString, QObject*> *qml_phy;
    QHash<QString, QObject*> *qml_phyStatus;
    QObject *m_root;

};

#endif // PHILOSOPHERMANAGER_H
