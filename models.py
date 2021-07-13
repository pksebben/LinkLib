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

link_to_tag = Table('link_to_tag', Base.metadata,
                    Column('link_id', Integer, ForeignKey('link.id')),
                    Column('tag_id', Integer, ForeignKey('tag.id'))
                    )

visited_links = Table('visited_links', Base.metadata,
                      Column('user_id', Integer, ForeignKey('user.id')),
                      Column('link_id', Integer, ForeignKey('link.id'))
                      )

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
    timestamp = Column(Integer)  # TODO: make me a date
    url = Column(String(80))
    
    # generated data
    domain = Column(String(80))
    stream_id = Column(Integer)
    message_id = Column(Integer)
    relevance_score = Column(Integer)
    tags = relationship("Tag",
                        secondary=link_to_tag,
                        backref="links")
    root_comments = relationship("Comment", backref="link")
    
    # user-defined data
    # desc = Column(Text)


class TagSchema(Schema):
    id = fields.Int()
    name = fields.Str()

class Tag(Base):

    __tablename__ = "tag"

    id = Column(Integer, primary_key=True)
    name = Column(String(15))


class CommentSchema(Schema):
    id = fields.Int()
    timestamp = fields.Str()
    content = fields.Str()

    score = fields.Int()
    
    user_id = fields.Int()
    parent_id = fields.Int(allow_none=True)
    link_id = fields.Int(allow_none=True)

class Comment(Base):

    __tablename__ = "comment"

    id = Column(Integer, primary_key = True)
    timestamp = Column(Integer, nullable=False)
    content = Column(Text, nullable=False)

    # Interaction flags
    score = Column(Integer, default=0, nullable=False)

    # User relationship
    user_id = Column(Integer, ForeignKey("user.id"))
    author = relationship("User", back_populates="comments")

    # Link relationships, for root-level comments
    link_id = Column(Integer, ForeignKey('link.id'), nullable = True)
    
    # Tree behavior - subcomments and subcomments of subcomments
    parent_id = Column(Integer, ForeignKey("comment.id"), index=True, nullable=True)
    children = relationship('Comment', back_populates="parent", lazy='joined')
    parent = relationship("Comment", remote_side=id, back_populates="children", lazy='joined')

# TODO: The 'link' and 'comment' schema should be merged, to allow for flexible contact between the two.

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
    comments = relationship("Comment", back_populates="author")
    visited_links = relationship("Link", secondary=visited_links)

    def set_password(self,password):
        self.password_hash = generate_password_hash(password)
     
    def check_password(self,password):
        return check_password_hash(self.password_hash,password)
    
# TODO: deprecate 
class Content(Base):
    """the master class for content.
    the idea here is to create an 'information node'
    that can flexibly used to model a hierarchy
    of information and maps neatly to the rest of the domain model
    
    NOTE: This is probably overengineering.
    what we really need is a mechanism for root-level comments.
    """
    
    __tablename__ = "content"

    id = Column(Integer, primary_key = True)
    timestamp = Column(Integer, nullable = False)
    # TODO: How do we model content?
    score = Column(Integer, default = 0, nullable = False)
