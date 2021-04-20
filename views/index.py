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
    return render_template("index.html", streams=streams["streams"])
