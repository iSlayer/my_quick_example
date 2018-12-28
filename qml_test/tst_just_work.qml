import QtQuick 2.0
import QtTest 1.0
import "../qml_example/"

Item {
    width: 800
    height: 600

    MyTextBox {
        id: myTxtBox
    }

    TestCase {
        name: "just_work"
        when: windowShown

        function initTestCase() {
        }

        function cleanupTestCase() {
        }

        function test_case1() {
            var qmlObj = findChild(myTxtBox, "lastNameField")
            mouseClick(qmlObj, Qt.LeftButton, Qt.NoModifier)
            keyClick("Y")
            keyClick("e")
            keyClick("s")
            tryCompare(qmlObj, "text", "Yes")
            qmlObj.text = ""
        }

        function test_case2() {
            var qmlObj = findChild(myTxtBox, "lastNameField")
            mouseClick(qmlObj, Qt.LeftButton, Qt.NoModifier)
            keyClick(Qt.Key_Y, Qt.ShiftModifier)
            keyClick("e")
            keyClick("s")
            tryCompare(qmlObj, "text", "Yes")
        }
    }
}
