#!/bin/bash

# On définit le nomber aléatoire enter 1000 et 1
nombre=$((RANDOM % 1000 + 1))

# Tant que nombre différent de  choix alors on fait la vérification
while [ 1 -eq 1 ]; do

    # Récupération de la saisie
    echo -n "Votre nombre : "
    read choix

    # Si jamais le nombre est plus petit on l'affiche
    if [ $choix -gt $nombre ]; then
        echo "C'est plus petit que ça !"

    #Si jamais le nombre est plus grand on l'affiche
    elif [ $choix -lt $nombre ]; then
        echo "C'est plus grand que ça !"

    # Si jamais le nombre a été trouvé on l'affiche et on quitte la boucle
    else
        echo "Bravo, vous avez trouvé ! C'était bien $nombre"
        break
    fi
done
