module.exports = (sequelize, DataTypes) => {
    return sequelize.define('Todo', {
      text: DataTypes.STRING,
      complete: DataTypes.BOOLEAN
    });
  }