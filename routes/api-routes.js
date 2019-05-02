
var db = require("../models");

module.exports = function(app) {

  app.get("/api/categories", function(req, res) {
    db.categories.findAll().then(function(results) {
      res.json(results);
    });
  });

  app.get("/api/categories/:id", function(req, res) {
    db.categories.findOne({
      where: {
        id: req.params.id
      }
    })
      .then(function(results){
      res.json(results);
    });
  });

  app.get("/api/recyclables", function(req, res) {
    db.recyclables.findAll().then(function(results) {
      res.json(results);
    });
  });

  app.get("/api/recyclables/:name", function(req, res) {
    db.recyclables.findOne({
      where: {
        itemname: req.params.name
      }
    })
      .then(function(results){
      res.json(results);
    });
  });

  app.post("/api/recyclables", function(req, res) {
    db.recyclables.create({
      name: req.body.name,
      category: req.body.category
    }).then(function(results){
      res.json(results);
    });
    res.status(204).end();
  });
};
