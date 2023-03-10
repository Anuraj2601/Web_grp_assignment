-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2023 at 08:07 AM
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
-- Database: `webdev`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerid` varchar(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerid`, `name`, `mobile`, `email`, `address`, `username`, `password`) VALUES
('C1001', 'Anuraj', '0774921146', 'anu@gmail.com', 'Jaffna', 'anu', 'anu'),
('C1002', 'Arulraj', '0765493959', 'arul1999@gmail.com', 'Colombo', 'arul', '1999'),
('C1003', 'Sathu', '0743639447', 'sathu04@gmail.com', 'Kandy', 'sathu', '2004');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `orderid` varchar(11) NOT NULL,
  `orderdate` varchar(20) NOT NULL,
  `customerid` varchar(11) NOT NULL,
  `total_amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`orderid`, `orderdate`, `customerid`, `total_amount`) VALUES
('O1001', '2023-02-20', 'C1003', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `orderitem`
--

CREATE TABLE `orderitem` (
  `orderitemid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productid` varchar(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `description` varchar(75) NOT NULL,
  `price` double NOT NULL,
  `supplierid` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `name`, `description`, `price`, `supplierid`) VALUES
('P1001', 'Coca-Cola', 'Drink', 380, 'S1001');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorder`
--

CREATE TABLE `purchaseorder` (
  `purchaseorderid` varchar(11) NOT NULL,
  `supplierid` varchar(11) NOT NULL,
  `orderdate` varchar(20) NOT NULL,
  `deliverydate` varchar(20) NOT NULL,
  `total_amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchaseorder`
--

INSERT INTO `purchaseorder` (`purchaseorderid`, `supplierid`, `orderdate`, `deliverydate`, `total_amount`) VALUES
('PO1001', 'S1001', '2023-02-01', '2023-02-08', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorderitem`
--

CREATE TABLE `purchaseorderitem` (
  `purchaseorderitemid` varchar(11) NOT NULL,
  `purchaseorderid` varchar(11) NOT NULL,
  `productid` varchar(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchaseorderitem`
--

INSERT INTO `purchaseorderitem` (`purchaseorderitemid`, `purchaseorderid`, `productid`, `quantity`, `price`) VALUES
('PI1001', 'PO1001', 'P1001', 100, 380000);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplierid` varchar(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `address` varchar(30) NOT NULL,
  `phone` int(10) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplierid`, `name`, `address`, `phone`, `email`) VALUES
('S1001', 'ABC', 'Kollupitiya', 212261290, 'abc@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `autoid` int(11) NOT NULL,
  `name` varchar(150) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `gender` varchar(8) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `date` varchar(20) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `nic` varchar(15) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `country` varchar(50) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `reading` int(11) NOT NULL,
  `movie` int(11) NOT NULL,
  `other` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`autoid`, `name`, `address`, `gender`, `date`, `phone`, `nic`, `email`, `country`, `reading`, `movie`, `other`, `username`, `password`, `photo`) VALUES
(1, 'Anuraj', 'Nelliady,Jaffna', 'male', '2002-01-26', '0743639447', '661830140v', 'anurajselvasothy@gmail.com', 'other', 1, 1, 0, 'Anuraj', '2601', '10768-My image.jpeg'),
(2, 'user', '', '', '', '', '', '', '', 0, 0, 0, 'user', 'user', '');

-- --------------------------------------------------------

--
-- Table structure for table `usr`
--

CREATE TABLE `usr` (
  `autoid` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `email` varchar(35) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usr`
--

INSERT INTO `usr` (`autoid`, `name`, `email`, `username`, `password`) VALUES
(1, 'Arulraj', 'arulselva@gmail.com', 'arul', '1999'),
(2, 'Sapuni', 'sapuninethmini888@gmail.com', 'sapuni2000', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`orderitemid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  ADD PRIMARY KEY (`purchaseorderid`);

--
-- Indexes for table `purchaseorderitem`
--
ALTER TABLE `purchaseorderitem`
  ADD PRIMARY KEY (`purchaseorderitemid`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplierid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`autoid`);

--
-- Indexes for table `usr`
--
ALTER TABLE `usr`
  ADD PRIMARY KEY (`autoid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orderitem`
--
ALTER TABLE `orderitem`
  MODIFY `orderitemid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `autoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usr`
--
ALTER TABLE `usr`
  MODIFY `autoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
