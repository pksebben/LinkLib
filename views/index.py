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


@bp.route('/', methods=["GET"])
@login_required
def index():
    print("this is stdout")
    root_rfc_comment = db.sqla.session.query(models.Comment).get(4)
    root_comments = db.sqla.session.query(models.Comment).filter(models.Comment.parent_id == None).all()
    print(root_comments)


    # TESTING
    child_comments = db.sqla.session.query(models.Comment).filter(models.Comment.parent_id == 4).all()

    # //TESTING
    streams = json.load(open("streams.json"))
    return render_template("index.html", streams=streams["streams"],root_rfc_comment=root_rfc_comment, rfc_comments=root_comments)
