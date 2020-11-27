from sqlalchemy.orm import scoped_session, sessionmaker

import models

"""
prepares a connection to sqlalchemy.

To invoke db sessions:
db.sqla.session.query(models.Foo)
"""


CONN_STRING = "sqlite:///foo.db"

sqla = None

def init(app):
    global sqla
    sqla = plugin.SQLAlchemy(app, CONN_STRING)
    models.base.metadata.create_all(sqla.engine)
