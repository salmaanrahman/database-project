-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2024 at 05:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wms`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `all_workers`
-- (See below for the actual view)
--
CREATE TABLE `all_workers` (
`TableName` varchar(11)
,`Id` int(11)
,`Name` varchar(50)
,`Address` varchar(100)
,`Phone` varchar(15)
);

-- --------------------------------------------------------

--
-- Table structure for table `audit_log`
--

CREATE TABLE `audit_log` (
  `LogID` int(11) NOT NULL,
  `TableName` varchar(50) DEFAULT NULL,
  `OperationType` varchar(10) DEFAULT NULL,
  `RecordID` int(11) DEFAULT NULL,
  `ChangedData` varchar(255) DEFAULT NULL,
  `OperationTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carpenter`
--

CREATE TABLE `carpenter` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carpenter`
--

INSERT INTO `carpenter` (`Id`, `Name`, `Address`, `Phone`) VALUES
(1, 'Rahim Uddin', 'Dhaka, Mirpur', '01713000001'),
(2, 'Karim Ali', 'Dhaka, Dhanmondi', '01713000002'),
(3, 'Alamgir Hossain', 'Chattogram, Agrabad', '01813000003'),
(4, 'Salam Sheikh', 'Sylhet, Zindabazar', '01913000004'),
(5, 'Jalal Uddin', 'Rajshahi, Shaheb Bazar', '01713000005'),
(6, 'Hasan Ali', 'Dhaka, Banani', '01813000006'),
(7, 'Aslam Mia', 'Khulna, Khalishpur', '01913000007'),
(8, 'Shahidul Islam', 'Barisal, Nathullabad', '01713000008'),
(9, 'Mokbul Hossain', 'Rangpur, Guptapara', '01813000009'),
(10, 'Nazrul Islam', 'Comilla, Kandirpar', '01913000010'),
(11, 'Bashir Uddin', 'Dhaka, Gulshan', '01713000011'),
(12, 'Farid Mia', 'Sylhet, Amberkhana', '01813000012'),
(13, 'Mizanur Rahman', 'Chattogram, Patenga', '01913000013'),
(14, 'Nurul Alam', 'Khulna, Sonadanga', '01713000014'),
(15, 'Shafiqul Islam', 'Rajshahi, Talaimari', '01813000015'),
(16, 'Rafiqul Hasan', 'Dhaka, Mohammadpur', '01913000016'),
(17, 'Rubel Hossain', 'Barisal, Rupatoli', '01713000017'),
(18, 'Mintu Mia', 'Rangpur, Mahigonj', '01813000018'),
(19, 'Mamun Mia', 'Comilla, Tomchom Bridge', '01913000019'),
(20, 'Shahid Hossain', 'Dhaka, Uttara', '01713000020'),
(21, 'Anwar Hossain', 'Chattogram, New Market', '01813000021'),
(22, 'Shahab Uddin', 'Sylhet, Lamabazar', '01913000022'),
(23, 'Jalil Mia', 'Khulna, Boyra', '01713000023'),
(24, 'Rashidul Islam', 'Rajshahi, Binodpur', '01813000024'),
(25, 'Sirajul Islam', 'Dhaka, Farmgate', '01913000025'),
(26, 'Mohsin Sheikh', 'Barisal, Sagordi', '01713000026'),
(27, 'Kamruzzaman', 'Rangpur, Modern Mor', '01813000027'),
(28, 'Habibur Rahman', 'Comilla, Rajganj', '01913000028'),
(29, 'Aminul Islam', 'Dhaka, Mohakhali', '01713000029'),
(30, 'Mokhlesur Rahman', 'Chattogram, Station Road', '01813000030'),
(31, 'Shamsul Alam', 'Sylhet, Subidbazar', '01913000031'),
(32, 'Abdul Hamid', 'Khulna, Gallamari', '01713000032'),
(33, 'Sattar Mia', 'Rajshahi, Bhadra', '01813000033'),
(34, 'Faisal Ahmed', 'Dhaka, Badda', '01913000034'),
(35, 'Abul Hossain', 'Barisal, Charmonai', '01713000035'),
(36, 'Liton Mia', 'Rangpur, Katchari Bazar', '01813000036'),
(37, 'Shafiqul Alam', 'Comilla, Court Bazar', '01913000037'),
(38, 'Nasir Uddin', 'Dhaka, Rampura', '01713000038'),
(39, 'Rony Hossain', 'Chattogram, Kotwali', '01813000039'),
(40, 'Hafizur Rahman', 'Sylhet, Bandarbazar', '01913000040'),
(41, 'Anisur Rahman', 'Khulna, Mujgunni', '01713000041'),
(42, 'Mokbul Islam', 'Rajshahi, Padma', '01813000042'),
(43, 'Salim Hossain', 'Dhaka, Shyamoli', '01913000043'),
(44, 'Rafik Ullah', 'Barisal, College Road', '01713000044'),
(45, 'Sujon Ahmed', 'Rangpur, Munshipara', '01813000045'),
(46, 'Ibrahim Hossain', 'Comilla, Kotbari', '01913000046'),
(47, 'Rafiq Mia', 'Dhaka, Mirpur-1', '01713000047'),
(48, 'Foysal Ahmed', 'Chattogram, Nasirabad', '01813000048'),
(49, 'Jamal Uddin', 'Sylhet, Rikabibazar', '01913000049'),
(50, 'Shahidul Islam', 'Khulna, Notun Rasta', '01713000050');

--
-- Triggers `carpenter`
--
DELIMITER $$
CREATE TRIGGER `carpenter_after_insert` AFTER INSERT ON `carpenter` FOR EACH ROW INSERT INTO audit_log (TableName, OperationType, RecordID, ChangedData)
VALUES (
    'carpenter', 
    'INSERT', 
    NEW.Id, 
    CONCAT('Name=', NEW.Name, ', Address=', NEW.Address, ', Phone=', NEW.Phone)
)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `carpenter_after_update` AFTER UPDATE ON `carpenter` FOR EACH ROW INSERT INTO audit_log (TableName, OperationType, RecordID, ChangedData)
VALUES (
    'carpenter', 
    'UPDATE', 
    NEW.Id, 
    CONCAT('Name=', NEW.Name, ', Address=', NEW.Address, ', Phone=', NEW.Phone)
)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `construction_worker`
--

CREATE TABLE `construction_worker` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `construction_worker`
--

INSERT INTO `construction_worker` (`Id`, `Name`, `Address`, `Phone`) VALUES
(1, 'Rahim Uddin', 'Dhaka, Mirpur', '01713000001'),
(2, 'Karim Ali', 'Dhaka, Dhanmondi', '01713000002'),
(3, 'Alamgir Hossain', 'Chattogram, Agrabad', '01813000003'),
(4, 'Salam Sheikh', 'Sylhet, Zindabazar', '01913000004'),
(5, 'Jalal Uddin', 'Rajshahi, Shaheb Bazar', '01713000005'),
(6, 'Hasan Ali', 'Dhaka, Banani', '01813000006'),
(7, 'Aslam Mia', 'Khulna, Khalishpur', '01913000007'),
(8, 'Shahidul Islam', 'Barisal, Nathullabad', '01713000008'),
(9, 'Mokbul Hossain', 'Rangpur, Guptapara', '01813000009'),
(10, 'Nazrul Islam', 'Comilla, Kandirpar', '01913000010'),
(11, 'Bashir Uddin', 'Dhaka, Gulshan', '01713000011'),
(12, 'Farid Mia', 'Sylhet, Amberkhana', '01813000012'),
(13, 'Mizanur Rahman', 'Chattogram, Patenga', '01913000013'),
(14, 'Nurul Alam', 'Khulna, Sonadanga', '01713000014'),
(15, 'Shafiqul Islam', 'Rajshahi, Talaimari', '01813000015'),
(16, 'Rafiqul Hasan', 'Dhaka, Mohammadpur', '01913000016'),
(17, 'Rubel Hossain', 'Barisal, Rupatoli', '01713000017'),
(18, 'Mintu Mia', 'Rangpur, Mahigonj', '01813000018'),
(19, 'Mamun Mia', 'Comilla, Tomchom Bridge', '01913000019'),
(20, 'Shahid Hossain', 'Dhaka, Uttara', '01713000020'),
(21, 'Anwar Hossain', 'Chattogram, New Market', '01813000021'),
(22, 'Shahab Uddin', 'Sylhet, Lamabazar', '01913000022'),
(23, 'Jalil Mia', 'Khulna, Boyra', '01713000023'),
(24, 'Rashidul Islam', 'Rajshahi, Binodpur', '01813000024'),
(25, 'Sirajul Islam', 'Dhaka, Farmgate', '01913000025'),
(26, 'Mohsin Sheikh', 'Barisal, Sagordi', '01713000026'),
(27, 'Kamruzzaman', 'Rangpur, Modern Mor', '01813000027'),
(28, 'Habibur Rahman', 'Comilla, Rajganj', '01913000028'),
(29, 'Aminul Islam', 'Dhaka, Mohakhali', '01713000029'),
(30, 'Mokhlesur Rahman', 'Chattogram, Station Road', '01813000030'),
(31, 'Shamsul Alam', 'Sylhet, Subidbazar', '01913000031'),
(32, 'Abdul Hamid', 'Khulna, Gallamari', '01713000032'),
(33, 'Sattar Mia', 'Rajshahi, Bhadra', '01813000033'),
(34, 'Faisal Ahmed', 'Dhaka, Badda', '01913000034'),
(35, 'Abul Hossain', 'Barisal, Charmonai', '01713000035'),
(36, 'Liton Mia', 'Rangpur, Katchari Bazar', '01813000036'),
(37, 'Shafiqul Alam', 'Comilla, Court Bazar', '01913000037'),
(38, 'Nasir Uddin', 'Dhaka, Rampura', '01713000038'),
(39, 'Rony Hossain', 'Chattogram, Kotwali', '01813000039'),
(40, 'Hafizur Rahman', 'Sylhet, Bandarbazar', '01913000040'),
(41, 'Anisur Rahman', 'Khulna, Mujgunni', '01713000041'),
(42, 'Mokbul Islam', 'Rajshahi, Padma', '01813000042'),
(43, 'Salim Hossain', 'Dhaka, Shyamoli', '01913000043'),
(44, 'Rafik Ullah', 'Barisal, College Road', '01713000044'),
(45, 'Sujon Ahmed', 'Rangpur, Munshipara', '01813000045'),
(46, 'Ibrahim Hossain', 'Comilla, Kotbari', '01913000046'),
(47, 'Rafiq Mia', 'Dhaka, Mirpur-1', '01713000047'),
(48, 'Foysal Ahmed', 'Chattogram, Nasirabad', '01813000048'),
(49, 'Jamal Uddin', 'Sylhet, Rikabibazar', '01913000049'),
(50, 'Shahidul Islam', 'Khulna, Notun Rasta', '01713000050');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_driver`
--

CREATE TABLE `delivery_driver` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_driver`
--

