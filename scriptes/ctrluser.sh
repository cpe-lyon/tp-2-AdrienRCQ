#!/bin/bash

#Vérification si la chaine est vide
if [ "$1" == "" ]; then
    echo Utilisation : $0 nom_utilisateur
#$0 est la variable bash = nom du fichier
    exit 1
fi


# Vérification que l'utilisateur existe via compgen
if compgen -u | grep -q -w $1 ; then
    echo "L'utilisateur existe"
    exit 0

else
    echo "L'utilisateur n'existe pas"
    exit 1
fi
