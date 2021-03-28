module.exports = (sequelize, Sequelize) => {
    const User = sequelize.define(
      'user',
      {
        id: {
          type: Sequelize.INTEGER,
          field: 'id',
          autoIncrement: true,
          primaryKey: true
        },
        username: {
          type: Sequelize.STRING,
          field: 'username'
        },
        password: {
          type: Sequelize.STRING,
          field: 'password'
        },
        phone: {
          type: Sequelize.STRING,
          field: 'phone'
        },
        first_name: {
          type: Sequelize.STRING,
          field: 'first_name'
        },
        last_name: {
          type: Sequelize.STRING,
          field: 'last_name'
        },
        project_id: {
          type: Sequelize.INTEGER,
          field: 'project_id'
        }
      },
      {
        timestamps: false,
        freezeTableName: true,
        instanceMethods: {
          generateHash(password) {
              return bcrypt.hash(password, bcrypt.genSaltSync(8));
          },
          validPassword(password) {
              return bcrypt.compare(password, this.password);
          }
        }
      }
    );
    return User;
  };