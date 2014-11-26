#!/usr/bin/env bash
#summation of five digit integers, input using command line argument

if ( [ $# -eq 0 ] || [ $# -gt 1 ]); then
	echo "Please enter a five digit integer"
elif ( [ `expr length $1` -gt 5 ] || [ `expr length $1` -lt 5 ] ); then
 	echo "Please enter a five digit integer"
elif (($1 > 0)); then
	sum=0
	m=$1
	#read -p "Enter a five : " yn
	k=$((m%10))
	m=$(($m/10))
	sum=$((sum+k))

	k=$((m%10))
	m=$(($m/10))
	sum=$((sum+k))

	k=$((m%10))
	m=$(($m/10))
	sum=$((sum+k))

	k=$((m%10))
	m=$(($m/10))
	sum=$((sum+k))

	k=$((m%10))
	m=$(($m/10))
	sum=$((sum+k))

	echo $sum
else
	echo "Please enter a five digit integer"
fi
