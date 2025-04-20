FROM alpine:3.21.3

# Instalar alertmanager
RUN apk add --no-cache alertmanager


# Copiar arquivos
COPY ./alertmanager.yml /etc/alertmanager/alertmanager.yml

# Portos
##Páxina alertmanager
EXPOSE 9093

# Correr alertmanager (por defecto precisa ter unha ip de escoita de cluster)
CMD ["alertmanager", "--config.file=/etc/alertmanager/alertmanager.yml", "--cluster.listen-address=127.0.0.1:1000"]

