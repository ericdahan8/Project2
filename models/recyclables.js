module.exports = (sequelize, DataTypes) => {
    return sequelize.define('recyclables', {
      itemname: DataTypes.STRING,
      isRecyclable: DataTypes.BOOLEAN,
      categoryID: DataTypes.STRING
    },
    {
      timestamps: false
    });
  }