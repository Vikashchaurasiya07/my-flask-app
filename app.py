from flask import Flask
from datetime import datetime

app = Flask(__name__)

@app.route('/')
def home():
    # Get the current time and format it
    current_time = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    return f"Hello, World! The current time is: {current_time}"

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=80)
