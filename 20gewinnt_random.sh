#!/bin/bash
# David Bischof date
# Lässt das Spiel 20gewinnt mit einem random bot abspielen  
# ohne parameter
#-----------------------------------
#Bestimmt die Spielregeln
echo  "Du wirst gegen einen Bot spielen, welcher ohne Strategie und nur random Zahlen ausgibt."
#Bestimmt die beiden Zahlen
echo -n "Bitte Verlierzahl eingeben: "
read losenumber
#Checkt, dass die Verlierezahl nicht unter Null ist
while [[ $losenumber -le 0 ]]
 do
    echo  "Die Verliererzahl darf nicht unter Null liegen."
    echo -n "Bitte eine neue Verlierezahl eingeben: "
    read losenumber
 done
echo -n "Bitte erhöhende Zahl eingeben: "
read uppernumber
#Checkt, dass die Erhöhungszahl nicht unter null ist und  nicht über gleich der Verlierzahl ist

while [[ $uppernumber -lt 1 || $uppernumber -gt $losenumber ]] 
    do
    echo "Die erhöhende Zahl muss mindestens 1 und darf nicht über/gleich $losenumber sein."
    echo -n "Bitte eine neue erhöhungs Zahl eingeben: "
    read uppernumber
 done
 echo "_____________________________________________________________________________"
#Beginn des Spieles
echo "Spieler 1 beginnt"
for(( i = 0;$i < $losenumber; i=$bot2insert )); do
    echo $
    player1min=$((i+1))
    player1max=$((i+uppernumber))
    echo -n "Spieler 1 gib eine Zahl von $player1min bis $player1max: "
    read player1num

        #Wir ausgeführt, falls die eingegebene Zahl nicht erlaubt ist
    while [[ $player1num -lt $player1min || $player1num -gt $player1max ]]
     do
        echo "Spieler 1 deine Zahl darf nicht unter $player1min und nicht über $player1max sein!"
        echo -n "Bitte eine Neue Zahl eingeben: "
        read player1num
    done


    #Wird ausgefürh falls der Bot gewonnen hat
    if [[ $player1num -ge $losenumber ]]
        then
        echo "Der Bot hat gewonnen."
        exit
    fi
    #Der Code vom Bot
    bot2insert=$((1 + $RANDOM % uppernumber + player1num ))

    echo  "Der Computer sagt die Nummer " $bot2insert
    #Wird ausgefürh falls der Spieler gewonnen hat
    if [[ $bot2insert -ge $losenumber ]]
        then
        echo "Du hast gewonnen."
        fi
 done