#!/usr/bin/python3
# -*- coding: utf-8 -*-

import urllib.request as web
import time,pprint,json

def webConnect():
    url = "http://developers.agenciaideias.com.br/loterias"
    try:
        obj=web.urlopen(url)
        if(obj.code==200):
            return (obj.code)
    except web.URLError as e:
        #print(e)
        return("Network connection Error")

def read_data(code,url):

    if(code ==200):
        response = web.urlopen(url)
        jsondata = response.read()
        datas = json.loads(jsondata.decode('utf-8'))
        return (datas)

def dado_concurso(spec):
    url = "http://developers.agenciaideias.com.br/loterias"
    url=url+spec
    thecode=webConnect()
    response=read_data(thecode,url)

    dado=["Numero","Data","Cidade","Local","Arrecadacao total","Valor acumulado"]
    del response["concurso"]['premiacao']
    del response["concurso"]['numeros_sorteados']
    #print("Dados do concurso: ")
    valores =[response["concurso"]["numero"],response["concurso"]["data"],response["concurso"]["cidade"],response["concurso"]["local"],response["concurso"]["arrecadacao_total"],response["concurso"]["valor_acumulado"]]
    i=0
    concurs_dado=[]
    
    while i < len(dado):
        concurs_dado.append({"name":dado[i],"valor":valores[i]})
        i=i+1
    return(concurs_dado)


def resul_concurso(spec):
    url = "http://developers.agenciaideias.com.br/loterias"
    url=url+spec
    thecode=webConnect()
    response=read_data(thecode,url)
    #print("Resultados do sorteio:")
    return(response["concurso"]["numeros_sorteados"])

def prox_concurso(spec):
    url = "http://developers.agenciaideias.com.br/loterias"
    url=url+spec
    thecode=webConnect()
    response=read_data(thecode,url)
    #print("Dado Proximo concurso:")
    return(response["proximo_concurso"])

def mega_virada(spec):
    url = "http://developers.agenciaideias.com.br/loterias"
    url=url+spec
    thecode=webConnect()
    response=read_data(thecode,url)
    #print("Mega da virada:")
    return(response["mega_virada_valor_acumulado"])

