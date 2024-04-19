import random
import hashlib

from flask import Blueprint, render_template, request, jsonify, session, flash, url_for, redirect
from sqlalchemy import Column, String, Integer, orm, ForeignKey, Float
from app.models.base import db, Base
from app.models.course import Course, CILO, Assessment, Mapping
from app.models.teacher import Teacher
from app.models.student import Student
from app.models.grade import Grade

courseDesignerBP = Blueprint('courseDesigner', __name__)


def encryption(password):
    """
    This function is to encrypt password by using hash algorithm
    :param password: string type data
    :return: hashed password in hexadecimal format
    """
    hash_password = hashlib.sha1(password.encode())
    # print(hash_password.hexdigest(), type(hash_password.hexdigest))
    return hash_password.hexdigest()


def customize_list(example_list):
    # Remove Last item, in project, aka percentage
    example_list.pop()
    return example_list


def string_splicing(CILO_list, CILO_dict):
    result = ''
    if len(CILO_list) == 1:
        result += str(CILO_dict[CILO_list[0]])
    else:
        result += str(CILO_dict[CILO_list[0]])
        for item in CILO_list[1:]:
            result += '-' + str(CILO_dict[item])
    return result


def stringfy_percentage(percentage_data):
    return percentage_data + '%'


def course_display_bg_info_dict_generator(course_list, bg_list):
    course_display_bg_info_dict = {}
    for course in course_list:
        bg_style = bg_list[course_list.index(course) % len(bg_list)]
        course_name = Course.query.filter_by(course_code=course).first().course_name
        participant_num = len(Student.query.filter_by(course=course).all())
        dict_value = [bg_style, course_name, participant_num]
        course_display_bg_info_dict[course] = dict_value
    return course_display_bg_info_dict


def select_students(number, students_list):
    selected_students = []
    while len(selected_students) != number:
        student = random.choice(students_list)
        if student not in selected_students:
            selected_students.append(student)
    return selected_students


def get_assessment_method(course):
    assessment_method_obj = Assessment.query.filter_by(course_code=course).all()
    assessment_method_list = []
    for item in assessment_method_obj:
        if item.assessment_method not in assessment_method_list:
            assessment_method_list.append(item.assessment_method)
    print('controller/courseDesigner.py assessment_method_list', assessment_method_list)

    # class BaseModel(Base):
    #     __tablename__ = f'{suffix}'
    #     __table_args__ = {'extend_existing': True}
    #
    #     student_id = Column(String(20), primary_key=True, nullable=False)
    #     name = Column(String(20), nullable=False)
    #     for assessment_method in assessment_method_list:
    #         assessment_method = Column(Float, nullable=False)
    #     total = Column(Float, nullable=False)
    # return BaseModel
    return assessment_method_list


def student_id_generator(student_name):
    suffix_number = student_name[student_name.index('t') + 6:]
    return str(1830000000 + int(suffix_number))


def assessment_percentage_generator(percentage):
    number = percentage[:percentage.index('%')]
    return float(number)


@courseDesignerBP.route('<role>/<name>/main')
def load_course_designer_main_page(name, role):
    teacher_name = session.get('name')
    print('controller/courseDesigner.py teacher_name', teacher_name)
    taught_courses_obj = Teacher.query.filter(Teacher.name == teacher_name).all()
    taught_course_list = []
    for item in taught_courses_obj:
        taught_course_list.append(item.teach_course)
    print('courseDesigner.py taught_course_list', taught_course_list)
    card_bg_css_list = ['bg-primary', 'bg-secondary', 'bg-success', 'bg-danger', 'bg-warning', 'bg-info', 'bg-light',
                        'bg-dark']
    course_display_style_info_dict = course_display_bg_info_dict_generator(course_list=taught_course_list,
                                                                           bg_list=card_bg_css_list)
    print('courseDesigner.py course_display_style_info_dict', course_display_style_info_dict)
    return render_template('teacherMainPage.html', name=name, role=role,
                           course_display_style_info_dict=course_display_style_info_dict)


