
# Usa Alpine
FROM alpine:3.21.3

# Instalar haproxy, rsyslog, fail2ban e supervisor
RUN apk add --no-cache \
	haproxy \
	rsyslog \
	fail2ban \
	supervisor
 
# Copiar arquivos
COPY ./haproxy.cfg /etc/haproxy/haproxy.cfg
RUN mkdir /etc/haproxy/certs
COPY ./haproxy.pem /etc/haproxy/certs/haproxy.pem
COPY ./rsyslog.conf /etc/rsyslog.conf
COPY ./haproxy.log /var/log/haproxy.log
COPY ./jail.conf /etc/fail2ban/jail.conf
COPY ./haproxy-http-auth.conf /etc/fail2ban/filter.d/haproxy-http-auth.conf
COPY ./supervisord.conf /etc/supervisord.conf
RUN rm -rf /etc/fail2ban/jail.d/*

# Portos
## http e https
EXPOSE 80 
EXPOSE 443
## /stats - password-> administrator/adc123.
EXPOSE 8181
## Scrap do prometheus
EXPOSE 9090 
## Páxina supervisord
EXPOSE 9999

# Correr servizos
CMD ["supervisord","-n","-c","/etc/supervisord.conf"]
