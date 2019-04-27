module.exports = (sequelize, DataTypes) => {
    return sequelize.define('recyclables', {
      itemname: DataTypes.STRING,
      categoryID: DataTypes.STRING
    });
  }