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
from flask_jsontools import JsonSerializableBase
import json

from marshmallow import Schema, fields

Base = declarative_base(cls=(JsonSerializableBase,))

"""

TODO: fix tag encoding to reflect number-linked sets (i.e. beginner-friendly: 21, python: 2 etc)
tags are encoded as a comma seperated list.
"""

class LinkSchema(Schema):
    id = fields.Int()
    url = fields.Str()
    stream_id = fields.Int()
    message_id = fields.Int()
    relevance_score = fields.Int()
    timestamp = fields.Int()
    tags = fields.Str()

class Link(Base):

    __tablename__ = "link"
    
    id = Column(Integer, primary_key=True)
    url = Column(String(80))
    stream_id = Column(Integer)
    message_id = Column(Integer)
    relevance_score = Column(Integer)
    timestamp = Column(String)  # TODO: make me a date
    tags = Column(String)

class CommentSchema(Schema):
    id = fields.Int()
    timestamp = fields.Int()
    user_id = fields.Int()
    content = fields.Str()
    parent_id = fields.Int()
    children = fields.List(fields.Int())

class Comment(Base):

    __tablename__ = "comment"

    id = Column(Integer, primary_key = True)
    timestamp = Column(Integer)
    user_id = Column(Integer)
    content = Column(String)
    parent_id = Column(Integer, ForeignKey("comment.id"), index=True)

    parent = relationship(lambda: Comment, remote_side=id, backref="children")
