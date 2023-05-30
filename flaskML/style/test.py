from flask import Flask
from flask import redirect, request

app = Flask(__name__)

@app.route('/styleRoom', methods=['GET','POST'])
def index():
    if request.method == 'GET':
        num1 = int(request.args['num1'])
        num2 = int(request.args['num2'])

        # result = model()

    else:
        num1 = int(request.form['num1'])
        num2 = int(request.form['num2'])

        # result = model()

    url = 'http://localhost:8081/colorChange.do?result={}'.format(num1+num2)
    return redirect(url)

if __name__ == '__main__':
    app.run(host='127.0.0.1', port='5000')