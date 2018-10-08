from flask import request
from flask_restplus import Namespace, fields, Resource
from rest_api.models import db_accessor


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

@user_ns.route('/<int:id>')
class UserController(Resource):
    @user_ns.marshal_with(user)
    def get(self, id):
        return db_accessor.db.user.find_one_or_404({'id': id})

    def post(self, id):
        parser = user_ns.parser()
        parser.add_argument('name', type=str)
        parser.add_argument('email', type=str)
        args = parser.parse_args()
        db_accessor.db.user.insert({
            "id": id,
            "name": request.json["name"],
            "email": request.json["email"]
        })
        return "ok"

