/* first cmd */
console.log("Hello world!")

/* improt required module */
var http = require("http");


///* create a http server*/
//http.createServer(function (request, response) {
//   // Send the HTTP header 
//   // HTTP Status: 200 : OK
//   // Content Type: text/plain
//   response.writeHead(200, {'Content-Type': 'text/plain'});
//   
//   // Send the response body as "Hello World"
//   response.end('Hello World\n');
//}).listen(8081);
//
//// Console will print the message
//console.log('Server running at http://127.0.0.1:8081/');
//

var fs = require("fs");

fs.readFile('input.txt', function(err,data){
	if(err) return console.error(err);
	console.log(data.toString());
}
);


// event
// Import events module
var events = require('events');


// Create an eventEmitter object
var eventEmitter = new events.EventEmitter();

// Create an event handler as follows
var connectHandler = function connected() {
   console.log('connection succesful.');
  
   // Fire the data_received event 
   eventEmitter.emit('data_received');
}

// Bind the connection event with the handler
eventEmitter.on('connection', connectHandler);
 
// Bind the data_received event with the anonymous function
eventEmitter.on('data_received', function(){
   console.log('data received succesfully.');
});

// Fire the connection event 
eventEmitter.emit('connection');

console.log("Program Ended.");

// use express
var express = require('express');
var app = express();

app.get('/', function (req, res) {
   res.send('Hello World');
})

var server = app.listen(8081, function () {
   var host = server.address().address
   var port = server.address().port
   
   console.log("Example app listening at http://%s:%s", host, port)
})


