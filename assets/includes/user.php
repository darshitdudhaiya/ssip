<?php
    include("./connection.php");

    session_start();

    header('Content-Type: application/json');
    header('Access-Control-Allow-origin:*');
    header('Access-Control-Method:POST');


    $data = json_decode(file_get_contents("php://input"));
   

    $email = $data->email;
    $user_type = $data->user_type;
    $password = $data->password;   
    
    $sql = "SELECT COUNT(*) FROM `users` WHERE user_type = '{$user_type}' && username ='{$email}' && password = '{$password}'";

    $result =$connection->query($sql); 
    $row =$result->fetch(PDO::FETCH_ASSOC);

    if($row["COUNT(*)"] == 1)
    {
        echo 1;
        $_SESSION["user"]  = $email;   
        $_SESSION['user_type'] = $user_type;     
        // echo json_encode(array('status' => true, 'data' => $count));
    }
    else
    {
        echo 0;
    }
?>