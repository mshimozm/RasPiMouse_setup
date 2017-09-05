#!/bin/bash -xve
     
exec 2> /tmp/setuptst.log
     
cd /home/ubuntu/RaspberryPiMouse/src/drivers/
/sbin/insmod rtmouse.ko
     
sleep 1                   # 待つ
chmod 666 /dev/rt*
     
echo 0 > /dev/rtmotoren0  # モーの電源OFF
