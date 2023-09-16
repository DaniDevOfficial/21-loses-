#!/bin/bash
# 20 gewinnt spiel für die 5im21a
# 2022-10-28


#Bestimmt die Spielregeln

echo  "Dieser Bot spielt mit der perfekten Strategie."
#Bestimmt die beiden Zahlen
echo -n "Bitte Verlierzahl eingeben: "
read losenumber
#Checkt, dass die Verlierezahl nicht unter Null ist.
while [[ $losenumber -le 0 ]]
do
    echo  "Die Verliererzahl darf nicht unter Null liegen."
    echo -n "Bitte eine neue Verlierezahl eingeben: "
    read losenumber
done

#nimmt die Erhöhungszahl
echo -n "Bitte erhöhende Zahl eingeben: "
read uppernumber
#Checkt ob die Erhöhungszahl unter der Verlierzahl und über Null ist.
while [[ $uppernumber -le 0 || $losenumber -le $uppernumber ]]
do
    echo "Die erhöhende Zahl muss mindestens 1 sein und weniger als $losenumber."
    echo -n "Bitte eine neue erhöhungs Zahl eingeben: "
    read uppernumber
done

#Erstellt die Variabeln, sodass der Computer nicht verliert
truewin=$((losenumber-1))
trueupper=$((uppernumber+1))
echo "_________________________________________________________"
#Das Spiel
start=$((truewin%trueupper))
if [[ $start -ne 0 ]]
then
    echo "Der Computer beginnt"
fi
for((i=$start;$i<=$truewin;i+=$trueupper)); do
    #Ist gezwungen, sodass der BBot immer gewinnen kann
    if [[ $i -eq 0  ]]
    then
        echo -n "Du beginnst. Wähle eine Zahl von 1 bis $uppernumber: "
        read playernumber
    else
        echo "Der Computer sagt die Nummer $i"
        echo -n "Was ist deine Zahl? Maximal plus $uppernumber:"
        read playernumber

    #Wir ausgeführt, falls die eingegebene Zahl nicht erlaubt ist
    while [[ $playernumber -gt $uppernumber+$i || $playernumber -le $i ]]
    do
        maxupper=$((uppernumber+i))
        echo "Hey die Zahl darf nicht kleiner/gleich $i sein oder grösser als $maxupper sein! (Maximal + $uppernumber)"
        echo -n "Bitte eine richtige Zahl eingeben: "
        read playernumber
    done
    #wird ausgefürht sobald der bot gewinnt, was er immer tut.
    if [[ $i+1 -eq $losenumber  ]]
    then
        echo "Der Computer hat gewonnen. Was ein Wunder"
        exit
    fi
    fi
done

