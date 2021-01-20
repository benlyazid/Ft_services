#!/bin/sh
mkdir /run/openrc
touch /run/openrc/softlevel
rc-status
apk add libc6-compat
while true
do 
sleep 1;
done