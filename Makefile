build: ## Build the container
	docker build -t bcm-entry-bnealon-simple .

run: build
	docker run -p 3000:3000 -d bcm-entry-bnealon-simple:latest
