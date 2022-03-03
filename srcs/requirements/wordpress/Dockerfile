FROM    debian:buster

RUN     apt-get -y update \
        && apt-get -y install \
        php php-cli php-fpm php-json php-common php-mysql php-zip php-gd php-mbstring php-curl php-xml php-pear php-bcmath \
        vim \
        && rm -rf /var/lib/apt/lists/*

COPY    ./conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf

EXPOSE  9000

CMD     php-fpm7.4 -F