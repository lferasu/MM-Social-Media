$(document).ready(function () {
    $("#post-button").click(postStatus);
    // alert("hello welcome")
});

$('#ad-button').click(postAdds2);
// $('#ad-button').click(postAdds);

function postAdds2() {
    alert("advertisement");

}




function loadPost(JsonPost) {

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

function postStatus() {
    let postText = $("#post-text").val();
    $.post("postStatus",
        {
            text:postText
        }).done(loadPost);
}

function postAdds() {
    let addText = $("#ad-text").val();
    $.post("postAdds",
        {
            text:addText
        }).done(loadAdd);
}
function loadAdd(JsonAdd) {
    alert("Add has been added");

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
    $("#adverts").prepend(outerDiv);
}

