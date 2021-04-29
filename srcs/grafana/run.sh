#!/bin/sh
mkdir /run/openrc
touch /run/openrc/softlevel
rc-status
apk add libc6-compat
apk add bash
wget https://dl.grafana.com/oss/release/grafana-7.3.7.linux-amd64.tar.gz
tar -zxvf grafana-7.3.7.linux-amd64.tar.gz 


wget https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz
tar -zxvf telegraf-1.17.0_linux_amd64.tar.gz 
cp telegraf.conf telegraf-1.17.0/usr/bin/
apk add libc6-compat


mkdir grafana-7.3.7/data
mv /grafana.db /grafana-7.3.7/data/
cd grafana-7.3.7/bin/
./grafana-server & /telegraf-1.17.0/usr/bin/telegraf --config /telegraf-1.17.0/usr/bin/telegraf.conf 

while true
do 
sleep 1;
done
