#!/bin/bash
# Author: PGX
# LAST UPDATE: 2015/07/08
# PGX CentOS apache php mysql(mariadb) Script.


yum update -y
yum install httpd php php-mysql phpMyAdmin mariadb-server -y 

if [ -e /etc/php.ini ]; then
    sed -i 's/.*date.timezone =.*/date.timezone = Asia\/Taipei/'
fi

service mariadb start
read -s "Please input MariaDB root password: " MYSQLROOTPASSWORD
mysqladmin -u root password $MYSQLROOTPASSWORD

firewall-cmd --zone=public --add-port=80/tcp --permanent
firewall-cmd --reload

