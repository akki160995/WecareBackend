<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: POST");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

require 'db_connection.php';

$data = file_get_contents("php://input");

if (isset($data)&& !empty($data)) 
{   
    $id =$_GET['id'];
    $request = json_decode($data);

    
    $Heading = $request->Heading;
    $Description = $request->Description;

    $updateData = mysqli_query($db_conn, "UPDATE `services` SET `Heading`='$Heading', `Description`='$Description' WHERE `id`='{$id}'");
    if ($updateData) {
        echo json_encode(["success" => 1, "msg" => "Data Updated."]);      
    } 
    else {
        echo json_encode(["success" => 0, "msg" => "Data Not Updated!"]);
    }
}
else 
{
    echo json_encode(["success" => 0, "msg" => "Please fill all the required fields!"]);
}

?>