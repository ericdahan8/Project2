$(document).ready(function (event) {
    var postButton = $("#post-button");
    var categoryDDL = $("#category-ddl")
    var postMessage = $("#post-message");
    var recyclableInput = $("#add-rec");

    postButton.on("click", function (event) {
        event.preventDefault();
        var newRecyclable = {
            itemname: recyclableInput.val().trim(),
            categoryID: categoryDDL.val(),
            isRecyclable: true
        };
        console.log(newRecyclable);
        postRecyclable(newRecyclable);
    });

    function postRecyclable(input) {
        $.post("/api/recyclables/", input, function (res) {
            postMessage.text("Added new entry to table: " + recyclableInput.val().trim());
            recyclableInput.val("");
        });
    }
});