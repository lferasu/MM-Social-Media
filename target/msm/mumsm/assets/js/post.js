$(document).ready(function () {
    $("#post-button").click(postStatus);
    // alert("hello welcome")
});




function loadPost(JsonPost) {

    alert("came back");

    let outerDiv = $("<div class=\"panel panel-white post panel-shadow post-container\"></div>");
    let postHeading = $("<div class=\"post-heading\"></div>");
    let profileImageContainer = $("<div class=\"pull-left image\"></div>");
    let profileImage = $("<img src=\"mumsm/img/Friends/guy-2.jpg\" class=\"avatar\" alt=\"user profile image\">");
    let userNameContainer = $("<div class=\"pull-left meta\"></div>");
    let userNameTitle = $("<div class=\"title h5\"></div>");
    let userName = $("<a href=\"#\" class=\"post-user-name\"></a>");
    let postImageContainer = $("<div class=\"post-image\"></div>");
    let postImage = $("<img class=\"image show-in-modal\" alt=\"image post\">");
    let postDescriptionContainer = $("<div class=\"post-description\"></div>");
    let postText = $("<p></p>");

//

    var attr = $(postImage).attr('src');
    postText.text(JsonPost.text);
    userName.text(JsonPost.user.userName);
// create structure
    postDescriptionContainer.append(postText);
    if(attr)
    {
        postImageContainer.append(postImage);
    }
    userNameContainer.append(userNameTitle);
    userNameTitle.append(userName);
    profileImageContainer.append(profileImage);
    postHeading.append(profileImageContainer);
    postHeading.append(userNameContainer);
    outerDiv.append(postHeading);
    outerDiv.append(postImageContainer);
    outerDiv.append(postDescriptionContainer);
    $("#posts").prepend(outerDiv);

}

function showPostText(JsonPost) {

}


//posting status
function postStatus(event) {
    event.stopPropagation();
    event.preventDefault();
    let postText = $("#post-text").val();
    const sampleFile = $("#profile-img")[0].files[0];
    const formdata = new FormData();
    formdata.append("postText", postText);
    formdata.append("sampleFile", sampleFile);

    // $.post("statusPost",
    //     {
    //         text:postText,
    //         postImage : formdata
    //
    //     }).done(loadPost);


    var xhr = new XMLHttpRequest();

    xhr.open("POST","statusPost", true);

    xhr.send(formdata);

    xhr.onload =      function(responseText) {

        if (this.status == 200) {
            var responseObj = JSON.parse( responseText.target.response);
            let imgid = responseObj.picture.split(".")[0];

            let outerDiv = $("<div class=\"panel panel-white post panel-shadow post-container\"></div>");
            let postHeading = $("<div class=\"post-heading\"></div>");
            let profileImageContainer = $("<div class=\"pull-left image\"></div>");
            let profileImage = $("<img src=\"mumsm/img/Friends/guy-2.jpg\" class=\"avatar\" alt=\"user profile image\">");
            let userNameContainer = $("<div class=\"pull-left meta\"></div>");
            let userNameTitle = $("<div class=\"title h5\"></div>");
            let userName = $("<a href=\"#\" class=\"post-user-name\"></a>");
            let postImageContainer = $("<div class=\"post-image\"></div>");
            let postImage = $("<img class=\"image show-in-modal\" alt=\"image post\" id= imgid >");
            let postDescriptionContainer = $("<div class=\"post-description\"></div>");
            let postText = $("<p></p>");

//


            // var attr = $(postImage).attr('src', "..\\..\\..\\WEB-INF\\uploads\\posts\\" + responseObj.picture);
            var attr = $(postImage).attr('src', $("#profile-img-tag").attr('src'));
            let directory = "uploads\\posts\\";
            var attr = $(postImage).attr('src', directory + responseObj.picture);
            $("#imgid").attr("width","500");


            postText.text(responseObj.text);
            userName.text(responseObj.user.userName);
            // create structure
            postDescriptionContainer.append(postText);
            if(attr)
            {
                postImageContainer.append(postImage);
            }
            userNameContainer.append(userNameTitle);
            userNameTitle.append(userName);
            profileImageContainer.append(profileImage);
            postHeading.append(profileImageContainer);
            postHeading.append(userNameContainer);
            outerDiv.append(postHeading);
            outerDiv.append(postImageContainer);
            outerDiv.append(postDescriptionContainer);
            $("#posts").prepend(outerDiv);
            $("#profile-img-tag").attr('src',"");
        }
    };
}