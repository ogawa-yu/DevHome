var http = require('http');

http.createServer(
    function (request, response) {
        response.writeHead(200, { 'Content-Type' : 'Text/plain' });
        response.end('Hello World by ogawa\n');
    }
).listen(8124);

console.log('Server running at http://127.0.0.1:8124');
