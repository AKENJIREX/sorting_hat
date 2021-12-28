<html>
<link rel="stylesheet" href="Assets/css/index.css">
<body>
<h1 id="headings">SORTING HATS(HOGWARTS)</h1>

<h2 id="chances">This is a chance for you to know <br>
    where you truely belong</h2>
   
      <div id="addperson">
    <img src="https://cdn.pixabay.com/photo/2019/03/24/12/19/harry-potter-4077473_960_720.png" alt="" height="200px" />
    <br />
    
    <a href="add.html"><button>Add Person</button></a>
    <a href="sort.php"><button>Put Person in House</button></a>
  </div>
</body>
</html>
<?php


session_start();
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "rex-db";
$port = 3306;

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname,$port);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT id FROM students where hatId IS NULL ";
$result = $conn->query($sql);

$_SESSION['ids'] = array();
$_SESSION['current_student'] = 0;
$_SESSION['first_student'] = true;

if ($result->num_rows > 0) {
  // output data of each row
  while ($row = $result->fetch_assoc()) {
    array_push($_SESSION['ids'], $row["id"]);
  }
} else {
  
}
sort($_SESSION['ids']);


$conn->close();

?>