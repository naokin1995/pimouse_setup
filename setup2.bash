#!/bin/bash -xve
#Written by Naoki Miyai
exec 2> /tmp/setup.log

cd /home/ubuntu/git_clone/RaspberryPiMouse/src/drivers/
/sbin/insmod rtmouse.ko

sleep 1
chmod 666 /dev/rt*

echo 0 > /dev/rtmotoren0
