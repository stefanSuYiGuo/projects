import json
import random
from statistics import mean

from pyecharts import options as opts
from pyecharts.charts import Graph, Bar
from pyecharts.faker import Faker
from pyecharts.commons.utils import JsCode
from pyecharts.globals import ThemeType

from flask import Blueprint, render_template, request, jsonify, session, flash, url_for, redirect

from app.models.base import db
from app.models.course import Course, CILO, Assessment, Mapping
from app.models.student import Student
from app.models.teacher import Teacher
from app.models.grade import Grade

from app.config.secure import SQLALCHEMY_DATABASE_URI

from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

# engine = create_engine(SQLALCHEMY_DATABASE_URI)
# Session = sessionmaker(bind=engine)
#
# mySession = Session()

courseBP = Blueprint('course', __name__)


def nodes_generator(courses_list):
    nodes = []
    for course in courses_list:
        nodes.append(opts.GraphNode(name=course, symbol_size=random.randint(10, 40)))
    return nodes


def links_generator(zipped_data):
    links = []
    for data in zipped_data:
        links.append(opts.GraphLink(source=data[0], target=data[1]))
    return links


def expand_assessment_method(assessment_method_list):
    expand_assessment_method_list = []
    for assessment_method in assessment_method_list:
        expand_assessment_method_list.append(assessment_method + '-Highest')
        expand_assessment_method_list.append(assessment_method + '-Average')
        expand_assessment_method_list.append(assessment_method + '-Lowest')
    return expand_assessment_method_list


def course_display_bg_info_dict_generator(course_list, bg_list):
    course_display_bg_info_dict = {}
    for course in course_list:
        bg_style = bg_list[course_list.index(course) % len(bg_list)]
        course_name = Course.query.filter_by(course_code=course).first().course_name
        participant_num = len(Student.query.filter_by(course=course).all())
        dict_value = [bg_style, course_name, participant_num]
        course_display_bg_info_dict[course] = dict_value
    return course_display_bg_info_dict


@courseBP.route('/<courseCode>/detail')
def course_detail(courseCode):
    courseName = Course.query.filter(Course.course_code == courseCode).first().course_name
    courseType = Course.query.filter(Course.course_code == courseCode).first().course_type
    participants_obj = Student.query.filter(Student.course == courseCode).all()
    participants_number = len(participants_obj)

    # Ger Registered Course
    registered_course_obj = Course.query.filter(Course.course_code != '').all()
    registered_course_list = []
    for item in registered_course_obj:
        registered_course_list.append(item.course_code)
    print('controller/course.py registered_course_list', registered_course_list)

    # Get CILOs
    CILOs_obj = CILO.query.filter_by(course_code=courseCode).all()
    CILOs_list = []
    for item in CILOs_obj:
        CILOs_list.append(item.course_CILO)
    print('controller/course.py CILOs_list', CILOs_list)

    # Get assessment methods
    assessment_method_obj = Assessment.query.filter_by(course_code=courseCode).all()
    assessment_method_list = []
    for item in assessment_method_obj:
        assessment_method_list.append(item.assessment_method)
    print('controller/course.py assessment_method_list', assessment_method_list)

    # Get mapping
    mapping_obj = Mapping.query.filter_by(course_code=courseCode).all()
    mapping_dict = {}
    for item in mapping_obj:
        mapping_dict[item.id] = [item.assessment_method, item.percentage, item.course_CILO_number]
    print('controller/course.py mapping_obj', mapping_dict)

    # Get prerequisites
    prerequisites_obj = Course.query.filter_by(course_code=courseCode).all()
    prerequisites_list = []
    for item in prerequisites_obj:
        prerequisites_list.append(item.prerequisite)
    print('controller/course.py prerequisites_list', prerequisites_list)
    for item in prerequisites_list:
        if item not in registered_course_list:
            prerequisites_list[prerequisites_list.index(item)] = 'None'

    # Get post course
    post_courses_obj = Course.query.filter_by(prerequisite=courseCode).all()
    post_courses_list = []
    for item in post_courses_obj:
        post_courses_list.append(item.course_code)
    post_courses_list_length = len(post_courses_list)
    print('controller/course.py post_courses_list', post_courses_list, post_courses_list_length)

    # Get Current Lecturer
    current_lecturer = Teacher.query.filter_by(teach_course=courseCode).first().name

    # Get user role
    role = session.get('role')
    return render_template('courseDetailDisplay.html',
                           role=role,
                           courseCode=courseCode,
                           courseName=courseName,
                           courseType=courseType,
                           participants_number=participants_number,
                           CILOs_list=CILOs_list,
                           assessment_method_list=assessment_method_list,
                           mapping_dict=mapping_dict,
                           prerequisites_list=prerequisites_list,
                           post_courses_list=post_courses_list,
                           post_courses_list_length=post_courses_list_length,
                           current_lecturer=current_lecturer)


