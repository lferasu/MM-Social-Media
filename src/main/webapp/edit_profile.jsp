<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="mumsm/img/favicon.png">
    <title>Mum Social Media</title>
    <!-- Bootstrap core CSS -->
    <script>
        <%@ include file="mumsm/assets/js/jquery.1.11.1.min.js" %>
        <%@ include file="mumsm/bootstrap-3.3.5/js/bootstrap.min.js" %>
        <%@ include file="mumsm/assets/js/custom.js" %>
        <%@ include file="mumsm/assets/js/home-made.js" %>
        <%@ include file="mumsm/assets/js/edit-profile.js" %>
    </script>

    <style>
        <%@ include file="mumsm/bootstrap-3.3.5/css/bootstrap.min.css"%>
        <%@ include file="mumsm/bootstrap-3.3.5/css/bootstrap.min.css"%>
        <%@ include file="mumsm/assets/css/errors.css"%>
        <%@ include file="mumsm/assets/css/animate.min.css"%>
        <%@ include file="mumsm/font-awesome-4.4.0/css/font-awesome.min.css"%>
        <%@ include file="mumsm/assets/css/timeline.css"%>
        <%@ include file="mumsm/assets/css/edit-profile.css"%>
    </style>
    <![endif]-->
</head>
<body class="animated fadeIn">
<h1>Hello mum</h1>

<!-- Fixed navbar -->
<%@ include file="fixedNavbar.jsp"%>

<div class="row text-center cover-container">
    <a href="#" id="profile-info-container"></a>
    <div id= "nameOfUser"></div>
    <p class="user-text">sharing awesome ideas with your friends, you can grow, grow fast</p>
</div>

<form action="editprofile" method="post" id="profile-form" enctype="multipart/form-data">

    <div id="image-container">
        <div id="image-frame">
            <img src="" id="profile-img-tag" width="200px" />
        </div>
        <div id ="image-select">
            <input type="file" name="file" id="profile-img">
        </div>

        <input type="text" name = "profile-picture" hidden>

    </div>



    <div id="edit-profile-container">

        <label for="first-name" class="left-float">First Name:</label>
        <input type="text" name="first-name" id="first-name" placeholder="Your First Name" required/>

        <label for="last-name" class="right-float">Last Name: </label>
        <input type="text" name="last-name" id="last-name" placeholder="Your Last Name" required/>


        <label for="occupation" class="left-float">Occuption: </label>
        <input type="text" name="occupation" id="occupation" placeholder="" required/>

        <label for="phone" class="right-float">Phone: </label>
        <input type="text" name="phone" id="phone" placeholder="641-765-2342" required/>


        <label for="city" class="left-float">City:</label>
        <input type="text" name="city" id="city" placeholder="Your City Name" required/>

        <label for="country" class="right-float">Country: </label>
        <select id="country" name ="country">
            <option>hello</option>
        </select>

        <label for="birth-day" class="center-float"> BirthDay</label>
        <input type="date" id="birth-day" name="birth-date">

       <input type ="submit" id="submitButton" >
        <input type ="reset" id="reset">
    </div>
</form>

<<<<<<< HEAD

<%--<%@ include file="onlineUsers.jsp"%>--%>
<%@ include file="advert.jsp"%>

<!-- end timeline content-->
=======
>>>>>>> 23737fd95e19329c2132105ded51b556452d0dd5

<footer class="welcome-footer">
    <div class="container">
        <p>
        Copyright &copy; Surafel, Eden, Gizaw, Getaneh - All rights reserved!
        </p>
    </div>
</footer>
</body>
</html>

