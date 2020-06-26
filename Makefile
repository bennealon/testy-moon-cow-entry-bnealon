build: ## Build the container
	docker build -t bcm-entry-bnealon-simple .

run: build
	docker run bcm-entry-bnealon-simple:latest
