import QtQuick 2.12
import QtQuick.Window 2.12


Rectangle {
    id: rect

    property bool low : true

    MouseArea {
        anchors.fill: parent
        onClicked: low = !low
    }

    anchors.verticalCenter: parent.verticalCenter
    height: low ? size : size*3
    border.color: "#000000"
    border.width: 2
}
