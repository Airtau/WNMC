import QtQuick 2.0

Image {
        id: mediaRing

    property bool created: false
    property string image: "../images/mediaRing.svg"

    source: image
        onCreatedChanged: {
        if (created) {
            homeScreen.z = 1;    // above the sky but below the ground layer
            homeScreen.activeRings++;
            // once item is created, start moving offscreen
            dropYAnim.duration = 2000;
            dropYAnim.easing.type = Easing.OutBounce;//(homeScreen.height + homeScreen.centerOffset - mediaRing.y) * 16;
            dropXAnim.duration = 2000;
            dropXAnim.easing.type = Easing.linear;//(homeScreen.height + homeScreen.centerOffset - mediaRing.y) * 16;
            dropAnim.running = true;
        } else {
            homeScreen.activeRings--;
        }
    }

        ParallelAnimation {
            id: dropAnim
                NumberAnimation {id: dropYAnim; target: mediaRing; property: "y"; to: homeScreen.height-50; duration: 3000 }
                NumberAnimation {id: dropXAnim; target: mediaRing; property: "x"; to: homeScreen.width/2-mediaRing.width/2; duration: 3000 }
        //ScriptAction {script: { mediaRing.created = false; mediaRing.destroy() }        }
    }
}
