#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "wrapperfunctions.h"
#include "stl_reader.h"


int main(int argc, char *argv[])
{       
    std::vector<float> coords, normals;
    std::vector<unsigned int> tris, solids;

    try {
        stl_reader::ReadStlFile ("bifurcation3d.stl", coords, normals, tris, solids);
        const size_t numTris = tris.size() / 3;
        for(size_t itri = 0; itri < numTris; ++itri) {
            std::cout << "coordinates of triangle " << itri << ": ";
            for(size_t icorner = 0; icorner < 3; ++icorner) {
                float* c = &coords[3 * tris [3 * itri + icorner]];
                std::cout << "(" << c[0] << ", " << c[1] << ", " << c[2] << ") ";
            }
            std::cout << std::endl;

            float* n = &normals [3 * itri];
            std::cout	<< "normal of triangle " << itri << ": "
                        << "(" << n[0] << ", " << n[1] << ", " << n[2] << ")\n";
        }
    }
    catch (std::exception& e) {
        std::cout << e.what() << std::endl;
    }



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
