var express = require('express');
var path = require('path');
var app = express();

app.use(express.static(path.join(__dirname, 'dist')));

var server = app.listen(8080, function () {
    var host = "0.0.0.0"
    var port = server.address().port
    console.log("应用实例，访问地址为 http://%s:%s", host, port)
})