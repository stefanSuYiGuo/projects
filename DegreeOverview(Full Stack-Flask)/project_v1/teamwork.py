## import libraries
from flask import render_template
from app import create_app
from flask_bcrypt import Bcrypt
from flask_bootstrap import Bootstrap

app = create_app()
# 加密传输
bcrypt = Bcrypt(app)
# 关联bootstrap
bootstrap = Bootstrap(app)


@app.route('/')
def lazy_load():
    return render_template('lazyLoad.html')


if __name__ == '__main__':
    # 启动应用服务器, 使用默认参数, 开启调试模式
    app.run(debug=True, host='127.0.0.1', port=5050)
    # app.run(host='0.0.0.0', port=5001)
