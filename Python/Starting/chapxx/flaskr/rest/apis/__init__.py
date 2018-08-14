from flask_restplus import Api

from apis.todo import todo_namespace


api = Api(
    title="Flasker",
    version="1.0",
    description="REST API integrated by Swagger"
)

api.add_namespace(todo_namespace)

