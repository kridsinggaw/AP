const db = require('../util/db.config');
const Sequelize = require('sequelize');
const { Op } = Sequelize;
const UserModel = db.user;
const NewsModel = db.news;
const HistoryModel = db.history;

const getUserNews = async (userId) => {
  try {
    // Find user news
    UserModel.hasMany(NewsModel, {sourceKey: 'project_id', foreignKey: 'project_id'})
    const userNews = await UserModel.findOne({ 
      attributes: ['username', 'first_name', 'last_name'],
      where: { id: userId }, include: [NewsModel]
    })
    // Check isRead news
    const news = userNews.news.map((item)=>{
      return item.id
    })
    const histories = await HistoryModel.findAll({ 
      where: { 
        news_id: { [Op.in]: news },
        user_id: userId
      }
    })
    const readList = histories.map((item)=>{
      return item.news_id
    })
    userNews.news.map((item)=>{
      if(readList.includes(item.id)){
        item.dataValues.isRead = true
      } else {
        item.dataValues.isRead = false
      }
      return item
    })
    return userNews
  } catch (error){
    return error
  }
}

module.exports = {
  getUserNews
  }