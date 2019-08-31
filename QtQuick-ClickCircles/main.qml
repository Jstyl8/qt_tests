import QtQuick 2.12
import QtQuick.Window 2.12


Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Background {
        id: background
        anchors.fill: parent
        target : sender

        Sender {
            id: sender
            y: 129
            displayText: "Sender"
            buttonColor: "#0000ff"
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 50
            target: receiver
        }

        Receiver {
            id: receiver
            x: 390
            y: 154
            displayText: "Receiver"
            buttonColor: "#ff0000"
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 50
            width: sender.width
        }
    }


}







/*##^## Designer {
    D{i:2;anchors_x:69}D{i:1;anchors_x:125;anchors_y:40}
}
 ##^##*/
