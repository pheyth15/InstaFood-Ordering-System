<?php
    $email = $_POST['email'];
    $message = $_POST['message'];

    $conn = new mysqli('localhost','root','','online_rest');
    if($conn->connect_error){
        die('Connection Failed  :'. $conn->connect_error);
    }else{
        $stmt = $conn->prepare("insert into tb_form(email, message) values (?, ?)");
        $stmt -> bind_param("ss", $email, $message);
        $stmt -> execute();
        $stmt -> close();
        $conn -> close();
    }
    if(isset($_SERVER['HTTP_REFERER'])) {
        header("location:javascript://history.go(-1)");
    }
    
?>

