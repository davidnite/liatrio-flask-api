from flask import Flask, jsonify, request
from datetime import datetime
import time

app = Flask(__name__)

@app.route("/")
def get_response():
  date_time = datetime.now()
  response = { 'message': 'Automate all the things!', 'timestamp': (time.mktime(date_time.timetuple())) }
  return jsonify(response)
