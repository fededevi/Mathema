import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: w
    visible: true
    visibility: "FullScreen"

    property int five_spacing: 50
    property int s : (w.width-five_spacing) * 0.09;
    property color col: "#DD2222";

    property int num: 10
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
                num = 1 + Math.random() * 10
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
                    color: index < num ? col : "#FFFFFF"
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
                    color: index < num-5 ? col : "#FFFFFF"
                    border.color: "#0a2f4a"
                    border.width: 2
                    radius: width*0.5
                }
            }
        }
    }
}
