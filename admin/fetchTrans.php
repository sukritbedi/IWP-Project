<?php
  include '../connect.php';
  $sql = "SELECT tran_id, i.name as cus_name, mov.mov_name, timest FROM transaction tran inner join info i on tran.cust_id = i.cust_id inner join movies mov on tran.mov_id = mov.mov_id";
  $result = mysqli_query($connect,$sql);
  $json_array = array();
  while($row = mysqli_fetch_assoc($result))
  {
    $json_array[] = $row;
  }
  echo json_encode($json_array);
  exit();
?>
