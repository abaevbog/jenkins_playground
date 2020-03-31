from flask import Flask, escape, request
from jinja2 import Environment, FileSystemLoader
import requests

app = Flask(__name__)

@app.route('/')
def hello():
    name = request.args.get("name", "World")
    try:
        friend_said = requests.get('http://friend.default.svc.cluster.local:80').content
    except:
        friend_said = "OOPPPSSS"
    env = Environment(loader=FileSystemLoader("templates"))
    template = env.get_template("index.html")
    page = template.render(data={"friend":"My friend says: {}".format(friend_said.decode("utf-8") )})
    return page

if __name__ == '__main__':
    app.run()