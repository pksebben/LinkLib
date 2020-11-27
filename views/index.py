import flask
from flask import render_template

bp = flask.Blueprint('index', __name__)


@bp.route('/', methods=["GET"])
def index():
    return render_template("index.html")
