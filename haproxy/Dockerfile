FROM alpine:3.21.3

# Instalar haproxy, rsyslog e fail2ban
RUN apk add haproxy rsyslog fail2ban
 
# Copiar arquivos
COPY ./haproxy.cfg /etc/haproxy/haproxy.cfg
RUN mkdir /etc/haproxy/certs
COPY ./haproxy.pem /etc/haproxy/certs/haproxy.pem
COPY ./rsyslog.conf /etc/rsyslog.conf
COPY ./jail.conf /etc/fail2ban/jail.conf
RUN mkdir /var/log/haproxy.log
COPY ./start.sh /start.sh

RUN chmod +x /start.sh
# Porto exposto
EXPOSE 8000
EXPOSE 80

# Correr HAProxy
CMD ["./start.sh"]
