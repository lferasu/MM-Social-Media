$(document).ready(function () {
    $.post("getAllUsers", {})
        .done(displayUserList);
    $("<button>").click(remove);
});

function remove(evt) {
     evt.parent().remove();
}


function displayUserList(responseText)
{

let rtext = JSON.parse(responseText);
    rtext.forEach(function (elem) {

         let id =0;
        let row = $("<tr></tr>")
        let imageData = $("<td class=\"fa fa-square fa-stack-2x\"></td>");
        let userNameData = $("<td class=\"fa fa-square fa-stack-2x\"></td>");
        let blockData = $("<td ></td>");
        let image = $("<img class=\"avatar>");
        image.attr("id", ""+id);
        let userName = $("<a href=\"# \" class=\"user-link\"></a>");
        let blockUser = $("<button class=\"logoutbutton\"> Block User</button>");
        blockUser.removeAttr("disabled");

        let postHeading = $("<div class=\"post-heading\ fa fa-square fa-stack-2x\"></div>");


         //image
        //
        let profileDirectory = "uploads\\profile-pics\\";
        if(elem.profilePicture)
        {
            image.attr('src',profileDirectory + elem.profilePicture );
        }
        else
        {
            image.attr('src',profileDirectory + "user.jpg" );
        }
        //

        // Name
        userName.text(elem.userName);

        imageData.append(image);
        userNameData.append(userName);
        blockData.append(blockUser);

        row.append(imageData);
        row.append(userNameData);
        row.append(blockData);

        ///// populate

        $("#list-of-users").append(row);
        id++;
    });

}


