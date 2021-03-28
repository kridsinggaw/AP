const db = require('../util/db.config');
const Sequelize = require('sequelize');
const { Op } = Sequelize;
const HistoryModel = db.history;

const createHistory = async (userId, newsId) => {
  try {
    const historyData = {
      user_id: userId,
      news_id: newsId
    }
    const result = HistoryModel.create(historyData);
    return result
  } catch (error){
    return error
  }
}

module.exports = {
  createHistory
  }