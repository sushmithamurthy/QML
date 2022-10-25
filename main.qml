import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    property int a:0
    property int q:0

    Rectangle{
        id:traffic
        width:100
        height:300
        color:"black"
        radius:10
        anchors.centerIn: parent

        Timer{
            id:timeC
            interval:300
            repeat:true
            running:true
            triggeredOnStart: true
            onTriggered:{

                a++
            console.log(a)
            if (a<121){
//                redBulb.visible=true
//                yellowBulb.visible=false
//                greenBulb.visible=false
                redBulb.opacity=5.0
                yellowBulb.opacity=0.1
                greenBulb.opacity=0.1
                redtext.text=120-a
            q=120
            }
            else if(a<124){
//                redBulb.visible=false
//                yellowBulb.visible=true
//                greenBulb.visible=false
                redBulb.opacity=0.1
                yellowBulb.opacity=5.0
                greenBulb.opacity=0.1
                yellowtext.text=123-a
            q=123
            }
            else if(a<214){
//                redBulb.visible=false
//                yellowBulb.visible=false
//                greenBulb.visible=true
                redBulb.opacity=0.1
                yellowBulb.opacity=0.1
                greenBulb.opacity=5.0
                greentext.text=213-a

             q=213

            }
            else if(a<217){
//                redBulb.visible=false
//                yellowBulb.visible=true
//                greenBulb.visible=false
                redBulb.opacity=0.1
                yellowBulb.opacity=2.0
                greenBulb.opacity=0.1
                yellowtext.text=216-a
            q=216
            }
            else if(a>=217){
                a=0;
            }


            }
        }

        Column{
            anchors.centerIn: parent
            spacing: 20


        Rectangle{

            id:redBulb

            width:75
            height:75
            radius:50
            color:"red"
            Text{
                anchors.centerIn: parent
                id:redtext
            }
        }
        Rectangle{
            id:yellowBulb
            width:75
            height:75
            radius:50
            color:"orange"
            Text{
                anchors.centerIn: parent
                id:yellowtext
            }
        }
        Rectangle{
            id:greenBulb
            width:75
            height:75
            radius:50
            color:"green "
            Text{
                anchors.centerIn: parent
                id:greentext
            }
        }
        }

Rectangle {
    id:signal
    width:20
    height:40
    anchors.horizontalCenter: traffic.horizontalCenter
    anchors.top:traffic.bottom
    color:"black"
}
}
}
