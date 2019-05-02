"use strict";

const fs = require("fs");
const path = require("path");
const Sequelize = require("sequelize");
const basename = path.basename(__filename);
const env = process.env.NODE_ENV || "development";
const config = require(__dirname + "/../config/config.json")[env];
const db = {};

//change this to dot_env later:
//let sequelize;
//sequelize = new Sequelize(
//  "ilgd6w3fv2b1hprm",
//  "xfwtxxtle8ag4noj",
//  "wiycii6vuedplk2b",
//  {
//    host: "wftuqljwesiffol6.cbetxkdyhwsb.us-east-1.rds.amazonaws.com",
//    dialect: "mysql"
//  }
//);

let sequelize;
sequelize = new Sequelize(System.getenv("database"), System.getenv("username"), System.getenv("password"), 
    {
      host: System.getenv("host"),
      dialect: System.getenv("dialect")
    });

fs.readdirSync(__dirname)
  .filter(file => {
    return (
      file.indexOf(".") !== 0 && file !== basename && file.slice(-3) === ".js"
    );
  })
  .forEach(file => {
    const model = sequelize["import"](path.join(__dirname, file));
    db[model.name] = model;
  });

Object.keys(db).forEach(modelName => {
  if (db[modelName].associate) {
    db[modelName].associate(db);
  }
});

db.sequelize = sequelize;
db.Sequelize = Sequelize;

module.exports = db;
