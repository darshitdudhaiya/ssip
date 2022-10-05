<?php

$sc_name = $_POST['sc_name'];
$slms_no = $_POST['slms_no'];
$slms_password = $_POST['slms_password'];
$stud_name = $_POST['stud_name'];
$f_name = $_POST['f_name'];
$m_name = $_POST['m_name'];
$f_occupation = $_POST['f_occupation'];
$m_occupation = $_POST['m_occupation'];
$email = $_POST['email'];
$dob = $_POST['dob'];
$blood = $_POST['blood'];
$number = $_POST['number'];
$a_number = $_POST['a_number'];
$adhar = $_POST['adhar'];
$class = $_POST['class'];
$remarks = $_POST['remarks'];
$state = $_POST['state'];
$district = $_POST['district'];
$board = $_POST['board'];
$image = $_FILES['image'];

//Image Process
$destination = "../upload/".$image["name"];
move_uploaded_file($image["tmp_name"] , $destination);

include('../includes/connection.php');
$insert = "INSERT INTO students (sc_name , stud_name ,f_name, m_name ,f_occupation , m_occupation , email , dob ,blood ,number ,a_number,adhar,class,remarks,state,district ,board,image) VALUES ('$sc_name' , '$stud_name' , '$f_name' , '$m_name' , '$f_occupation' , '$m_occupation' , '$email' , '$dob' , '$blood' , '$number' , '$a_number' , '$adhar' , '$class' , '$remarks' , '$state' , '$district' , '$board' , '$destination')";
$queryinsert = $connection->query($insert);
header("Location: ../includes/all_school.php");
$connect = null;
?>
