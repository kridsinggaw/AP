module.exports = (sequelize, Sequelize) => {
    const Project = sequelize.define(
      'project',
      {
        id: {
          type: Sequelize.INTEGER,
          field: 'id',
          autoIncrement: true,
          primaryKey: true
        },
        name: {
          type: Sequelize.STRING,
          field: 'name'
        }
      },
      {
        timestamps: false,
        freezeTableName: true
      }
    );
    return Project;
  };