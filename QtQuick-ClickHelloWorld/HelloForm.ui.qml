import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Controls 2.13

Item {
    width: 400
    height: 400
    property alias label: label
    property alias button: button

    Rectangle {
        id: rectangle
        color: "#ffffff"
        anchors.fill: parent

        Button {
            id: button
            text: "Push me"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
        }

        Label {
            id: label
            y: 120
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}




/*##^## Designer {
    D{i:1;anchors_height:200;anchors_width:200;anchors_x:139;anchors_y:173}
}
 ##^##*/
