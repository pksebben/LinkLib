import flask
import sys
import structlog
import logging
from structlog import twisted, get_logger
from twisted.python import log
from jinja2 import PackageLoader
from flask_humanize import Humanize
from flask import json

from views import index, link
import db
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


# maybe we don't need this.
# from sqlalchemy.ext.declarative import DeclarativeMeta

# class AlchemyEncoder(json.JSONEncoder):

#     def default(self, obj):
#         if isinstance(obj.__class__, DeclarativeMeta):
#             # an SQLAlchemy class
#             fields = {}
#             for field in [x for x in dir(obj) if not x.startswith('_') and x != 'metadata']:
#                 data = obj.__getattribute__(field)
#                 try:
#                     json.dumps(data) # this will fail on non-encodable values, like other classes
#                     fields[field] = data
#                 except TypeError:
#                     fields[field] = None
#             # a json-encodable dict
#             return fields

#         return json.JSONEncoder.default(self, obj)




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

    init([index, link])
    main()
