import flask
from flask import render_template

bp = flask.Blueprint('index', __name__, template_folder="templates")

# TODO: change to post
@bp.route('/load', methods=["GET"])
def load():
    if request.args:
        counter = int(request.args.get("c")) # TODO: wtf am i?

        if counter == 0:
            print(f"returning posts: 0 :: {quantity}")

            # TODO: wire in to a db query
            res = make_response(jsonify(db[0:quantity]), 200)

        elif counter == posts:
            print(f"no more posts")
            res = make_response(jsonify({}), 200)

        else:
            print(f"returning posts {counter} to {counter + quantity}")
            res = make_response(jsonify(db[counter: counter + quantity]), 200)

@bp.route('/', methods=["GET"])
def index():
    return render_template("index.html")
