from flask import Flask
from api.controller import speech, record, analysis, demo, save_power


# 定义注册蓝图方法
def register_blueprints(api):
    api.register_blueprint(speech.speechBP, url_prefix='/speech')
    api.register_blueprint(record.recordBP, url_prefix='/record')
    api.register_blueprint(analysis.analysisBP, url_prefix='/analysis')
    api.register_blueprint(demo.demoBP, url_prefix='/demo')
    api.register_blueprint(save_power.sleepBP, url_prefix='/sleep')


# 注册插件(数据库关联)
def register_plugin(api):
    from api.models.base import db
    db.init_app(api)
    # create_all要放到app上下文环境中使用
    with api.app_context():
        db.create_all()


def create_app():
    app = Flask(__name__)
    app.config.from_object('api.config.config')
    # 注册蓝图与app对象相关联
    register_blueprints(app)
    # 注册插件(数据库)与app对象相关联
    register_plugin(app)
    # 一定要记得返回app
    return app


print('App creates successfully!')
