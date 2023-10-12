#!/bin/bash

echo "1. Affichez le nombre d'attributs par document ainsi que l'attribut name. Combien y a-t-il d'attribut par document ? N'affichez que les 12 premières lignes avec la commande head (notebook #2)."
cat people.json | jq '.[] | length' | tail -n 1 && cat people.json | jq .[].name | head -n 12
echo "Commande : cat people.json | jq '.[] | length | tail n 1' && cat people.json | jq .[].name"
echo "Réponse : réponse de la question 1 si demandé"
echo -e "\nIl y a 17 attributs par documents\n"

echo "2. Combien y a-t-il de valeur "unknown" pour l'attribut "birth_year" ? Utilisez la commande tail afin d'isoler la réponse."
cat people.json | jq 'group_by(.birth_year)[] | {birth_year: .[0].birth_year, count: length}' | tail -n 3
echo "Commande : cat people.json | jq 'group_by(.birth_year)[] |{birth_year: .[0].birth_year, count: length}' | tail -n 3"
echo "Réponse : réponse de la question n si demandé"
echo -e "\nIl y a 42 valeurs unknow\n"

echo "3. Affichez la date de création de chaque personnage et son nom. La date de création doit être de cette forme : l'année, le mois et le jour. N'affichez que les 10 premières lignes. (Pas de Réponse attendue)"
cat people.json | jq '.[] | {created, name}' | head -n 10
echo "Commande : cat people.json | jq '.[] | {created, name}' | head -n 10"
echo -e "Je n'arrive pas à formater la date correctement en enlevant tout ce qui se trouve après le T"

echo "4. Certains personnages sont nés en même temps. Retrouvez toutes les pairs d'ids (2 ids) des personnages nés en même temps."
cat people.json | jq 'group_by(.birth_year)[] |{birth_year: .[0].birth_year, count: length} | .count = 2'
echo "Commande : cat people.json | jq 'group_by(.birth_year)[] |{birth_year: .[0].birth_year, count: length} | .count = 2'"
echo "Réponse : réponse de la question n si demandé"
echo -e "\nMa réponse st incomplète je n'ai pas réussi à filter les ids dont en fonction de la sortie de la requète et ma commande .count=2 n'est pas tout à fait bonne car ca me retourne tous les count dans lequel on retourve la valeur 2, par exemeple 42 pour unkonw\n"

echo "5. Renvoyez le numéro du premier film (de la liste) dans lequel chaque personnage a été vu suivi du nom du personnage. N'affichez que les 10 premières lignes. (Pas de Réponse attendue)"

echo "Commande : <commande pour répondre>"
echo "Réponse : Pas réussi"
