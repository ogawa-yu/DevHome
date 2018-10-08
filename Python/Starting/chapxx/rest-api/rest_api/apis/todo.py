from flask import request
from flask_restplus import Namespace, fields, Resource
from rest_api.models import db_accessor


todo_ns = Namespace('todo', description='End point of ToDo task')


todo = todo_ns.model('ToDo', {
    'user_id': fields.Integer(
        required=True,
        description='A registered ToDo user',
        example=0
    ),
    'id': fields.Integer(
        required=True,
        description='A ToDo ID',
        example=0
    ),
    'title': fields.String(
        required=True,
        description='A ToDo title',
        example='get up'
    ),
    'description': fields.String(
        required=True,
        descrption='A ToDo descriptions',
        eaxmple='At least I want to get up at 7 a.m.'
    )
})


@todo_ns.route('/')
class ToDoList(Resource):
    @todo_ns.marshal_list_with(todo)
    def get(self):
        return db_accessor.db.todo.find()


@todo_ns.route('/<int:todo_id>')
class ToDoController(Resource):
    @todo_ns.marshal_with(todo)
    def get(self, todo_id):
        return db_accessor.db.todo.find_one_or_404({'id': todo_id})

    def post(self, todo_id):
        db_accessor.db.todo.insert({
            "id": todo_id,
            "user_id": request.json["user_id"],
            "title": request.json["title"],
            "description": request.json["description"]
        })
