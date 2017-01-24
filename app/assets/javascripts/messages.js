function deleteMessage(element) {
    $.ajax({
        type: "DELETE",
        url: "/messages/" + element.getAttribute("data"),
        data: {
            id: (element.getAttribute("data")),
            "_method": "delete"
        }
    }).done(function() {
        location.reload();
    });

}