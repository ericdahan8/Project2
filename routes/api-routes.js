

var express = require("express");
//var result = require("../models/result.js");
var router = express.Router();

router.get("/", function (req, res) {
    $.ajax({
        url: "https://data.cityofnewyork.us/resource/sxx4-xhzg.json",
        type: "GET",
        data: {
          "$limit" : 5000,
          "$$app_token" : "Am83r4ZpRaYplXFQitFvyEJar"
        }
    }).done(function(data) {
      alert("Retrieved " + data.length + " records from the dataset!");
      console.log(data);
    });
});

router.post("/api/", function (req, res) {
});

module.exports = router;