import QtQuick 2.7
import QtQuick.Controls 1.5

ApplicationWindow {
    visible: true
    width: maximumWidth
    height: maximumHeight
    title: qsTr("Hello World")

    property double group1Rotate: 22.5
    property double group2Rotate: 67.5

    Rectangle {
        width : 480
        height : 480
        anchors.centerIn: parent
        color: "transparent"
        rotation: group1Rotate

        Rectangle {
            width : 30
            height : 30
            color : "#aaa"
            radius: width*0.5
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom : parent.bottom
            property int action: 0
            Text {
                id: phy5
                text: qsTr("5")
                anchors.centerIn: parent
                rotation: -group1Rotate
            }
        }
        Rectangle {
            width : 30
            height : 30
            color : "#aaa"
            radius: width*0.5
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top : parent.top
            property int action: 0
            id: phy1
            objectName: "phy1"
            Text {
                text: qsTr("1")
                anchors.centerIn: parent
                rotation: -group1Rotate
            }
        }
        Rectangle {
            width : 30
            height : 30
            color : "#aaa"
            radius: width*0.5
            anchors.verticalCenter: parent.verticalCenter
            anchors.left : parent.left
            property int action: 0
            Text {
                id: phy7
                text: qsTr("7")
                anchors.centerIn: parent
                rotation: -group1Rotate
            }
        }
        Rectangle {
            width : 30
            height : 30
            color : "#aaa"
            radius: width*0.5
            anchors.verticalCenter: parent.verticalCenter
            anchors.right : parent.right
            property int action: 0
            Text {
                id: phy3
                text: qsTr("3")
                anchors.centerIn: parent
                rotation: -group1Rotate
            }
        }
    }

    Rectangle {
        width : 480
        height : 480
        anchors.centerIn: parent
        color: "transparent"
        rotation: group2Rotate
        Rectangle {
            width : 30
            height : 30
            color : "#aaa"
            radius: width*0.5
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom : parent.bottom
            property int action: 0
            Text {
                id: phy6
                text: qsTr("6")
                anchors.centerIn: parent
                rotation: -group2Rotate
            }
        }
        Rectangle {
            width : 30
            height : 30
            color : "#aaa"
            radius: width*0.5
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top : parent.top
            property int action: 0
            Text {
                id: phy2
                text: qsTr("2")
                anchors.centerIn: parent
                rotation: -group2Rotate
            }
        }
        Rectangle {
            width : 30
            height : 30
            color : "#aaa"
            radius: width*0.5
            anchors.verticalCenter: parent.verticalCenter
            anchors.left : parent.left
            property int action: 0
            Text {
                id: phy8
                text: qsTr("8")
                anchors.centerIn: parent
                rotation: -group2Rotate
            }
        }
        Rectangle {
            width : 30
            height : 30
            color : "#aaa"
            radius: width*0.5
            anchors.verticalCenter: parent.verticalCenter
            anchors.right : parent.right
            property int action: 0
            Text {
                id: phy4
                text: qsTr("4")
                anchors.centerIn: parent
                rotation: -group2Rotate
            }
        }
    }

    Rectangle {
        width: 400
        height: 400
        color: "#ccc"
        radius: width*0.5
        anchors.centerIn: parent
        Rectangle {
            width : 6
            height : 50
            color: "#666"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            property bool used: false
            id: ch4
        }
        Rectangle {
            width : 50
            height : 6
            color: "#666"
            anchors.verticalCenter: parent.verticalCenter;
            anchors.right: parent.right
            property bool used: false
            id: ch2
        }
        Rectangle {
            width : 6
            height: 50
            color: "#666"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            property bool used: false
            id: ch8
        }
        Rectangle {
            width : 50
            height: 6
            color: "#666"
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            property bool used: false
            id: ch6
        }
    }
    Rectangle {
        width: 400
        height: 400
        color: "transparent"
        radius: width*0.5
        rotation: 45
        anchors.centerIn: parent
        Rectangle {
            width : 6
            height : 50
            color: "#666"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            property bool used: false
            id: ch5
        }
        Rectangle {
            width : 50
            height : 6
            color: "#666"
            anchors.verticalCenter: parent.verticalCenter;
            anchors.right: parent.right
            property bool used: false
            id: ch3
        }
        Rectangle {
            width : 6
            height: 50
            color: "#666"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            property bool used: false
            id: ch1
        }
        Rectangle {
            width : 50
            height: 6
            color: "#666"
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            property bool used: false
            id: ch7
        }
    }
}
