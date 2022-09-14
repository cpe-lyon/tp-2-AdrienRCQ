[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-c66648af7eb3fe8bc4f294546bfd86ef473780cde1dea487d3c4ff354943c9ae.svg)](https://classroom.github.com/online_ide?assignment_repo_id=8488231&assignment_repo_type=AssignmentRepo)
[TP2 :]{.ul}

# Table des matières {#table-des-matières .TOC-Heading}

[Exercice 1 : Variable d'environnement :
2](#exercice-1-variable-denvironnement)

[Exercice 2 : Contrôle de mot de passe :
3](#exercice-2-contrôle-de-mot-de-passe)

[Exercice 3 : Expressions rationnelles :
4](#exercice-3-expressions-rationnelles)

[Exercice 4 : Contrôle utilisateur :
5](#exercice-4-contrôle-utilisateur)

[Exercice 5 : Factorielle : 6](#exercice-5-factorielle)

[Exercice 6 : Le juste prix : 7](#exercice-6-le-juste-prix)

[Exercice 7 : Statistique : 8](#exercice-7-statistique)

[Documents de support : 10](#_Toc113983961)

[1) Opérateurs de comparaison de nombre avec la commande test ou les
crochets :
10](#opérateurs-de-comparaison-de-nombre-avec-la-commande-test-ou-les-crochets)

[2) Opérateur booléens de comparaison de nombres :
11](#opérateur-booléens-de-comparaison-de-nombres)

[3) Opérateurs de comparaison : 11](#opérateurs-de-comparaison)

[4) Variables prédéfinies : 12](#variables-prédéfinies)

[5) Exemple d'un boucle FOR : 12](#exemple-dun-boucle-for)

[6) Exemple d'une boucle WHILE : 13](#exemple-dune-boucle-while)

[7) Exemple d'une condition IF et ELSE :
13](#exemple-dune-condition-if-et-else)

# Exercice 1 : Variable d'environnement :

![](vertopal_d4badf5690024eee9384a735615ca074/media/image1.png){width="6.3in"
height="3.00625in"}

1)  Les commandes tapées par l'utilisateurs sont stockées sur :
    /home/myuser/.bash_history

2)  Il s'agit de la variable \$HOME .

3)  Voici le rôles des différentes variables:

-   \$LANG est la variable qui stocke la langue courante.

-   \$PWD est la variable qui contient le chemin courant.

-   \$OLDPWD l\'ancien chemin courant.

-   \$SHELL le chemin vers la commande shell.

-   \$\_. contient tous les noms de fichier absolu du shell ou du script
    qui a été exécuter.

4)  ![](vertopal_d4badf5690024eee9384a735615ca074/media/image2.png){width="3.125in"
    height="0.5694444444444444in"}

5)  Après avoir tapé la commande bash, la variable **MY_VAR** n\'existe
    plus. La commande bash permet de créer un fils au terminal, la
    variable locale n\'est donc pas transféré.

6)  **export MY_VAR=toto**. Après avoir tapé la commande **bash**,
    **printenv MY_VAR** renvoie bien *toto* car les variables
    d\'environnements sont bien transférées.

![](vertopal_d4badf5690024eee9384a735615ca074/media/image3.png){width="3.2504538495188102in"
height="0.9063768591426071in"}

7)  ![](vertopal_d4badf5690024eee9384a735615ca074/media/image4.png){width="3.9901399825021873in"
    height="0.552159886264217in"}

8)  ![](vertopal_d4badf5690024eee9384a735615ca074/media/image5.png){width="4.156829615048119in"
    height="0.3854702537182852in"}

9)  La commande **unset** détruit la variable alors au lieu de vider la
    variable.

10) ![](vertopal_d4badf5690024eee9384a735615ca074/media/image6.png){width="3.8963768591426073in"
    height="0.4271434820647419in"}

# Exercice 2 : Contrôle de mot de passe :

Avant de commencer nous allons ajouter le chemin vers script à notre
PATH de façon permanente :
![](vertopal_d4badf5690024eee9384a735615ca074/media/image7.png){width="5.875820209973753in"
height="0.5729965004374453in"}

Voici le script :

![Une image contenant texte Description générée
automatiquement](vertopal_d4badf5690024eee9384a735615ca074/media/image8.png){width="6.3in"
height="3.622916666666667in"}

Voici le résultat, avec le bon et avec le mauvais mot de passe :

![Une image contenant texte Description générée
automatiquement](vertopal_d4badf5690024eee9384a735615ca074/media/image9.png){width="5.180555555555555in"
height="1.8888888888888888in"}

# Exercice 3 : Expressions rationnelles :

Notre scripte doit vérifier si le nombre rentré en argument est un
nombre réel.

![Une image contenant texte, écran, capture d'écran Description générée
automatiquement](vertopal_d4badf5690024eee9384a735615ca074/media/image10.png){width="4.094320866141732in"
height="5.240314960629921in"}

Notre première condition (if) vérifie si l'argument rentré est bien vide
ou pas.

La fonction is_number permet de comparer l'argument rentré avec re, s'il
sont équivalent alors le nombre est réel(return1), sinon ce n'est pas un
nombre réel (return0).

Is_number \$1 permet de tester la fonction avec la variable \$1 (ici il
s'agit toujours de l'argument rentré).

On ajoute des indications visible sur le terminale pour que
l'utilisateur puisse avoir le résultat de la vérification.

Voici le résultat dans les deux cas possible :

![Une image contenant texte Description générée
automatiquement](vertopal_d4badf5690024eee9384a735615ca074/media/image11.png){width="2.448257874015748in"
height="1.7606627296587927in"}

# Exercice 4 : Contrôle utilisateur :

