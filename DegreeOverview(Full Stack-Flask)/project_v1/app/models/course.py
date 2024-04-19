from sqlalchemy import Column, String, Integer, orm, ForeignKey
from app.models.base import Base
from app.models.base import db


# 一的一方写relationship,可以通过表名.字段得到一个列表
# 多的一方写ForeignKey,可以通过表名.(一的一方的backref)对一的一方进行读取和修改
class Course(Base):
    # course_code = Column(String(20), nullable=False, primary_key=True)
    id = Column(Integer, primary_key=True, autoincrement=True)
    course_code = Column(String(20), nullable=False)
    course_name = Column(String(100), nullable=False)
    # course_CILO = Column(String(1000), nullable=False, primary_key=True)
    # course_prerequisite = Column(String(100), nullable=True, primary_key=True)
    # course_ass_method = Column(String(100), nullable=False, primary_key=True)
    course_type = Column(String(6), nullable=False)
    prerequisite = Column(String(100), nullable=True)

    # def __init__(self, course_code, course_name, course_CILO, course_prerequisite, course_ass_method, course_type):
    def __init__(self, course_name, course_code, course_type, prerequisite):
        super(Course, self).__init__()
        self.course_code = course_code
        self.course_name = course_name
        # self.course_CILO = course_CILO
        # self.course_prerequisite = course_prerequisite
        # self.course_ass_method = course_ass_method
        self.course_type = course_type
        self.prerequisite = prerequisite


class CILO(Base):
    id = Column(Integer, primary_key=True, autoincrement=True)
    course_code = Column(String(20), nullable=False)
    course_CILO = Column(String(1000), nullable=False)

    def __init__(self, course_code, course_CILO):
        super(CILO, self).__init__()
        self.course_code = course_code
        self.course_CILO = course_CILO


class Assessment(Base):
    id = Column(Integer, primary_key=True, autoincrement=True)
    course_code = Column(String(20), nullable=False)
    assessment_method = Column(String(100), nullable=False)
    # move this part to mapping table
    # corresponding_CILO = Column(Integer, nullable=False)

    # def __init__(self, course_code, assessment_method, corresponding_CILO):
    def __init__(self, course_code, assessment_method):
        super(Assessment, self).__init__()
        self.course_code = course_code
        self.assessment_method = assessment_method
        # self.corresponding_CILO = corresponding_CILO


class Mapping(Base):
    id = Column(Integer, primary_key=True, autoincrement=True)
    course_code = Column(String(20), nullable=False)
    assessment_method = Column(String(100), nullable=False)
    percentage = Column(String(20), nullable=False)
    course_CILO_number = Column(String(20), nullable=False)

    def __init__(self, course_code, assessment_method, percentage, course_CILO_number):
        super(Mapping, self).__init__()
        self.course_code = course_code
        self.assessment_method = assessment_method
        self.percentage = percentage
        self.course_CILO_number = course_CILO_number
