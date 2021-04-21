from sqlalchemy.orm import scoped_session, sessionmaker

import models, plugin

"""
prepares a connection to sqlalchemy.

To invoke db sessions:
db.sqla.session.query(models.Foo)
"""

CONN_STRING = "sqlite:///../linklib_db/link.db"

sqla = None

def init(app):
    print("init db")
    global sqla
    sqla = plugin.SQLAlchemy(app, CONN_STRING)
    models.Base.metadata.create_all(sqla.engine)
