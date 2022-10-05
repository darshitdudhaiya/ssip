<?php

$c_name = $_POST['c_name'];
$date = $_POST['date'];
$number = $_POST['number'];
$a_number = $_POST['a_number'];
$email = $_POST['email'];
$address = $_POST['address'];
$state = $_POST['state'];
$district = $_POST['district'];
$university = $_POST['university'];
$image = $_FILES['image'];
$description = $_POST['description'];

//Image Process
$destination = "../upload/".$image["name"];
move_uploaded_file($image["tmp_name"] , $destination);

include('../includes/connection.php');
$insert = "INSERT INTO colleges (c_name , date ,number, a_number ,email , address , state , district , university , c_image , description) VALUES ('$c_name' , '$date' , '$number' , '$a_number' , '$email' , '$address' , '$state' , '$district' , '$university' , '$destination' , '$description')";
$queryinsert = $connection->query($insert);
header("Location: ../includes/all_colleges.php");
$connect = null;
?>