apk add vim 
apk add vsftpd
adduser ftpsuser
chown root:root /home/ftpsuser/
mkdir /home/ftpsuser/files
chown ftpsuser:ftpsuser /home/ftpsuser/files
apk add openssl
