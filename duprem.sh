#!/bin/bash

touch pi.txt

while read line
do
    lola=`grep  -P "$line" pi.txt`
    if [  -z "$lola"  ]
    then
        echo "$line" >> pi.txt
    fi
done < ~/.bash_history

cp pi.txt ~/.bash_history
rm pi.txt
