FROM alpine:3.21.3

# Instalar haproxy
RUN apk add haproxy


# Copiar arquivos
COPY ./haproxy.cfg /etc/haproxy/haproxy.cfg
RUN mkdir /etc/haproxy/certs
COPY ./haproxy.pem /etc/haproxy/certs/haproxy.pem

# Porto exposto
EXPOSE 8000
EXPOSE 80

# Correr HAProxy
CMD ["haproxy", "-f", "/etc/haproxy/haproxy.cfg", "-db"]
