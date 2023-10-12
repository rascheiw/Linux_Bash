#!/bin/bash
echo "$(date)" >> ~/exam_SCHEIWILLER/exam_bash/sales.txt

for x in 'rtx3060' 'rtx3070' 'rtx3080' 'rtx3090' 'rx6700'
do
curl "http://0.0.0.0:5000/$x" -o ~/exam_SCHEIWILLER/exam_bash/request
count=`cat ~/exam_SCHEIWILLER/exam_bash/request`
echo "$x: $count" >> ~/exam_SCHEIWILLER/exam_bash/sales.txt
done



# Le script fonctionne bien mais je n arrive pas à supprimer le rapport de curl de la sortie standard.
# 127.0.0.1 - - [09/Oct/2023 10:40:01] GET /rx6700 HTTP/1.1 200 -
#J ai essaye le mode silencieux avec l'option -s
#J ai egalement essayé de remplacer l'option -o par > (même 1>) pour rediriger la sortie mais rien ni fait
