from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.ext.associationproxy import association_proxy
from sqlalchemy.orm.collections import attribute_mapped_collection
from sqlalchemy import (
    Column,
    String,
    Integer,
    ForeignKey,
    Table,
    Text,
    DateTime,
    Date,
    Numeric,
    Boolean
    )
from sqlalchemy.orm import relationship, backref
from sqlalchemy import create_engine

Base = declarative_base()

class Link(Base):

    __tablename__ = "link"
    
    id = Column(Integer, primary_key=True)
    url = Column(String(80))
    stream_id = Column(Integer)
    message_id = Column(Integer)
    relevance_score = Column(Integer)
    timestamp = Column(String)  # TODO: make me a date


