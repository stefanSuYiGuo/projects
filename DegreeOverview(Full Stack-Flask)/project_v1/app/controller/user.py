import re
import hashlib
import datetime

from flask import Flask, Blueprint, render_template, request, jsonify, flash, redirect, url_for, session
from app.models.base import db
# from project_v1.teamwork import bcrypt
from app.models.student import Student
from app.models.teacher import Teacher
from app.models.course import Course, CILO, Assessment
from app.models.forms import RegisterForm, LoginForm

from sqlalchemy import or_, and_, all_, any_

# app = Flask(__name__)
userBP = Blueprint('user', __name__)


def encryption(password):
    """
    This function is to encrypt password by using hash algorithm
    :param password: string type data
    :return: hashed password in hexadecimal format
    """
    hash_password = hashlib.sha1(password.encode())
    # print(hash_password.hexdigest(), type(hash_password.hexdigest))
    return hash_password.hexdigest()


def course_display_bg_info_dict_generator(course_list, bg_list):
    course_display_bg_info_dict = {}
    for course in course_list:
        bg_style = bg_list[course_list.index(course) % len(bg_list)]
        course_name = Course.query.filter_by(course_code=course).first().course_name
        participant_num = len(Student.query.filter_by(course=course).all())
        dict_value = [bg_style, course_name, participant_num]
        course_display_bg_info_dict[course] = dict_value
    return course_display_bg_info_dict


@userBP.route('/index')
def index():
    title = 'DegreeOverview'
    return render_template('index.html', title=title)


@userBP.route('/register/success/<name>')
def register_success(name):
    """
    This function is to go to success page after successful register. And register a function for url_for()
    :param name: string type data which passes double bind var name
    :return: anchor to /user/register/success/<name>
    """
    return render_template('studentSuccess.html', title='Success Register', name=name)


@userBP.route('/studentLogin/success/<name>/<role>')
def student_login_success(name, role):
    """
    This function is to go to success page after successful login. And register a function for url_for()
    :param role: string type data which passes double bind var role
    :param name: string type data which passes double bind var name
    :return: anchor to /studentLogin/success/<name>/<role>
    """
    return render_template('studentSuccess.html', title='Success Login', name=name, role=role)


@userBP.route('/courseDesignerLogin/success/<name>/<role>')
def course_designer_login_success(name, role):
    """
    This function is to go to success page after successful login. And register a function for url_for()
    :param role: string type data which passes double bind var role
    :param name: string type data which passes double bind var name
    :return: anchor to /user/teacherLogin/success/<name>/<role>
    """
    return render_template('courseDesignerSuccess.html', title='Success Login', name=name, role=role)


@userBP.route('/teacherLogin/success/<name>/<role>')
def teacher_login_success(name, role):
    """
    This function is to go to success page after successful login. And register a function for url_for()
    :param role: string type data which passes double bind var role
    :param name: string type data which passes double bind var name
    :return: anchor to /user/teacherLogin/success/<name>/<role>
    """
    return render_template('teacherSuccess.html', title='Success Login', name=name, role=role)


@userBP.route('/<role>/home/<name>')
def load_home(name, role):
    """
    :param name: session storage name of user
    :param role: session storage role of user
    This function is to lead user to home page in terms of their different roles.
    :return: anchor to /user/home
    """
    if role == 'Teacher':
        course_obj = Teacher.query.filter(Teacher.name == name).all()
        course_list = []
        for course_item in course_obj:
            if course_item.teach_course not in course_list:
                course_list.append(course_item.teach_course)
        print("user.py teacher course_list", course_list)
        card_bg_css_list = ['bg-primary', 'bg-secondary', 'bg-success', 'bg-danger', 'bg-warning',
                            'bg-info', 'bg-light', 'bg-dark']
        course_display_style_info_dict = course_display_bg_info_dict_generator(course_list=course_list,
                                                                               bg_list=card_bg_css_list)
        print('courseDesigner.py teacher course_display_style_info_dict', course_display_style_info_dict)
        return render_template('home.html', title='DegreeOverview', name=name, role=role, course_list=course_list,
                               course_display_style_info_dict=course_display_style_info_dict)
    elif role == 'Student':
        course_obj = Student.query.filter(Student.name == name).all()
        course_list = []
        for course_item in course_obj:
            if course_item.course not in course_list:
                course_list.append(course_item.course)
        print("user.py student course_list", course_list)
        card_bg_css_list = ['bg-primary', 'bg-secondary', 'bg-success', 'bg-danger', 'bg-warning',
                            'bg-info', 'bg-light', 'bg-dark']
        course_display_style_info_dict = course_display_bg_info_dict_generator(course_list=course_list,
                                                                               bg_list=card_bg_css_list)
        print('courseDesigner.py student course_display_style_info_dict', course_display_style_info_dict)
        return render_template('home.html', title='DegreeOverview', name=name, role=role, course_list=course_list,
                               course_display_style_info_dict=course_display_style_info_dict)
    else:
        course_list = session.get('courses')
        print('/<role>/home/<name> session.get("courses")', course_list)
        course_obj = Course.query.filter(Course.course_code != "").all()
        course_list = []
        for course_item in course_obj:
            if course_item.course_code not in course_list:
                course_list.append(course_item.course_code)
        return render_template('home.html', title='DegreeOverview', name=name, role=role, course_list=course_list)


