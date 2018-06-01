# Power DNS server

This image serves a PwerDNS server. It allows configuring:

* socket-dir
* allow-axfr-ips
* gsqlite3-database

Those parameters are set via environment variables:

* SOCKET_DIR
* AXFR_IPS
* SQLITE_DATABASE

For example, sqlite database shall be in a docker volume
