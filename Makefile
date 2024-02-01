.PHONY: license



build: ## Create a local Docker image
	@echo "Building Docker image..."
	docker build -t hello-universe-db .


start: build ## Start the Docker container
	@echo "Starting Docker container..."
	docker run -d -p 3306:3306 --name hello-universe-db hello-universe-db

license: ## Adds a license header to all files. Reference https://github.com/hashicorp/copywrite to learn more.
	@echo "Applying license headers..."
	 copywrite headers


