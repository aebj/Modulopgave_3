<?php

include('template/header.php');
include('functions.php');

?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/contact.css">
    <title>Medarbejdere</title>
  </head>
  <body>

    <a class=button href="contact_customers.php"><button type="button" name="button">Customers</button></a>
    <a class=button href="contact_employees.php"><button type="button" name="button">Employees</button></a>
    <table>
      <tr>
        <th>Fornavn<hr></th>
        <th>Efternavn<hr></th>
        <th>Rolle<hr></th>
        <th>Email<hr></th>
        <th>Telefonnummer<hr></th>
        <th>Adresse<hr></th>
        <th>Postnummer<hr></th>
        <th>By<hr></th>
      </tr>
      <?php employee_data() ?>
    </table>
  </body>
</html>
<!--SELECT employees.employee_first_name, employees.employee_last_name, roles.role, employees.employee_email, employees.employee_phone_no, employees.employee_address, zip_codes.zip_code, zip_codes.city
FROM employees
JOIN employees_roles
ON employees.id = employees_roles.employee_id
JOIN roles
ON roles.id = employees_roles.role_id
JOIN zip_codes
ON employees.zip_code = zip_codes.zip_code
ORDER BY employees.employee_first_name