@userBP.route('/allCourse')
def load_allCourse():
    current_registered_course_obj = Course.query.filter(Course.course_code != '').all()
    current_registered_course_list = []
    for item in current_registered_course_obj:
        current_registered_course_list.append(item.course_code)
    print('user.py current_registered_course_list', current_registered_course_list)
    card_bg_css_list = ['bg-primary', 'bg-secondary', 'bg-success', 'bg-danger', 'bg-warning', 'bg-info', 'bg-light',
                        'bg-dark']
    course_display_style_info_dict = course_display_bg_info_dict_generator(course_list=current_registered_course_list,
                                                                           bg_list=card_bg_css_list)
    print('user.py course_display_style_info_dict', course_display_style_info_dict)
    return render_template('allCoursesDisplay.html', course_display_style_info_dict=course_display_style_info_dict)


@userBP.route('/register', methods=['GET', 'POST'])
def register():
    form = RegisterForm()
    # title = "Flask Stefan"
    if form.validate_on_submit():
        name = form.name.data
        email = form.email.data
        # password = bcrypt.generate_password_hash(form.password.data)
        age = form.age.data
        college = form.college.data
        major = form.major.data
        role = form.role.data
        password = form.password.data
        password = encryption(password=password)
        # password1 = encryption(password=password)
        print(password)
        # print(password1)
        # print(password == password1)
        info = {
            'name': name,
            'email': email,
            'age': age,
            'college': college,
            'major': major,
            'role': role,
            'password': password
        }
        print(info)
        if role == 'Student':
            student = Student(name=name, age=age, college=college, email=email, password=password, role=role)
            db.session.add(student)
        else:
            teacher = Teacher(name=name, age=age, email=email, password=password, role=role, major=major)
            db.session.add(teacher)
        db.session.commit()
        flash('Congrats, registration success!', category='success')
        return redirect(url_for('user.register_success', name=name, role=role))
    return render_template('register.html', form=form)