INSERT INTO `delivery_driver` (`Id`, `Name`, `Address`, `Phone`) VALUES
(1, 'Rahim Uddin', 'Dhaka, Mirpur', '01713000001'),
(2, 'Karim Ali', 'Dhaka, Dhanmondi', '01713000002'),
(3, 'Alamgir Hossain', 'Chattogram, Agrabad', '01813000003'),
(4, 'Salam Sheikh', 'Sylhet, Zindabazar', '01913000004'),
(5, 'Jalal Uddin', 'Rajshahi, Shaheb Bazar', '01713000005'),
(6, 'Hasan Ali', 'Dhaka, Banani', '01813000006'),
(7, 'Aslam Mia', 'Khulna, Khalishpur', '01913000007'),
(8, 'Shahidul Islam', 'Barisal, Nathullabad', '01713000008'),
(9, 'Mokbul Hossain', 'Rangpur, Guptapara', '01813000009'),
(10, 'Nazrul Islam', 'Comilla, Kandirpar', '01913000010'),
(11, 'Bashir Uddin', 'Dhaka, Gulshan', '01713000011'),
(12, 'Farid Mia', 'Sylhet, Amberkhana', '01813000012'),
(13, 'Mizanur Rahman', 'Chattogram, Patenga', '01913000013'),
(14, 'Nurul Alam', 'Khulna, Sonadanga', '01713000014'),
(15, 'Shafiqul Islam', 'Rajshahi, Talaimari', '01813000015'),
(16, 'Rafiqul Hasan', 'Dhaka, Mohammadpur', '01913000016'),
(17, 'Rubel Hossain', 'Barisal, Rupatoli', '01713000017'),
(18, 'Mintu Mia', 'Rangpur, Mahigonj', '01813000018'),
(19, 'Mamun Mia', 'Comilla, Tomchom Bridge', '01913000019'),
(20, 'Shahid Hossain', 'Dhaka, Uttara', '01713000020'),
(21, 'Anwar Hossain', 'Chattogram, New Market', '01813000021'),
(22, 'Shahab Uddin', 'Sylhet, Lamabazar', '01913000022'),
(23, 'Jalil Mia', 'Khulna, Boyra', '01713000023'),
(24, 'Rashidul Islam', 'Rajshahi, Binodpur', '01813000024'),
(25, 'Sirajul Islam', 'Dhaka, Farmgate', '01913000025'),
(26, 'Mohsin Sheikh', 'Barisal, Sagordi', '01713000026'),
(27, 'Kamruzzaman', 'Rangpur, Modern Mor', '01813000027'),
(28, 'Habibur Rahman', 'Comilla, Rajganj', '01913000028'),
(29, 'Aminul Islam', 'Dhaka, Mohakhali', '01713000029'),
(30, 'Mokhlesur Rahman', 'Chattogram, Station Road', '01813000030'),
(31, 'Shamsul Alam', 'Sylhet, Subidbazar', '01913000031'),
(32, 'Abdul Hamid', 'Khulna, Gallamari', '01713000032'),
(33, 'Sattar Mia', 'Rajshahi, Bhadra', '01813000033'),
(34, 'Faisal Ahmed', 'Dhaka, Badda', '01913000034'),
(35, 'Abul Hossain', 'Barisal, Charmonai', '01713000035'),
(36, 'Liton Mia', 'Rangpur, Katchari Bazar', '01813000036'),
(37, 'Shafiqul Alam', 'Comilla, Court Bazar', '01913000037'),
(38, 'Nasir Uddin', 'Dhaka, Rampura', '01713000038'),
(39, 'Rony Hossain', 'Chattogram, Kotwali', '01813000039'),
(40, 'Hafizur Rahman', 'Sylhet, Bandarbazar', '01913000040'),
(41, 'Anisur Rahman', 'Khulna, Mujgunni', '01713000041'),
(42, 'Mokbul Islam', 'Rajshahi, Padma', '01813000042'),
(43, 'Salim Hossain', 'Dhaka, Shyamoli', '01913000043'),
(44, 'Rafik Ullah', 'Barisal, College Road', '01713000044'),
(45, 'Sujon Ahmed', 'Rangpur, Munshipara', '01813000045'),
(46, 'Ibrahim Hossain', 'Comilla, Kotbari', '01913000046'),
(47, 'Rafiq Mia', 'Dhaka, Mirpur-1', '01713000047'),
(48, 'Foysal Ahmed', 'Chattogram, Nasirabad', '01813000048'),
(49, 'Jamal Uddin', 'Sylhet, Rikabibazar', '01913000049'),
(50, 'Shahidul Islam', 'Khulna, Notun Rasta', '01713000050');

-- --------------------------------------------------------

--
-- Table structure for table `dock_worker`
--

