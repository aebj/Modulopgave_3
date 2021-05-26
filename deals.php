<?php

include('template/header.php');
include('functions.php');

?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/deals.css">
    <title>Aftaler</title>
  </head>
  <body>
    <table class=deals_table>
      <tr>
        <th>Aftaler<hr></th>
        <th>Virksomhed<hr></th>
        <th>Kontakt person<hr></th>
        <th>Administreret af<hr></th>
        <th>Fremskridt<hr></th>
        <th>Prioritet<hr></th>
        <th>Forventet forfaldsdag<hr></th>
        <th>Deadline<hr></th>
      </tr>
      <?php deals_data() ?>
    </table>
  </body>
</html>


<!-- JOIN til deals
SELECT deals.id, costumers.company_name, costumer_contacts.costumer_contact_first_name, costumer_contacts.costumer_contact_last_name, employees.employee_first_name, employees.employee_last_name, stages.stage, proritys.priority, deals.expected_due_date, deals.deadline
FROM deals
JOIN deals_costumers_employees_costumer_contacts
ON deals.id = deals_costumers_employees_costumer_contacts.deals_id
JOIN costumers
ON deals_costumers_employees_costumer_contacts.costumers_id = costumers.id
JOIN costumer_contacts
ON deals_costumers_employees_costumer_contacts.costumer_contacts_id = costumer_contacts.id
JOIN employees
ON deals_costumers_employees_costumer_contacts.employees_id = employees.id
JOIN deals_stages_prioritys
ON deals.id = deals_stages_prioritys.deals_id
JOIN stages
ON deals_stages_prioritys.stage_id = stages.id
JOIN proritys
ON deals_stages_prioritys.priority_id = proritys.id
ORDER BY deals.id*/
