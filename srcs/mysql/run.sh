apk add bash
rc-status
rm /etc/my.cnf.d/mariadb-server.cnf
touch /run/openrc/softlevel
/etc/init.d/mariadb setup
mv /mariadb-server.cnf /etc/my.cnf.d/mariadb-server/
rc-service mariadb start
while true
do 
sleep 1;
done
