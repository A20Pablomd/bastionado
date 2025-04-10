#!/bin/ash

rsyslogd
fail2ban-server -xf start &
haproxy -f /etc/haproxy/haproxy.cfg -db
