<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: POST");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

require 'db_connection.php';
$id =$_GET['id'];

    $deleteUser = mysqli_query($db_conn, "DELETE FROM `services` WHERE `id`='$id' LIMIT 1");

    if ($deleteUser) {
        http_response_code(204);
        echo json_encode(["success" => 1, "msg" => "User Deleted"]);
    } else {
        http_response_code(422);
        echo json_encode(["success" => 0, "msg" => "User Not Found!"]);
    }