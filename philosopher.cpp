#include <stdlib.h>
#include <unistd.h>
#include <QDebug>
#include "philosopher.h"
#include <ctime>

Philosopher::Philosopher(QObject *parent): QThread(parent)
{

}
void Philosopher::run()
{
    while(1){
        sleep(rand() % 10 + 1);
        bool ok = false;
        while (!ok) {
            emit takeRightChopstick(this->m_philosopherId, &ok);
            qDebug() << "Philosopher" << this->m_philosopherId << "wating for right chopstick.";
            sleep(1);
        }
        ok = false;
        while (!ok) {
            emit takeLeftChopstick(this->m_philosopherId, &ok);
            qDebug() << "Philosopher" << this->m_philosopherId << "wating for left chopstick.";
            sleep(1);
        }
        emit eating(this->m_philosopherId);
        sleep(rand()%5 + 1);
        emit release(this->m_philosopherId);
    }
}
void Philosopher::setId(int id)
{
    this->m_philosopherId = id;
}

/*void Philosopher::takeLeftChopstick(int id, bool *ok)
{

}

void Philosopher::takeRightChopstick(int id, bool *ok)
{

}

void Philosopher::eating(int id)
{

}

void Philosopher::release(int id)
{

}*/
