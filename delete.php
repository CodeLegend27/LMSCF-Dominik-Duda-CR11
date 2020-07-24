


<?php
include 'dbconnect.php';


  $id = $_POST['id'];
  $sql = "DELETE FROM animals WHERE id = {$id}";


if (mysqli_query($conn, $sql)) {



  echo '<br><br><br><br><h1 class="text-center" style="marginleft:auto;margin-right:auto;">Successfully Deleted</h1>
  
  ';
  header( "refresh:2; url=admin.php" ); 
  
} else {
  echo "<h1>UPDATE creation error for: </h1>" .
    "<p>"  . $sql . "</p>" .
    mysqli_error($conn);
}
mysqli_close($conn);




?>