import os

SQLALCHEMY_DATABASE_URI = "sqlite:///" + "../api.db"
SQLALCHEMY_TRACK_MODIFICATION = True

# SECRET_KEY
SECRET_KEY = os.urandom(24)
