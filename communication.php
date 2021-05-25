<?php


include('template/header.php');
include('functions.php');


//$sql="SELECT * FROM `messages created_at`";
//$query = mysqli_query($conn,$sql);

?>

<link rel="stylesheet" href="css/communication.css">

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>communication</title>
  </head>
  <body>

    <table>
      <tr>
        <th>Opslagstavle</th>
      </tr>
      <?php message_data();  ?>
    <form class="" action="insert.php" method="post">
      <label for=""></label><input type="text" name="message" value=""><br>
      <button type="submit" name="message_button">Send</button>
    </form>

  </body>
</html>
