#!/bin/bash
am start -n com.android.phone/com.android.phone.DialMainActivity --es tag 0;
needPhoneOn = 0

for para in $@
do
case $para in
-o)
needPhoneOn=1
;;
*)
esac
done

for index in `seq 10000`
do

monkey -f monkey_10086 -v 1;
if [ needPhoneOn -eq 0 ]
then
monkey -f monkey_bt_call -v 1;
else
monkey -f monkey_bt_call_phone_on -v 1;
fi

done
