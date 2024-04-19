import random
import hashlib

from flask import Blueprint, render_template, request
from app.models.base import db
from app.models.teacher import Teacher
from app.models.course import Course

teacherBP = Blueprint('teacher', __name__)


def encryption(password):
    """
    This function is to encrypt password by using hash algorithm
    :param password: string type data
    :return: hashed password in hexadecimal format
    """
    hash_password = hashlib.sha1(password.encode())
    # print(hash_password.hexdigest(), type(hash_password.hexdigest))
    return hash_password.hexdigest()


# !important
# This route can only run once
@teacherBP.route('', methods=['GET'])
def get_teacher():
    with db.auto_commit():
        teacher = Teacher(
            name='teacher3',
            age=44,
            email='teacher3@uic.edu.hk',
            password=encryption('123456789'),
            role='Course Designer',
            major='CST',
            teach_course='comp1001'
        )
        # 数据库的insert操作
        db.session.add(teacher)

    return 'hello teacher'


# !important
# This route can only run once
@teacherBP.route('/init', methods=['GET'])
def init():
    roles = ['Teacher', 'Course Designer']
    teachers_name_list = ['teacher1', 'teacher2', 'teacher3', 'teacher4', 'teacher5', 'teacher6', 'teacher7',
                          'teacher8', 'teacher9', 'teacher10', 'teacher11', 'teacher12', 'teacher13', 'teacher14',
                          'teacher15', 'teacher16', 'teacher17']
    majors_list = ['CST', 'PRA', 'DS', 'FM', 'FST', 'APSY', 'FIN', 'MKT', 'AE', 'ELLS', 'ATS']
    teacher_email_dict = {
        'teacher1': 'teacher1@uic.edu.hk',
        'teacher2': 'teacher2@uic.edu.hk',
        'teacher3': 'teacher3@uic.edu.hk',
        'teacher4': 'teacher4@uic.edu.hk',
        'teacher5': 'teacher5@uic.edu.hk',
        'teacher6': 'teacher6@uic.edu.hk',
        'teacher7': 'teacher7@uic.edu.hk',
        'teacher8': 'teacher8@uic.edu.hk',
        'teacher9': 'teacher9@uic.edu.hk',
        'teacher10': 'teacher10@uic.edu.hk',
        'teacher11': 'teacher11@uic.edu.hk',
        'teacher12': 'teacher12@uic.edu.hk',
        'teacher13': 'teacher13@uic.edu.hk',
        'teacher14': 'teacher14@uic.edu.hk',
        'teacher15': 'teacher15@uic.edu.hk',
        'teacher16': 'teacher16@uic.edu.hk',
        'teacher17': 'teacher17@uic.edu.hk'
    }
    teacher_age_dict = {
        'teacher1': random.randint(18, 65),
        'teacher2': random.randint(18, 65),
        'teacher3': 44,
        'teacher4': random.randint(18, 65),
        'teacher5': random.randint(18, 65),
        'teacher6': random.randint(18, 65),
        'teacher7': random.randint(18, 65),
        'teacher8': random.randint(18, 65),
        'teacher9': random.randint(18, 65),
        'teacher10': random.randint(18, 65),
        'teacher11': random.randint(18, 65),
        'teacher12': random.randint(18, 65),
        'teacher13': random.randint(18, 65),
        'teacher14': random.randint(18, 65),
        'teacher15': random.randint(18, 65),
        'teacher16': random.randint(18, 65),
        'teacher17': random.randint(18, 65)
    }
    teacher_role_dict = {
        'teacher1': random.choice(roles),
        'teacher2': random.choice(roles),
        'teacher3': 'Course Designer',
        'teacher4': random.choice(roles),
        'teacher5': random.choice(roles),
        'teacher6': random.choice(roles),
        'teacher7': random.choice(roles),
        'teacher8': random.choice(roles),
        'teacher9': random.choice(roles),
        'teacher10': random.choice(roles),
        'teacher11': random.choice(roles),
        'teacher12': random.choice(roles),
        'teacher13': random.choice(roles),
        'teacher14': random.choice(roles),
        'teacher15': random.choice(roles),
        'teacher16': random.choice(roles),
        'teacher17': random.choice(roles)
    }
    teacher_major_dict = {
        'teacher1': random.choice(majors_list),
        'teacher2': random.choice(majors_list),
        'teacher3': 'CST',
        'teacher4': random.choice(majors_list),
        'teacher5': random.choice(majors_list),
        'teacher6': random.choice(majors_list),
        'teacher7': random.choice(majors_list),
        'teacher8': random.choice(majors_list),
        'teacher9': random.choice(majors_list),
        'teacher10': random.choice(majors_list),
        'teacher11': random.choice(majors_list),
        'teacher12': random.choice(majors_list),
        'teacher13': random.choice(majors_list),
        'teacher14': random.choice(majors_list),
        'teacher15': random.choice(majors_list),
        'teacher16': random.choice(majors_list),
        'teacher17': random.choice(majors_list)
    }

    registered_course_obj = Course.query.filter(Course.course_code != '').all()
    registered_course_list = []
    for registered_course in registered_course_obj:
        registered_course_list.append(registered_course.course_code)
    print('controller/teacher.py registered_course_list', registered_course_list)

    for course in registered_course_list:
        teacher_name = random.choice(teachers_name_list)
        teacher = Teacher(
            name=teacher_name,
            age=teacher_age_dict[teacher_name],
            email=teacher_email_dict[teacher_name],
            password=encryption('123456789'),
            role=teacher_role_dict[teacher_name],
            major=teacher_major_dict[teacher_name],
            teach_course=course
        )
        db.session.add(teacher)
        db.session.commit()

    return f'successfully create {len(teachers_name_list)} teachers in teacher database'
