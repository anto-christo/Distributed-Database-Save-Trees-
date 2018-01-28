<?php
    header("Access-Control-Allow-Origin: *");
    $conn = new mysqli("localhost","root","","trees");

    if($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
      }
  
      $username = $_POST["username"];
      $password = $_POST["password"];
  
      $sql = "SELECT username,password FROM user_data WHERE username='$username' AND password='$password'";
  
      $result = $conn->query($sql);
  
      if($result->num_rows > 0){
        echo "success";
      }
  
      else{
        echo "failed";
      }
  
      $conn->close();
?>