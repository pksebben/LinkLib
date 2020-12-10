import flask
from flask import request, render_template
from flask_login import current_user, login_user

import db, models

bp = flask.Blueprint("login_view", __name__,  template_folder = "templates")

@bp.route('/login', methods = ['POST', 'GET'])
def login():
    if current_user.is_authenticated:
        return redirect('/blogs')
     
    if request.method == 'POST':
        email = request.form['email']
        user = db.sqla.session.query(models.User).filter_by(email = email).first() 
        if user is not None and user.check_password(request.form['password']):
            login_user(user)
            return flask.redirect('/')
     
    return render_template('login.html')
