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

if (isset($_POST['email'])) {
  $username = $_POST['email'];
  $password = $_POST['password'];

  $sql = "SELECT id, email, password FROM employees WHERE email='".$username."'AND password='".$password."'LIMIT 1";

  $result= mysqli_query($sql);

  if (mysqli_num_rows($result)==1) {
    echo "You have successfully logged in";
    exit();
  }
  else {
    echo "Incorrect password";
    exit();
  }

}

?>


<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Login</title>
  </head>
  <body>

    <div class="">
      <form class="" action="#" method="post">
        <div class="">
          <input type="text" name="email" value="" placeholder="Email">
        </div>
        <div class="">
          <input type="password" name="password" value="" placeholder="Password">
        </div>
        <input type="submit" name="submit" value="Login">
      </form>
    </div>

  </body>
</html>
