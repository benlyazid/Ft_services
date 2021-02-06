apk add bash
mkdir /run/openrc
apk add influxdb
touch /run/openrc/softlevel
rc-status
service influxdb start

wget https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz
tar -zxvf telegraf-1.17.0_linux_amd64.tar.gz 
cp telegraf.conf telegraf-1.17.0/usr/bin/
apk add libc6-compat
./telegraf-1.17.0/usr/bin/telegraf --config /telegraf-1.17.0/usr/bin/telegraf.conf 

while true
do 
sleep 1;
done
