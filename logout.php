<?php

session_start();

// Slutter sessionen med at tømme $_SESSION variablen

session_destroy();
?>

<html>
<link rel="stylesheet" href="css/login.css">
<div class="logout">
<h3><?php echo 'Du er blevet logget ud'; ?></h3>
</div>

<?php

header('Refresh: 7; URL = login.php');

?>
