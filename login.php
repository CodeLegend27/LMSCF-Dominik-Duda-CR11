<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<?php
include 'dbconnect.php';





if( isset($_POST['btn-login']) ) {

  // prevent sql injections/ clear user invalid inputs
 $email = trim($_POST['email']);
 $email = strip_tags($email);
 $email = htmlspecialchars($email);

 $pass = trim($_POST[ 'pass']);
 $pass = strip_tags($pass);
 $pass = htmlspecialchars($pass);
 // prevent sql injections / clear user invalid inputs

 if(empty($email)){
  $error = true;
  $emailError = "Please enter your email address.";
 } else if ( !filter_var($email,FILTER_VALIDATE_EMAIL) ) {
  $error = true;
  $emailError = "Please enter valid email address.";
 }

 if (empty($pass)){
  $error = true;
  $passError = "Please enter your password." ;
 }

 // if there's no error, continue to login
 if (!$error) {
 
  $password = hash( 'sha256', $pass); // password hashing

  $res=mysqli_query($conn, "SELECT * FROM users WHERE userEmail='$email'" );
  $row=mysqli_fetch_array($res, MYSQLI_ASSOC);
  $count = mysqli_num_rows($res); // if uname/pass is correct it returns must be 1 row
 
  if( $count == 1 && $row['userPass' ]==$password ) {
    if($row["status"] == 'admin'){
      $_SESSION["admin"] = $row["userId"];
      header("Location: admin.php");

    }else {
      $_SESSION['user'] = $row['userId'];
      header("Location: home.php");    }
   
  } else {
   $errMSG = "Incorrect Credentials, Try again..." ;
  }
 
 }

}

function loadcontent($url){
  echo '<script>
  
  $( document ).ready(function() {
      $("#content_div").load("'.$url.'");
  });

  </script>
  
  
  
  ';

}
?>



   <form method="post"  action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" autocomplete= "off">
 
   
            <h2>Log In.</h2 >
            <hr />
           
            <?php
  if ( isset($errMSG) ) {
echo  $errMSG; ?>
             
               <?php
  }
  ?>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
           
         
           
            <input  type="email" name="email"  class="form-control" placeholder= "Your Email" value="<?php echo $email; ?>"  maxlength="40" />
       
            <span class="text-danger"><?php  echo $emailError; ?></span >
 
         
            <input  type="password" name="pass"  class="form-control" placeholder ="Your Password" maxlength="15"  />
       
           <span  class="text-danger"><?php  echo $passError; ?></span>
            <hr />
            <button  class="btn btn-primary"type="submit" name= "btn-login">Log In</button>
         
         
            <hr />
 
            <a  href="register.php">Sign Up Here...</a>
     
         
   </form>
   </div>