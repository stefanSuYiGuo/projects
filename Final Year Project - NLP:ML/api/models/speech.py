from sqlalchemy import Column, Integer, String, LargeBinary
from api.models.base import Base


class Record(Base):
    id = Column(Integer, primary_key=True, autoincrement=True)
    file_name = Column(String(100), nullable=False)
    file_data = Column(LargeBinary, nullable=False)

    def __init__(self, file_name, file_data):
        super(Record, self).__init__()
        self.file_name = file_name
        self.file_data = file_data
