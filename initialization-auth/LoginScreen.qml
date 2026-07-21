import QtQuick
import QtQuick.Controls


Rectangle {
    implicitWidth: 390
    implicitHeight: 844
    color: "#0D0D0D"

    // ── Back Button ──
    Rectangle {
        id: backBtn
        width: 44
        height: 44
        radius: 12
        color: "#1A1A1A"
        anchors.top: parent.top
        anchors.topMargin: 60
        anchors.left: parent.left
        anchors.leftMargin: 24

        Text {
            anchors.centerIn: parent
            text: "←"
            font.pixelSize: 20
            color: "#FFFFFF"
        }

        MouseArea {
            anchors.fill: parent
            onClicked: Window.window.pop()
        }
    }

    // ── Title ──
    Text {
        id: titleText
        text: "Login"
        font.pixelSize: 34
        font.bold: true
        color: "#FFFFFF"
        anchors.top: backBtn.bottom
        anchors.topMargin: 32
        anchors.left: parent.left
        anchors.leftMargin: 24
    }

    // ── Subtitle ──
    Text {
        id: subText
        text: "Enter your credentials to log in"
        font.pixelSize: 15
        color: "#777777"
        anchors.top: titleText.bottom
        anchors.topMargin: 8
        anchors.left: parent.left
        anchors.leftMargin: 24
    }

    // ── Phone Label ──
    Text {
        id: phoneLabel
        text: "PHONE NUMBER"
        font.pixelSize: 12
        font.bold: true
        font.letterSpacing: 1.5
        color: "#777777"
        anchors.top: subText.bottom
        anchors.topMargin: 40
        anchors.left: parent.left
        anchors.leftMargin: 24
    }

    // ── Phone Input ──
    Rectangle {
        id: phoneInput
        width: parent.width - 48
        height: 58
        radius: 14
        color: "#1A1A1A"
        border.color: phoneField.activeFocus ? "#C8F000" : "#2A2A2A"
        border.width: 1.5
        anchors.top: phoneLabel.bottom
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 24

        Row {
            anchors.fill: parent
            anchors.leftMargin: 16
            anchors.rightMargin: 16
            spacing: 10

            // Country code
            Text {
                text: "🇬🇭 +233"
                font.pixelSize: 15
                color: "#FFFFFF"
                anchors.verticalCenter: parent.verticalCenter
            }

            // Divider
            Rectangle {
                width: 1
                height: 24
                color: "#2A2A2A"
                anchors.verticalCenter: parent.verticalCenter
            }

            // Input
            TextInput {
                id: phoneField
                width: phoneInput.width - 110
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 15
                color: "#FFFFFF"
                maximumLength: 9

                Text {
                    text: "XX XXX XXXX"
                    font.pixelSize: 15
                    color: "#444444"
                    visible: !parent.text
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
        }
    }

    // login Account button
    Rectangle {
        id: loginAccountBtn
        width: parent.width - 48
        height: 60
        radius: height / 2
        color: "#C8F000"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 44
        anchors.horizontalCenter: parent.horizontalCenter

        Text {
            text: "Sign in"
            font.family: "Plus Jakarta Sans"
            font.pixelSize: 18
            font.bold: true
            color: "#0D0D0D"
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: Window.window.push("passenger/PassengerScreen.qml")
        }
    }
}