@courseBP.route('/<courseCode>/modifyTemplate')
def modifyTemplate(courseCode):
    courseName = Course.query.filter(Course.course_code == courseCode).first().course_name
    courseType = Course.query.filter(Course.course_code == courseCode).first().course_type
    participants_obj = Student.query.filter(Student.course == courseCode).all()
    participants_number = len(participants_obj)

    # Ger Registered Course
    registered_course_obj = Course.query.filter(Course.course_code != '').all()
    registered_course_list = []
    for item in registered_course_obj:
        registered_course_list.append(item.course_code)
    print('controller/course.py registered_course_list', registered_course_list)

    # Get CILOs
    CILOs_obj = CILO.query.filter_by(course_code=courseCode).all()
    CILOs_list = []
    for item in CILOs_obj:
        CILOs_list.append(item.course_CILO)
    print('controller/course.py CILOs_list', CILOs_list)

    # Get assessment methods
    assessment_method_obj = Assessment.query.filter_by(course_code=courseCode).all()
    assessment_method_list = []
    for item in assessment_method_obj:
        assessment_method_list.append(item.assessment_method)
    print('controller/course.py assessment_method_list', assessment_method_list)

    # Get mapping
    mapping_obj = Mapping.query.filter_by(course_code=courseCode).all()
    mapping_dict = {}
    for item in mapping_obj:
        mapping_dict[item.id] = [item.assessment_method, item.percentage, item.course_CILO_number]
    print('controller/course.py mapping_obj', mapping_dict)

    # Get prerequisites
    prerequisites_obj = Course.query.filter_by(course_code=courseCode).all()
    prerequisites_list = []
    for item in prerequisites_obj:
        prerequisites_list.append(item.prerequisite)
    print('controller/course.py prerequisites_list', prerequisites_list)
    for item in prerequisites_list:
        if item not in registered_course_list:
            prerequisites_list[prerequisites_list.index(item)] = 'None'

    # Get post course
    post_courses_obj = Course.query.filter_by(prerequisite=courseCode).all()
    post_courses_list = []
    for item in post_courses_obj:
        post_courses_list.append(item.course_code)
    post_courses_list_length = len(post_courses_list)
    print('controller/course.py post_courses_list', post_courses_list, post_courses_list_length)

    # Get Current Lecturer
    current_lecturer = Teacher.query.filter_by(teach_course=courseCode).first().name

    # Get user role
    role = session.get('role')
    return render_template('modifyCourseDetailDisplay.html',
                           role=role,
                           courseCode=courseCode,
                           courseName=courseName,
                           courseType=courseType,
                           participants_number=participants_number,
                           CILOs_list=CILOs_list,
                           assessment_method_list=assessment_method_list,
                           mapping_dict=mapping_dict,
                           prerequisites_list=prerequisites_list,
                           post_courses_list=post_courses_list,
                           post_courses_list_length=post_courses_list_length,
                           current_lecturer=current_lecturer)


