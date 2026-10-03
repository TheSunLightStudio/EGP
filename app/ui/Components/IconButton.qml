import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic

Button {
    id: control
    padding: 0
    Layout.preferredWidth: 30
    Layout.fillHeight: true

    background: Rectangle {
        anchors.fill: parent
        color: control.down ? "#d0d0d0" : "#f0f0f0"
        border.color: "#a0a0a0"
        radius: 4
    }

    contentItem: Text {
        text: control.text
        color: "black"

        // 关键：让 Text 填满整个按钮
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        
        // 如果只写 alignment 还不够，显式 anchor 填满
        anchors.fill: parent
        
    }
}