CREATE TABLE `dock_worker` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dock_worker`
--

INSERT INTO `dock_worker` (`Id`, `Name`, `Address`, `Phone`) VALUES
(1, 'Rahim Uddin', 'Dhaka, Mirpur', '01713000001'),
(2, 'Karim Ali', 'Dhaka, Dhanmondi', '01713000002'),
(3, 'Alamgir Hossain', 'Chattogram, Agrabad', '01813000003'),
(4, 'Salam Sheikh', 'Sylhet, Zindabazar', '01913000004'),
(5, 'Jalal Uddin', 'Rajshahi, Shaheb Bazar', '01713000005'),
(6, 'Hasan Ali', 'Dhaka, Banani', '01813000006'),
(7, 'Aslam Mia', 'Khulna, Khalishpur', '01913000007'),
(8, 'Shahidul Islam', 'Barisal, Nathullabad', '01713000008'),
(9, 'Mokbul Hossain', 'Rangpur, Guptapara', '01813000009'),
(10, 'Nazrul Islam', 'Comilla, Kandirpar', '01913000010'),
(11, 'Bashir Uddin', 'Dhaka, Gulshan', '01713000011'),
(12, 'Farid Mia', 'Sylhet, Amberkhana', '01813000012'),
(13, 'Mizanur Rahman', 'Chattogram, Patenga', '01913000013'),
(14, 'Nurul Alam', 'Khulna, Sonadanga', '01713000014'),
(15, 'Shafiqul Islam', 'Rajshahi, Talaimari', '01813000015'),
(16, 'Rafiqul Hasan', 'Dhaka, Mohammadpur', '01913000016'),
(17, 'Rubel Hossain', 'Barisal, Rupatoli', '01713000017'),
(18, 'Mintu Mia', 'Rangpur, Mahigonj', '01813000018'),
(19, 'Mamun Mia', 'Comilla, Tomchom Bridge', '01913000019'),
(20, 'Shahid Hossain', 'Dhaka, Uttara', '01713000020'),
(21, 'Anwar Hossain', 'Chattogram, New Market', '01813000021'),
(22, 'Shahab Uddin', 'Sylhet, Lamabazar', '01913000022'),
(23, 'Jalil Mia', 'Khulna, Boyra', '01713000023'),
(24, 'Rashidul Islam', 'Rajshahi, Binodpur', '01813000024'),
(25, 'Sirajul Islam', 'Dhaka, Farmgate', '01913000025'),
(26, 'Mohsin Sheikh', 'Barisal, Sagordi', '01713000026'),
(27, 'Kamruzzaman', 'Rangpur, Modern Mor', '01813000027'),
(28, 'Habibur Rahman', 'Comilla, Rajganj', '01913000028'),
(29, 'Aminul Islam', 'Dhaka, Mohakhali', '01713000029'),
(30, 'Mokhlesur Rahman', 'Chattogram, Station Road', '01813000030'),
(31, 'Shamsul Alam', 'Sylhet, Subidbazar', '01913000031'),
(32, 'Abdul Hamid', 'Khulna, Gallamari', '01713000032'),
(33, 'Sattar Mia', 'Rajshahi, Bhadra', '01813000033'),
(34, 'Faisal Ahmed', 'Dhaka, Badda', '01913000034'),
(35, 'Abul Hossain', 'Barisal, Charmonai', '01713000035'),
(36, 'Liton Mia', 'Rangpur, Katchari Bazar', '01813000036'),
(37, 'Shafiqul Alam', 'Comilla, Court Bazar', '01913000037'),
(38, 'Nasir Uddin', 'Dhaka, Rampura', '01713000038'),
(39, 'Rony Hossain', 'Chattogram, Kotwali', '01813000039'),
(40, 'Hafizur Rahman', 'Sylhet, Bandarbazar', '01913000040'),
(41, 'Anisur Rahman', 'Khulna, Mujgunni', '01713000041'),
(42, 'Mokbul Islam', 'Rajshahi, Padma', '01813000042'),
(43, 'Salim Hossain', 'Dhaka, Shyamoli', '01913000043'),
(44, 'Rafik Ullah', 'Barisal, College Road', '01713000044'),
(45, 'Sujon Ahmed', 'Rangpur, Munshipara', '01813000045'),
(46, 'Ibrahim Hossain', 'Comilla, Kotbari', '01913000046'),
(47, 'Rafiq Mia', 'Dhaka, Mirpur-1', '01713000047'),
(48, 'Foysal Ahmed', 'Chattogram, Nasirabad', '01813000048'),
(49, 'Jamal Uddin', 'Sylhet, Rikabibazar', '01913000049'),
(50, 'Shahidul Islam', 'Khulna, Notun Rasta', '01713000050');

--
-- Triggers `dock_worker`
--
DELIMITER $$
CREATE TRIGGER `dock_worker_after_insert` AFTER INSERT ON `dock_worker` FOR EACH ROW INSERT INTO audit_log (TableName, OperationType, RecordID, ChangedData)
VALUES (
    'Dock_Worker', 
    'INSERT', 
    NEW.Id, 
    CONCAT('Name=', NEW.Name, ', Address=', NEW.Address, ', Phone=', NEW.Phone)
)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `dock_worker_after_update` AFTER UPDATE ON `dock_worker` FOR EACH ROW INSERT INTO audit_log (TableName, OperationType, RecordID, ChangedData)
VALUES (
    'Dock_Worker', 
    'UPDATE', 
    NEW.Id, 
    CONCAT('Name=', NEW.Name, ', Address=', NEW.Address, ', Phone=', NEW.Phone)
)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `electrician`
--

CREATE TABLE `electrician` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `electrician`
--

INSERT INTO `electrician` (`Id`, `Name`, `Address`, `Phone`) VALUES
(1, 'Abdul Malek', 'Dhaka, Mirpur', '01711000001'),
(2, 'Shafiqur Rahman', 'Dhaka, Dhanmondi', '01711000002'),
(3, 'Jahirul Islam', 'Chattogram, Agrabad', '01811000003'),
(4, 'Kamal Hossain', 'Sylhet, Zindabazar', '01911000004'),
(5, 'Hasibul Hasan', 'Rajshahi, Shaheb Bazar', '01711000005'),
(6, 'Nur Alam', 'Dhaka, Banani', '01811000006'),
(7, 'Masud Rana', 'Khulna, Khalishpur', '01911000007'),
(8, 'Shahab Uddin', 'Barisal, Nathullabad', '01711000008'),
(9, 'Mominul Islam', 'Rangpur, Guptapara', '01811000009'),
(10, 'Rafiqul Hasan', 'Comilla, Kandirpar', '01911000010'),
(11, 'Bashir Mia', 'Dhaka, Gulshan', '01711000011'),
(12, 'Shahidul Islam', 'Sylhet, Amberkhana', '01811000012'),
(13, 'Arif Hossain', 'Chattogram, Patenga', '01911000013'),
(14, 'Liton Ali', 'Khulna, Sonadanga', '01711000014'),
(15, 'Alamin Sheikh', 'Rajshahi, Talaimari', '01811000015'),
(16, 'Helal Uddin', 'Dhaka, Mohammadpur', '01911000016'),
(17, 'Imran Hossain', 'Barisal, Rupatoli', '01711000017'),
(18, 'Riaz Mahmud', 'Rangpur, Mahigonj', '01811000018'),
(19, 'Shamim Mia', 'Comilla, Tomchom Bridge', '01911000019'),
(20, 'Monir Hossain', 'Dhaka, Uttara', '01711000020'),
(21, 'Naimur Rahman', 'Chattogram, New Market', '01811000021'),
(22, 'Shakil Ahmed', 'Sylhet, Lamabazar', '01911000022'),
(23, 'Sajjad Hossain', 'Khulna, Boyra', '01711000023'),
(24, 'Rahmat Ali', 'Rajshahi, Binodpur', '01811000024'),
(25, 'Mamun Mia', 'Dhaka, Farmgate', '01911000025'),
(26, 'Abul Hasan', 'Barisal, Sagordi', '01711000026'),
(27, 'Kamruzzaman', 'Rangpur, Modern Mor', '01811000027'),
(28, 'Rashidul Islam', 'Comilla, Rajganj', '01911000028'),
(29, 'Habib Khan', 'Dhaka, Mohakhali', '01711000029'),
(30, 'Shamim Sheikh', 'Chattogram, Station Road', '01811000030'),
(31, 'Saiful Islam', 'Sylhet, Subidbazar', '01911000031'),
(32, 'Siraj Uddin', 'Khulna, Gallamari', '01711000032'),
(33, 'Motin Mia', 'Rajshahi, Bhadra', '01811000033'),
(34, 'Kawsar Ali', 'Dhaka, Badda', '01911000034'),
(35, 'Nizam Uddin', 'Barisal, Charmonai', '01711000035'),
(36, 'Sohanur Rahman', 'Rangpur, Katchari Bazar', '01811000036'),
(37, 'Abul Kashem', 'Comilla, Court Bazar', '01911000037'),
(38, 'Jamal Hossain', 'Dhaka, Rampura', '01711000038'),
(39, 'Sujon Ahmed', 'Chattogram, Kotwali', '01811000039'),
(40, 'Rony Mia', 'Sylhet, Bandarbazar', '01911000040'),
(41, 'Mintu Mia', 'Khulna, Mujgunni', '01711000041'),
(42, 'Saiful Hasan', 'Rajshahi, Padma', '01811000042'),
(43, 'Kamrul Islam', 'Dhaka, Shyamoli', '01911000043'),
(44, 'Salam Hossain', 'Barisal, College Road', '01711000044'),
(45, 'Mokbul Hossain', 'Rangpur, Munshipara', '01811000045'),
(46, 'Ibrahim Mia', 'Comilla, Kotbari', '01911000046'),
(47, 'Faisal Ahmed', 'Dhaka, Mirpur-1', '01711000047'),
(48, 'Rashed Mia', 'Chattogram, Nasirabad', '01811000048'),
(49, 'Raju Ahmed', 'Sylhet, Rikabibazar', '01911000049'),
(50, 'Hafiz Uddin', 'Khulna, Notun Rasta', '01711000050');

-- --------------------------------------------------------

--
-- Table structure for table `factory_worker`
--

CREATE TABLE `factory_worker` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `factory_worker`
--

INSERT INTO `factory_worker` (`Id`, `Name`, `Address`, `Phone`) VALUES
(1, 'Abdul Karim', 'Dhaka, Mirpur', '01710000001'),
(2, 'Shahidul Islam', 'Dhaka, Dhanmondi', '01710000002'),
(3, 'Rubel Hossain', 'Chattogram, Agrabad', '01810000003'),
(4, 'Abul Khair', 'Sylhet, Zindabazar', '01910000004'),
(5, 'Hasan Ali', 'Rajshahi, Shaheb Bazar', '01710000005'),
(6, 'Nurul Islam', 'Dhaka, Banani', '01810000006'),
(7, 'Masud Rana', 'Khulna, Khalishpur', '01910000007'),
(8, 'Sujon Ahmed', 'Barisal, Nathullabad', '01710000008'),
(9, 'Kamrul Islam', 'Rangpur, Guptapara', '01810000009'),
(10, 'Abu Sayeed', 'Comilla, Kandirpar', '01910000010'),
(11, 'Shah Alam', 'Dhaka, Gulshan', '01710000011'),
(12, 'Rafiqul Islam', 'Sylhet, Amberkhana', '01810000012'),
(13, 'Saiful Islam', 'Chattogram, Patenga', '01910000013'),
(14, 'Al Amin', 'Khulna, Sonadanga', '01710000014'),
(15, 'Mohammad Ali', 'Rajshahi, Talaimari', '01810000015'),
(16, 'Abul Bashar', 'Dhaka, Mohammadpur', '01910000016'),
(17, 'Faisal Hossain', 'Barisal, Rupatoli', '01710000017'),
(18, 'Sujon Mia', 'Rangpur, Mahigonj', '01810000018'),
(19, 'Faruk Hossain', 'Comilla, Tomchom Bridge', '01910000019'),
(20, 'Shakil Ahmed', 'Dhaka, Uttara', '01710000020'),
(21, 'Ibrahim Khalil', 'Chattogram, New Market', '01810000021'),
(22, 'Mizanur Rahman', 'Sylhet, Lamabazar', '01910000022'),
(23, 'Shamim Ahmed', 'Khulna, Boyra', '01710000023'),
(24, 'Jahangir Alam', 'Rajshahi, Binodpur', '01810000024'),
(25, 'Kamruzzaman', 'Dhaka, Farmgate', '01910000025'),
(26, 'Abdus Salam', 'Barisal, Sagordi', '01710000026'),
(27, 'Helal Uddin', 'Rangpur, Modern Mor', '01810000027'),
(28, 'Nasir Uddin', 'Comilla, Rajganj', '01910000028'),
(29, 'Shahin Mia', 'Dhaka, Mohakhali', '01710000029'),
(30, 'Aminul Islam', 'Chattogram, Station Road', '01810000030'),
(31, 'Salim Mia', 'Sylhet, Subidbazar', '01910000031'),
(32, 'Shafiqul Islam', 'Khulna, Gallamari', '01710000032'),
(33, 'Motiur Rahman', 'Rajshahi, Bhadra', '01810000033'),
(34, 'Rafik Mia', 'Dhaka, Badda', '01910000034'),
(35, 'Sumon Ali', 'Barisal, Charmonai', '01710000035'),
(36, 'Siraj Uddin', 'Rangpur, Katchari Bazar', '01810000036'),
(37, 'Mukul Hossain', 'Comilla, Court Bazar', '01910000037'),
(38, 'Jalal Uddin', 'Dhaka, Rampura', '01710000038'),
(39, 'Shuvo Mia', 'Chattogram, Kotwali', '01810000039'),
(40, 'Liton Hossain', 'Sylhet, Bandarbazar', '01910000040'),
(41, 'Salam Khan', 'Khulna, Mujgunni', '01710000041'),
(42, 'Moinul Islam', 'Rajshahi, Padma', '01810000042'),
(43, 'Hafizur Rahman', 'Dhaka, Shyamoli', '01910000043'),
(44, 'Rashidul Islam', 'Barisal, College Road', '01710000044'),
(45, 'Shahin Ahmed', 'Rangpur, Munshipara', '01810000045'),
(46, 'Babul Mia', 'Comilla, Kotbari', '01910000046'),
(47, 'Rubel Mia', 'Dhaka, Mirpur-1', '01710000047'),
(48, 'Shakil Hossain', 'Chattogram, Nasirabad', '01810000048'),
(49, 'Selim Mia', 'Sylhet, Rikabibazar', '01910000049'),
(50, 'Nasir Hossain', 'Khulna, Notun Rasta', '01710000050');

-- --------------------------------------------------------

--
-- Table structure for table `farm_worker`
--

CREATE TABLE `farm_worker` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `farm_worker`
--

INSERT INTO `farm_worker` (`Id`, `Name`, `Address`, `Phone`) VALUES
(1, 'Rahim Uddin', 'Dhaka, Mirpur', '01713000001'),
(2, 'Karim Ali', 'Dhaka, Dhanmondi', '01713000002'),
(3, 'Alamgir Hossain', 'Chattogram, Agrabad', '01813000003'),
(4, 'Salam Sheikh', 'Sylhet, Zindabazar', '01913000004'),
(5, 'Jalal Uddin', 'Rajshahi, Shaheb Bazar', '01713000005'),
(6, 'Hasan Ali', 'Dhaka, Banani', '01813000006'),
(7, 'Aslam Mia', 'Khulna, Khalishpur', '01913000007'),
(8, 'Shahidul Islam', 'Barisal, Nathullabad', '01713000008'),
(9, 'Mokbul Hossain', 'Rangpur, Guptapara', '01813000009'),
(10, 'Nazrul Islam', 'Comilla, Kandirpar', '01913000010'),
(11, 'Bashir Uddin', 'Dhaka, Gulshan', '01713000011'),
(12, 'Farid Mia', 'Sylhet, Amberkhana', '01813000012'),
(13, 'Mizanur Rahman', 'Chattogram, Patenga', '01913000013'),
(14, 'Nurul Alam', 'Khulna, Sonadanga', '01713000014'),
(15, 'Shafiqul Islam', 'Rajshahi, Talaimari', '01813000015'),
(16, 'Rafiqul Hasan', 'Dhaka, Mohammadpur', '01913000016'),
(17, 'Rubel Hossain', 'Barisal, Rupatoli', '01713000017'),
(18, 'Mintu Mia', 'Rangpur, Mahigonj', '01813000018'),
(19, 'Mamun Mia', 'Comilla, Tomchom Bridge', '01913000019'),
(20, 'Shahid Hossain', 'Dhaka, Uttara', '01713000020'),
(21, 'Anwar Hossain', 'Chattogram, New Market', '01813000021'),
(22, 'Shahab Uddin', 'Sylhet, Lamabazar', '01913000022'),
(23, 'Jalil Mia', 'Khulna, Boyra', '01713000023'),
(24, 'Rashidul Islam', 'Rajshahi, Binodpur', '01813000024'),
(25, 'Sirajul Islam', 'Dhaka, Farmgate', '01913000025'),
(26, 'Mohsin Sheikh', 'Barisal, Sagordi', '01713000026'),
(27, 'Kamruzzaman', 'Rangpur, Modern Mor', '01813000027'),
(28, 'Habibur Rahman', 'Comilla, Rajganj', '01913000028'),
(29, 'Aminul Islam', 'Dhaka, Mohakhali', '01713000029'),
(30, 'Mokhlesur Rahman', 'Chattogram, Station Road', '01813000030'),
(31, 'Shamsul Alam', 'Sylhet, Subidbazar', '01913000031'),
(32, 'Abdul Hamid', 'Khulna, Gallamari', '01713000032'),
(33, 'Sattar Mia', 'Rajshahi, Bhadra', '01813000033'),
(34, 'Faisal Ahmed', 'Dhaka, Badda', '01913000034'),
(35, 'Abul Hossain', 'Barisal, Charmonai', '01713000035'),
(36, 'Liton Mia', 'Rangpur, Katchari Bazar', '01813000036'),
(37, 'Shafiqul Alam', 'Comilla, Court Bazar', '01913000037'),
(38, 'Nasir Uddin', 'Dhaka, Rampura', '01713000038'),
(39, 'Rony Hossain', 'Chattogram, Kotwali', '01813000039'),
(40, 'Hafizur Rahman', 'Sylhet, Bandarbazar', '01913000040'),
(41, 'Anisur Rahman', 'Khulna, Mujgunni', '01713000041'),
(42, 'Mokbul Islam', 'Rajshahi, Padma', '01813000042'),
(43, 'Salim Hossain', 'Dhaka, Shyamoli', '01913000043'),
(44, 'Rafik Ullah', 'Barisal, College Road', '01713000044'),
(45, 'Sujon Ahmed', 'Rangpur, Munshipara', '01813000045'),
(46, 'Ibrahim Hossain', 'Comilla, Kotbari', '01913000046'),
(47, 'Rafiq Mia', 'Dhaka, Mirpur-1', '01713000047'),
(48, 'Foysal Ahmed', 'Chattogram, Nasirabad', '01813000048'),
(49, 'Jamal Uddin', 'Sylhet, Rikabibazar', '01913000049'),
(50, 'Shahidul Islam', 'Khulna, Notun Rasta', '01713000050');

-- --------------------------------------------------------

--
-- Table structure for table `fisherman`
--

CREATE TABLE `fisherman` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fisherman`
--

INSERT INTO `fisherman` (`Id`, `Name`, `Address`, `Phone`) VALUES
(1, 'Rahim Uddin', 'Dhaka, Mirpur', '01713000001'),
(2, 'Karim Ali', 'Dhaka, Dhanmondi', '01713000002'),
(3, 'Alamgir Hossain', 'Chattogram, Agrabad', '01813000003'),
(4, 'Salam Sheikh', 'Sylhet, Zindabazar', '01913000004'),
(5, 'Jalal Uddin', 'Rajshahi, Shaheb Bazar', '01713000005'),
(6, 'Hasan Ali', 'Dhaka, Banani', '01813000006'),
(7, 'Aslam Mia', 'Khulna, Khalishpur', '01913000007'),
(8, 'Shahidul Islam', 'Barisal, Nathullabad', '01713000008'),
(9, 'Mokbul Hossain', 'Rangpur, Guptapara', '01813000009'),
(10, 'Nazrul Islam', 'Comilla, Kandirpar', '01913000010'),
(11, 'Bashir Uddin', 'Dhaka, Gulshan', '01713000011'),
(12, 'Farid Mia', 'Sylhet, Amberkhana', '01813000012'),
(13, 'Mizanur Rahman', 'Chattogram, Patenga', '01913000013'),
(14, 'Nurul Alam', 'Khulna, Sonadanga', '01713000014'),
(15, 'Shafiqul Islam', 'Rajshahi, Talaimari', '01813000015'),
(16, 'Rafiqul Hasan', 'Dhaka, Mohammadpur', '01913000016'),
(17, 'Rubel Hossain', 'Barisal, Rupatoli', '01713000017'),
(18, 'Mintu Mia', 'Rangpur, Mahigonj', '01813000018'),
(19, 'Mamun Mia', 'Comilla, Tomchom Bridge', '01913000019'),
(20, 'Shahid Hossain', 'Dhaka, Uttara', '01713000020'),
(21, 'Anwar Hossain', 'Chattogram, New Market', '01813000021'),
(22, 'Shahab Uddin', 'Sylhet, Lamabazar', '01913000022'),
(23, 'Jalil Mia', 'Khulna, Boyra', '01713000023'),
(24, 'Rashidul Islam', 'Rajshahi, Binodpur', '01813000024'),
(25, 'Sirajul Islam', 'Dhaka, Farmgate', '01913000025'),
(26, 'Mohsin Sheikh', 'Barisal, Sagordi', '01713000026'),
(27, 'Kamruzzaman', 'Rangpur, Modern Mor', '01813000027'),
(28, 'Habibur Rahman', 'Comilla, Rajganj', '01913000028'),
(29, 'Aminul Islam', 'Dhaka, Mohakhali', '01713000029'),
(30, 'Mokhlesur Rahman', 'Chattogram, Station Road', '01813000030'),
(31, 'Shamsul Alam', 'Sylhet, Subidbazar', '01913000031'),
(32, 'Abdul Hamid', 'Khulna, Gallamari', '01713000032'),
(33, 'Sattar Mia', 'Rajshahi, Bhadra', '01813000033'),
(34, 'Faisal Ahmed', 'Dhaka, Badda', '01913000034'),
(35, 'Abul Hossain', 'Barisal, Charmonai', '01713000035'),
(36, 'Liton Mia', 'Rangpur, Katchari Bazar', '01813000036'),
(37, 'Shafiqul Alam', 'Comilla, Court Bazar', '01913000037'),
(38, 'Nasir Uddin', 'Dhaka, Rampura', '01713000038'),
(39, 'Rony Hossain', 'Chattogram, Kotwali', '01813000039'),
(40, 'Hafizur Rahman', 'Sylhet, Bandarbazar', '01913000040'),
(41, 'Anisur Rahman', 'Khulna, Mujgunni', '01713000041'),
(42, 'Mokbul Islam', 'Rajshahi, Padma', '01813000042'),
(43, 'Salim Hossain', 'Dhaka, Shyamoli', '01913000043'),
(44, 'Rafik Ullah', 'Barisal, College Road', '01713000044'),
(45, 'Sujon Ahmed', 'Rangpur, Munshipara', '01813000045'),
(46, 'Ibrahim Hossain', 'Comilla, Kotbari', '01913000046'),
(47, 'Rafiq Mia', 'Dhaka, Mirpur-1', '01713000047'),
(48, 'Foysal Ahmed', 'Chattogram, Nasirabad', '01813000048'),
(49, 'Jamal Uddin', 'Sylhet, Rikabibazar', '01913000049'),
(50, 'Shahidul Islam', 'Khulna, Notun Rasta', '01713000050');

