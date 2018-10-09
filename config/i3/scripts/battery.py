#!/usr/bin/env python3
#
# A battery indicator blocklet script for i3blocks

from subprocess import check_output
import os

status = check_output(['acpi'], universal_newlines=True)
state = status.split(": ")[1].split(", ")[0]
commasplitstatus = status.split(", ")
percentleft = int(commasplitstatus[1].rstrip("%\n"))
percentLeft = commasplitstatus[1].rstrip("%\n")

FA_LIGHTNING = "<span font='FontAwesome'>\uf0e7</span>"
FA_PLUG = "<span font='FontAwesome'>\uf1e6</span>"
FA_BAT_0 = "\uf244"
FA_BAT_1 = "\uf243"
FA_BAT_2 = "\uf242"
FA_BAT_3 = "\uf241"
FA_BAT_4 = "\uf240"

fulltext = ""
timeleft = ""
chargtxt = ""
form = ""

def percentColor(percent,percentLeft):
    if percent < 10:
        return "<span color='#FF0000'> " + percentLeft + "</span>"
    if percent < 20:
        return "<span color='#FF3300'>" + percentLeft + "</span>"
    if percent < 30:
        return "<span color='#FF6600'> " + percentLeft + "</span>"
    if percent < 40:
        return "<span color='#FF9900'> " + percentLeft + "</span>"
    if percent < 50:
        return "<span color='#FFCC00'> " + percentLeft + "</span>"
    if percent < 60:
        return "<span color='#FFFF00'> " + percentLeft + "</span>"
    if percent < 70:
        return "<span color='#FFFF33'> " + percentLeft +  "</span>" 
    if percent < 80:
        return "<span color='#FFFF66'> " + percentLeft + "</span>"
    if percent < 101:
        return "<span color='white'> "  + percentLeft + "</span>"
    return "FAIL"

if state == "Discharging":
    fulltext = "<span color='yellow'>{}</span>".format(FA_LIGHTNING)
    fulltext += percentColor(percentleft,percentLeft +  "%")
    time = commasplitstatus[-1].split()[0]
    time = ":".join(time.split(":")[0:2])
    timeleft = " ({})".format(time)
    form = " "
else:
    # fulltext += " " #+ FA_PLUG
    if (percentleft < 98 ): 
        chargtxt += " " + "<span color='yellow'>{}</span>".format(FA_PLUG)
        #chargtxt += " " + FA_PLUG

def icon(percent):
    if percent > 75:
        return FA_BAT_4
    if percent > 50:
        return FA_BAT_3
    if percent > 33:
        return FA_BAT_2
    if percent > 10:
        return FA_BAT_1
    return FA_BAT_0

def color(percent):
    if percent < 10:
        return "color='#FF0000'"
    if percent < 20:
        return "color='#FF3300'"
    if percent < 30:
        return "color='#FF6600'"
    if percent < 40:
        return "color='#FF9900'"
    if percent < 50:
        return "color='#FFCC00'"
    if percent < 60:
        return "color='#FFFF00'"
    if percent < 70:
        return "color='#FFFF33'"
    return "color='#FFFF66'"
#    return "#FFFFFF"

form +=  '<span {} font="FontAwesome">{}</span>'
fulltext += form.format(color(percentleft), icon(percentleft))
fulltext += timeleft
#tentar add a percentagem de forma bonita
#fulltext += form.format(color(percentleft),percentleft)
fulltext += chargtxt

if state == "Discharging":
    if percentleft < 10:
        os.system("notify-send --urgency=critical Bateria \"Estado critico de bateria\"")


print(fulltext)
