#!/bin/bash

service mysql start

echo "CREATE DATABASE $MYSQL_DATABASE;" | mysql -u root --skip-password
echo "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'localhost' WITH GRANT OPTION;" | mysql -u root --skip-password
echo "UPDATE mysql.user SET plugin = 'mysql_native_password' WHERE User = '$MYSQL_USER';" | mysql -u root --skip-password
echo "UPDATE mysql.user SET Password = PASSWORD('$MYSQL_PASSWORD') WHERE User = '$MYSQL_USER';" | mysql -u root --skip-password
echo "FLUSH PRIVILEGES;" | mysql -u root --skip-password

mysqld