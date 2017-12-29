#! /bin/bash
COUNT=0;
for var in for test i don\'t know if "this'l"l work
do
	echo -e "$COUNT:\t $var"
	COUNT=$[ $COUNT + 1 ]
done

list="china japan america europe english german franch russia"
list=${list}" singapore"


for var in ${list}
do
	echo $var
done

file="f.txt"


oleIFS=$IFS

IFS=$'\n':

for city in `cat $file`
do
	echo $city
done


IFS=$oldIFS


for file in /etc/*
do
#	echo file:$file
	if [ -d "$file" ];then
	echo $file is a dir
	elif [ -f "$file" ];then
	echo $file is a file
	fi
done


# use c-style for statement
for (( a = 1; a < 10 ; a ++ ))
do
	echo $a
done


# use wile 
var1=10
while echo before 
	 [ $var1 -gt 0 ]
do
	echo $var1
	var1=$[ $var1 -1  ]
done


# see /etc/passwd

IFS.OLD=$IFS
IFS=$'\n'
for entry in `cat /etc/passwd`
do 
	echo "Value in $entry -"
	IFS=:
	for value in $entry
	do 
		echo "   $value"
	done
done

cat /etc/passwd
