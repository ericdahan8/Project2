module.exports = (sequelize, DataTypes) => {
    return sequelize.define('categories', {
      name: DataTypes.STRING,
      description: DataTypes.TEXT,
      imagelink: DataTypes.STRING
    },
    {
      timestamps: false
    });
  }