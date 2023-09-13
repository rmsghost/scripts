#!/bin/bash
#Pegando memória RAM manualmente para ZABBIX
MEMRAMTOTAL=`cat /proc/meminfo | grep 'MemTotal' | awk '{print $2}'`
MEMRAMFREE=`cat /proc/meminfo | grep 'MemAvailable' | awk '{print $2}'`

#let RAMUSED=MEMRAMTOTAL-MEMRAMFREE
let RAM1=MEMRAMTOTAL
let RAM2=MEMRAMFREE
let RAMUSED=RAM1-RAM2

#echo $RAM1
#echo $RAM2
echo $RAMUSED

#let PERCENTUSED=RAMUSED*100/RAM1

#echo $PERCENTUSED
