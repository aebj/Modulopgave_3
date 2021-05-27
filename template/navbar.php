<?php

session_start();

if ( isset( $_SESSION['email'] ) ) {
    // Grab user data from the database using the user_id
    // Let them access the "logged in only" pages
} else {
    // Redirect them to the login page
    navbar("Location: login.php");
}

?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/navbar.css">
    <title></title>
  </head>
  <body>
    <div class="navbar">
      <a class="logo" href="deals.php" >Aros & søn</a>
      <div class="navbar-right">
        <a href="logout.php">Log ud</a>
        <a href="deals.php">Aftaler</a>
        <a href="contact_customers.php">Kontakter</a>
        <a href="communication.php">Beskeder</a>
      </div>
    </div>
  </body>
</html>
