import QtQuick 2.0

HelloForm {
    id: myHello


    button.onClicked: {
        label.text=qsTr("Hello World")
    }
}