@courseDesignerBP.route('/addDetails', methods=['GET', 'POST'])
def load_home():
    """
    This function is to display other details for creating a course.
    :return: anchor to /addDetails
    """
    createCourseInfo_list = request.form.getlist('createCourseInfo')
    session['currentCreatingCourseCode'] = createCourseInfo_list[0]
    print("courseDesigner.py createCourseInfo_list from createCourse.html", createCourseInfo_list, 'length',
          len(createCourseInfo_list))
    if '' in createCourseInfo_list:
        flash('Please input all first three input textarea!', category='danger')
        # print("FUCK")
        print('courseDesigner.py course create with missing info. FAILED!')
    # for item in createCourseInfo_list:
    #     if item == '':
    #         # return '<div class="alert alert-danger" role="alert">Please input all first three input textarea</div>'
    #         print('courseDesigner.py course create with missing info. FAILED!')
    #         flash('Please input all first three input textarea!', category='danger')

    # Insert into database conditionally
    registered_course = Course.query.filter(Course.course_code != '').all()
    registered_course_list = []
    for course in registered_course:
        if course.course_code not in registered_course_list:
            registered_course_list.append(course.course_code)
    print('Registered Course List', registered_course_list)

    # Initialization for getting CILOs for prerequisite
    prerequisite_CILOs_list = []

    if createCourseInfo_list[0] in registered_course_list or '' in createCourseInfo_list[:2]:
        # @CreateTime: 2021-05-28 15:30:33
        # TODO: beauty repeatCourseRegisterError.html and make page logic right (Priority: LOW) Finish Date: 2021-05-30
        return render_template('repeatCourseRegisterError.html', role=session.get('role'), name=session.get('name'))
    else:
        if len(createCourseInfo_list) == 3:
            course = Course(
                course_code=createCourseInfo_list[0],
                course_name=createCourseInfo_list[1],
                course_type=createCourseInfo_list[2],
                prerequisite=""
            )
            db.session.add(course)
            db.session.commit()
        # impossible case
        elif len(createCourseInfo_list) < 3:
            return "<h1>WARNING</h1>"
        else:
            pre_course_list_len = len(createCourseInfo_list) - 3
            print('courseDesigner.py pre_course_list_len', pre_course_list_len)
            slice_prerequisite_list = createCourseInfo_list[3:]
            print('courseDesigner.py slice_prerequisite_list', slice_prerequisite_list)

            # Get CILOs for prerequisite
            for prerequisite in slice_prerequisite_list:
                prerequisite_CILOs = CILO.query.filter_by(course_code=prerequisite).all()
                for prerequisite_CILO in prerequisite_CILOs:
                    prerequisite_CILOs_list.append(prerequisite_CILO.course_CILO)
            print('courseDesigner.py prerequisite_CILOs_list', prerequisite_CILOs_list)
            # Insert new course data into database
            for insert_course_row_data in range(1, pre_course_list_len + 1):
                course = Course(
                    course_code=createCourseInfo_list[0],
                    course_name=createCourseInfo_list[1],
                    course_type=createCourseInfo_list[2],
                    prerequisite=createCourseInfo_list[2 + insert_course_row_data]
                )
                db.session.add(course)
                db.session.commit()
            print('courseDesigner.py insert', pre_course_list_len, 'row for course', createCourseInfo_list[0],
                  'successfully!')
        print('session["name"] =', session.get('name'), 'session["role"] =', session.get('role'))

    # course_obj = Course.query.filter(Course.course_code != "").all()
    # course_list = []
    # for course_item in course_obj:
    #     if course_item.course_code not in course_list:
    #         course_list.append(course_item.course_code)
    # print(course_list)

    # @CreateTime: 2021-05-28 16:07:05
    # TODO: if the course does not have prerequisite, then change the information in 'setCILOsOnlineModalForm.html'.
    #  Dismiss "Prerequisite CILOs List" badge or other address method
    #  (Priority: LOW) Finish Date: 2021-05-30

    teacher_obj = Teacher.query.filter(Teacher.name != '').all()
    teacher_list = []
    for item in teacher_obj:
        if item.name not in teacher_list:
            teacher_list.append(item.name)
    print('controller/courseDesigner.py teacher_list', teacher_list)

    # Assign a teacher to teach this course
    teacher_assigned = random.choice(teacher_list)
    teacher_assigned_info_obj = Teacher.query.filter_by(name=teacher_assigned).first()
    teacher = Teacher(
        name=teacher_assigned_info_obj.name,
        age=teacher_assigned_info_obj.age,
        email=teacher_assigned_info_obj.email,
        password=encryption('123456789'),
        role=teacher_assigned_info_obj.role,
        major=teacher_assigned_info_obj.major,
        teach_course=createCourseInfo_list[0]
    )
    db.session.add(teacher)
    db.session.commit()

    print('courseDesigner.py', session.get('courses'))
    # store status from "none" to "block"
    status = "block"
    role = session.get('role')
    form_status = 'none'
    tab_CILO_isActive = 'active'
    tab_assessment_isActive = ''
    tab_mapping_isActive = ''
    tab_content_CILO_isActive = 'active'
    tab_content_assessment_isActive = ''
    tab_content_mapping_isActive = ''
    tab_content_CILO_isShow = 'show'
    tab_content_assessment_isShow = ''
    tab_content_mapping_isShow = ''
    return render_template('home.html', status=status, role=role, form_status=form_status,
                           tab_CILO_isActive=tab_CILO_isActive,
                           tab_assessment_isActive=tab_assessment_isActive,
                           tab_mapping_isActive=tab_mapping_isActive,
                           tab_content_CILO_isActive=tab_content_CILO_isActive,
                           tab_content_assessment_isActive=tab_content_assessment_isActive,
                           tab_content_mapping_isActive=tab_content_mapping_isActive,
                           tab_content_CILO_isShow=tab_content_CILO_isShow,
                           tab_content_assessment_isShow=tab_content_assessment_isShow,
                           tab_content_mapping_isShow=tab_content_mapping_isShow,
                           prerequisite_CILOs_list=prerequisite_CILOs_list)


