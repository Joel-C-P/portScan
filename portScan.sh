#!/bin/bash


#Funcion para poder salir de la ejecucion con CTRL+C
function ctrl_c(){

  echo -e "\n\nGetting out...\n"
  tput cnorm; exit 1

}

pon_tu_ip="127.0.0.1"
trap ctrl_c INT

tput civis

for port in $(seq 1 65535); do
  (echo "" >/dev/tcp/$pon_tu_ip/$port) 2>/dev/null && echo "[+] EL puerto $port esta abierto" &
done; wait

tput cnorm
