from sqlalchemy import Column, String, Integer, orm
from app.models.base import Base


class Human(Base):
    __abstract__ = True  # 抽象类 不会生成表
    name = Column(String(50), nullable=False)
    age = Column(Integer)
    # email = Column(String(24), unique=True, nullable=True)
    email = Column(String(24), nullable=True)
    _password = Column('password', String(100))
    role = Column(String(20), nullable=False)

    def __init__(self, name, age, email, password, role):
        super(Human, self).__init__()
        self.name = name
        self.age = age
        self.email = email
        self._password = password
        self.role = role
