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
  $age=$request->Age;
  $email=$request->Email;
  $address=$request->Address;
  $allergies=$request->Allergic;
  
  $sql = "INSERT INTO eventreg
  (firstname, lastname, age, email, address, allergies) 
  VALUES 
  ('$firstname','$lastname','$age','$email','$address','$allergies')";
    
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