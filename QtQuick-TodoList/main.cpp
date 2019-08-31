#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "todolist.h"
#include "todomodel.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    qmlRegisterType<TodoModel>("Todo", 1, 0, "TodoModel");
    qmlRegisterUncreatableType<TodoList>("Todo", 1, 0, "TodoList",
                                         QStringLiteral("TodoList should not be created in QML"));

    TodoList todoList;

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty(QStringLiteral("todoList"), &todoList);
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
