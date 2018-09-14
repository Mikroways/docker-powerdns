# Power DNS server

This image serves a PwerDNS server. It allows configuring:

* *SOCKET_DIR:* where unix socket will be saved.
* *AXFR_IPS:* By default uses 127.0.0.0/8, but can be changed if your pdns will be part of a master,slave dns cluster. However, PowerDNS uses [other mechanisms for replication]((https://doc.powerdns.com/authoritative/modes-of-operation.html)
* *SQLITE_DATABASE:* sqlite db path. By default `/var/lib/powerdns/pdns.sqlite3`. Be careful to save this file in a volume. 
* *API_KEY:* which API KEY will be used for REST API. If not defined, a random one will be generated. For production installations setting this variable is mandatory.
