
$( document ).ready(function() {
    $("#registerButton").click(registerButtonClicked);
    $("#register-userName").change(validateUserName);
    // $('#logout').click(logoutFunction);
});

// function logoutFunction() {
//     $.ajax('LogoutServlet', {
//         type: get,
//         success: function () {
//
//         },
//         error: function () {
//
//         }
//     })
//
// }


function validateUserName () {
    let userName = $("#register-userName").val() ;
    $.post("checkUserName",{
        "userName" :userName
    }).done( function (data) {
        if(data == "duplicate")
        {
            $("#userName-error").text("user name already taken");
            $("#register-userName").empty();
            $("#registerButton").attr("disabled", true);
            return false;
        }
        else
        {
            $("#userName-error").empty();
            $('#registerButton').removeAttr("disabled");
        }
    });
}

function ajaxCheckUserNameDuplication() {
}

function registerButtonClicked() {

    validateUserName();
    $(".login-error").empty();
    // check if email is entered
    if(!$("#register-email").val())
    {
        $("#email-eror").text("please enter user name ");
        return false;
    }

    //check if username is entered
    if(!$("#register-userName").val())
    {
        $("#userName-error").text("please enter user name");
        return false;
    }
    //check if password is enetered
    if(!$("#register-password").val())
    {
        $("#password-error").text("please enter password");
        return false;
    }
    //check if confirm password is entered

    if(!$("#register-confirmPassword").val()){
        $("#confirmPassword-error").text("please confirm password");
        return false;
    }

    if($("#register-password").val() != $("#register-confirmPassword").val())
    {
        $("#password-error").text("password missmatch");
    }

}

$("#what").click(function () {
    let userName = $(this).val() ;
});

$("#register-userName").change(function() {
    let userName = $(this).val() ;

    $.post("checkUserName",{
        userName :userName
    }).done( function (data) {
        if(data == "duplicate")
        {
            $("#userName-error").text("user name already taken");
            $("#register-userName").empty();
        }
    });
});
