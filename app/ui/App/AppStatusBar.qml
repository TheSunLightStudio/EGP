import QtQuick
import "../Components"

// 状态栏的具体内容；通过信号把动作交给 Framework 处理，避免反向依赖具体布局。
StatusBar {
    id: root

    signal sideBarToggleRequested()
    signal fileRequested()
    signal settingsRequested()

    IconButton {
        text: "\uf0c9"
        onClicked: root.sideBarToggleRequested()
    }
    IconButton {
        text: "\uf15b"
        onClicked: root.fileRequested()
    }
    IconButton {
        text: "\uf013"
        onClicked: root.settingsRequested()
    }
}