-- --------------------------------------------------------

--
-- Table structure for table `garbage_collector`
--

CREATE TABLE `garbage_collector` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `garbage_collector`
--

INSERT INTO `garbage_collector` (`Id`, `Name`, `Address`, `Phone`) VALUES
(1, 'Rahim Uddin', 'Dhaka, Mirpur', '01713000001'),
(2, 'Karim Ali', 'Dhaka, Dhanmondi', '01713000002'),
(3, 'Alamgir Hossain', 'Chattogram, Agrabad', '01813000003'),
(4, 'Salam Sheikh', 'Sylhet, Zindabazar', '01913000004'),
(5, 'Jalal Uddin', 'Rajshahi, Shaheb Bazar', '01713000005'),
(6, 'Hasan Ali', 'Dhaka, Banani', '01813000006'),
(7, 'Aslam Mia', 'Khulna, Khalishpur', '01913000007'),
(8, 'Shahidul Islam', 'Barisal, Nathullabad', '01713000008'),
(9, 'Mokbul Hossain', 'Rangpur, Guptapara', '01813000009'),
(10, 'Nazrul Islam', 'Comilla, Kandirpar', '01913000010'),
(11, 'Bashir Uddin', 'Dhaka, Gulshan', '01713000011'),
(12, 'Farid Mia', 'Sylhet, Amberkhana', '01813000012'),
(13, 'Mizanur Rahman', 'Chattogram, Patenga', '01913000013'),
(14, 'Nurul Alam', 'Khulna, Sonadanga', '01713000014'),
(15, 'Shafiqul Islam', 'Rajshahi, Talaimari', '01813000015'),
(16, 'Rafiqul Hasan', 'Dhaka, Mohammadpur', '01913000016'),
(17, 'Rubel Hossain', 'Barisal, Rupatoli', '01713000017'),
(18, 'Mintu Mia', 'Rangpur, Mahigonj', '01813000018'),
(19, 'Mamun Mia', 'Comilla, Tomchom Bridge', '01913000019'),
(20, 'Shahid Hossain', 'Dhaka, Uttara', '01713000020'),
(21, 'Anwar Hossain', 'Chattogram, New Market', '01813000021'),
(22, 'Shahab Uddin', 'Sylhet, Lamabazar', '01913000022'),
(23, 'Jalil Mia', 'Khulna, Boyra', '01713000023'),
(24, 'Rashidul Islam', 'Rajshahi, Binodpur', '01813000024'),
(25, 'Sirajul Islam', 'Dhaka, Farmgate', '01913000025'),
(26, 'Mohsin Sheikh', 'Barisal, Sagordi', '01713000026'),
(27, 'Kamruzzaman', 'Rangpur, Modern Mor', '01813000027'),
(28, 'Habibur Rahman', 'Comilla, Rajganj', '01913000028'),
(29, 'Aminul Islam', 'Dhaka, Mohakhali', '01713000029'),
(30, 'Mokhlesur Rahman', 'Chattogram, Station Road', '01813000030'),
(31, 'Shamsul Alam', 'Sylhet, Subidbazar', '01913000031'),
(32, 'Abdul Hamid', 'Khulna, Gallamari', '01713000032'),
(33, 'Sattar Mia', 'Rajshahi, Bhadra', '01813000033'),
(34, 'Faisal Ahmed', 'Dhaka, Badda', '01913000034'),
(35, 'Abul Hossain', 'Barisal, Charmonai', '01713000035'),
(36, 'Liton Mia', 'Rangpur, Katchari Bazar', '01813000036'),
(37, 'Shafiqul Alam', 'Comilla, Court Bazar', '01913000037'),
(38, 'Nasir Uddin', 'Dhaka, Rampura', '01713000038'),
(39, 'Rony Hossain', 'Chattogram, Kotwali', '01813000039'),
(40, 'Hafizur Rahman', 'Sylhet, Bandarbazar', '01913000040'),
(41, 'Anisur Rahman', 'Khulna, Mujgunni', '01713000041'),
(42, 'Mokbul Islam', 'Rajshahi, Padma', '01813000042'),
(43, 'Salim Hossain', 'Dhaka, Shyamoli', '01913000043'),
(44, 'Rafik Ullah', 'Barisal, College Road', '01713000044'),
(45, 'Sujon Ahmed', 'Rangpur, Munshipara', '01813000045'),
(46, 'Ibrahim Hossain', 'Comilla, Kotbari', '01913000046'),
(47, 'Rafiq Mia', 'Dhaka, Mirpur-1', '01713000047'),
(48, 'Foysal Ahmed', 'Chattogram, Nasirabad', '01813000048'),
(49, 'Jamal Uddin', 'Sylhet, Rikabibazar', '01913000049'),
(50, 'Shahidul Islam', 'Khulna, Notun Rasta', '01713000050');

-- --------------------------------------------------------

--
-- Table structure for table `gardener`
--

CREATE TABLE `gardener` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gardener`
--

INSERT INTO `gardener` (`Id`, `Name`, `Address`, `Phone`) VALUES
(1, 'Rahim Uddin', 'Dhaka, Mirpur', '01713000001'),
(2, 'Karim Ali', 'Dhaka, Dhanmondi', '01713000002'),
(3, 'Alamgir Hossain', 'Chattogram, Agrabad', '01813000003'),
(4, 'Salam Sheikh', 'Sylhet, Zindabazar', '01913000004'),
(5, 'Jalal Uddin', 'Rajshahi, Shaheb Bazar', '01713000005'),
(6, 'Hasan Ali', 'Dhaka, Banani', '01813000006'),
(7, 'Aslam Mia', 'Khulna, Khalishpur', '01913000007'),
(8, 'Shahidul Islam', 'Barisal, Nathullabad', '01713000008'),
(9, 'Mokbul Hossain', 'Rangpur, Guptapara', '01813000009'),
(10, 'Nazrul Islam', 'Comilla, Kandirpar', '01913000010'),
(11, 'Bashir Uddin', 'Dhaka, Gulshan', '01713000011'),
(12, 'Farid Mia', 'Sylhet, Amberkhana', '01813000012'),
(13, 'Mizanur Rahman', 'Chattogram, Patenga', '01913000013'),
(14, 'Nurul Alam', 'Khulna, Sonadanga', '01713000014'),
(15, 'Shafiqul Islam', 'Rajshahi, Talaimari', '01813000015'),
(16, 'Rafiqul Hasan', 'Dhaka, Mohammadpur', '01913000016'),
(17, 'Rubel Hossain', 'Barisal, Rupatoli', '01713000017'),
(18, 'Mintu Mia', 'Rangpur, Mahigonj', '01813000018'),
(19, 'Mamun Mia', 'Comilla, Tomchom Bridge', '01913000019'),
(20, 'Shahid Hossain', 'Dhaka, Uttara', '01713000020'),
(21, 'Anwar Hossain', 'Chattogram, New Market', '01813000021'),
(22, 'Shahab Uddin', 'Sylhet, Lamabazar', '01913000022'),
(23, 'Jalil Mia', 'Khulna, Boyra', '01713000023'),
(24, 'Rashidul Islam', 'Rajshahi, Binodpur', '01813000024'),
(25, 'Sirajul Islam', 'Dhaka, Farmgate', '01913000025'),
(26, 'Mohsin Sheikh', 'Barisal, Sagordi', '01713000026'),
(27, 'Kamruzzaman', 'Rangpur, Modern Mor', '01813000027'),
(28, 'Habibur Rahman', 'Comilla, Rajganj', '01913000028'),
(29, 'Aminul Islam', 'Dhaka, Mohakhali', '01713000029'),
(30, 'Mokhlesur Rahman', 'Chattogram, Station Road', '01813000030'),
(31, 'Shamsul Alam', 'Sylhet, Subidbazar', '01913000031'),
(32, 'Abdul Hamid', 'Khulna, Gallamari', '01713000032'),
(33, 'Sattar Mia', 'Rajshahi, Bhadra', '01813000033'),
(34, 'Faisal Ahmed', 'Dhaka, Badda', '01913000034'),
(35, 'Abul Hossain', 'Barisal, Charmonai', '01713000035'),
(36, 'Liton Mia', 'Rangpur, Katchari Bazar', '01813000036'),
(37, 'Shafiqul Alam', 'Comilla, Court Bazar', '01913000037'),
(38, 'Nasir Uddin', 'Dhaka, Rampura', '01713000038'),
(39, 'Rony Hossain', 'Chattogram, Kotwali', '01813000039'),
(40, 'Hafizur Rahman', 'Sylhet, Bandarbazar', '01913000040'),
(41, 'Anisur Rahman', 'Khulna, Mujgunni', '01713000041'),
(42, 'Mokbul Islam', 'Rajshahi, Padma', '01813000042'),
(43, 'Salim Hossain', 'Dhaka, Shyamoli', '01913000043'),
(44, 'Rafik Ullah', 'Barisal, College Road', '01713000044'),
(45, 'Sujon Ahmed', 'Rangpur, Munshipara', '01813000045'),
(46, 'Ibrahim Hossain', 'Comilla, Kotbari', '01913000046'),
(47, 'Rafiq Mia', 'Dhaka, Mirpur-1', '01713000047'),
(48, 'Foysal Ahmed', 'Chattogram, Nasirabad', '01813000048'),
(49, 'Jamal Uddin', 'Sylhet, Rikabibazar', '01913000049'),
(50, 'Shahidul Islam', 'Khulna, Notun Rasta', '01713000050');

-- --------------------------------------------------------

--
-- Table structure for table `kajerbuya`
--

CREATE TABLE `kajerbuya` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kajerbuya`
--

