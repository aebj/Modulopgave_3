<?php


include('template/header.php');
include('functions.php');


//$sql="SELECT * FROM `messages created_at`";
//$query = mysqli_query($conn,$sql);

?>


<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/communication.css">
    <title>Beskeder</title>
  </head>
  <body>
    <table>
      <tr>
        <th>Beskeder</th>
        </tr>
        <?php message_data();  ?>
        <form class="" action="insert.php" method="post">
          <input type="text" name="message" value="">
          <button type="submit" name="message_button">Send</button>
      </form>
    </table>
  </body>
</html>
