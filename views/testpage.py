"""
This is a sketchpad to quickly test out new ideas.  It should not make it into prod.
"""
import flask
import sqlalchemy
import random
import string

from flask import request, render_template, jsonify, make_response


import db, models


bp = flask.Blueprint('testpage', __name__, template_folder='templates')


testobj = {
    1: "one",
    2: "two",
    3: "three",
    "L": ["a","b","c","d"]
}

def create_comments():
    """
    Create a set of lorem ipsum comments
    """
    comments = []
    authors = [random.choice(string.ascii_letters) for i in range(random.choice(range(3,10)))],
    for i in range(10):
        comment = {
            'content' : "".join([random.choice(string.ascii_letters) for i in range(100)]),
            'author' : "".join(random.choice(authors)),
            'timestamp' : random.choice(range(900000,10000000))
        }
        comments.append(comment)

    return comments



@bp.route('/testpage', methods=['GET'])
def testpage():
    return render_template('testpage.html', testobj = testobj, comments = create_comments())