INSERT INTO `kajerbuya` (`Id`, `Name`, `Address`, `Phone`) VALUES
(1, 'Shirin Akter', 'Dhaka, Mirpur', '01714000001'),
(2, 'Amena Begum', 'Dhaka, Dhanmondi', '01714000002'),
(3, 'Rokeya Khatun', 'Chattogram, Agrabad', '01814000003'),
(4, 'Fatema Begum', 'Sylhet, Zindabazar', '01914000004'),
(5, 'Razia Begum', 'Rajshahi, Shaheb Bazar', '01714000005'),
(6, 'Nasima Akter', 'Dhaka, Banani', '01814000006'),
(7, 'Momena Begum', 'Khulna, Khalishpur', '01914000007'),
(8, 'Parveen Sultana', 'Barisal, Nathullabad', '01714000008'),
(9, 'Hasina Begum', 'Rangpur, Guptapara', '01814000009'),
(10, 'Aklima Begum', 'Comilla, Kandirpar', '01914000010'),
(11, 'Sabina Yasmin', 'Dhaka, Gulshan', '01714000011'),
(12, 'Kohinur Begum', 'Sylhet, Amberkhana', '01814000012'),
(13, 'Nurjahan Begum', 'Chattogram, Patenga', '01914000013'),
(14, 'Taslima Akter', 'Khulna, Sonadanga', '01714000014'),
(15, 'Shahana Begum', 'Rajshahi, Talaimari', '01814000015'),
(16, 'Laila Akter', 'Dhaka, Mohammadpur', '01914000016'),
(17, 'Rupa Khatun', 'Barisal, Rupatoli', '01714000017'),
(18, 'Jannatul Ferdous', 'Rangpur, Mahigonj', '01814000018'),
(19, 'Rabeya Khatun', 'Comilla, Tomchom Bridge', '01914000019'),
(20, 'Rahima Begum', 'Dhaka, Uttara', '01714000020'),
(21, 'Sufia Begum', 'Chattogram, New Market', '01814000021'),
(22, 'Shahida Akter', 'Sylhet, Lamabazar', '01914000022'),
(23, 'Ruksana Begum', 'Khulna, Boyra', '01714000023'),
(24, 'Shapla Akter', 'Rajshahi, Binodpur', '01814000024'),
(25, 'Nazma Begum', 'Dhaka, Farmgate', '01914000025'),
(26, 'Julekha Begum', 'Barisal, Sagordi', '01714000026'),
(27, 'Sahara Khatun', 'Rangpur, Modern Mor', '01814000027'),
(28, 'Anwara Begum', 'Comilla, Rajganj', '01914000028'),
(29, 'Rina Akter', 'Dhaka, Mohakhali', '01714000029'),
(30, 'Rehana Akter', 'Chattogram, Station Road', '01814000030'),
(31, 'Minara Begum', 'Sylhet, Subidbazar', '01914000031'),
(32, 'Chand Begum', 'Khulna, Gallamari', '01714000032'),
(33, 'Sheuli Akter', 'Rajshahi, Bhadra', '01814000033'),
(34, 'Tina Akter', 'Dhaka, Badda', '01914000034'),
(35, 'Nurun Nahar', 'Barisal, Charmonai', '01714000035'),
(36, 'Shefali Begum', 'Rangpur, Katchari Bazar', '01814000036'),
(37, 'Rahima Khatun', 'Comilla, Court Bazar', '01914000037'),
(38, 'Nargis Akter', 'Dhaka, Rampura', '01714000038'),
(39, 'Aleya Begum', 'Chattogram, Kotwali', '01814000039'),
(40, 'Nasrin Akter', 'Sylhet, Bandarbazar', '01914000040'),
(41, 'Sahida Begum', 'Khulna, Mujgunni', '01714000041'),
(42, 'Lucky Begum', 'Rajshahi, Padma', '01814000042'),
(43, 'Suraiya Begum', 'Dhaka, Shyamoli', '01914000043'),
(44, 'Firoza Begum', 'Barisal, College Road', '01714000044'),
(45, 'Sumi Akter', 'Rangpur, Munshipara', '01814000045'),
(46, 'Tahmina Akter', 'Comilla, Kotbari', '01914000046'),
(47, 'Shirin Begum', 'Dhaka, Mirpur-1', '01714000047'),
(48, 'Nazira Akter', 'Chattogram, Nasirabad', '01814000048'),
(49, 'Hosne Ara Begum', 'Sylhet, Rikabibazar', '01914000049'),
(50, 'Reshma Akter', 'Khulna, Notun Rasta', '01714000050');

--
-- Triggers `kajerbuya`
--
DELIMITER $$
CREATE TRIGGER `kajerbuya_after_insert` AFTER INSERT ON `kajerbuya` FOR EACH ROW INSERT INTO audit_log (TableName, OperationType, RecordID, ChangedData)
VALUES ('kajerbuya', 'INSERT', NEW.Id, CONCAT('Name=', NEW.Name, ', Address=', NEW.Address, ', Phone=', NEW.Phone))
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `kajerbuya_after_update` AFTER UPDATE ON `kajerbuya` FOR EACH ROW INSERT INTO audit_log (TableName, OperationType, RecordID, ChangedData)
VALUES ('kajerbuya', 'UPDATE', NEW.Id, CONCAT('Name=', NEW.Name, ', Address=', NEW.Address, ', Phone=', NEW.Phone))
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `landscaper`
--

CREATE TABLE `landscaper` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `landscaper`
--

INSERT INTO `landscaper` (`Id`, `Name`, `Address`, `Phone`) VALUES
(1, 'Rahim Uddin', 'Dhaka, Mirpur', '01713000001'),
(2, 'Karim Ali', 'Dhaka, Dhanmondi', '01713000002'),
(3, 'Alamgir Hossain', 'Chattogram, Agrabad', '01813000003'),
(4, 'Salam Sheikh', 'Sylhet, Zindabazar', '01913000004'),
(5, 'Jalal Uddin', 'Rajshahi, Shaheb Bazar', '01713000005'),
(6, 'Hasan Ali', 'Dhaka, Banani', '01813000006'),
(7, 'Aslam Mia', 'Khulna, Khalishpur', '01913000007'),
(8, 'Shahidul Islam', 'Barisal, Nathullabad', '01713000008'),
(9, 'Mokbul Hossain', 'Rangpur, Guptapara', '01813000009'),
(10, 'Nazrul Islam', 'Comilla, Kandirpar', '01913000010'),
(11, 'Bashir Uddin', 'Dhaka, Gulshan', '01713000011'),
(12, 'Farid Mia', 'Sylhet, Amberkhana', '01813000012'),
(13, 'Mizanur Rahman', 'Chattogram, Patenga', '01913000013'),
(14, 'Nurul Alam', 'Khulna, Sonadanga', '01713000014'),
(15, 'Shafiqul Islam', 'Rajshahi, Talaimari', '01813000015'),
(16, 'Rafiqul Hasan', 'Dhaka, Mohammadpur', '01913000016'),
(17, 'Rubel Hossain', 'Barisal, Rupatoli', '01713000017'),
(18, 'Mintu Mia', 'Rangpur, Mahigonj', '01813000018'),
(19, 'Mamun Mia', 'Comilla, Tomchom Bridge', '01913000019'),
(20, 'Shahid Hossain', 'Dhaka, Uttara', '01713000020'),
(21, 'Anwar Hossain', 'Chattogram, New Market', '01813000021'),
(22, 'Shahab Uddin', 'Sylhet, Lamabazar', '01913000022'),
(23, 'Jalil Mia', 'Khulna, Boyra', '01713000023'),
(24, 'Rashidul Islam', 'Rajshahi, Binodpur', '01813000024'),
(25, 'Sirajul Islam', 'Dhaka, Farmgate', '01913000025'),
(26, 'Mohsin Sheikh', 'Barisal, Sagordi', '01713000026'),
(27, 'Kamruzzaman', 'Rangpur, Modern Mor', '01813000027'),
(28, 'Habibur Rahman', 'Comilla, Rajganj', '01913000028'),
(29, 'Aminul Islam', 'Dhaka, Mohakhali', '01713000029'),
(30, 'Mokhlesur Rahman', 'Chattogram, Station Road', '01813000030'),
(31, 'Shamsul Alam', 'Sylhet, Subidbazar', '01913000031'),
(32, 'Abdul Hamid', 'Khulna, Gallamari', '01713000032'),
(33, 'Sattar Mia', 'Rajshahi, Bhadra', '01813000033'),
(34, 'Faisal Ahmed', 'Dhaka, Badda', '01913000034'),
(35, 'Abul Hossain', 'Barisal, Charmonai', '01713000035'),
(36, 'Liton Mia', 'Rangpur, Katchari Bazar', '01813000036'),
(37, 'Shafiqul Alam', 'Comilla, Court Bazar', '01913000037'),
(38, 'Nasir Uddin', 'Dhaka, Rampura', '01713000038'),
(39, 'Rony Hossain', 'Chattogram, Kotwali', '01813000039'),
(40, 'Hafizur Rahman', 'Sylhet, Bandarbazar', '01913000040'),
(41, 'Anisur Rahman', 'Khulna, Mujgunni', '01713000041'),
(42, 'Mokbul Islam', 'Rajshahi, Padma', '01813000042'),
(43, 'Salim Hossain', 'Dhaka, Shyamoli', '01913000043'),
(44, 'Rafik Ullah', 'Barisal, College Road', '01713000044'),
(45, 'Sujon Ahmed', 'Rangpur, Munshipara', '01813000045'),
(46, 'Ibrahim Hossain', 'Comilla, Kotbari', '01913000046'),
(47, 'Rafiq Mia', 'Dhaka, Mirpur-1', '01713000047'),
(48, 'Foysal Ahmed', 'Chattogram, Nasirabad', '01813000048'),
(49, 'Jamal Uddin', 'Sylhet, Rikabibazar', '01913000049'),
(50, 'Shahidul Islam', 'Khulna, Notun Rasta', '01713000050');

-- --------------------------------------------------------

--
-- Table structure for table `oil_rig_worker`
--

CREATE TABLE `oil_rig_worker` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oil_rig_worker`
--

INSERT INTO `oil_rig_worker` (`Id`, `Name`, `Address`, `Phone`) VALUES
(1, 'Rahim Uddin', 'Dhaka, Mirpur', '01713000001'),
(2, 'Karim Ali', 'Dhaka, Dhanmondi', '01713000002'),
(3, 'Alamgir Hossain', 'Chattogram, Agrabad', '01813000003'),
(4, 'Salam Sheikh', 'Sylhet, Zindabazar', '01913000004'),
(5, 'Jalal Uddin', 'Rajshahi, Shaheb Bazar', '01713000005'),
(6, 'Hasan Ali', 'Dhaka, Banani', '01813000006'),
(7, 'Aslam Mia', 'Khulna, Khalishpur', '01913000007'),
(8, 'Shahidul Islam', 'Barisal, Nathullabad', '01713000008'),
(9, 'Mokbul Hossain', 'Rangpur, Guptapara', '01813000009'),
(10, 'Nazrul Islam', 'Comilla, Kandirpar', '01913000010'),
(11, 'Bashir Uddin', 'Dhaka, Gulshan', '01713000011'),
(12, 'Farid Mia', 'Sylhet, Amberkhana', '01813000012'),
(13, 'Mizanur Rahman', 'Chattogram, Patenga', '01913000013'),
(14, 'Nurul Alam', 'Khulna, Sonadanga', '01713000014'),
(15, 'Shafiqul Islam', 'Rajshahi, Talaimari', '01813000015'),
(16, 'Rafiqul Hasan', 'Dhaka, Mohammadpur', '01913000016'),
(17, 'Rubel Hossain', 'Barisal, Rupatoli', '01713000017'),
(18, 'Mintu Mia', 'Rangpur, Mahigonj', '01813000018'),
(19, 'Mamun Mia', 'Comilla, Tomchom Bridge', '01913000019'),
(20, 'Shahid Hossain', 'Dhaka, Uttara', '01713000020'),
(21, 'Anwar Hossain', 'Chattogram, New Market', '01813000021'),
(22, 'Shahab Uddin', 'Sylhet, Lamabazar', '01913000022'),
(23, 'Jalil Mia', 'Khulna, Boyra', '01713000023'),
(24, 'Rashidul Islam', 'Rajshahi, Binodpur', '01813000024'),
(25, 'Sirajul Islam', 'Dhaka, Farmgate', '01913000025'),
(26, 'Mohsin Sheikh', 'Barisal, Sagordi', '01713000026'),
(27, 'Kamruzzaman', 'Rangpur, Modern Mor', '01813000027'),
(28, 'Habibur Rahman', 'Comilla, Rajganj', '01913000028'),
(29, 'Aminul Islam', 'Dhaka, Mohakhali', '01713000029'),
(30, 'Mokhlesur Rahman', 'Chattogram, Station Road', '01813000030'),
(31, 'Shamsul Alam', 'Sylhet, Subidbazar', '01913000031'),
(32, 'Abdul Hamid', 'Khulna, Gallamari', '01713000032'),
(33, 'Sattar Mia', 'Rajshahi, Bhadra', '01813000033'),
(34, 'Faisal Ahmed', 'Dhaka, Badda', '01913000034'),
(35, 'Abul Hossain', 'Barisal, Charmonai', '01713000035'),
(36, 'Liton Mia', 'Rangpur, Katchari Bazar', '01813000036'),
(37, 'Shafiqul Alam', 'Comilla, Court Bazar', '01913000037'),
(38, 'Nasir Uddin', 'Dhaka, Rampura', '01713000038'),
(39, 'Rony Hossain', 'Chattogram, Kotwali', '01813000039'),
(40, 'Hafizur Rahman', 'Sylhet, Bandarbazar', '01913000040'),
(41, 'Anisur Rahman', 'Khulna, Mujgunni', '01713000041'),
(42, 'Mokbul Islam', 'Rajshahi, Padma', '01813000042'),
(43, 'Salim Hossain', 'Dhaka, Shyamoli', '01913000043'),
(44, 'Rafik Ullah', 'Barisal, College Road', '01713000044'),
(45, 'Sujon Ahmed', 'Rangpur, Munshipara', '01813000045'),
(46, 'Ibrahim Hossain', 'Comilla, Kotbari', '01913000046'),
(47, 'Rafiq Mia', 'Dhaka, Mirpur-1', '01713000047'),
(48, 'Foysal Ahmed', 'Chattogram, Nasirabad', '01813000048'),
(49, 'Jamal Uddin', 'Sylhet, Rikabibazar', '01913000049'),
(50, 'Shahidul Islam', 'Khulna, Notun Rasta', '01713000050');

-- --------------------------------------------------------

--
-- Table structure for table `plumber`
--

CREATE TABLE `plumber` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plumber`
--

