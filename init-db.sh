#!/bin/sh

python manage.py migrate
python manage.py collectstatic --clear --no-input
