import QtQuick 2.0
import Ubuntu.Components 1.1
import "components"
import "components/pages"

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "com.ubuntu.developer..lotoBr"

    // Removes the old toolbar and enables new features of the new header.
    useDeprecatedToolbar: false

    /*
     This property enables the application to change orientation
     when the device is rotated. The default is false.
    */
    //automaticOrientation: true

    width: units.gu(50)
    height: units.gu(75)


    PageStack{
        id:stack
        Component.onCompleted: push(tabs)

        Tabs{
            id:tabs

            Tab{title: page.title; page:Megasena{id:mega}}
            Tab{title: page.title; page:Quina{id:quina}}
            Tab{title: page.title; page:Lotomania{id:lotomania}}
            Tab{title: page.title; page:Lotofacil{id:lotofacil}}
            Tab{title: page.title; page:Duplasena{id:duplasena}}
            //Tab{title: page.title; page:Loto{id:loto}}
            Tab{title: page.title; page:About{id:about}}


        }

        //Megasena{id:megass}

    }


}
