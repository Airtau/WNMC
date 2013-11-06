import QtQuick 2.0

Rectangle {
    id: rectangle
    width: parent.width
    height: 80
    visible: true
    z: 2147483646

    BorderImage {
        id: border_image
        x: -50
        y: -23
        width: 900
        height: 80
        anchors.leftMargin: -50
        anchors.left: parent.left
        anchors.verticalCenterOffset: -7
        source: "../images/mediaControl.svg"
        anchors.verticalCenter: parent.verticalCenter
    }
}
