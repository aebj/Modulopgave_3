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

    <a href="contact_customers.php"><button type="button" name="button">Customers</button></a>
    <a href="contact_employees.php"><button type="button" name="button">Employees</button></a>
    <table>
      <tr>
        <th>First name</th>
        <th>Last name</th>
        <th>Email</th>
        <th>Phone number</th>
        <th>Address</th>
        <th>Zip code</th>
      </tr>
      <?php employee_data() ?>

  </body>
</html>
