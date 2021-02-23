<?php
// parameter database
$servername = "localhost";
$dbusername = "root";
$password = "3edc_4rfv";
$dbname = "db_schedule";

// inisiasi koneksi database
$conn = new mysqli($servername,$dbusername,$password,$dbname);

// cek koneksi database
if ($conn->connect_error) {
    die ('Koneksi database gagal. ' . $conn->connect_error);
    exit();
}
?>