from sqlalchemy import Column, String, Integer, orm
from app.models.human import Human


class Teacher(Human):
    id = Column(Integer, primary_key=True, autoincrement=True)
    major = Column(String(50), nullable=False)
    teach_course = Column(String(20), nullable=False)

    def __init__(self, name, age, major, email, password, role, teach_course):
        super(Teacher, self).__init__(name, age, email, password, role)
        self.major = major
        self.teach_course = teach_course
