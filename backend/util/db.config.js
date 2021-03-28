const Sequelize = require('sequelize');
const env = require('./env');
const sequelize = new Sequelize(`${env.database}`, `${env.username}`, `${env.password}`, {
  host: `${env.host}`,
  dialect: `${env.dialect}`,
  operatorsAliases: false,
  pool: {
    max: env.max,
    min: env.pool.min,
    acquire: env.pool.acquire,
    idle: env.pool.idle
  },
  define: {
    paranoid: true
  }
});
const db = {};
db.Sequelize = Sequelize;
db.sequelize = sequelize;

db.user = require('../model/user.js')(sequelize, Sequelize);
db.news = require('../model/news.js')(sequelize, Sequelize);
db.project = require('../model/project.js')(sequelize, Sequelize);
db.history = require('../model/history.js')(sequelize, Sequelize);

module.exports = db;