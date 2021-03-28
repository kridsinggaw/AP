const express = require('express');
const route = express.Router();
const UserDomain = require('../domains/user')

// get user news
route.get('/news', async (req, res, next) => {
  let result;
  const userId = req.user.id;
  try {
    result = await UserDomain.getUserNews(userId)
  } catch (error){
    result = error
  }
  res.json(result);
});

module.exports = route;