<?php
// Definerer konstanter med database forbindelse info
define('DBHOST', 'localhost');
define('DBUSER', 'root');
define('DBPASS', 'root');
define('DBNAME', 'aros_and_son');

$conn = null;

global $conn;

// Opretter den faktiske database forbindelse
$conn = mysqli_connect(DBHOST, DBUSER, DBPASS, DBNAME);

// Tester om der er fejl i databaseforbindelse (Stopper eksekvering)
if(!$conn) {
  die("Connection failed" . mysqli_error($conn)); //String skal skrives på dansk
}


function employee_data() {
  global $conn;
  $sql = "SELECT first_name, last_name, email, phone_no, address, zip_code FROM employees";
  $result = mysqli_query($conn, $sql);
  $employee_data = array();
  if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
      $employee_data[] = $row;
    }
  }
  foreach ($employee_data[0] as $employee_information) {
    echo $employee_information;
  }
}


// Debug funktion (sindssygt god at have i alle projekter)
// En funktion til at hente data fra en variable og opstiller det pænt
function debug($data) {
  echo '<pre>';
  print_r($data);
  echo '</pre>';
}
