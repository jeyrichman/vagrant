#!/usr/bin/env bash

set -m
set -e

MYSQL_DB='admin'
MYSQL_USER='admin'
MYSQL_PASS='admin'

mysqld_safe &

sleep 10

mysql -u root -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DB}"
mysql -u root -e "GRANT ALL ON ${MYSQL_DB}.* to '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASS}'"
mysql -u root -e "FLUSH PRIVILEGES"

fg
