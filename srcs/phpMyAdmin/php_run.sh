
rm /etc/nginx/conf.d/default.conf
mv /default.conf /etc/nginx/conf.d/
mkdir -p /usr/share/webapps/
cd /usr/share
chmod -R 777 /usr/share/webapps/
chmod -R 644 /usr/share/webapps/phpmyadmin/config.inc.php 
ln -s /usr/share/webapps/phpmyadmin/ /var/www/localhost/htdocs/phpmyadmin

rm /usr/share/webapps/phpmyadmin/config.inc.php
mv /config.inc.php /usr/share/webapps/phpmyadmin
mkdir /run/openrc/
touch /run/openrc/softlevel
rc-status
rc-service php-fpm7 start
rc-service nginx start

wget https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz
tar -zxvf telegraf-1.17.0_linux_amd64.tar.gz 
cp telegraf.conf telegraf-1.17.0/usr/bin/
apk add libc6-compat
./telegraf-1.17.0/usr/bin/telegraf --config /telegraf-1.17.0/usr/bin/telegraf.conf 

while true
do 
sleep 1;
done
