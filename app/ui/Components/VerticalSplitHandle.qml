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
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.right: parent.right
        height: root.active ? 10 : 4
        color: "#888888"
        Behavior on height {
            NumberAnimation {
                duration: 120
                easing.type: Easing.InOutQuad
            }
        }
    }
}
