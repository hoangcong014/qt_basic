import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: applicationWindow
    visible: true
    width: 440
    height: 480
    color: "#03A9F4"
    title: qsTr("Hello QML")
    Material.theme: Material.Dark
    Material.accent: Material.Purple
    Material.background: Material.Blue
    GridLayout{
        anchors.rightMargin: 5
        anchors.leftMargin: 5
        anchors.bottomMargin: 5
        anchors.topMargin: 5
        anchors.fill: parent
        Layout.fillWidth: maximumWidth
        Text {
            id: lblHelloQML
            color: "#ffffff"
            text: qsTr("Hello QML")
            Layout.columnSpan: 3
            font.pointSize: 24
            elide: Text.ElideLeft
            font.weight: Font.ExtraLight
            font.family: "Times New Roman"
            styleColor: "#ffffff"
            Layout.fillWidth: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            Layout.row: 0
        }
        Column {
            Material.accent: Material.Orange
            Layout.fillWidth: true
            id: radSize
            RadioButton { text: qsTr("Small") }
            RadioButton { text: qsTr("Medium");  checked: true }
            RadioButton { text: qsTr("Large") }
            Layout.row: 1
        }

        CheckBox {
            Layout.fillWidth: true
            id: checkBox
            x: 333
            y: 146
            text: qsTr("Check Box")
            Layout.row: 2
        }
    }
}


