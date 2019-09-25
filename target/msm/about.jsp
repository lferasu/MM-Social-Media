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
    <link href="mumsm/bootstrap-3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <link href="mumsm/assets/css/animate.min.css" rel="stylesheet">
    <link href="mumsm/font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="mumsm/assets/css/timeline.css" rel="stylesheet">
    <script src="mumsm/assets/js/jquery.1.11.1.min.js"></script>
    <script src="mumsm/bootstrap-3.3.5/js/bootstrap.min.js"></script>
    <script src="mumsm/assets/js/custom.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="animated fadeIn">

<!-- Fixed navbar -->
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
                <b>MUM Social Media</b>
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

<!-- Timeline content -->
<div class="container" style="margin-top:50px;">
    <div class="row">
        <div class="col-md-10 no-paddin-xs">
            <div class="profile-nav col-md-4">
                <div class="panel">
                    <div class="user-heading round">
                        <a href="#">
                            <img src="mumsm/img/Friends/woman-1.jpg" alt="">
                        </a>
                        <h1>Hillary McBrewk</h1>
                        <p>jsmith@grones.com</p>
                    </div>

                    <ul class="nav nav-pills nav-stacked">
                        <li><a href="profile.jsp"> <i class="fa fa-user"></i> Profile</a></li>
                        <li class="active"><a href="about.jsp"> <i class="fa fa-info-circle"></i> About</a></li>
                        <li><a href="friends.jsp"> <i class="fa fa-users"></i> Friends</a></li>
                        <li><a href="photos.jsp"> <i class="fa fa-file-image-o"></i> Photos</a></li>
                        <li><a href="edit_profile.jsp"> <i class="fa fa-edit"></i> Edit profile</a></li>
                    </ul>
                </div>
            </div>

            <div class="profile-info col-md-8">
                <div class="panel animated fadeInUp">
                    <div class="panel-body bio-graph-info">
                        <h1>Bio Graph</h1>
                        <div class="row">
                            <div class="bio-row">
                                <p><span>First Name </span>: Jonathan</p>
                            </div>
                            <div class="bio-row">
                                <p><span>Last Name </span>: Smith</p>
                            </div>
                            <div class="bio-row">
                                <p><span>Country </span>: Colombian</p>
                            </div>
                            <div class="bio-row">
                                <p><span>Birthday</span>: 13 July 1991</p>
                            </div>
                            <div class="bio-row">
                                <p><span>Occupation </span>: Bootdey Dev</p>
                            </div>
                            <div class="bio-row">
                                <p><span>Email </span>: jsmith@bootdey.com</p>
                            </div>
                            <div class="bio-row">
                                <p><span>Mobile </span>: (12) 03 7564546</p>
                            </div>
                            <div class="bio-row">
                                <p><span>Phone </span>: 88 (02) 9876543</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel">
                    <div class="panel-body bio-graph-info">
                        <h1>Bio Graph</h1>
                        <div class="row">
                            <div class="bio-row">
                                <p><span>First Name </span>: Jonathan</p>
                            </div>
                            <div class="bio-row">
                                <p><span>Last Name </span>: Smith</p>
                            </div>
                            <div class="bio-row">
                                <p><span>Country </span>: Colombian</p>
                            </div>
                            <div class="bio-row">
                                <p><span>Birthday</span>: 13 July 1991</p>
                            </div>
                            <div class="bio-row">
                                <p><span>Occupation </span>: Bootdey Dev</p>
                            </div>
                            <div class="bio-row">
                                <p><span>Email </span>: jsmith@bootdey.com</p>
                            </div>
                            <div class="bio-row">
                                <p><span>Mobile </span>: (12) 03 7564546</p>
                            </div>
                            <div class="bio-row">
                                <p><span>Phone </span>: 88 (02) 9876543</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel">
                    <div class="panel-body bio-graph-info">
                        <h1>Bio Graph</h1>
                        <div class="row">
                            <div class="bio-row">
                                <p><span>First Name </span>: Jonathan</p>
                            </div>
                            <div class="bio-row">
                                <p><span>Last Name </span>: Smith</p>
                            </div>
                            <div class="bio-row">
                                <p><span>Country </span>: Colombian</p>
                            </div>
                            <div class="bio-row">
                                <p><span>Birthday</span>: 13 July 1991</p>
                            </div>
                            <div class="bio-row">
                                <p><span>Occupation </span>: Bootdey Dev</p>
                            </div>
                            <div class="bio-row">
                                <p><span>Email </span>: jsmith@bootdey.com</p>
                            </div>
                            <div class="bio-row">
                                <p><span>Mobile </span>: (12) 03 7564546</p>
                            </div>
                            <div class="bio-row">
                                <p><span>Phone </span>: 88 (02) 9876543</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div><!--End Timeline content -->

