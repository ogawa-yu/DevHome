from os import environ

class Config(object):
    DEBUG = True
    SWAGGER_UI_DOC_EXPANSION = "list"
    RESTPLUS_VALIDATION = True
    MONGO_URI = environ["DB_URL"]
