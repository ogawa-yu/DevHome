var path = require('path');
module.exports = {
    // webpack処理の起点となるファイルの指定と出力アイテムの指定
    entry: {
        app_start: './src/ts/app.ts'
    },
    output: {
        path: '/build',
        publicPath: '/js',
        filename: '[name].js'
    },
    devServer: {
        contentBase: 'public'
    },
    resolve: {
        extensions: ['*', '.ts', '.webpack.js', '.web.js', '.js'],
        modules: ["node_modules"]
    },
    module: {
        loaders: [
            {test: /\.ts$/, loader: 'ts-loader' }
        ]
    }
}

