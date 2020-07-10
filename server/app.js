const express = require('express');
const data = require('./router')
const mongoose = require("mongoose");
const bodyParser = require("body-parser")
const path = require('path');


var db = mongoose.connect('mongodb://mongodb:27017/navigation');

const app = express()

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));
app.use('/api', data)
app.use(express.static(path.join(__dirname, '../dist')));
app.listen(3000, () => {
    console.log("应用实例，访问地址为 http://%s:%s", "0.0.0.0", 3000)
})
