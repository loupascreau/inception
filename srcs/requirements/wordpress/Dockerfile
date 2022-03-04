FROM    debian:buster

RUN     apt-get -y update \
        && apt-get -y install \
        php php-cli php-fpm php-json php-common php-mysql php-zip php-gd php-mbstring php-curl php-xml php-pear php-bcmath \
        vim \
        && rm -rf /var/lib/apt/lists/* \
        && mkdir -p /var/run/php

COPY    ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

EXPOSE  9000

CMD     php-fpm7.3 -F