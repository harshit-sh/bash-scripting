#!/usr/bin/env bash
# printing home directory of users, input using command line argument

var=$1
if [ $# -eq 0 ]
then
	echo "Enter valid username"
elif [ -z `grep $var /etc/passwd | cut -d':' -f6 --output-delimiter=':'` ];
then
	echo "No user with username $var found"
else
	grep $var /etc/passwd | cut -d':' -f6 --output-delimiter=':'
fi
