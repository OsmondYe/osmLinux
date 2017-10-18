#! /bin/bash

# this file the common knowledge for bash script 

# special const builtin vars
echo $0		# cmd name
echo $1 	# cmd first param
echo $2
echo $3
echo $# 	# how many parms
echo $?		# last cmd's return val
echo $PPID	# parent pid
echo $RANDOM	# each use, will get a random


# define some vars
PWD=`pwd`
V_DATE=$(date)
echo `pwd`

# set value for var
V_var1=123    #  no space at left and right
V_var1=`date` ; V_var1=$(date)
echo -n "Enter your name:" ; read V_name ; echo "Hello, $V_name"



# use unset to del var
unset V_name  ; echo "after unset V_name, it value is:$V_name"


# simple 
echo "study shell" ; echo hello there   # use ;  to write multi cmd in one line


# refer the value of var, must use $
echo "PWD is: $PWD"
echo "V_DATE : $V_DATE"
echo &(date) #  $( or `` called command substitution
echo `cat wcCon`
echo `who`
#exit 







