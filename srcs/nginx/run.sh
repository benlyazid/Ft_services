#!/bin/sh
mkdir /run/openrc
touch /run/openrc/softlevel
rc-status
echo "daemon off;" >> /etc/nginx/nginx.conf
rc-service nginx start
#/bin/sh