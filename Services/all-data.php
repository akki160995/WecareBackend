<?php
require 'db_connection.php';

$allData = mysqli_query($db_conn, "SELECT * FROM `services`");
if (mysqli_num_rows($allData) > 0) {
    $all_data = mysqli_fetch_all($allData, MYSQLI_ASSOC);
    echo json_encode($all_data);
} else {
    echo json_encode(["success" => 0]);
}