import QtQuick 2.0

Circle {
    id: receiveButton

    function receive(value) {
        displayText = value
        clickNotify.running = true
    }

    SequentialAnimation on buttonColor {
        id: clickNotify
        running: false

        ColorAnimation {
            from: "red"
            to: "blue"
            duration: 250
        }

        ColorAnimation {
            from: "blue"
            to: "red"
            duration: 250
        }
    }
}
