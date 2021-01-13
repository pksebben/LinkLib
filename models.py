import json

from werkzeug.security import generate_password_hash, check_password_hash

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

from marshmallow import Schema, fields

from flask_jsontools import JsonSerializableBase
from flask_login import UserMixin




Base = declarative_base(cls=(JsonSerializableBase,))

class LinkSchema(Schema):
    id = fields.Int()
    url = fields.Str()
    domain = fields.Str()
    stream_id = fields.Int()
    message_id = fields.Int()
    relevance_score = fields.Int()
    timestamp = fields.Int()
    tags = fields.Str()

class Link(Base):

    __tablename__ = "link"
    
    id = Column(Integer, primary_key=True)
    url = Column(String(80))
    domain = Column(String(80))
    stream_id = Column(Integer)
    message_id = Column(Integer)
    relevance_score = Column(Integer)
    timestamp = Column(Integer)  # TODO: make me a date
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
    children = relationship('Comment', backref="parent", lazy='joined')

    parent = relationship(lambda: Comment, remote_side=id, backref="children")



class UserSchema(Schema):
    id = fields.Int()
    name = fields.Str()
    email = fields.Str()

class User(UserMixin, Base):

    __tablename__ = "user"

    id = Column(Integer, primary_key = True)
    active = Column(Boolean, nullable = False, default = False)
    name = Column(String)
    email = Column(String, nullable = False, unique=True)
    password_hash = Column(String())

    def set_password(self,password):
        self.password_hash = generate_password_hash(password)
     
    def check_password(self,password):
        return check_password_hash(self.password_hash,password)
    
