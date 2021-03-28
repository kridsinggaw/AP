const env = {
    database: 'apnews',
    username: 'root',
    password: 1234,
    host: 'db',
    port: 3306,
    dialect: 'mysql',
    pool: {
      max: 5,
      min: 0,
      acquire: 30000,
      idle: 10000
    }
  };
  
  module.exports = env;