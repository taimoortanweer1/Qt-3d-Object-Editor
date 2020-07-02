import QtQuick 2.7
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Material 2.0
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2
import io.qt.examples.WrapperFunctions 1.0
import QtQuick.Controls.Styles 1.4
import "parameters.js" as DataParameters


Page {


    id: page1
    visible:true
    property var parametersData : []
    property var parametersFinal : []
    property var parametersCount : []
    property string fileURLForComputation: ""

    ToolBar {


        id:toolbarPage1
        anchors.right: parent.right
        anchors.left: parent.left
        RowLayout {
            ToolButton {
                text: qsTr("File")
                onClicked: {fileMenu.popup()}

                Menu {
                    id: fileMenu
                    title: "File"
                    MenuItem {
                        text: "Open STL File"

                        onTriggered:
                        {
                            fileDialog.open()
                        }
                    }

                    MenuItem {
                        text: "Open Compute File"

                        onTriggered:
                        {
                            fileDialogForComputation.open()
                        }
                    }
                    MenuItem { text: "Quit"
                        onTriggered: Qt.quit()
                    }
                }
            }
            ToolButton {
                text: qsTr("Edit")

            }
            ToolButton {
                text: qsTr("View")
            }


            ToolButton {
                text: qsTr("Project")
            }

            ToolButton {
                text: qsTr("Settings")
            }

            ToolButton {
                text: qsTr("Help")
            }
        }
    }

    ToolBar {

        id:toolbarScene
        x:leftItem.width
        width: (4*parent.width)/5

        anchors.right: parent.right
        //anchors.left: leftItem.right
        anchors.top:toolbarPage1.bottom
        //anchors.bottom:centerItem.bottom


        RowLayout {

            MyToolbarButton
            {
                id: bttnRotX
                iconSource: "qrc:///images/objRotateX-50.png"
            }
            MyToolbarButton
            {
                id: bttnRotY
                iconSource: "qrc:///images/objRotateY-50.png"
            }

            MyToolbarButton
            {
                id: bttnRotZ
                iconSource: "qrc:///images/objRotateZ-50.png"
            }
            MyToolbarButton
            {
                id: bttnPosX
                iconSource: "qrc:///images/objPanX-50.png"
            }
            MyToolbarButton
            {
                id: bttnPosY
                iconSource: "qrc:///images/objPanY-50.png"
            }
            MyToolbarButton
            {
                id: bttnPosZ
                iconSource: "qrc:///images/objPanZ-50.png"
            }

        }
    }
    ColumnLayout
    {
        anchors.fill: parent


        Item
        {
            id: leftItem
            y:toolbarPage1.height
            width: parent.width/5
            height: parent.height


            Rectangle
            {
                id: leftItemRect
                anchors.fill: parent
                color: Qt.lighter("gray",0)

                Label
                {
                    anchors.top: parent.top
                    text: "Inspector"
                    y:0
                    width: parent.width
                    horizontalAlignment: "AlignHCenter"
                    height: 20
                    color: Qt.lighter("white")

                }

                TabView {

                    id: leftTabTop
                    y:20

                    height: parent.height * 0.4
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: leftTabDown.top

                    Tab {

                        title: "Properties"
                        Rectangle {
                            color: Qt.lighter("gray")

                            ScrollView {

                                width: parent.width
                                height: parent.height-40

                                Grid
                                {
                                    id: gridViewParamters
                                    columns: 2

                                    leftPadding: 40
                                    topPadding: 20
                                    columnSpacing: 10
                                    rowSpacing: 2

                                    //0
                                    Label {id: paramLbl0; text: "Param 0" }
                                    DoubleSpinBox{ id: paramSpin0;width: 120; height: 25; value:0;  onValueChanged: {parametersData[0] = paramSpin0.value; console.log(parametersData[0])} }

                                    //1
                                    Label {id: paramLbl1; text: "Param 1" }
                                    DoubleSpinBox{ id: paramSpin1;width: 120; height: 25; value:0;  onValueChanged: parametersData[1] = paramSpin1.value}

                                    //2
                                    Label {id: paramLbl2; text: "Param 2" }
                                    DoubleSpinBox{ id: paramSpin2;width: 120; height: 25; value:0;  onValueChanged: parametersData[2] = paramSpin2.value;}

                                    //3
                                    Label {id: paramLbl3; text: "Param 3" }
                                    DoubleSpinBox{ id: paramSpin3;width: 120; height: 25; value:0;  onValueChanged: parametersData[3] = paramSpin3.value;}

                                    //4
                                    Label {id: paramLbl4; text: "Param 4" }
                                    DoubleSpinBox{ id: paramSpin4;width: 120; height: 25; value:0;  onValueChanged: parametersData[4] = paramSpin4.value;}

                                    //5
                                    Label {id: paramLbl5; text: "Param 5" }
                                    DoubleSpinBox{ id: paramSpin5;width: 120; height: 25; value:0;  onValueChanged: parametersData[5] = paramSpin5.value;}

                                    //6
                                    Label {id: paramLbl6; text: "Param 6" }
                                    DoubleSpinBox{ id: paramSpin6;width: 120; height: 25; value:0;  onValueChanged: parametersData[6] = paramSpin6.value;}

                                    //7
                                    Label {id: paramLbl7; text: "Param 7" }
                                    DoubleSpinBox{ id: paramSpin7;width: 120; height: 25; value:0;  onValueChanged: parametersData[7] = paramSpin7.value;}

                                    //8
                                    Label {id: paramLbl8; text: "Param 8" }
                                    DoubleSpinBox{ id: paramSpin8;width: 120; height: 25; value:0;  onValueChanged: parametersData[8] = paramSpin8.value;}

                                    //9
                                    Label {id: paramLbl9; text: "Param 9" }
                                    DoubleSpinBox{ id: paramSpin9;width: 120; height: 25; value:0;  onValueChanged: parametersData[9] = paramSpin9.value;}

                                    //10
                                    Label {id: paramLbl10; text: "Param 10" }
                                    DoubleSpinBox{ id: paramSpin10;width: 120; height: 25; value:0;  onValueChanged: parametersData[10] = paramSpin10.value;}

                                    //11
                                    Label {id: paramLbl11; text: "Param 11" }
                                    DoubleSpinBox{ id: paramSpin11;width: 120; height: 25; value:0;  onValueChanged: parametersData[11] = paramSpin11.value;}

                                    //12
                                    Label {id: paramLbl12; text: "Param 12" }
                                    DoubleSpinBox{ id: paramSpin12;width: 120; height: 25; value:0;  onValueChanged: parametersData[12] = paramSpin12.value;}

                                    //13
                                    Label {id: paramLbl13; text: "Param 13" }
                                    DoubleSpinBox{ id: paramSpin13;width: 120; height: 25; value:0;  onValueChanged: parametersData[13] = paramSpin13.value;}

                                    //14
                                    Label {id: paramLbl14; text: "Param 14" }
                                    DoubleSpinBox{ id: paramSpin14;width: 120; height: 25; value:0;  onValueChanged: parametersData[14] = paramSpin14.value;}

                                    //15
                                    Label {id: paramLbl15; text: "Param 15" }
                                    DoubleSpinBox{ id: paramSpin15;width: 120; height: 25; value:0;  onValueChanged: parametersData[15] = paramSpin15.value;}

                                    //16
                                    Label {id: paramLbl16; text: "Param 16" }
                                    DoubleSpinBox{ id: paramSpin16;width: 120; height: 25; value:0;  onValueChanged: parametersData[16] = paramSpin16.value;}

                                }


                            }


                            Row
                            {
                                anchors.bottom: parent.bottom
                                anchors.bottomMargin: 10
                                leftPadding: 20
                                topPadding: 20



                                Button {
                                    text: "Start Process"
                                    width: gridViewParamters.width/2

                                    onClicked:
                                    {


                                        for(var i = 0 ; i < parametersCount ; i++)
                                            parametersFinal[i] = parametersData[i]

                                        //to get filename without extension
                                        wrapperCpp.separateFileExtension(fileDialogForComputation.fileUrl)
                                        var s = wrapperCpp.getFileName()

                                        wrapperCpp.separateFileDirectory(fileDialogForComputation.folder)

                                        //wrapperCpp.separateFileExtension(fileDialogForComputation.folder)
                                        //setting final parameters for simulation

                                        wrapperCpp.getParameters(parametersFinal,"./" + s)

                                        wrapperCpp.executeMakeFile()

                                    }
                                }

                                Button {
                                    width: gridViewParamters.width/2
                                    text: "Load Data"

                                    onClicked:
                                    {
                                        //separate filename from extension
                                        wrapperCpp.separateFileExtension(fileDialogForComputation.fileUrl)

                                        //get file name from local Resource for paramter loading
                                        var s = wrapperCpp.getFileName()

                                        //current index of file in parameter.js
                                        var index = returnFileIndex(s)

                                        var totalParam = DataParameters.filename[index][0][1];
                                        parametersCount = totalParam



                                        for (var j = 0 ; j < totalParam ; j++)
                                            parametersData[j] = DataParameters.filename[index][2][j];

                                        var i = 0
                                        if(totalParam >= i)
                                        {
                                            paramLbl0.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin0.value = DataParameters.filename[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            paramLbl1.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin1.value = DataParameters.filename[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            paramLbl2.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin2.value = DataParameters.filename[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            paramLbl3.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin3.value = DataParameters.filename[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            paramLbl4.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin4.value = DataParameters.filename[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            paramLbl5.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin5.value = DataParameters.filename[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            paramLbl6.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin6.value = DataParameters.filename[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            paramLbl7.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin7.value = DataParameters.filename[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            paramLbl8.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin8.value = DataParameters.filename[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            paramLbl9.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin9.value = DataParameters.filename[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            paramLbl10.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin10.value = DataParameters.filename[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            paramLbl11.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin11.value = DataParameters.filename[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            paramLbl12.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin12.value = DataParameters.filename[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            paramLbl13.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin13.value = DataParameters.filename[index][2][i]
                                            i++
                                        }
                                        if(totalParam >= i)
                                        {
                                            paramLbl14.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin14.value = DataParameters.filename[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            paramLbl15.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin15.value = DataParameters.filename[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            paramLbl16.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin16.value = DataParameters.filename[index][2][i]
                                            i++
                                        }


                                    }
                                }
                            }

                        }
                    }

                }

                TabView {

                    id: leftTabDown
                    y:300
                    height: parent.height * 0.5
                    anchors.left: parent.left
                    anchors.right: parent.right


                    Tab {
                        title: "Controls"
                        Rectangle { color: Qt.lighter("gray") }
                    }
                    Tab {
                        title: "Settings"
                        Rectangle { color: Qt.lighter("gray") }
                    }

                }


            }


        }
        Item
        {
            id:centerItem
            x:leftItem.width
            y:toolbarPage1.height+toolbarScene.height
            width: (4*parent.width)/5
            height: (3.5*parent.height)/5
            anchors.right: parent.right
            Rectangle
            {
                anchors.fill: parent
                color: Qt.lighter("black")

                Scene
                {
                    id: scene3d
                    property int mouseXCur: 100
                    property int mouseYCur: 100


                }

                MouseArea
                {
                    anchors.fill: parent

                    onPositionChanged:
                    {
                        if(bttnPosX.checked)
                        {

                            if(scene3d.mouseXCur > mouseX)
                                scene3d.posX = scene3d.posX + 0.001
                            else
                                scene3d.posX = scene3d.posX - 0.001

                            scene3d.mouseXCur = mouseX
                        }
                        if(bttnPosY.checked)
                        {
                            if(scene3d.mouseXCur > mouseX)
                                scene3d.posY = scene3d.posY + 0.1
                            else
                                scene3d.posY = scene3d.posY - 0.1

                            scene3d.mouseXCur = mouseX
                        }

                        if(bttnPosZ.checked)
                        {
                            if(scene3d.mouseXCur > mouseX)
                                scene3d.posZ = scene3d.posZ + 0.1
                            else
                                scene3d.posZ = scene3d.posZ - 0.1

                            scene3d.mouseXCur = mouseX
                        }


                        if(bttnRotX.checked)
                        {
                            if(scene3d.mouseXCur > mouseX)
                                scene3d.rotX = scene3d.rotX + 1
                            else
                                scene3d.rotX = scene3d.rotX - 1

                            scene3d.mouseXCur = mouseX
                        }

                        if(bttnRotY.checked)
                        {

                            if(scene3d.mouseXCur > mouseX)
                                scene3d.rotY = scene3d.rotY + 1
                            else
                                scene3d.rotY = scene3d.rotY - 1
                            scene3d.mouseXCur = mouseX
                        }

                        if(bttnRotZ.checked)
                        {

                            if(scene3d.mouseXCur > mouseX)
                                scene3d.rotZ = scene3d.rotZ + 1
                            else
                                scene3d.rotZ = scene3d.rotZ - 1
                            scene3d.mouseXCur = mouseX
                        }



                    }


                }


            }



        }

        Item
        {
            id: centerBottomItem
            x:leftItem.width
            y:toolbarPage1.height+toolbarScene.height+centerItem.height
            width: (4*parent.width)/5
            height: parent.height-toolbarScene.height-centerItem.height-toolbarPage1.height
            anchors.right: parent.right
            Rectangle
            {
                anchors.fill: parent
                border.color: "black"
                border.width: 2
            }

            Item
            {
                id: consoleCenterBottomItem
                x:0
                y:0
                width: parent.width
                height: parent.height/5

                Rectangle
                {
                    anchors.fill: parent

                    border.color: "gray"
                    border.width: 2
                }

                Row
                {
                    Label
                    {

                        height: 20
                        text: qsTr("Console")
                        width: 100

                    }

                    Button
                    {
                        id: consoleClear
                        height: 20
                        text: qsTr("Clear")

                        onClicked: consoleText.text = ""
                    }

                    Button
                    {
                        id: consoleStopProcess
                        height: 20
                        text: qsTr("Stop")

                        onClicked: {
                            wrapperCpp.stopProcessing()
                            consoleText.text = "Stopping Process...."}
                    }

                }

            }


            TextArea {
                id: consoleText
                x:0
                y:consoleCenterBottomItem.height
                width: parent.width
                height: 4*parent.height/5
                text: "Select File..........."
                font.pixelSize: 10
                ScrollView
                {
                    anchors.fill: parent
                }
            }




        }

    }

    FileDialog
    {
        id: fileDialog
        onAccepted:
        {
            scene3d.sceneLoaderSource = fileDialog.fileUrl
        }
    }

    FileDialog
    {
        id: fileDialogForComputation
        nameFilters: ["Cpp files (*.cpp)"]
        onAccepted:
        {
            fileURLForComputation = fileDialogForComputation.fileUrl
        }
    }

    WrapperFunctions
    {
        id: wrapperCpp

        onConsoleTextChanged:
        {
            setConsoleText(text)
        }
    }
    function isButtonChecked(buttonID)
    {
        if(buttonID.checked)
        {
            return true
        }
        else
        {
            return false
        }
    }

    function setConsoleText(text){
        console.log("setTextField: " + text)
        consoleText.append(text)
    }

    function returnFileIndex(filename)
    {
        for(var i = 0 ; i < DataParameters.filename.length ; i++)
        {
            if(DataParameters.filename[i][0][0] == filename)
                return i;
        }
    }
}
