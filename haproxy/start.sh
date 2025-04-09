#!/bin/ash

rsyslogd
/var/run/fail2ban/fail2ban.sock
fail2ban-server start
haproxy -f /etc/haproxy/haproxy.cfg -db
