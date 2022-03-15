FROM    debian:buster

RUN     apt-get -y update \
        && apt -y upgrade \
        && apt-get -y install \
        curl \
        php7.3-fpm php7.3-common php7.3-mysql php7.3-gmp php7.3-curl php7.3-intl php7.3-mbstring php7.3-xmlrpc php7.3-gd php7.3-xml php7.3-cli php7.3-zip php7.3-soap php7.3-imap \
        php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip mariadb-client \
        vim \
        wget \
        && rm -rf /var/lib/apt/lists/* \
        && mkdir -p /var/run/php \
        && mkdir -p /var/www/wordpress \
        && chown -R www-data:www-data /var/www/wordpress \
        && chmod -R 755 /var/www/wordpress
        
COPY    ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY    ./tools/setup.sh ./tmp

RUN     chmod +x ./tmp/setup.sh

EXPOSE  9000

RUN     wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -O /usr/local/bin/wp \
        && chmod +x /usr/local/bin/wp \
        && wp core download --locale=fr_FR --path=/var/www/wordpress --allow-root
RUN     wp config create --dbname=wordpress --dbuser=wp --dbpass=wppassword --dbhost="db:3306" --path="/var/www/wordpress" --allow-root
RUN     wp core install --url=lpascrea.42.fr --title=Inception --admin_user=master --admin_password=masterpassword --admin_email=master@test.fr --path="/var/www/wordpress" --allow-root

# ENTRYPOINT [ "sh", "./tmp/setup.sh" ]

CMD     php-fpm7.3 -F