import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Rectangle {
    id: statusBar
    Layout.preferredHeight: 30
    Layout.fillWidth: true
    default property alias content: contentLayout.data
    color: "lightgray"
    RowLayout {

        anchors.fill: parent
        spacing: 0

        RowLayout {
            id: contentLayout
            spacing: 1
            Layout.fillHeight: true
        }
        Item {
            Layout.fillWidth: true
        }
    }
}
