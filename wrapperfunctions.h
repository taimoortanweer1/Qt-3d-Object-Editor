#ifndef WRAPPERFUNCTIONS_H
#define WRAPPERFUNCTIONS_H

#include <QObject>
#include <string>
#include <iostream>
#include <stdlib.h>
#include <thread>
#include <QUrl>

using namespace std;
class WrapperFunctions : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString path READ getPath WRITE setPath)
    Q_PROPERTY(QString consoleText READ getConsoleText)
    Q_PROPERTY(QString fileName READ getFileName)

public:
    explicit WrapperFunctions(QObject *parent = nullptr);

    Q_INVOKABLE QString getPath();
    Q_INVOKABLE QString getConsoleText();
    Q_INVOKABLE void setPath(QString Path);
    Q_INVOKABLE void separateFileExtension(const QString path);
    Q_INVOKABLE void separateFileDirectory(const QString path);
    Q_INVOKABLE void executeMakeFile();
    Q_INVOKABLE void getParameters(const QList<QString> &arr , QString fileName);
    Q_INVOKABLE QString getFileName();
    Q_INVOKABLE void executionHandlerThread(string cmd);
    Q_INVOKABLE void stopProcessing();
    Q_INVOKABLE QString getDirectory();
    Q_INVOKABLE void setDirectory(QString dir);
private:
    QString m_path;
    QString parameters;
    QString fileName;
    QString consoleText;
    char temp[1000];
    std::thread t_execute;
    std::string command;
    QUrl urlG;
    QString Dir;



signals:
    void consoleTextChanged(QString text);
};

#endif // WRAPPERFUNCTIONS_H
