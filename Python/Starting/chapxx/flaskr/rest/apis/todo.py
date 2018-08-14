from flask_restplus import Namespace, fields, Resource
from models import ToDo


todo_namespace = Namespace('todo', description='Endpoint ToDo')


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


