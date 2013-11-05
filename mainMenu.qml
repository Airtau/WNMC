import QtQuick 2.0

Item {
    id: root
    property real value : 0

    width: 100; height: 400

    Image {id: background; x: 0; y: 0; fillMode: Image.PreserveAspectCrop; source: "background.svg" }
}
