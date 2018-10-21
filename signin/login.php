<?php

    $connect = mysqli_connect("localhost","root","","iwp");
    if(isset($_POST["submit"])&& $_SERVER["REQUEST_METHOD"]=="POST") {
      $email = test_input($_POST["email"]);
      $pass = test_input($_POST["pass"]);

      $sql="SELECT type from info WHERE emailid='$email' AND pass='$pass'";
      $result = mysqli_query($connect,$sql);
      $value = mysqli_fetch_array($result);
      $count = mysqli_num_rows($result);

      if($count == 1) {
        if ($value[0]=="1") {
          session_start();
          $_SESSION["user_id"] = $userid;

          header('Location: ../admin/index.html');
        }
        else {
          session_start();
          $_SESSION["user_id"] = $userid;

          header('Location: ../main/index.html');
        }
       }
       else {
         $error = "Your Login Name or Password is invalid";
      }
    }

  function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
?>
