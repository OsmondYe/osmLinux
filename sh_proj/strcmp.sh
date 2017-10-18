#!/bin/bash

# how many params out form command line
echo "$# params from command line"

if [[ $# != 2  ]];then
	echo "Usage: cmd s1 s2"
	exit -1;
fi



echo $0
echo $1
echo $2





if [[ $1 = $2 ]]; then
	echo "$1 is the same as $2"
fi










