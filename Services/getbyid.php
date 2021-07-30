<?php 

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: POST");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

$db_conn = mysqli_connect("localhost","root","","wecare");

$id =$_GET['id'];

$sql = "SELECT * FROM `services` WHERE `id`= '{$id}'";

$result = mysqli_query($db_conn,$sql);
$row = mysqli_fetch_assoc($result);
//print_r($row);

echo $json = json_encode($row);

?>