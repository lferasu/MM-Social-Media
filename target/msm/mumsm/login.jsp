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
    <title>MUM Social - Login</title>
    <!-- Bootstrap core CSS -->
<<<<<<< HEAD
    <link href="mumsm/bootstrap-3.3.5/css/bootstrap.min.css" rel="stylesheet">
=======

    <link href="mumsm/bootstrap-3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <link href="mumsm/assets/css/errors.css" rel="stylesheet">
>>>>>>> 8631946cecbc9e3a0bc8dc0580c188dbcc733862
    <link href="mumsm/assets/css/animate.min.css" rel="stylesheet">
    <link href="mumsm/font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="mumsm/assets/css/timeline.css" rel="stylesheet">
    <script src="mumsm/assets/js/jquery.1.11.1.min.js"></script>
    <script src="mumsm/bootstrap-3.3.5/js/bootstrap.min.js"></script>
    <script src="mumsm/assets/js/custom.js"></script>
<<<<<<< HEAD
=======

>>>>>>> 8631946cecbc9e3a0bc8dc0580c188dbcc733862
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="welcome-page animated fadeIn">
<div class="row row-welcome">
    <div class="login-page">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <img src="mumsm/img/mumlogo.png">
                <h1>MUM Social </h1>
                <form role="form" class="frm  animated fadeInRight">
                    <div class="form-content">
                        <div class="form-group">
                            <input type="text" class="form-control input-underline input-lg" placeholder="Username">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control input-underline input-lg" placeholder="Password">
                        </div>
                    </div>
                    <a href="mumsm/profile.jsp" class="btn btn-info btn-lg">Log in</a>

                    <a href="#" class="btn btn-info btn-lg btn-frm">Register</a>
                </form>

<<<<<<< HEAD
                <form role="form" class="frm hidden" method="post" action="mumsm/home.jsp">
=======
                <form role="form" class="frm hidden" action = "register" method="post">
>>>>>>> 8631946cecbc9e3a0bc8dc0580c188dbcc733862
                    <div class="form-content">
                        <div class="form-group">
                            <input type="text" name = "email"  id="register-email" class="form-control input-underline input-lg" placeholder="Email">
                            <span class="login-error" id = "email-eror"></span>
                        </div>
                        <div class="form-group">
                            <input type="text" name = "userName" id="register-userName" class="form-control input-underline input-lg" placeholder="Username">
                            <span class="login-error" id = "userName-error"></span>
                        </div>
                        <div class="form-group">
                            <input type="password" name = "password" id="register-password" class="form-control input-underline input-lg" placeholder="Password">
                            <span class="login-error" id = "password-error"></span>
                        </div>
                        <div class="form-group">
                            <input type="password" name = "confirmPassword" id="register-confirmPassword" class="form-control input-underline input-lg" placeholder="Confirm Password">
                            <span class="login-error" id ="confirmPassword-error"></span>
                        </div>
                    </div>
                    <a href="#" class="btn btn-info btn-lg btn-frm">Log in</a>
                    <a href="#" id ="what"> hello</a>
                    <button type="submit" class="btn btn-info btn-lg" id = "registerButton">Register</button>
                </form>
            </div>
        </div>
        <div class="row welcome-full animated fadeInLeft">
            <div class="row-body">
                <!-- some registered users -->
                <div class="welcome-users-inner">
                    <div class="welcome-user">
                        <a href="mumsm/profile.jsp">
                            <img src="mumsm/img/Friends/guy-3.jpg" class="img-circle" />
                        </a>
                    </div>
                    <div class="welcome-user">
                        <a href="mumsm/profile.jsp">
                            <img src="mumsm/img/Friends/woman-1.jpg" class="img-circle" />
                        </a>
                    </div>
                    <div class="welcome-user">
                        <a href="mumsm/profile.jsp">
                            <img src="mumsm/img/Friends/guy-2.jpg" class="img-circle" />
                        </a>
                    </div>
                    <div class="welcome-user">
                        <a href="mumsm/profile.jsp">
                            <img src="mumsm/img/Friends/woman-2.jpg" class="img-circle" />
                        </a>
                    </div>
                    <div class="welcome-user">
                        <a href="mumsm/profile.jsp">
                            <img src="mumsm/img/Friends/guy-5.jpg" class="img-circle" />
                        </a>
                    </div>
                    <div class="welcome-user">
                        <a href="mumsm/profile.jsp">
                            <img src="mumsm/img/Friends/woman-3.jpg" class="img-circle" />
                        </a>
                    </div>
                    <div class="welcome-user">
                        <a href="mumsm/profile.jsp">
                            <img src="mumsm/img/Friends/guy-8.jpg" class="img-circle" />
                        </a>
                    </div>
                    <div class="welcome-user">
                        <a href="mumsm/profile.jsp">
                            <img src="mumsm/img/Friends/woman-4.jpg" class="img-circle" />
                        </a>
                    </div>
                    <div class="welcome-user">
                        <a href="mumsm/profile.jsp">
                            <img src="mumsm/img/Friends/guy-9.jpg" class="img-circle" />
                        </a>
                    </div>
                    <div class="welcome-user">
                        <a href="mumsm/profile.jsp">
                            <img src="mumsm/img/Friends/woman-7.jpg" class="img-circle" />
                        </a>
                    </div>
                    <div class="welcome-user">
                        <a href="mumsm/profile.jsp">
                            <img src="mumsm/img/Friends/woman-7.jpg" class="img-circle" />
                        </a>
                    </div>
                </div><!-- some registered users -->
            </div>
        </div>
        <div class="row">
            <div class="container">
<%--                <p>--%>
<%--                <div class="footer-links">--%>
<%--                    <a href="#">Terms of Use</a> |--%>
<%--                    <a href="#">Privacy Policy</a> |--%>
<%--                    <a href="#">Developers</a> |--%>
<%--                    <a href="#">Contact</a> |--%>
<%--                    <a href="#">About</a>--%>
<%--                </div>--%>
                Copyright &copy; Surafel, Eden, Getaneh, Gizaw - All rights reserved
<%--                </p>--%>
            </div>
        </div>
    </div>
</div>
<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>--%>
<script src="mumsm/assets/js/home-made.js" > </script>
</body>
</html>

