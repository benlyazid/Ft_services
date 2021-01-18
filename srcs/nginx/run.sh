#!/bin/sh
mkdir /run/openrc

touch /run/openrc/softlevel
rm /etc/nginx/conf.d/default.conf
mv /default.conf /etc/nginx/conf.d/
rc-status
#echo "daemon off;" >> /etc/nginx/nginx.conf
rc-service nginx start
while true
do 
sleep 1;
done
ls