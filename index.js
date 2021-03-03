const express = require('express');

const app = express();

app.get('/', (req, res) => {
  res.send('Hello in DOCKER play ground!!');
});

app.listen(8080, () => {
  console.log('The wep-app is now live :)');
});
