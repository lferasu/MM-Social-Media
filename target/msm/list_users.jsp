<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <title>Mum Social Media</title>

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
        <%@ include file="mumsm/assets/js/list.js" %>
    </script>

    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
</head>
<body class="animated fadeIn list-users">

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
                <b>Mum Social Media</b>
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
                <li class="active">
                    <a href="profile.jsp">
                        Hillary McBrewk
                        <img src="mumsm/img/Friends/woman-1.jpg" class="img-nav">
                    </a>
                </li>
                <li><a href="home.jsp"><i class="fa fa-bars"></i>&nbsp;Home</a></li>
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
            </ul>
        </div>
    </div>
</nav>
<div class="row text-center color-container">
    <h1 class="profile-name">Hillary McBrewk</h1>
</div>
<!-- Timeline content -->
<div class="row">
    <div class="container">
        <div class="col-md-10  animated fadeInUp">
            <div class="widget">
                <div class="table-responsive">
                    <table class="table user-list" id="list-of-users">
                        <thead>
                        <tr>
                            <th><span>User</span></th>
                            <th><span>Created</span></th>
                            <th class="text-center"><span>Status</span></th>
                            <th><span>Email</span></th>
                            <th>&nbsp;</th>
                        </tr>
                        </thead>
                        <tbody>

<%--                        <c:forEach var="ads" items="${adverts}" >--%>
<%--                            <h4><c:out value="${ads.text}" /></h4>--%>
<%--                        </c:forEach>--%>
<%--                <c:out value="${user.email}"></c:out>--%>
<%--                <c:forEach var="user" items="${myListOfUsers}">--%>
<%--                    hallo--%>
<%--                    <tr>--%>
<%--                        <td>--%>
<%--                            <button>   Blocked </button>--%>
<%--                        </td>--%>
<%--                        <td style="width: 20%;">--%>
<%--                            <a href="#" class="table-link success">--%>
<%--										<span class="fa-stack">--%>
<%--											<i class="fa fa-square fa-stack-2x"></i>--%>
<%--											<i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>--%>
<%--										</span>--%>
<%--                            </a>--%>
<%--                            <a href="#" class="table-link">--%>
<%--										<span class="fa-stack">--%>
<%--											<i class="fa fa-square fa-stack-2x"></i>--%>
<%--											<i class="fa fa-pencil fa-stack-1x fa-inverse"></i>--%>
<%--										</span>--%>
<%--                            </a>--%>
<%--                            <a href="#" class="table-link danger">--%>
<%--										<span class="fa-stack">--%>
<%--											<i class="fa fa-square fa-stack-2x"></i>--%>
<%--											<i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>--%>
<%--										</span>--%>
<%--                            </a>--%>
<%--                        </td>--%>
<%--                    </tr>--%>
<%--                </c:forEach>--%>



                        </tbody>
                    </table>
                </div>
                <ul class="pagination pull-right">
                    <li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
                </ul>
            </div>
        </div><!-- end timeline content-->
    </div>
</div>
<!-- Adverst-->

<%@ include file="advert.jsp"%>
<!-- Adverts-->

<footer class="welcome-footer">
    <div class="container">
        <p>

            Copyright &copy; Surafel, Eden, Gizaw, Getaneh - All rights reserved
        </p>
    </div>
</footer>
</body>
</html>

