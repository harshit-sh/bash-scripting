#!/usr/bin/env bash

# Give file path as command line argument

if [ $# -eq 0 ]; then
	echo "Please enter a file path"
else
	var=$(ls -l $1 | cut -d' ' -f1)
	string2=${var:1:9}
	owner=${string2:0:3}
	group=${string2:3:3}
	others=${string2:6:3}

	echo "       READ   WRITE   EXECUTE"
	foo=$owner
	a1=${foo:0:1}
	if [[ $a1 == "r" ]];then
 		a1="X"
	else
 		a1=" "
	fi
	a2=${foo:1:1}
	if [[ $a2 == "w" ]];then
 		a2="X"
	else
 		a2=" "
	fi
	a3=${foo:2:1}
	if [[ $a3 == "x" ]];then
 		a3="X"
	else
 		a3=" "
	fi

	echo "OWNER    $a1       $a2       $a3"

	foo=$group
	a1=${foo:0:1}
	if [[ $a1 == "r" ]];then
 		a1="X"
	else
 		a1=" "
	fi
	a2=${foo:1:1}
	if [[ $a2 == "w" ]];then
 		a2="X"
	else
 		a2=" "
	fi
	a3=${foo:2:1}
	if [[ $a3 == "x" ]];then
 		a3="X"
	else
 		a3=" "
	fi

	echo "GROUP    $a1       $a2       $a3"

	foo=$others
	a1=${foo:0:1}
	if [[ $a1 == "r" ]];then
 		a1="X"
	else
 		a1=" "
	fi
	a2=${foo:1:1}
	if [[ $a2 == "w" ]];then
 		a2="X"
	else
 		a2=" "
	fi
	a3=${foo:2:1}
	if [[ $a3 == "x" ]];then
 		a3="X"
	else
 		a3=" "
	fi

	echo "OTHERS   $a1       $a2       $a3"
fi