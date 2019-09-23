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
            <a class="navbar-brand" href="index.jsp">
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
                    <a href="profile.jsp">
                        Hillary McBrewk
                        <img src="img/Friends/woman-1.jpg" class="img-nav">
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
<div class="row text-center cover-container">
    <a href="#">
        <img src="img/Friends/woman-1.jpg">
    </a>
    <h1 class="profile-name">Hillary McBrewk</h1>
    <p class="user-text">sharing awesome ideas with your friends, you can grow, grow fast</p>
</div>





<!-- Timeline content -->
<div class="container" style="margin-top:2px;">
    <div class="profile-info col-md-10">
        <h1 class="text-center">Edit Your Profile</h1>
        <div>
            <figure id="image"> <label for="image">Profile Photo <img src=".jpg" alt="image" width="10vw" height="10vh"></label></figure>


            <label for="first-name">First Name: <input type="text" name="first-name" id="first-name" placeholder="Your First Name" required /></label>

            <label for="last-name">Last Name: <input type="text" name="last-name" id="last-name" placeholder="Your Last Name" required /></label>

                <label for="email">Email:</label>
                <input type="email" name="email" id="email" required placeholder="your email">
            <label for="user_name">User Name: <input type="text" name="user-name" id="user_name" placeholder="Your User Name" required /></label>
                <label for="password">Password:</label>
                <input type="password" name="password" id="password" pattern=".{5,10}" placeholder="your password" required title="5 to 10 characters">


            <label for="occuption">Occuption: <input type="text" name="occuption" id="occuption" placeholder="" required /></label>
            <label for="phone">Phone: <input type="text" name="phone" id="phone" placeholder="641-765-2342" required /></label>
            <label for="city">City: <input type="text" name="city" id="city" placeholder="Your City Name" required /></label>
            <label for="select-choice">Country:</label>
            <select id="country"> </select>
            <label for="select-choice">State:</label>
            <select name="select-choice" id="select-choice">
                <option value="0" selected disabled>State</option>
                <option value="Alaska">Alaska</option>
                <option value="California">California</option>
                <option value="maryland">Maryland</option>
                <option value="Hawaii">Hawaii</option>
                <option value="virginia">Virginia</option>
                <option value="texas">Texas</option>
                <option value="lousisian">Lousisian</option>
                <option value="alabama">Alabama</option>
                <option value="colorada">Colorada</option>
                <option value="michigan">Michigan</option>
                <option value="north">North Carolina</option>
                <option value="washington">Washington</option>
            </select>

            <div>
                <!-- Normally we'd have a label for each field, but since these 3 select drop downs go together, we'll just use one and make it match up to the first select field (month) -->
                <label for="select-choice">Birthday:</label>
                <select name="select-choice" id="select-choice">
                    <option value="0" selected disabled>Month</option>
                    <option value="january">Jan</option>
                    <option value="february">Feb</option>
                    <option value="march">Mar</option>
                    <option value="april">Apr</option>
                    <option value="may">May</option>
                    <option value="june">Jun</option>
                    <option value="july">Jul</option>
                    <option value="august">Aug</option>
                    <option value="september">Sep</option>
                    <option value="october">Oct</option>
                    <option value="november">Nov</option>
                    <option value="december">Dec</option>
                </select>

                <select name="birthday-day" id="day">
                    <option value="0" selected disabled>Day</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                    <option value="13">13</option>
                    <option value="14">14</option>
                    <option value="15">15</option>
                    <option value="16">16</option>
                    <option value="17">17</option>
                    <option value="18">18</option>
                    <option value="19">19</option>
                    <option value="20">20</option>
                    <option value="21">21</option>
                    <option value="22">22</option>
                    <option value="23">23</option>
                    <option value="24">24</option>
                    <option value="25">25</option>
                    <option value="26">26</option>
                    <option value="27">27</option>
                    <option value="28">28</option>
                    <option value="29">29</option>
                    <option value="30">30</option>
                    <option value="31">31</option>
                </select>

                <select name="birthday-year" id="year">
                    <option value="0" selected disabled>Year</option>
                    <option value="2015">2015</option>
                    <option value="2014">2014</option>
                    <option value="2013">2013</option>
                    <option value="2012">2012</option>
                    <option value="2011">2011</option>
                    <option value="2010">2010</option>
                    <option value="2009">2009</option>
                    <option value="2008">2008</option>
                    <option value="2007">2007</option>
                    <option value="2006">2006</option>
                    <option value="2005">2005</option>
                    <option value="2004">2004</option>
                    <option value="2003">2003</option>
                    <option value="2002">2002</option>
                    <option value="2001">2001</option>
                    <option value="2000">2000</option>
                    <option value="1999">1999</option>
                    <option value="1998">1998</option>
                    <option value="1997">1997</option>
                    <option value="1996">1996</option>
                    <option value="1995">1995</option>
                    <option value="1994">1994</option>
                    <option value="1993">1993</option>
                    <option value="1992">1992</option>
                    <option value="1991">1991</option>
                    <option value="1990">1990</option>
                    <option value="1989">1989</option>

                </select>
                <label for="blocked"><input type="hidden" id="blockedId" name="blocked" value="blocked"></label>
            </div>
        </div>
    </div>
