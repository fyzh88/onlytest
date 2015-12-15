#!/bin/bash
counter=0
while true
do
counter=$[counter+1]
echo This is $counter deamon.
dumpsys audio > 1;
if [ -f 2 ]
then
diff -abdiw 1 2;
fi
mv -f 1 2;
sleep 2;
done

