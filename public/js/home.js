$(document).ready(function(event) {
  var searchButton = $("#search-button");
  var searchBar = $("#search-bar");
  var errorMessage = $("#search-error-message");

  //possibly need to change "click" to "submit"?
  searchButton.on("click", function(event) {
    event.preventDefault();
    searchFunction(searchBar.val().trim());
  });

  function searchFunction(searchTerm) {
    $.get("/api/recyclables/" + searchTerm, function(data) {
      if (data) {
        console.log(data.categoryID);
        window.location.href = "/result?cat_id=" + data.categoryID;
      } else {
        errorMessage.text("This item was not found in our database!");
      }
    });
  }
});
/////Not working fully
window.onscroll = function() {
  scrollFunction();
};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    document.getElementById("#scrollUp");
  } else {
    document.getElementById("#scrollUp");
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}
