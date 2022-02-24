FROM debian:buster

RUN apt-get update \
    && apt-get install nginx -yq \
    && apt-get install openssl -yq

COPY ./conf/server-conf /etc/nginx/sites-available/default

CMD [ "nginx", "-g", "daemon off;" ]