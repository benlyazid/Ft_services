#!/bin/sh
mkdir /run/openrc
touch /run/openrc/softlevel
rc-status
apk add libc6-compat
wget https://dl.grafana.com/oss/release/grafana-7.3.7.linux-amd64.tar.gz
tar -zxvf grafana-7.3.7.linux-amd64.tar.gz 
cd grafana-7.3.7/bin/
./grafana-server
while true
do 
sleep 1;
done