build:
	docker build -t example-app .

run: clean
	docker run -d -p 8080:1337 --name example-app example-app

run-readonly:
	docker run -d -p 8080:1337 --read-only --name example-app example-app

clean:
	@docker rm -f example-app 2> /dev/null || true

kill-all:
	docker rm -f $(shell docker ps -qa)
