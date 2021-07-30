<?php
require 'db_connection.php';

$data = file_get_contents("php://input");

if (isset($data)&& !empty($data)) 
{   
    $id =$_GET['id'];
    $request = json_decode($data);

    $firstname=$request->firstName;
    $lastname=$request->lastName;
    $email=$request->Email;
    $phone=$request->Phone;
    $Address=$request->Address;
    $city=$request->City;
    $provinance=$request->Provinance;
    $note=$request->Note;

    $updateData = mysqli_query($db_conn, "UPDATE `career` SET `firstname`='$firstname', `lastname`='$lastname', `email`='$email', `phone`='$phone', `address`='$Address', `city`='$city', `provinance`='$provinance', `note`='$note' WHERE `id`='{$id}'");
    if ($updateData) {
        echo json_encode(["success" => 1, "msg" => "Data Updated."]);      
    } 
    else {
        echo json_encode(["$updateData", "msg" => "Data Not Updated!"]);
    }
}
else 
{
    echo json_encode(["success" => 0, "msg" => "Please fill all the required fields!"]);
}

?>