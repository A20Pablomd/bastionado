FROM alpine:3.21.3

# Instalar Apache, PHP e dependencias
RUN apk add alertmanager


# Copiar arquivos
COPY ./alertmanager.yml /etc/alertmanager/alertmanager.yml

#Correr HAProxy
CMD ["alertmanager", "--config.file=/etc/alertmanager/alertmanager.yml", "--cluster.listen-address=127.0.0.1:1000"]

