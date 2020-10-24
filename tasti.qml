import QtQuick 2.12
import QtQuick.Window 2.12

Item {
    id: w
    visible: true

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
            padding: s * (1 / 10.0)
            Repeater
            {
                model: 5
                Rectangle {
                    property bool low : true
                    MouseArea {
                        anchors.fill: parent
                        onClicked: low = !low
                    }
                    anchors.verticalCenter: parent.verticalCenter
                    width: s*0.4
                    height: low ? s*0.3 : s
                    color: col
                    border.color: "#0a2f4a"
                    border.width: 2
                }
            }
            Item {
                width: five_spacing
                height: five_spacing
            }
            Repeater
            {
                model: 5
                Rectangle {
                    property bool low : true
                    MouseArea {
                        anchors.fill: parent
                        onClicked: low = !low
                    }
                    anchors.verticalCenter: parent.verticalCenter
                    width: s*0.4
                    height: low ? s*0.3 : s
                    color: col
                    border.color: "#0a2f4a"
                    border.width: 2
                }
            }
            Item {
                width: five_spacing
                height: five_spacing
            }
            Repeater
            {
                model: 5
                Rectangle {
                    property bool low : true
                    MouseArea {
                        anchors.fill: parent
                        onClicked: low = !low
                    }
                    anchors.verticalCenter: parent.verticalCenter
                    width: s*0.4
                    height: low ? s*0.3 : s
                    color: "#00DD22"
                    border.color: "#0a2f4a"
                    border.width: 2
                }
            }
            Item {                id: name
                width: five_spacing
                height: five_spacing
            }
            Repeater
            {
                model: 5
                Rectangle {
                    property bool low : true
                    MouseArea {
                        anchors.fill: parent
                        onClicked: low = !low
                    }
                    anchors.verticalCenter: parent.verticalCenter
                    width: s*0.4
                    height: low ? s*0.3 : s
                    color: "#00DD22"
                    border.color: "#0a2f4a"
                    border.width: 2
                }
            }
        }
    }
}
