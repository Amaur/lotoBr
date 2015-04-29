import QtQuick 2.0
import Ubuntu.Components 1.1
import Ubuntu.Components.ListItems 0.1 as ListItem
import io.thp.pyotherside 1.4
import "../js/jsfunc.js" as Myfunc

Page{

    id: root
    title: "Megasena"
    //property bool loading: true






    Rectangle{
          anchors.centerIn: parent


          Python{
              id:py
              onError: {
                          // when an exception is raised, this error handler will be called
                          console.log('python error: ' + traceback);

                      }
    /*
              Component.onCompleted: {

                  addImportPath(Qt.resolvedUrl('py/'));
                  importModule('connect',function(){
                    console.log("Qml: Qobject imported")
                     //var func = evaluate("mega.web_connect");
                      call('connect.webConnect', [],function(result){
                       console.log("got result: "+result);
                          mytext.something(result);
                      });
                  })

              }*/
          }


          Text {
              id: mytext
              text: "Hello there"



          }
Component.onCompleted: {
   Myfunc.checkInternet();

}

    }

}
