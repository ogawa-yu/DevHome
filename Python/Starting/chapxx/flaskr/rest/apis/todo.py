from flask_restplus import Namespace, fields, Resource
from models import ToDo
from enum import Enum


todo_namespace = Namespace('todo', description='Endpoint ToDo')

def enum(enum):
    return [n for n, _ in enum.__members__.items()]     

class Priority(Enum):
    High = 1
    Middle = 2
    Low = 3

todo = todo_namespace.model('ToDo', {
    'user_id': fields.Integer(
        required=True,
        description="ToDoを登録したユーザID",
        example='0'
    ),
    'id': fields.Integer(
        required=True,
        description='ToDoのID',
        example='1'
    ),
    'title': fields.String(
        required=True,
        description='ToDoのタイトル',
        example='起きる'
    ),
    'description': fields.String(
        required=True,
        description='ToDoの詳細',
        example='AM7時に起きたい'
    ),
    'type': fields.String(
        required=True,
        description="ToDoの種別",
        enum=enum(Priority),
        example="low"
    )
})

@todo_namespace.route('/')
class ToDoList(Resource):
    @todo_namespace.marshal_list_with(todo)
    def get(self):
        """
        一覧取得
        """
        return ToDo.query.all()


