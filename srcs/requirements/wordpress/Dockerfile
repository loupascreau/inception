FROM    debian:buster

RUN     apt-get -y update \
        && apt -y upgrade \
        && apt-get -y install \
        curl \
        php-curl php-mbstring php-xml php-zip php-mysqli \
        php7.3-fpm php7.3-common php7.3-mysql php7.3-mysqli php7.3-curl php7.3-mbstring php7.3-cli \
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
        && chmod +x /usr/local/bin/wp
        # && wp core download --locale=fr_FR --path=/var/www/wordpress --allow-root

CMD     [ "sh", "./tmp/setup.sh" ]