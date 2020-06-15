#!/bin/bash

docker-compose up -d postgres
while ! docker-compose exec -T postgres psql -U postgres < bacula-db.sql; do sleep 1; done
docker-compose -f init.yml run init_db
docker-compose down --remove-orphans
