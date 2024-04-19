# encoding:utf-8
from api import create_app


api = create_app()


@api.route('/')
def index():
    return 'hello api'


if __name__ == '__main__':
    api.run(port=5500, debug=True, host='127.0.0.1')
