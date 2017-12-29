#! /bin/bash
# - this first line is required, #! as a cmd to specify which shell will interpret this script


# - in order to run this script, it required X( executable ) permisson


echo "This is the first 001 basic sh-scripti"

OLD_PATH=$PATH

echo "$OLD_PATH"
echo -n "current date is: " ; date


# - bash common enviroment values
echo ">>>>>> begin bash common environment values"
# -- for user
echo User:$USER
echo Uid:$UID
echo LogName:$LOGNAME
echo Home:$HOME
echo HostName:$HOSTNAME
echo HostType:$HOSTTYPE
echo MachineType:$MACHTYPE
# -- for language
echo Lang:$LANG
echo language:$LANGUAGE
# -- for pwd  (print working dir)
echo pwd:$PWD
echo old_pwd:$OLDPWD
# -- for shell
echo IFS:$IFS
echo path:$PATH
echo shell:$SHELL
echo shell_level:$SHLVL
echo JAVA_HOME:$JAVA_HOME
echo ps1:$PS1
echo PS2:$PS2
echo ps4:$PS4
echo "_:$_"
# -< end for bash common enviroment values



# - for user Defined variables
# syntax: alpha  number _ 
#		less than 20, and case-sensitive
var1=10
# no space in var and = value    var1=value  (must no any space)
var2=100
var3="this is a test for that test"
echo $var3
var4=$var3
echo $var4
function printVar {
	echo "$1:$2"
}

printVar var1 $var1
printVar var2 $var2
printVar var3 "$var3"
printVar var4 "$var4"

# -- for cmd substitution,  `` and $()
var5=`date`
printVar var5 "$var5"
var6=$(who)
printVar var6 "$var6"

# -- cmd sub, practise, cals today
today=`date +%y%m%d`
echo $today

# - to operate number
# -- expr
var7=$(expr 8 \* 8)
echo $var7
echo $(expr 1 + 5)
# -- $[ ]
var8=$[ 10 * 10 ]
echo $var8
echo $[ 100 * 100 - ( $var7 + 1 )  ]





















