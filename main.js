const http = require('http')

const server = http.createServer(function (request, response) {
  response.writeHead(200, { 'Content-type': 'text/plain' })
  response.end('hello world')
})

server.listen(8000)
console.log('Server is listening port 8000')