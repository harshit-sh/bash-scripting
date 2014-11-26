#!/usr/bin/env bash
# Printing single digit integer in words, input using command line 

num=$1
declare -A numarray

numarray[0]="Zero"
numarray[1]="One"
numarray[2]="Two"
numarray[3]="Three"
numarray[4]="Four"
numarray[5]="Five"
numarray[6]="Six"
numarray[7]="Seven"
numarray[8]="Eight"
numarray[9]="Nine"

if ( [ $# -eq 0 ] || [ $num -gt 9 ] )
then
	echo "Please enter a single digit number"
else
	echo ${numarray[$num]}
fi