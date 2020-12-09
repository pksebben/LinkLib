import flask
import db, models


bp = flask.Blueprint("api", template_folder="templates")


@bp.route("/comment", methods=["POST"])
def add_comment():

    args = flask.request.args

    
