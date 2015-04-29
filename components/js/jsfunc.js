function checkInternet(){
    py.addImportPath(Qt.resolvedUrl('../py/'));
    py.importModule('lotery',function(){
    py.call('lotery.webConnect', [],function(result){
     //console.log("got result: "+result);
        //mytext.text=result;
    });
})
}

function dadoConcurso(spec){
    py.addImportPath(Qt.resolvedUrl('../py/'));
    py.importModule('lotery',function(){
    py.call('lotery.dado_concurso', [spec],function(result){
        for (var i=0; i<result.length; i++) {
            concurso.append(result[i]);
     }
    });
})
}
function numConcurso(spec){
    py.addImportPath(Qt.resolvedUrl('../py/'));
    py.importModule('lotery',function(){
    py.call('lotery.resul_concurso', [spec],function(result){
        for (var i=0; i<result.length; i++) {
            numsorteado.append(result[i]);
     }

    });
})
}

