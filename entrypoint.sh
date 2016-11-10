#!/bin/sh

while ! nc -z db 5432; do sleep 3; done

sh init-db.sh

exec "$@"
