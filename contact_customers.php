<?php

include('template/header.php');
include('functions.php');

?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/contacts.css">
    <title>Kunder</title>
  </head>
  <body>

    <a href="contact_customers.php"><button type="button" name="button">Customers</button></a>
    <a href="contact_employees.php"><button type="button" name="button">Employees</button></a>
    <table>
      <tr>
        <th>Virksomhed</th>
        <th>CVR number</th>
        <th>Adresse</th>
        <th>Postnummer</th>
        <th>By</th>
        <th>Fornavn</th>
        <th>Efternavn</th>
        <th>Email</th>
        <th>Telefonnummer</th>
      </tr>
      <?php customer_data() ?>

  </body>
</html>
<!--SELECT costumers.company_name, costumers.cvr_no, costumers.costumer_address, zip_codes.zip_code, zip_codes.city, costumer_contacts.costumer_contact_first_name, costumer_contacts.costumer_contact_last_name, costumer_contacts.costumer_contact_email, costumer_contacts.costumer_contact_phone_no
FROM costumers
JOIN deals_costumers_employees_costumer_contacts
ON deals_costumers_employees_costumer_contacts.costumers_id = costumers.id
JOIN costumer_contacts
ON costumer_contacts.id = deals_costumers_employees_costumer_contacts.costumer_contacts_id
JOIN zip_codes
ON costumers.zip_code = zip_codes.zip_code
ORDER BY costumers.company_name
