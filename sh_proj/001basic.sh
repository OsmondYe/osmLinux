#! /bin/bash
# - this first line is required, #! as a cmd to specify which shell will interpret this script


# - in order to run this script, it required X( executable ) permisson
NODEREPO="node_8.x"

echo "This is the first 001 basic sh-scripti"

OLD_PATH=$PATH

echo "$OLD_PATH"
echo -n "current date is: " ; date


print_status() {
echo 
echo "## $1"
echo
}


print_status "Osmond 001 for test"


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


DISTRO=$(lsb_release -c -s)

print_status $DISTRO

check_alt() {
    if [ "X${DISTRO}" == "X${2}" ]; then
        echo
        echo "## You seem to be using ${1} version ${DISTRO}."
        echo "## This maps to ${3} \"${4}\"... Adjusting for you..."
        DISTRO="${4}"
    fi
}

check_alt "Kali"          "sana"     "Debian" "jessie"
check_alt "Kali"          "kali-rolling" "Debian" "jessie"
check_alt "Sparky Linux"  "Nibiru"   "Debian" "buster"
check_alt "MX Linux 17"   "Horizon"  "Debian" "stretch"
check_alt "Linux Mint"    "maya"     "Ubuntu" "precise"
check_alt "Linux Mint"    "qiana"    "Ubuntu" "trusty"
check_alt "Linux Mint"    "rafaela"  "Ubuntu" "trusty"
check_alt "Linux Mint"    "rebecca"  "Ubuntu" "trusty"
check_alt "Linux Mint"    "rosa"     "Ubuntu" "trusty"
check_alt "Linux Mint"    "sarah"    "Ubuntu" "xenial"
check_alt "Linux Mint"    "serena"   "Ubuntu" "xenial"
check_alt "Linux Mint"    "sonya"    "Ubuntu" "xenial"
check_alt "Linux Mint"    "sylvia"   "Ubuntu" "xenial"
check_alt "LMDE"          "betsy"    "Debian" "jessie"
check_alt "elementaryOS"  "luna"     "Ubuntu" "precise"
check_alt "elementaryOS"  "freya"    "Ubuntu" "trusty"
check_alt "elementaryOS"  "loki"     "Ubuntu" "xenial"
check_alt "Trisquel"      "toutatis" "Ubuntu" "precise"
check_alt "Trisquel"      "belenos"  "Ubuntu" "trusty"
check_alt "Trisquel"      "flidas"   "Ubuntu" "xenial"
check_alt "BOSS"          "anokha"   "Debian" "wheezy"
check_alt "bunsenlabs"    "bunsen-hydrogen" "Debian" "jessie"
check_alt "bunsenlabs"    "helium"   "Debian" "stretch"
check_alt "Tanglu"        "chromodoris" "Debian" "jessie"
check_alt "PureOS"        "green"    "Debian" "sid"
check_alt "Devuan"        "jessie"   "Debian" "jessie"
check_alt "Devuan"        "ascii"    "Debian" "stretch"
check_alt "Devuan"        "ceres"    "Debian" "sid"
check_alt "Deepin"        "panda"    "Debian" "sid"
check_alt "Pardus"        "onyedi"   "Debian" "stretch"

print_status 'https://deb.nodesource.com/${NODEREPO}/dists/${DISTRO}/Release'

print_status "https://deb.nodesource.com/${NODEREPO}/dists/${DISTRO}/Release"

if [ "X${DISTRO}" == "Xdebian" ]; then
  print_status "Unknown Debian-based distribution, checking /etc/debian_version..."
  NEWDISTRO=$([ -e /etc/debian_version ] && cut -d/ -f1 < /etc/debian_version)
  if [ "X${NEWDISTRO}" == "X" ]; then
    print_status "Could not determine distribution from /etc/debian_version..."
  else
    DISTRO=$NEWDISTRO
    print_status "Found \"${DISTRO}\" in /etc/debian_version..."
  fi
fi

print_status "Confirming \"${DISTRO}\" is supported..."
















