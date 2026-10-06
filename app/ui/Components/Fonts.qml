import QtQuick

Item {
    id: root

    // Solid-900 与 Regular-400 共用同一个 typographic family
    // ("Font Awesome 7 Free", 见 OTF 的 name ID 16)，只能靠 styleName
    // ("Solid" / "Regular", 见 name ID 17) 区分；仅设置 font.family 时
    // Qt 总是命中 Regular，导致 gear (U+F013) 等 Solid 专有图标回退成系统符号。
    readonly property alias solid: solidFont.name
    readonly property alias regular: regularFont.name
    readonly property alias brands: brandsFont.name

    readonly property string solidStyle: "Solid"
    readonly property string regularStyle: "Regular"
    readonly property string brandsStyle: "Regular"

    FontLoader {
        id: solidFont
        source: "qrc:/resources/fonts/Font-Awesome-7-Free-Solid-900.otf"
    }
    FontLoader {
        id: regularFont
        source: "qrc:/resources/fonts/Font-Awesome-7-Free-Regular-400.otf"
    }
    FontLoader {
        id: brandsFont
        source: "qrc:/resources/fonts/Font-Awesome-7-Brands-Regular-400.otf"
    }
}
