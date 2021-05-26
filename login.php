<?php

session_start();

include('functions.php');

if(isset($_POST['login_button'])){

    $username = mysqli_real_escape_string($conn, $_POST['email']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);

    if ($username != "" && $password != ""){

        $sql_query = "SELECT id, employee_email, password FROM employees WHERE employee_email='".$username."'AND password='".$password."'LIMIT 1";
        $result = mysqli_query($conn,$sql_query);
        $row = mysqli_fetch_array($result);

          if($result && mysqli_num_rows($result) > 0){
              $_SESSION['email'] = $username;
              header('Location: deals.php');
              die();
          } else{
              echo "Fejl i E-mail eller adgangskode"; //Skal skrives på dansk
            }
    }
}

?>


<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/login.css">
    <title>Login</title>
  </head>
  <body>

    <div class="container">
    <form method="post" action="">
        <div class="login">
            <h1>Login</h1>
            <div>
                <input type="text" name="email" placeholder="Email">
            </div>
            <div>
                <input type="password" name="password" placeholder="Password">
            </div>
            <div>
                <input type="submit" value="Login" name="login_button">
            </div>
        </div>
    </form>
    </div>

  </body>
</html>
