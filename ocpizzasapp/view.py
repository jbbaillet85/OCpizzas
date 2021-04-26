from flask import Flask

app = Flask(__name__)

@app.route('/')
def index(name):
    message = f"Bienvenus chez {name} "
    return message

if __name__ == "__main__":
    app.run('OC Pizzas')