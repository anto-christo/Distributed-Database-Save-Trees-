<?php
  $conn = new mysqli("localhost","root","","trees");

  if($conn->connect_error)
    die("Connection failed".$conn->connect_error);

  $name = $_POST["name"];
  $username = $_POST["username"];
  $email = $_POST["email"];
  $state = $_POST["state"];
  $city = $_POST["city"];
  $address = $_POST["address"];
  $password = $_POST["password"];

  $register = "INSERT INTO user_data (name,username,email,state,city,address,password) VALUES('$name','$username','$email','$state','$city','$address','$password')";

  if($conn->query($register)){
      echo "success";
  }

  else{
      echo "failed";
  }
  
  
?>