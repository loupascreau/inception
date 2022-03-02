FROM	debian:buster

RUN		apt-get install -y software-properties-common dirmngr apt-transport-https \
 		&& apt-key adv --fetch-keys 'https://mariadb.org/mariadb_release_signing_key.asc' \
 		&& add-apt-repository 'deb [arch=amd64,arm64,ppc64el] https://mirrors.xtom.nl/mariadb/repo/10.7/debian buster main' \
		&& apt-get -y update \
        && apt-get -y install \
		mariadb-server mariadb-client \
		vim \
        && rm -rf /var/lib/apt/lists/*