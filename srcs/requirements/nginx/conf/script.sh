#!/bin/bash

#config SSL
# mkdir /etc/nginx/ssl
# openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/nginx/ssl/my_domain.pem -keyout /etc/nginx/ssl/my_domain.key -subj "/C=FR/ST=Paris/L=Paris/O=42Paris/OU=lpascrea/CN=my_domain"

service nginx start
bash