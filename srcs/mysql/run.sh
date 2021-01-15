apk add bash
rc-status
rm /etc/my.cnf.d/mariadb-server.cnf
touch /run/openrc/softlevel
/etc/init.d/mariadb setup
mv /mariadb-server.cnf /etc/my.cnf.d/mariadb-server/
rc-service mariadb start
mysql --user=root </user.sql
mysql -uroot phpmyadmin < /phpmyadmin.sql
mysql -uroot phpmyadmin < /wordpress.sql

while true
do 
sleep 1;
done
