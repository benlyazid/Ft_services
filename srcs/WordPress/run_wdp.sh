mkdir /run/openrc
touch /run/openrc/softlevel
rc-status
rc-service nginx start
wget http://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
while true
do 
sleep 1;
done