#!/bin/bash
while true
do
echo ......
dumpsys media.audio_flinger > 1;
if [ -f 2 ]
then
diff -abdiw 1 2;
fi
sleep 1;
mv -f 1 2;
sleep 1;
done

