import random
import hashlib

from flask import Blueprint, render_template, request
from app.models.base import db
from app.models.student import Student
from app.models.course import Course, Mapping
from app.models.grade import Grade

gradeBP = Blueprint('grade', __name__)


def encryption(password):
    """
    This function is to encrypt password by using hash algorithm
    :param password: string type data
    :return: hashed password in hexadecimal format
    """
    hash_password = hashlib.sha1(password.encode())
    # print(hash_password.hexdigest(), type(hash_password.hexdigest))
    return hash_password.hexdigest()


def student_id_generator(student_name):
    suffix_number = student_name[student_name.index('t') + 6:]
    return str(1830000000 + int(suffix_number))


def assessment_percentage_generator(percentage):
    number = percentage[:percentage.index('%')]
    return float(number)


@gradeBP.route('/test')
def test():
    grade = Grade(
        student_id='123456',
        student_name='asdf',
        course_code='computer',
        assessment_method='attendance',
        assessment_method_grade=12.5
    )
    db.session.add(grade)
    db.session.commit()
    return 'grade test good!'


# If drop grade table, the route is required to run once
@gradeBP.route('/init')
def init():
    # Get all courses
    # Loop each course
    # Get all students who take this course
    # Get all assessment methods according to the course
    # Generate random score for each student's each assessment method according to percentage (Use Mapping)

    insert_op = 0

    registered_course_obj = Course.query.filter(Course.course_code != '').all()
    registered_course_list = []
    for item in registered_course_obj:
        if item.course_code not in registered_course_list:
            registered_course_list.append(item.course_code)
    print('controller/grade.py registered_course_list', registered_course_list, len(registered_course_list))

    for course in registered_course_list:
        students_registered_in_current_course_obj = Student.query.filter_by(course=course).all()
        if len(students_registered_in_current_course_obj) == 0:
            # Register 20-25 students to this empty course
            number_of_students_to_be_registered = random.randint(20, 26)
            students_to_be_registered_list = []
            all_students_obj = Student.query.filter(Student.name != '').all()
            all_students_list = []
            for item in all_students_obj:
                if item.name not in all_students_list:
                    all_students_list.append(item.name)
            print('controller/grade.py all_students_list', all_students_list, len(all_students_list))
            while len(students_to_be_registered_list) < number_of_students_to_be_registered:
                student_selected = random.choice(all_students_list)
                if student_selected not in students_to_be_registered_list:
                    students_to_be_registered_list.append(student_selected)
            print('controller/grade.py students_to_be_registered_list', students_to_be_registered_list,
                  len(students_to_be_registered_list))

            # Insert these students into current empty enrollment course
            for each_student in students_to_be_registered_list:
                age = Student.query.filter_by(name=each_student).first().age
                email = Student.query.filter_by(name=each_student).first().email
                password = encryption('123456789')
                role = 'Student'
                college = 'UIC'
                insert_data = Student(
                    name=each_student,
                    age=age,
                    email=email,
                    password=password,
                    role=role,
                    college=college,
                    course=course
                )
                db.session.add(insert_data)
                db.session.commit()
                print(f'controller/grade.py register {each_student} into {course} successfully!')

        students_registered_in_current_course_obj = Student.query.filter_by(course=course).all()
        students_registered_in_current_course_list = []
        for item in students_registered_in_current_course_obj:
            if item.name not in students_registered_in_current_course_list:
                students_registered_in_current_course_list.append(item.name)
        print(f'controller/grade.py students_registered_in_current_course_list course={course}',
              students_registered_in_current_course_list, len(students_registered_in_current_course_list))

        students_registered_in_current_course_id_mapping = {}
        for registered_student in students_registered_in_current_course_list:
            students_registered_in_current_course_id_mapping[registered_student] = student_id_generator(
                registered_student)
        print('controller/grade.py students_registered_in_current_course_id_mapping',
              students_registered_in_current_course_id_mapping)

        # Query data in mapping table
        assessment_method_of_current_course_obj = Mapping.query.filter_by(course_code=course).all()
        if len(assessment_method_of_current_course_obj) == 0:
            continue
        else:
            assessment_method_of_current_course_list = []
            for item in assessment_method_of_current_course_obj:
                if item.assessment_method not in assessment_method_of_current_course_list:
                    assessment_method_of_current_course_list.append(item.assessment_method)
            print('controller/grade.py assessment_method_of_current_course_list',
                  assessment_method_of_current_course_list)
            assessment_method_of_current_course_percentage_mapping = {}
            for assessment in assessment_method_of_current_course_list:
                assessment_method_of_current_course_percentage_mapping[assessment] = assessment_percentage_generator(
                    percentage=Mapping.query.filter_by(course_code=course,
                                                       assessment_method=assessment).first().percentage
                )
            print('controller/grade.py assessment_method_of_current_course_percentage_mapping',
                  assessment_method_of_current_course_percentage_mapping)

            # Insert each line grade data into grade database
            for student_item in students_registered_in_current_course_id_mapping:
                for assessment_method_item in assessment_method_of_current_course_percentage_mapping:
                    randomNumber = random.random()
                    score = round(
                        assessment_method_of_current_course_percentage_mapping[assessment_method_item] * randomNumber,
                        2)
                    grade = Grade(
                        student_id=students_registered_in_current_course_id_mapping[student_item],
                        student_name=student_item,
                        course_code=course,
                        assessment_method=assessment_method_item,
                        assessment_method_grade=score
                    )
                    db.session.add(grade)
                    db.session.commit()
                    insert_op += 1
                    print(f'controller/grade.py {insert_op} rows of grade insert into database '
                          f'{students_registered_in_current_course_id_mapping[student_item]} '
                          f'{student_item} '
                          f'{course} '
                          f'{assessment_method_item} '
                          f'{score}')
    return 'Grade init finished!'
