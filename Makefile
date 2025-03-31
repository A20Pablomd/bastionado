.PHONY: build up down clean

build:
	docker compose build

up:
	docker compose up -d

down:
	docker compose down

remove:
	docker compose down
	docker rmi bastionado-haproxy
	docker rmi alpine-cluster

clean: down
	docker system prune -af --volumes

test:
	@echo "Testeando servidores..."
	@for ip in 101 102 103 104; do \
		echo "TEST Servidor 172.100.0.$$ip:"; \
		curl -s http://172.100.0.$$ip; \
		echo "\n"; \
	done
