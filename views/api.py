import flask
import db, models
import datetime
from flask_login import login_required
from flask_login import current_user
from flask import request, render_template, jsonify, make_response
"""
API

All hits to the db should go through here

Qs
Do we want to have helper functions defined here or in db?
"""

bp = flask.Blueprint("api", __name__,  template_folder="templates")


# Initialize variables for load_
stream_id = 1
posts = 500  # num posts to generate
quantity = 20  # num posts to return per request
schema = models.LinkSchema(many=True)

@bp.route('/api/post', methods=['POST'])
@login_required
def post_comment():
    '''
    Post a comment to the db.
    Form looks like:
    TextArea name = 'content'
    Input type='hidden' name='parent_id'
    '''
    timestamp = datetime.datetime.now()
    user_id = current_user.id
    content = request.form['content']
    if request.form['parent_id'] != 0:
        parent_id = request.form['parent_id']
    else:
        parent_id = None
    db.sqla.session.add(models.Comment(
        timestamp = timestamp,
        user_id = user_id,
        content = content,
        parent_id = parent_id
    ))
    db.sqla.session.commit()
    return flask.redirect('')
    
@bp.route('/load', methods=['POST'])
@login_required
def load_comments():
    '''
    load a comment tree
    TODO: finish me
    this should:
    1. grab a root comment
    2. grab all children of that comment
    3. serve these as a list

    the design intention is that anything implementing this knows how to distinguish 
    a 'root' comment (one with no parent) and knows how to connect a chain of comments
    using parent ids / comment ids.
    '''
    table = request.form['table'].data
    id = request.form['id'].data

    if table == "comment":
        results = db.sqla.session.query(models.Comment).get(id)
        return flask.jsonify(results)
    else:
        return "bad query", 500

    
@bp.route('/load/<streamid>', methods=["GET"])
@login_required
def load(streamid):
    '''
    TODO: fix the name
    loads a block of posts (at the moment, only links are supported.)
       this is part of a custom implementation of: https://pythonise.com/categories/javascript/infinite-lazy-loading
       many of the other implementation details are in the html, as js.
    the request must have:
    1. a counter "c"
    2. 
    '''
    
    global stream_id
    global links
    if flask.request.args:
        if stream_id == streamid:
            print("loading links from stream: " + str(stream_id) )
            counter = int(flask.request.args.get("c"))
            # links = db.sqla.session.query(models.Link).filter(models.Link.stream_id == stream_id).all()
            # links = filter_by_stream(stream_id)
            links = advanced_filter(stream_id = stream_id)

        else:
            print("loading links from stream: " + str(stream_id))
            counter = 0
            stream_id = streamid
            links = advanced_filter(stream_id=stream_id)
        
            # links = filter_by_stream(stream_id)
            
        if counter == 0:
            print(f"returning posts: 0 :: {quantity}")
            l = schema.dump(links[0: quantity])

            # TODO: wire in to a db query
            res = flask.make_response(jsonify(l), 200)

        elif counter == posts:
            print(f"no more posts")
            res = flask.make_response(jsonify({}), 200)

        else:
            l = schema.dump(links[counter: counter + quantity])
            print(f"returning posts {counter} to {counter + quantity}")
            res = flask.make_response(jsonify(l), 200)

        return res

def filter_by_stream(stream):
    links = db.sqla.session.query(models.Link).filter(models.Link.stream_id == stream).all()
    return links
    
def advanced_filter(**kwargs):
    '''
    flexible database querying using getattr and **kwargs
    
    this will take an arbitrary number of keyword arguments
    and query the link database based on those.
    '''
    query = db.sqla.session.query(models.Link)
    for k, v in kwargs.items():
        query = query.filter(getattr(models.Link, k) == str(v))
    return query.all()    
