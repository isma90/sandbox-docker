const express = require('express');
const app = express();
const path = require('path');

const PORT = 8080;

app.get('/', function (req, res) {
    res.sendFile(path.join(__dirname + '/index.html'));
});

app.listen(PORT, function () {
    console.log(`Example app listening on port ${PORT}`);
});