@courseDesignerBP.route('/test', methods=['GET', 'POST'])
def test():
    print('test')
    hobby_list = request.form.getlist("hobby")
    print(hobby_list)
    with db.auto_commit():
        course = Course(
            course_code='COMP1001',
            course_name='course1',
            course_CILO='CILO1',
            course_prerequisite='pre1',
            course_ass_method='method2',
            course_type='FE'
        )
        # 数据库的insert操作
        db.session.add(course)
    return 'hello course designer'


@courseDesignerBP.route('/add', methods=['GET', 'POST'])
def add() -> None:
    print('test')
    setCILOsOnlineModalForm_list = request.form.getlist("setCILOsOnlineModalForm")
    print(setCILOsOnlineModalForm_list)
    createCourseInfo_list = request.form.getlist('createCourseInfo')
    print(createCourseInfo_list)

    return None


@courseDesignerBP.route('/addCILOs', methods=['GET', 'POST'])
def addCILOs():
    raw_getCILOs_list = request.form.getlist('CILO')
    getCILOs_list = []
    for item in raw_getCILOs_list:
        if item != "":
            getCILOs_list.append(item)
    print('courseDesigner.py getCILOs_list', getCILOs_list)
    course_code = session.get('currentCreatingCourseCode')
    for CILO_index in range(len(getCILOs_list)):
        insert_CILO_data = CILO(
            course_code=course_code,
            course_CILO=getCILOs_list[CILO_index]
        )
        db.session.add(insert_CILO_data)
        db.session.commit()

    # Display settings
    # store status from "none" to "block"
    status = "block"
    role = session.get('role')
    form_status = 'none'
    tab_CILO_isActive = ''
    tab_assessment_isActive = 'active'
    tab_mapping_isActive = ''
    tab_content_CILO_isActive = ''
    tab_content_assessment_isActive = 'active'
    tab_content_mapping_isActive = ''
    tab_content_CILO_isShow = ''
    tab_content_assessment_isShow = 'show'
    tab_content_mapping_isShow = ''
    return render_template('home.html', status=status, role=role, form_status=form_status,
                           tab_CILO_isActive=tab_CILO_isActive,
                           tab_assessment_isActive=tab_assessment_isActive,
                           tab_mapping_isActive=tab_mapping_isActive,
                           tab_content_CILO_isActive=tab_content_CILO_isActive,
                           tab_content_assessment_isActive=tab_content_assessment_isActive,
                           tab_content_mapping_isActive=tab_content_mapping_isActive,
                           tab_content_CILO_isShow=tab_content_CILO_isShow,
                           tab_content_assessment_isShow=tab_content_assessment_isShow,
                           tab_content_mapping_isShow=tab_content_mapping_isShow,
                           getCILOs_list=getCILOs_list,
                           course_code=course_code)


