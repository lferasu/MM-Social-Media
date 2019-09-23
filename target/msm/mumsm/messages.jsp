
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
                <li>
                    <a href="profile.html">
                        Hillary McBrewk
                        <img src="img/Friends/woman-1.jpg" class="img-nav">
                    </a>
                </li>
                <li><a href="home.html"><i class="fa fa-bars"></i>&nbsp;Home</a></li>
                <li class="active"><a href="messages.html"><i class="fa fa-comments"></i></a></li>
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
<div class="container" style="margin-top:80px;">
    <div class="col-md-10 col-md-offset-1 no-paddin-xs animated fadeInRight">
        <div class="col-md-12">
            <!--  chat content -->
            <div class="row">
                <div class="col-md-4 bg-white ">
                    <!-- member list -->
                    <div class=" row border-bottom padding-sm" style="height: 40px;">

                    </div>
                    <ul class="friend-list">
                        <li class="active bounceInDown">
                            <a href="#" class="clearfix">
                                <img src="img/Friends/guy-2.jpg" alt="" class="img-circle">
                                <div class="friend-name">
                                    <strong>John Doe</strong>
                                </div>
                                <div class="last-message text-muted">Hello, Are you there?</div>
                                <small class="time text-muted">Just now</small>
                                <small class="chat-alert label label-danger">1</small>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="clearfix">
                                <img src="img/Friends/woman-10.jpg" alt="" class="img-circle">
                                <div class="friend-name">
                                    <strong>Jane Doe</strong>
                                </div>
                                <div class="last-message text-muted">Lorem ipsum dolor sit amet.</div>
                                <small class="time text-muted">5 mins ago</small>
                                <small class="chat-alert text-muted"><i class="fa fa-check"></i></small>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="clearfix">
                                <img src="img/Friends/woman-3.jpg" alt="" class="img-circle">
                                <div class="friend-name">
                                    <strong>Kate Doe</strong>
                                </div>
                                <div class="last-message text-muted">Lorem ipsum dolor sit amet.</div>
                                <small class="time text-muted">Yesterday</small>
                                <small class="chat-alert text-muted"><i class="fa fa-reply"></i></small>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="clearfix">
                                <img src="img/Friends/woman-4.jpg" alt="" class="img-circle">
                                <div class="friend-name">
                                    <strong>Martha Doe</strong>
                                </div>
                                <div class="last-message text-muted">Lorem ipsum dolor sit amet.</div>
                                <small class="time text-muted">Yesterday</small>
                                <small class="chat-alert text-muted"><i class="fa fa-reply"></i></small>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="clearfix">
                                <img src="img/Friends/woman-5.jpg" alt="" class="img-circle">
                                <div class="friend-name">
                                    <strong>Katherin Doe</strong>
                                </div>
                                <div class="last-message text-muted">Lorem ipsum dolor sit amet.</div>
                                <small class="time text-muted">Yesterday</small>
                                <small class="chat-alert text-muted"><i class="fa fa-reply"></i></small>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="clearfix">
                                <img src="img/Friends/woman-6.jpg" alt="" class="img-circle">
                                <div class="friend-name">
                                    <strong>Camila crut</strong>
                                </div>
                                <div class="last-message text-muted">Lorem ipsum dolor sit amet.</div>
                                <small class="time text-muted">Yesterday</small>
                                <small class="chat-alert text-muted"><i class="fa fa-reply"></i></small>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="clearfix">
                                <img src="img/Friends/woman-7.jpg" alt="" class="img-circle">
                                <div class="friend-name">
                                    <strong>Marian Grey</strong>
                                </div>
                                <div class="last-message text-muted">Lorem ipsum dolor sit amet.</div>
                                <small class="time text-muted">Yesterday</small>
                                <small class="chat-alert text-muted"><i class="fa fa-reply"></i></small>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="clearfix">
                                <img src="img/Friends/woman-8.jpg" alt="" class="img-circle">
                                <div class="friend-name">
                                    <strong>Jane Doe</strong>
                                </div>
                                <div class="last-message text-muted">Lorem ipsum dolor sit amet.</div>
                                <small class="time text-muted">5 mins ago</small>
                                <small class="chat-alert text-muted"><i class="fa fa-check"></i></small>
                            </a>
                        </li>
                    </ul><!-- end member list -->
                </div>

                <!-- selected chat content -->
                <div class="col-md-8 bg-white ">
                    <div class="chat-message">
                        <ul class="chat">
                            <li class="left clearfix">
                        <span class="chat-img pull-left">
                          <img src="img/Friends/guy-2.jpg" alt="User Avatar">
                        </span>
                                <div class="chat-body clearfix">
                                    <div class="header">
                                        <strong class="primary-font">John Doe</strong>
                                        <small class="pull-right text-muted"><i class="fa fa-clock-o"></i> 12 mins ago</small>
                                    </div>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                    </p>
                                </div>
                            </li>
                            <li class="right clearfix">
                        <span class="chat-img pull-right">
                          <img src="img/Friends/guy-3.jpg" alt="User Avatar">
                        </span>
                                <div class="chat-body clearfix">
                                    <div class="header">
                                        <strong class="primary-font">Sarah</strong>
                                        <small class="pull-right text-muted"><i class="fa fa-clock-o"></i> 13 mins ago</small>
                                    </div>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales at.
                                    </p>
                                </div>
                            </li>
                            <li class="left clearfix">
                          <span class="chat-img pull-left">
                          <img src="img/Friends/guy-2.jpg" alt="User Avatar">
                        </span>
                                <div class="chat-body clearfix">
                                    <div class="header">
                                        <strong class="primary-font">John Doe</strong>
                                        <small class="pull-right text-muted"><i class="fa fa-clock-o"></i> 12 mins ago</small>
                                    </div>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                    </p>
                                </div>
                            </li>
                            <li class="right clearfix">
                          <span class="chat-img pull-right">
                          <img src="img/Friends/guy-3.jpg" alt="User Avatar">
                        </span>
                                <div class="chat-body clearfix">
                                    <div class="header">
                                        <strong class="primary-font">Sarah</strong>
                                        <small class="pull-right text-muted"><i class="fa fa-clock-o"></i> 13 mins ago</small>
                                    </div>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales at.
                                    </p>
                                </div>
                            </li>
                            <li class="left clearfix">
                          <span class="chat-img pull-left">
                          <img src="img/Friends/guy-2.jpg" alt="User Avatar">
                        </span>
                                <div class="chat-body clearfix">
                                    <div class="header">
                                        <strong class="primary-font">John Doe</strong>
                                        <small class="pull-right text-muted"><i class="fa fa-clock-o"></i> 12 mins ago</small>
                                    </div>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                    </p>
                                </div>
                            </li>
                            <li class="right clearfix">
                          <span class="chat-img pull-right">
                          <img src="img/Friends/guy-3.jpg" alt="User Avatar">
                        </span>
                                <div class="chat-body clearfix">
                                    <div class="header">
                                        <strong class="primary-font">Sarah</strong>
                                        <small class="pull-right text-muted"><i class="fa fa-clock-o"></i> 13 mins ago</small>
                                    </div>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales at.
                                    </p>
                                </div>
                            </li>
                            <li class="right clearfix">
                          <span class="chat-img pull-right">
                          <img src="img/Friends/guy-3.jpg" alt="User Avatar">
                        </span>
                                <div class="chat-body clearfix">
                                    <div class="header">
                                        <strong class="primary-font">Sarah</strong>
                                        <small class="pull-right text-muted"><i class="fa fa-clock-o"></i> 13 mins ago</small>
                                    </div>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales at.
                                    </p>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="panel profile-info panel-info">
                        <form>
                            <textarea class="form-control input-lg p-text-area" rows="3" placeholder="Write a message..."></textarea>
                        </form>
                        <div class="panel-footer">
                            <button type="button" class="btn btn-info pull-right">Send</button>
                            <ul class="nav nav-pills">
                                <li><a href="#"><i class="fa fa-camera"></i></a></li>
                                <li><a href="#"><i class=" fa fa-film"></i></a></li>
                                <li><a href="#"><i class="fa fa-microphone"></i></a></li>
                            </ul>
                        </div>
                    </div><!-- end add post form-->
                </div><!-- selected chat content -->
            </div><!-- end chat content -->
        </div>
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

