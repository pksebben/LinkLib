import flask
import json
import random
import sqlalchemy
from flask import request, render_template, jsonify, make_response

# https://pythonise.com/categories/javascript/infinite-lazy-loading

bp = flask.Blueprint('index', __name__, template_folder="templates")


# BEGIN MOCK DB NONSENSE

heading = "Lorem ipsum dolor sit amet."

content = """
Lorem ipsum dolor sit amet consectetur, adipisicing elit. 
Repellat inventore assumenda laboriosam, 
obcaecati saepe pariatur atque est? Quam, molestias nisi.
"""

db = list()  # The mock database

posts = 500  # num posts to generate

quantity = 20  # num posts to return per request

for x in range(posts):

    """
    Creates messages/posts by shuffling the heading & content 
    to create random strings & appends to the db
    """

    heading_parts = heading.split(" ")
    random.shuffle(heading_parts)

    content_parts = content.split(" ")
    random.shuffle(content_parts)

    db.append([x, " ".join(heading_parts), " ".join(content_parts)])

# END MOCK DB NONSENSE


# TODO: change to post
@bp.route('/load', methods=["GET"])
def load():
    if flask.request.args:
        counter = int(flask.request.args.get("c"))

        if counter == 0:
            print(f"returning posts: 0 :: {quantity}")

            # TODO: wire in to a db query
            res = flask.make_response(jsonify(db[0:quantity]), 200)

        elif counter == posts:
            print(f"no more posts")
            res = flask.make_response(jsonify({}), 200)

        else:
            print(f"returning posts {counter} to {counter + quantity}")
            res = flask.make_response(jsonify(db[counter: counter + quantity]), 200)

        return res

@bp.route('/', methods=["GET"])
def index():
    print("this is stdout")
    streams = json.load(open("streams.json"))
    return render_template("index.html", streams=streams["streams"])
