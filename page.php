<?php

require_once 'main.php';

$venue = $_GET['venue'];
$_SESSION['venue'] = $venue;

switch ($venue) {
    case 'main':
        $title = "Main Meeting Room";
        break;
    case 'small':
        $title = "Small Meeting Room";
        break;
    case 'division':
        $title = "Your Division Calendar";
        break;
};
?>

<script type="text/javascript" src="scripts/show_calendar.js"></script>

<html>

<body class="roboto">
    <br>
    <!-- the full display -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">
                <div>
                    <!-- <br> -->
                    <h3 class="page-header"><?php echo $title; ?></h3>
                </div>
                <form class="form-horizontal" id="form_add_event">
                    <div class="form-group">
                        <label for="a_title" class="col-sm-3 control-label">Description</label>
                        <div class="col-sm-9">
                            <!-- hidden value -->
                            <input type="hidden" name="a_id_event" id="a_id_event">
                            <input type="hidden" name="a_venue" id="a_venue">
                            <input type="hidden" name="a_user_created_old" id="a_user_created_old">
                            <input type="hidden" name="a_dept_created_old" id="a_dept_created_old">
                            <!-- /hidden value -->
                            <textarea type="text" rows="4" class="form-control" id="a_title" name="a_title" placeholder="Description" required></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="a_start" class="col-sm-3 control-label">Start</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control datetime_class" id="a_start" name="a_start" placeholder="Start" required autocomplete="off">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="a_end" class="col-sm-3 control-label">End</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control datetime_class" id="a_end" name="a_end" placeholder="End" required autocomplete="off">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="a_venue_loc" class="col-sm-3 control-label">Venue</label>
                        <div class="col-sm-9">
                            <p class="form-control-static" id="a_venue_loc" name="a_venue_loc"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="a_user_created_loc" class="col-sm-3 control-label">Creator</label>
                        <div class="col-sm-9">
                            <p class="form-control-static" id="a_user_created_loc" name="a_user_created_loc"></p>
                        </div>
                    </div>
                    <div>
                        <br>
                        <input type="submit" class="btn btn-primary" value="Save">
                        <a class="btn btn-danger btn-ok" id="button_delete_event" onclick="return requestDeleteEvent();" disabled>Delete Event</a>
                    </div>
                    <br>
                    <div id="space_for_alert"></div>
                    <div>Note: Your color is <span class="fa fa-square" aria-hidden="true" style="color: <?php echo $_SESSION['color']; ?>;"></span> .</div>
                    <br>
                </form>
            </div>

            <div class="col-md-9">
                <div id='calendar'></div>
            </div>
        </div>
    </div>
    <!-- /the full display -->

    <script type="text/javascript" src="scripts/scripts.js"></script>

</body>

</html>