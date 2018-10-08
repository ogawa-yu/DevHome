from flask_restplus import Namespace, fields, Resource

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
