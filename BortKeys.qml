import QtQuick 2.12
import QtQuick.Window 2.12


Row {
    id:base
    property int spacing5: 50
    anchors.leftMargin: 50
    spacing: 15
    property int size : (width - spacing5*3 -anchors.leftMargin - spacing * 22) / 20
    property color col1: "#DD2222";
    property color col2: "#22DD22";
    property bool number_visible : false
    property int number_mode : 0


    function allUp() {
        for (var i = 0; i < 5; i++) {
            rep1.itemAt(i).low = false;
            rep2.itemAt(i).low = false;
            rep3.itemAt(i).low = false;
            rep4.itemAt(i).low = false;
        }
    }

    function allDown() {
        for (var i = 0; i < 5; i++) {
            rep1.itemAt(i).low = true;
            rep2.itemAt(i).low = true;
            rep3.itemAt(i).low = true;
            rep4.itemAt(i).low = true;
        }
    }

    Repeater
    {
        id: rep1
        model: 5
        BortKey {
            color: col1
            width: size
            number: {
                if      (number_mode == 0) index + 0
                else if (number_mode == 1) index + 0
                else if (number_mode == 2) index + 0
            }
            number_visible: base.number_visible
        }
    }

    Item {
        width: spacing5
        height: spacing5
    }

    Repeater
    {
        id:rep2
        model: 5
        BortKey {
            color: col1
            width: size
            number: {
                if      (number_mode == 0) index + 5
                else if (number_mode == 1) index + 5
                else if (number_mode == 2) index + 0
            }
            number_visible: base.number_visible
        }
    }

    Item {
        width: spacing5
        height: spacing5
    }

    Repeater
    {
        id:rep3
        model: 5
        BortKey {
            color: col2
            width: size
            number:  {
                if      (number_mode == 0) index + 10
                else if (number_mode == 1) index + 0
                else if (number_mode == 2) index + 0
            }
            number_visible: base.number_visible
        }
    }

    Item {
        width: spacing5
        height: spacing5
    }

    Repeater
    {
        id:rep4
        model: 5
        BortKey {
            color: col2
            width: size
            number: {
                if      (number_mode == 0) index + 15
                else if (number_mode == 1) index + 5
                else if (number_mode == 2) index + 0
            }
            number_visible: base.number_visible
        }
    }

}
