import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import "./App"
import "./Components"

ColumnLayout {
    id: root
    SystemPalette {
        id: sysPalette
        colorGroup: SystemPalette.Active
    }
    spacing: 0
    anchors.fill: parent

    SplitView {
        Layout.fillWidth: true
        Layout.fillHeight: true
        orientation: Qt.Horizontal
        SideBar {
            SplitView.fillHeight: true
            SplitView.preferredWidth: 170
            SplitView.maximumWidth: 300
        }
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
                implicitHeight: 160
                color: "lightblue"
            }
        }
    }

    StatusBar {
        Layout.fillWidth: true
        IconButton {
            text: "\uf0c9"
            onClicked: console.log("Menu button clicked")
        }
        IconButton {
            text: "\uf0c9"
            onClicked: console.log("Menu button clicked")
        }
        IconButton {
            text: "\uf0c9"
            onClicked: console.log("Menu button clicked")
        }
        IconButton {
            text: "\uf0c9"
            onClicked: console.log("Menu button clicked")
        }
        IconButton {
            text: "\uf0c9"
            onClicked: console.log("Menu button clicked")
        }
    }
}