INSERT INTO `plumber` (`Id`, `Name`, `Address`, `Phone`) VALUES
(1, 'Rafiqul Islam', 'Dhaka, Mirpur', '01712000001'),
(2, 'Shah Alam', 'Dhaka, Dhanmondi', '01712000002'),
(3, 'Mokhlesur Rahman', 'Chattogram, Agrabad', '01812000003'),
(4, 'Arif Hossain', 'Sylhet, Zindabazar', '01912000004'),
(5, 'Masud Rana', 'Rajshahi, Shaheb Bazar', '01712000005'),
(6, 'Nur Islam', 'Dhaka, Banani', '01812000006'),
(7, 'Habib Ullah', 'Khulna, Khalishpur', '01912000007'),
(8, 'Shafiqul Islam', 'Barisal, Nathullabad', '01712000008'),
(9, 'Mizanur Rahman', 'Rangpur, Guptapara', '01812000009'),
(10, 'Abul Kalam', 'Comilla, Kandirpar', '01912000010'),
(11, 'Shafiqur Rahman', 'Dhaka, Gulshan', '01712000011'),
(12, 'Saiful Islam', 'Sylhet, Amberkhana', '01812000012'),
(13, 'Faruk Hossain', 'Chattogram, Patenga', '01912000013'),
(14, 'Jamal Hossain', 'Khulna, Sonadanga', '01712000014'),
(15, 'Kawsar Ali', 'Rajshahi, Talaimari', '01812000015'),
(16, 'Alamgir Hossain', 'Dhaka, Mohammadpur', '01912000016'),
(17, 'Rubel Hossain', 'Barisal, Rupatoli', '01712000017'),
(18, 'Mamun Mia', 'Rangpur, Mahigonj', '01812000018'),
(19, 'Kamruzzaman', 'Comilla, Tomchom Bridge', '01912000019'),
(20, 'Shahin Ahmed', 'Dhaka, Uttara', '01712000020'),
(21, 'Rashedul Hasan', 'Chattogram, New Market', '01812000021'),
(22, 'Nazrul Islam', 'Sylhet, Lamabazar', '01912000022'),
(23, 'Sajjad Hossain', 'Khulna, Boyra', '01712000023'),
(24, 'Jahangir Alam', 'Rajshahi, Binodpur', '01812000024'),
(25, 'Shamim Mia', 'Dhaka, Farmgate', '01912000025'),
(26, 'Mohsin Ali', 'Barisal, Sagordi', '01712000026'),
(27, 'Abdur Rahman', 'Rangpur, Modern Mor', '01812000027'),
(28, 'Habibur Rahman', 'Comilla, Rajganj', '01912000028'),
(29, 'Nasir Uddin', 'Dhaka, Mohakhali', '01712000029'),
(30, 'Sujon Mia', 'Chattogram, Station Road', '01812000030'),
(31, 'Selim Khan', 'Sylhet, Subidbazar', '01912000031'),
(32, 'Shafayet Ullah', 'Khulna, Gallamari', '01712000032'),
(33, 'Sirajul Islam', 'Rajshahi, Bhadra', '01812000033'),
(34, 'Azizur Rahman', 'Dhaka, Badda', '01912000034'),
(35, 'Farid Hossain', 'Barisal, Charmonai', '01712000035'),
(36, 'Sohel Mia', 'Rangpur, Katchari Bazar', '01812000036'),
(37, 'Kamal Uddin', 'Comilla, Court Bazar', '01912000037'),
(38, 'Nizam Uddin', 'Dhaka, Rampura', '01712000038'),
(39, 'Mokhles Mia', 'Chattogram, Kotwali', '01812000039'),
(40, 'Anisur Rahman', 'Sylhet, Bandarbazar', '01912000040'),
(41, 'Latif Mia', 'Khulna, Mujgunni', '01712000041'),
(42, 'Suhail Hossain', 'Rajshahi, Padma', '01812000042'),
(43, 'Zakir Hossain', 'Dhaka, Shyamoli', '01912000043'),
(44, 'Firoz Hossain', 'Barisal, College Road', '01712000044'),
(45, 'Rubel Mia', 'Rangpur, Munshipara', '01812000045'),
(46, 'Kamruzzaman', 'Comilla, Kotbari', '01912000046'),
(47, 'Shahin Islam', 'Dhaka, Mirpur-1', '01712000047'),
(48, 'Rafiq Mia', 'Chattogram, Nasirabad', '01812000048'),
(49, 'Mukul Hossain', 'Sylhet, Rikabibazar', '01912000049'),
(50, 'Nurul Islam', 'Khulna, Notun Rasta', '01712000050');

--
-- Triggers `plumber`
--
DELIMITER $$
CREATE TRIGGER `plumber_after_insert` AFTER INSERT ON `plumber` FOR EACH ROW INSERT INTO audit_log (TableName, OperationType, RecordID, ChangedData)
VALUES ('plumber', 'INSERT', NEW.Id, CONCAT('Name=', NEW.Name, ', Address=', NEW.Address, ', Phone=', NEW.Phone))
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `plumber_after_update` AFTER UPDATE ON `plumber` FOR EACH ROW INSERT INTO audit_log (TableName, OperationType, RecordID, ChangedData)
VALUES ('plumber', 'UPDATE', NEW.Id, CONCAT('Name=', NEW.Name, ', Address=', NEW.Address, ', Phone=', NEW.Phone))
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `rajmistry`
--

CREATE TABLE `rajmistry` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rajmistry`
--

INSERT INTO `rajmistry` (`Id`, `Name`, `Address`, `Phone`) VALUES
(1, 'Rahim Uddin', 'Dhaka, Mirpur', '01713000001'),
(2, 'Karim Ali', 'Dhaka, Dhanmondi', '01713000002'),
(3, 'Alamgir Hossain', 'Chattogram, Agrabad', '01813000003'),
(4, 'Salam Sheikh', 'Sylhet, Zindabazar', '01913000004'),
(5, 'Jalal Uddin', 'Rajshahi, Shaheb Bazar', '01713000005'),
(6, 'Hasan Ali', 'Dhaka, Banani', '01813000006'),
(7, 'Aslam Mia', 'Khulna, Khalishpur', '01913000007'),
(8, 'Shahidul Islam', 'Barisal, Nathullabad', '01713000008'),
(9, 'Mokbul Hossain', 'Rangpur, Guptapara', '01813000009'),
(10, 'Nazrul Islam', 'Comilla, Kandirpar', '01913000010'),
(11, 'Bashir Uddin', 'Dhaka, Gulshan', '01713000011'),
(12, 'Farid Mia', 'Sylhet, Amberkhana', '01813000012'),
(13, 'Mizanur Rahman', 'Chattogram, Patenga', '01913000013'),
(14, 'Nurul Alam', 'Khulna, Sonadanga', '01713000014'),
(15, 'Shafiqul Islam', 'Rajshahi, Talaimari', '01813000015'),
(16, 'Rafiqul Hasan', 'Dhaka, Mohammadpur', '01913000016'),
(17, 'Rubel Hossain', 'Barisal, Rupatoli', '01713000017'),
(18, 'Mintu Mia', 'Rangpur, Mahigonj', '01813000018'),
(19, 'Mamun Mia', 'Comilla, Tomchom Bridge', '01913000019'),
(20, 'Shahid Hossain', 'Dhaka, Uttara', '01713000020'),
(21, 'Anwar Hossain', 'Chattogram, New Market', '01813000021'),
(22, 'Shahab Uddin', 'Sylhet, Lamabazar', '01913000022'),
(23, 'Jalil Mia', 'Khulna, Boyra', '01713000023'),
(24, 'Rashidul Islam', 'Rajshahi, Binodpur', '01813000024'),
(25, 'Sirajul Islam', 'Dhaka, Farmgate', '01913000025'),
(26, 'Mohsin Sheikh', 'Barisal, Sagordi', '01713000026'),
(27, 'Kamruzzaman', 'Rangpur, Modern Mor', '01813000027'),
(28, 'Habibur Rahman', 'Comilla, Rajganj', '01913000028'),
(29, 'Aminul Islam', 'Dhaka, Mohakhali', '01713000029'),
(30, 'Mokhlesur Rahman', 'Chattogram, Station Road', '01813000030'),
(31, 'Shamsul Alam', 'Sylhet, Subidbazar', '01913000031'),
(32, 'Abdul Hamid', 'Khulna, Gallamari', '01713000032'),
(33, 'Sattar Mia', 'Rajshahi, Bhadra', '01813000033'),
(34, 'Faisal Ahmed', 'Dhaka, Badda', '01913000034'),
(35, 'Abul Hossain', 'Barisal, Charmonai', '01713000035'),
(36, 'Liton Mia', 'Rangpur, Katchari Bazar', '01813000036'),
(37, 'Shafiqul Alam', 'Comilla, Court Bazar', '01913000037'),
(38, 'Nasir Uddin', 'Dhaka, Rampura', '01713000038'),
(39, 'Rony Hossain', 'Chattogram, Kotwali', '01813000039'),
(40, 'Hafizur Rahman', 'Sylhet, Bandarbazar', '01913000040'),
(41, 'Anisur Rahman', 'Khulna, Mujgunni', '01713000041'),
(42, 'Mokbul Islam', 'Rajshahi, Padma', '01813000042'),
(43, 'Salim Hossain', 'Dhaka, Shyamoli', '01913000043'),
(44, 'Rafik Ullah', 'Barisal, College Road', '01713000044'),
(45, 'Sujon Ahmed', 'Rangpur, Munshipara', '01813000045'),
(46, 'Ibrahim Hossain', 'Comilla, Kotbari', '01913000046'),
(47, 'Rafiq Mia', 'Dhaka, Mirpur-1', '01713000047'),
(48, 'Foysal Ahmed', 'Chattogram, Nasirabad', '01813000048'),
(49, 'Jamal Uddin', 'Sylhet, Rikabibazar', '01913000049'),
(50, 'Shahidul Islam', 'Khulna, Notun Rasta', '01713000050');

--
-- Triggers `rajmistry`
--
DELIMITER $$
CREATE TRIGGER `rajmistry_after_insert` AFTER INSERT ON `rajmistry` FOR EACH ROW INSERT INTO audit_log (TableName, OperationType, RecordID, ChangedData)
VALUES ('rajmistry', 'INSERT', NEW.Id, CONCAT('Name=', NEW.Name, ', Address=', NEW.Address, ', Phone=', NEW.Phone))
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `rajmistry_after_update` AFTER UPDATE ON `rajmistry` FOR EACH ROW INSERT INTO audit_log (TableName, OperationType, RecordID, ChangedData)
VALUES ('rajmistry', 'UPDATE', NEW.Id, CONCAT('Name=', NEW.Name, ', Address=', NEW.Address, ', Phone=', NEW.Phone))
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `rickshawpuller`
--

CREATE TABLE `rickshawpuller` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rickshawpuller`
--

