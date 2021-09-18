const express = require('express');

console.log('Initializing server app...')

const app = express();
const port = process.env.PORT || 8080;

app.use('/', express.static(__dirname +'/dist/todoapp'));

app.listen(port);
console.log('Application has started on port serving static files:' + port);