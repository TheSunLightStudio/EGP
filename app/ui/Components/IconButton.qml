import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic

Button {
    id: control
    property int iconSize: 16
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
        font.pixelSize: control.iconSize

        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}
