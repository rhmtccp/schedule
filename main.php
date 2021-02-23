<?php
session_start();
require_once 'connect_db.php';

if (isset($_SESSION['LAST_ACTIVITY']) && (time() - $_SESSION['LAST_ACTIVITY'] > 1800)) {
    // last request was more than 30 minutes ago
    session_unset();     // unset $_SESSION variable for the run-time 
    session_destroy();   // destroy session data in storage
}
$_SESSION['LAST_ACTIVITY'] = time(); // update last activity time stamp

if ($_SESSION['username']) {
} else {
    header ('Location: index.php');
}
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>ANDIKA BROKER - SCHEDULE</title>
        <meta charset="UTF-8">
        <!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/normalize.css" rel="stylesheet">
        <link href='css/fullcalendar.css' rel='stylesheet'>
        <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/navcustom.css" rel="stylesheet">
    </head>

    <body class="roboto body-color">

        <!-- navbar -->
        <?php  require_once 'navbar.php' ?>
        <!-- /navbar -->

        <!-- change password modal -->
        <div class="modal fade" id="change_password" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title text-center" id="myModalLabel"><strong>Change Password</strong></h4>
                    </div>
                    <form class="form-horizontal" action="actions/change_password.php" method="POST" id="form_change_password">
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="a_password" class="col-sm-5 control-label">Password</label>
                                <div class="col-sm-7">
                                    <input type="password" class="form-control" id="a_password" name="a_password" placeholder="Password" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="aa_password" class="col-sm-5 control-label">Confirmation</label>
                                <div class="col-sm-7">
                                    <input type="password" class="form-control" id="aa_password" name="aa_password" placeholder="Password" required>
                                    <div id="check_password_result"></div>
                                </div>
                            </div>
                        </div>                
                        
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                            <input type="submit" class="btn btn-primary" id="submit_change_password" name="button_change_password" value="Save">
                        </div>
                    </form>        
                </div>
            </div>
        </div>
        <!-- /change password modal -->

        <!-- JavaScript -->
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/bootstrap-datetimepicker.min.js"></script>
        <script type='text/javascript' src='js/moment.min.js'></script>
        <script type='text/javascript' src='js/fullcalendar.js'></script>
        <script type='text/javascript' src='js/gcal.js'></script>  
        <!-- /JavaScript -->  
        
        <!-- password confirmation -->
        <script type="text/javascript">
        $('#aa_password').on("blur", function() {
            var password = document.getElementById("a_password");
            var confirm_password = document.getElementById("aa_password");
            if (password.value != confirm_password.value) {
                $("#aa_password").closest('.form-group').removeClass('has-success');
                $("#aa_password").closest('.form-group').addClass('has-error');
                $("#check_password_result").html("<p class='text-danger'><em>Password mismatch</em></p>");
                confirm_password.setCustomValidity('Password mismatch.');
            } else {
                $("#aa_password").closest('.form-group').removeClass('has-error');
                $("#aa_password").closest('.form-group').addClass('has-success');
                $("#check_password_result").html("<p class='text-success'><em>Password ok.</em></p>");
                confirm_password.setCustomValidity('');
            }
        });
        </script>
        <!-- password confirmation -->

    </body>
</html>
