#!/bin/sh

# wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -O /usr/local/bin/wp
# chmod +x /usr/local/bin/wp

# wp cli update --yes

# wp core download --locale=fr_FR --path=/var/www/wordpress

wp config create --dbname=wordpress --dbuser=wp --dbpass=wppassword --dbhost=db:3306 --path="/var/www/wordpress" --allow-root

wp core install --url=lpascrea.42.fr --title=Inception --admin_user=master --admin_password=masterpassword --admin_email=master@test.fr --path="/var/www/wordpress" --allow-root

# wp rewrite flush

exec "$@"