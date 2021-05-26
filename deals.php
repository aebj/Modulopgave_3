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
    <table>
      <tr>
        <th>Deal number<hr></th>
        <th>Company name<hr></th>
        <th>Campany contact<hr></th>
        <th>Managed By<hr></th>
        <th>Stage<hr></th>
        <th>Priority<hr></th>
        <th>Expected due date<hr></th>
        <th>Deadline<hr></th>
      </tr>
      <?php deals_data() ?>
  </body>
</html>

<label for="type_id">Type:</label><br>
<select id="type_id" name="type_id">
  <?php foreach(select_type() as $type) { ?>
  <option value="<?php echo $type['id']; ?>">
    <?php echo $type['type']; ?>
  </option>
  <?php } ?>
</select><br><br>

<label for="priority">Priority:</label><br>
<select id="priority" name="priority">
  <?php foreach(select_type() as $type) { ?>
  <option value="<?php echo $priority['id']; ?>">
    <?php echo $priority['priority']; ?>
  </option>
  <?php } ?>
</select><br><br>


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
