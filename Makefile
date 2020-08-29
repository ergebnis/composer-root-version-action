DOCKER_IMAGE:=ergebnis/composer-root-version-action

.PHONY: it
it: coding-standards docker ## Runs the coding-standards and docker targets

.PHONY: coding-standards
coding-standards: ## Lints YAML files with yamllint
	yamllint -c .yamllint.yaml --strict .

.PHONY: docker
docker: ## Builds, tags, and runs the Docker image
	docker build --tag ${DOCKER_IMAGE} .
	-docker run --interactive --rm --tty --workdir=/app --volume ${PWD}:/app ${DOCKER_IMAGE}:latest
	-docker run --interactive --rm --tty --workdir=/app --volume ${PWD}:/app ${DOCKER_IMAGE}:latest foo .build/composer-json/present/no
	docker run --interactive --rm --tty --workdir=/app --volume ${PWD}:/app ${DOCKER_IMAGE}:latest foo .build/composer-json/present/yes/branch-alias/defined/no
	docker run --interactive --rm --tty --workdir=/app --volume ${PWD}:/app ${DOCKER_IMAGE}:latest foo .build/composer-json/present/yes/branch-alias/defined/yes
	docker run --interactive --rm --tty --workdir=/app --volume ${PWD}:/app ${DOCKER_IMAGE}:latest bar .build/composer-json/present/yes/branch-alias/defined/yes

.PHONY: help
help: ## Displays this list of targets with descriptions
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}'
