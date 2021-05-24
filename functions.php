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
  $sql = "SELECT employees.first_name, employees.last_name, employees.email, employees.phone_no, employees.address, zip_codes.zip_code, zip_codes.city
  FROM employees
  LEFT JOIN zip_codes
  ON employees.zip_code = zip_codes.zip_code
  ORDER BY employees.first_name";
  $result = mysqli_query($conn, $sql);
  if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
      echo "<tr>
      <td>". $row["first_name"] ."</td>
      <td>". $row["last_name"] ."</td>
      <td>". $row["email"] ."</td>
      <td>". $row["phone_no"] ."</td>
      <td>". $row["address"] ."</td>
      <td>". $row["zip_code"] ."</td>
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
  $sql = "SELECT costumers.company_name, costumers.cvr_no, costumers.address, zip_codes.zip_code, zip_codes.city, costumer_contacts.first_name, costumer_contacts.last_name, costumer_contacts.email, costumer_contacts.phone_no
  FROM costumers
  JOIN zip_codes
  ON zip_codes.zip_code = costumers.zip_code
  JOIN deals_costumers_employees_costumer_contacts
  ON costumers.id = deals_costumers_employees_costumer_contacts.costumers_id
  JOIN costumer_contacts
  ON costumer_contacts.id = deals_costumers_employees_costumer_contacts.costumer_contacts_id
  ORDER BY costumers.company_name";
  $result = mysqli_query($conn, $sql);
  if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
      echo "<tr>
      <td>". $row["company_name"] ."</td>
      <td>". $row["cvr_no"] ."</td>
      <td>". $row["address"] ."</td>
      <td>". $row["zip_code"] ."</td>
      <td>". $row["city"] ."</td>
      <td>". $row["first_name"] ."</td>
      <td>". $row["last_name"] ."</td>
      <td>". $row["email"] ."</td>
      <td>". $row["phone_no"] ."</td>
      </tr>";
    }
    echo "</table>";
  }
  else {
    echo "0 result";
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