@courseDesignerBP.route('/addAssessments', methods=['GET', 'POST'])
def addAssessments():
    raw_getAssessments_list = request.form.getlist('assessment')
    getAssessments_list = []
    for item in raw_getAssessments_list:
        if item != '':
            getAssessments_list.append(item)
    print(getAssessments_list)
    # TODO: Make sure non-empty after submission, like ['Attendance', '', '']
    course_code = session.get('currentCreatingCourseCode')
    for assessment_index in range(len(getAssessments_list)):
        insert_assessment_data = Assessment(
            course_code=course_code,
            assessment_method=getAssessments_list[assessment_index]
        )
        db.session.add(insert_assessment_data)
        db.session.commit()

    # get CILOs for mapping page
    CILOs_result = CILO.query.filter_by(course_code=course_code).all()
    CILOs_result_list = []
    for item in CILOs_result:
        CILOs_result_list.append(item.course_CILO)
    print(CILOs_result_list)

    status = "block"
    role = session.get('role')
    form_status = 'none'
    tab_CILO_isActive = ''
    tab_assessment_isActive = ''
    tab_mapping_isActive = 'active'
    tab_content_CILO_isActive = ''
    tab_content_assessment_isActive = ''
    tab_content_mapping_isActive = 'active'
    tab_content_CILO_isShow = ''
    tab_content_assessment_isShow = ''
    tab_content_mapping_isShow = 'show'
    return render_template('home.html', status=status, role=role, form_status=form_status,
                           tab_CILO_isActive=tab_CILO_isActive,
                           tab_assessment_isActive=tab_assessment_isActive,
                           tab_mapping_isActive=tab_mapping_isActive,
                           tab_content_CILO_isActive=tab_content_CILO_isActive,
                           tab_content_assessment_isActive=tab_content_assessment_isActive,
                           tab_content_mapping_isActive=tab_content_mapping_isActive,
                           tab_content_CILO_isShow=tab_content_CILO_isShow,
                           tab_content_assessment_isShow=tab_content_assessment_isShow,
                           tab_content_mapping_isShow=tab_content_mapping_isShow,
                           getAssessments_list=getAssessments_list,
                           CILOs_result_list=CILOs_result_list,
                           course_code=course_code)


