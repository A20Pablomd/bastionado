FROM alpine:3.21.3

# Instalar Apache, PHP y dependencias
RUN apk add --no-cache \
    apache2 \
    php \
    php-apache2 \
    && mkdir -p /run/apache2

# Copiar configuración personalizada (se montará en runtime)
COPY ./archivos/httpd.conf /etc/apache2/httpd.conf
COPY ./archivos/index.php /var/www/localhost/htdocs/index.php

# Puerto expuesto
EXPOSE 80

# Iniciar Apache en primer plano
CMD ["httpd", "-D", "FOREGROUND"]
