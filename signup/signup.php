<?php
    $add = 0;
    $datacheck = "";
    $pnum = $email = $name = $pass = "";
  if(isset($_POST["submit"])&& $_SERVER["REQUEST_METHOD"]=="POST") {
    $pnum = test_input($_POST["pnum"]);
    $emailid = test_input($_POST["email"]);
    $name = test_input($_POST["name"]);
    $pass = test_input($_POST["pass"]);

    $connect = mysqli_connect("localhost","root","","iwp");
    $sql="INSERT INTO info(name,phonenum,emailid,pass) VALUES ('$name',$pnum,'$emailid','$pass')";
    $result = mysqli_query($connect,$sql);
    if($result) {
      $add = 1;
    }
    if ($add == 1) {
      $datacheck = 'Data Added';
    }
    else {
      $datacheck = 'Data not added';
    }
  }

  function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
?>
