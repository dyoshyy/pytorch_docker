.PHONY: help
.DEFAULT_GOAL := help

run: ## Run Python Script
	@poetry run python src/main.py

attach: ## Attach to container
	@docker exec -it pytorch-docker bash -c "cd /workspaces/pytorch_docker && bash"

help: ## Show help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
