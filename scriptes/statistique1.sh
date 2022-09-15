#!/bin/bash

# test si jamais il y a 3 arguments
if [ $# -ne 3 ]; then
# $# = nombre de paramètre de ligne de commande on été transmis au script
    echo "attention! 3 arguments sont requis"
    exit 1
fi


#function de test
function is_number() {
    re='^[+-]?[0-9]+([.][0-9]+)?$'
    if ! [[ $1 =~ $re ]]; then
        return 1
    else
        return 0
    fi
}

min=0
max=0
moyenne=0
i=1

for var in "$@"; do
    is_number $var
    # Test si jamais c'est bien un nombre
    if [ $? == "1" ]; then
        echo $var "n'est pas un nombre"
        exit 1

    else
    # Si i=1 alors var = max,min et moyenne car c'est le premier paramètre
        if [ $i -eq 1 ]; then
            min=$var
            max=$var
            moyenne=$((moyenne + $var))
        else
    # Si i n est pas 1 alors on vérifie si var actuel est plus petit que min, si c est le cas alors var=min
            if [ $var -lt $min ]; then
                min=$var
    # Si i n est pas 1 alors on vérifie si var actuel est plus grand que max, si c est le cas alors var = max
            elif [ $var -gt $max ]; then
                max=$var
            fi
    # On le rajoute à la moyenne pour la calculer après
            moyenne=$((moyenne + $var))
        fi

    fi
    i=$((i + 1))
done
#fin de notre boucle for avec le done

# Calcul de la moyenne
i=$((i - 1))
moyenne=$((moyenne / $i))

# Affichage
echo min : $min
echo max : $max
echo moyenne : $moyenne
