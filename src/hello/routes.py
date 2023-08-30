import os
from flask import Blueprint
route_blueprint = Blueprint('route_blueprint', __name__)

@route_blueprint.route("/")
def hello_world():
    return f"<h1>Hello, World!</h1><h2>From <span style='color:red;text-decoration:underline'>{os.getenv('APP_ENV', 'Unknown ')}</span> enviroment.</h2>"