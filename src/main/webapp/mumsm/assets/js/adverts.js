$(document).ready(function () {
    $('#ad-button').click(postAdds);
    // alert("hello welcome")
});


function postAdds() {
    let addText = $("#ad-text").val();
    $.post("postAdds",
        {
            text:addText
        }).done(loadAdd);
}

function loadAdd(JsonAdd) {
    // alert("Add has been added");
    // $('#mumads').text(JsonAdd);

    let addToAdd = $("<h4></h4>");
    addToAdd.text(JsonAdd);
    $('#mumads').prepend(addToAdd);

}
