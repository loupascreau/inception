FROM	debian:buster

ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG MYSQL_ROOT_PASSWORD

RUN apt-get update -y \
	&& apt-get upgrade -y \
	&& apt-get -y install mariadb-server mariadb-client \
    && mkdir /run/mysqld && chown mysql /run/mysqld \
    && mysql_install_db --user=mysql --datadir=/var/lib/mysql --auth-root-authentication-method=normal

COPY ./conf/my.cnf /etc/mysql/my.cnf

EXPOSE 3306

RUN mysqld -u mysql & \
    sleep 5 \ 
    && echo "CREATE DATABASE $MYSQL_DATABASE;" | mysql \
    && echo "GRANT ALL ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD' WITH GRANT OPTION;" | mysql \
    && echo "FLUSH PRIVILEGES;" | mysql \
    && echo "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('$MYSQL_ROOT_PASSWORD');" | mysql

CMD mysqld -u mysql