INSERT INTO `rickshawpuller` (`Id`, `Name`, `Address`, `Phone`) VALUES
(1, 'Abdul Karim', 'Dhaka, Mirpur', '01710000001'),
(2, 'Shahidul Islam', 'Dhaka, Dhanmondi', '01710000002'),
(3, 'Rubel Hossain', 'Chattogram, Agrabad', '01810000003'),
(4, 'Abul Khair', 'Sylhet, Zindabazar', '01910000004'),
(5, 'Hasan Ali', 'Rajshahi, Shaheb Bazar', '01710000005'),
(6, 'Nurul Islam', 'Dhaka, Banani', '01810000006'),
(7, 'Masud Rana', 'Khulna, Khalishpur', '01910000007'),
(8, 'Sujon Ahmed', 'Barisal, Nathullabad', '01710000008'),
(9, 'Kamrul Islam', 'Rangpur, Guptapara', '01810000009'),
(10, 'Abu Sayeed', 'Comilla, Kandirpar', '01910000010'),
(11, 'Shah Alam', 'Dhaka, Gulshan', '01710000011'),
(12, 'Rafiqul Islam', 'Sylhet, Amberkhana', '01810000012'),
(13, 'Saiful Islam', 'Chattogram, Patenga', '01910000013'),
(14, 'Al Amin', 'Khulna, Sonadanga', '01710000014'),
(15, 'Mohammad Ali', 'Rajshahi, Talaimari', '01810000015'),
(16, 'Abul Bashar', 'Dhaka, Mohammadpur', '01910000016'),
(17, 'Faisal Hossain', 'Barisal, Rupatoli', '01710000017'),
(18, 'Sujon Mia', 'Rangpur, Mahigonj', '01810000018'),
(19, 'Faruk Hossain', 'Comilla, Tomchom Bridge', '01910000019'),
(20, 'Shakil Ahmed', 'Dhaka, Uttara', '01710000020'),
(21, 'Ibrahim Khalil', 'Chattogram, New Market', '01810000021'),
(22, 'Mizanur Rahman', 'Sylhet, Lamabazar', '01910000022'),
(23, 'Shamim Ahmed', 'Khulna, Boyra', '01710000023'),
(24, 'Jahangir Alam', 'Rajshahi, Binodpur', '01810000024'),
(25, 'Kamruzzaman', 'Dhaka, Farmgate', '01910000025'),
(26, 'Abdus Salam', 'Barisal, Sagordi', '01710000026'),
(27, 'Helal Uddin', 'Rangpur, Modern Mor', '01810000027'),
(28, 'Nasir Uddin', 'Comilla, Rajganj', '01910000028'),
(29, 'Shahin Mia', 'Dhaka, Mohakhali', '01710000029'),
(30, 'Aminul Islam', 'Chattogram, Station Road', '01810000030'),
(31, 'Salim Mia', 'Sylhet, Subidbazar', '01910000031'),
(32, 'Shafiqul Islam', 'Khulna, Gallamari', '01710000032'),
(33, 'Motiur Rahman', 'Rajshahi, Bhadra', '01810000033'),
(34, 'Rafik Mia', 'Dhaka, Badda', '01910000034'),
(35, 'Sumon Ali', 'Barisal, Charmonai', '01710000035'),
(36, 'Siraj Uddin', 'Rangpur, Katchari Bazar', '01810000036'),
(37, 'Mukul Hossain', 'Comilla, Court Bazar', '01910000037'),
(38, 'Jalal Uddin', 'Dhaka, Rampura', '01710000038'),
(39, 'Shuvo Mia', 'Chattogram, Kotwali', '01810000039'),
(40, 'Liton Hossain', 'Sylhet, Bandarbazar', '01910000040'),
(41, 'Salam Khan', 'Khulna, Mujgunni', '01710000041'),
(42, 'Moinul Islam', 'Rajshahi, Padma', '01810000042'),
(43, 'Hafizur Rahman', 'Dhaka, Shyamoli', '01910000043'),
(44, 'Rashidul Islam', 'Barisal, College Road', '01710000044'),
(45, 'Shahin Ahmed', 'Rangpur, Munshipara', '01810000045'),
(46, 'Babul Mia', 'Comilla, Kotbari', '01910000046'),
(47, 'Rubel Mia', 'Dhaka, Mirpur-1', '01710000047'),
(48, 'Shakil Hossain', 'Chattogram, Nasirabad', '01810000048'),
(49, 'Selim Mia', 'Sylhet, Rikabibazar', '01910000049'),
(50, 'Nasir Hossain', 'Khulna, Notun Rasta', '01710000050');

--
-- Triggers `rickshawpuller`
--
DELIMITER $$
CREATE TRIGGER `rickshawpuller_after_insert` AFTER INSERT ON `rickshawpuller` FOR EACH ROW INSERT INTO audit_log (TableName, OperationType, RecordID, ChangedData)
VALUES ('rickshawpuller', 'INSERT', NEW.Id, CONCAT('Name=', NEW.Name, ', Address=', NEW.Address, ', Phone=', NEW.Phone))
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `rickshawpuller_after_update` AFTER UPDATE ON `rickshawpuller` FOR EACH ROW INSERT INTO audit_log (TableName, OperationType, RecordID, ChangedData)
VALUES ('rickshawpuller', 'UPDATE', NEW.Id, CONCAT('Name=', NEW.Name, ', Address=', NEW.Address, ', Phone=', NEW.Phone))
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `roofing_laborer`
--

