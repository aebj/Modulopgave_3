<?php

include "connection.php";

if(isset($_POST['but_submit'])){

    $username = mysqli_real_escape_string($conn, $_POST['username']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);

    if ($username != "" && $password != ""){

        $sql_query = "SELECT id, email, password FROM employees WHERE email='".$username."'AND password='".$password."'LIMIT 1";
        $result = mysqli_query($conn,$sql_query);
        $row = mysqli_fetch_array($result);

        if($result && mysqli_num_rows($result) > 0){
            $_SESSION['username'] = $username;
            header('Location: deals.php');
        }else{
            echo "Invalid username and password";
        }

    }

}

?>


<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>

    <div class="container">
    <form method="post" action="">
        <div id="div_login">
            <h1>Login</h1>
            <div>
                <input type="text" class="textbox" name="username" placeholder="Username">
            </div>
            <div>
                <input type="password" name="password" value="" placeholder="Password">
            </div>
            <div>
                <input type="submit" value="Login" name="but_submit">
            </div>
        </div>
    </form>
    </div>

  </body>
</html>
