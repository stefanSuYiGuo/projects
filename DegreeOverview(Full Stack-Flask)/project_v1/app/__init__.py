from flask import Flask
from app.controller import student, teacher, user, courseDesigner, course, grade


# 定义注册蓝图方法
def register_blueprints(app):
    # app.register_blueprint(book.bookBP, url_prefix='/book')
    app.register_blueprint(student.studentBP, url_prefix='/student')
    app.register_blueprint(teacher.teacherBP, url_prefix='/teacher')
    app.register_blueprint(user.userBP, url_prefix='/user')
    app.register_blueprint(courseDesigner.courseDesignerBP, url_prefix='/courseDesigner')
    app.register_blueprint(course.courseBP, url_prefix='/course')
    app.register_blueprint(grade.gradeBP, url_prefix='/grade')


# 注册插件(数据库关联)
def register_plugin(app):
    from app.models.base import db
    db.init_app(app)
    # create_all要放到app上下文环境中使用
    with app.app_context():
        db.create_all()


# def bcrypt_app(app):
#     bcrypt = Bcrypt(app)
#     return bcrypt


def create_app():
    app = Flask(__name__)
    # app.config.from_object('app.config.setting') # 基本配置(setting.py)
    app.config.from_object('app.config.secure')  # 重要参数配置(secure.py)
    # 注册蓝图与app对象相关联
    register_blueprints(app)
    # 注册插件(数据库)与app对象相关联
    register_plugin(app)
    # # 加密传输
    # bcrypt_app(app)
    # 一定要记得返回app
    return app


# app = Flask(__name__)
# app.config.from_object('app.config.secure')  # 重要参数配置(secure.py)
# # 注册蓝图与app对象相关联
# register_blueprints(app)
# # 注册插件(数据库)与app对象相关联
# register_plugin(app)
# # 加密传输
# bcrypt = Bcrypt(app)
# # 关联bootstrap
# bootstrap = Bootstrap(app)

print('App creates successfully!')
# app = create_app()
# bootstrap = Bootstrap(app)
# bcrypt = Bcrypt(app)
