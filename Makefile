# A Self-Documenting Makefile: http://marmelab.com/blog/2016/02/29/auto-documented-makefile.html

.PHONY: install
install: ## Install dependencies and setup .env file
	@echo ⬇️ Download project dependencies
	go mod download

.PHONY: run
run: ## Run tests in watch mode
	ginkgo watch kata

.PHONY: run-once
run-once: ## Run tests once in verbose mode
	ginkgo -v kata

# Self-Documenting part
.PHONY: help
.DEFAULT_GOAL := help
help:
	@grep -h -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "-> \033[36m%-20s\033[0m %s\n", $$1, $$2}'
