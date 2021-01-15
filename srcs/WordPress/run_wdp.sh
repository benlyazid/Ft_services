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
rc-service nginx restart
rc-service php7-fpm start
while true
do 
sleep 1;
done