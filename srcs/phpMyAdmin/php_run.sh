apk update
apk add nginx
apk add openrc
mkdir -p /usr/share/webapps/
cd /usr/share/webapps
wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz
tar zxvf phpMyAdmin-5.0.2-all-languages.tar.gz
apk add php7 php7-fpm php7-mysqli php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-phar php7-json php7-mbstring 
mv phpMyAdmin-5.0.2-all-languages phpmyadmin
chmod -R 777 /usr/share/webapps/
ln -s /usr/share/webapps/phpmyadmin/ /var/www/localhost/htdocs/phpmyadmin
mkdir /run/openrc/
touch /run/openrc/softlevel
rc-status
rc-service nginx restart
/bin/sh