#!/bin/bash
monkeyFn=${1:-monkey_xxx.txt}

logcat -c;
rm 1;
logcat > 1;
echo ......

#user wait
while : 
do
stty -icanon min 0 time 10
echo -n "10 seconds wait..."
echo
read Arg
case $Arg in
y|Y|yes|Yes|YES)
break;;
n|N|No|NO)
exit;;
esac
done

#
logcat -c;
grep eventTime= 1 > $monkeyFn
