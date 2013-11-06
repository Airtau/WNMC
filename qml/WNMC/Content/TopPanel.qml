import QtQuick 2.0

Rectangle {
    id: rectangle1
    width: parent.width
    height: 20

    MouseArea {
        id: mouseAreaTopPanel
        x: 0
        y: 0
        width: 1200
        height: 40
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        anchors.left: parent.left
    }
}
