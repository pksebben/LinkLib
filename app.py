import flask
import sys
import structlog
from structlog import twisted
from twisted.python import log
from jinja2 import PackageLoader
from flask_humanize import Humanize

from views import index
import container

ENDPOINT = "tcp:8080"
DEBUG = True

app = flask.Flask(__name__, static_folder='static')
app.jinja_loader = PackageLoader(__name__, 'templates')

def main():
    container.run(app, ENDPOINT, DEBUG)

def init(blueprints):
    for bp in blueprints:
        app.register_blueprint(bp.bp)
    humanize = Humanize(app)
    app.jinja_env.auto_reload = True

    return app

if __name__ == "__main__":
    structlog.configure(
        processors=[twisted.EventAdapter()],
        logger_factory=twisted.LoggerFactory(),
        wrapper_class=twisted.BoundLogger,
        cache_logger_on_first_use=True
    )

    init([index])
    main()
