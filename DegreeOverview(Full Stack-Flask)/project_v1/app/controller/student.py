import random
import hashlib

from flask import Blueprint, render_template, request
from app.models.base import db
from app.models.student import Student
from app.models.course import Course

studentBP = Blueprint('student', __name__)


def encryption(password):
    """
    This function is to encrypt password by using hash algorithm
    :param password: string type data
    :return: hashed password in hexadecimal format
    """
    hash_password = hashlib.sha1(password.encode())
    # print(hash_password.hexdigest(), type(hash_password.hexdigest))
    return hash_password.hexdigest()


def student_generator():
    # init the number of students who should be generated
    number = 100
    students = []
    for i in range(number):
        students.append('student' + str(i + 1))
    return students


def students_age_generator(students_list):
    students_age_dict = {}
    for student in students_list:
        students_age_dict[student] = random.randint(17, 24)
    return students_age_dict


def students_email_generator(students_list):
    students_email_dict = {}
    for student in students_list:
        students_email_dict[student] = student + '@mail.uic.edu.hk'
    return students_email_dict


def is_valid(participants_dict):
    for item in participants_dict:
        if participants_dict[item] < 20:
            return False
    return True


@studentBP.route('', methods=['GET'])
def get_student():
    with db.auto_commit():
        student = Student('stu1', 20, 'UIC', 'stu1@mail.uic.edu.hk', '123456', 's')
        # 数据库的insert操作
        db.session.add(student)
    return 'hello student'


# !important: this route can only run once to initialize students
# If drop student table, the route should be run once ONLY
@studentBP.route('/init', methods=['GET'])
def init():
    registered_course_obj = Course.query.filter(Course.course_code != '').all()
    registered_course_list = []
    for course_obj in registered_course_obj:
        if course_obj.course_code not in registered_course_list:
            registered_course_list.append(course_obj.course_code)
    # init participants_number_dict
    participants_number_dict = {}
    for course in registered_course_list:
        participants_number_dict[course] = 0

    # init student number
    number = 0

    # init insertion times
    insertion_time = 0

    # ideal insertion time
    ideal_insertion_time = 20 * len(registered_course_list)

    while not is_valid(participants_dict=participants_number_dict):
        insertion_time += 1
        if insertion_time < ideal_insertion_time:
            number += 1
            name = 'student' + str(number)
            age = random.randint(17, 24)
            email = name + '@mail.uic.edu.hk'
            password = encryption('123456789')
            role = 'Student'
            college = 'UIC'
            course = random.choice(registered_course_list)
            student = Student(name=name,
                              age=age,
                              email=email,
                              password=password,
                              role=role,
                              college=college,
                              course=course)
            db.session.add(student)
            db.session.commit()
            participants_number_dict[course] += 1
            print(f'controller/student.py insert {name} into database Student. '
                  f'There are {participants_number_dict[course]} students in {course} now.')
        else:
            # update participants_number_dict to optimize computing power
            temp_dict = participants_number_dict.copy()
            for item in participants_number_dict:
                if participants_number_dict[item] >= 20:
                    print(f'controller/student.py {item} has been full of students ({participants_number_dict[item]})!')
                    temp_dict.pop(item)
                    registered_course_list.remove(item)
            participants_number_dict = temp_dict.copy()

            number += 1
            name = 'student' + str(number)
            age = random.randint(17, 24)
            email = name + '@mail.uic.edu.hk'
            password = encryption('123456789')
            role = 'Student'
            college = 'UIC'
            course = random.choice(registered_course_list)
            student = Student(name=name,
                              age=age,
                              email=email,
                              password=password,
                              role=role,
                              college=college,
                              course=course)
            db.session.add(student)
            db.session.commit()
            participants_number_dict[course] += 1
            print(f'controller/student.py insert {name} into database Student. '
                  f'There are {participants_number_dict[course]} students in {course} now.')

    return 'Finish init students'
