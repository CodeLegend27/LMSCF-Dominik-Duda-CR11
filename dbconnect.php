<?php
error_reporting( ~E_DEPRECATED & ~E_NOTICE );
$servername = "localhost";
$username   = "root";
$password   = "";
$dbname     = "cr11_dominikduda_petadoption";
// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
   die("Connection failed: " . mysqli_connect_error() . "\n");
}
?>