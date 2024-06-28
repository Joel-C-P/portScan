#!/bin/bash


#Funcion para poder salir de la ejecucion con CTRL+C
function ctrl_c(){
  echo -e "\n\nGetting out...\n"
  exit 1

}


trap ctrl_c INT

sleep 10
