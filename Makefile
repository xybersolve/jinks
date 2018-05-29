.PHONY: machine build up down run stop clean ps ssh open tag login push pull help
#
# Manage xs-jenkins-blue
#
# TODO:
#
include env.mk
#include info.mk
#include check.mk

agent := unknown

machine: ## Debug: Show Hostname and IP Address
	@echo "HOST_NAME: $(HOST_NAME), HOST_IP: $(HOST_IP)"

build: ## Build entire stack
	@docker-compose -p $(PROJECT) build nginx

up: ## Run stack using 'up'
	@docker-compose -p $(PROJECT) up 

down: ## Bring stack down using 'down'
	@docker-compose -p $(PROJECT) down

run: ## Run stack using 'run'
	@docker-compose -p $(PROJECT) run -e HTTP_PORT=$(HTTP_PORT) master nginx

stop: ## Stop stack, using 'stop'
	@docker-compose -p $(PROJECT) stop || true

clean: stop ## Clean the entire stack, calls stop
	@docker-compose -p $(PROJECT) rm || true

ps: ## Run ps on docker-compose PROJECT
	@docker-compose -p $(PROJECT) ps

# make ssh cont=agent-nodejs
ssh: ## SSH into jenkins by name: make ssh cont=agent-nodejs
	@docker exec -it $(PROJECT)_$(cont)_1 /bin/bash

open: ## Open jenkins in browser on machine's IPs
	@open http://$(HOST_IP):$(HTTP_PORT)

help: ## This help display
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-12s\033[0m %s\n", $$1, $$2}'
