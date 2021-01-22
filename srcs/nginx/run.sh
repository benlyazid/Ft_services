#!/bin/sh
mkdir /run/openrc
apk add openssh
adduser admin < user_file
ssh-keygen -A
touch /run/openrc/softlevel
rm /etc/nginx/conf.d/default.conf
mv /default.conf /etc/nginx/conf.d/
wget https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz
tar -zxvf telegraf-1.17.0_linux_amd64.tar.gz 
rc-status
rc-service nginx start
service sshd start

while true
do 
sleep 1;
done