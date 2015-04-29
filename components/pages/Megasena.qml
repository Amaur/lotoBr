import QtQuick 2.0
import Ubuntu.Components 1.1
import Ubuntu.Components.ListItems 0.1 as ListItem
import io.thp.pyotherside 1.4
import "../js/jsfunc.js" as Myfunc

Page{

    id: root
    title: "Megasena"
    //property bool loading: true

   Flickable {
       id: flickable
                   anchors.fill: parent
                   //contentHeight:rec.height/2
                   //contentWidth: rec.width
    Rectangle{
      id:rec
        anchors.fill: parent

        ListView {
            anchors.fill: parent

            model: ListModel {
                id: concurso
            }

            delegate: Text {
                // Both "name" and "team" are taken from the model
                text: name +' : '+valor

            }
        }

        ListView {
            id:view
            anchors.fill: parent

            model: ListModel {
                id: numsorteado
            }

            delegate: Text {
                // Both "name" and "team" are taken from the model
                text: modelData

            }
        }

          Python{
              id:py
              onError: {
                          // when an exception is raised, this error handler will be called
                          console.log('python error: ' + traceback);

                      }

          }


Component.onCompleted: {
    var url ="/megasena/json";

   Myfunc.checkInternet();
    Myfunc.dadoConcurso(url)
    //Myfunc.numConcurso(url)

}

//PullToRefresh {
    //parent: flickable
                //refreshing: view.model.status === XmlListModel.Loading
    //var url ="/megasena/json";
              //  onRefresh:  Myfunc.dadoConcurso("/megasena/json")
           // }

    }
   }

}
