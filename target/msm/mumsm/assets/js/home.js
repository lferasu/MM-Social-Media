function showAllPost(responseText) {
let i =0;
    responseText.forEach(function (elem) {
       // var responseObj = JSON.parse(elem);
        let imgid = elem.picture.split(".")[0];

        let outerDiv = $("<div class=\"panel panel-white post panel-shadow post-container\"></div>");
        let postHeading = $("<div class=\"post-heading\"></div>");
        let profileImageContainer = $("<div class=\"pull-left image\"></div>");
        let profileImage = $("<img src=\"mumsm/img/Friends/guy-2.jpg\" class=\"avatar\" alt=\"user profile image\">");
        profileImage.attr("id",""+i);
        let userNameContainer = $("<div class=\"pull-left meta\"></div>");
        let userNameTitle = $("<div class=\"title h5\"></div>");
        let userName = $("<a href=\"#\" class=\"post-user-name\"></a>");
        let postImageContainer = $("<div class=\"post-image\"></div>");
        let postImage = $("<img class=\"\" alt=\"image post\" id= imgid >");
        let postDescriptionContainer = $("<div class=\"post-description\"></div>");
        let postText = $("<p></p>");

        // var attr = $(postImage).attr('src', "..\\..\\..\\WEB-INF\\uploads\\posts\\" + responseObj.picture);
        let profileDirectory = "uploads\\profile-pics\\";
        if(elem.user.profilePicture)
        {
            profileImage.attr('src',profileDirectory + elem.user.profilePicture );
        }
        else
        {
            profileImage.attr('src',profileDirectory + "user.jpg" );
        }

        let directory = "uploads\\posts\\";
        var attr = $(postImage).attr('src', directory + elem.picture);
        postImage.attr("width","500");

        postText.text(elem.text);
        userName.text(elem.user.userName);
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
i++;

    });


}

$(document).ready(
    function () {

        // load posts
        $.post("getAllPost", {})
            .done(showAllPost);

});