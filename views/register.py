import flask
from flask import render_template
from flask_wtf import FlaskForm
from wtforms import StringField
from wtforms.validators import DataRequired

import db, models

bp = flask.Blueprint("register", __name__, template_folder = "templates")

class RegForm(FlaskForm):
    name = StringField('name')
    password = StringField('password', validators=[DataRequired()])
    email = StringField('email', validators=[DataRequired()])


@bp.route("/register", methods=['GET', 'POST'])
def register():
    form = RegForm()
    if form.validate_on_submit():
        user = models.User(
            name = form.name.data,
            email = form.email.data,
            active = True
        )
        user.set_password(form.password.data)
        db.sqla.session.add(user)
        db.sqla.session.commit()
        
        return flask.redirect("/")
    return render_template("register.html", form = form)
