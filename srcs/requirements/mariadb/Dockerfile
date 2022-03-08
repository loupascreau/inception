FROM	debian:buster

RUN		apt-get -y update \
		# && apt-get install -y apt-utils \
		# software-properties-common dirmngr apt-transport-https \
 		# && apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8 \
 		# && add-apt-repository 'deb [arch=amd64,arm64,ppc64el] http://mirrors.accretive-networks.net/mariadb/repo/10.3/ubuntu bionic main' \
		# && apt-get -y update \
        && apt-get -y install \
		mariadb-server \
		vim \
        && rm -rf /var/lib/apt/lists/*

EXPOSE	3306

COPY	./conf/my.cnf /etc/mysql/my.cnf
COPY	./tools/script.sh ./

CMD		bash script.sh