![Une image contenant texte Description générée
automatiquement](vertopal_d4badf5690024eee9384a735615ca074/media/image12.png){width="5.360243875765529in"
height="4.166666666666667in"}

Voici le résultat dans les deux cas possible :

![Une image contenant texte Description générée
automatiquement](vertopal_d4badf5690024eee9384a735615ca074/media/image13.png){width="2.7191294838145232in"
height="1.6564807524059493in"}

# Exercice 5 : Factorielle :

![Une image contenant texte Description générée
automatiquement](vertopal_d4badf5690024eee9384a735615ca074/media/image14.png){width="6.3in"
height="2.667361111111111in"}

Notre première condition (if) vérifie si l'argument rentré est bien vide
ou pas.

![Une image contenant texte Description générée
automatiquement](vertopal_d4badf5690024eee9384a735615ca074/media/image15.png){width="1.9481889763779527in"
height="0.8542858705161854in"}

# Exercice 6 : Le juste prix :

![Une image contenant texte Description générée
automatiquement](vertopal_d4badf5690024eee9384a735615ca074/media/image16.png){width="6.3in"
height="4.63125in"}

Voici le résultat avec les 3 cas possibles (petit/grand/OK) :

![Une image contenant texte Description générée
automatiquement](vertopal_d4badf5690024eee9384a735615ca074/media/image17.png){width="3.144183070866142in"
height="3.6995188101487315in"}

# Exercice 7 : Statistique :

[Partie 1 :]{.ul} ![Une image contenant texte Description générée
automatiquement](vertopal_d4badf5690024eee9384a735615ca074/media/image18.png){width="6.3in"
height="3.6458333333333335in"}

![Une image contenant texte Description générée
automatiquement](vertopal_d4badf5690024eee9384a735615ca074/media/image19.png){width="6.3in"
height="5.366666666666666in"}

[Partie2 :]{.ul}

Pour banaliser le nombre de paramètre a rentrer il suffit de supprimer
notre vérification sur le nombre de paramètre rentré :

![Une image contenant texte Description générée
automatiquement](vertopal_d4badf5690024eee9384a735615ca074/media/image20.png){width="6.3in"
height="3.716666666666667in"}

Partie 3 :

pp

[]{#_Toc113983961 .anchor}Documents de support :

Pour ce TP, j'ai utilisé des ressources pour comprendre et réutiliser
certaines commandes, boucles (for ou while), conditions(else, if) ou
variables.

## [1) Opérateurs de comparaison de nombre avec la commande test ou les crochets :]{.ul} 

![Une image contenant texte Description générée
automatiquement](vertopal_d4badf5690024eee9384a735615ca074/media/image21.png){width="5.461538713910761in"
height="2.6121708223972004in"}

## [2) Opérateur booléens de comparaison de nombres :]{.ul}

![](vertopal_d4badf5690024eee9384a735615ca074/media/image22.png){width="5.2307688101487315in"
height="2.758377077865267in"}

## [3) Opérateurs de comparaison :]{.ul}

![Une image contenant texte Description générée
automatiquement](vertopal_d4badf5690024eee9384a735615ca074/media/image23.png){width="5.830517279090114in"
height="4.1987182852143485in"}

## [4) Variables prédéfinies :]{.ul}

![Une image contenant texte Description générée
automatiquement](vertopal_d4badf5690024eee9384a735615ca074/media/image24.png){width="5.134615048118985in"
height="2.325632108486439in"}

## [5) Exemple d'un boucle FOR :]{.ul}

![Une image contenant texte Description générée
automatiquement](vertopal_d4badf5690024eee9384a735615ca074/media/image25.png){width="4.133333333333334in"
height="1.399646762904637in"}

-   **\#!/bin/bash** -- montre que le code est un script bash.

-   **i** -- est un caractère de remplacement pour une variable. En
    revanche, \$i est la valeur individuelle de la variable. Nous
    pouvons également l'écrire sous la forme c/\$c ou sous n'importe
    quel autre nom.

-   **in** -- sépare la variable et les éléments qui suivent.

-   **1 2 3 4 5** -- est un exemple d'éléments sur lesquels nous voulons
    exécuter l'instruction

-   **do** -- est le mot-clé qui déclenche les boucles. Il exécutera
    ensuite l'instruction n fois, n'étant le nombre total d'éléments.
    Ici, la valeur de n est de 5.

-   **echo "Hello: \$i"** -- est le code que nous allons répéter n fois.
    N'oublions pas que les guillemets transforment tout ce qui se trouve
    à l'intérieur en une variable.

-   **done** -- arrête la boucle.

## [6) Exemple d'une boucle WHILE :]{.ul}

![](vertopal_d4badf5690024eee9384a735615ca074/media/image26.png){width="2.4625in"
height="2.3777777777777778in"}

Ici, la condition représente l'état qui doit être vérifié à chaque fois
avant d'exécuter des commandes dans la boucle.

Si la condition est *vraie*, nous exécutons les instructions dans la
boucle.

Si la condition est *fausse*, nous sortons de la boucle. Les
instructions de command-1 à command-n sont des instructions exécutées
dans une boucle jusqu'à ce que la condition devienne fausse.

ATTENTION aux boucles infinies : Si la condition ne peut pas/plus
changer (ce qui permettrai en temps normale de passer à la suite) alors
a boucle se répète indéfiniment.

## [7) Exemple d'une condition IF et ELSE :]{.ul}

![](vertopal_d4badf5690024eee9384a735615ca074/media/image27.png){width="3.1in"
height="1.9097222222222223in"}

-   expression : est un ensemble d'une ou plusieurs conditions

-   command_list1 : est une liste de commandes exécutées si l'expression
    est *true*

-   command_list2 : liste des commandes exécutées si l'expression est
    *false*
