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

from views import index, link, register
from views import login as login_view
import db, container, models

ENDPOINT = "tcp:8080"
DEBUG = True

login = LoginManager()
login.login_view = "login_view.login"

@login.user_loader
def load_user(id):
    return db.sqla.session.query(models.User).get(int(id))

app = flask.Flask(__name__, static_folder='static')
app.jinja_loader = PackageLoader(__name__, 'templates')

app.secret_key = 'thereoncewasamanfromnantucketwhosethingwassolonghecouldbucket'
login.init_app(app)


def main():
    container.run(app, ENDPOINT, DEBUG)

def init(blueprints):
    for bp in blueprints:
        app.register_blueprint(bp.bp)
    humanize = Humanize(app)
    app.jinja_env.auto_reload = True

    return app


if __name__ == "__main__":
    db.init(app)
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

    init([index, link, login_view, register])
    main()
