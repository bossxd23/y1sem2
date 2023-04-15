-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Apr 02, 2023 at 05:09 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coursework database`
--

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `Type` varchar(30) NOT NULL,
  `Model` varchar(11) NOT NULL,
  `Colour` varchar(11) NOT NULL,
  `Car_ID` varchar(11) NOT NULL,
  `Rent_per_day` int(11) NOT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`Type`, `Model`, `Colour`, `Car_ID`, `Rent_per_day`, `Status`) VALUES
('Classics Car', 'Jaguar MK 2', 'White', 'CJM2023', 2200, 1),
('Classics Car', 'MG TD ', 'Red', 'CMG2023', 2500, 1),
('Classics Car', 'Rolls Royce', 'Georgian Si', 'CRR2023', 3200, 1),
('Luxurious Car', 'Bentley Con', 'White', 'LBC2023', 4800, 1),
('Luxurious Car', 'Jaguar S Ty', 'Champagne', 'LJS2023', 1350, 1),
('Luxurious Car', 'Mercedes Be', 'Silver', 'LMB2023', 1350, 1),
('Luxurious Car', 'Rolls Royce', 'Blue', 'LRR2023', 9800, 1),
('Sports Car', 'Ferrari F43', 'Red', 'SFF2023', 6000, 1),
('Sports Car', 'Lamborghini', 'Matte Black', 'SLM2023', 7000, 1),
('Sports Car', 'Lexus SC430', 'Black', 'SLS2023', 1600, 1),
('Sports Car', 'Porsche Box', 'White', 'SPB2023', 2800, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE `customer_details` (
  `First_Name` varchar(255) DEFAULT NULL,
  `Last_Name` varchar(255) DEFAULT NULL,
  `Phone_No` varchar(30) DEFAULT NULL,
  `Customer_ID` varchar(30) NOT NULL,
  `Home_Address` varchar(255) DEFAULT NULL,
  `Email_ID` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_details`
--

CREATE TABLE `employee_details` (
  `Username` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Employee_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_details`
--

INSERT INTO `employee_details` (`Username`, `Password`, `Employee_ID`) VALUES
('Chang', '123', '');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `Entry_Date` int(11) NOT NULL,
  `Start_Date` int(11) NOT NULL,
  `End_Date` int(11) NOT NULL,
  `Total_Days` int(11) NOT NULL,
  `Total_Cost` int(11) NOT NULL,
  `Reservation_No` int(11) NOT NULL,
  `Customer_ID` int(11) NOT NULL,
  `Employee_ID` int(11) NOT NULL,
  `Car_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`Car_ID`);

--
-- Indexes for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `employee_details`
--
ALTER TABLE `employee_details`
  ADD PRIMARY KEY (`Employee_ID`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`Reservation_No`),
  ADD KEY `Customer_ID` (`Customer_ID`),
  ADD KEY `Employee_ID` (`Employee_ID`),
  ADD KEY `Car_ID` (`Car_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
