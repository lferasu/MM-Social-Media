<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="mumsm/img/favicon.png">
    <title>MUM Social Media</title>


   <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <style>
        <%@ include file="mumsm/bootstrap-3.3.5/css/bootstrap.min.css"%>
        <%@ include file="mumsm/bootstrap-3.3.5/css/bootstrap.min.css"%>
        <%@ include file="mumsm/assets/css/errors.css"%>
        <%@ include file="mumsm/assets/css/animate.min.css"%>
        <%@ include file="mumsm/font-awesome-4.4.0/css/font-awesome.min.css"%>
        <%@ include file="mumsm/assets/css/timeline.css"%>
    </style>
    <script>
        <%@ include file="mumsm/assets/js/jquery.1.11.1.min.js" %>
        <%@ include file="mumsm/bootstrap-3.3.5/js/bootstrap.min.js" %>
        <%@ include file="mumsm/assets/js/custom.js" %>
        <%@ include file="mumsm/assets/js/home-made.js" %>
        <%@ include file="mumsm/assets/js/post.js" %>
        <%@ include file="mumsm/assets/js/userInfoDisplay.js" %>
        <%@ include file="mumsm/assets/js/adverts.js" %>
        <%@ include file="mumsm/assets/js/home.js" %>
    </script>


</head>
<body class="animated fadeIn">
<h1>Hello mum</h1>
<!-- Fixed NavBar-->
<%@ include file="fixedNavbar.jsp"%>

<nav class="navbar navbar-default navbar-fixed-top navbar-principal">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="login.jsp">

                <b>MUM Social</b>
            </a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <div class="col-md-5 col-sm-4">
                <form class="navbar-form">
                    <div class="form-group" style="display:inline;">
                        <div class="input-group" style="display:table;">
                            <input class="form-control" name="search" placeholder="Search..." autocomplete="off" type="text">
                            <span class="input-group-addon" style="width:1%;">
			          <span class="glyphicon glyphicon-search"></span>
			        </span>
                        </div>
                    </div>
                </form>
            </div>
            <ul class="nav navbar-nav navbar-right">
                <li>

                    <a href="profile.jsp" class="nameOfUser" id ="profile-link">

<%--                        Home Page--%>
<%--                        <%= session.getAttribute("logggedInUser") %>--%>
<%--                        <div class="nameOfUser">Hello Mrs</div>--%>
<%--                        <img id = "profile-picture-circle"  class="img-nav">--%>

                    </a>
                </li>
                <li class="active"><a href="home.jsp"><i class="fa fa-bars"></i>&nbsp;Home</a></li>
                <li><a href="messages.jsp"><i class="fa fa-comments"></i></a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">  Pages
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="recover_password.jsp">Recover password</a></li>
                        <li><a href="list_users.jsp">List users</a></li>
                        <li><a href="photos.jsp">Photos</a></li>
                        <li><a href="friends.jsp">Friends</a></li>
                        <li><a href="people_directory.jsp">User directory</a></li>
                        <li><a href="about.jsp">About</a></li>
                        <li><a href="edit_profile.jsp">Edit profile</a></li>
                        <li><a href="notifications.jsp">Notifications</a></li>
                        <li><a href="blank-cover.jsp">Blank cover</a></li>

                        <li><a href="registration_email.jsp">Registration email</a></li>
                        <li><a href="grid_posts.jsp">Grid posts</a></li>
                        <li><a href="error404.jsp">Error 404</a></li>
                        <li><a href="error500.jsp">Error 500</a></li>
                    </ul>
                </li>
                <li><a href="#" class="nav-controller"><i class="fa fa-user"></i>Users</a></li>
                <li>
                    <form method="post" action="logout" class="nav-controller">
                        <input type="submit" value="Log out" id="logout" >
                    </form>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="row text-center cover-container">

<c:if test="${logggedInUser.userName != 'Admin'}">
  <a href="#" id="profile-info-container">
  </a>
</c:if>

<c:if test="${logggedInUser.userName == 'Admin'}">
    <a href="#">

        <img src="mumsm/img/Friends/eden.jpg">
    </a>
</c:if>

<!-- User name  display -->
    <div id="nameOfUser"></div>

    <p class="user-text">Sharing awesome ideas with your friends, you can grow, grow fast</p>
</div>
<!-- Timeline content -->
<div class="container">
    <div class="col-md-10 no-paddin-xs">
        <div class="row">
            <!-- left content-->
            <div class="profile-nav col-md-4">
                <%@ include file="weather.jsp"%>

                <!-- Add Advertisement -->
    <c:if test="${logggedInUser.userName == 'Admin'}">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="panel-title">Add Advert</h3>

                        <form>
                            <textarea placeholder="Your Adds Here" id = "ad-text" rows="2" class="form-control input-lg p-text-area" name="adds"></textarea>
                        </form>
                        <button class="btn btn-info pull-right" id ="ad-button">Post</button>

                    </div>
                    <div class="panel-body" id="adverts" style="background-color: #D9EDF7">

                    </div>
                </div><!-- End Add Advertisement -->
    </c:if>
            </div><!-- end left content-->
            <div class="profile-info col-md-8  animated fadeInRight">
                <div class="panel">
                    <form>
                        <textarea placeholder="Whats in your mind today?" id = "post-text" rows="2" class="form-control input-lg p-text-area"></textarea>
                    </form>
                    <div class="panel-footer">
                        <button class="btn btn-info pull-right" id ="post-button">Post</button>
                        <ul class="nav nav-pills">
                            <li>
                                <a href="#"><i class="fa fa-map-marker"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-camera"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class=" fa fa-film"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-microphone"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- first post-->
                <div id="posts">

                </div>
        </div>
        </div><!-- end timeline content-->

    <!-- Adverst-->

    <%@ include file="advert.jsp"%>

    <!-- End of Adverts-->
    </div>
</div>

<footer class="welcome-footer">
    <div class="container">
        <p>
        Copyright &copy; Surafel, Eden, Gizaw and Getaneh - All rights reserved
        </p>
    </div>
</footer>
</body>
</html>

