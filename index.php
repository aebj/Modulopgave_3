<?php
// Difinerer konstanter med database forbindelse info
define('DBHOST', 'localhost');
define('DBUSER', 'root');
define('DBPASS', 'root');
define('DBNAME', 'aros_and_son');

// Inkluderer functions.php med alle funktioner
include('functions.php');

// Forbinder til databasen (se functions.php)
connect();
?>
