COMPOSE ?= compose.yml

# DOCKER
docker.up:
	@docker compose -f $(COMPOSE) up -d $(filter-out $@,$(MAKECMDGOALS)) $(MAKEFLAGS)
docker.build:
	@docker compose -f $(COMPOSE) --build
docker.stop:
	@docker compose -f $(COMPOSE) stop
docker.down:
	@docker compose -f $(COMPOSE) down
docker.dry:
	@make docker.stop docker.down

%:
	@:
