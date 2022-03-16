#!/bin/sh

rm -rf /var/www/wordpress/wp-config-sample.php /var/www/wordpress/wp-config.php

wp config create --dbname=$MYSQL_DATABASE --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=$DB_HOST --path="/var/www/wordpress" --allow-root --skip-check

# wp core install --url=$DOMAIN_NAME --title=$TITLE --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_USER@test.fr --path="/var/www/wordpress" --allow-root

wp user create $USER $USER@student.42.fr --role='author'

# exec "$@"

exec php-fpm7.3 -F