pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Timeline
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
        handle: HorizontalSplitHandle {}
        SideBar {
            id: sideBar
            SplitView.fillHeight: true
            SplitView.preferredWidth: 170
            SplitView.maximumWidth: 300
            SplitView.minimumWidth: 130
        }
        SplitView {
            Layout.fillWidth: true
            Layout.fillHeight: true
            orientation: Qt.Vertical
            handle: VerticalSplitHandle {}
            Scene {
                id: scene
                SplitView.fillWidth: true
                SplitView.fillHeight: true
                SplitView.minimumHeight: 170
            }
            BottomBar {
                id: bottomBar
                SplitView.fillWidth: true
                SplitView.preferredHeight: 60
                SplitView.minimumHeight: 50
            }
        }
    }

    StatusBar {
        Layout.fillWidth: true
        IconButton {
            text: "\uf0c9"

            onClicked: sideBar.visible = !sideBar.visible
            rightPadding: 5
        }
        IconButton {
            text: "\uf15b"
            onClicked: {}
        }
    }
}
