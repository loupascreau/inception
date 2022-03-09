FROM    debian:buster

RUN     apt-get -y update \
        && apt-get -y install \
        curl \
        php php-mysql php-fpm php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip \
        dumb-init \
        vim \
        && rm -rf /var/lib/apt/lists/* \
        && mkdir -p /var/run/php

COPY    ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

EXPOSE  9000

# RUN     mkdir -p /var/www/wordpress \
#         && chown -R www-data /var/www/wordpress \
#         && chmod -R 755 /var/www/wordpress

CMD     php-fpm7.3 -F