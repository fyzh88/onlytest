#!/bin/bash
cnt=${1:-10000}
am start -n com.android.phone/com.android.phone.DialMainActivity --es tag 0;
for index in `seq $cnt`
do
monkey -f monkey_10086 -v 1;
monkey -f monkey_bt_call -v 1;
done
