<?php

include('template/header.php');
include('functions.php');

?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Contacts</title>
  </head>
  <body>

    <table>
      <tr>
        <th>Company name</th>
        <th>CVR number</th>
        <th>Address</th>
        <th>Zip code</th>
        <th>City</th>
        <th>First name</th>
        <th>Last name</th>
        <th>Email</th>
        <th>Phone number</th>
      </tr>
      <?php customer_data() ?>

  </body>
</html>
