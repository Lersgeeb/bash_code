#!/bin/bash

hora_inicio=`date "+%Y-%m-%d %H:%M%S"`
echo ${hora_inicio}

#Diario
if [ "$1" == "D" ]; then
    fecha_actual=`date +%Y-%m-%d`
    fecha_anterior=${fecha_actual}" 00:00:00"
    fecha_actual=${fecha_actual}" 23:59:59"
    echo ${fecha_anterior}
    echo ${fecha_actual}
fi

#Primera Quincena
if [ "$1" == "P" ]; then
    fecha_actual=`date +%Y-%m-%d`
    mes=$(date -d "$fecha_actual" '+%m')
    anio=$(date -d "$fecha_actual" '+%Y')
    fecha_anterior="${anio}-${mes}-01 00:00:00"
    fecha_actual="${anio}-${mes}-16 00:00:00"
    echo ${fecha_anterior}
    echo ${fecha_actual}
fi

#Segunda Quincena
if [ "$1" == "Q" ]; then
    fecha_actual=`date +%Y-%m-%d`
    mes_anterior=$(date -d "$fecha_actual" '+%m')
    mes_actual=$(date --date='+1 month' '+%m')
    anio=$(date -d "$fecha_actual" '+%Y')
    fecha_anterior="${anio}-${mes_anterior}-16 00:00:00"
    fecha_actual="${anio}-${mes_actual}-01 00:00:00"
    echo ${fecha_anterior}
    echo ${fecha_actual}
fi

#Segunda Quincena V2
if [ "$1" == "Q2" ]; then
    fecha=`date --date='-1 month'`
    mes_anterior=$(date -d "$fecha" '+%m')
    anio=$(date -d "$fecha" '+%Y')
    fecha_anterior="${anio}-${mes_anterior}-16 00:00:00"
    
    fecha_actual=`date +%Y-%m-%d`
    mes_actual=$(date -d "$fecha_actual" '+%m')
    fecha_actual="${anio}-${mes_actual}-01 00:00:00"
    echo ${fecha_anterior}
    echo ${fecha_actual}
fi

#Mes
if [ "$1" == "M" ]; then
    fecha_actual=`date +%Y-%m-%d`
    mes_anterior=$(date -d "$fecha_actual" '+%m')
    mes_actual=$(date --date='+1 month' '+%m')
    anio=$(date -d "$fecha_actual" '+%Y')
    fecha_anterior="${anio}-${mes_anterior}-01 00:00:00"
    fecha_actual="${anio}-${mes_actual}-01 00:00:00"
    echo ${fecha_anterior}
    echo ${fecha_actual}
fi

#Trimestral
if [ "$1" == "T" ]; then
    fecha_actual=`date +%Y-%m-%d`
    mes_anterior=$(date -d "$fecha_actual" '+%m')
    mes_actual=$(date --date='+3 month' '+%m')
    anio=$(date -d "$fecha_actual" '+%Y')
    fecha_anterior="${anio}-${mes_anterior}-01 00:00:00"
    fecha_actual="${anio}-${mes_actual}-01 00:00:00"
    echo ${fecha_anterior}
    echo ${fecha_actual}
fi


exit 0
