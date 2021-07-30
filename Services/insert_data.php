<?php

require 'db_connection.php';

/*print_r($_POST);*/

$postdata = file_get_contents('php://input');

if(isset($postdata) && !empty($postdata))
{
  $request =json_decode($postdata);

  $Heading=$request->heading;
  $Description = $request->description;
  $date=date("Y.m.d h:i");

  $sql = "INSERT INTO services (  Heading, Description )
    VALUES ('$Heading', '$Description')";
    
    if(mysqli_query($db_conn,$sql))
    {
      http_response_code(201);
    }
    else{
      http_response_code(422);
    }
  }
?>