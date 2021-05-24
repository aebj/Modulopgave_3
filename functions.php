<?php

// Variablen er per default sat til null
// Null er et tomt opjekt (den skal eksiterer for at få adgang til de funktioner som har brug for den)
// Derfor skal den defineres inden
$conn = null;

// Funktion til at forbinde databasen
function connect() {
  // Sikre mig at variablen er den global på linje 3.
  // Funktioner er lukkede og lokale - derfor inkluderer "global"
  //variablen på et lokalt plan inden i den lokale funktion
  global $conn;

  // Opretter den faktiske database forbindelse
  $conn = mysqli_connect(DBHOST, DBUSER, DBPASS);

  // Tester om der er fejl i databaseforbindelse (Stopper eksekvering)
  if(!$conn) {
    die(mysqli_error($conn));
  }

  //Vælge den database vi gerne vil bruge
  mysqli_select_db($conn, DBNAME);
  }

  
