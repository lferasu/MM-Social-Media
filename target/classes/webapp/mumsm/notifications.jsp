
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="img/favicon.png">
    <title>Clean-Note</title>
    <!-- Bootstrap core CSS -->
    <link href="bootstrap-3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/animate.min.css" rel="stylesheet">
    <link href="font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/css/timeline.css" rel="stylesheet">
    <script src="assets/js/jquery.1.11.1.min.js"></script>
    <script src="bootstrap-3.3.5/js/bootstrap.min.js"></script>
    <script src="assets/js/custom.js"></script>
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
            <a class="navbar-brand" href="index.html">
                <b>Clean-Note</b>
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
                    <a href="profile.html">
                        Hillary McBrewk
                        <img src="img/Friends/woman-1.jpg" class="img-nav">
                    </a>
                </li>
                <li><a href="home.html"><i class="fa fa-bars"></i>&nbsp;Home</a></li>
                <li><a href="messages.html"><i class="fa fa-comments"></i></a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">  Pages
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="recover_password.html">Recover password</a></li>
                        <li><a href="list_users.html">List users</a></li>
                        <li><a href="photos.html">Photos</a></li>
                        <li><a href="friends.html">Friends</a></li>
                        <li><a href="people_directory.html">User directory</a></li>
                        <li><a href="about.html">About</a></li>
                        <li><a href="edit_profile.html">Edit profile</a></li>
                        <li><a href="notifications.html">Notifications</a></li>
                        <li><a href="blank-cover.html">Blank cover</a></li>

                        <li><a href="registration_email.html">Registration email</a></li>
                        <li><a href="grid_posts.html">Grid posts</a></li>
                        <li><a href="error404.html">Error 404</a></li>
                        <li><a href="error500.html">Error 500</a></li>
                    </ul>
                </li>
                <li><a href="#" class="nav-controller"><i class="fa fa-user"></i>Users</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Timeline content -->
<div class="container container-timeline" style="margin-top:100px;">
    <div class="col-md-10 no-paddin-xs">
        <div class="col-md-5 no-paddin-xs">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">Notifications</h3>
                </div>
                <div class="panel-body">
                    <img src="img/Friends/woman-1.jpg" class="home-avatar img-circle  img-thumbnail" alt="user profile image">
                    <a href="profile.html">Hillary McBrewk</a>
                </div>
            </div>

            <!-- friends -->
            <div class="panel panel-info panel-friends">
                <div class="panel-heading">
                    <a href="#" class="pull-right">View all&nbsp;<i class="fa fa-share-square-o"></i></a>
                    <h3 class="panel-title">Friends</h3>
                </div>
                <div class="panel-body text-center">
                    <ul class="friends">
                        <li>
                            <a href="#">
                                <img src="img/Friends/woman-4.jpg" title="Jhoanath matew" class="img-responsive tip">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="img/Friends/woman-3.jpg" title="Martha creawn" class="img-responsive tip">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="img/Friends/guy-2.jpg" title="Jeferh smith" class="img-responsive tip">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="img/Friends/woman-9.jpg" title="Linda palma" class="img-responsive tip">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="img/Friends/guy-9.jpg" title="Lindo polmo" class="img-responsive tip">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="img/Friends/guy-5.jpg" title="andrew cartson" class="img-responsive tip">
                            </a>
                        </li>
                    </ul>
                </div>
            </div><!-- end friends -->
            <!-- People You May Know -->
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">People You May Know</h3>
                </div>
                <div class="panel-body">
                    <div class="card">
                        <div class="content">
                            <ul class="list-unstyled team-members">
                                <li>
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <div class="avatar">
                                                <img src="img/Friends/guy-2.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">
                                            </div>
                                        </div>
                                        <div class="col-xs-6">
                                            Carlos marthur
                                        </div>

                                        <div class="col-xs-3 text-right">
                                            <btn class="btn btn-sm btn-warning btn-icon"><i class="fa fa-user-plus"></i></btn>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <div class="avatar">
                                                <img src="img/Friends/woman-1.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">
                                            </div>
                                        </div>
                                        <div class="col-xs-6">
                                            Maria gustami
                                        </div>

                                        <div class="col-xs-3 text-right">
                                            <btn class="btn btn-sm btn-warning btn-icon"><i class="fa fa-user-plus"></i></btn>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <div class="avatar">
                                                <img src="img/Friends/woman-2.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">
                                            </div>
                                        </div>
                                        <div class="col-xs-6">
                                            Angellina mcblown
                                        </div>

                                        <div class="col-xs-3 text-right">
                                            <btn class="btn btn-sm btn-warning btn-icon"><i class="fa fa-user-plus"></i></btn>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div><!-- End People You May Know -->
        </div><!-- end left content -->

        <!-- notification list-->
        <div class="col-md-7 no-paddin-xs">
            <div class="panel panel-white post animated fadeInUp">
                <div class="post-heading">
                    <div class="pull-left image">
                        <img src="img/Friends/woman-1.jpg" class="avatar" alt="user profile image">
                    </div>
                    <div class="pull-left meta">
                        <div class="title h5">
                            <a href="#" class="post-user-name">Hillary McBrewk</a>
                            liked your <a href="#">Post</a>
                        </div>
                        <h6 class="text-muted time">5 seconds ago</h6>
                    </div>
                </div>
            </div>

            <div class="panel panel-white post animated fadeInUp">
                <div class="post-heading">
                    <div class="pull-left image">
                        <img src="img/Friends/guy-2.jpg" class="avatar" alt="user profile image">
                    </div>
                    <div class="pull-left meta">
                        <div class="title h5">
                            <a href="#" class="post-user-name">Deyman Bejarano</a>
                            shared your <a href="#">Post</a>
                        </div>
                        <h6 class="text-muted time">5 seconds ago</h6>
                    </div>
                </div>
            </div>

            <div class="panel panel-white post animated fadeInUp">
                <div class="post-heading">
                    <div class="pull-left image">
                        <img src="img/Friends/woman-2.jpg" class="avatar" alt="user profile image">
                    </div>
                    <div class="pull-left meta">
                        <div class="title h5">
                            <a href="#" class="post-user-name">Denny lawer</a>
                            shared your <a href="#">Post</a>
                        </div>
                        <h6 class="text-muted time">5 seconds ago</h6>
                    </div>
                </div>
            </div>

            <div class="panel panel-white post panel-shadow">
                <div class="post-heading">
                    <div class="pull-left image">
                        <img src="img/Friends/woman-3.jpg" class="avatar" alt="user profile image">
                    </div>
                    <div class="pull-left meta">
                        <div class="title h5">
                            <a href="#" class="post-user-name">Martha cargrot</a>
                            liked your <a href="#">Post</a>
                        </div>
                        <h6 class="text-muted time">5 seconds ago</h6>
                    </div>
                </div>
            </div>

            <div class="panel panel-white post panel-shadow">
                <div class="post-heading">
                    <div class="pull-left image">
                        <img src="img/Friends/woman-4.jpg" class="avatar" alt="user profile image">
                    </div>
                    <div class="pull-left meta">
                        <div class="title h5">
                            <a href="#" class="post-user-name">Carla dorla</a>
                            liked your <a href="#">Post</a>
                        </div>
                        <h6 class="text-muted time">5 seconds ago</h6>
                    </div>
                </div>
            </div>

            <div class="panel panel-white post panel-shadow">
                <div class="post-heading">
                    <div class="pull-left image">
                        <img src="img/Friends/woman-5.jpg" class="avatar" alt="user profile image">
                    </div>
                    <div class="pull-left meta">
                        <div class="title h5">
                            <a href="#" class="post-user-name">Maria Bejarano</a>
                            liked your <a href="#">Post</a>
                        </div>
                        <h6 class="text-muted time">5 seconds ago</h6>
                    </div>
                </div>
            </div>

            <div class="panel panel-white post panel-shadow">
                <div class="post-heading">
                    <div class="pull-left image">
                        <img src="img/Friends/woman-1.jpg" class="avatar" alt="user profile image">
                    </div>
                    <div class="pull-left meta">
                        <div class="title h5">
                            <a href="#" class="post-user-name">Hillary McBrewk</a>
                            liked your <a href="#">Post</a>
                        </div>
                        <h6 class="text-muted time">5 seconds ago</h6>
                    </div>
                </div>
            </div>


            <div class="panel panel-white post-load-more panel-shadow text-center">
                <button class="btn btn-info">
                    <i class="fa fa-refresh"></i>Load More...
                </button>
            </div>
        </div><!-- notification list-->
    </div>
