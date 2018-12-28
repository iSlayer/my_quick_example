import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick 2.11
import QtGraphicalEffects 1.0
import QtQuick.Dialogs.qml 1.0
import QtWebView 1.1
import Qt.labs.calendar 1.0
import QtQml 2.11

Page {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Item {
        id: element
        x: 0
        y: 0
        width: 640
        height: 480
    }

    TextField {
        id: lastNameField
        objectName: "lastNameField"
        x: 154
        y: 48
        width: 98
        height: 31
        text: qsTr("")
        placeholderText: "Last Name"
        horizontalAlignment: Text.AlignHCenter
    }
}
