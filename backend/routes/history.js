const express = require('express');
const route = express.Router();
const HistoryDomain = require('../domains/history')

//create user
route.post('/create', async (req, res, next) => {
  const { newsId } = req.body;
  const userId = req.user.id;
  try {
    result = await HistoryDomain.createHistory(userId, newsId)
  } catch (error){
    result = error
  }
  res.json(result);
});

module.exports = route;