</div>

<!-- Online users sidebar content-->
<div class="chat-sidebar focus">
    <div class="list-group text-left">
        <p class="text-center visible-xs"><a href="#" class="hide-chat">Hide</a></p>
        <p class="text-center chat-title">Online users</p>
        <a href="messages.html" class="list-group-item">
            <i class="fa fa-check-circle connected-status"></i>
            <img src="img/Friends/guy-2.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Jeferh Smith</span>
        </a>
        <a href="messages.html" class="list-group-item">
            <i class="fa fa-times-circle absent-status"></i>
            <img src="img/Friends/woman-1.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Dapibus acatar</span>
        </a>
        <a href="messages.html" class="list-group-item">
            <i class="fa fa-check-circle connected-status"></i>
            <img src="img/Friends/guy-3.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Antony andrew lobghi</span>
        </a>
        <a href="messages.html" class="list-group-item">
            <i class="fa fa-check-circle connected-status"></i>
            <img src="img/Friends/woman-2.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Maria fernanda coronel</span>
        </a>
        <a href="messages.html" class="list-group-item">
            <i class="fa fa-check-circle connected-status"></i>
            <img src="img/Friends/guy-4.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Markton contz</span>
        </a>
        <a href="messages.html" class="list-group-item">
            <i class="fa fa-times-circle absent-status"></i>
            <img src="img/Friends/woman-3.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Martha creaw</span>
        </a>
        <a href="messages.html" class="list-group-item">
            <i class="fa fa-times-circle absent-status"></i>
            <img src="img/Friends/woman-8.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Yira Cartmen</span>
        </a>
        <a href="messages.html" class="list-group-item">
            <i class="fa fa-check-circle connected-status"></i>
            <img src="img/Friends/woman-4.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Jhoanath matew</span>
        </a>
        <a href="messages.html" class="list-group-item">
            <i class="fa fa-check-circle connected-status"></i>
            <img src="img/Friends/woman-5.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Ryanah Haywofd</span>
        </a>
        <a href="messages.html" class="list-group-item">
            <i class="fa fa-check-circle connected-status"></i>
            <img src="img/Friends/woman-9.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Linda palma</span>
        </a>
        <a href="messages.html" class="list-group-item">
            <i class="fa fa-check-circle connected-status"></i>
            <img src="img/Friends/woman-10.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Andrea ramos</span>
        </a>
        <a href="messages.html" class="list-group-item">
            <i class="fa fa-check-circle connected-status"></i>
            <img src="img/Friends/child-1.jpg" class="img-chat img-thumbnail">
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

