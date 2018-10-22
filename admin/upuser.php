<?php

  include '../connect.php';

  $data = json_decode(file_get_contents("php://input"));

  if(count($data) > 0){
    $id = mysqli_real_escape_string($connect, $data->id);
    $name = mysqli_real_escape_string($connect, $data->name);
    $phonenum = mysqli_real_escape_string($connect, $data->phone);
    $email = mysqli_real_escape_string($connect, $data->email);
    $pass = mysqli_real_escape_string($connect, $data->pass);
    $type = mysqli_real_escape_string($connect, $data->type);
  }

  $sql = "UPDATE info SET name='$name' ,phonenum=$phonenum, emailid='$email',pass='$pass', type=$type where cust_id=$id";
  $execution = mysqli_query($connect,$sql);
  if($execution){
    echo "Data Succesfully Updated";
  }
  else{
    echo "Data not Updated";
  }
?>
