const http = require('http');

const port = 3000; // You can change this port if needed

const server = http.createServer((req, res) => {
  res.writeHead(200, {'Content-Type': 'text/html'});
  res.end('<h1>Hello, your Node.js website is running using git hub actions!</h1>');
});

server.listen(port, () => {
  console.log(`Server running at http://localhost:${port}/`);
});
