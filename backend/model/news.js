module.exports = (sequelize, Sequelize) => {
    const News = sequelize.define(
      'news',
      {
        id: {
          type: Sequelize.INTEGER,
          field: 'id',
          autoIncrement: true,
          primaryKey: true
        },
        title_th: {
          type: Sequelize.STRING,
          field: 'title_th'
        },
        title_en: {
          type: Sequelize.STRING,
          field: 'title_en'
        },
        detail_th: {
          type: Sequelize.TEXT,
          field: 'detail_th'
        },
        detail_en: {
          type: Sequelize.TEXT,
          field: 'detail_en'
        },
        project_id: {
          type: Sequelize.INTEGER,
          field: 'project_id'
        },
        start_date: {
          type: Sequelize.DATE,
          field: 'start_date'
        },
        end_date: {
          type: Sequelize.DATE,
          field: 'end_date'
        }
      },
      {
        timestamps: false,
        freezeTableName: true
      }
    );
    return News;
  };