apk update
apk add nginx
apk add openrc
apk add php-session
apk add vim
rm /etc/nginx/conf.d/default.conf
mv /default.conf /etc/nginx/conf.d/
mkdir -p /usr/share/webapps/
cd /usr/share
wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz
tar zxvf phpMyAdmin-5.0.2-all-languages.tar.gz
apk add php7 php7-fpm php7-mysqli php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-phar php7-json php7-mbstring 
mv phpMyAdmin-5.0.2-all-languages phpmyadmin
chmod -R 777 /usr/share/webapps/
ln -s /usr/share/phpmyadmin/ /var/www/localhost/htdocs/phpmyadmin
mkdir /run/openrc/
touch /run/openrc/softlevel
rc-status
rc-service php-fpm7 start
rc-service nginx restart
/bin/sh