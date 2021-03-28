module.exports = (sequelize, Sequelize) => {
    const History = sequelize.define(
      'history',
      {
        id: {
          type: Sequelize.INTEGER,
          field: 'id',
          autoIncrement: true,
          primaryKey: true
        },
        user_id: {
          type: Sequelize.INTEGER,
          field: 'user_id'
        },
        news_id: {
          type: Sequelize.INTEGER,
          field: 'news_id'
        }
      },
      {
        timestamps: false,
        freezeTableName: true
      }
    );
    return History;
  };