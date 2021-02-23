
<?php

// deleting a record
require_once '../connect_db.php';
if (isset($_POST['id_event'])) {
    session_start();
    $user_created = strtoupper($_SESSION['username']);

    $id_event = $_POST['id_event'];
    $user_created_old = $_POST['user_created_old'];

    if ($user_created == $user_created_old) {
        
        $sql = "UPDATE tbl_events SET deleted = 1 WHERE id_event = $id_event";
        $query = mysqli_query ($conn, $sql);

    } else {

        $query = '';
        
    };
    
    if($query) {
        $result = array ('result' => 'query success');
        echo json_encode($result);
    } else {
        $result = array ('result' => 'query fail');
        echo json_encode($result);
    };
    mysqli_close($conn);
};
?>