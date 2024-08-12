from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def home():
    quote = "Believe you can and you're halfway there."
    return render_template('index.html', quote=quote)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
