FROM alpine:3.14

RUN apk update

COPY conf/nginx.conf /etc/nginx/
COPY conf/default /etc/nginx/conf.d/

CMD [ "nginx", "-g", "'daemon off;'" ]