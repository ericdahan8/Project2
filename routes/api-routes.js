
var db = require("../models");

module.exports = function(app) {

  app.get("/api/recyclables", function(req, res) {
    db.recyclables.findAll().then(function(results) {
      res.json(results);
    });
  });

  app.get("/api/recyclables/:id", function(req, res) {
    db.recyclables.findAll({
      where: {
        id: req.params.id
      }
    })
      .then(function(results){
      res.json(results);
    });
  });

  app.post("/api/recyclables", function(req, res) {
    db.recyclables.create({
      name: req.body.text
    }).then(function(results){
      res.json(results);
    });
    res.status(204).end();
  });
};
