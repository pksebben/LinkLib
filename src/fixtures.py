import datetime
import random
import string

import sqlalchemy
from sqlalchemy import orm

import models, db


engine = None
session = None


def init():
    global engine
    global session
    engine = sqlalchemy.create_engine(db.CONN_STRING)
    models.Base.metadata.drop_all(engine)
    models.Base.metadata.create_all(engine)
    sessionmaker = orm.sessionmaker(bind=engine)
    session = sessionmaker()


def create_an_link():
    link = models.Link(
        url="dubyadubyadubyaDOTyermomDOTcom",
        stream_id = 0,
        message_id = 0,
        relevance_score = 0,
        timestamp = "timeless"
    )
    session.add(link)
    session.commit()
    
    
def gogogadget():
    init()
    create_an_link()
    
if __name__ == "__main__":
    gogogadget()
