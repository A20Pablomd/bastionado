.PHONY: build up down clean

build:
	docker compose build

up:
	docker compose up -d

down:
	docker compose down

clean: down
	docker system prune -af --volumes

test:
	@echo "Testeando servidores..."
	@for ip in 101 102 103 104; do \
		echo "Servidor 172.17.0.$$ip:"; \
		curl -s http://172.17.0.$$ip; \
	done
