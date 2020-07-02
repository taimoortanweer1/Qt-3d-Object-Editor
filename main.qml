import QtQuick 2.7
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 1366
    height: 768
    title: qsTr("Dynamics App")

    SwipeView {
        id: swipeView
        anchors.fill: parent     

        Page1 {

        }

    }
}
