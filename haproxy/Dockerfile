FROM alpine:3.21.3

# Instalar haproxy, rsyslog e fail2ban
RUN apk add haproxy rsyslog fail2ban supervisor
 
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

# Porto exposto
EXPOSE 8000
EXPOSE 80
EXPOSE 9999
# Correr HAProxy
CMD ["supervisord","-n","-c","/etc/supervisord.conf"]
