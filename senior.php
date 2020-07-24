<?php

include 'dbconnect.php';

?>

<!-- HEADER -->
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
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Animal Shelter</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item ">
        <a class="nav-link" href="home.php">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="general.php">Small and Big Animals</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="senior.php">Senior Animals</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="search.php">Search</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="logout.php">LOG OUT</a>
      </li>
    </ul>
    
  </div>
</nav>


<div class="container-fluid">

    <div class="row m-5 justify-content-center">
    

    
  <?php 
  

  $sql = "SELECT * FROM animals JOIN location ON animals.id = location.id WHERE type='senior'

 ";
  $result = mysqli_query($conn, $sql);

  
 
/*   (`id`, `fk_location_id`, `age`, `img`, `name`, `description`, `type`, `hobby`) 
`id`, `city`, `zip`, `address`)
 */
  while ($row = mysqli_fetch_assoc($result)) {
  
    echo '
    

    <div class="card col-3 m-1">
    <img class="card-img-top" src="'.$row["img"].'" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">'.$row["name"].'</h5>
      <p class="card-text">AGE: '.$row["age"].'</p>
      <p class="card-text">Description: '.$row["description"].'</p>
      <p class="card-text">Type: '.$row["type"].'</p>
      <p class="card-text">Hobby: '.$row["hobby"].'</p>
      <p class="card-text">City: '.$row["city"].'</p>
      <p class="card-text">Zip: '.$row["zip"].'</p>
      <p class="card-text">Address: '.$row["address"].'</p>
     
    </div>
  </div>


    
    ';
  }


  ?>


</div></div>



<?php include 'footer.php';?>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>