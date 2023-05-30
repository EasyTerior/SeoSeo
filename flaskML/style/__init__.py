# runServer.py
# pwd : flaskML/runServer.py

from flask import Flask
from flask_sqlalchemy import SQLAlchemy


def create_app():
    app = Flask(__name__)

    
    # ORM
    # app config
    # database 설정파일
    app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://seocho_0515_2:smhrd2@project-db-stu.smhrd.com:3307/seocho_0515_2?charset=utf8'
    app.config['SQLALCHEMY_ECHO'] = True
    app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True
    # app.secret_key = 'manyrandombyte'

    db = SQLAlchemy(app)

    # BluePrint
    from views import main_views
    app.register_blueprint(main_views.bp)

    host_addr = "0.0.0.0"
    port_num = "80"

    if __name__ == "__main__":
        app.run(host=host_addr, port=port_num, debug=True)

    return app

