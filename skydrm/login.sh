#!/bin/bash


email=osmond.ye@nextlabs.com
pass=123blue!

echo "Begin to Test RMS Rest API"
echo "---For Login---:"
echo $email
echo $pass

# get the md5(pass)
passmd5ed=`echo -n $pass | md5sum -t | cut -d ' ' -f1`

echo $passmd5ed

# call RMS login  with curl

url=https://rmtest.nextlabs.solutions/rms/rs/usr


loginJsonStr=`cat input.json`

echo $loginJsonStr

echo "long in param substitute"

loginJsonStr=`sed "s/<EMAIL>/${email}/ ; s/<PASS>/$passmd5ed/" input.json`
loginJsonStr="{\"email\":osmond.ye@123.com, \"password\":123blue!,\"rememberMe\":true}"

loginJsonStr="email=henry.hu%40nextlabs.com&password=C9808CFE7A98ACF1088E791B41BDAEED"

echo $loginJsonStr

echo =======
echo Begin
echo =======

#
#  we can compostie curl and xmllint together
#
#curl $url > rt-login.txt
#xmllint --html  rt-login.txt
curl -v -X POST --data "$loginJsonStr" $url --trace 



#curl -Lv --trace-ascii -d "$loginJsonStr" $url | xmllint --html -


