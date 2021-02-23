<?php
// calendar render
require_once '../connect_db.php';

session_start();
$venue = strtoupper($_SESSION['venue']);
$departement = strtoupper($_SESSION['departement']);

$result = array();
$sql_ms = "SELECT 
        tbl_events.id_event,
        tbl_events.venue, 
        tbl_events.title, 
        tbl_events.start, 
        tbl_events.end,
        tbl_events.user_created,
        tbl_events.dept_created,
        tbl_dept_colors.color,
        tbl_dept_colors.textColor  
        FROM tbl_events INNER JOIN tbl_dept_colors 
        ON tbl_events.dept_created = tbl_dept_colors.departement
        WHERE tbl_events.deleted = 0 AND tbl_events.venue = '$venue'";

$sql_y = "SELECT 
        tbl_events.id_event,
        tbl_events.venue, 
        tbl_events.title, 
        tbl_events.start, 
        tbl_events.end,
        tbl_events.user_created,
        tbl_events.dept_created,
        tbl_dept_colors.color,
        tbl_dept_colors.textColor  
        FROM tbl_events INNER JOIN tbl_dept_colors 
        ON tbl_events.dept_created = tbl_dept_colors.departement
        WHERE tbl_events.deleted = 0 AND tbl_events.dept_created = '$departement'";

switch ($venue) {
    case 'MAIN':
        $queryResult = mysqli_query ($conn, $sql_ms);
    break;
    case 'SMALL':
        $queryResult = mysqli_query ($conn, $sql_ms);
    break;
    case 'DIVISION':
        $queryResult = mysqli_query ($conn, $sql_y);
    break;
};

while ($fetchData = mysqli_fetch_assoc($queryResult)){
    $result[] = $fetchData;
}; 

echo json_encode($result);
mysqli_close($conn);

?>