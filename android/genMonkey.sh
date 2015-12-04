#!/bin/bash
fn=$1
cnt=$(wc -l $fn|cut -d " " -f 1)
isRight=$[cnt%2]
if [ $isRight -eq 1 ]
then
exit 1
fi



echo "# Start of Script"
echo "type= user"
echo "count= 49"
echo "speed= 1.0"
echo "start data >>"

if [ -f $fn ]
then

counter=1
cat $fn | while read line
do
isOdd=$[counter%2]
if [ $isOdd -eq 1 ]
then

startTime=$(echo $line | cut -d "=" -f 2 | cut -d "," -f 1)

else

endTime=$(echo $line | cut -d "=" -f 2 | cut -d "," -f 1)

dur=$[(endTime-startTime)/1000000]
#echo $dur

ptx=$(echo $line|cut -d "," -f 2 | cut -d "=" -f 2 | cut -d "." -f 1)
#echo $ptx

pty=$(echo $line|cut -d "," -f 3 | cut -d "=" -f 2 | cut -d "." -f 1)
#echo $pty
echo "Tap($ptx,$pty,100)"
echo "UserWait($dur)"
fi


counter=$[counter+1]

done 
fi


