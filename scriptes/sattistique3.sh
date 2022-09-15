#!/bin/bash

function is_number() {
    re='^[+-]?[0-9]+([.][0-9]+)?$'
    if ! [[ $1 =~ $re ]]; then
        return 1
    else
        return 0
    fi
}

#on déclare notre tableau qui va stocker les chiffres/nombres que nousn allons rentrer
declare -a array

#la boule while demande en boucle de rentrer un argument pour l'ajouter au tableau 
while [ 1 -eq 1 ]; do

    echo "Veuillez rentrer un chiffre/nombre ( tappez ko si vous avez fini): "
    read toto

#si on tappe ko on arrête la boucle while pour passer à la suite
    if [ $toto == "ko" ]; then
        break
    fi

    is_number $toto
    if [ $? == "1" ]; then
        echo " $? n'est pas correcte"
        break
    else
        #on ajoute le dernier argument au tableau
        array+=($toto)
    fi

done

#On affiche le tableau avec les valeurs rentrées
echo ${array[@]}

min=0
max=0
moyenne=0
i=1


#pour var compris dans notre tableau de valeur
for var in "${array[@]}"; do
    is_number $var
    # Test si jamais c'est bien un nombre
    if [ $? == "1" ]; then
        echo $var "n'est pas correcte"
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
