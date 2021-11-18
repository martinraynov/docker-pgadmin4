M = $(shell printf "\033[34;1m▶\033[0m")

.PHONY: help
help: ## Prints this help message
	@grep -E '^[a-zA-Z_-]+:.?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

######################
### MAIN FUNCTIONS ###
######################

.PHONY: pgadmin_start
pgadmin_start: ## Start the pgadmin4 docker container
	$(info $(M) Starting an instance of pgadmin4)
	@docker stack rm pgadmin4
	@docker stack deploy -c ./docker/docker-compose-swarm.yml pgadmin4

.PHONY: pgadmin_stop
pgadmin_stop: ## Stopping running pgadmin4 instances
	$(info $(M) Stopping pgadmin4 instance)
	@docker stack rm pgadmin4

.DEFAULT_GOAL := help