@courseDesignerBP.route('/assessmentCILOMapping', methods=['GET', 'POST'])
def mapping():
    role = session.get('role')
    name = session.get('name')
    percentage_list = request.form.getlist('mapping')
    total = 0
    for percentage in percentage_list:
        total += int(percentage)
    print('@mapping total percentage', total)

    course_code = session.get('currentCreatingCourseCode')

    # Get assessment list for current Creating Course Code
    assessment_retrieve = Assessment.query.filter_by(course_code=course_code).all()
    assessment_list = []
    for assessment in assessment_retrieve:
        assessment_list.append(assessment.assessment_method)
    print('courseDesigner.py assessment_list', assessment_list)

    # Get CILO list for current Creating Course Code
    CILOs_retrieve = CILO.query.filter_by(course_code=course_code).all()
    CILOs_list = []
    for item in CILOs_retrieve:
        CILOs_list.append(item.course_CILO)
    print('courseDesigner.py CILOs_list', CILOs_list)

    CILO_num = 0
    CILO_dict = {}
    for item in CILOs_list:
        CILO_num += 1
        CILO_dict[item] = CILO_num
    print('courseDesigner.py CILO_dict', CILO_dict)

    # Insert the mapping relationship of Assessment methods and CILOs into database
    for assessment in assessment_list:
        row_data = request.form.getlist(assessment)
        print('courseDesigner.py row_data', row_data)
        stringfy_percentage_retrieve = stringfy_percentage(row_data[len(row_data) - 1])
        print('courseDesigner.py stringfy_percentage_retrieve', stringfy_percentage_retrieve)
        row_CILO_data = customize_list(example_list=row_data)
        print('courseDesigner.py row_CILO_data', row_CILO_data)
        CILO_num_string = string_splicing(CILO_list=row_CILO_data, CILO_dict=CILO_dict)
        print('courseDesigner.py CILO_num_string', CILO_num_string)
        # @CreateTime: 2021-05-28 17:57:31
        # TODO: Modify mapping insertion function so that making sure that all CILOs are select at least once
        #  (Priority: MIDDLE)
        #  Finish Date: 2021-05-30
        # @CreateTime: 2021-05-28 18:41:10
        # TODO: 100 percent check (Priority: MIDDLE) Finish Date: 2021-05-30
        mapping_data = Mapping(
            course_code=course_code,
            assessment_method=assessment,
            percentage=stringfy_percentage_retrieve,
            course_CILO_number=CILO_num_string
        )
        db.session.add(mapping_data)
        db.session.commit()
    print('courseDesigner.py mapping finished!')
    print(f'Congrats, you have created a new course {course_code} successfully!')
    flash(f'Congrats, you have created a new course {course_code} successfully!', category='success')
    session.pop('currentCreatingCourseCode')
    try:
        session.pop('courses')
    except KeyError:
        print('controller/courseDesigner.py session["course"] does not exist')
    print('courseDesigner.py sessions', session)

    # Assign 20-25 students to this course
    num_of_student = random.randint(20, 26)
    all_students_obj = Student.query.filter(name != '').all()
    all_students_list = []
    for item in all_students_obj:
        if item.name not in all_students_list:
            all_students_list.append(item.name)
    print('controller/courseDesigner.py all_students_list', all_students_list)

    students_selected_list = select_students(number=num_of_student, students_list=all_students_list)
    print('controller/courseDesigner.py students_selected_list', students_selected_list)

    # Register selected students to this course
    for student_name in students_selected_list:
        student = Student(
            name=student_name,
            age=Student.query.filter_by(name=student_name).first().age,
            email=Student.query.filter_by(name=student_name).first().email,
            password=encryption('123456789'),
            role=Student.query.filter_by(name=student_name).first().role,
            college=Student.query.filter_by(name=student_name).first().college,
            course=course_code
        )
        db.session.add(student)
        db.session.commit()
        print(f'controller/courseDesigner.py {student_name} has been registered into {course_code} successfully!')

    # Generate grade for these students in students_selected_list
    insert_op = 0
    # Mapping id and name of students
    students_registered_in_current_course_id_mapping = {}
    for registered_student in students_selected_list:
        students_registered_in_current_course_id_mapping[registered_student] = student_id_generator(
            registered_student)
    print('controller/courseDesigner.py students_registered_in_current_course_id_mapping',
          students_registered_in_current_course_id_mapping)

    # Mapping assessment methods and percentage
    assessment_method_of_current_course_obj = Mapping.query.filter_by(course_code=course_code).all()
    assessment_method_of_current_course_list = []
    for item in assessment_method_of_current_course_obj:
        if item.assessment_method not in assessment_method_of_current_course_list:
            assessment_method_of_current_course_list.append(item.assessment_method)
    print('controller/courseDesigner.py assessment_method_of_current_course_list',
          assessment_method_of_current_course_list)
    assessment_method_of_current_course_percentage_mapping = {}
    for assessment in assessment_method_of_current_course_list:
        assessment_method_of_current_course_percentage_mapping[assessment] = assessment_percentage_generator(
            percentage=Mapping.query.filter_by(course_code=course_code,
                                               assessment_method=assessment).first().percentage)
    print('controller/courseDesigner.py assessment_method_of_current_course_percentage_mapping',
          assessment_method_of_current_course_percentage_mapping)

    # Insert each line grade data into grade database
    for student_item in students_registered_in_current_course_id_mapping:
        for assessment_method_item in assessment_method_of_current_course_percentage_mapping:
            randomNumber = random.random()
            score = round(assessment_method_of_current_course_percentage_mapping[assessment_method_item] * randomNumber,
                          2)
            grade = Grade(
                student_id=students_registered_in_current_course_id_mapping[student_item],
                student_name=student_item,
                course_code=course_code,
                assessment_method=assessment_method_item,
                assessment_method_grade=score
            )
            db.session.add(grade)
            db.session.commit()
            insert_op += 1
            print(f'controller/grade.py {insert_op} rows of grade insert into database '
                  f'{students_registered_in_current_course_id_mapping[student_item]} '
                  f'{student_item} '
                  f'{course_code} '
                  f'{assessment_method_item} '
                  f'{score}')

    # Create Grade Report Database for this course
    # model = get_model(suffix=course_code, course=course_code)
    # model.create()
    # print('controller/courseDesigner.py get_model successfully!!!', model)
    assessment_method_list = get_assessment_method(course=course_code)
    return redirect(url_for('courseDesigner.load_course_designer_main_page', name=name, role=role))

    # Create for testPlan Report. Actually, useless... TAT
    # if total < 100:
    #     return render_template('lessError.html', role=role, name=name)
    # elif total > 100:
    #     return render_template('moreError.html', role=role, name=name)
    # else:
    #     return render_template('good.html', role=role, name=name)

    # Back end checks the logic. Total percentage must be exactly equal to 100
    # if total != 100:
    #     # @CreateTime: 2021-05-28 15:39:44
    #     # TODO: beauty repeatCourseRegisterError.html and make page logic right (Priority: LOW)
    #     #  Finish Date: 2021-05-30
    #     return render_template('repeatCourseRegisterError.html', role=role, name=name)
