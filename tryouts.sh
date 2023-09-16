#!/bin/bash
for((i=1;i<=10;i++)); do 
    echo $i
done


if [[ 1 -ge 1 ]] 
then
    echo "kek"
fi

i=13

while [[ $i -ge 3 ]] 
do
    echo 123
    i=$((i-123))
done 

echo $?

echo --------------------
for((i=1;i<10;i++)); do
    random=$((1+ $RANDOM % 5 ))
    echo $random
    done
