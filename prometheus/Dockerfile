FROM alpine:3.21.3

# Instalar Apache, PHP e dependencias
RUN apk update && \
	apk add prometheus


# Copiar arquivos
COPY ./prometheus.yml /etc/prometheus/prometheus.yml


#Correr HAProxy
CMD ["/usr/bin/prometheus", "--config.file=/etc/prometheus/prometheus.yml"]
