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

                <b>MUM Social</b>
            </a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="profile.jsp" class="nameOfUser">

                        <img id="eden-pic" src="mumsm/img/Friends/eden.jpg" class="img-nav">

                    </a>
                </li>
                <li class="active"><a href="home.jsp">Home</a></li>
                <li><a href="messages.jsp"><i></i></a></li>
                <li><a href="edit_profile.jsp">Edit profile</a></li>
                <li>
                    <form method="post" action="logout">

                        <input type="submit" value="Log out" id="logout" class="logoutbutton" >
                    </form>
                </li>
            </ul>
        </div>
    </div>
</nav>