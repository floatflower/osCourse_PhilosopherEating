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
            property int action: 0
            property string charaterColor: "#FFA500"
            width : 30
            height : 30
            color : charaterColor
            radius: width*0.5
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom : parent.bottom
            objectName: "phy5"
            id: phy5
            Text {
                text: qsTr("5")
                anchors.centerIn: parent
                rotation: -group1Rotate
            }
        }
        Rectangle {
            property int action: 0
            property string charaterColor: "#DDA0DD"
            width : 30
            height : 30
            color : charaterColor
            radius: width*0.5
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top : parent.top
            id: phy1
            objectName: "phy1"
            Text {
                text: qsTr("1")
                anchors.centerIn: parent
                rotation: -group1Rotate
            }
        }
        Rectangle {
            property int action: 0
            property string charaterColor: "#D2B48C"
            width : 30
            height : 30
            color : charaterColor
            radius: width*0.5
            anchors.verticalCenter: parent.verticalCenter
            anchors.left : parent.left
            objectName: "phy7"
            id: phy7
            Text {
                text: qsTr("7")
                anchors.centerIn: parent
                rotation: -group1Rotate
            }
        }
        Rectangle {
            property int action: 0
            property string charaterColor: "#FF1493"
            width : 30
            height : 30
            color : charaterColor
            radius: width*0.5
            anchors.verticalCenter: parent.verticalCenter
            anchors.right : parent.right
            objectName: "phy3"
            id: phy3
            Text {
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
            property int action: 0
            property string charaterColor: "#7FFFD4"
            width : 30
            height : 30
            color : charaterColor
            radius: width*0.5
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom : parent.bottom
            objectName: "phy6"
            id: phy6
            Text {
                text: qsTr("6")
                anchors.centerIn: parent
                rotation: -group2Rotate
            }
        }
        Rectangle {
            property int action: 0
            property string charaterColor: "#DC143C"
            width : 30
            height : 30
            color : charaterColor
            radius: width*0.5
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top : parent.top
            objectName: "phy2"
            id: phy2
            Text {
                text: qsTr("2")
                anchors.centerIn: parent
                rotation: -group2Rotate
            }
        }
        Rectangle {
            property int action: 0
            property string charaterColor: "#F0E68C"
            width : 30
            height : 30
            color : charaterColor
            radius: width*0.5
            anchors.verticalCenter: parent.verticalCenter
            anchors.left : parent.left
            objectName: "phy8"
            id: phy8
            Text {
                text: qsTr("8")
                anchors.centerIn: parent
                rotation: -group2Rotate
            }
        }
        Rectangle {
            property int action: 0
            property string charaterColor: "#7CFC00"
            width : 30
            height : 30
            color : charaterColor
            radius: width*0.5
            anchors.verticalCenter: parent.verticalCenter
            anchors.right : parent.right
            objectName: "phy4"
            id: phy4
            Text {
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
            objectName: "ch4"
        }
        Rectangle {
            width : 50
            height : 6
            color: "#666"
            anchors.verticalCenter: parent.verticalCenter;
            anchors.right: parent.right
            property bool used: false
            id: ch2
            objectName: "ch2"
        }
        Rectangle {
            width : 6
            height: 50
            color: "#666"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            property bool used: false
            id: ch8
            objectName: "ch8"
        }
        Rectangle {
            width : 50
            height: 6
            color: "#666"
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            property bool used: false
            id: ch6
            objectName: "ch6"
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
            objectName: "ch5"
        }
        Rectangle {
            width : 50
            height : 6
            color: "#666"
            anchors.verticalCenter: parent.verticalCenter;
            anchors.right: parent.right
            property bool used: false
            id: ch3
            objectName: "ch3"
        }
        Rectangle {
            width : 6
            height: 50
            color: "#666"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            property bool used: false
            id: ch1
            objectName: "ch1"
        }
        Rectangle {
            width : 50
            height: 6
            color: "#666"
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            property bool used: false
            id: ch7
            objectName: "ch7"
        }
    }
    Rectangle {
        width : 300
        height : 400
        anchors.verticalCenter: parent.verticalCenter
        Rectangle {
            width : 300
            height: 50
            border.color: "#aaa"
            id: phy2Status
            Text {
                objectName: "phy2Status"
                property string status: "Waiting..."
                text : "Philosopher 2: " + status
                anchors.centerIn: parent
            }
            anchors.top: phy1Status.bottom
        }
        Rectangle {
            width : 300
            height: 50
            border.color: "#aaa"
            id: phy3Status
            Text {
                objectName: "phy3Status"
                property string status: "Waiting..."
                text : "Philosopher 3: " + status
                anchors.centerIn: parent
            }
            anchors.top: phy2Status.bottom
        }
        Rectangle {
            width : 300
            height: 50
            border.color: "#aaa"
            id: phy4Status
            Text {
                objectName: "phy4Status"
                property string status: "Waiting..."
                text : "Philosopher 4: " + status
                anchors.centerIn: parent
            }
            anchors.top: phy3Status.bottom
        }
        Rectangle {
            width : 300
            height: 50
            border.color: "#aaa"
            id: phy5Status
            Text {
                objectName: "phy5Status"
                property string status: "Waiting..."
                text : "Philosopher 5: " + status
                anchors.centerIn: parent
            }
            anchors.top: phy4Status.bottom
        }
        Rectangle {
            width : 300
            height: 50
            border.color: "#aaa"
            id: phy6Status
            Text {
                objectName: "phy6Status"
                property string status: "Waiting..."
                text : "Philosopher 6: " + status
                anchors.centerIn: parent
            }
            anchors.top: phy5Status.bottom
        }
        Rectangle {
            width : 300
            height: 50
            border.color: "#aaa"
            id: phy7Status
            Text {
                objectName: "phy7Status"
                property string status: "Waiting..."
                text : "Philosopher 7: " + status
                anchors.centerIn: parent
            }
            anchors.top: phy6Status.bottom
        }
        Rectangle {
            width : 300
            height: 50
            border.color: "#aaa"
            id: phy8Status
            Text {
                objectName: "phy8Status"
                property string status: "Waiting..."
                text : "Philosopher 8: " + status
                anchors.centerIn: parent
            }
            anchors.top: phy7Status.bottom
        }
        Rectangle {
            width : 300
            height: 50
            border.color: "#aaa"
            id: phy1Status
            Text {
                objectName: "phy1Status"
                property string status: "Waiting..."
                text : "Philosopher 1: " + status
                anchors.centerIn: parent
            }
        }
    }
}
