<?php

  include '../connect.php';

  $data = json_decode(file_get_contents("php://input"));

  if(count($data) > 0){
    $movid = mysqli_real_escape_string($connect, $data->movid);
    $name = mysqli_real_escape_string($connect, $data->name);
    $runtime = mysqli_real_escape_string($connect, $data->runtime);
    $imdb = mysqli_real_escape_string($connect, $data->imdb);
    $rt = mysqli_real_escape_string($connect, $data->rt);
    $desc = mysqli_real_escape_string($connect, $data->desc);
    $age = mysqli_real_escape_string($connect, $data->age);

  }

  $sql = "UPDATE movies SET mov_name='$name',runtime='$runtime',imdb_rat=$imdb,rt_rat=$rt,age_rat=$age,descrip='$desc' where mov_id=$movid";
  $execution = mysqli_query($connect,$sql);
  if($execution){
    echo "Data Succesfully Updated";
  }
  else{
    echo "Data not Updated";
  }

?>
