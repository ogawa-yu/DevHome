from flask_sqlalchemy import SQLAlchemy


db = SQLAlchemy()


class ToDoQuery(object):
    def __init__(self):
        pass        

    def all(self):
        return [{ "user_id": 0, "id": 1, "title": "wakeup", "description": "want to wake about 7 O'clock"},
        {"user_id": 1, "id": 2, "title": "eat", "description": "Meet!"}]

class ToDo(object):
    query = ToDoQuery()


class Word(db.Model):
    __tablename__ = 'word'
    id = db.Column(db.Integer, nullable=False)
    word = db.Column(db.Text, nullable=False)
    description = db.Column(db.Text, nullable=False)
    examlpe = db.Column(db.Text, nullable=False)


