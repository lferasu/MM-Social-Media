$(document).ready(function () {
    $.ajax("displayUserInfo")
        .done(loadUserName);
});

function loadUserName(JsonName) {
    // alert("in Dynamic name page");

    let dynamicName = $("<h1 class=\"profile-name\"></h1>");
    let dynamicName2 = $("<span></span>");
    dynamicName.text(JsonName.userName);
    dynamicName2.text(JsonName.userName);


    $('#nameOfUser').append(dynamicName);
    $('.nameOfUser').prepend(dynamicName2);
}
