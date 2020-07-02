import QtQuick.Controls 2.1
import QtQuick.Dialogs 1.2

import QtQuick.Scene3D 2.0

import Qt3D.Core 2.0
import Qt3D.Render 2.0
import Qt3D.Input 2.0
import Qt3D.Extras 2.0

import QtQuick 2.5
import QtQuick.Layouts 1.3


import QtQuick.Controls 2.1
import QtQuick.Dialogs 1.2

import QtQuick.Scene3D 2.0

import Qt3D.Core 2.0

import Qt3D.Render 2.0
import Qt3D.Input 2.0
import Qt3D.Extras 2.0

import QtQuick 2.7
import QtQuick.Layouts 1.3
import QtQuick.Controls.Styles 1.4

import "sceneLib.js" as SceneVar


Scene3D
{

    id:myScene3d

    property int rotX:0
    property int rotY:0
    property int rotZ:0

    property int posX:10
    property int posY:0
    property int posZ:0


    property bool rotEna: false
    property bool tranEna: false

    property alias sceneLoaderSource : sceneLoader.source
    anchors.fill: parent
    aspects: ["input", "logic"]
    cameraAspectRatioMode: Scene3D.AutomaticAspectRatio

    Entity
    {

        id: sceneRoot        

        Camera
        {
            id:camera
            projectionType: CameraLens.PerspectiveProjection
            fieldOfView: 2
            aspectRatio: 16/9
            nearPlane : 0.1
            farPlane : 20.0
            position: Qt.vector3d(10,0,0)
            upVector: Qt.vector3d( 0.0, 1.0, 0.0 )
            viewCenter: Qt.vector3d( 0.0, 0.0, 0.0 )                                  


            onPositionChanged:
            {
                rotateAboutViewCenter(Qt.quaternion(position))
            }
        }

        FirstPersonCameraController
        {
            camera: camera
            linearSpeed: 1.0
            acceleration: 0.1
            deceleration: 1.0
        }

        Entity
        {
            id:camEntity
            components: [
                PointLight {},
                Transform { translation: camera.position }
            ]
        }

        components: [
            RenderSettings
            {
                activeFrameGraph: ForwardRenderer
                {
                    //clearColor: Qt.rgba(0, 0.5, 1, 1)
                    //clearColor: Qt.rgba(0,0,0,0)
                    clearColor: Qt.rgba(1,1,1,1)
                    camera: camera
                }
                //pickingSettings.pickMethod: PickingSettings.TrianglePicking
                //pickingSettings.pickMethod: PickingSettings.TrianglePicking
                pickingSettings.pickMethod: PickingSettings.FrontFace
                //pickingSettings.faceOrientationPickingMode: pickingSettings.FrontAndBackFace
                pickingSettings.faceOrientationPickingMode: pickingSettings.NearestPick
            },
            InputSettings
            {
            }
        ]

        Entity
        {
            id: monkeyEntity
            components: [
                SceneLoader
                {
                    id: sceneLoader
                },
                Transform
                {

                    rotationX  :   rotX
                    rotationY  :   rotY
                    rotationZ  :   rotZ
                },

                ObjectPicker
                {


                    dragEnabled: focus
                    onClicked: myScene3d.focus = true

                    onPressed: {
                        console.log("Object clicked! Pressed at world-intersection: ", pick.worldIntersection)
                        console.log("Triangle index: ", pick.triangleIndex)
                        console.log("position: ", pick.position)
                        console.log("local intersection :", pick.localIntersection)



                    }
                }

            ]

        }

    }

}

