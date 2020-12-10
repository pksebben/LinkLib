import flask
import json
import random
import sqlalchemy

from flask import request, render_template, jsonify, make_response
from flask_login import login_required

import db, models

# https://pythonise.com/categories/javascript/infinite-lazy-loading

bp = flask.Blueprint('index', __name__, template_folder="templates")

stream_id = 1

posts = 500  # num posts to generate

quantity = 20  # num posts to return per request

schema = models.LinkSchema(many=True)

# TODO: how do we clear links on selection of stream?
# TODO: where is counter set?  How may we reset it?
# TODO: change to post
@bp.route('/load/<streamid>', methods=["GET"])
@login_required
def load(streamid):
    global stream_id
    global links
    if flask.request.args:
        if stream_id == streamid:
            print("loading links from stream: " + str(stream_id) )
            counter = int(flask.request.args.get("c"))
            links = db.sqla.session.query(models.Link).filter(models.Link.stream_id == stream_id).all()
            print(links)

        else:
            print("loading links from stream: " + str(stream_id))
            counter = 0
            stream_id = streamid
            links = db.sqla.session.query(models.Link).filter(models.Link.stream_id == stream_id).all()
            
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
@login_required
def index():
    print("this is stdout")
    streams = json.load(open("streams.json"))
    return render_template("index.html", streams=streams["streams"])
