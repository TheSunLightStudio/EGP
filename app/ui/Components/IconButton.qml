import QtQuick
import QtQuick.Controls.Basic

// 图标按钮：字体的 family/styleName 由 FaIcon 统一处理，调用方无需再手动传递。
Button {
    id: control

    property int iconSize: 16
    property string iconColor: "black"
    property bool solid: true

    implicitWidth: 30
    implicitHeight: 30
    padding: 0

    background: Rectangle {
        anchors.fill: parent
        color: control.down ? "#d0d0d0" : "#f0f0f0"
        border.color: "#a0a0a0"
        radius: 4
    }

    contentItem: FaIcon {
        text: control.text
        solid: control.solid
        color: control.iconColor
        font.pixelSize: control.iconSize

        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}
