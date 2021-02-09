import flask
import db, models
import datetime
from flask_login import login_required
from flask_login import current_user
from flask import request, render_template, jsonify, make_response


"""
API

All hits to the db should go through here

TODO: fix comments to display user name instead of id#
TODO: fix comments so they load up the whole tree appropriately
   !: Are children appropriately populated?
   !: If so, are they being pulled from the database correctly?
   !: If so, are they being sent to the jinja template?
   !: If so, why are they not being shown correctly?
TODO: Cleanme

Qs
Do we want to have helper functions defined here or in db?
"""


bp = flask.Blueprint("api", __name__,  template_folder="templates")



# Initialize variables for load_
stream_id = 1
posts = 500  # num posts to generate
quantity = 20  # num posts to return per request
schema = models.LinkSchema(many=True)

@bp.route('/api/comment/submit', methods=['POST'])
def post_comment():
    """
    POSTs a new comment to the database.

    Required fields for the request:
       'parent_id' :   can be an integer, '', or null
       'content' : a string

    The fields for userid, timestamp, and id(primary key) are populated below, or by the db.
    """
    print("New comment added")

    # populate comment fields
    content = request.form.get('content')
    parent_id = request.form.get('parent_id', None)
    user_id = current_user.id
    timestamp = datetime.datetime.now()

    # null the parent id if empty string.
    if parent_id == "":
        parent_id = None

    # log comment entry
    print("parent id: {} \nuser id: {}\ncontent: {}\ntimestamp: {}\n".format(parent_id, user_id, content, timestamp))

    # create the comment object
    comment = models.Comment(
        timestamp = timestamp,
        user_id = user_id,
        parent_id = parent_id,
        content = content
    )

    # try to find the parent. If it exists, append this comment to it.
    parent = db.sqla.session.query(models.Comment).get(parent_id)
    if parent:    
        parent.children.append(comment)

    # add and commit
    db.sqla.session.add(comment)
    db.sqla.session.commit()

    # return a representation of the comment just added.  This is meant for consumption by AJAX calls.
    res = {
        "id" : comment.id,
        "author" : db.sqla.session.query(models.User).get(user_id).name,
        "timestamp" : timestamp,
        "content" : content
    }
    return flask.jsonify(res)

# pretty sure this next bit was a typo
# @bp.route('/')


@login_required
@bp.route('/api/markvisited/<linkid>', methods=['GET'])
def mark_visited(linkid):
    user = db.sqla.session.query(models.User).get(current_user.id)
    link = db.sqla.session.query(models.Link).get(linkid)
    user.visited_links.append(link)
    db.sqla.session.commit()

    return "link added to viewed", 200
    
    

# @login_required
@bp.route('/load', methods=['POST'])
def load_content():
    '''
    flexible post-based loading from sql.

    POST request must define:
    table:  what table to load results from (comment, link, etc.)
    id:  id of desired resource
    '''
    table = flask.request.form.get('table')
    id = flask.request.form.get("id")

    if table == "comment":
        results = db.sqla.session.query(models.Comment).get(id)
        print(type(results.parent_id))
        schema = models.CommentSchema()
        serialized = schema.dump(results)
        print("RESULTS ARE:    ", serialized)
        return flask.jsonify(serialized)
    else:
        return "bad query", 500


@bp.route('/load/<streamid>/<counter>', methods=["GET"])
@login_required
def load_links(streamid, counter):
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
    if flask.request:
        if stream_id == streamid:
            """
            This checks if streamid is provided and uses a default (set up top) if not.

            I don't like this way of doing business.  It makes the code unclear.
            """
            print("loading links from stream: " + str(stream_id) )
            # counter = int(flask.request.args.get("c"))

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

            print("results are: %s" % l)

            # TODO: wire in to a db query
            res = flask.make_response(jsonify(l), 200)

        elif counter == posts:
            print(f"no more posts")
            res = flask.make_response(jsonify({}), 200)

        else:
            counter = int(counter)
            print("counter = " + str(type(counter)))
            l = schema.dump(links[counter: counter + quantity])
            print(f"returning posts {counter} to {counter + quantity}")
            res = flask.make_response(jsonify(l), 200)

        res.headers.add("Access-Control-Allow-Origin", "*")
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
