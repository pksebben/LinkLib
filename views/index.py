import flask
import json
import random
import sqlalchemy

from flask import request, render_template, jsonify, make_response

from flask_login import login_required
from wtforms import Form, TextAreaField, SubmitField

import db, models


"""
Index.  The main page.
"""


bp = flask.Blueprint('index', __name__, template_folder="templates")


# TODO: Login_required isn't routing properly on index load
@bp.route('/', methods=["GET"])
@login_required
def index():
    streams = json.load(open("streams.json"))
    streams = cull_streams(streams)
    return render_template("index.html", streams=streams)

# TODO: Stream culling takes a while.  This should be performed more as a cron, NOT on every page load

def cull_streams(streams):
    new_stream_list = filter(is_stream_populated, streams["streams"])
    return list(new_stream_list)
        

def is_stream_populated(stream):
    if db.sqla.session.query(models.Link).filter(models.Link.stream_id == stream["stream_id"]).first() is not None:
        return True
    else:
        return False
