FROM alpine:3.21.3

# Instalar Apache, PHP e dependencias
RUN apk add --no-cache \
    apache2 \
    php \
    php-apache2 \
    && mkdir -p /run/apache2

# Copiar arquivos
COPY ./arquivos/httpd.conf /etc/apache2/httpd.conf
COPY ./arquivos/index.php /var/www/localhost/htdocs/index.php

# Porto exposto
EXPOSE 80

# Cambiar default rute
CMD ["ip", "route", "del", "default"]
CMD ["ip", "route", "add", "default", "via", "172.100.0.200"]
# Iniciar Apache
CMD ["httpd", "-D", "FOREGROUND"]
