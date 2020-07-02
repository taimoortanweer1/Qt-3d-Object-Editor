#include "wrapperfunctions.h"
#include <QDir>
#include <QUrl>
#include <QMimeDatabase>
#include <QDebug>
#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>   // Declaration for exit()
#include <fcntl.h>
WrapperFunctions::WrapperFunctions(QObject *parent) : QObject(parent)
{

}


void WrapperFunctions::getParameters(const QList<QString> &arr, QString file)
{
    parameters = "";
    fileName = "";
    //m_path = "";
    for(int i = 0 ; i < arr.size() ; i++)
    {
        parameters = parameters + " " + arr[i];
    }

    fileName = file;
    //strcpy(filename,file);
}
void WrapperFunctions::executeMakeFile()
{



    strcpy(temp,"cd ");
    strcat(temp,Dir.toStdString().c_str());
    strcat(temp," && pwd && make && ");
    strcat(temp,fileName.toStdString().c_str());
    strcat(temp,parameters.toStdString().c_str());
    strcat(temp," &");

    command = temp;

    t_execute = std::thread(&WrapperFunctions::executionHandlerThread,this,command);

}

void WrapperFunctions::executionHandlerThread(string cmd)
{
    FILE *pipe;
    char buff[512];
    if ( pipe = popen( cmd.c_str(), "r") )
    {
        int d = fileno(pipe);
        while ( true )
        {
            ssize_t r = read(d, buff, sizeof(buff));
            if (r == -1 && errno == EAGAIN) // really need errno?
                continue;
            else if (r > 0)
            {
                string d(buff);
                consoleText = d.c_str();
                emit consoleTextChanged(consoleText);
                //getConsoleText();
                cout << buff << endl;
            }
            else
                break;
        }
        pclose(pipe);
    }

    t_execute.detach();

}
QString WrapperFunctions::getPath()
{
    return m_path;
}


void WrapperFunctions::setPath(QString Path)
{
    m_path = Path;
}

void WrapperFunctions::setDirectory(QString dir)
{
    Dir = dir;
}

void WrapperFunctions:: stopProcessing()
{

    QFileInfo file;
    file.setFile(urlG.fileName());
    QString s = file.baseName();

    char arr[50];
    strcpy(arr,"pkill -9 ");
    strcat(arr,s.toStdString().c_str());

    system(arr);
}
QString WrapperFunctions::getConsoleText()
{
    return consoleText;
}
void WrapperFunctions::separateFileExtension(QString path)
{
    QUrl url(path);
    urlG = url;
    if (url.isLocalFile()) {
        setPath(QDir::toNativeSeparators(url.toLocalFile()));
    } else {
        setPath(path);
    }

    QFileInfo fileInfo(url.fileName());
    QString filename(fileInfo.fileName());

    QStringList s = filename.split('.');
    QString s1 = s[0];

    //filename without extension
    fileName = s1;

}
void WrapperFunctions::separateFileDirectory(QString path)
{
    QUrl url(path);
    urlG = url;
    if (url.isLocalFile()) {
        setDirectory(QDir::toNativeSeparators(url.toLocalFile()));
    } else {
        setDirectory(path);
    }
}

QString WrapperFunctions::getFileName()
{
    return fileName;
}


QString WrapperFunctions::getDirectory()
{
    return Dir;
}
