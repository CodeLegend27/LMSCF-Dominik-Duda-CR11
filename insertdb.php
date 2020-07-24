
  <?php
  include 'dbconnect.php';

  

  $fk_location_id = mysqli_real_escape_string($conn, $_POST['fk_location_id']);
  $age = mysqli_real_escape_string($conn, $_POST['age']);
  $img = mysqli_real_escape_string($conn, $_POST['img']);
  $name = mysqli_real_escape_string($conn, $_POST['name']);
  $description = mysqli_real_escape_string($conn, $_POST['description']);

  $type = mysqli_real_escape_string($conn, $_POST['type']);
  $hobby = mysqli_real_escape_string($conn, $_POST['hobby']);
 

  // attempt insert query execution
  $sql = "INSERT INTO animals (fk_location_id, age, img, name, description, type, hobby )
   VALUES ('$fk_location_id', '$age', '$img', '$name', '$description','$type','$hobby')";
  if (mysqli_query($conn, $sql)) {
    echo '<h1 class="text-center m-5">Data Succesfully pushed into the DB.<h1>';
    header( "refresh:2; url=admincreate.php" ); 
  } else {
    echo "<h1>Record creation error for: </h1>" .
      "<p>"  . $sql . "</p>" .
      mysqli_error($conn);
  }
  mysqli_close($conn);

  ?>