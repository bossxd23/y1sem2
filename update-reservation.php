<?php
include("car_connection.php");
?>

if(isset($_POST('update')))

  $hostname = "localhost"
  $username = ""
  $password = ""
  $databaseName = "name_db"

$connect
<!DOCTYPE html>
<html>
  <head>
    <title>Update Reservation</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0>
          
  </head>
  <body>
      <form action="php_update_data_from_mysql_database_table.php">
          Username: <input type="text" name="username"><br><br>
          New booking time: <input type="text" name="updatebooking"><br><br>
          <input type="submit" name="updating" value="Update Data">
        
    </form>
    
 </html>
