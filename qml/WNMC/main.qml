import QtQuick 2.0
import "Content"



Rectangle {
    id: homeScreen
    //color: "#545454"
    width: 800
    height: 480
    property int activeRings: 0

    Image {
        id: backGround
        anchors.fill: parent
        source: "../WNMC/images/finalfrontier.png"
    }
    Rectangle {
        id: topPanel
        x: 1
        y: 1
        width: parent.width
        height: 30
        color: "#545454"

        TopPanel {
            x: 1
            y: 1
            width: parent.width-1
            height: parent.height-1

        }
    }

//    Rectangle {
//        id: sliderMenu
//        x: 0
//        width: homeScreen.width
//        height: homeScreen.width/100*20
//        color: "#ffffff"

//        property bool poppedUp: false
//        property int downY: homeScreen.height //- (sliderMenu.height)
//        property int upY: homeScreen.height - (sliderMenu.height)
//        y: poppedUp ? upY : downY
//        Behavior on y { NumberAnimation {}}

//        GreatMenu {
//            x: 1
//            y: 1
//            width: parent.width
//            height: parent.height
//            anchors.verticalCenterOffset: 0
//            anchors.horizontalCenterOffset: 0
//            anchors.centerIn: parent
//        }
//    }

    Rectangle {
        id: mediaControl
        x: 0
        width: homeScreen.width
        height: homeScreen.height/100*10
        color: "#545454"

        property bool poppedUp: false
        property int downY: homeScreen.height
        property int upY: homeScreen.height - (mediaControl.height)
        y: poppedUp ? upY : downY
        Behavior on y { NumberAnimation {}}


        RingItem {
            id: staticRing
            x: 295
            y: -homeScreen.height/100*10
            anchors.horizontalCenterOffset: 0
            z: 2147483647
            anchors.horizontalCenter: parent.horizontalCenter
            componentFile: "MediaRing.qml"
            source: "../WNMC/images/mediaRing.svg"
            image: "../images/mediaRing.svg"
        }

        MediaControl {
            x: 1
            y: 1
            width: parent.width-1
            height: parent.height-1
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.right: parent.right
            anchors.bottom: parent.bottom
        }

    }
}

