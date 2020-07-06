import QtQuick 2.6
import QtQuick.Controls 1.0
import io.qt.examples.backend 1.0


//qml

ApplicationWindow {
    id: root
    flags: Qt.WindowCloseButtonHint

    width: 480
    height: 133
    visible: true
    BackEnd {
        id: backend
    }

    Image {
            id: background
            x: 0
            y: 0
            visible: true
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            fillMode: Image.Stretch
            clip: false
            source: "qrc:/new/prefix1/image/GunselBmsCheckupUi.png"

            Text {
                    id: text7
                    x: 55
                    y: 90
                    width: 39
                    height: 27
                    color: "#f4f4f4"
                    text: qsTr("A")
                    font.pixelSize: 15
            }

            Text {
                    id: text8
                    x: 122
                    y: 89
                    width: 39
                    height: 28
                    color: "#f4f4f4"
                    text: qsTr("V")
                    font.pixelSize: 15
            }

            Text {
                id: text9
                x: 196
                y: 89
                width: 39
                height: 28
                color: "#f4f4f4"
                text: qsTr("Ah")
                font.pixelSize: 15
            }

}


    Text {

       id: text1
       text: backend.current
       font.wordSpacing: 1
       textFormat: Text.AutoText
       fontSizeMode: Text.VerticalFit
       renderType: Text.NativeRendering
       wrapMode: Text.WrapAnywhere
       x: 33
       y: 89
       width: 53
       height: 26
       color: "#fbfbfb"
       font.pixelSize: 14
       Keys.onPressed: {
                if (event.key == Qt.Key_Q)
                           (text++);
                else if (event.key == Qt.Key_A)
                           (text--);

}

        Text{
                id: text2
                text: backend.voltage
                x: 65
                y: 0
                width: 63
                height: 26
                color: "#fbfbfb"
                wrapMode: Text.WrapAnywhere
                font.pixelSize: 14
                Keys.onPressed:  {
                if (event.key == Qt.Key_W)
                        (text++)
                else if (event.key == Qt.Key_S)
                        (text--);

       }

               Text {
                    id: text3
                    text: backend.capacity
                    x: 74
                    y: 0
                    width: 58
                    height: 26
                    color: "#fbfbfb"
                    wrapMode: Text.WrapAnywhere
                    font.pixelSize: 14
                    Keys.onPressed:  {
                            if (event.key == Qt.Key_E)
                            (text++)
                    else if (event.key == Qt.Key_D)
                            (text--);

           }



                Text {
                    id: text4
                    text: backend.temp1
                    x: 67
                    y: 0
                    width: 67
                    height: 31
                    color: "#fbfbfb"
                    wrapMode: Text.WrapAnywhere
                    onTextChanged: backend.temp1 = text
                    font.pixelSize: 14
                    Keys.onPressed:  {
                            if (event.key == Qt.Key_R)
                                    (text++)
                    else if (event.key == Qt.Key_F)
                                    (text--);

           }


                    Text {
                        id: text5
                        text: backend.temp2
                        x: 75
                        y: 0
                        width: 64
                        height: 26
                        color: "#fbfbfb"
                        onTextChanged: backend.temp2 = text
                        wrapMode: Text.WrapAnywhere
                        font.pixelSize: 14
                        Keys.onPressed:  {
                                if (event.key == Qt.Key_T)
                                        (text++);
                                else if (event.key == Qt.Key_G)
                                        (text--);

               }


                    Text {
                        id: text6
                        text: backend.balance = (Math.abs(25.0 - backend.temp1 ) + (Math.abs(25.0 - backend.temp2))) / 2
                        x: 78
                        y: 0
                        width: 59
                        height: 26
                        color: "#fbfbfb"
                        onTextChanged: backend.balance = text
                        focus: true
                        wrapMode: Text.WrapAnywhere
                        font.pixelSize: 14




                    }

                    }

                }

                }

        }

    }

    Text {
            id: text10
            x: 267
            y: 89
            width: 39
            height: 28
            color: "#f4f4f4"
            text: qsTr("C")
            font.pixelSize: 15
    }

    Text {
            id: text11
            x: 340
            y: 89
            width: 39
            height: 28
            color: "#f4f4f4"
            text: qsTr("C")
            font.pixelSize: 15
    }

    Text {
        id: text12
        x: 425
        y: 89
        width: 39
        height: 28
        color: "#f4f4f4"
        text: qsTr("C")
        font.pixelSize: 15
    }

}
