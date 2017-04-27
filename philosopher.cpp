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
        srand(time(NULL));
        sleep(rand() % 10 + 1);
        bool ok = false;
        while (!ok) {
            emit takeRightChopstick(this->m_philosopherId, &ok);
            sleep(1);
        }
        qDebug()<<"Philosopher "<<this->m_philosopherId<<" took up chopstick at his right side.";
        ok = false;
        while (!ok) {
            emit takeLeftChopstick(this->m_philosopherId, &ok);
            sleep(1);
        }
        qDebug()<<"Philosopher "<<this->m_philosopherId<<" took up chopstick at his left side.";
        emit eating(this->m_philosopherId);
        qDebug()<<"Philosopher "<<this->m_philosopherId<<" is eating.";
        sleep(rand()%5 + 1);
        emit release(this->m_philosopherId);
        qDebug()<<"Philosopher "<<this->m_philosopherId<<" release the chopsticks and going to thinking.";
    }
}
void Philosopher::setId(int id)
{
    this->m_philosopherId = id;
}

void Philosopher::takeLeftChopstick(int id, bool *ok)
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

}
