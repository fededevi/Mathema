import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick 2.15

Window {
    id: w
    visible: true
    visibility: "Maximized"

    property int five_spacing: 50
    property int s : (w.width-five_spacing) * 0.09;
    property color col: Qt.rgba(238/255,93/255,49/255,1);

    Image {
        id: img
        anchors.fill: parent
        source: "qrc:///sfondo.png"
    }

    Loader {
        focus: true
        id: loader
        anchors.fill: parent
    }

    Item {
        anchors.fill: parent
        focus: true
        visible: loader.source == ""

        Keys.onPressed: {
            if (event.key === Qt.Key_Escape) {
                loader.source = ""
            }
        }

        Row {
            anchors.leftMargin: s*2
            anchors.fill: parent
            spacing: s * (1 / 2.0 )
            padding: s * (1 / 2.0)

            Rectangle {
                MouseArea {
                    anchors.fill: parent
                    onClicked: loader.source = "10.qml"
                }
                anchors.verticalCenter: parent.verticalCenter
                width: s
                height: s
                color: col
                border.color: "#0a2f4a"
                border.width: 2
                radius: width*0.5
                Text {
                    anchors.centerIn: parent
                    font.pixelSize: s*0.5
                    text: "10"
                }
            }
            Rectangle {
                MouseArea {
                    anchors.fill: parent
                    onClicked: loader.source = "10F.qml"
                }
                anchors.verticalCenter: parent.verticalCenter
                width: s
                height: s
                color: col
                border.color: "#0a2f4a"
                border.width: 2
                radius: width*0.5
                Text {
                    anchors.centerIn: parent
                    font.pixelSize: s*0.5
                    text: "10F"
                }
            }
            Rectangle {
                MouseArea {
                    anchors.fill: parent
                    onClicked: loader.source = "20.qml"
                }
                anchors.verticalCenter: parent.verticalCenter
                width: s
                height: s
                color: col
                border.color: "#0a2f4a"
                border.width: 2
                radius: width*0.5
                Text {
                    anchors.centerIn: parent
                    font.pixelSize: s*0.5
                    text: "20"
                }
            }
            Rectangle {
                MouseArea {
                    anchors.fill: parent
                    onClicked: loader.source = "keys.qml"
                }
                anchors.verticalCenter: parent.verticalCenter
                width: s
                height: s
                color: col
                border.color: "#0a2f4a"
                border.width: 2
                radius: width*0.5
                Text {
                    anchors.centerIn: parent
                    font.pixelSize: s*0.5
                    text: "TA"
                }
            }
            Rectangle {
                MouseArea {
                    anchors.fill: parent
                    onClicked: loader.source = "10S.qml"
                }
                anchors.verticalCenter: parent.verticalCenter
                width: s
                height: s
                color: col
                border.color: "#0a2f4a"
                border.width: 2
                radius: width*0.5
                Text {
                    anchors.centerIn: parent
                    font.pixelSize: s*0.5
                    text: "10S"
                }
            }
        }
    }
}
