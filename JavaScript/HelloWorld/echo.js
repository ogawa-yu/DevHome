
// netモジュールを読み込み、インスタンスを作成
var net = require('net');

// serverのイベントハンドラ定義
net.createServer(function(socket) {

    // ソケット経由でメッセージ送出
    socket.write('This is RLS Texh News Echo Server\r\n');
    // データを受信したら、そのままメッセージとして送出
    socket.on('data', function(data) {
        socket.write('Server->response:' + data)
    });
}).listen(1337, '127.0.0.1');
