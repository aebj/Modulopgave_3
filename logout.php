<?php

session_start();

// Slutter sessionen med at tømme $_SESSION variablen

session_destroy();

echo 'You have logged out';

header('Refresh: 3; URL = login.php');

?>
