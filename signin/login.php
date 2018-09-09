<?php

    $connect = mysqli_connect("localhost","root","","iwp");
    $userid = test_input($_POST["userid"]);
    $pass = test_input($_POST["pass"]);

    $sql="SELECT * from info WHERE username='$userid' AND pass='$pass'";
    $result = mysqli_query($connect,$sql);
    $count = mysqli_num_rows($result);

    if($count == 1) {
       session_start();
       $_SESSION['user_id'] = $userid;

       header('Location: ../main/index.html');
     }
     else {
       $error = "Your Login Name or Password is invalid";
    }

  function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
?>
