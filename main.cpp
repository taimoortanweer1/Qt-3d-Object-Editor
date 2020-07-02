#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "wrapperfunctions.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    WrapperFunctions WrapperCpp;
    qmlRegisterType<WrapperFunctions>("io.qt.examples.WrapperFunctions", 1, 0, "WrapperFunctions");


    engine.load(QUrl(QLatin1String("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