<!-- Online users sidebar content-->
<div class="chat-sidebar focus">
    <div class="list-group text-left">
        <p class="text-center visible-xs"><a href="#" class="hide-chat">Hide</a></p>
        <p class="text-center chat-title">Online users</p>
        <a href="messages.jsp" class="list-group-item">
            <i class="fa fa-check-circle connected-status"></i>
            <img src="mumsm/img/Friends/guy-2.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Jeferh Smith</span>
        </a>
        <a href="messages.jsp" class="list-group-item">
            <i class="fa fa-times-circle absent-status"></i>
            <img src="mumsm/img/Friends/woman-1.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Dapibus acatar</span>
        </a>
        <a href="messages.jsp" class="list-group-item">
            <i class="fa fa-check-circle connected-status"></i>
            <img src="mumsm/img/Friends/guy-3.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Antony andrew lobghi</span>
        </a>
        <a href="messages.jsp" class="list-group-item">
            <i class="fa fa-check-circle connected-status"></i>
            <img src="mumsm/img/Friends/woman-2.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Maria fernanda coronel</span>
        </a>
        <a href="messages.jsp" class="list-group-item">
            <i class="fa fa-check-circle connected-status"></i>
            <img src="mumsm/img/Friends/guy-4.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Markton contz</span>
        </a>
        <a href="messages.jsp" class="list-group-item">
            <i class="fa fa-times-circle absent-status"></i>
            <img src="mumsm/img/Friends/woman-3.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Martha creaw</span>
        </a>
        <a href="messages.jsp" class="list-group-item">
            <i class="fa fa-times-circle absent-status"></i>
            <img src="mumsm/img/Friends/woman-8.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Yira Cartmen</span>
        </a>
        <a href="messages.jsp" class="list-group-item">
            <i class="fa fa-check-circle connected-status"></i>
            <img src="mumsm/img/Friends/woman-4.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Jhoanath matew</span>
        </a>
        <a href="messages.jsp" class="list-group-item">
            <i class="fa fa-check-circle connected-status"></i>
            <img src="mumsm/img/Friends/woman-5.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Ryanah Haywofd</span>
        </a>
        <a href="messages.jsp" class="list-group-item">
            <i class="fa fa-check-circle connected-status"></i>
            <img src="mumsm/img/Friends/woman-9.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Linda palma</span>
        </a>
        <a href="messages.jsp" class="list-group-item">
            <i class="fa fa-check-circle connected-status"></i>
            <img src="mumsm/img/Friends/woman-10.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Andrea ramos</span>
        </a>
        <a href="messages.jsp" class="list-group-item">
            <i class="fa fa-check-circle connected-status"></i>
            <img src="mumsm/img/Friends/child-1.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Dora ty bluekl</span>
        </a>
    </div>
</div><!-- Online users sidebar content-->

<footer class="welcome-footer">
    <div class="container">
        <p>
        <div class="footer-links">
            <a href="#">Terms of Use</a> |
            <a href="#">Privacy Policy</a> |
            <a href="#">Developers</a> |
            <a href="#">Contact</a> |
            <a href="#">About</a>
        </div>
        Copyright &copy; Company - All rights reserved
        </p>
    </div>
</footer>
</body>
</html>

