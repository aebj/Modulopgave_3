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

      <div class="centralised">
      <div class="chathistory"></div>
      <div class="chatbox">

          <form action="" method="post">

              <textarea class="textarea" id="message" name="message"></textarea>

        </forum>

    </div>
    </div>

    <input type="text" name="note" value="">
    <button type="submit">Send</button>
  </body>
</html>
