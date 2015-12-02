#!/bin/bash
needS1=0
needS2=0
needS3=0
needm12=0
needm13=0
needm23=0

for para in $@
do
case $para in
-s1)
needS1=1
;;
-s2)
needS2=1
;;
-s3)
needS3=1
;;
-m12)
needm12=1
;;
-m13)
needm13=1
;;
-m23)
needm23=1
;;
*)
esac
done

am start -n com.android.phone/com.android.phone.DialMainActivity --es tag 1;

for index in `seq 10000`
do
if [ $needS1 -eq 1 ]
then
monkey -f monkey_s_1_con -v 1;
fi

if [ $needS2 -eq 1 ]
then
monkey -f monkey_s_2_con -v 1;
fi

if [ $needS3 -eq 1 ]
then
monkey -f monkey_s_3_con -v 1;
fi

if [ $needm12 -eq 1 ]
then
monkey -f monkey_m_1_2_con -v 1;
fi

if [ $needm13 -eq 1 ]
then 
monkey -f monkey_m_1_3_con -v 1;
fi

if [ $needm23 -eq 1 ]
then
monkey -f monkey_m_2_3_con -v 1;
fi

done
