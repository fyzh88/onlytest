#!/bin/bash

#user wait
while : 
do
stty -icanon min 0 time 10
echo -n "10 seconds wait...\\n"
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
