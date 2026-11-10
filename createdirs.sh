#!/bin/bash

#creates dirs from N to N+10

#to delete use
#rmdir {1..10

echo "сколько  папкок надо создать?"
read cur
echo "с какой папки начать?"
read tt

while [[ "$tt" -le "$cur" ]];
do
    if [[ -e "$tt" ]]
    then
	 echo File $tt is already exists
	tt=$(( tt+1 ))
	 continue
    fi
	mkdir "$tt"
	tt=$(( tt+1))
done
