// 引入express中间件
var express = require('express');
var app = express();

// 设置静态文件目录为dist文件夹
app.use(express.static('src'));

// 启动服务，监听3000端口
var server = app.listen(6868, '0.0.0.0', function () {
    var host = server.address().address;
    var port = server.address().port;

    console.log('Example app listening at http://%s:%s', host, port);
});
