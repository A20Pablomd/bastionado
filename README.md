# BASTIONADO DE HAPROXY

Este proxecto para a clase de bastionado está pensado para amosar diferetentes tecnoloxías usadas neste escenario. 
Neste proxecto centrámonos en HAProxy, un balanceador de carga e proxy inverso gratuito e de código aberto, e veremos tanto diferentes formas de securizalo coma características e funcionalidades do mesmo.

A parte do HAProxy vamos a ter unha mini rede de monitoreo onde teremos un Prometheus (xunto con un alertmangaer e un Grafana) para poder comprobar diferentes estadísticas do HAProxy e sacar algunha alerta.
O Grafana e o alertmanager non os vamos a ver moito en profundidae, simplemente nomealos e ensinar como funcionan.

O proxecto ten un arquivo pdf de documentación que explica mais a fondo todo isto.

## COMO LEVANTAR O ESCENARIO
Este escenario usa docker-compose e Dockerfiles manexados por un Makefile. Os comandos son os seguintes:

Make buil -> Crea os contedores.
Make up -> levanta os contedores.
Make down -> baixa e borra os contedores e networks.
Make remove -> fai un Make down e tamén borra as imaxes creadas.

## ESTRUCTURA DOS FICHEIROS

bastionado/
├── Documentacion.pdf  
├── Makefile  
├── docker-compose.yml  
├── tests.sh
├── alertmanager
│   ├── Dockerfile
│   └── alertmanager.yml
├── cluster
│   ├── Dockerfile
│   ├── health.html
│   ├── httpd.conf
│   └── index.php
├── grafana
│   ├── Dockerfile
│   └── prometheus.yaml
├── haproxy
│   ├── Dockerfile
│   ├── haproxy-http-auth.conf
│   ├── haproxy.cfg
│   ├── haproxy.log
│   ├── haproxy.pem
│   ├── jail.conf
│   ├── rsyslog.conf
│   ├── supervisord.conf
│   └── keys
│       ├── certificate.crt
│       ├── private.key
│       └── request.csr
└── prometheus
├── Dockerfile
├── alerts.yml
├── prometheus.yml
└── rules.yml
