// Dependencies
var path = require("path");

// Routes
module.exports = function(app) {

  app.get("/", function(req, res) {
    res.sendFile(path.join(__dirname, "../public/home.html"));
  });

  app.get("/result", function(req, res) {
    res.sendFile(path.join(__dirname, "../public/result.html"));
  });

  app.get("/update", function(req, res) {
    res.sendFile(path.join(__dirname, "../public/update.html"));
  });
};