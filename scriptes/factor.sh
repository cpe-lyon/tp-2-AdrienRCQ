#!/bin/bash

# Verification si l'entrée est vide
if [ "$1" == "" ]; then
    echo Veuillez saisir un paramètre
    exit 1
fi

# On initialise le conteur à 1 et la factorielle à 1
count=$1
facto=1

# Tant que le compteur est plus grand que 0 on multiplie, factoriel par le compteur et on le décrémente
while [ $count -gt 0 ]
do
   facto=$(( $facto * $count ))
   count=$(( $count - 1 ))
done

# Afficher le résultat
echo $facto
