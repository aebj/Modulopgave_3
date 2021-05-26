<?php

include('template/header.php');
include('functions.php');

?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/contact.css">
    <title>Kunder</title>
  </head>
  <body>

    <a class=button href="contact_customers.php"><button type="button" name="button">Kunder</button></a>
    <a class=button href="contact_employees.php"><button type="button" name="button">Medarbejdere</button></a>
    <table>
      <tr>
        <th>Virksomhed<hr></th>
        <th>CVR-nummer<hr></th>
        <th>Adresse<hr></th>
        <th>Postnummer<hr></th>
        <th>By<hr></th>
        <th>Fornavn<hr></th>
        <th>Efternavn<hr></th>
        <th>Email<hr></th>
        <th>Telefonnummer<hr></th>
      </tr>
      <?php customer_data() ?>
    </table>
  </body>
</html>

<!-- JOIN
SELECT costumers.company_name, costumers.cvr_no, costumers.costumer_address, zip_codes.zip_code, zip_codes.city, costumer_contacts.costumer_contact_first_name, costumer_contacts.costumer_contact_last_name, costumer_contacts.costumer_contact_email, costumer_contacts.costumer_contact_phone_no
FROM costumers
JOIN deals_costumers_employees_costumer_contacts
ON deals_costumers_employees_costumer_contacts.costumers_id = costumers.id
JOIN costumer_contacts
ON costumer_contacts.id = deals_costumers_employees_costumer_contacts.costumer_contacts_id
JOIN zip_codes
ON costumers.zip_code = zip_codes.zip_code
ORDER BY costumers.company_name
