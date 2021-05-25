<?php

include('template/header.php');
include('functions.php');

?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <table>
      <tr>
        <th>Deal number</th>
        <th>Company name</th>
        <th>Campany contact</th>
        <th>Managed By</th>
        <th>Stage</th>
        <label for="type_id">Type:</label><br>
        <select id="type_id" name="type_id">
          <?php foreach(select_type() as $type) { ?>
          <option value="<?php echo $type['id']; ?>">
            <?php echo $type['type']; ?>
          </option>
          <?php } ?>
        </select><br><br>

        <th>Priority</th>
        <label for="priority">Priority:</label><br>
        <select id="priority" name="priority">
          <?php foreach(select_type() as $type) { ?>
          <option value="<?php echo $priority['id']; ?>">
            <?php echo $priority['priority']; ?>
          </option>
          <?php } ?>
        </select><br><br>
        <th>Expected due date</th>
        <th>Deadline</th>
        <th></th>
        <th>Phone number</th>
      </tr>
      <?php deals_data() ?>
  </body>
</html>