@courseBP.route('<courseCode>/modify/<assessment_list>')
def course_modify(courseCode, assessment_list):
    print('controller/course.py assessment_list', assessment_list, type(assessment_list))
    new_assessments_list = assessment_list.split(',')
    print('controller/course.py new_assessments_list', new_assessments_list, type(new_assessments_list))

    old_assessments_obj = Assessment.query.filter(Assessment.course_code == courseCode).all()
    old_assessments_list = []
    for item in old_assessments_obj:
        old_assessments_list.append(item.assessment_method)
    print('controller/course.py old_assessments_list', old_assessments_list, type(old_assessments_list))

    select_assessment_should_be_updated_list = []
    for old_assessment in old_assessments_list:
        if old_assessment not in new_assessments_list:
            select_assessment_should_be_updated_list.append(old_assessment)
    print('controller/course.py select_assessment_should_be_updated', select_assessment_should_be_updated_list,
          len(select_assessment_should_be_updated_list))

    # Update Grade database
    old_grade_assessment_obj = Grade.query.filter(Grade.course_code == courseCode).all()

    # Update Assessment Database
    for new_assessment in new_assessments_list:
        if new_assessment not in old_assessments_list:
            # Update Assessment Database
            old_assessments_obj[new_assessments_list.index(new_assessment)].assessment_method = new_assessment
            db.session.commit()

    # Update Mapping Database
    old_mapping_assessment_obj = Mapping.query.filter(Mapping.course_code == courseCode).all()
    print('controller course.py old_mapping_assessment_obj', old_mapping_assessment_obj,
          len(old_mapping_assessment_obj))
    for new_assessment in new_assessments_list:
        if new_assessment not in old_assessments_list:
            old_mapping_assessment_obj[new_assessments_list.index(new_assessment)].assessment_method = new_assessment
            db.session.commit()
    # return 'hello'
    teacher_name = session.get('name')
    role = session.get('role')
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
    return render_template('teacherMainPage.html', name=teacher_name, role=role,
                           course_display_style_info_dict=course_display_style_info_dict)


@courseBP.route('/dependencies/visualization')
def visualization():
    registered_courses_obj = Course.query.filter(Course.course_code != '').all()
    registered_courses_list = []
    for item in registered_courses_obj:
        if item.course_code not in registered_courses_list:
            registered_courses_list.append(item.course_code)
    nodes = nodes_generator(registered_courses_list)
    print('controller/course.py nodes', nodes, len(nodes))

    # Get prerequisite column data
    prerequisites_col_obj = Course.query.filter(Course.course_code != '').all()
    prerequisites_col_list = []
    for item in prerequisites_col_obj:
        prerequisites_col_list.append(item.prerequisite)
    print('controller/course.py prerequisites_col_list', prerequisites_col_list, len(prerequisites_col_list))

    # Get course_code column data
    course_code_col_obj = Course.query.filter(Course.course_code != '').all()
    course_code_col_list = []
    for item in course_code_col_obj:
        course_code_col_list.append(item.course_code)
    print('controller/course.py course_code_col_list', course_code_col_list, len(course_code_col_list))

    # Get raw data of graph
    meta_data = list(zip(prerequisites_col_list, course_code_col_list))
    print('controller/course.py meta_data', meta_data)

    # Get links
    links = links_generator(meta_data)
    print('controller/course.py links', links, len(links))

    c = (
        Graph(init_opts=opts.InitOpts(width='1200px', height='900px'))
            .add("",
                 nodes,
                 links,
                 repulsion=200,
                 layout='circular',
                 is_rotate_label=True,
                 linestyle_opts=opts.LineStyleOpts(color='source', curve=0.3),
                 label_opts=opts.LabelOpts(position="right")
                 )
            .set_global_opts(title_opts=opts.TitleOpts(title="Course Dependencies Visualization"),
                             toolbox_opts=opts.ToolboxOpts())
            .render("E:/Moses/College_Life/Year3_2/Software_Development_Workshop_III/"
                    "project_v1/project_v1/app/templates/graph_with_options.html")
    )
    return render_template('courseDependencies.html')


