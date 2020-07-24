<?php
  include 'dbconnect.php';

  
  $id = $_POST['id'];
  $fk_location_id = mysqli_real_escape_string($conn, $_POST['fk_location_id']);
  $age = mysqli_real_escape_string($conn, $_POST['age']);
  $img = mysqli_real_escape_string($conn, $_POST['img']);
  $name = mysqli_real_escape_string($conn, $_POST['name']);
  $description = mysqli_real_escape_string($conn, $_POST['description']);

  $type = mysqli_real_escape_string($conn, $_POST['type']);
  $hobby = mysqli_real_escape_string($conn, $_POST['hobby']);
 


  $sql ="UPDATE `animals` SET fk_location_id='$fk_location_id', age='$age', img='$img', name='$name', description='$description', type='$type', hobby='$hobby' WHERE id='$id'";
  
 

  
  if (mysqli_query($conn, $sql)) {
    echo '<h1 class="text-center m-5">Data Succesfully updated.<h1>';
    header( "refresh:2; url=admin.php" ); 
      } else {
    echo "<h1>Record creation error for: </h1>" .
      "<p>"  . $sql . "</p>" .
      mysqli_error($conn);
  }
  
  mysqli_close($conn);

  ?>