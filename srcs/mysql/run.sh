apk add bash
rc-status
touch /run/openrc/softlevel
/etc/init.d/mariadb setup
rc-service mariadb start
/bin/bash