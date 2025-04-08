FROM alpine:3.21.3

# Instalar Apache, PHP e dependencias
RUN apk update && \
	apk add haproxy


# Copiar arquivos
COPY ./haproxy.cfg /etc/haproxy/haproxy.cfg


# Porto exposto
EXPOSE 8000
EXPOSE 80

# Correr HAProxy
CMD ["haproxy", "-f", "/etc/haproxy/haproxy.cfg", "-db"]
