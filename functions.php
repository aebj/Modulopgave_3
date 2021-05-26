<?php
// Definerer konstanter med database forbindelse info
define('DBHOST', 'localhost');
define('DBUSER', 'root');
define('DBPASS', 'root');
define('DBNAME', 'aros_and_son');

$conn = null;

global $conn;

// Opretter den faktiske database forbindelse
$conn = mysqli_connect(DBHOST, DBUSER, DBPASS, DBNAME);

// Tester om der er fejl i databaseforbindelse (Stopper eksekvering)
if(!$conn) {
  die("Connection failed" . mysqli_error($conn)); //String skal skrives på dansk
}


function employee_data() {
  global $conn;
  $sql = "SELECT * FROM employees_overview";
  $result = mysqli_query($conn, $sql);
  if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
      echo "<tr>
      <td>". $row["employee_first_name"] ."</td>
      <td>". $row["employee_last_name"] ."</td>
      <td>". $row["role"] ."</td>
      <td>". $row["employee_email"] ."</td>
      <td>". $row["employee_phone_no"] ."</td>
      <td>". $row["employee_address"] ."</td>
      <td>". $row["zip_code"] ."</td>
      <td>". $row["city"] ."</td>
      </tr>";
    }
    echo "</table>";
  }
  else {
    echo "0 result";
  }
}

function customer_data() {
  global $conn;
  $sql = "SELECT * FROM costumers_overview";
  $result = mysqli_query($conn, $sql);
  if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
      echo "<tr>
      <td>". $row["company_name"] ."</td>
      <td>". $row["cvr_no"] ."</td>
      <td>". $row["costumer_address"] ."</td>
      <td>". $row["zip_code"] ."</td>
      <td>". $row["city"] ."</td>
      <td>". $row["costumer_contact_first_name"] ."</td>
      <td>". $row["costumer_contact_last_name"] ."</td>
      <td>". $row["costumer_contact_email"] ."</td>
      <td>". $row["costumer_contact_phone_no"] ."</td>
      </tr>";
    }
    echo "</table>";
  }
  else {
    echo "0 result";
  }
}

function deals_data() {
  global $conn;
  $sql = "SELECT * FROM deals_overview";

  $result = mysqli_query($conn, $sql);
  if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
      echo "<tr>
      <td>". $row["id"] ."</td>
      <td>". $row["company_name"] ."</td>
      <td>". $row["costumer_contact_first_name"] . " " . $row["costumer_contact_last_name"] ."</td>
      <td>". $row["employee_first_name"] . " " . $row["employee_last_name"] ."</td>
      <td>". '<select>
      <option value=>To do</option>
      <option value=>Doing</option>
      <option value=>Done</option>
      </select>' ."</td>
      <td>". $row["priority"] ."</td>
      <td>". $row["expected_due_date"] ."</td>
      <td>". $row["deadline"] ."</td>
      </tr>";
    }
    echo "</table>";
  }
  else {
    echo "0 result";
  }
}

function stage_dropdown() {
  global $conn;
  $sql = "SELECT id, stage FROM stages";
  $result = mysqli_query($conn, $sql);
  $stages = [];

  if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
      $stages[] = $row;
    }
  }
  return $stages;
}

function message_data() {
  global $conn;
  $sql = "SELECT message, created_at FROM messages_created_at";

  $result = mysqli_query($conn, $sql);
  if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
      echo "<tr>
      <td>[". $row["created_at"] . "] " . $row["message"] ."</td>
      </tr>";
    }
    echo "</table>";
  }
  else {
    echo "0 result";
  }
}

function insert_message() {
  global $conn;
  if (isset($_POST['message_button'])) {
    if (!empty($_POST['message'])) {

      $message = $_POST['message'];

      $sql_query = "INSERT INTO `messages_created_at` (`id`, `message`, `created_at`) VALUES (NULL, '$message', CURRENT_TIMESTAMP)";
      $run = mysqli_query($conn, $sql_query) or die();
    }
    else {
      echo "Kan ikke være tom";
    }
  }
}

// Debug funktion (sindssygt god at have i alle projekter)
// En funktion til at hente data fra en variable og opstiller det pænt
function debug($data) {
  echo '<pre>';
  print_r($data);
  echo '</pre>';
}



// EXTRA CODE

/* possible join selecter for "opslagstavle"
SELECT messages_created_at.message, messages_created_at.created_at, employees.employee_first_name, employees.employee_last_name
FROM messages_created_at
JOIN communications_messages_created_at_id
ON messages_created_at.id = communications_messages_created_at_id.messages_created_at_id
JOIN employees
ON employees.id = communications_messages_created_at_id.communications_id


/*
function employee_data() {
  global $conn;
  $sql = "SELECT first_name, last_name, email, phone_no, address, zip_code FROM employees";
  $result = mysqli_query($conn, $sql);
  $employee_data = array();
  if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
      $employee_data[] = $row;
    }
  }

    foreach ($employee_data as $employee_information) {
      echo $employee_information['first_name']." ".$employee_information['last_name']." ".$employee_information['email']." ".$employee_information['phone_no']." ".$employee_information['address']." ".$employee_information['zip_code']." "."<hr>";
  } */
