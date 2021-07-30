<?php

require 'db_connection.php';

/*print_r($_POST);*/

$postdata = file_get_contents('php://input');

if(isset($postdata) && !empty($postdata))
{
  $request =json_decode($postdata);

  $title=$request->title;
  $body = $request->body;
  $date=date("Y.m.d h:i");

  $sql = "INSERT INTO news (  title, body ,date)
    VALUES ('$title', '$body', '$date')";
    
    if(mysqli_query($db_conn,$sql))
    {
      http_response_code(201);
    }
    else{
      http_response_code(422);
    }
  }
?>