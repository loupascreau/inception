# FROM	debian:buster

# ARG MYSQL_DATABASE
# ARG MYSQL_USER
# ARG MYSQL_PASSWORD
# ARG MYSQL_ROOT_PASSWORD

# RUN apt-get update -y \
# 	&& apt-get upgrade -y \
# 	&& apt-get -y install mariadb-server mariadb-client

# RUN mkdir /run/mysqld && chown mysql /run/mysqld

# RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql --auth-root-authentication-method=normal

# COPY ./conf/my.cnf /etc/mysql/my.cnf

# EXPOSE 3306

# RUN mysqld -umysql \
# 	&& sleep 5 \
# 	&& echo "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE DEFAULT CHARACTER SET utf8_unicode_ci;" | mysql \
# 	&& echo "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" | mysql \
# 	&& echo "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%';" | mysql \
# 	&& echo "FLUSH PRIVILEGES;" | mysql \
# 	&& echo "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('$MYSQL_ROOT_PASSWORD');" | mysql

# CMD ["mysqld", "--user=mysql"]
#####
FROM alpine:3.13.2

ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG MYSQL_ROOT_PASSWORD

RUN apk update \
	&& apk add mariadb mariadb-client \
	&& mkdir /run/mysqld && chown mysql /run/mysqld \
	&& mysql_install_db --user=mysql --datadir=/var/lib/mysql --auth-root-authentication-method=normal

COPY ./conf/my.cnf /etc/my.cnf.d/mariadb-server.cnf

RUN mysqld -umysql &\
    sleep 5 && \ 
    echo "CREATE DATABASE $MYSQL_DATABASE;" | mysql &&\
    echo "CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" | mysql &&\
    echo "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%';" | mysql &&\
    echo "FLUSH PRIVILEGES;" | mysql &&\
    echo "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('$MYSQL_ROOT_PASSWORD');" | mysql
CMD ["mysqld", "--user=mysql"]

EXPOSE 3306
######
# FROM	debian:buster

# RUN		apt-get -y update \
#         && apt-get -y install \
# 		mariadb-server \
# 		mariadb-client \
# 		vim \
#         && rm -rf /var/lib/apt/lists/*

# COPY	./conf/my.cnf /etc/mysql/my.cnf
# COPY	./tools/script.sh ./

# RUN		chmod 755 /etc/mysql/my.cnf \
# 		&& chown -R mysql:mysql /var/lib/mysql \
# 		&& chmod -R 755 /var/lib/mysql

# EXPOSE	3306

# CMD		bash script.sh
#########
# ARG MYSQL_DATABASE
# ARG MYSQL_USER
# ARG MYSQL_PASSWORD
# ARG MYSQL_ROOT_PASSWORD

# RUN apt-get update -y \
# 	&& apt-get upgrade -y \
# 	&& apt-get -y install mariadb-server mariadb-client

# RUN mkdir /run/mysqld && chown mysql /run/mysqld

# RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql --auth-root-authentication-method=normal

# COPY ./conf/my.cnf /etc/mysql/my.cnf

# EXPOSE 3306

# RUN mysqld -umysql \
# 	&& sleep 5 \
# 	&& echo "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE DEFAULT CHARACTER SET utf8_unicode_ci;" | mysql \
# 	&& echo "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" | mysql \
# 	&& echo "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%';" | mysql \
# 	&& echo "FLUSH PRIVILEGES;" | mysql \
# 	&& echo "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('$MYSQL_ROOT_PASSWORD');" | mysql

# CMD ["mysqld", "--user=mysql"]