CREATE TABLE `roofing_laborer` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roofing_laborer`
--

INSERT INTO `roofing_laborer` (`Id`, `Name`, `Address`, `Phone`) VALUES
(1, 'Rahim Uddin', 'Dhaka, Mirpur', '01713000001'),
(2, 'Karim Ali', 'Dhaka, Dhanmondi', '01713000002'),
(3, 'Alamgir Hossain', 'Chattogram, Agrabad', '01813000003'),
(4, 'Salam Sheikh', 'Sylhet, Zindabazar', '01913000004'),
(5, 'Jalal Uddin', 'Rajshahi, Shaheb Bazar', '01713000005'),
(6, 'Hasan Ali', 'Dhaka, Banani', '01813000006'),
(7, 'Aslam Mia', 'Khulna, Khalishpur', '01913000007'),
(8, 'Shahidul Islam', 'Barisal, Nathullabad', '01713000008'),
(9, 'Mokbul Hossain', 'Rangpur, Guptapara', '01813000009'),
(10, 'Nazrul Islam', 'Comilla, Kandirpar', '01913000010'),
(11, 'Bashir Uddin', 'Dhaka, Gulshan', '01713000011'),
(12, 'Farid Mia', 'Sylhet, Amberkhana', '01813000012'),
(13, 'Mizanur Rahman', 'Chattogram, Patenga', '01913000013'),
(14, 'Nurul Alam', 'Khulna, Sonadanga', '01713000014'),
(15, 'Shafiqul Islam', 'Rajshahi, Talaimari', '01813000015'),
(16, 'Rafiqul Hasan', 'Dhaka, Mohammadpur', '01913000016'),
(17, 'Rubel Hossain', 'Barisal, Rupatoli', '01713000017'),
(18, 'Mintu Mia', 'Rangpur, Mahigonj', '01813000018'),
(19, 'Mamun Mia', 'Comilla, Tomchom Bridge', '01913000019'),
(20, 'Shahid Hossain', 'Dhaka, Uttara', '01713000020'),
(21, 'Anwar Hossain', 'Chattogram, New Market', '01813000021'),
(22, 'Shahab Uddin', 'Sylhet, Lamabazar', '01913000022'),
(23, 'Jalil Mia', 'Khulna, Boyra', '01713000023'),
(24, 'Rashidul Islam', 'Rajshahi, Binodpur', '01813000024'),
(25, 'Sirajul Islam', 'Dhaka, Farmgate', '01913000025'),
(26, 'Mohsin Sheikh', 'Barisal, Sagordi', '01713000026'),
(27, 'Kamruzzaman', 'Rangpur, Modern Mor', '01813000027'),
(28, 'Habibur Rahman', 'Comilla, Rajganj', '01913000028'),
(29, 'Aminul Islam', 'Dhaka, Mohakhali', '01713000029'),
(30, 'Mokhlesur Rahman', 'Chattogram, Station Road', '01813000030'),
(31, 'Shamsul Alam', 'Sylhet, Subidbazar', '01913000031'),
(32, 'Abdul Hamid', 'Khulna, Gallamari', '01713000032'),
(33, 'Sattar Mia', 'Rajshahi, Bhadra', '01813000033'),
(34, 'Faisal Ahmed', 'Dhaka, Badda', '01913000034'),
(35, 'Abul Hossain', 'Barisal, Charmonai', '01713000035'),
(36, 'Liton Mia', 'Rangpur, Katchari Bazar', '01813000036'),
(37, 'Shafiqul Alam', 'Comilla, Court Bazar', '01913000037'),
(38, 'Nasir Uddin', 'Dhaka, Rampura', '01713000038'),
(39, 'Rony Hossain', 'Chattogram, Kotwali', '01813000039'),
(40, 'Hafizur Rahman', 'Sylhet, Bandarbazar', '01913000040'),
(41, 'Anisur Rahman', 'Khulna, Mujgunni', '01713000041'),
(42, 'Mokbul Islam', 'Rajshahi, Padma', '01813000042'),
(43, 'Salim Hossain', 'Dhaka, Shyamoli', '01913000043'),
(44, 'Rafik Ullah', 'Barisal, College Road', '01713000044'),
(45, 'Sujon Ahmed', 'Rangpur, Munshipara', '01813000045'),
(46, 'Ibrahim Hossain', 'Comilla, Kotbari', '01913000046'),
(47, 'Rafiq Mia', 'Dhaka, Mirpur-1', '01713000047'),
(48, 'Foysal Ahmed', 'Chattogram, Nasirabad', '01813000048'),
(49, 'Jamal Uddin', 'Sylhet, Rikabibazar', '01913000049'),
(50, 'Shahidul Islam', 'Khulna, Notun Rasta', '01713000050');

-- --------------------------------------------------------

--
-- Table structure for table `textile_worker`
--

CREATE TABLE `textile_worker` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `textile_worker`
--

INSERT INTO `textile_worker` (`Id`, `Name`, `Address`, `Phone`) VALUES
(1, 'Rahim Uddin', 'Dhaka, Mirpur', '01713000001'),
(2, 'Karim Ali', 'Dhaka, Dhanmondi', '01713000002'),
(3, 'Alamgir Hossain', 'Chattogram, Agrabad', '01813000003'),
(4, 'Salam Sheikh', 'Sylhet, Zindabazar', '01913000004'),
(5, 'Jalal Uddin', 'Rajshahi, Shaheb Bazar', '01713000005'),
(6, 'Hasan Ali', 'Dhaka, Banani', '01813000006'),
(7, 'Aslam Mia', 'Khulna, Khalishpur', '01913000007'),
(8, 'Shahidul Islam', 'Barisal, Nathullabad', '01713000008'),
(9, 'Mokbul Hossain', 'Rangpur, Guptapara', '01813000009'),
(10, 'Nazrul Islam', 'Comilla, Kandirpar', '01913000010'),
(11, 'Bashir Uddin', 'Dhaka, Gulshan', '01713000011'),
(12, 'Farid Mia', 'Sylhet, Amberkhana', '01813000012'),
(13, 'Mizanur Rahman', 'Chattogram, Patenga', '01913000013'),
(14, 'Nurul Alam', 'Khulna, Sonadanga', '01713000014'),
(15, 'Shafiqul Islam', 'Rajshahi, Talaimari', '01813000015'),
(16, 'Rafiqul Hasan', 'Dhaka, Mohammadpur', '01913000016'),
(17, 'Rubel Hossain', 'Barisal, Rupatoli', '01713000017'),
(18, 'Mintu Mia', 'Rangpur, Mahigonj', '01813000018'),
(19, 'Mamun Mia', 'Comilla, Tomchom Bridge', '01913000019'),
(20, 'Shahid Hossain', 'Dhaka, Uttara', '01713000020'),
(21, 'Anwar Hossain', 'Chattogram, New Market', '01813000021'),
(22, 'Shahab Uddin', 'Sylhet, Lamabazar', '01913000022'),
(23, 'Jalil Mia', 'Khulna, Boyra', '01713000023'),
(24, 'Rashidul Islam', 'Rajshahi, Binodpur', '01813000024'),
(25, 'Sirajul Islam', 'Dhaka, Farmgate', '01913000025'),
(26, 'Mohsin Sheikh', 'Barisal, Sagordi', '01713000026'),
(27, 'Kamruzzaman', 'Rangpur, Modern Mor', '01813000027'),
(28, 'Habibur Rahman', 'Comilla, Rajganj', '01913000028'),
(29, 'Aminul Islam', 'Dhaka, Mohakhali', '01713000029'),
(30, 'Mokhlesur Rahman', 'Chattogram, Station Road', '01813000030'),
(31, 'Shamsul Alam', 'Sylhet, Subidbazar', '01913000031'),
(32, 'Abdul Hamid', 'Khulna, Gallamari', '01713000032'),
(33, 'Sattar Mia', 'Rajshahi, Bhadra', '01813000033'),
(34, 'Faisal Ahmed', 'Dhaka, Badda', '01913000034'),
(35, 'Abul Hossain', 'Barisal, Charmonai', '01713000035'),
(36, 'Liton Mia', 'Rangpur, Katchari Bazar', '01813000036'),
(37, 'Shafiqul Alam', 'Comilla, Court Bazar', '01913000037'),
(38, 'Nasir Uddin', 'Dhaka, Rampura', '01713000038'),
(39, 'Rony Hossain', 'Chattogram, Kotwali', '01813000039'),
(40, 'Hafizur Rahman', 'Sylhet, Bandarbazar', '01913000040'),
(41, 'Anisur Rahman', 'Khulna, Mujgunni', '01713000041'),
(42, 'Mokbul Islam', 'Rajshahi, Padma', '01813000042'),
(43, 'Salim Hossain', 'Dhaka, Shyamoli', '01913000043'),
(44, 'Rafik Ullah', 'Barisal, College Road', '01713000044'),
(45, 'Sujon Ahmed', 'Rangpur, Munshipara', '01813000045'),
(46, 'Ibrahim Hossain', 'Comilla, Kotbari', '01913000046'),
(47, 'Rafiq Mia', 'Dhaka, Mirpur-1', '01713000047'),
(48, 'Foysal Ahmed', 'Chattogram, Nasirabad', '01813000048'),
(49, 'Jamal Uddin', 'Sylhet, Rikabibazar', '01913000049'),
(50, 'Shahidul Islam', 'Khulna, Notun Rasta', '01713000050');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_carpenter`
-- (See below for the actual view)
--
CREATE TABLE `view_carpenter` (
`Id` int(11)
,`Name` varchar(50)
,`Address` varchar(100)
,`Phone` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_carpenters`
-- (See below for the actual view)
--
CREATE TABLE `view_carpenters` (
`Id` int(11)
,`Name` varchar(50)
,`Address` varchar(100)
,`Phone` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_construction_workers`
-- (See below for the actual view)
--
CREATE TABLE `view_construction_workers` (
`Id` int(11)
,`Name` varchar(50)
,`Address` varchar(100)
,`Phone` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_dock_worker`
-- (See below for the actual view)
--
CREATE TABLE `view_dock_worker` (
`Id` int(11)
,`Name` varchar(50)
,`Address` varchar(100)
,`Phone` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_fisherman`
-- (See below for the actual view)
--
CREATE TABLE `view_fisherman` (
`Id` int(11)
,`Name` varchar(50)
,`Address` varchar(100)
,`Phone` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_landscaper`
-- (See below for the actual view)
--
CREATE TABLE `view_landscaper` (
`Id` int(11)
,`Name` varchar(50)
,`Address` varchar(100)
,`Phone` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_rajmistry`
-- (See below for the actual view)
--
CREATE TABLE `view_rajmistry` (
`Id` int(11)
,`Name` varchar(50)
,`Address` varchar(100)
,`Phone` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_roofing_laborer`
-- (See below for the actual view)
--
CREATE TABLE `view_roofing_laborer` (
`Id` int(11)
,`Name` varchar(50)
,`Address` varchar(100)
,`Phone` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_welder`
-- (See below for the actual view)
--
CREATE TABLE `view_welder` (
`Id` int(11)
,`Name` varchar(50)
,`Address` varchar(100)
,`Phone` varchar(15)
);

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_worker`
--

CREATE TABLE `warehouse_worker` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `welder`
--

CREATE TABLE `welder` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `welder`
--

INSERT INTO `welder` (`Id`, `Name`, `Address`, `Phone`) VALUES
(1, 'Abdul Karim', 'Dhaka, Mirpur', '01710000001'),
(2, 'Shahidul Islam', 'Dhaka, Dhanmondi', '01710000002'),
(3, 'Rubel Hossain', 'Chattogram, Agrabad', '01810000003'),
(4, 'Abul Khair', 'Sylhet, Zindabazar', '01910000004'),
(5, 'Hasan Ali', 'Rajshahi, Shaheb Bazar', '01710000005'),
(6, 'Nurul Islam', 'Dhaka, Banani', '01810000006'),
(7, 'Masud Rana', 'Khulna, Khalishpur', '01910000007'),
(8, 'Sujon Ahmed', 'Barisal, Nathullabad', '01710000008'),
(9, 'Kamrul Islam', 'Rangpur, Guptapara', '01810000009'),
(10, 'Abu Sayeed', 'Comilla, Kandirpar', '01910000010'),
(11, 'Shah Alam', 'Dhaka, Gulshan', '01710000011'),
(12, 'Rafiqul Islam', 'Sylhet, Amberkhana', '01810000012'),
(13, 'Saiful Islam', 'Chattogram, Patenga', '01910000013'),
(14, 'Al Amin', 'Khulna, Sonadanga', '01710000014'),
(15, 'Mohammad Ali', 'Rajshahi, Talaimari', '01810000015'),
(16, 'Abul Bashar', 'Dhaka, Mohammadpur', '01910000016'),
(17, 'Faisal Hossain', 'Barisal, Rupatoli', '01710000017'),
(18, 'Sujon Mia', 'Rangpur, Mahigonj', '01810000018'),
(19, 'Faruk Hossain', 'Comilla, Tomchom Bridge', '01910000019'),
(20, 'Shakil Ahmed', 'Dhaka, Uttara', '01710000020'),
(21, 'Ibrahim Khalil', 'Chattogram, New Market', '01810000021'),
(22, 'Mizanur Rahman', 'Sylhet, Lamabazar', '01910000022'),
(23, 'Shamim Ahmed', 'Khulna, Boyra', '01710000023'),
(24, 'Jahangir Alam', 'Rajshahi, Binodpur', '01810000024'),
(25, 'Kamruzzaman', 'Dhaka, Farmgate', '01910000025'),
(26, 'Abdus Salam', 'Barisal, Sagordi', '01710000026'),
(27, 'Helal Uddin', 'Rangpur, Modern Mor', '01810000027'),
(28, 'Nasir Uddin', 'Comilla, Rajganj', '01910000028'),
(29, 'Shahin Mia', 'Dhaka, Mohakhali', '01710000029'),
(30, 'Aminul Islam', 'Chattogram, Station Road', '01810000030'),
(31, 'Salim Mia', 'Sylhet, Subidbazar', '01910000031'),
(32, 'Shafiqul Islam', 'Khulna, Gallamari', '01710000032'),
(33, 'Motiur Rahman', 'Rajshahi, Bhadra', '01810000033'),
(34, 'Rafik Mia', 'Dhaka, Badda', '01910000034'),
(35, 'Sumon Ali', 'Barisal, Charmonai', '01710000035'),
(36, 'Siraj Uddin', 'Rangpur, Katchari Bazar', '01810000036'),
(37, 'Mukul Hossain', 'Comilla, Court Bazar', '01910000037'),
(38, 'Jalal Uddin', 'Dhaka, Rampura', '01710000038'),
(39, 'Shuvo Mia', 'Chattogram, Kotwali', '01810000039'),
(40, 'Liton Hossain', 'Sylhet, Bandarbazar', '01910000040'),
(41, 'Salam Khan', 'Khulna, Mujgunni', '01710000041'),
(42, 'Moinul Islam', 'Rajshahi, Padma', '01810000042'),
(43, 'Hafizur Rahman', 'Dhaka, Shyamoli', '01910000043'),
(44, 'Rashidul Islam', 'Barisal, College Road', '01710000044'),
(45, 'Shahin Ahmed', 'Rangpur, Munshipara', '01810000045'),
(46, 'Babul Mia', 'Comilla, Kotbari', '01910000046'),
(47, 'Rubel Mia', 'Dhaka, Mirpur-1', '01710000047'),
(48, 'Shakil Hossain', 'Chattogram, Nasirabad', '01810000048'),
(49, 'Selim Mia', 'Sylhet, Rikabibazar', '01910000049'),
(50, 'Nasir Hossain', 'Khulna, Notun Rasta', '01710000050');

-- --------------------------------------------------------

--
-- Structure for view `all_workers`
--
DROP TABLE IF EXISTS `all_workers`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `all_workers`  AS SELECT 'Dock_Worker' AS `TableName`, `dock_worker`.`Id` AS `Id`, `dock_worker`.`Name` AS `Name`, `dock_worker`.`Address` AS `Address`, `dock_worker`.`Phone` AS `Phone` FROM `dock_worker`union all select 'carpenter' AS `TableName`,`carpenter`.`Id` AS `Id`,`carpenter`.`Name` AS `Name`,`carpenter`.`Address` AS `Address`,`carpenter`.`Phone` AS `Phone` from `carpenter` union all select 'Rajmistry' AS `TableName`,`rajmistry`.`Id` AS `Id`,`rajmistry`.`Name` AS `Name`,`rajmistry`.`Address` AS `Address`,`rajmistry`.`Phone` AS `Phone` from `rajmistry`  ;

-- --------------------------------------------------------

--
-- Structure for view `view_carpenter`
--
DROP TABLE IF EXISTS `view_carpenter`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_carpenter`  AS SELECT `carpenter`.`Id` AS `Id`, `carpenter`.`Name` AS `Name`, `carpenter`.`Address` AS `Address`, `carpenter`.`Phone` AS `Phone` FROM `carpenter` ;

-- --------------------------------------------------------

--
-- Structure for view `view_carpenters`
--
DROP TABLE IF EXISTS `view_carpenters`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_carpenters`  AS SELECT `carpenter`.`Id` AS `Id`, `carpenter`.`Name` AS `Name`, `carpenter`.`Address` AS `Address`, `carpenter`.`Phone` AS `Phone` FROM `carpenter` ;

-- --------------------------------------------------------

--
-- Structure for view `view_construction_workers`
--
DROP TABLE IF EXISTS `view_construction_workers`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_construction_workers`  AS SELECT `construction_worker`.`Id` AS `Id`, `construction_worker`.`Name` AS `Name`, `construction_worker`.`Address` AS `Address`, `construction_worker`.`Phone` AS `Phone` FROM `construction_worker` ;

-- --------------------------------------------------------

--
-- Structure for view `view_dock_worker`
--
DROP TABLE IF EXISTS `view_dock_worker`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_dock_worker`  AS SELECT `dock_worker`.`Id` AS `Id`, `dock_worker`.`Name` AS `Name`, `dock_worker`.`Address` AS `Address`, `dock_worker`.`Phone` AS `Phone` FROM `dock_worker` ;

-- --------------------------------------------------------

--
-- Structure for view `view_fisherman`
--
DROP TABLE IF EXISTS `view_fisherman`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_fisherman`  AS SELECT `fisherman`.`Id` AS `Id`, `fisherman`.`Name` AS `Name`, `fisherman`.`Address` AS `Address`, `fisherman`.`Phone` AS `Phone` FROM `fisherman` ;

-- --------------------------------------------------------

--
-- Structure for view `view_landscaper`
--
DROP TABLE IF EXISTS `view_landscaper`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_landscaper`  AS SELECT `landscaper`.`Id` AS `Id`, `landscaper`.`Name` AS `Name`, `landscaper`.`Address` AS `Address`, `landscaper`.`Phone` AS `Phone` FROM `landscaper` ;

-- --------------------------------------------------------

--
-- Structure for view `view_rajmistry`
--
DROP TABLE IF EXISTS `view_rajmistry`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_rajmistry`  AS SELECT `rajmistry`.`Id` AS `Id`, `rajmistry`.`Name` AS `Name`, `rajmistry`.`Address` AS `Address`, `rajmistry`.`Phone` AS `Phone` FROM `rajmistry` ;

-- --------------------------------------------------------

--
-- Structure for view `view_roofing_laborer`
--
DROP TABLE IF EXISTS `view_roofing_laborer`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_roofing_laborer`  AS SELECT `roofing_laborer`.`Id` AS `Id`, `roofing_laborer`.`Name` AS `Name`, `roofing_laborer`.`Address` AS `Address`, `roofing_laborer`.`Phone` AS `Phone` FROM `roofing_laborer` ;

-- --------------------------------------------------------

--
-- Structure for view `view_welder`
--
DROP TABLE IF EXISTS `view_welder`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_welder`  AS SELECT `welder`.`Id` AS `Id`, `welder`.`Name` AS `Name`, `welder`.`Address` AS `Address`, `welder`.`Phone` AS `Phone` FROM `welder` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_log`
--
ALTER TABLE `audit_log`
  ADD PRIMARY KEY (`LogID`);

--
-- Indexes for table `electrician`
--
ALTER TABLE `electrician`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `kajerbuya`
--
ALTER TABLE `kajerbuya`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `plumber`
--
ALTER TABLE `plumber`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `rajmistry`
--
ALTER TABLE `rajmistry`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `rickshawpuller`
--
ALTER TABLE `rickshawpuller`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_log`
--
ALTER TABLE `audit_log`
  MODIFY `LogID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
