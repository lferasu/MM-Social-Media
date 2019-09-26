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

     let pPicture =  $("<img id = \"profile-picture-circle\"  class=\"img-nav\">");

     let directory = "uploads\\profile-pics\\";
     if(JsonName.profilePicture)
     {
         (pPicture).attr('src', directory + JsonName.profilePicture);
     }
     else
     {
         (pPicture).attr('src', directory + "user.jpg");
     }



    // let directory = "uploads\\posts\\";
    // var attr = $(postImage).attr('src', directory + responseObj.picture);


    $("#profile-info-container").append(pPicture);

   // $("#profile-picture-circle").setAttribute("src", JsonName.profilePicture);
    $('#nameOfUser').append(dynamicName);
    $('.nameOfUser').prepend(dynamicName2);
}
