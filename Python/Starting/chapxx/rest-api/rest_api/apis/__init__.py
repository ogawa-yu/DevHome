from flask_restplus import Api
from .todo import todo_ns
from .user import user_ns


api = Api(
    title="Example REST",
    version="1.0",
    description="REST API Integrated OpenAPI"
)

api.add_namespace(todo_ns)
api.add_namespace(user_ns)
