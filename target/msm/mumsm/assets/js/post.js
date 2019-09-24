function showPostText(JsonPost) {

    alert(JsonPost.user.firstName);


}

function postStatus() {
    let postText = $("#post-text").val();
    $.post("postStatus",
        {
            text:postText
        }).done(showPostText);
}

$(document).ready(function () {
    $("#post-button").click(postStatus);
})