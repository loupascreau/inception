FROM	debian:buster

ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG MYSQL_ROOT_PASSWORD

RUN apt-get update -y \
	&& apt-get upgrade -y \
	&& apt-get -y install mariadb-server mariadb-client \
    procps \
    && mkdir /run/mysqld && chown mysql /run/mysqld \
    && mysql_install_db --user=mysql --datadir=/var/lib/mysql --auth-root-authentication-method=normal

COPY ./conf/my.cnf /etc/mysql/my.cnf
COPY ./tools/script.sh ./script.sh

RUN chmod +x ./script.sh

EXPOSE 3306

CMD [ "./script.sh" ]