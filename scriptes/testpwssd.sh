#!/bin/bash

#mot de passe valide
mdp='benoit123'

#entrer le mot de passe
echo -n "mot de passe : "
read -s mdpchoix

#faire la comparaison entre le mdp de base et celui choisie
if [ "$mdpchoix" = "$mdp" ]; then
        echo "c'est le bon mot de passe"
else
        echo "c'est pas bon!"
fi
