import json

import sqlalchemy

import flask
from flask import request, render_template, jsonify, make_response
from flask_login import login_required

import db, models


bp = flask.Blueprint('link', __name__, template_folder="templates")


@bp.route('/link/<link_id>', methods=["GET"])
@login_required
def link_page(link_id):

    link = db.sqla.session.query(models.Link).get(link_id)

    tags = link.tags.split(",")

    comment = {}
    
    return render_template("link.html", link = link, comment = comment)
    
