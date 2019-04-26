module.exports = (sequelize, DataTypes) => {
    return sequelize.define('recyclables', {
      name: DataTypes.STRING,
      description: DataTypes.STRING,
      imagelink: DataTypes.STRING
    });
  }