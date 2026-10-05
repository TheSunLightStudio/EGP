import QtQuick
import QtQuick.Layouts
import "../Components"

Rectangle {
    id: root

    color: '#797979'

    RowLayout {
        anchors.fill: parent

        Item {
            Layout.minimumWidth: 5
        }

        IconButton {
            text: "\uf04b"
            iconColor: "red"
            onClicked: {
                console.log("IconButton clicked");
            }
        }

        StyledSlider {
            id: slider
            Layout.fillWidth: true
            Layout.fillHeight: true
            from: 0
            to: 100
            onPressedChanged: {
                if (!pressed) {
                    value = Math.round(value);
                }
            }
        }

        Item {
            Layout.minimumWidth: 5
        }
    }
}
