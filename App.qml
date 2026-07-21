import QtQuick
import QtQuick.Window
import QtQuick.Controls
import "initialization-auth"
import "passenger"
import "Driver"
import "SharedComponents"

Window {
    id: app
    visible: true
    visibility: Window.FullScreen
    flags: Qt.Window | Qt.MaximizeUsingFullscreenGeometryHint
    title: "SwiftRides"

    StackView {
        id: rootStack
        anchors.fill: parent
        initialItem: "initialization-auth/SplashScreen.qml"
    }

    function push(path) { rootStack.push(Qt.resolvedUrl(path)) }
    function pop() { rootStack.pop() }
    function replace(path) { rootStack.replace(Qt.resolvedUrl(path)) }
}