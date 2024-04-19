from sqlalchemy import Column, String, Integer, orm, ForeignKey, Float
from app.models.base import Base
from app.models.base import db


class Grade(Base):
    id = Column(Integer, primary_key=True, autoincrement=True)
    student_id = Column(String(20), nullable=False)
    student_name = Column(String(20), nullable=False)
    course_code = Column(String(20), nullable=False)
    assessment_method = Column(String(20), nullable=False)
    assessment_method_grade = Column(Float, nullable=False)

    def __init__(self, student_id, student_name, course_code, assessment_method, assessment_method_grade):
        super(Grade, self).__init__()
        self.student_id = student_id
        self.student_name = student_name
        self.course_code = course_code
        self.assessment_method = assessment_method
        self.assessment_method_grade = assessment_method_grade
