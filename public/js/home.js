var searchButton = $("#cms");
var searchBar = $("#author");
var errorMessage = $("#search-error-message");

//possibly need to change "click" to "submit"?
$(searchButton).on("click", searchFunction(searchBar.val().trim()));

function searchFunction(searchTerm) {
    $.get("/api/recyclables/" + searchTerm, function(data) {
      if (data) {
        console.log(data.categoryID);
        window.location.href = "/result?cat_id=" + data.categoryID;
      }
      else{
        errorMessage.text("This item was not found in our database!");
      }
    });
  }