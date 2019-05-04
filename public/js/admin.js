$(document).ready(function (event) {
    var postButton = $("#post-button");
    var updateButton = $("#update-button");
    var deleteButton = $("#delete-button");
    var categoryDDL = $("#category-ddl")
    var categoryDDL2 = $("#category-ddl2")
    var deleteDDL = $("#delete-ddl");
    var postMessage = $("#post-message");
    var recyclableInput = $("#add-rec");

    fetchDeleteDDL();

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
            fetchDeleteDDL();
        });
    }

    updateButton.on("click", function (event) {
        event.preventDefault();
        window.location.href = "/update?cat_id=" + categoryDDL2.val();
    });

    function fetchDeleteDDL(){
        deleteDDL.empty();
        $.get("/api/recyclables/", function (data) {
            if (data) {
                console.log(data);
                for (let i = 0; i < data.length; i++) {
                    deleteDDL.append($('<option></option>').val(data[i].id).html(data[i].itemname));
                }
            }
        });
    }
    
    deleteButton.on("click", function (event) {
        event.preventDefault();
        deleteRecyclable(deleteDDL.val());
        fetchDeleteDDL();
    });

    function deleteRecyclable(id) {
        $.ajax({
            method: "DELETE",
            url: "/api/recyclables/" + id
        })
            .then(function () {
                getPosts(postCategorySelect.val());
            });
    }

});
