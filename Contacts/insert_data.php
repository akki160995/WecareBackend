<?php

require 'db_connection.php';

$postdata = file_get_contents('php://input');

if(isset($postdata) && !empty($postdata))
{
  $request =json_decode($postdata);

  $firstname=$request->FirstName;
  $lastname=$request->LastName;
  $email=$request->Email;
  $phone=$request->Phone;
  $message=$request->Message;


  
  $sql = "INSERT INTO contact
  (firstname, lastname, email, phone, message) 
  VALUES 
  ('$firstname','$lastname','$email','$phone','$message')";
    
    if(mysqli_query($db_conn,$sql))
    {
      http_response_code(201);
    }
    else{
      http_response_code(422);
    }
  }
?>