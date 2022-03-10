# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lpascrea <lpascrea@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/02/23 13:58:09 by lpascrea          #+#    #+#              #
#    Updated: 2022/03/10 04:55:42 by lpascrea         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

DOCKER := docker
DOCKER_COMPOSE := docker-compose
DOCKER_COMPOSE_FILE := ./srcs/docker-compose.yml
CONTAINER_NAME_NGINX := $(shell cat ./srcs/.env | grep CONTAINER_NAME_NGINX | sed 's/CONTAINER_NAME_NGINX//g' | sed 's/=//g' | sed 's/\"//g')
CONTAINER_NAME_WORDPRESS := $(shell cat ./srcs/.env | grep CONTAINER_NAME_WORDPRESS | sed 's/CONTAINER_NAME_WORDPRESS//g' | sed 's/=//g' | sed 's/\"//g')
CONTAINER_NAME_MARIADB := $(shell cat ./srcs/.env | grep CONTAINER_NAME_MARIADB | sed 's/CONTAINER_NAME_MARIADB//g' | sed 's/=//g' | sed 's/\"//g')
IP_ADDRESS := '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}'

build:
		@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) build $(c)

up:
		@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) up -d $(c)

start:
		@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) start $(c)

down:
		@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down $(c)

destroy:
		@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down -v $(c)

stop:
		@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) stop $(c)

restart:
		@make -s stop
		@make -s up

ps:
		@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) ps

network_ls:
		@$(DOCKER) network ls

inspect_nginx:
		@$(DOCKER) inspect -f $(IP_ADDRESS) $(CONTAINER_NAME_NGINX)

exec_nginx:
		@$(DOCKER) exec -it $(CONTAINER_NAME_NGINX) bash

inspect_wordpress:
		@$(DOCKER) inspect -f $(IP_ADDRESS) $(CONTAINER_NAME_WORDPRESS)

exec_wordpress:
		@$(DOCKER) exec -it $(CONTAINER_NAME_WORDPRESS) bash

inspect_mariadb:
		@$(DOCKER) inspect -f $(IP_ADDRESS) $(CONTAINER_NAME_MARIADB)

exec_mariadb:
		@$(DOCKER) exec -it $(CONTAINER_NAME_MARIADB) bash

clean:
		@make -s destroy
		@sudo rm -rf /home/${USER}/data/mariadb/*
		@$(DOCKER) system prune -a --force

.PHONY: build up start down destroy stop restart ps network_ls inspect_nginx exec_nginx \
		inspect_wordpress exec_wordpress inspect_mariadb exec_mariadb clean