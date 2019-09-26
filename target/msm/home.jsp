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
    </script>


</head>
<body class="animated fadeIn">
<h1>Hello mum</h1>
<!-- Fixed NavBar-->
<%@ include file="fixedNavbar.jsp"%>
<!-- End of Fixed NavBar-->

<div class="row text-center cover-container">
    <a href="#">
        <img src="mumsm/img/Friends/eden.jpg">
    </a>
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
            <!-- right  content-->
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
                    <div class="panel panel-white post panel-shadow post-container" >
                        <div class="post-heading">
                            <div class="pull-left image">
                                <img src="mumsm/img/Friends/guy-2.jpg" class="avatar" alt="user profile image">
                            </div>
                            <div class="pull-left meta">
                                <div class="title h5">
                                    <a href="#" class="post-user-name">Omarion welkdic</a>
                                    uploaded a photo.
                                </div>
                            </div>
                        </div>
                        <div class="post-image">
                            <img src="mumsm/img/Post/game.jpg" class="image show-in-modal" alt="image post">
                        </div>
                        <div class="post-description">
                            <p>This is a short description</p>
                        </div>

<%--                    </div>--%>

                </div>

                <div class="panel panel-white post-load-more panel-shadow text-center">
                    <button class="btn btn-info" id ="load-more">
                        <i class="fa fa-refresh"></i>Load More...
                    </button>
                </div>
            </div><!--end right  content-->
        </div>
    </div>
</div><!-- end timeline content-->

    <!-- Adverst-->

    <%@ include file="advert.jsp"%>

    <!-- End of Adverts-->




<footer class="welcome-footer">
    <div class="container">
        <p>
        Copyright &copy; Surafel, Eden, Gizaw and Getaneh - All rights reserved
        </p>
    </div>
</footer>
</body>
</html>

