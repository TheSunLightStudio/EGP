import QtQuick
import QtQuick.Templates as T

Item {
    id: root

    implicitWidth: 4
    implicitHeight: 4

    // Horizontal 方向的分隔条竖直摆放，Vertical 方向的分隔条水平摆放。
    property int orientation: Qt.Horizontal

    readonly property bool active: T.SplitHandle.hovered || T.SplitHandle.pressed

    Rectangle {
        anchors.fill: parent
        color: "#2a2a2a"
    }

    Rectangle {
        id: bar

        anchors.centerIn: parent
        color: "#888888"
        width: root.orientation === Qt.Horizontal ? (root.active ? 10 : 4) : parent.width
        height: root.orientation === Qt.Horizontal ? parent.height : (root.active ? 10 : 4)

        Behavior on width {
            enabled: root.orientation === Qt.Horizontal
            NumberAnimation {
                duration: 120
                easing.type: Easing.InOutQuad
            }
        }
        Behavior on height {
            enabled: root.orientation === Qt.Vertical
            NumberAnimation {
                duration: 120
                easing.type: Easing.InOutQuad
            }
        }
    }
}
