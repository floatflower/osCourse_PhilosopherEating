#include "philosophermanager.h"
#include <QDebug>
#include <QList>
#include "philosopher.h"
#include <QHash>

PhilosopherManager::PhilosopherManager(QObject *parent, QObject *root) : QObject(parent)
{
    m_root = root;
    this->phyList = new QHash<QString ,Philosopher*>;
    for(int i = 0; i < 8; i ++) {
        Philosopher *phy = new Philosopher;
        phy->setId(i);
        this->phyList->insert("phy"+QString::number(i+1),phy);
        connect(phy, SIGNAL(takeLeftChopstick(int,bool*)), this, SLOT(onTakeLeftChopstick(int,bool*)));
        connect(phy, SIGNAL(takeRightChopstick(int,bool*)), this, SLOT(onTakeRightChopstick(int,bool*)));
        connect(phy, SIGNAL(eating(int)), this, SLOT(onEating(int)));
        connect(phy, SIGNAL(release(int)), this, SLOT(onRelease(int)));
    }
    for (QHash<QString, Philosopher*>::iterator i = this->phyList->begin();
         i != this->phyList->end();
         i ++) {
        (*i)->start();
    }
}

void PhilosopherManager::onTakeRightChopstick(int id, bool *ok)
{

}

void PhilosopherManager::onTakeLeftChopstick(int id, bool *ok)
{

}

void PhilosopherManager::onEating(int id)
{

}

void PhilosopherManager::onRelease(int id)
{

}
