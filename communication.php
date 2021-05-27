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
        <form class="insert" action="insert.php" method="post">
          <input class="input_text" type="text" name="message" value="">
        </form>
          <button class="submit_button" type="submit" name="message_button">Send</button>
    </table>
  </body>
</html>
