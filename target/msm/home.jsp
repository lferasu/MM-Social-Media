<%@ page contentType="text/html; charset=UTF-8" language="java" %>
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
    <!-- Bootstrap core CSS -->
<%--    <link href="bootstrap-3.3.5/css/bootstrap.min.css" rel="stylesheet">--%>
<%--    <link href="mumsm/bootstrap-3.3.5/css/bootstrap.min.css" rel="stylesheet">--%>
<%--    <link href="mumsm/assets/css/animate.min.css" rel="stylesheet">--%>
<%--    <link href="mumsm/font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet">--%>
<%--    <link href="mumsm/assets/css/timeline.css" rel="stylesheet">--%>
<%--    <script src="mumsm/assets/js/jquery.1.11.1.min.js"></script>--%>
<%--    <script src="mumsm/bootstrap-3.3.5/js/bootstrap.min.js"></script>--%>
<%--    <script src="mumsm/assets/js/custom.js"></script>--%>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>

<%--<!--    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>-->--%>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>-->

    <style>
        <%@ include file="mumsm/bootstrap-3.3.5/css/bootstrap.min.css"%>
        <%@ include file="mumsm/bootstrap-3.3.5/css/bootstrap.min.css"%>
        <%@ include file="mumsm/assets/css/errors.css"%>
        <%@ include file="mumsm/assets/css/animate.min.css"%>
        <%@ include file="mumsm/font-awesome-4.4.0/css/font-awesome.min.css"%>
        <%@ include file="mumsm/assets/css/timeline.css"%>
        p{
            size :32px;
            color : red;

        }
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
        <img src="mumsm/img/Friends/woman-1.jpg">
    </a>
<!-- User name  display -->
    <div id="nameOfUser"></div>

    <p class="user-text">sharing awesome ideas with your friends, you can grow, grow fast</p>
</div>
<!-- Timeline content -->
<div class="container">
    <div class="col-md-10 no-paddin-xs">
        <div class="row">
            <!-- left content-->
            <div class="profile-nav col-md-4">
                <!-- Friends activity -->
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="panel-title">Friends activity</h3>
                    </div>
                    <div class="panel-body">
                        <div class="notification-row">
                            <div class="notification-padding">
                                <div class="sidebar-fa-image">
                                    <img class="notifications" src="msm/img/Friends/guy-2.jpg">
                                </div>
                                <div class="sidebar-fa-text">
                                    <b><a href="#">Carlos marthur</a></b> reviewed a
                                    <b><a href="#">publication</a></b>.
                                    <span class="timeago" >5 days ago</span>
                                </div>
                            </div>
                        </div>
                        <div class="notification-row">
                            <div class="notification-padding">
                                <div class="sidebar-fa-image">
                                    <img class="notifications" src="msm/img/Friends/woman-2.jpg">
                                </div>
                                <div class="sidebar-fa-text">
                                    <b><a href="#">Hillary Markston</a></b> shared a
                                    <b><a href="#">publication</a></b>.
                                    <span class="timeago" >5 min ago</span>
                                </div>
                            </div>
                        </div>
                        <div class="notification-row">
                            <div class="notification-padding">
                                <div class="sidebar-fa-image">
                                    <img class="notifications" src="msm/img/Friends/woman-3.jpg">
                                </div>
                                <div class="sidebar-fa-text">
                                    <b><a href="#">Leidy marshel</a></b> shared a
                                    <b><a href="#">publication</a></b>.
                                    <span class="timeago" >5 min ago</span>
                                </div>
                            </div>
                        </div>
                        <div class="notification-row">
                            <div class="notification-padding">
                                <div class="sidebar-fa-image">
                                    <img class="notifications" src="msm/img/Friends/woman-4.jpg">
                                </div>
                                <div class="sidebar-fa-text">
                                    <b><a href="#">Presilla bo</a></b> shared a
                                    <b><a href="#">publication</a></b>.
                                    <span class="timeago" >5 min ago</span>
                                </div>
                            </div>
                        </div>
                        <div class="notification-row">
                            <div class="notification-padding">
                                <div class="sidebar-fa-image">
                                    <img class="notifications" src="msm/img/Friends/woman-4.jpg">
                                </div>
                                <div class="sidebar-fa-text">
                                    <b><a href="#">Martha markguy</a></b> shared a
                                    <b><a href="#">publication</a></b>.
                                    <span class="timeago" >5 min ago</span>
                                </div>
                            </div>
                        </div>
                        <div class="notification-row">
                            <div class="notification-padding">
                                <div class="sidebar-fa-image">
                                    <img class="notifications" src="mumsm/img/Friends/guy-5.jpg">
                                </div>
                                <div class="sidebar-fa-text">
                                    <b><a href="#">Carlos marthur</a></b> reviewed a
                                    <b><a href="#">publication</a></b>.
                                    <span class="timeago" >5 days ago</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- End Friends activity -->

                <!-- Add Advertisement -->
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

    <!-- Adverts-->
    <%--    </c:if>--%>

