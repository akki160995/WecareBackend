<?php

require 'db_connection.php';

$postdata = file_get_contents('php://input');

if(isset($postdata) && !empty($postdata))
{
  $request =json_decode($postdata);

  $firstname=$request->firstName;
  $lastname=$request->lastName;
  $email=$request->email;
  $phone=$request->Phone;
  $Address=$request->Address;
  $city=$request->City;
  $provinance=$request->Provinance;
  $note=$request->Note;


  
  $sql = "INSERT INTO career
  (firstname, lastname, email, phone, address, city, provinance, note) 
  VALUES 
  ('$firstname','$lastname','$email','$phone','$Address','$city','$provinance','$note')";
    
    if(mysqli_query($db_conn,$sql))
    {
      http_response_code(201);
    }
    else{
      http_response_code(422);
    }
  }
?>