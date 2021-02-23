<?php
// script change password
require_once '../connect_db.php';
if (isset($_POST['button_change_password'])) {
    session_start();
    $user = $_SESSION["username"];
    $data = mysqli_query ($conn, "SELECT id_user FROM tbl_users WHERE username='".$user."'");
    $result = mysqli_fetch_assoc($data);
    $id_user = $result['id_user'];

    $a_password = md5 ($_POST['a_password']);
    
    $update_password = "UPDATE tbl_users SET 
        password ='$a_password' 
        WHERE id_user='$id_user'";
    $query = mysqli_query ($conn, $update_password);
    if($query) {
        header ('Location: ../main.php');
    }
    mysqli_close($conn);
} 
?>