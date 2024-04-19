from sqlalchemy import Column, String, Integer, orm
from app.models.human import Human


class Student(Human):
    id = Column(Integer, primary_key=True, autoincrement=True)
    college = Column(String(50), nullable=False)
    course = Column(String(20), nullable=False)

    def __init__(self, name, age, college, email, password, role, course):
        super(Student, self).__init__(name, age, email, password, role)
        self.college = college
        self.course = course

    def jsonstr(self):
        jsondata = {
            'name': self.name,
            'age': self.age,
            'college': self.college,
            'email': self.email,
            'role': self.role
        }

        return jsondata
