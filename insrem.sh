#!/bin/bash
​
# clear the message queue, then
# insert jiffles.ko into the kernel and remove it again, then
# display the messages as a result of doing so
​
sudo -p "osc"
sudo dmesg -c 
clear 
​
printf "beginning script...\n\n"
sudo insmod jiffies.ko

cat /proc/jiffies
sleep 5
cat /proc/jiffies
sleep 5

sudo rmmod jiffies
sudo dmesg 
printf "\n...end of script\n\n"