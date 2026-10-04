import QtQuick
import QtQuick.Controls

Item {
    id: root
    implicitWidth: 4
    implicitHeight: 4

    readonly property bool active: SplitHandle.hovered || SplitHandle.pressed

    Rectangle {
        anchors.fill: parent
        color: "#2a2a2a"
    }
    Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        width: root.active ? 10 : 4
        color: "#888888"
        Behavior on width {
            NumberAnimation {
                duration: 120
                easing.type: Easing.InOutQuad
            }
        }
    }
}
