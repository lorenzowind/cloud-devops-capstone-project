from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    html = "<strong>Hello World, my name is Lorenzo Windmoller Martins!</strong>"
    return html.format(format)

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=80, debug=True) # specify port=80
