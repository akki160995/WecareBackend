<?php

require 'db_connection.php';
$id =$_GET['id'];

    $deleteUser = mysqli_query($db_conn, "DELETE FROM `evantinfo` WHERE `id`='$id' LIMIT 1");

    if ($deleteUser) {
        http_response_code(204);
        echo json_encode(["success" => 1, "msg" => "data Deleted"]);
    } else {
        http_response_code(422);
        echo json_encode(["success" => 0, "msg" => "data Not Found!"]);
    }