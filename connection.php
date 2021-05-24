<?php
// Definerer konstanter med database forbindelse info
define('DBHOST', 'localhost');
define('DBUSER', 'root');
define('DBPASS', 'root');
define('DBNAME', 'aros_and_son');

// Opretter den faktiske database forbindelse
$conn = mysqli_connect(DBHOST, DBUSER, DBPASS, DBNAME);

// Tester om der er fejl i databaseforbindelse (Stopper eksekvering)
if(!$conn) {
  die("Connection failed" . mysqli_error($conn)); //String skal skrives på dansk
}
