import flask
import json
import random
import sqlalchemy

from flask import request, render_template, jsonify, make_response

from flask_login import login_required

from wtforms import Form, TextAreaField, SubmitField

import db, models

"""
Alternate reality version of the main page.

This is an attempt at hacking together something useful / interesting by the end of the batch, rather than have nothing to show.
"""


bp = flask.Blueprint('alternate_index', __name__, template_folder="templates")


@bp.route('/alt', methods=['GET'])
@login_required
def alternate_index():
    streams = json.load(open('streams.json'))
    return render_template("alt_index.html", streams=streams['streams'])
