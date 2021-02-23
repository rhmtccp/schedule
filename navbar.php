    <nav class="navbar navbar-fixed-top navbar-garis">
        <div class="container-fluid">

            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <a class="navbar-brand" href="main.php"><span><img src="images\logo.png" class="img-responsive" style="max-width:100%; height:35px; display:inline;" alt="Logo Andika"></span></img></a>
            </div>
            <!-- /Brand and toggle get grouped for better mobile display -->

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="dropdown menu_client">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Just click me, 
                        <?php
                            echo "&nbsp";
                            echo strtoupper($_SESSION['username']);
                            echo " !";
                            echo "&nbsp";
                        ?>    
                        <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="page.php?venue=main"><span class="fa fa-users" aria-hidden="true"></span> Main Meeting Room</a></li>
                            <li><a href="page.php?venue=small"><span class="fa fa-user" aria-hidden="true"></span> Small Meeting Room</a></li>
                            <li><a href="page.php?venue=division"><span class="fa fa-calendar" aria-hidden="true"></span> Your Division Calendar</a></li>
                            <li><a href="#change_password" data-toggle="modal"><span class="fa fa-key" aria-hidden="true"></span> Change Your Password</a></li>
                            <li><a href="logout.php"><span class="fa fa-power-off" aria-hidden="true"></span> Logout</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- /Collect the nav links, forms, and other content for toggling -->

        </div>
    </nav>