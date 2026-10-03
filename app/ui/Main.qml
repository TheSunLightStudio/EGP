import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts
import "javascript/utils.js" as Utils

Window {
    id: root
    title: "EGP"
    minimumWidth: Screen.width * 0.4
    minimumHeight: Screen.height * 0.3
    width: 800
    height: 600
    visible: true

    Connections {}
    Fonts {
        id: fonts
    }
    AppFramework {
        id: appFramework
    }
}
