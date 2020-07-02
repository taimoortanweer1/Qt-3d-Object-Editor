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

    property var boundaryData : []
    property var boundaryFinal : []
    property var boundaryCount : []

    property var totalParamCount : []
    property var finalParamData:[];


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

                        title: "Parameters"
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
                                    DoubleSpinBox{ id: paramSpin0;width: 120; height: 25; value:0;  onValueChanged: {parametersData[0] = paramSpin0.dValue; console.log(parametersData[0])} }

                                    //1
                                    Label {id: paramLbl1; text: "Param 1" }
                                    DoubleSpinBox{ id: paramSpin1;width: 120; height: 25; value:0;  onValueChanged: parametersData[1] = paramSpin1.dValue}

                                    //2
                                    Label {id: paramLbl2; text: "Param 2" }
                                    DoubleSpinBox{ id: paramSpin2;width: 120; height: 25; value:0;  onValueChanged: parametersData[2] = paramSpin2.dValue;}

                                    //3
                                    Label {id: paramLbl3; text: "Param 3" }
                                    DoubleSpinBox{ id: paramSpin3;width: 120; height: 25; value:0;  onValueChanged: parametersData[3] = paramSpin3.dValue;}

                                    //4
                                    Label {id: paramLbl4; text: "Param 4" }
                                    DoubleSpinBox{ id: paramSpin4;width: 120; height: 25; value:0;  onValueChanged: parametersData[4] = paramSpin4.dValue;}

                                    //5
                                    Label {id: paramLbl5; text: "Param 5" }
                                    DoubleSpinBox{ id: paramSpin5;width: 120; height: 25; value:0;  onValueChanged: parametersData[5] = paramSpin5.dValue;}

                                    //6
                                    Label {id: paramLbl6; text: "Param 6" }
                                    DoubleSpinBox{ id: paramSpin6;width: 120; height: 25; value:0;  onValueChanged: parametersData[6] = paramSpin6.dValue;}

                                    //7
                                    Label {id: paramLbl7; text: "Param 7" }
                                    DoubleSpinBox{ id: paramSpin7;width: 120; height: 25; value:0;  onValueChanged: parametersData[7] = paramSpin7.dValue;}

                                    //8
                                    Label {id: paramLbl8; text: "Param 8" }
                                    DoubleSpinBox{ id: paramSpin8;width: 120; height: 25; value:0;  onValueChanged: parametersData[8] = paramSpin8.dValue;}

                                    //9
                                    Label {id: paramLbl9; text: "Param 9" }
                                    DoubleSpinBox{ id: paramSpin9;width: 120; height: 25; value:0;  onValueChanged: parametersData[9] = paramSpin9.dValue;}

                                    //10
                                    Label {id: paramLbl10; text: "Param 10" }
                                    DoubleSpinBox{ id: paramSpin10;width: 120; height: 25; value:0;  onValueChanged: parametersData[10] = paramSpin10.dValue;}

                                    //11
                                    Label {id: paramLbl11; text: "Param 11" }
                                    DoubleSpinBox{ id: paramSpin11;width: 120; height: 25; value:0;  onValueChanged: parametersData[11] = paramSpin11.dValue;}

                                    //12
                                    Label {id: paramLbl12; text: "Param 12" }
                                    DoubleSpinBox{ id: paramSpin12;width: 120; height: 25; value:0;  onValueChanged: parametersData[12] = paramSpin12.dValue;}

                                    //13
                                    Label {id: paramLbl13; text: "Param 13" }
                                    DoubleSpinBox{ id: paramSpin13;width: 120; height: 25; value:0;  onValueChanged: parametersData[13] = paramSpin13.dValue;}

                                    //14
                                    Label {id: paramLbl14; text: "Param 14" }
                                    DoubleSpinBox{ id: paramSpin14;width: 120; height: 25; value:0;  onValueChanged: parametersData[14] = paramSpin14.dValue;}

                                    //15
                                    Label {id: paramLbl15; text: "Param 15" }
                                    DoubleSpinBox{ id: paramSpin15;width: 120; height: 25; value:0;  onValueChanged: parametersData[15] = paramSpin15.dValue;}

                                    //16
                                    Label {id: paramLbl16; text: "Param 16" }
                                    DoubleSpinBox{ id: paramSpin16;width: 120; height: 25; value:0;  onValueChanged: parametersData[16] = paramSpin16.dValue;}

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


                                        var i = 0;
                                        for(i = 0 ; i < parametersCount ; i++)
                                            parametersFinal[i] = parametersData[i]

                                        //to get filename without extension
                                        wrapperCpp.separateFileExtension(fileDialogForComputation.fileUrl)
                                        var s = wrapperCpp.getFileName()

                                        wrapperCpp.separateFileDirectory(fileDialogForComputation.folder)


                                        for(i = 0 ; i < parametersCount ; i++)
                                            finalParamData[i] = parametersData[i]

                                        for(var j = 0 ; j < boundaryCount ; j++)
                                        {
                                            finalParamData[i] = boundaryData[j]
                                            i++;
                                        }
                                        wrapperCpp.getparameters(finalParamData,"./" + s)
                                        wrapperCpp.executeMakeFile()

                                    }
                                }

                                Button {
                                    id: bttnLoadParameters
                                    width: gridViewParamters.width/2
                                    text: "Load"

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
                                        totalParamCount = parametersCount + boundaryCount


                                        for (var j = 0 ; j < totalParam ; j++)
                                            parametersData[j] = DataParameters.filename[index][2][j];

                                        var i = 0
                                        if(totalParam >= i)
                                        {
                                            paramLbl0.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin0.dValue = DataParameters.filename[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            paramLbl1.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin1.dValue = DataParameters.filename[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            paramLbl2.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin2.dValue = DataParameters.filename[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            paramLbl3.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin3.dValue = DataParameters.filename[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            paramLbl4.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin4.dValue = DataParameters.filename[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            paramLbl5.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin5.dValue = DataParameters.filename[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            paramLbl6.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin6.dValue = DataParameters.filename[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            paramLbl7.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin7.dValue = DataParameters.filename[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            paramLbl8.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin8.dValue = DataParameters.filename[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            paramLbl9.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin9.dValue = DataParameters.filename[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            paramLbl10.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin10.dValue = DataParameters.filename[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            paramLbl11.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin11.dValue = DataParameters.filename[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            paramLbl12.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin12.dValue = DataParameters.filename[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            paramLbl13.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin13.dValue = DataParameters.filename[index][2][i]
                                            i++
                                        }
                                        if(totalParam >= i)
                                        {
                                            paramLbl14.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin14.dValue = DataParameters.filename[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            paramLbl15.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin15.dValue = DataParameters.filename[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            paramLbl16.text = DataParameters.filename[index][1][i].toString()
                                            paramSpin16.dValue = DataParameters.filename[index][2][i]
                                            i++
                                        }


                                    }
                                }
                            }

                        }
                    }

                    Tab {

                        title: "Boundary Conditions"
                        Rectangle {
                            color: Qt.lighter("gray")

                            ScrollView {

                                width: parent.width
                                height: parent.height-40

                                Grid
                                {
                                    id: gridViewBoundary
                                    columns: 2

                                    leftPadding: 40
                                    topPadding: 20
                                    columnSpacing: 10
                                    rowSpacing: 2


                                    //0
                                    Label {id: boundaryLbl0; text: "boundary 0" }
                                    DoubleSpinBox{ id: boundarySpin0;width: 120; height: 25; value:0;  onValueChanged: {boundaryData[0] = boundarySpin0.dValue;} }

                                    //1
                                    Label {id: boundaryLbl1; text: "boundary 1" }
                                    DoubleSpinBox{ id: boundarySpin1;width: 120; height: 25; value:0;  onValueChanged: boundaryData[1] = boundarySpin1.dValue}

                                    //2
                                    Label {id: boundaryLbl2; text: "boundary 2" }
                                    DoubleSpinBox{ id: boundarySpin2;width: 120; height: 25; value:0;  onValueChanged: boundaryData[2] =boundarySpin2.dValue;}

                                    //3
                                    Label {id: boundaryLbl3; text: "boundary 3" }
                                    DoubleSpinBox{ id: boundarySpin3;width: 120; height: 25; value:0;  onValueChanged: boundaryData[3] = boundarySpin3.dValue;}

                                    //4
                                    Label {id: boundaryLbl4; text: "boundary 4" }
                                    DoubleSpinBox{ id: boundarySpin4;width: 120; height: 25; value:0;  onValueChanged: boundaryData[4] = boundarySpin4.dValue;}

                                    //5
                                    Label {id: boundaryLbl5; text: "boundary 5" }
                                    DoubleSpinBox{ id: boundarySpin5;width: 120; height: 25; value:0;  onValueChanged: boundaryData[5] = boundarySpin5.dValue;}

                                    //6
                                    Label {id: boundaryLbl6; text: "boundary 6" }
                                    DoubleSpinBox{ id: boundarySpin6;width: 120; height: 25; value:0;  onValueChanged: boundaryData[6] = boundarySpin6.dValue;}

                                    //7
                                    Label {id: boundaryLbl7; text: "boundary 7" }
                                    DoubleSpinBox{ id: boundarySpin7;width: 120; height: 25; value:0;  onValueChanged: boundaryData[7] = boundarySpin7.dValue;}

                                    //8
                                    Label {id: boundaryLbl8; text: "boundary 8" }
                                    DoubleSpinBox{ id: boundarySpin8;width: 120; height: 25; value:0;  onValueChanged: boundaryData[8] = boundarySpin8.dValue;}

                                    //9
                                    Label {id: boundaryLbl9; text: "boundary 9" }
                                    DoubleSpinBox{ id: boundarySpin9;width: 120; height: 25; value:0;  onValueChanged: boundaryData[9] = boundarySpin9.dValue;}

                                    //10
                                    Label {id: boundaryLbl10; text: "boundary 10" }
                                    DoubleSpinBox{ id: boundarySpin10;width: 120; height: 25; value:0;  onValueChanged: boundaryData[10] = boundarySpin10.dValue;}

                                    //11
                                    Label {id: boundaryLbl11; text: "boundary 11" }
                                    DoubleSpinBox{ id: boundarySpin11;width: 120; height: 25; value:0;  onValueChanged: boundaryData[11] = boundarySpin11.dValue;}

                                    //12
                                    Label {id: boundaryLbl12; text: "boundary 12" }
                                    DoubleSpinBox{ id: boundarySpin12;width: 120; height: 25; value:0;  onValueChanged: boundaryData[12] = boundarySpin12.dValue;}

                                    //13
                                    Label {id: boundaryLbl13; text: "boundary 13" }
                                    DoubleSpinBox{ id: boundarySpin13;width: 120; height: 25; value:0;  onValueChanged: boundaryData[13] = boundarySpin13.dValue;}

                                    //14
                                    Label {id: boundaryLbl14; text: "boundary 14" }
                                    DoubleSpinBox{ id: boundarySpin14;width: 120; height: 25; value:0;  onValueChanged: boundaryData[14] = boundarySpin14.dValue;}

                                    //15
                                    Label {id: boundaryLbl15; text: "boundary 15" }
                                    DoubleSpinBox{ id: boundarySpin15;width: 120; height: 25; value:0;  onValueChanged: boundaryData[15] = boundarySpin15.dValue;}

                                    //16
                                    Label {id: boundaryLbl16; text: "boundary 15" }
                                    DoubleSpinBox{ id: boundarySpin16;width: 120; height: 25; value:0;  onValueChanged: boundaryData[16] = boundarySpin16.dValue;}

                                    //17
                                    Label {id: boundaryLbl17; text: "boundary 17" }
                                    DoubleSpinBox{ id: boundarySpin17;width: 120; height: 25; value:0;  onValueChanged: boundaryData[17] = boundarySpin17.dValue;}

                                    //18
                                    Label {id: boundaryLbl18; text: "boundary 18" }
                                    DoubleSpinBox{ id: boundarySpin18;width: 120; height: 25; value:0;  onValueChanged: boundaryData[18] = boundarySpin18.dValue;}

                                    //19
                                    Label {id: boundaryLbl19; text: "boundary 19" }
                                    DoubleSpinBox{ id: boundarySpin19;width: 120; height: 25; value:0;  onValueChanged: boundaryData[19] = boundarySpin19.dValue;}

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
                                    width: gridViewBoundary.width/2

                                    onClicked:
                                    {


                                        for(var i = 0 ; i < boundaryCount ; i++)
                                            boundaryFinal[i] = boundaryData[i]

                                        //to get filename without extension
                                        wrapperCpp.separateFileExtension(fileDialogForComputation.fileUrl)
                                        var s = wrapperCpp.getFileName()

                                        wrapperCpp.separateFileDirectory(fileDialogForComputation.folder)

                                        //wrapperCpp.separateFileExtension(fileDialogForComputation.folder)
                                        //setting final parameters for simulation
                                        //reset data
                                        var i = 0;
                                        for(i = 0 ; i < parametersCount ; i++)
                                            finalParamData[i] = parametersData[i]

                                        for(var j = 0 ; j < boundaryCount ; j++)
                                        {
                                            finalParamData[i] = boundaryData[j]
                                            i++;
                                        }


                                        //wrapperCpp.getParameters(finalParamData,"./" + s)
                                        wrapperCpp.getParameters("0","./" + s)
                                        wrapperCpp.executeMakeFile()

                                    }
                                }

                                Button {
                                    id: bttnLoadBoundary
                                    width: gridViewBoundary.width/2
                                    text: "Load"

                                    onClicked:
                                    {
                                        //separate filename from extension
                                        wrapperCpp.separateFileExtension(fileDialogForComputation.fileUrl)

                                        //get file name from local Resource for paramter loading
                                        var s = wrapperCpp.getFileName()

                                        //current index of file in parameter.js
                                        var index = returnFileIndexBoundary(s)

                                        var totalParam = DataParameters.filenameBoundary[index][0][1];
                                        boundaryCount = totalParam

                                        totalParamCount = parametersCount + boundaryCount


                                        for (var j = 0 ; j < totalParam ; j++)
                                            boundaryData[j] = DataParameters.filenameBoundary[index][2][j];

                                        var i = 0
                                        if(totalParam >= i)
                                        {
                                            boundaryLbl0.text = DataParameters.filenameBoundary[index][1][i].toString()
                                            boundarySpin0.dValue = DataParameters.filenameBoundary[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            boundaryLbl1.text = DataParameters.filenameBoundary[index][1][i].toString()
                                            boundarySpin1.dValue = DataParameters.filenameBoundary[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                           boundaryLbl2.text = DataParameters.filenameBoundary[index][1][i].toString()
                                           boundarySpin2.dValue = DataParameters.filenameBoundary[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            boundaryLbl3.text = DataParameters.filenameBoundary[index][1][i].toString()
                                            boundarySpin3.dValue = DataParameters.filenameBoundary[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                           boundaryLbl4.text = DataParameters.filenameBoundary[index][1][i].toString()
                                            boundarySpin4.dValue = DataParameters.filenameBoundary[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            boundaryLbl5.text = DataParameters.filenameBoundary[index][1][i].toString()
                                            boundarySpin5.dValue = DataParameters.filenameBoundary[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            boundaryLbl6.text = DataParameters.filenameBoundary[index][1][i].toString()
                                            boundarySpin6.dValue = DataParameters.filenameBoundary[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            boundaryLbl7.text = DataParameters.filenameBoundary[index][1][i].toString()
                                            boundarySpin7.dValue = DataParameters.filenameBoundary[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                            boundaryLbl8.text = DataParameters.filenameBoundary[index][1][i].toString()
                                           boundarySpin8.dValue = DataParameters.filenameBoundary[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                           boundaryLbl9.text = DataParameters.filenameBoundary[index][1][i].toString()
                                            boundarySpin9.dValue = DataParameters.filenameBoundary[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                           boundaryLbl10.text = DataParameters.filenameBoundary[index][1][i].toString()
                                            boundarySpin10.dValue = DataParameters.filenameBoundary[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                           boundaryLbl11.text = DataParameters.filenameBoundary[index][1][i].toString()
                                            boundarySpin11.dValue = DataParameters.filenameBoundary[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                           boundaryLbl12.text = DataParameters.filenameBoundary[index][1][i].toString()
                                            boundarySpin12.dValue = DataParameters.filenameBoundary[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                           boundaryLbl13.text = DataParameters.filenameBoundary[index][1][i].toString()
                                            boundarySpin13.dValue = DataParameters.filenameBoundary[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                           boundaryLbl14.text = DataParameters.filenameBoundary[index][1][i].toString()
                                            boundarySpin14.dValue = DataParameters.filenameBoundary[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                           boundaryLbl15.text = DataParameters.filenameBoundary[index][1][i].toString()
                                            boundarySpin15.dValue = DataParameters.filenameBoundary[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                           boundaryLbl16.text = DataParameters.filenameBoundary[index][1][i].toString()
                                            boundarySpin16.dValue = DataParameters.filenameBoundary[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                           boundaryLbl17.text = DataParameters.filenameBoundary[index][1][i].toString()
                                            boundarySpin17.dValue = DataParameters.filenameBoundary[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                           boundaryLbl18.text = DataParameters.filenameBoundary[index][1][i].toString()
                                            boundarySpin18.dValue = DataParameters.filenameBoundary[index][2][i]
                                            i++
                                        }

                                        if(totalParam >= i)
                                        {
                                           boundaryLbl19.text = DataParameters.filenameBoundary[index][1][i].toString()
                                            boundarySpin19.dValue = DataParameters.filenameBoundary[index][2][i]

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

    function returnFileIndexBoundary(filename)
    {
        for(var i = 0 ; i < DataParameters.filename.length ; i++)
        {
            if(DataParameters.filenameBoundary[i][0][0] == filename)
                return i;
        }
    }
}
