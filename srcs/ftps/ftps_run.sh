apk add vim 
apk add vsftpd
adduser ftpsuser < ftps_user
chown root:root /home/ftpsuser/
mkdir /home/ftpsuser/files
chown ftpsuser:ftpsuser /home/ftpsuser/files
apk add openssl
mkdir /run/openrc
touch /run/openrc/softlevel
echo 'seccomp_sandbox=NO' >> /etc/vsftpd/vsftpd.conf
apk add openrc
rc-status
service vsftpd start
while true
do 
sleep 1;
done