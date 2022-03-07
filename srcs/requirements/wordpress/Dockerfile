FROM    debian:buster

RUN     apt-get -y update \
        && apt-get -y install \
        php-fpm php-mysql php-gd\
        vim \
        && rm -rf /var/lib/apt/lists/* \
        && mkdir -p /var/run/php

COPY    ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

EXPOSE  9000

# RUN     chown -R www-data /var/www/* \
#         && chmod -R 755 /var/www/*

CMD     php-fpm7.3 -F