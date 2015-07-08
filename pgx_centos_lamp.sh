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
read -p "Please input MariaDB root password: " MYSQLROOTPASSWORD
mysqladmin -u root password $MYSQLROOTPASSWORD

