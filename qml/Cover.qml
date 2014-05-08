
import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {

    Rectangle {
        anchors.fill: parent
        color: "#000000"
    }

    Label {
        id: title

        anchors {
            top: parent.top
            left: parent.left
            right: parent.right
            margins: Theme.paddingSmall
        }

        font {
            pixelSize: theme.fontSizeSmall
        }

        color: "#CCCCCC"
        text: appWindow.windowTitle

    }

    Label {
        anchors {
            top: (title.text != '') ? title.bottom : parent.top
            left: parent.left
            bottom: parent.bottom
            margins: Theme.paddingSmall
        }

        font {
            family: util.settingsValue("ui/fontFamily")
            pixelSize: Theme.fontSizeTiny / 2
        }

        color: "#00FF00"

        text: {
            var res = ''
            for (var i=0; i<appWindow.lines.length; i++) {
                res = res + appWindow.lines[i] + '\n'
            }
            return res.trim()
        }
    }
}