@courseBP.route('/<courseCode>/analysis')
def course_analysis(courseCode):
    # Get x-axis
    assessment_method_obj = Grade.query.filter_by(course_code=courseCode).all()
    assessment_method_list = []
    for item in assessment_method_obj:
        if item.assessment_method not in assessment_method_list:
            assessment_method_list.append(item.assessment_method)
    print('controller/course.py assessment_method_list', assessment_method_list)
    expanded_assessment_method_list = expand_assessment_method(assessment_method_list=assessment_method_list)
    print('controller/course.py expanded_assessment_method_list', expanded_assessment_method_list,
          len(expanded_assessment_method_list))

    # Get y-axis
    expanded_assessment_method_grade_list = []
    for assessment_method in assessment_method_list:
        each_assessment_method_obj = Grade.query.filter_by(course_code=courseCode,
                                                           assessment_method=assessment_method).all()
        each_assessment_method_grade_list = []
        for item in each_assessment_method_obj:
            each_assessment_method_grade_list.append(item.assessment_method_grade)
        print('controller/course.py each_assessment_method_grade_list', each_assessment_method_grade_list)
        expanded_assessment_method_grade_list.append(max(each_assessment_method_grade_list))
        expanded_assessment_method_grade_list.append(min(each_assessment_method_grade_list))
        expanded_assessment_method_grade_list.append(round(mean(each_assessment_method_grade_list), 2))
    print('controller/course.py expanded_assessment_method_grade_list', expanded_assessment_method_grade_list,
          len(expanded_assessment_method_grade_list))

    # Render a Bar Graph
    c = (
        Bar(init_opts=opts.InitOpts(width='800px', height='600px'))
            .add_xaxis(expanded_assessment_method_list)
            .add_yaxis('Score', expanded_assessment_method_grade_list, color=Faker.rand_color())
            .set_global_opts(
            xaxis_opts=opts.AxisOpts(axislabel_opts=opts.LabelOpts(rotate=-15)),
            title_opts=opts.TitleOpts(title="Analysis Course Result", subtitle=f"{courseCode}"),
            toolbox_opts=opts.ToolboxOpts(),
            datazoom_opts=opts.DataZoomOpts(orient="vertical"),
        )
            .set_series_opts(
            label_opts=opts.LabelOpts(is_show=True),
            # markpoint_opts=opts.MarkPointOpts(
            #     data=[
            #         opts.MarkPointItem(type_="max", name="Highest"),
            #         opts.MarkPointItem(type_="min", name="Lowest"),
            #         opts.MarkPointItem(type_="average", name="Average")
            #     ]
            # )
        )
            .render("E:/Moses/College_Life/Year3_2/Software_Development_Workshop_III/"
                    "project_v1/project_v1/app/templates/analysisCourseResult.html")
    )
    return render_template('courseResultAnalysis.html')


