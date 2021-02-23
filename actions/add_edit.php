<?php
// add or edit a record
require_once '../connect_db.php';

if($_SERVER['REQUEST_METHOD']=='POST'){
    session_start();
    $user_created = strtoupper($_SESSION['username']);
    $dept_created = strtoupper($_SESSION['departement']);
    $venue = strtoupper($_SESSION['venue']);

    $id_event = $_POST['a_id_event'];
    $user_created_old = $_POST['a_user_created_old'];
    $dept_created_old = $_POST['a_dept_created_old'];
        
    $title = $_POST['a_title'];
    $start = date("Y-m-d H:i",strtotime($_POST['a_start']));
    $end = date("Y-m-d H:i",strtotime($_POST['a_end']));

    if ($end < $start) {

        $query = '';
        
    } else {

        if (empty($id_event)) {

            $sql_add_event = "INSERT INTO tbl_events (venue, title, start, end, user_created, dept_created, deleted) VALUES (
                '".$venue."',
                '".$title."',
                '$start',
                '$end',
                '".$user_created."',
                '".$dept_created."',
                0)";
            $query = mysqli_query ($conn, $sql_add_event);
            // echo "yg ini";
            
        } else {
           
            if ($user_created == $user_created_old) {

                $sql_edit_event = "UPDATE tbl_events SET 
                title='".$title."', 
                start ='$start',
                end ='$end',
                user_created='".$user_created."',
                dept_created='".$dept_created."' WHERE id_event = '$id_event'";
                $query = mysqli_query ($conn, $sql_edit_event);
        
            } else {

                $query = '';
        
            };
            
        };
                
    };
    
    if($query) {
        $result = array ('result' => 'query success');
        echo json_encode($result);
    } else {
        $result = array ('result' => 'query fail');
        echo json_encode($result);
    };
} 
?>
