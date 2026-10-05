import QtQuick
import QtQuick.Controls

Slider {
    id: control

    background: Item {
        x: control.leftPadding
        y: control.topPadding + control.availableHeight / 2 - height / 2
        implicitWidth: 200
        implicitHeight: 8
        width: control.availableWidth
        height: implicitHeight

        Rectangle {
            width: parent.width
            height: parent.height
            color: '#ffffff'
            radius: 4
            antialiasing: true
        }
        Rectangle {
            width: control.visualPosition * parent.width
            height: parent.height
            topLeftRadius: 4
            bottomLeftRadius: 4
            color: "#2196F3"
            antialiasing: true
        }
    }

    handle: Rectangle {
        x: control.leftPadding + control.visualPosition * (control.availableWidth - width)
        y: control.topPadding + control.availableHeight / 2 - height / 2
        implicitWidth: 6
        implicitHeight: 26
        radius: 13
        color: control.pressed ? "#f0f0f0" : "#ffffff"
        border.color: "#bdbdbd"
        border.width: 1
    }
}
