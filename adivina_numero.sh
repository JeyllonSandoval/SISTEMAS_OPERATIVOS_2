#!/usr/bin/env bash
numero=$(( $RANDOM % 100 + 1))
adivinado=false
intentos=0

echo "Adivina el numero entre 1 y 100!"
while ! $adivinado; do
    read -p "Ingresa tu numero: " respuesta
    ((intentos++))
    if ((respuesta == numero)); then
    echo "Felicidades, adiviniste en $intentos intentos"
    adivinado=true
    break
    elif ((respuesta < numero));then
        echo "Pista, es mayor a $respuesta"
    else
        echo "Pista, es menor a $respuesta"
    fi
done
