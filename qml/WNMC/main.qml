import QtQuick 2.0
import "Content"



Rectangle {
    color: "#545454"
    width: 800
    height: 480

    GreatMenu {
        anchors.centerIn: parent
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            try {
                Qt.createQmlObject(Rectangle, scene, 'CustomObject');
            } catch(err) {
                dialog.show('Error on line ' + err.qmlErrors[0].lineNumber + '\n' + err.qmlErrors[0].message);
            };
        }
    }
}
