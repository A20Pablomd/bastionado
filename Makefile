.PHONY: build up down clean

build:
	docker compose build

up:
	docker compose up -d

down:
	docker compose down

remove:	down
	docker rmi bastionado-cluster
	docker rmi bastionado-haproxy
	docker rmi bastionado-prometheus
	docker rmi bastionado-alertmanager
	docker rmi bastionado-grafana
