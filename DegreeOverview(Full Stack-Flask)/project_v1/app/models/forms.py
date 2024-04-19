from flask import render_template, flash, redirect, url_for
from flask_wtf import FlaskForm, RecaptchaField
from wtforms import StringField, PasswordField, SubmitField, BooleanField, RadioField, IntegerField
from wtforms.validators import DataRequired, Length, Email, EqualTo, ValidationError, NumberRange, Regexp

from app.models.student import Student
from app.models.teacher import Teacher


class RegisterForm(FlaskForm):
    name = StringField('Name', validators=[DataRequired(), Length(min=6, max=20)])
    email = StringField('Email', validators=[DataRequired(), Email(),
                                             Regexp(regex=r'[0-9a-zA-Z]+@+((mail.uic.edu.hk)|(uic.edu.hk))')])
    age = IntegerField('Age', validators=[DataRequired(), NumberRange(min=10, max=60)])
    college = StringField('College', validators=[Length(min=3, max=100)])
    major = StringField('Major', validators=[Length(min=2, max=10)])
    password = PasswordField('Password', validators=[DataRequired(), Length(min=8, max=20)])
    confirm = PasswordField('Repeat password', validators=[DataRequired(), EqualTo('password')])
    # recaptcha = RecaptchaField()
    role = RadioField('Label', choices=['Course Designer', 'Teacher', 'Student'], validators=[DataRequired()])
    # recaptcha = RecaptchaField()
    submit = SubmitField('Register')

    # The way to name the function must be validate_xxx. And xxx here must be a variable in RegisterForm class
    def validate_name(self, name):
        print(name.data)
        print(Student.query.filter_by(name=name.data).first())
        user = Student.query.filter_by(name=name.data).first()
        if user:
            raise ValidationError('Username already taken, please choose another one.')

    def validate_email(self, email):
        # print(email.data)
        # print(User.query.filter_by(username=email.data).first())
        email_check = Student.query.filter_by(email=email.data).first()
        if email_check:
            raise ValidationError('Email already taken, please choose another one.')


class LoginForm(FlaskForm):
    username = StringField('Username', validators=[DataRequired(), Length(min=6, max=20)])
    password = PasswordField('Password', validators=[DataRequired(), Length(min=8, max=20)])
    remember = BooleanField('Remember')
    submit = SubmitField('Sign In')
