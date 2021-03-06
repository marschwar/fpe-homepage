#!/usr/bin/env bash

for ID in $(docker ps --filter='name=fpe-homepage_db_1' -q)
  do
		docker exec $ID bash -c 'mysqldump -h 127.0.0.1 -uroot -pexample --databases fpe | gzip -c > /sources/dump.sql.gz'
  done