@courseBP.route('/<courseCode>/performance')
def show_performance(courseCode):
    # Need x-axis, y-axis two lists
    # x-axis -> CILOs; y-axis -> Score Got
    current_course_CILOs_obj = Mapping.query.filter_by(course_code=courseCode).all()
    current_course_CILOs_number_list = []
    for item in current_course_CILOs_obj:
        for each_item in item.course_CILO_number:
            if each_item != '-' and each_item not in current_course_CILOs_number_list:
                current_course_CILOs_number_list.append(each_item)
    print('controller/course.py current_course_CILOs_number_list', current_course_CILOs_number_list,
          len(current_course_CILOs_number_list))

    # Get x-axis
    x_axis_data = []
    for item in current_course_CILOs_number_list:
        x_axis_data.append('CILO ' + item)
    print('controller/course.py x_axis_data', x_axis_data, len(x_axis_data))

    # Numbering percentage for this course
    percentage_num = []
    for item in current_course_CILOs_obj:
        percentage_num.append(round(float(item.percentage[:item.percentage.index('%')]), 2))
    print('controller/course.py percentage_num', percentage_num, len(percentage_num))

    # raw course_CILO_number
    current_raw_course_CILOs_number_list = []
    for item in current_course_CILOs_obj:
        current_raw_course_CILOs_number_list.append(item.course_CILO_number)
    print('controller/course.py current_raw_course_CILOs_number_list', current_raw_course_CILOs_number_list,
          len(current_raw_course_CILOs_number_list))

    # Init CILO_score_mapping_dict
    CILO_score_mapping_dict = {}
    for item in current_course_CILOs_number_list:
        CILO_score_mapping_dict[item] = 0
    print('controller/course.py CILO_score_mapping_dict init', CILO_score_mapping_dict, len(CILO_score_mapping_dict))

    for item in current_raw_course_CILOs_number_list:
        each_CILO_score_distribution = percentage_num[current_raw_course_CILOs_number_list.index(item)] / (
                (len(item) + 1) / 2)
        for char in item:
            if char in current_course_CILOs_number_list:
                CILO_score_mapping_dict[char] += each_CILO_score_distribution
    print('controller/course.py CILO_score_mapping_dict updated', CILO_score_mapping_dict, len(CILO_score_mapping_dict))

    # Get y-axis data
    # y_axis_data = []
    # for item in CILO_score_mapping_dict:
    #     y_axis_data.append(CILO_score_mapping_dict[item])
    # print('controller/course.py y_axis_data', y_axis_data, len(y_axis_data))

    # Get assessment_method_grade of current course and current student
    current_student = session.get('name')
    assessment_method_grade_obj = Grade.query.filter_by(course_code=courseCode, student_name=current_student).all()
    assessment_method_grade_list = []
    for item in assessment_method_grade_obj:
        assessment_method_grade_list.append(item.assessment_method_grade)
    print('controller/course.py assessment_method_grade_list', assessment_method_grade_list,
          len(assessment_method_grade_list))

    # Init real_CILO_score_mapping_dict
    real_CILO_score_mapping_dict = {}
    for item in current_course_CILOs_number_list:
        real_CILO_score_mapping_dict[item] = 0
    print('controller/course.py CILO_score_mapping_dict init', real_CILO_score_mapping_dict,
          len(real_CILO_score_mapping_dict))

    try:
        for item in current_raw_course_CILOs_number_list:
            each_CILO_score_distribution = assessment_method_grade_list[
                                               current_raw_course_CILOs_number_list.index(item)] / ((len(item) + 1) / 2)
            for char in item:
                if char in current_course_CILOs_number_list:
                    real_CILO_score_mapping_dict[char] += each_CILO_score_distribution
        print('controller/course.py real_CILO_score_mapping_dict updated', real_CILO_score_mapping_dict,
              len(real_CILO_score_mapping_dict))

        y_axis_data_real = []
        y_axis_data_diff = []
        for item in real_CILO_score_mapping_dict:
            real_val = real_CILO_score_mapping_dict[item]
            full_val = CILO_score_mapping_dict[item]
            diff_val = full_val - real_val
            y_axis_data_real.append({'value': real_val,
                                     'percent': real_val / full_val})
            y_axis_data_diff.append({'value': diff_val,
                                     'percent': diff_val / full_val})
        print('controller/course.py y_axis_data_real', y_axis_data_real, len(y_axis_data_real))
        print('controller/course.py y_axis_data_diff', y_axis_data_diff, len(y_axis_data_diff))

        # Render a Bar Graph
        # c = (
        #     Bar(init_opts=opts.InitOpts(width='800px', height='600px'))
        #     .add_xaxis(x_axis_data)
        #     .add_yaxis('Score', y_axis_data, color=Faker.rand_color())
        #     .set_global_opts(
        #         xaxis_opts=opts.AxisOpts(axislabel_opts=opts.LabelOpts(rotate=-15)),
        #         title_opts=opts.TitleOpts(title="Show Course Performance", subtitle=f"{courseCode}"),
        #         toolbox_opts=opts.ToolboxOpts(),
        #         datazoom_opts=opts.DataZoomOpts(orient="vertical"),
        #     )
        #     .set_series_opts(
        #         label_opts=opts.LabelOpts(is_show=True),
        #         # markpoint_opts=opts.MarkPointOpts(
        #         #     data=[
        #         #         opts.MarkPointItem(type_="max", name="Highest"),
        #         #         opts.MarkPointItem(type_="min", name="Lowest"),
        #         #         opts.MarkPointItem(type_="average", name="Average")
        #         #     ]
        #         # )
        #     )
        #     .render("E:/Moses/College_Life/Year3_2/Software_Development_Workshop_III/"
        #             "project_v1/project_v1/app/templates/showCoursePerformance.html")
        # )
        # return render_template('studentShowPerformance.html')

        # templates abs path
        url = 'E:/Moses/College_Life/Year3_2/Software_Development_Workshop_III/project_v1/project_v1/app/templates/'
        temp_name = 'studentShowPerformance.html'
        file_store = url + temp_name

        # Render a stack Bar Graph
        c = (
            Bar(init_opts=opts.InitOpts(
                theme=ThemeType.LIGHT,
                width='1000px',
                height='750px'
            )
            )
                .add_xaxis(x_axis_data)
                .add_yaxis(f"{current_student} performance", y_axis_data_real, stack="stack1", category_gap="50%")
                .add_yaxis("To be full...", y_axis_data_diff, stack="stack1", category_gap="50%")
                .set_global_opts(
                xaxis_opts=opts.AxisOpts(axislabel_opts=opts.LabelOpts(rotate=-15)),
                title_opts=opts.TitleOpts(title="Show Course Performance", subtitle=f"{courseCode}"),
                toolbox_opts=opts.ToolboxOpts(),
                datazoom_opts=opts.DataZoomOpts(orient="vertical"),
            )
                .set_series_opts(
                label_opts=opts.LabelOpts(
                    is_show=True,
                    position="right",
                    formatter=JsCode(
                        "function(x){return Number(x.data.percent * 100).toFixed(2) + '%';}"
                    ),
                )
            )
                .render(file_store)
        )
        return render_template(temp_name)
    except IndexError:
        # return 'You have not registered this course. You cannot see performance.'
        return '<script>' \
               'alert("You have not registered this course. You cannot see performance.");' \
               'window.history.back();' \
               '</script>'


