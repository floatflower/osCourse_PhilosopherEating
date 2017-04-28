#include "philosophermanager.h"
#include <QDebug>
#include <QList>
#include "philosopher.h"
#include <QHash>

bool leftChopstickVisitable = true;
bool rightChopstickVisitable = true;

PhilosopherManager::PhilosopherManager(QObject *parent, QObject *root) : QObject(parent)
{
    m_root = root;
    this->phyList = new QHash<QString ,Philosopher*>;
    this->qml_chopstick = new QHash<QString, QObject*>;
    this->qml_phy = new QHash<QString, QObject*>;
    this->qml_phyStatus = new QHash<QString, QObject*>;
    for(int i = 0; i < 8; i ++) {
        this->qml_chopstick->insert("ch"+QString::number(i+1), root->findChild<QObject*>("ch"+QString::number(i+1)));
        qDebug()<<"Insert ch"<<i+1<<" into chopstick list";
        this->qml_phy->insert("phy"+QString::number(i+1),root->findChild<QObject*>("phy"+QString::number(i+1)));
        this->qml_phyStatus->insert("phy"+QString::number(i+1)+"Status",root->findChild<QObject*>("phy"+QString::number(i+1)+"Status"));

        Philosopher *phy = new Philosopher;
        phy->setId(i+1);
        this->phyList->insert("philosopher"+QString::number(i+1),phy);
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
    if (!leftChopstickVisitable) return;
    leftChopstickVisitable = false;
    int tmp_id = id == 1 ? 8 : id - 1;
    QObject *phyStatus = this->qml_phyStatus->value("phy"+QString::number(id)+"Status");
    phyStatus->setProperty("status", "waiting for right shopstick.");
    QObject *philosopher = this->qml_phy->value("phy"+QString::number(id));
    QObject* chopstick = this->qml_chopstick->value("ch"+QString::number(tmp_id));
    if (!chopstick) {
        qDebug() << "item not found." << tmp_id;
        return;
    }
    if (chopstick->property("used").toBool()) {
        *ok = false;
        leftChopstickVisitable = true;
        return;
    }
    QString phyColor = philosopher->property("color").toString();
    chopstick->setProperty("color",phyColor);
    chopstick->setProperty("used", true);
    *ok = true;
    qDebug() << "Philosopher"<<id<<" took up the chopstick on his right.";
    leftChopstickVisitable = true;
}

void PhilosopherManager::onTakeLeftChopstick(int id, bool *ok)
{
    if (!rightChopstickVisitable) return;
    rightChopstickVisitable =  false;
    QObject *phyStatus = this->qml_phyStatus->value("phy"+QString::number(id)+"Status");
    phyStatus->setProperty("status", "waiting for left shopstick.");
    QObject *philosopher = this->qml_phy->value("phy"+QString::number(id));
    QObject *chopstick = this->qml_chopstick->value("ch"+QString::number(id));
    if (!chopstick) {
        qDebug() << "item not found" << id;
        return;
    }
    if (chopstick->property("used").toBool()) {
        *ok = false;
        leftChopstickVisitable = true;
        return;
    }
    QString phyColor = philosopher->property("color").toString();
    chopstick->setProperty("color",phyColor);
    chopstick->setProperty("used", true);
    *ok = true;
    qDebug() << "Philosopher"<<id<<" took up the chopstick on his left.";
    rightChopstickVisitable = true;
}

void PhilosopherManager::onEating(int id)
{
    qDebug() << "Philosopher"<<id<<" is eating.";
    QObject *phyStatus = this->qml_phyStatus->value("phy"+QString::number(id)+"Status");
    phyStatus->setProperty("status", "eating");
}

void PhilosopherManager::onRelease(int id)
{

    QObject *leftChopstick = this->qml_chopstick->value("ch"+QString::number(id));
    int rightChopstickId = id == 1 ? 8 : id - 1;
    QObject *rightChopstick = this->qml_chopstick->value("ch"+QString::number(rightChopstickId));
    QObject *phyStatus = this->qml_phyStatus->value("phy"+QString::number(id)+"Status");

    phyStatus->setProperty("status", "releasing chopsticks.");
    leftChopstick->setProperty("color","#666");
    rightChopstick->setProperty("color","#666");
    leftChopstick->setProperty("used",false);
    rightChopstick->setProperty("used",false);
    qDebug() << "Philosopher"<<id<<" release chopsticks.";
    phyStatus->setProperty("status", "thinking");
}
