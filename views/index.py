import flask
import json
import random
import sqlalchemy

from flask import request, render_template, jsonify, make_response

from flask_login import login_required
from wtforms import Form, TextAreaField, SubmitField

import db, models


bp = flask.Blueprint('index', __name__, template_folder="templates")


@bp.route('/', methods=["GET"])
@login_required
def index():
    print("this is stdout")
    streams = json.load(open("streams.json"))
    return render_template("index.html", streams=streams["streams"])
