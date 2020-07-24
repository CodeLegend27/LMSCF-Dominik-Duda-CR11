<?php
include "dbconnect.php";

	$search = $_POST["search"];
	 //$search = isset($_POST["search"]) ? $_POST["search"] : "null";

	$sql = "SELECT * FROM animals WHERE name LIKE '%$search%'";

	$result = mysqli_query($conn, $sql);

	if($result->num_rows == 0){
		echo "No result";
	}elseif($result->num_rows == 1){
		$row = $result->fetch_assoc();
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
	}else {
		$rows = $result->fetch_all(MYSQLI_ASSOC);
		foreach ($rows as $row) {
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
	}

?>