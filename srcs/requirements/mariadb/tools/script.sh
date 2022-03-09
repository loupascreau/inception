#!/bin/bash

service mysql start

echo "CREATE DATABASE wordpress;" | mysql #-u root --skip-password
echo "GRANT ALL ON wordpress.* TO 'wp'@'localhost' IDENTIFIED BY 'wppassword' WITH GRANT OPTION;" | mysql #-u root --skip-password
# echo "GRANT ALL PRIVILEGES ON * . * TO 'wp'@'localhost';" | mysql #-u root --skip-password
# echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost' WITH GRANT OPTION;" | mysql #-u root --skip-password
# echo "UPDATE mysql.user SET plugin = 'mysql_native_password' WHERE User = 'root';" | mysql #-u root --skip-password
# echo "UPDATE mysql.user SET Password = PASSWORD('rootpassword') WHERE User = 'root';" | mysql #-u root --skip-password
echo "FLUSH PRIVILEGES;" | mysql #-u root --skip-password

service mysql stop

exec /usr/sbin/mysqld -u root