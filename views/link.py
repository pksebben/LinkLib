import flask
import json
import sqlalchemy
from flask import request, render_template, jsonify, make_response
import db, models


bp = flask.Blueprint('link', __name__, template_folder="templates")



@bp.route('/link/<link_id>', methods=["GET"])
def link_page(link_id):

    link = db.sqla.session.query(models.Link).get(link_id)

    tags = link.tags.split(",")

    comment = {}
    
    return render_template("link.html", link = link, comment = comment)
    
