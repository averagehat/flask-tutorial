from flask import Flask
from flask import render_template



app = Flask(__name__)


@app.route('/')
def index():
   message = 'hello'
  # return render_template('index.html')
   return 'Hello user!'


if __name__ == '__main__':
  
  app.run('0.0.0.0', port=5000, debug=True)
