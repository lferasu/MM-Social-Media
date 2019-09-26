function displayUserList(responseText) {
alert("hello");
}

$(document).ready(function () {
    $.post("getAllUsers", {})
        .done(displayUserList);
});


