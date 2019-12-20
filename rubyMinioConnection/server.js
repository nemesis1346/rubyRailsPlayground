// "Copyrights Owner: NobleProg Tech Ltd, Author: MarcoMaigua"

// In order to use the MinIO JavaScript API to generate the pre-signed URL, begin by instantiating
// a `Minio.Client` object and pass in the values for your server.
// The example below uses values for play.min.io:9000

const Minio = require('minio')

//Right now we tested by using a local host
var client = new Minio.Client({
    endPoint: '192.168.43.18',
    port: 9000,
    useSSL: false,
    accessKey: '1SUQJOENWO3HKQ1FC4EQ',
    secretKey: 'NBa207Kx+iLLTtnTbfVp6DDC9UuQDanemDEtZ+Ro'
})

// Instantiate an `express` server and expose an endpoint called `/presignedUrl` as a `GET` request that
// accepts a filename through a query parameter called `name`. For the implementation of this endpoint,
// invoke [`presignedPutObject`](https://docs.min.io/docs/javascript-client-api-reference#presignedPutObject) 
// on the `Minio.Client` instance to generate a pre-signed URL, and return that URL in the response:

// express is a small HTTP server wrapper, but this works with any HTTP server
const server = require('express')()

server.get('/presignedUrl', (req, res) => {
    client.presignedPutObject('nemesis1346', req.query.name, (err, url) => {
        if (err) throw err
        res.end(url)
    })
})

server.get('/', (req, res) => {
    res.sendFile(__dirname + '/client.html');
})

server.listen(8080)
