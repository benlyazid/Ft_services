apk add bash
mkdir /run/openrc
apk add influxdb
touch /run/openrc/softlevel
rc-status
service influxdb start
while true
do 
sleep 1;
done
