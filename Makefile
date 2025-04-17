.PHONY: build up down clean

build:
	docker compose build

up:
	docker compose up -d

down:
	docker compose down

remove:	down
	docker rmi bastionado-haproxy
	docker rmi alpine-cluster
	docker rmi bastionado-prometheus
	docker rmi bastionado-alertmanager

test:
	@echo "Testeando servidores..."
	@for ip in 101 102 103 104; do \
		echo "TEST Servidor 172.100.0.$$ip:"; \
		curl -s http://172.100.0.$$ip; \
		echo "\n"; \
	done
