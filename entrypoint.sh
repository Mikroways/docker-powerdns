#!/bin/sh

set -e

AXFR_IPS=${AXFR_IPS:-'127.0.0.0/8,::1'}
SQLITE_DATABASE=${SQLITE_DATABASE:-'/var/lib/powerdns/pdns.sqlite3'}
SOCKET_DIR=${SOCKET_DIR:-'/var/run'}
export AXFR_IPS SQLITE_DATABASE SOCKET_DIR

test -f $SQLITE_DATABASE || \
  sqlite3 $SQLITE_DATABASE < /root/sqlite-init.sql

envsubst '$AXFR_IPS $SQLITE_DATABASE $SOCKET_DIR' < /etc/pdns/pdns.conf.tpl > /etc/pdns/pdns.conf

/usr/local/sbin/pdns_server $@
