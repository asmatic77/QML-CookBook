import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("QML Cookbook - #1 Rectangles")

    Rectangle {  // with no size, rectangles cannot be seen
        color: "red"
    }

    Rectangle { // default color is white (also for the main window)
        width: 50
        height: 50
    }

    Rectangle {
        width: 25
        height: 25
        color: "red"
    }

    Rectangle { // x and y coordinares are always relative to parent origin
        x: 30
        y: 0
        width: 25
        height: 25
        color: "blue"
    }

    Rectangle {
        x: 50
        y: 50
        width: 100
        height: width-28
        color: "yellow"

        Rectangle {
            x: 10 // Rectangles can be nested
            y: 10
            width: 20
            height: 20
            color: "green"
        }
    }

    Rectangle { // Rectangles can have borders
        x: 20
        y: 130
        width: 60
        height: 20
        color: "red"
        border.width: 3
        border.color: "black"
    }

    Rectangle { // And round corners
        x: 220
        y: 130
        width: 360
        height: 120
        color: "red"
        border.width: 3
        border.color: "black"
        radius: 10
    }

    Rectangle { // or even gradients!
        x: 20
        y: 260
        width: 460
        height: 200
        gradient: Gradient {
            GradientStop { position: 0.0; color: "red"}
            GradientStop { position: 0.7; color: "blue"}
            GradientStop { position: 1.0; color: "black"}
        }

        border.width: 3
        border.color: "black"
        radius: 10
    }
}
