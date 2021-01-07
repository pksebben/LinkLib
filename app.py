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


def main():
    """perform a grabbag of necessary initialization and run the app"""
    ENDPOINT = "tcp:8080"
    DEBUG = True


    app.jinja_loader = PackageLoader(__name__, 'templates')


    login = LoginManager()
    login.login_view = "login_view.login"
    
    @login.user_loader
    def load_user(id):
        return db.sqla.session.query(models.User).get(int(id))

    app.secret_key = 'thereoncewasamanfromnantucketwhosethingwassolonghecouldbucket'
    login.init_app(app)

    container.run(app, ENDPOINT, DEBUG)


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
    db.init(app)
    init_logging()
    init([index, link, login_view, register, api, testpage])
    main()
