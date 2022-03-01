# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lpascrea <lpascrea@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/02/23 13:58:09 by lpascrea          #+#    #+#              #
#    Updated: 2022/02/23 13:58:16 by lpascrea         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

DOCKER := docker
DOCKER_COMPOSE := docker-compose
DOCKER_COMPOSE_FILE := ./srcs/docker-compose.yml
CONTAINER_NAME := $(shell cat ./srcs/.env | grep CONTAINER_NAME | sed 's/CONTAINER_NAME//g' | sed 's/=//g' | sed 's/\"//g')
IP_ADDRESS := '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}'

build:
		@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) build $(c)

up:
		@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) up -d $(c)

start:
		@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) start $(c)

exec:
		@$(DOCKER) exec -it $(CONTAINER_NAME) bash

down:
		@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down $(c)

destroy:
		@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down -v $(c)

stop:
		@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) stop $(c)

restart:
		@make -s stop
		@make -s up

logs:
		@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) logs --tail=100 -f $(c)

ps:
		@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) ps

inspect:
		@$(DOCKER) inspect -f $(IP_ADDRESS) $(CONTAINER_NAME)

clean:
		@make -s destroy
		@$(DOCKER) system prune -a --force

.PHONY: build up start exec down destroy stop restart logs ps inspect clean