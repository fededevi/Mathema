import QtQuick 2.12
import QtQuick.Window 2.12

Item {
    id: w
    visible: true

    property int five_spacing: 50
    property int s : (w.width-five_spacing) * 0.09;
    property color col1: "#DD2222";
    property color col2: "#227cdd";
    property color white: "#FFFFFF";

    property int num1: 0
    property int num2: 0

    Image {
        id: img
        anchors.fill: parent
        source: "qrc:///sfondo.png"
    }
    Rectangle {
        anchors.fill: parent
        color: "#99FFFFFF"
    }
    Item {
        anchors.fill: parent
        focus: true

        Keys.onPressed: {
            if (event.key === Qt.Key_Space) {
                num1 = 1 + Math.random() * 5
                num2 = num1 + 1 + Math.random() * 5
            }
            if (event.key === Qt.Key_Escape) {
                loader.source = ""
            }
        }

        Row {
            anchors.fill: parent
            spacing: s * (1 / 11.0 )
            padding: s * (1 / 11.0)
            Repeater
            {
                model: 5
                Rectangle {
                    anchors.verticalCenter: parent.verticalCenter
                    width: s
                    height: s
                    color: index < num1 ? col1 : index < num2 ? col2 : white
                    border.color: "#0a2f4a"
                    border.width: 2
                    radius: width*0.5
                }
            }
            Item {
                id: name
                width: five_spacing
                height: five_spacing
            }
            Repeater
            {
                model: 5
                Rectangle {
                    anchors.verticalCenter: parent.verticalCenter
                    width: s
                    height: s
                    color: (index+5) < num1 ? col1 : (index+5) < num2 ? col2 : white
                    border.color: "#0a2f4a"
                    border.width: 2
                    radius: width*0.5
                }
            }
        }
    }
}
