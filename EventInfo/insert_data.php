<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: POST");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

require 'db_connection.php';

$postdata = file_get_contents('php://input');

if(isset($postdata) && !empty($postdata))
{
  $request =json_decode($postdata);

  $firstname=$request->FirstName;
  $lastname=$request->LastName;
  $email=$request->Email;
  $phone=$request->Phone;
  $team=$request->Team;
  $message=$request->Message;
  
  $sql = "INSERT INTO evantinfo
  (firstname, lastname, email, phone, team, message) 
  VALUES 
  ('$firstname','$lastname','$email','$phone','$team','$message')";
    
    if(mysqli_query($db_conn,$sql))
    {
      http_response_code(201);
      echo "success";
    }
    else{
      http_response_code(422);
    }
  }
?>