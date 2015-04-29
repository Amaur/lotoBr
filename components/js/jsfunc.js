function checkInternet(){
    py.addImportPath(Qt.resolvedUrl('../py/'));
    py.importModule('lotery',function(){
    py.call('lotery.mega_virada', ["/megasena/json"],function(result){
     console.log("got result: "+result);
        mytext.text=result;
    });
})
}


