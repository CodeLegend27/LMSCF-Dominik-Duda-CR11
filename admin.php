<?php include "dbconnect.php"?>

<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>CR 11</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    
<h1>ADMIN DASHBOARD  <span><a href="logout.php">LOG OUT</a></span></h1>
<a href="adminusers.php"><b>Superadmin</b> Edit Users</a><br>
<a href="admincreate.php">Create Animals</a><br>
<a href="admin.php">Edit Animals</a>
<br>
<div class="container">
  <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">ANIMAL ID</th>
      <th scope="col">NAME</th>
      <th scope="col">Img</th>
         <th scope="col">Update</th>
      <th scope="col">Delete</th>

    </tr>
  </thead>  

  <tbody>


  <?php 
  

  $sql = "SELECT * FROM animals 

 ";
  $result = mysqli_query($conn, $sql);

  
 
/*   (`id`, `fk_location_id`, `age`, `img`, `name`, `description`, `type`, `hobby`)  */
  while ($row = mysqli_fetch_assoc($result)) {
  
    echo '
    
    <tr>
      <th scope="row">'.$row["id"].'</th>
      <th scope="row">'.$row["name"].'</th>
      <th scope="row">'.$row["type"].'</th>
      <th scope="row"><img src="'.$row["img"].'" width="50" height="50"></th>
      

      <th scope="row"> <form action ="update.php" method="post">
      <input type="hidden" name="id" value="' . $row["id"] . '" />
      <button type="submit"  class="btn btn-outline-warning text-dark">Update</button>
      </form>
      
      </th>
      <th scope="row"> <form action ="delete.php" method="post">
      <input type="hidden" name="id" value="' . $row["id"] . '" />
      <button type="submit"  class="btn btn-outline-danger text-dark">Delete</button>
      </form>
      
      </th>

     
     
          </tr>
   
    
    
    
    ';
  }


  ?>
  </tbody>
</table>
</div>




<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body></html>