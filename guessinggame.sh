#!/bin/bash
#guessinggame.sh - devinez le nombre de fichiers du repertoire actuel
#Fonction : compte les fichiers du repertoire actuel
count_files(){
ls -1 | wc -l | tr -d ''
}

is_number(){
[[ $1 =~ ^[0-9]+$ ]]
}
nb_files=$(count_files)
guess=-1
echo "bienvenue dans le jeu de devinettes"
echo "combien de fichiers y a t-il dans le repertoire actuel"
while [[ $guess -ne $nb_files ]]
do 
read -p "entrez votre estimation:" reponse
if ! is_number "$reponse"
then
echo "veuillez entrer un nombre entier positif"
elif [[ $reponse -lt $nb_files ]]
then
echo "trop bas! essayez encore"
elif [[ $reponse -gt $nb_files ]]
then
echo "trophaut ! essaez encore"
else 
guess=$response
echo "felicitation ! il ya bien $nb_files fichiers"
fi
done

