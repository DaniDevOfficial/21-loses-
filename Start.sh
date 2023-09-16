#!/bin/bash 
echo  "Regeln:"
echo  "Dies ist ein Zählspiel, wobei derjenige verliert, der die Verlierzahl sagen muss "
echo  "Mann kann die Zahl um die Vorherige bestimmte Anzahl erhöhen."
echo  "______________________________________________________________________________________________"
echo  "Es gibt insgesamnt 3 modis, welche man spielen kann"

echo "Beim ersten Modus spielt man gegen einen Bot, welcher einfach random ausgaben macht."
echo "Diesen Bot kann man starten indem man unten: 'Random' eingibt."
echo ""
echo "Beim zweiten Modus spielt man gegen einen Bot der immer perfekt spielt und man nicht besiegen kann."
echo "Diesen Modus kann man spielen, wenn man unten :'Verlieren' eingibt."
echo ""
echo "Beim letzten Modus spieltst du gegen einen freund und machst ein eins gegen eins."
echo "Um diesen Modus zu spielen mussman unten: '1gegen1' eingeben."
echo  "______________________________________________________________________________________________"
echo -n "Was wilst du Spielen? (Random, Verlieren oder 1gegen1)
Eingabe: "
read Modus
#Falls Der Modus Random gewählt wird
if [[ "$Modus" = "Random" ]]
then
    clear
    ./20gewinnt_random.sh

#Falls Der Modus Verliern gewählt wird
elif [[ "$Modus" = "Verlieren" ]];
then
    clear
    ./20gewinnt_winBot.sh

#Falls Der Modus 1gegen1 gewählt wird
elif [[ "$Modus" = "1gegen1" ]]
then
    clear
    ./20gewinnt_2player.sh

else 
#falls keine gültige Eingabe getätigt wurde
echo "Das ist keine Richtige eingabe. Das Script ist nun beendet."
fi