<?php
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "rex-db";
$port = 3306;

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname, $port);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
?>