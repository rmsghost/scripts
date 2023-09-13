#!/bin/bash
#Pegando memória RAM manualmente para ZABBIX
MEMRAM=`cat /proc/meminfo | grep 'MemTotal' | awk '{print $2}'`

let RAMLIVRE=MEMRAM/1024/1000

echo $RAMLIVRE
