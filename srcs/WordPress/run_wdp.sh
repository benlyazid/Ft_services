mkdir /run/openrc
touch /run/openrc/softlevel
rc-status
rc-service nginx start
apk add php7-fpm
apk add vim
apk add php7-mysqli php7-pdo_mysql
apk add php-json
wget http://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz


rm /etc/nginx/conf.d/default.conf
mv /default.conf /etc/nginx/conf.d/
rm /wordpress/wp-config-sample.php
mv wp-config.php /wordpress/
rc-service nginx restart
rc-service php-fpm7 start

wget https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz
tar -zxvf telegraf-1.17.0_linux_amd64.tar.gz 
cp telegraf.conf telegraf-1.17.0/usr/bin/
apk add libc6-compat
./telegraf-1.17.0/usr/bin/telegraf --config /telegraf-1.17.0/usr/bin/telegraf.conf 

while true
do 
sleep 1;
done