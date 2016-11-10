[![Build Status](https://travis-ci.org/lesspass/api.svg?branch=master)](https://travis-ci.org/lesspass/api)

# LessPass backend

API server built with the Django REST framework for LessPass password manager.

Dependencies:

 - python 3
 - django rest framework
 - django rest framework jwt
 - djoser
 - postgresql
 - gunicorn


## Security considerations

Running this service on a public server without proper HTTPS support presents a
huge risk of account information leakage (not just your LessPass account, all
your accounts).


## Running the tests

    $ pip install -r requirements.txt
    $ python manage.py test

Note that you might want to do this inside a virtual environment.


## Running on Heroku

First, you should install the [Heroku
CLI](https://devcenter.heroku.com/articles/heroku-command-line).

Then, create a new Heroku app:

    $ heroku create

Configure the domain you'll use to access the service (for example,
`my-less-pass.com`):

    $ heroku config:set ALLOWED_HOSTS=my-less-pass.com

Add a PostgreSQL resource to the Heroku app (it doesn't have to be the free
plan, please refer to Heroku documentation for alternative plans):

    $ heroku addons:create heroku-postgresql:hobby-dev

Deploy the repository to the Heroku app:

    $ git push heroku

And finally, initialize the database:

    $ heroku run sh init-db.sh


## License

This project is licensed under the terms of the GNU GPLv3.


## Issues

Report issues on the [project
page](https://github.com/lesspass/lesspass/issues).
