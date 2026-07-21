import QtQuick

Rectangle {
    implicitWidth: 390
    implicitHeight: 844
    color: "#0D0D0D"

    // ── Logo ──
    Row {
        id: logoRow
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: parent.height * 0.13
        spacing: 0

        Text {
            text: "Swift"
            font.pixelSize: 58
            font.bold: true
            font.italic: true
            color: "#FFFFFF"
        }

        Text {
            text: "Rides"
            font.pixelSize: 58
            font.bold: true
            font.italic: true
            color: "#C8F000"
        }
    }

    // ── Tagline ──
    Text {
        id: tagline
        text: "Smart matching. Faster rides."
        font.pixelSize: 16
        color: "#AAAAAA"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: logoRow.bottom
        anchors.topMargin: 12
    }

    // Add this inside your Rectangle, below the tagline

    // Add this inside your Rectangle, below the tagline

    Image {
        id: cityMap
        source: "qrc:/map.png"
        width: parent.width
        height: parent.height * 0.48
        anchors.top: tagline.bottom
        anchors.topMargin: 30
        fillMode: Image.PreserveAspectFit
    }

    // ── Get Started Button ──
    Rectangle {
        id: getStartedBtn
        width: parent.width - 48
        height: 58
        radius: height/2
        color: "#C8F000"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: signInText.top
        anchors.bottomMargin: 16

        Text {
            anchors.centerIn: parent
            text: "Get Started"
            font.pixelSize: 18
            font.bold: true
            color: "#0D0D0D"
        }

        MouseArea {
            anchors.fill: parent
            onClicked: Window.window.push("initialization-auth/SignUp.qml")
        }
    }

    // ── Sign In link ──
    Text {
        id: signInText
        text: "Sign in"
        font.pixelSize: 16
        font.bold: true
        color: "#C8F000"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 50

        MouseArea {
            anchors.fill: parent
            onClicked: Window.window.push("initialization-auth/LoginScreen.qml")
        }
    }
}