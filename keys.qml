import QtQuick 2.12
import QtQuick.Window 2.12
import "qrc:key.qml" as SingleKey

Item {
    id: w
    visible: true

    Image {
        id: img
        anchors.fill: parent
        source: "qrc:///sfondo.png"
    }

    Rectangle {
        id: overlay
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
            if (event.key === Qt.Key_Up) {
                bk.allUp()
            }
            if (event.key === Qt.Key_Down) {
                bk.allDown()
            }
            if (event.key === Qt.Key_F1) {
                bk.number_visible = !bk.number_visible
            }
            if (event.key === Qt.Key_F2) {
                bk.number_mode = 0
            }
            if (event.key === Qt.Key_F3) {
                bk.number_mode = 1
            }
            if (event.key === Qt.Key_F4) {
                bk.number_mode = 2
            }
        }

        BortKeys{
            id:bk
            anchors.fill: parent
            number_visible: false
        }

    }
}