@courseBP.route('/<search_content>/<course_code>/dependencies/visualization')
def current_dependencies(search_content, course_code):
    first_nodes_obj = Course.query.filter(Course.course_code == course_code).all()
    second_nodes_obj = Course.query.filter(Course.prerequisite == course_code).all()
    nodes_list = []
    zipped_list = []
    for item in first_nodes_obj:
        if item.prerequisite not in nodes_list:
            nodes_list.append(item.prerequisite)
            new_pair = (item.prerequisite, course_code)
            zipped_list.append(new_pair)
    print('controller/course.py half nodes_list', nodes_list, len(nodes_list))
    print('controller/course.py half zipped_list', zipped_list, len(zipped_list))
    for item in second_nodes_obj:
        if item.course_code not in nodes_list:
            nodes_list.append(item.course_code)
            new_pair = (course_code, item.course_code)
            zipped_list.append(new_pair)
    nodes_list.append(course_code)
    print('controller/course.py full nodes_list', nodes_list, len(nodes_list))
    print('controller/course.py full zipped_list', zipped_list, len(zipped_list))
    nodes = nodes_generator(nodes_list)
    print('controller/course.py nodes', nodes, len(nodes))
    links = links_generator(zipped_list)
    print('controller/course.py links', links, len(links))

    url = 'E:/Moses/College_Life/Year3_2/Software_Development_Workshop_III/project_v1/project_v1/app/templates/'
    temp_name = 'renderCourseDependencies.html'
    file_store = url + temp_name

    c = (
        Graph(init_opts=opts.InitOpts(width="1000px", height="600px"))
            .add(
            "",
            nodes=nodes,
            links=links,
            layout="circular",
            is_rotate_label=True,
            linestyle_opts=opts.LineStyleOpts(color="source", curve=0.3),
            label_opts=opts.LabelOpts(position="right"),
        )
            .set_global_opts(
            title_opts=opts.TitleOpts(title=f"{course_code} Dependencies Display"),
            legend_opts=opts.LegendOpts(orient="vertical", pos_left="2%", pos_top="20%"),
        )
            .render(file_store)
    )

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
    # return render_template(temp_name)
