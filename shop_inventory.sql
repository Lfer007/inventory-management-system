-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-07-2023 a las 06:16:55
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `shop_inventory`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customer`
--

CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` int(11) NOT NULL,
  `phone2` int(11) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `district` varchar(30) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `createdOn` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `customer`
--

INSERT INTO `customer` (`customerID`, `fullName`, `email`, `mobile`, `phone2`, `address`, `address2`, `city`, `district`, `status`, `createdOn`) VALUES
(4, 'Bill Gates', 'bill@microsoft.com', 993737, 772484884, '45, Palo Alto House, Marine Drive', 'South Carolina', 'Microsoft', 'Kurunegala', 'Active', '2018-04-30 15:14:02'),
(14, 'Steve Jobs', 'sjobs@apple.com', 333829832, 0, '1st Floor, Apple House, ', 'Las Vegas Street', 'Las Vegas', 'Monaragala', 'Disabled', '2018-05-01 12:03:10'),
(18, 'Asitha Silva', 'asitha@gmail.com', 777987654, 0, 'No. 3, Radcliff Avenue, School Lane', 'Kalutara South', 'Kalutara', 'Kalutara', 'Active', '2018-05-02 09:52:28'),
(24, 'Sunil Perera', 'Sunil@gypsies.sound', 338393932, 413837293, '67/7, Perera Villa, Jayasekara Avenue', 'Mount Lavinia', 'Ratmalana', 'Colombo', 'Active', '2018-05-02 10:48:37'),
(25, 'Theresa May', 'may34@uk.gov.com', 329393903, 777833737, '12, Downing Street', 'London', 'London', 'Matale', 'Active', '2018-05-03 02:28:07'),
(26, 'Sachin Tendulkar', 'sachintendulkar@icc.com', 444958303, 84792838, '789-4, Apartment 3, ', 'Cric Complex', 'New Delhi', 'Puttalam', 'Active', '2018-05-03 02:28:38'),
(38, 'Nuwan Perara', 'nuwan@yahoo.com', 839378202, 0, 'Nuwan Villa, Lower Street,', 'North Mulativu', 'Mullaitivu', 'Mullaitivu', 'Active', '2018-05-05 11:17:49'),
(39, 'Amal Silverton', 'amals452@yahoo.com', 232345676, 0, 'Amal\'s House, Amal\'s Street,', 'Amal Road', 'Ambalangoda', 'Galle', 'Active', '2018-05-05 13:27:06'),
(40, 'Andrew Symonds', 'symonds@cricket.au.com', 123, 0, '23, Oak View Avenue', 'Western Australia', 'Melbourne', 'Colombo', 'Disabled', '2018-05-13 01:20:23'),
(41, 'Mark Taylor', '', 111, 0, '111', '', '', 'Colombo', 'Active', '2018-05-13 01:24:54'),
(42, 'Nelson Mandela', 'sjobs@apple.com', 333829832, 0, '1st Floor, Apple House, ', 'Las Vegas Street', 'Las Vegas', 'Kalutara', 'Disabled', '2018-05-13 02:39:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item`
--

CREATE TABLE `item` (
  `productID` int(11) NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `discount` float NOT NULL DEFAULT 0,
  `stock` int(11) NOT NULL DEFAULT 0,
  `unitPrice` float NOT NULL DEFAULT 0,
  `imageURL` varchar(255) NOT NULL DEFAULT 'imageNotAvailable.jpg',
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `item`
--

INSERT INTO `item` (`productID`, `itemNumber`, `itemName`, `discount`, `stock`, `unitPrice`, `imageURL`, `status`, `description`) VALUES
(34, '1', 'Caf&eacute;', 0, 28, 0, '1689219156_1.1.png', 'Active', ''),
(35, '2', 'Az&uacute;car', 0, 5, 500, '1689219302_2.22.png', 'Active', ''),
(36, '3', 'Huevos', 0, 5, 1300, '1689219386_3.3.jpg', 'Active', ''),
(37, '4', 'Harina', 2, 6, 3409, '1689219543_4.4.jpg', 'Active', ''),
(38, '5', 'Pan Emp.', 2, 17, 1200, '1689219650_5.5.jpg', 'Active', ''),
(39, '6', 'vasos desechables', 0, 60, 3000, '1689219810_6.6.jpg', 'Active', ''),
(40, '7', 'palitos de madera', 1.5, 55, 1650, '1689219925_7.7.jpg', 'Active', ''),
(41, '8', 'Servilletas', 2.1, 9, 3300, '1689220023_8.8.jpg', 'Active', ''),
(43, '10', 'Mantequilla', 1, 92, 1750, '1689220141_10.1.png', 'Active', ''),
(45, '11', 'Sal', 1.5, 11, 1200, '1689220223_11.1.jpg', 'Active', ''),
(49, '14', 'Galletas de avena paquete', 1.5, 6, 3600, '1689220383_14.1.png', 'Active', 'Este producto, viene sujeto a cambios.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchase`
--

CREATE TABLE `purchase` (
  `purchaseID` int(11) NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `purchaseDate` date NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `unitPrice` float NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `vendorName` varchar(255) NOT NULL DEFAULT 'Test Vendor',
  `vendorID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `purchase`
--

INSERT INTO `purchase` (`purchaseID`, `itemNumber`, `purchaseDate`, `itemName`, `unitPrice`, `quantity`, `vendorName`, `vendorID`) VALUES
(39, '1', '2018-05-24', 'Caf&eacute;', 1600, 10, 'Johnson and Johnsons Co.', 3),
(40, '2', '2018-05-18', 'Az&uacute;car', 2341, 2, 'Louise Vitton Bag', 4),
(41, '4', '2018-05-07', 'Harina', 1234, 3, 'Johnson and Johnsons Co.', 3),
(42, '1', '2018-05-24', 'Caf&eacute;', 345, 12, 'Louise Vitton Bag', 4),
(43, '5', '2018-05-03', 'Pan Emp.', 35, 3, 'Johnson and Johnsons Co.', 3),
(44, '5', '2018-05-16', 'Pan Emp.', 3000, 2, 'ABC Company', 1),
(45, '5', '2018-05-21', 'Pan Emp.', 3000, 10, 'Sample Vendor 222', 2),
(46, '4', '2018-05-19', 'Harina', 1200, 4, 'Johnson and Johnsons Co.', 3),
(47, '2', '2018-05-10', 'Az&uacute;car', 2, 1, 'Sample Vendor 222', 2),
(48, '1', '2018-05-12', 'Caf&eacute;', 2, 9, 'ABC Company', 1),
(50, '14', '2018-05-15', 'Galletas de avena paquete', 1000, 5, 'Louise Vitton Bag', 4),
(51, '11', '2018-05-11', 'Sal', 1121, 1, 'ABC Company', 1),
(52, '1', '2018-05-21', 'Caf&eacute;', 1235, 2, 'Sample Vendor 222', 2),
(53, '2', '2023-07-12', 'Az&amp;uacute;car', 500, 3, 'Sample Vendor 222', 2),
(54, '2', '2023-07-12', 'Az&amp;uacute;car', 500, 1, 'Sample Vendor 222', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sale`
--

CREATE TABLE `sale` (
  `saleID` int(11) NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `customerID` int(11) NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `saleDate` date NOT NULL,
  `discount` float NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `unitPrice` float(10,0) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sale`
--

INSERT INTO `sale` (`saleID`, `itemNumber`, `customerID`, `customerName`, `itemName`, `saleDate`, `discount`, `quantity`, `unitPrice`) VALUES
(1, '3', 4, 'Bill Gates', 'Huevos', '2018-05-24', 5, 2, 1300),
(2, '1', 39, 'Amal Silverton', 'Caf&eacute;', '2018-05-24', 0, 111, 1500),
(3, '4', 18, 'Asitha Silva', 'Harina', '2018-05-24', 2, 1, 3409),
(4, '5', 25, 'Theresa May', 'Pan Emp.', '2018-05-24', 2, 1, 1200),
(5, '6', 24, 'Sunil Perera', 'vasos desechables', '2018-05-24', 0, 1, 3000),
(6, '7', 14, 'Steve Jobs', 'palitos de madera', '2018-05-24', 1.5, 1, 1650),
(7, '3', 4, 'Bill Gates', 'Huevos', '2018-05-24', 0, 3, 1300),
(8, '8', 4, 'Bill Gates', 'Servilletas', '2018-05-14', 2.1, 1, 2300),
(9, '6', 26, 'Sachin Tendulkar', 'vasos desechables', '2018-05-14', 0, 1, 3000),
(10, '5', 25, 'Theresa May', 'Pan Emp.', '2018-05-14', 2, 9, 1200),
(11, '10', 26, 'Sachin Tendulkar', 'Mantequilla', '2018-04-05', 1, 7, 1000),
(12, '1', 14, 'Steve Jobs', 'Caf&eacute;', '2018-05-14', 0, 2, 1500),
(13, '3', 38, 'Nuwan Perara', 'Huevos', '2018-05-24', 0, 0, 1300),
(14, '10', 39, 'Amal Silverton', 'Mantequilla', '2018-05-17', 1, 1, 1000),
(15, '14', 38, 'Nuwan Perara', 'Galletas de avena paquete', '2018-05-24', 1.5, 1, 1200),
(16, '1', 14, 'Steve Jobs', 'Caf&eacute;', '2018-05-24', 10, 1, 1500),
(17, '4', 14, 'Steve Jobs', 'Harina', '2018-05-18', 2, 1, 3409),
(18, '2', 4, 'Bill Gates', 'Az&amp;uacute;car', '2018-05-24', 0, 4, 500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`userID`, `fullName`, `username`, `password`, `status`) VALUES
(5, 'Guest', 'guest', '81dc9bdb52d04dc20036dbd8313ed055', 'Active'),
(6, 'a', 'a', '0cc175b9c0f1b6a831c399e269772661', 'Active'),
(7, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Active');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendor`
--

CREATE TABLE `vendor` (
  `vendorID` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` int(11) NOT NULL,
  `phone2` int(11) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `district` varchar(30) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `createdOn` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vendor`
--

INSERT INTO `vendor` (`vendorID`, `fullName`, `email`, `mobile`, `phone2`, `address`, `address2`, `city`, `district`, `status`, `createdOn`) VALUES
(1, 'ABC Company', '', 2343567, 0, '80, Ground Floor, ABC Shopping Complex', '46th Avenue', 'Kolpetty', 'Colombo', 'Active', '2018-05-05 05:48:44'),
(2, 'Sample Vendor 222', 'sample@volvo.com', 99828282, 283730183, '123, A Road, B avenue', 'Pitipana', 'Nugegoda', 'Mannar', 'Disabled', '2018-05-05 06:12:02'),
(3, 'Johnson and Johnsons Co.', '', 32323, 0, '34, Malwatta Road, Kottawa', 'Pannipitiya', 'Maharagama', 'Colombo', 'Active', '2018-05-05 06:28:33'),
(4, 'Louise Vitton Bag', 'vitton@vitton.usa.com', 323234938, 0, '45, Palmer Valley, 5th Crossing', 'Delaware', 'Palo Alto', 'Batticaloa', 'Active', '2018-05-05 06:29:41'),
(6, 'Test Vendor', 'test@vendor.com', 43434, 47569937, 'Test address', 'Test address 2', 'Test City', 'Trincomalee', 'Active', '2018-05-05 06:53:14'),
(7, 'Bags Co. Exporters Ltd.', '', 1111, 0, 'Sea Road, Bambalapitiya', '', '', 'Colombo', 'Active', '2018-05-15 10:36:54'),
(8, 'New Bags Exporters', '', 191938930, 0, '123, A Road, B avenue, ', 'Gilford Crescent', 'Colpetty', 'Colombo', 'Active', '2018-05-16 12:36:53'),
(9, 'A', 'a@gmail.com', 999995, 98866767, 'manila', 'Metro Manila', 'Manila City', 'Ampara', 'Active', '2020-07-30 11:40:25');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`);

--
-- Indices de la tabla `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`productID`);

--
-- Indices de la tabla `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchaseID`);

--
-- Indices de la tabla `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`saleID`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- Indices de la tabla `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendorID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `customer`
--
ALTER TABLE `customer`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `item`
--
ALTER TABLE `item`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchaseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `sale`
--
ALTER TABLE `sale`
  MODIFY `saleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
