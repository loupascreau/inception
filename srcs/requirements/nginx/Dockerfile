FROM    debian:buster

RUN     apt-get -y update \
        && apt-get -y install \
	nginx \
        openssl \
        vim \
        && rm -rf /var/lib/apt/lists/*

COPY    ./conf/nginx.conf /etc/nginx/
COPY    ./conf/default /etc/nginx/sites-available/default

RUN     mkdir /etc/nginx/ssl \
        && openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/nginx/ssl/my_domain.crt -keyout /etc/nginx/ssl/my_domain.key -subj "/C=FR/ST=Paris/L=Paris/O=42Paris/OU=lpascrea/CN=my_domain"
        # && openssl dhparam -out /etc/nginx/ssl/dhparam.pem 2048

RUN     ln -s /dev/stdout > /var/log/nginx/access.log \
        && ln -s /dev/stderr > /var/log/nginx/error_log

RUN     chown -R www-data /var/www/* \
        && chmod -R 755 /var/www/*

CMD     ["nginx", "-g", "daemon off;"]