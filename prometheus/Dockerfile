FROM alpine:3.21.3

# Instalar prometheus
RUN apk add --no-cache prometheus


# Copiar arquivos
COPY ./prometheus.yml /etc/prometheus/prometheus.yml
COPY ./rules.yml /etc/prometheus/rules.yml
COPY ./alerts.yml /etc/prometheus/alerts.yml

# Portos
##Páxina do prometheus
EXPOSE 9090

# Iniciar prometheus
CMD ["/usr/bin/prometheus", "--config.file=/etc/prometheus/prometheus.yml"]
