<?php 
require 'db_connection.php';

$id =$_GET['id'];

$sql = "SELECT * FROM `contact` WHERE `id`= '{$id}'";

$result = mysqli_query($db_conn,$sql);
$row = mysqli_fetch_assoc($result);
//print_r($row);

echo $json = json_encode($row);

?>