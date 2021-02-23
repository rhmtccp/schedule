<!DOCTYPE html>
<html lang="en">
    <head>
        <title>ANDIKA BROKER - SCHEDULE</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/bootstrap.min.css" rel="stylesheet">
         <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/navcustom.css" rel="stylesheet">
    </head>
    <body class="roboto body-color">
        <p><br><br><br></p>
        <div class="container">
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                  <div class="panel">
                      <div class="panel-body">
                          <form class="" action="" method="POST">
                              <span><img src="images\logo_full.png" class="img-responsive" alt="Logo Andika"></img></span>
                              <br>
                              <div class="input-group input-group">
                                  <span class="input-group-addon">
                                      <span class="fa fa-user fa-lg" aria-hidden="true"></span>
                                  </span>
                                  <input type="text" class="form-control input-sm" placeholder="Username" name="username" required>
                              </div>
                              <br>
                              <div class="input-group input-group">
                                  <span class="input-group-addon">
                                      <span class="fa fa-key" aria-hidden="true"></span>
                                  </span>
                                  <input type="password" class="form-control input-sm" placeholder="Password" name="password" required>
                              </div>
                              <br>
                              <div class="form-group">
                                  <input type="submit" class="form-control input-sm btn-primary" name="btn_submit" value="LOGIN">
                              </div>
                              <div class="text-right"><small><i>@ 04 Dec 2020</i></small></div>
                              
                              <!-- check login -->
                              <?php
                              session_start();
                              if (isset($_POST['btn_submit'])) {
                                  require 'connect_db.php';
                                  $username = $_POST['username'];
                                  $password = md5 ($_POST['password']);
                                  $query = mysqli_query ($conn, 'SELECT * FROM tbl_users INNER JOIN tbl_dept_colors ON tbl_users.department = tbl_dept_colors.departement WHERE username="'.$username.'" and password="'.$password.'" and deleted=0');
                                  if (mysqli_num_rows ($query)==1) {
                                      $result = mysqli_fetch_assoc($query);
                                      $_SESSION['id_user'] = $result['id_user'];
                                      $_SESSION['username'] = $result['username'];
                                      $_SESSION['departement'] = $result['department'];
                                      $_SESSION['color'] = $result['color'];
                                      header ('Location: main.php');                                      
                                  } else
                                      echo "<div class='alert alert-danger text-center'><span class='fa fa-exclamation-triangle' aria-hidden='true'></span> Wrong Username or Password !!!</div>";
                              }
                              ?>
                              <!-- /check login -->
                          </form>
                      </div>
                  </div>
                </div>
                <div class="col-md-4"></div>
            </div>
        </div>
    
        <!-- JavaScript -->
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <!-- /JavaScript -->
        
    </body>
</html>