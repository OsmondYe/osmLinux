# !/bin/bash

# for funtion test

mytest=( one two three four )
echo $mytest
echo ${mytest[1]}
echo ${mytest[*]}
mytest[0]=1111
echo ${mytest[*]}
unset mytest[1]

echo ${mytest[*]}

function func1 {
#	use local as the var define in func1
	local fv1=$#
	if [ $fv1 -gt 0 ]
	then
		param=1;
		while [ $param -le $fv1 ]
		do
			echo -e param\[$param\]:$($param)
			param=$[ $param + 1 ]
		done 
	fi	
	echo parems:$fv1
	echo this is in func1
# no error occured
	return 0
}



func1 10 "this is good"
# $? as return value
echo "returen value is $?"

func1
v1=`func1`
echo v1:$v1


