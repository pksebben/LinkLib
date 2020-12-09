import flask
import json
import random
import sqlalchemy
from flask import request, render_template, jsonify, make_response
import db, models

# https://pythonise.com/categories/javascript/infinite-lazy-loading

bp = flask.Blueprint('index', __name__, template_folder="templates")


# BEGIN MOCK DB NONSENSE

heading = "Lorem ipsum dolor sit amet."

content = """
Lorem ipsum dolor sit amet consectetur, adipisicing elit. 
Repellat inventore assumenda laboriosam, 
obcaecati saepe pariatur atque est? Quam, molestias nisi.
"""

# db = list()  # The mock database


stream_id = 1


posts = 500  # num posts to generate

quantity = 20  # num posts to return per request

# for x in range(posts):

#     """
#     Creates messages/posts by shuffling the heading & content 
#     to create random strings & appends to the db
#     """

#     heading_parts = heading.split(" ")
#     random.shuffle(heading_parts)

#     content_parts = content.split(" ")
#     random.shuffle(content_parts)

#     db.append([x, " ".join(heading_parts), " ".join(content_parts)])

# END MOCK DB NONSENSE


# SQLALCHEMY STUFFS

schema = models.LinkSchema(many=True)

# TODO: how do we clear links on selection of stream?
# TODO: where is counter set?  How may we reset it?
# TODO: change to post
@bp.route('/load/<streamid>', methods=["GET"])
def load(streamid):
    global stream_id
    global links
    if flask.request.args:
        if stream_id == streamid:
            counter = int(flask.request.args.get("c"))
            links = db.sqla.session.query(models.Link).filter(stream_id == stream_id).all()
            print(links)

        else:
            print("loading links::")
            counter = 0
            stream_id = streamid
            links = db.sqla.session.query(models.Link).filter(stream_id == stream_id).all()
            
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

@bp.route('/', methods=["GET"])
def index():
    print("this is stdout")
    streams = json.load(open("streams.json"))
    return render_template("index.html", streams=streams["streams"])
