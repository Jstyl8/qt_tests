import QtQuick 2.12
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

import Todo 1.0

ColumnLayout
{
    Frame {
        Layout.fillWidth: true

        ListView {
            implicitWidth: 250
            implicitHeight: 250
            clip: true
            anchors.fill: parent

            model: TodoModel {
                list: todoList
            }

            delegate: RowLayout {
                width: parent.width
                CheckBox {
                    checked: model.done
                    onClicked: model.done = checked
                }
                TextField {
                    text: model.description
                    onEditingFinished: model.description = text
                    Layout.fillWidth: true
                }
            }
        }
    }

    RowLayout {
        Button {
            text: qsTr(("Add new item  "));
            Layout.fillWidth: true
        }
        Button {
            text: qsTr("Remove completed  ");
            Layout.fillWidth: true
        }
    }
}
