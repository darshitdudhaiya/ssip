<?php

$s_name = $_POST['s_name'];
$date = $_POST['date'];
$number = $_POST['number'];
$a_number = $_POST['a_number'];
$email = $_POST['email'];
$address = $_POST['address'];
$state = $_POST['state'];
$district = $_POST['district'];
$board = $_POST['board'];
$image = $_FILES['image'];
$description = $_POST['description'];

//Image Process
$destination = "../upload/".$image["name"];
move_uploaded_file($image["tmp_name"] , $destination);

include('../includes/connection.php');
$insert = "INSERT INTO schools (s_name , date ,number, a_number ,email , address , state , district , board , s_image , description) VALUES ('$s_name' , '$date' , '$number' , '$a_number' , '$email' , '$address' , '$state' , '$district' , '$board' , '$destination' , '$description')";
$queryinsert = $connection->query($insert);
header("Location: ../includes/all_school.php");
$connect = null;
?>