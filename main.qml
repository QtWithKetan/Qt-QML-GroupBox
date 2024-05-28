import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")   

    GroupBox
    {
        anchors.centerIn: parent
        label: CheckBox
        {
            id: mainCheckBox
            checked: true
            text: qsTr("Main CheckBox")
            background: Rectangle
            {
                border.color: "#f7b731"
                border.width: 3
                radius: 3
            }
        }
        Row
        {
            anchors.centerIn: parent
            spacing: 15
            enabled: mainCheckBox.checked
            Button
            {
                id: myButton
                text: qsTr("Button Control")
            }
            CheckBox
            {
                id: myCheckBox
                text: qsTr("CheckBox Control")
            }
            Button
            {
                id: myButton_1
                text: qsTr("Button Control")
            }
        }

        background: Rectangle
        {
            border.color: "#a55eea"
            border.width: 3
            radius: 3
        }
    }
}
