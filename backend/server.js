var cors = require('cors')
const express = require('express');
const app = express();
const passport = require("passport");
const port = 3000;

app.use(cors())
app.use(express.json());
require('./configs/passport');
app.use(express.urlencoded({ extended: false }));
app.use('/auth', require('./routes/auth'));
app.use('/user', passport.authenticate('jwt', {session: false}), require('./routes/user'));
app.use('/history',  passport.authenticate('jwt', {session: false}), require('./routes/history'));

app.use((req, res, next) => {
  res.header('Access-Control-Allow-Origin', ['http://localhost:3000','http://localhost:3001'])
  res.header('Access-Control-Allow-Methods','POST, GET, PUT, PATCH, DELETE, OPTIONS')
  res.header('Access-Control-Allow-Headers','Content-Type, Option, Authorization, X-Requested-With')
  next()
})

// Error Handler
app.use((err, req, res, next) => {
    let statusCode = err.status || 500
    res.status(statusCode)
    res.json({
      error: {
        status: statusCode,
        message: err.message
      }
    });
  });  

app.listen(port, () => {
    console.log(`Start server at port ${port}.`)
  })