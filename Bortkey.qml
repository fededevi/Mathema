import QtQuick 2.12
import QtQuick.Window 2.12

Item {
    id: base

    property bool low : true
    property int number : 0
    property bool number_visible : false
    property color color: "#000000"

    anchors.verticalCenter: parent.verticalCenter
    height: low ? size : size*3

    Rectangle {
        id: rect
        anchors.bottomMargin: - base.width*2
        anchors.bottom: parent.verticalCenter

        width: base.width
        height: low ? base.width : base.width*3

        MouseArea {
            anchors.fill: parent
            onClicked: low = !low
        }

        border.color: "#000000"
        border.width: 2
        color: base.color

    }

    Rectangle {
        anchors.topMargin: 20
        anchors.top: rect.bottom
        visible: number_visible

        width: base.width
        height: base.width
        color: base.color

        border.width: 2

        Text {
            font.pixelSize: base.width*0.6
            anchors.centerIn: parent
            text: number+1
        }
    }
}
