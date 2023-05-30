# main_views.py
# pwd : flaskML/views/main_views.py

from flask import Blueprint

bp = Blueprint('main', __name__, url_prefix='/')


@bp.route('/')
def hello_flask():
    return 'Hello, Flask index! at main_views.py'


@bp.route('/hello')
def hello_pybo():
    return 'Hello, /hello/main_views!'
