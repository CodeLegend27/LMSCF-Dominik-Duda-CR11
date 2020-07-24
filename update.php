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
    
<h1>ADMIN DASHBOARD</h1>
<a href="adminusers.php">Edit Users</a><br>
<a href="admincreate.php">Create Animals</a><br>
<a href="admin.php">Edit Animals</a>
<br>

<?php
  $id = $_POST['id'];
  $sql = "SELECT * FROM animals WHERE id = {$id}";



  $result = mysqli_query($conn, $sql);

  
 
  
 $row = mysqli_fetch_assoc($result);

 ?>
<div class="container">
    <p>Update Animal:<br><?php echo
    /*   (`id`, `fk_location_id`, `age`, `img`, `name`, `description`, `type`, `hobby`)  */

    '
    ID = '.$row["id"].' <br>
    Name = '.$row["name"].' <br>
    Location = '.$row["fk_location_id"].' <br>
    Age = '.$row["age"].' <br>
    img = <img src="'.$row["img"].'" height="50" width="50"> <br>
    Description = '.$row["description"].' <br>
    Type = '.$row["type"].' <br>
    Hobby = '.$row["hobby"].' <br>
 

    
    ';
    ?></p>
<form action="updatedb.php" method="post">

<div class="row">
<div class="form-group">
                            <label for="name">name</label>
                            <input type="text" class="form-control" name="name">
                        </div></div>

                    <div class="row">
                        <div class="form-group">
                            <label for="fk_location_id">fk_location_id</label>
                            <input type="number" class="form-control" name="fk_location_id">
                        </div>
                        <div class="form-group">
                            <label for="age">age</label>
                            <input type="number" class="form-control" name="age">
                        </div>
                        <div class="form-group">
                            <label for="img">img</label>
                            <input type="text" class="form-control" name="img">
                        </div>
                       
                    </div>
                    <div class="row">
                        <div class="form-group">
                            <label for="description">description</label>
                            <input type="text" class="form-control" name="description">
                        </div>
                        <div class="form-group">
                            <label for="type">type</label>
                            <input type="text" class="form-control" name="type">
                        </div>
                        
                        <div class="form-group">
                            <label for="hobby">hobby</label>
                            <input type="text" class="form-control" name="hobby">
                        </div>
                    </div>
                
                    <input type="hidden" name="id" value="<?php echo $row["id"] ?>">


                    <button type="submit" value="Submit" name="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>



</div>




<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body></html>