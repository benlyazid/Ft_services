apk add bash
rc-status
rm /etc/my.cnf.d/mariadb-server.cnf
touch /run/openrc/softlevel
/etc/init.d/mariadb setup
mv /mariadb-server.cnf /etc/my.cnf.d/mariadb-server/
rc-service mariadb start
mysql --user=root </user.sql
mysql -uroot wordpress < /wordpress.sql
mysql -uroot phpmyadmin < /phpmyadmin.sql

wget https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz
tar -zxvf telegraf-1.17.0_linux_amd64.tar.gz 
cp telegraf.conf telegraf-1.17.0/usr/bin/
apk add libc6-compat
./telegraf-1.17.0/usr/bin/telegraf --config /telegraf-1.17.0/usr/bin/telegraf.conf 

while true
do 
sleep 1;
done
