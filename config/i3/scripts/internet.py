#!/usr/bin/python3


from subprocess import check_output
import os

def colorPercent(percent):
    if percent < 10:
        return "<span color='#FF0000'> " + str(percent) + "</span>"
    if percent < 20:
        return "<span color='#FF3300'>" + str(percent) + "</span>"
    if percent < 30:
        return "<span color='#FF6600'> " + str(percent) + "</span>"
    if percent < 40:
        return "<span color='#FF9900'> " + str(percent) + "</span>"
    if percent < 50:
        return "<span color='#FFCC00'> " + str(percent) + "</span>"
    if percent < 60:
        return "<span color='#FFFF00'> " + str(percent) + "</span>"
    if percent < 70:
        return "<span color='#FFFF33'> " + str(percent) +  "</span>" 
    if percent < 80:
        return "<span color='#FFFF66'> " + str(percent) + "</span>"
    if percent < 101:
        return "<span color='#81b71a'> "  + str(percent) + "</span>"
    return "FAIL"

def percentQuality(quality):
    num1 = int(quality.split("/")[0])
    num2 = int(quality.split("/")[1])
    result = num1/num2 * 100
    return int(result)


#verificar qual a interface que está ligada:

inter = check_output(['ip','route'],universal_newlines=True)
status = []

if(len(inter) > 5):
    inter = inter.split(" ")[4]
    #ir buscar a informação da rede
    status = check_output(['iwconfig',inter],universal_newlines=True)

# mensagem a imprimir
result= ""

# string auxiliar
form  = ""

percent = 1


if(len(status) == 0):
    print("<span color='red'> DOWN </span>")
else:
    connectionName = status.split(":")[1].split("\"")[1]


    quality = status.split("=")[3].split(" ")[0]
    percent = percentQuality(quality)
    form += connectionName
    form += colorPercent(percent) + "%"

    print(form)








