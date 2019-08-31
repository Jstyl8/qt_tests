import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    id: page
    width: 600
    height: 400
    property alias icon: icon
    property alias page: page
    property alias mouseArea2: mouseArea2
    property alias mouseArea1: mouseArea1
    property alias mouseArea: mouseArea
    property alias bottomLeftRect: bottomLeftRect
    property alias middleRightRect: middleRightRect
    property alias topLeftRect: topLeftRect

    header: Label {
        text: qsTr("Page 1")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Image {
        id: icon
        x: 10
        y: 20
        width: 55
        height: 41
        source: "qt-logo.png"
        fillMode: Image.PreserveAspectFit
    }

    Rectangle {
        id: topLeftRect
        width: 55
        height: 41
        color: "#00000000"
        border.color: "#808080"
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.top: parent.top
        anchors.topMargin: 20

        MouseArea {
            id: mouseArea
            anchors.fill: parent
        }
    }

    Rectangle {
        id: middleRightRect
        x: 218
        y: 30
        width: 55
        height: 41
        color: "#00000000"
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.verticalCenter: parent.verticalCenter
        MouseArea {
            id: mouseArea1
            anchors.fill: parent
        }
        border.color: "#808080"
    }

    Rectangle {
        id: bottomLeftRect
        y: 30
        width: 55
        height: 41
        color: "#00000000"
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        MouseArea {
            id: mouseArea2
            anchors.fill: parent
        }
        border.color: "#808080"
    }
}




/*##^## Designer {
    D{i:2;anchors_height:100;anchors_width:100}D{i:4;anchors_height:100;anchors_width:100;anchors_x:218;anchors_y:30}
D{i:3;anchors_x:218;anchors_y:30}D{i:6;anchors_height:100;anchors_width:55;anchors_x:218;anchors_y:30}
D{i:5;anchors_height:100;anchors_width:100;anchors_x:218;anchors_y:30}D{i:8;anchors_height:100;anchors_width:100;anchors_x:218;anchors_y:30}
D{i:7;anchors_height:100;anchors_width:100;anchors_x:218;anchors_y:30}
}
 ##^##*/
