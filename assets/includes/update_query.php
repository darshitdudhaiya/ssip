<?php
    include("./connection.php");

    session_start();

    header('Content-Type: application/json');
    header('Access-Control-Allow-origin:*');
    header('Access-Control-Method:POST');


    $data = json_decode(file_get_contents("php://input"));
   

    $school_name=$data->school_name;
    $student_name=$data->student_name;
    $fathers_name=$data->fathers_name;
    $mothers_name=$data->mothers_name;
    $fathers_occ=$data->fathers_occ;
    $mothers_occ=$data->mothers_occ;
    $email=$data->email;
    $dob=$data->dob;
    $b_groop=$data->b_groop;
    $number=$data->number;
    $a_number=$data->a_number;
    $aadhar=$data->aadhar;
    $class=$data->class;
    $remarks=$data->remarks;
    $state=$data->state;
    $district=$data->district;
    $board=$data->board;
    $id=$data->id; 
    echo $id ;
    
    $sql = "UPDATE `students` SET `sc_name`='$school_name',
                                  `stud_name`='$student_name',
                                  `f_name`='$fathers_name',
                                  `m_name`='$mothers_name',
                                  `f_occupation`='$fathers_occ',
                                  `m_occupation`='$mothers_occ',
                                  `email`='$email',
                                  `dob`='$dob',
                                  `blood`='$b_groop',
                                  `number`=$number,
                                  `a_number`=$a_number,
                                  `adhar`='$aadhar',
                                  `class`=$class,
                                  `remarks`='$remarks',
                                  `state`='$state',
                                  `district`='$district',
                                  `board`='$board' 
                                  WHERE `id`=.$id";

    $result =$connection->query($sql);
