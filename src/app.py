"""LinkLib
Usage:
   app.py
   app.py live
   app.py waitress

TODO: Label the things that this does for refactoring
"""

import os

from livereload import Server, shell #live reloading for dev testing 
from docopt import docopt            # arg parsing

import sys                      # needed for logging
import logging                  # logging

import structlog                # logging 
from structlog import twisted, get_logger # logging
from twisted.python import log            # logging

from jinja2 import PackageLoader # loads templates for jinja (refactor?)
from waitress import serve       # server option. (deprecate?)

import flask                    # instantiate app
from flask_humanize import Humanize #  
from flask import json
from flask_login import LoginManager
from flask.logging import default_handler
from flask_cors import CORS, cross_origin

from views import index, link, register, api, testpage
from views import login as login_view
import db, container, models, config

app = flask.Flask(__name__, static_folder='static')
cors=CORS(app)
app.config['CORS_HEADERS'] = 'Content-Type'
app.conf = config.Config()

DEBUG = True
ENDPOINT = "tcp:8081"


@app.after_request
def log_request(response):
    """log all requests"""
    logger = logging.getLogger()
    logger.info(flask.request)
    logger.info(response)

    return response
    

def init_login(app):
    """configure application for login"""


    login = LoginManager()
    login.login_view = "login_view.login"
    
    @login.user_loader
    def load_user(id):
        return db.sqla.session.query(models.User).get(int(id))

    # TODO: move these next two into config.py
    config = json.load(open('config.json'))
    app.secret_key = config['secret_key']
   
    login.init_app(app)



def init_blueprints(blueprints):
    '''initialize blueprints and jinja environment'''

    app.jinja_loader = PackageLoader(__name__, 'templates')
    
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
    init_blueprints([index, link, login_view, register, api, testpage])
    init_login(app)
    if args['live']:
        app.debug = True
        server = Server(app.wsgi_app)
        server.watch('static/*')
        server.watch('templates/*')
        server.serve(liveport=8082,
                     host='localhost',
                     open_url_delay=0,
                     debug=True)
    elif args['waitress']:
        serve(app, listen='*:8080')
    else:
        print("init container.py")
        container.run(app, ENDPOINT, DEBUG)
