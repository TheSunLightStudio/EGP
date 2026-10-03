import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import "./App"

ColumnLayout {
    id: root
    property SystemPalette systemPalette
    spacing: 0
    anchors.fill: parent
    Rectangle {
        color: root.systemPalette.window
        Layout.fillWidth: true
        Layout.fillHeight: true
        RowLayout {
            anchors.fill: parent
            SideBar {}
            SplitView {
                Layout.fillWidth: true
                Layout.fillHeight: true
                orientation: Qt.Vertical
                Scene {
                    SplitView.fillWidth: true
                    SplitView.fillHeight: true
                    color: "cyan"
                }
                Scene {
                    SplitView.preferredHeight: 160
                    color: "lightblue"
                }
            }
        }
    }
    StatusBar {
        Layout.fillWidth: true
    }
}