</div><!-- end timeline content-->

<!-- Online users sidebar content-->
<div class="chat-sidebar focus">
    <div class="list-group text-left">
        <p class="text-center visible-xs"><a href="#" class="hide-chat">Hide</a></p>
        <p class="text-center chat-title">Online users</p>
        <a href="messages.jsp" class="list-group-item">
            <i class="fa fa-check-circle connected-status"></i>
            <img src="img/Friends/guy-2.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Jeferh Smith</span>
        </a>
        <a href="messages.jsp" class="list-group-item">
            <i class="fa fa-times-circle absent-status"></i>
            <img src="img/Friends/woman-1.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Dapibus acatar</span>
        </a>
        <a href="messages.jsp" class="list-group-item">
            <i class="fa fa-check-circle connected-status"></i>
            <img src="img/Friends/guy-3.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Antony andrew lobghi</span>
        </a>
        <a href="messages.jsp" class="list-group-item">
            <i class="fa fa-check-circle connected-status"></i>
            <img src="img/Friends/woman-2.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Maria fernanda coronel</span>
        </a>
        <a href="messages.jsp" class="list-group-item">
            <i class="fa fa-check-circle connected-status"></i>
            <img src="img/Friends/guy-4.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Markton contz</span>
        </a>
        <a href="messages.jsp" class="list-group-item">
            <i class="fa fa-times-circle absent-status"></i>
            <img src="img/Friends/woman-3.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Martha creaw</span>
        </a>
        <a href="messages.jsp" class="list-group-item">
            <i class="fa fa-times-circle absent-status"></i>
            <img src="img/Friends/woman-8.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Yira Cartmen</span>
        </a>
        <a href="messages.jsp" class="list-group-item">
            <i class="fa fa-check-circle connected-status"></i>
            <img src="img/Friends/woman-4.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Jhoanath matew</span>
        </a>
        <a href="messages.jsp" class="list-group-item">
            <i class="fa fa-check-circle connected-status"></i>
            <img src="img/Friends/woman-5.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Ryanah Haywofd</span>
        </a>
        <a href="messages.jsp" class="list-group-item">
            <i class="fa fa-check-circle connected-status"></i>
            <img src="img/Friends/woman-9.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Linda palma</span>
        </a>
        <a href="messages.jsp" class="list-group-item">
            <i class="fa fa-check-circle connected-status"></i>
            <img src="img/Friends/woman-10.jpg" class="img-chat img-thumbnail">
            <span class="chat-user-name">Andrea ramos</span>
        </a>
        <a href="messages.jsp" class="list-group-item">
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

