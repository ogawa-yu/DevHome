from flask_restplus import Namespace, fields, Resource

user_ns = Namespace('user', description='End point of ToDo users.')


user = user_ns.model('User', {
    'id': fields.Integer(
        required=True,
        description='A user ID',
        example=1
    ),
    'name': fields.String(
        required=True,
        description='A user name.',
        example='taro'
    ),
    'email': fields.String(
        required=True,
        description='A user e-mail address.',
        example='taro@example.com'
    )
})
