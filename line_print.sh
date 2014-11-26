#!/usr/bin/env bash
# print filenames in /etc with extension .conf with num of lines > 50

for i in `ls /etc/*.conf`; do
	a="$(sudo cat $i | wc -l)"
	if [ $a -gt 50 ]
	then
		echo "$i" | cut -c 6-
	fi
done