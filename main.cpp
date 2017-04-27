#include <QApplication>
#include <QQuickView>
#include <QQmlComponent>
#include <QQuickItem>
#include <QQmlApplicationEngine>
#include <QList>
#include <QDebug>
#include "philosophermanager.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    QList<QObject*> root = engine.rootObjects();

    PhilosopherManager *manager = new PhilosopherManager(nullptr, root.at(0));

    return app.exec();
}
