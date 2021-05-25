<?php

session_start();

if ( isset( $_SESSION['username'] ) ) {
    // Grab user data from the database using the user_id
    // Let them access the "logged in only" pages
} else {
    // Redirect them to the login page
    header("Location: login.php");
}

include('functions.php');
include('template/header.php');
?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <h1>Hello <?php echo $_SESSION['username'] ?> </h1>

  </body>
</html>
