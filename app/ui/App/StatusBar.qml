import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import "../Components"

Rectangle {
    id: statusBar
    height: 30
    color: "lightgray"
    Layout.fillWidth: true
    RowLayout {
        anchors.fill: parent
        spacing: 1

        IconButton {
            Layout.fillHeight: true
            text: "\uf115"
        }
        Item {
            Layout.fillWidth: true
        }
    }
}
