#!bin/bash


while read -p "what file do you want to test?" filename
do 
	if [ ! -e $filename ]; then
		echo "The file does not exsit."
		continue
	fi

# Okay, the file exsits

ls -ld "$filename"
if [ -r $filename  ]; then
	echo "$filename is readable."
fi

if [ -w $filename ]; then
	echo "$filename is writable"
fi

if [ -x $filename ]; then
	echo "$filename is excutable"
fi
#
done
#
exit 0
