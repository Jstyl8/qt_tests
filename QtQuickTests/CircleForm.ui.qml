import QtQuick 2.4

Item {
    width: 200
    height: 200
    property alias buttonColor: button.color
    property alias displayText: display.text

    Rectangle {
        id: button
        color: "#a30e0e"
        radius: width * 0.5
        anchors.fill: parent

        Text {
            id: display
            x: 99
            y: 93
            color: "#eceaea"
            text: qsTr("Text")
            font.family: "Arial"
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 30
        }
    }
}




/*##^## Designer {
    D{i:1;anchors_height:200;anchors_width:200;anchors_x:57;anchors_y:34}
}
 ##^##*/
