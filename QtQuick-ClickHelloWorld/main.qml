import QtQuick 2.0
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    MyHello {
        anchors.fill: parent
    }

}
