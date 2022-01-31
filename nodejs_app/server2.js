const http = require('http');

const hostname = '192.168.211.128';
const port = 5001;

const server = http.createServer((req, res) => {
	res.statusCode = 200;
  	res.setHeader('Content-Type', 'text/plain');
  	res.end('2nd Nodejs App is Up and Running!\n');
});

server.listen(port, hostname, () => {
  	console.log(`Server running at http://${hostname}:${port}/`);
});
