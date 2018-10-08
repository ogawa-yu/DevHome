from flask import Flask
from rest_api.apis import api
from rest_api.models import db_accessor
from rest_api.settings import Config

app = Flask(__name__, instance_relative_config=True)


def configure_app(app: Flask):
    app.config.from_object("rest_api.settings.Config")


def initialize_app(app: Flask):
    configure_app(app)
    api.init_app(app)
    db_accessor.init_app(app)


def main():
    initialize_app(app)
    app.run(host="0.0.0.0", debug=Config.DEBUG)


if __name__ == "__main__":
    main()
