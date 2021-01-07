apk update
apk add nginx
apk add openrc
apk add vim
rm /etc/nginx/conf.d/default.conf
mv /default.conf /etc/nginx/conf.d/
mkdir -p /usr/share/webapps/
cd /usr/share
apk add phpmyadmin
apk add php7-fpm
chmod -R 777 /usr/share/webapps/
chmod -R 644 /usr/share/webapps/phpmyadmin/config.inc.php 
ln -s /usr/share/phpmyadmin/ /var/www/localhost/htdocs/phpmyadmin
mkdir /run/openrc/
touch /run/openrc/softlevel
rc-status
rc-service php-fpm7 start
rc-service nginx start
while true
do 
sleep 1;
done
