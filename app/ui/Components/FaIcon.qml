import QtQuick

// 自带一个 Fonts 实例：每个图标组件独立持有字体，不共享实例、也无需外部注入；
// 这样调用方不可能再漏设 styleName 而回退到系统字体（见 Fonts.qml 的说明）。
Text {
    id: root

    property bool solid: true

    Fonts {
        id: fonts
    }

    font.family: root.solid ? fonts.solid : fonts.regular
    font.styleName: root.solid ? fonts.solidStyle : fonts.regularStyle
}
