# hello_world.py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

if __name__ == '__main__':
    # Change the host to '0.0.0.0' to make the app accessible externally
    app.run(host='0.0.0.0', debug=True)