<!-- Online users sidebar content-->
<%--<div class="chat-sidebar focus">--%>
<%--    <div class="list-group text-left">--%>
<%--        <p class="text-center visible-xs"><a href="#" class="hide-chat">Hide</a></p>--%>
<%--        <p class="text-center chat-title">Online users</p>--%>
<%--        <a href="messages.jsp" class="list-group-item">--%>
<%--            <i class="fa fa-check-circle connected-status"></i>--%>
<%--            <img src="mumsm/img/Friends/guy-2.jpg" class="img-chat img-thumbnail">--%>
<%--            <span class="chat-user-name">Jeferh Smith</span>--%>
<%--        </a>--%>
<%--        <a href="messages.jsp" class="list-group-item">--%>
<%--            <i class="fa fa-times-circle absent-status"></i>--%>
<%--            <img src="mumsm/img/Friends/woman-1.jpg" class="img-chat img-thumbnail">--%>
<%--            <span class="chat-user-name">Dapibus acatar</span>--%>
<%--        </a>--%>
<%--        <a href="messages.jsp" class="list-group-item">--%>
<%--            <i class="fa fa-check-circle connected-status"></i>--%>
<%--            <img src="mumsm/img/Friends/guy-3.jpg" class="img-chat img-thumbnail">--%>
<%--            <span class="chat-user-name">Antony andrew lobghi</span>--%>
<%--        </a>--%>
<%--        <a href="messages.jsp" class="list-group-item">--%>
<%--            <i class="fa fa-check-circle connected-status"></i>--%>
<%--            <img src="mumsm/img/Friends/woman-2.jpg" class="img-chat img-thumbnail">--%>
<%--            <span class="chat-user-name">Maria fernanda coronel</span>--%>
<%--        </a>--%>
<%--        <a href="messages.jsp" class="list-group-item">--%>
<%--            <i class="fa fa-check-circle connected-status"></i>--%>
<%--            <img src="mumsm/img/Friends/guy-4.jpg" class="img-chat img-thumbnail">--%>
<%--            <span class="chat-user-name">Markton contz</span>--%>
<%--        </a>--%>
<%--        <a href="messages.jsp" class="list-group-item">--%>
<%--            <i class="fa fa-times-circle absent-status"></i>--%>
<%--            <img src="mumsm/img/Friends/woman-3.jpg" class="img-chat img-thumbnail">--%>
<%--            <span class="chat-user-name">Martha creaw</span>--%>
<%--        </a>--%>
<%--        <a href="messages.jsp" class="list-group-item">--%>
<%--            <i class="fa fa-times-circle absent-status"></i>--%>
<%--            <img src="mumsm/img/Friends/woman-8.jpg" class="img-chat img-thumbnail">--%>
<%--            <span class="chat-user-name">Yira Cartmen</span>--%>
<%--        </a>--%>
<%--        <a href="messages.jsp" class="list-group-item">--%>
<%--            <i class="fa fa-check-circle connected-status"></i>--%>
<%--            <img src="mumsm/img/Friends/woman-4.jpg" class="img-chat img-thumbnail">--%>
<%--            <span class="chat-user-name">Jhoanath matew</span>--%>
<%--        </a>--%>
<%--        <a href="messages.jsp" class="list-group-item">--%>
<%--            <i class="fa fa-check-circle connected-status"></i>--%>
<%--            <img src="mumsm/img/Friends/woman-5.jpg" class="img-chat img-thumbnail">--%>
<%--            <span class="chat-user-name">Ryanah Haywofd</span>--%>
<%--        </a>--%>
<%--        <a href="messages.jsp" class="list-group-item">--%>
<%--            <i class="fa fa-check-circle connected-status"></i>--%>
<%--            <img src="mumsm/img/Friends/woman-9.jpg" class="img-chat img-thumbnail">--%>
<%--            <span class="chat-user-name">Linda palma</span>--%>
<%--        </a>--%>
<%--        <a href="messages.jsp" class="list-group-item">--%>
<%--            <i class="fa fa-check-circle connected-status"></i>--%>
<%--            <img src="mumsm/img/Friends/woman-10.jpg" class="img-chat img-thumbnail">--%>
<%--            <span class="chat-user-name">Andrea ramos</span>--%>
<%--        </a>--%>
<%--        <a href="messages.jsp" class="list-group-item">--%>
<%--            <i class="fa fa-check-circle connected-status"></i>--%>
<%--            <img src="mumsm/img/Friends/child-1.jpg" class="img-chat img-thumbnail">--%>
<%--            <span class="chat-user-name">Dora ty bluekl</span>--%>
<%--        </a>--%>
<%--    </div>--%>
<%--</div><!-- Online users sidebar content-->--%>

<footer class="welcome-footer">
    <div class="container">
        <p>
        Copyright &copy; Surafel, Eden, Gizaw and Getaneh - All rights reserved
        </p>
    </div>
</footer>
</body>
</html>