@userBP.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'GET':
        return render_template('login.html', title='Sample Login', header='Sample Case')
    else:
        email = request.form.get('email')
        _password = request.form.get('password')

        # print(email, type(email), '\n', _password, type(_password))
        # print(email == '')

        all_student = Student.query.order_by(Student.name).all()
        all_student_list = []
        for student in all_student:
            all_student_list.append(student.email)
        # print(Student.query.filter(Student.email == email).first().email in all_student_list)
        # print(all_student_list)

        all_teacher = Teacher.query.order_by(Teacher.name).all()
        all_teacher_list = []
        for teacher in all_teacher:
            all_teacher_list.append(teacher.email)
        # print(all_teacher_list)

        if re.match(r'[0-9a-zA-Z]+@mail.uic.edu.hk$', email):
            try:
                if Student.query.filter(Student.email == email).first().email in all_student_list:
                    # print(datetime.datetime.now(),
                    #       f"student {Student.query.filter(Student.email == email).first().name} is registered")
                    _password = encryption(password=_password)
                    if Student.query.filter(Student.email == email).first()._password == _password:
                        result = Student.query.filter(
                            and_(Student.email == email, Student._password == _password)).first()
                        print(result.role, result.name, "login, double hashed password =",
                              encryption(password=_password))

                        # print(result.name)
                        # print(result._password)
                        flash(f'Welcome {result.name}!', category='success')

                        # print name and role in console
                        session['name'] = result.name
                        session['role'] = result.role
                        print('session["name"] =', session.get('name'), 'session["role"] =', session.get('role'))

                        return redirect(url_for('user.student_login_success', name=result.name, role=result.role))
                        # return jsonify({
                        #     'code': 1200,
                        #     'message': f'http://127.0.0.1:5050/user/login/success/{result.name} success!'
                        # })
                    else:
                        flash('Password Error', category='danger')
                        return render_template('login.html', title='Sample Login', header='Sample Case')
                        # return jsonify({
                        #     'code': 1201,
                        #     'message': f'password {request.form.get("password")} is incorrect'
                        # })
                """ NoneType object will be detected if no match
                else:
                    flash("User is not registered", category='warning')
                    # return render_template('login.html', title='Sample Login', header='Sample Case')
                    return jsonify({
                        'code': 202,
                        'message': f'Student {request.form.get("email")} is not registered'
                    })
                """
                # flash("Valid emails", category='success')
                # tr = TimetableRecord.query.filter(and_(TimetableRecord.tid==tid, TimetableRecord.day == day,TimetableRecord.status!=2)).first()
                # print(result.data)
            except AttributeError:
                print(f"student {email} is not registered")
                flash(f"student {email} is not registered", category='warning')
                return render_template('login.html', title='Sample Login', header='Sample Case')
                # return jsonify({
                #     'code': 1202,
                #     'message': f'Student {request.form.get("email")} is not registered'
                # })
        elif re.match(r'[0-9a-zA-Z]+@uic.edu.hk$', email):
            try:
                if Teacher.query.filter(Teacher.email == email).first().email in all_teacher_list:
                    # print(f"{Teacher.query.filter(Teacher.email == email).first().name} is registered")
                    _password = encryption(password=_password)
                    if Teacher.query.filter(Teacher.email == email).first()._password == _password:
                        result = Teacher.query.filter(
                            and_(Teacher.email == email, Teacher._password == _password)).first()
                        print(result.role, result.name, "login, password =", _password)

                        # print(result.name)
                        # print(result._password)
                        # name = Teacher.query.filter(Teacher.email == email).first().name
                        # print(name, type(name))
                        flash(f'Welcome {result.name}!', category='success')

                        # print name and role in console
                        session['name'] = result.name
                        session['role'] = result.role
                        print('session["name"] =', session.get('name'), 'session["role"] =', session.get('role'))

                        course_obj = Course.query.filter(Course.course_code != "").all()
                        course_list = []
                        for course_item in course_obj:
                            if course_item.course_code not in course_list:
                                course_list.append(course_item.course_code)
                        print("user.py", course_list)

                        session['courses'] = course_list
                        print("user.py session.get('courses')", session.get('courses'))

                        if session.get('role') == 'Course Designer':
                            return redirect(url_for('user.course_designer_login_success',
                                                    name=result.name, role=result.role, course_list=course_list))

                        if session.get('role') == 'Teacher':
                            return redirect(url_for('user.teacher_login_success', name=result.name, role=result.role))
                        # return jsonify({
                        #     'code': 1200,
                        #     'message': f'http://127.0.0.1:5050/user/login/success/{result.name} success!'
                        # })
                    else:
                        flash('Password Error', category='danger')
                        return render_template('login.html', title='Sample Login', header='Sample Case')
                        # return jsonify({
                        #     'code': 1201,
                        #     'message': f'password {request.form.get("password")} is incorrect'
                        # })
                """ NoneType object will be detected if no match
                else:
                    flash(f"{email} is not registered", category='warning')
                    return render_template('login.html', title='Sample Login', header='Sample Case')
                # flash("Valid emails", category='success')
                # tr = TimetableRecord.query.filter(and_(TimetableRecord.tid==tid, TimetableRecord.day == day,TimetableRecord.status!=2)).first()
                # print(result.data)
                """
            except AttributeError:
                flash("User is not registered", category='warning')
                return render_template('login.html', title='Sample Login', header='Sample Case')
                # return jsonify({
                #     'code': 1202,
                #     'message': f'Teacher {request.form.get("email")} is not registered'
                # })
        else:
            # return "invalid email"
            flash('Invalid Email', category='danger')
            return render_template('login.html', title='Login failed', header='Sample Case')
            # return jsonify({
            #     'code': 1203,
            #     'message': f'User {request.form.get("email")} is invalid'
            # })

        # if result.role == "Student":
        #     print(result.name)
        #     print(result._password)
        #     name = Student.query.filter(Student.email == email).first().name
        #     print(name, type(name))
        #     return render_template('studentSuccess.html', title='Success Login', name=name)
        # elif result.role == "Teacher":
        #     print(result.name, result._password)
        #     name = Teacher.query.filter(Teacher.email == email).first().name
        #     return redirect(url_for('user.login_success', name=name, role=result.role))
        # else:
        #     return render_template('login.html', title='Sample Login', header='Sample Case')


@userBP.route('/logout', methods=['GET', 'POST'])
def logout():
    session.clear()
    # print(session.get('role'))
    if session.get('role') is None:
        print('Logout Successfully!')
    return redirect(url_for('user.login'))


@userBP.route('/search/test/<search_content>', methods=['GET', 'POST'])
def search(search_content):
    search_meta = "%{}%".format(search_content)
    print('controller/user.py search_meta', search_meta)
    # Search in course database: search content in course database
    course_search_result_obj = Course.query.filter(Course.course_code.like(search_meta)).all()
    course_search_result_list = []
    for item in course_search_result_obj:
        if item.course_code not in course_search_result_list:
            course_search_result_list.append(item.course_code)
    print('controller/user.py course_search_result_list', course_search_result_list, len(course_search_result_list))

    # Search in CILO database: search content in CILO database
    CILO_search_result_obj = CILO.query.filter(CILO.course_CILO.like(search_meta)).all()
    CILO_search_result_list = []
    for item in CILO_search_result_obj:
        if item.course_code not in CILO_search_result_list:
            CILO_search_result_list.append(item.course_code)
    print('controller/user.py CILO_search_result_list', CILO_search_result_list, len(CILO_search_result_list))
    courseDependencies_template = 'renderCourseDependencies.html'
    return render_template('searchResultPage.html',
                           search_content=search_content,
                           course_search_result_list=course_search_result_list,
                           course_search_result_list_len=len(course_search_result_list),
                           CILO_search_result_list=CILO_search_result_list,
                           CILO_search_result_list_len=len(CILO_search_result_list),
                           courseDependencies_template=courseDependencies_template)
