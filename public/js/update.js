$(document).ready(function() {
    // Gets an optional query string from our url (i.e. ?cat_id=23)
    var url = window.location.search;
    var categoryId;
  
    // If we have this section in our url, we pull out the category id from the url
    // In localhost:8080/result?cat_id=1, categoryId is 1
    if (url.indexOf("?cat_id=") !== -1) {
      categoryId = url.split("=")[1];
      getCategory(categoryId);
    }
  
    // Getting jQuery references
    var name = $("#category-name");
    var img = $("#category-img");
    var desc = $("#category-description");
  
    // Gets category data and displays it
    function getCategory(id) {
      $.get("/api/categories/" + id, function(data) {
        if (data) {
          img.attr("src", data.imagelink);
          desc.append(data.description);
        }
      });
    }

  });
