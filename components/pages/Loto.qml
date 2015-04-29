import QtQuick 2.0
import Ubuntu.Components 1.1


Page{
    id:loto
    title:"Loto Brasil"

    head {
                sections {
                    model: ["Megasena", "Quina", "Lotomania","Dupla sena","Lotofcáil"]
                }
            }
    /*
            Label {
                anchors.centerIn: parent
                text: "Section " + loto.head.sections.selectedIndex
                fontSize:units.gu(1)
            }*/

    Component.onCompleted: {
        if(loto.head.sections.selectedIndex==1) stack.push(Qt.resolvedUrl("Megasena.qml"));
    }

}
