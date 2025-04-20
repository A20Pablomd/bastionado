FROM alpine:3.21.3

# Instalar grafana
RUN apk add --no-cache grafana

# Copiar arquivos
COPY ./prometheus.yaml /usr/share/grafana/conf/provisioning/datasources

# Portos
##Dashboard grafana
EXPOSE 3000

# Correr grafana
CMD ["grafana-server", "-homepath=/usr/share/grafana"]
