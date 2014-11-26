#!/usr/bin/env bash
# Guessing number using binary search

# input format ./guess_game.sh 1 num2

n=$RANDOM
a=$((RANDOM%$1+1))
echo "Random number generated : $a"
start=1
end=$1
while [[ $end -ge $start ]]; do 
	k=$start
	l=$((end-start))/2
	mid=$((k+l))
	echo -e  "Computer's guess : $mid\n"
	if (($mid > $a)) 
	then
		echo -e "Go lower\n"
    	end=$((mid-1))
    elif (($mid < $a)) 
    then
    	echo -e "Go higher\n"
    	start=$((mid+1))
    else
    	echo "Correct Guess!"
    	break
    fi 
done
