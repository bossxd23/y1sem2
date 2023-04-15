<?php 
session_start();

    include("car_connection.php");
    include("car_function.php");   

    $user_data = check_login($con);


?>


<!DOCTYPE html>
<html>
  <head>
    <title>Car Rental Services</title>
    <link href="try.css" rel="stylesheet">
    <style>
      .container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
      }
      .car {
        margin: 10px;
        width: 300px;
        height: 200px;
        border: 3px solid white;
        border-radius: 5px;
        box-shadow: 0 5px 5px rgba(0, 0, 0, 0.5)

      }

      .car img {
        width: 300px;
        height: 200px;
        object-fit: cover;
      }

      .car h2{
        font-size: 20px;
        margin-top: 10px;
        margin-bottom: 10px;
        color: white;
        align-content: center;
      }
    </style>
  </head>
  <body>
    <nav>
      <ul>
        <li><a href="new-reservation.php">New Reservation</a></li>
        <li><a href="update-reservation.php">Update Reservation</a></li>
        <li><a href="delete-reservation.php">Cancel Reservation</a></li>
      </ul>
      <div class="Logoutt">
        <a href="car_logout.php">Logout</a>
      </div>
    </nav>
    
    <h1>Luxurious Cars</h1>
    <div class="car-container">
      <div class="car">
        <img src="Rolls Royce Phantom (Blue).png">
        <h2>Rolls Royce Phantom (Blue)</h2>
      </div>
      <div class="car">
        <img src="Bentley Continental Flying Spur (White).jpg" alt="Luxury car 2">
      </div>
      <div class="car">
        <img src="Mercedes Benz CLS 350 (Silver).jpg" alt="Luxury car 3">
      </div>
      <div class="car">
        <img src="Jaguar S Type (Champagne).jpg" alt="Luxury car 4">
      </div>
    </div>

    <h1>Sports Cars</h1>
    <div class="car-container">
      <div class="car">
        <img src="Ferrari F430 Scuderia (Red).jpg" alt="Rolls Royce Phantom">
      </div>
      <div class="car">
        <img src="Lamborghini Murcielago LP640 (Matte Black).jpg" alt="Sports car 2">
      </div>
      <div class="car">
        <img src="Porsche Boxster (White).jpg" alt="Sports car 3">
      </div>
      <div class="car">
        <img src="Lexus SC430 (Black).jpg" alt="Sports car 4">
      </div>
    </div>


    <h1>Classic Cars</h1>
    <div class="car-container">
      <div class="car">
        <img src="Jaguar MK 2 (White).jpg" alt="Rolls Royce Phantom">
      </div>
      <div class="car">
        <img src="Rolls Royce Silver Spirit Limousine (Georgian Silver).jpg" alt="Sports car 2">
      </div>
      <div class="car">
        <img src="MG TD (Red).jpg" alt="Sports car 3">
      </div>
    </div>
    <br>
  </body>
</html>




