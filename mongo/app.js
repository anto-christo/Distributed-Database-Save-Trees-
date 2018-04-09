var express = require('express');
var bodyParser = require('body-parser');
var app = express();
var server = require('http').Server(app);
var mongoose = require('mongoose');

app.use(express.static(__dirname+'/public'));

app.get('/',function(req,res){
    res.sendFile(__dirname+'/index.html');
});

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

server.listen(process.env.PORT || 3000,function(){
    console.log('Listening on '+server.address().port);
});

var MongoClient = require('mongodb').MongoClient;
var url = 'mongodb://127.0.0.1:27017/dd';

app.post('/login',function(req,res){

    var username = req.body.username;
    var password = req.body.password;

    MongoClient.connect(url, function(err, client) {
        const db = client.db('gs');

        db.collection("users").find({username:username, password:password}).count(function(err,result){
            if(result>0){
                return res.send("success");
            }
            else{
                return res.send("failed");
            }
        });
    });
});

app.post('/register',function(req,res){

    var username = req.body.username;
    var email = req.body.email;
    var state = req.body.state;
    var city = req.body.city;
    var password = req.body.password;

    var obj = {
        username:username,
        email:email,
        state:state,
        city:city,
        password:password
    }

    MongoClient.connect(url, function(err, client) {
        const db = client.db('dd');

        db.collection("users").insert(obj, function(err,result){
            if(err){
                console.log(err);
                return res.send("failed");
            }
            else{
                return res.send("success");
            }
        });
    });
});

app.post('/complain',function(req,res){

    var address = req.body.address;
    var email = req.body.email;
    var number = req.body.number;
    var issue = req.body.issue;

    var obj = {
        address:address,
        email:email,
        number:number,
        issue:issue
    }

    MongoClient.connect(url, function(err, client) {
        const db = client.db('dd');

        db.collection("complaints").insert(obj, function(err,result){
            if(err){
                console.log(err);
                return res.send("failed");
            }
            else{
                return res.send("success");
            }
        });
    });
});