#!/bin/bash
#Bestimmt die Spielregeln

echo  "Bestimmt bitte zuerst untereinander wer Spieler 1 und wer Spieler 2 ist."
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
#Checkt, dass die Erhöhungszahl nicht unter null ist und  nicht über gleich der Verlierzahö
while [[ $uppernumber -lt 1 || $uppernumber -gt $losenumber ]]
 do
    echo "Die erhöhende Zahl muss mindestens 1 und darf nicht über/gleich $losenumber sein."
    echo -n "Bitte eine neue erhöhungs Zahl eingeben: "
    read uppernumber
 done
 echo "______________________________________________________________________________________"


#Beginn des Spieles
echo "Spieler 1 beginnt"
for((i=0;$i < $losenumber; i=$player2num)); do
    echo $i
    player1sum=$((i+1))
    player1max=$((i+uppernumber))
    echo -n "Spieler 1 gib eine Zahl von $player1sum bis $player1max: "
    read player1num
    #Wir ausgeführt, falls die eingegebene Zahl nicht erlaubt ist
    while [[ $player1num -lt $player1sum || $player1num -gt $player1max ]]
    do
        echo "Spieler 1 deine Zahl darf nicht unter $player1sum und nicht über $player1max sein!"
        echo -n "Bitte eine Neue Zahl eingeben: "
        read player1num
    done
    #wir ausgeführ falls Spieler 1 eine Zahl eingibt, welche grösser gleich die Verliezahl ist
    if [[ $player1num -ge $losenumber ]]
    then
        echo "Spieler 2 hat gewonnen."
        exit
    fi

    player2sum=$((player1num+1))
    player2max=$((player1num+uppernumber))
    echo "p1 $playe1max"
    echo "p2 max $player2max"
    echo -n "Spieler 2 gib eine Zahl von $player2sum bis $player2max ein:"
    read player2num

        #Wir ausgeführt, falls die eingegebene Zahl nicht erlaubt ist
    while [[ $player2num -lt $player2sum || $player2num -gt $player2max ]]
    do
        echo "Spieler 2 deine Zahl darf nicht unter $player2sum und nicht über $player2max sein!"
        echo -n "Bitte eine neue Zahl eingeben: "
        read player2num
    done
    #wir ausgeführ falls Spieler 2 eine Zahl eingibt, welche grösser gleich die Verliezahl ist

    if [[ $player2num -ge $losenumber ]]
    then
        echo "Spieler 1 hat gewonnen."
        exit
    fi


 done