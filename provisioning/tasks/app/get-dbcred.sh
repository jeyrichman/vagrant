#!/usr/bin/env bash

MYSQL_HOST=`curl -s http://consul:8500/v1/kv/mysql/mysql_host | jq  -r '.[0]["Value"]' | base64 -d`
MYSQL_USER=`curl -s http://consul:8500/v1/kv/mysql/mysql_user | jq  -r '.[0]["Value"]' | base64 -d`
MYSQL_DATABASE=`curl -s http://consul:8500/v1/kv/mysql/mysql_db | jq  -r '.[0]["Value"]' | base64 -d`
MYSQL_PASSWORD=`curl -s http://consul:8500/v1/kv/mysql/mysql_pass | jq  -r '.[0]["Value"]' | base64 -d`

/bin/sed -i "s/MYSQL_HOST/$MYSQL_HOST/g" /var/www/site/index.php && 
/bin/sed -i "s/MYSQL_USER/$MYSQL_USER/g" /var/www/site/index.php &&
/bin/sed -i "s/MYSQL_DATABASE/$MYSQL_DATABASE/g" /var/www/site/index.php &&
/bin/sed -i "s/MYSQL_PASSWORD/$MYSQL_PASSWORD/g" /var/www/site/index.php 
