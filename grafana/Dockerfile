FROM alpine:3.21.3

# Instalar Apache, PHP e dependencias
RUN apk add grafana


# Copiar arquivos
COPY ./prometheus.yaml /usr/share/grafana/conf/provisioning/datasources

#Correr HAProxy
CMD ["grafana-server", "-homepath=/usr/share/grafana"]
