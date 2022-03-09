FROM	debian:buster

RUN		apt-get -y update \
        && apt-get -y install \
		mariadb-server \
		mariadb-client \
		vim \
        && rm -rf /var/lib/apt/lists/*

COPY	./conf/my.cnf /etc/mysql/my.cnf
COPY	./tools/script.sh ./

RUN		chmod 755 /etc/mysql/my.cnf \
		&& chown -R mysql:mysql /var/lib/mysql \
		&& chmod -R 755 /var/lib/mysql

EXPOSE	3306

CMD		bash script.sh