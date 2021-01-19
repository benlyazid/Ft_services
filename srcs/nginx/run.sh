#!/bin/sh
mkdir /run/openrc
apk add openssh
adduser admin < user_file
ssh-keygen -A
touch /run/openrc/softlevel
rm /etc/nginx/conf.d/default.conf
mv /default.conf /etc/nginx/conf.d/
rc-status
rc-service nginx start
service sshd start

while true
do 
sleep 1;
done
ls