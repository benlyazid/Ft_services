apk add vim 
apk add vsftpd
adduser ftpsuser < ftps_user
chown root:root /home/ftpsuser/
mkdir /home/ftpsuser/files
chown ftpsuser:ftpsuser /home/ftpsuser/files
apk add openssl
mkdir /run/openrc
touch /run/openrc/softlevel


wget https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz
tar -zxvf telegraf-1.17.0_linux_amd64.tar.gz 
cp telegraf.conf telegraf-1.17.0/usr/bin/
apk add libc6-compat
rm etc/vsftpd/vsftpd.conf 
mv vsftpd.conf etc/vsftpd/
apk add openrc
apk add bash
rc-status
service vsftpd start

./telegraf-1.17.0/usr/bin/telegraf --config /telegraf-1.17.0/usr/bin/telegraf.conf 
while true
do 
sleep 1;
done