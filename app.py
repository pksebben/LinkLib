"""LinkLib
Usage:
   app.py
   app.py live
"""
import os

from livereload import Server, shell
from docopt import docopt

import sys
import logging

import structlog
from structlog import twisted, get_logger
from twisted.python import log
from jinja2 import PackageLoader

import flask
from flask_humanize import Humanize
from flask import json
from flask_login import LoginManager

from views import index, link, register, api, testpage
from views import login as login_view
import db, container, models

app = flask.Flask(__name__, static_folder='static')

DEBUG = True
ENDPOINT = "tcp:8081"

def main():
    """perform a grabbag of necessary initialization and run the app"""
    
    
    app.jinja_loader = PackageLoader(__name__, 'templates')


    login = LoginManager()
    login.login_view = "login_view.login"
    
    @login.user_loader
    def load_user(id):
        return db.sqla.session.query(models.User).get(int(id))

    config = json.load(open('config.json'))

    app.secret_key = config['secret_key']
    login.init_app(app)



def init(blueprints):
    '''initialize blueprints and jinja environment'''
    for bp in blueprints:
        app.register_blueprint(bp.bp)
    humanize = Humanize(app)
    app.jinja_env.auto_reload = True

    return app


def init_logging():
    logging.basicConfig(
        format="%(message)s", stream=sys.stdout, level=logging.INFO
    )
    structlog.configure(
        processors=[
            structlog.processors.StackInfoRenderer(),
            structlog.twisted.JSONRenderer()
        ],
        context_class=dict,
        logger_factory=twisted.LoggerFactory(),
        wrapper_class=twisted.BoundLogger,
        cache_logger_on_first_use=True
    )


if __name__ == "__main__":
    args = docopt(__doc__, version="LinkLib Livereload 0.1")
    db.init(app)
    init_logging()
    init([index, link, login_view, register, api, testpage])
    main()
    if not args['live']:    
        container.run(app, ENDPOINT, DEBUG)
    else:
        app.debug = True
        server = Server(app.wsgi_app)
        server.watch('static/*')
        server.watch('templates/*')
        server.serve(liveport=8082,
                     host='localhost',
                     open_url_delay=0,
                     debug=True)
