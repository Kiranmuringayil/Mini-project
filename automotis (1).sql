-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2019 at 01:30 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `automotis`
--

-- --------------------------------------------------------

--
-- Table structure for table `car_models`
--

CREATE TABLE `car_models` (
  `carid` int(20) NOT NULL,
  `compid` int(20) NOT NULL,
  `model` varchar(30) NOT NULL,
  `varient` varchar(30) NOT NULL,
  `type` varchar(15) NOT NULL,
  `fuel` varchar(20) NOT NULL,
  `fuel_capacity` varchar(20) NOT NULL,
  `milage` varchar(20) NOT NULL,
  `displacement` varchar(20) NOT NULL,
  `maxpower` varchar(20) NOT NULL,
  `maxtorque` varchar(20) NOT NULL,
  `transmission` varchar(20) NOT NULL,
  `gearbox` varchar(20) NOT NULL,
  `seat` int(10) NOT NULL,
  `ground` varchar(15) NOT NULL,
  `wheelbase` varchar(15) NOT NULL,
  `weight` varchar(15) NOT NULL,
  `boot` varchar(15) NOT NULL,
  `length` varchar(15) NOT NULL,
  `height` varchar(15) NOT NULL,
  `width` varchar(15) NOT NULL,
  `alloy` varchar(15) NOT NULL,
  `abs` varchar(15) NOT NULL,
  `drive` varchar(15) NOT NULL,
  `touch` varchar(15) NOT NULL,
  `sunroof` varchar(15) NOT NULL,
  `camera` varchar(15) NOT NULL,
  `drls` varchar(15) NOT NULL,
  `cruise` varchar(15) NOT NULL,
  `price` varchar(15) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_models`
--

INSERT INTO `car_models` (`carid`, `compid`, `model`, `varient`, `type`, `fuel`, `fuel_capacity`, `milage`, `displacement`, `maxpower`, `maxtorque`, `transmission`, `gearbox`, `seat`, `ground`, `wheelbase`, `weight`, `boot`, `length`, `height`, `width`, `alloy`, `abs`, `drive`, `touch`, `sunroof`, `camera`, `drls`, `cruise`, `price`, `image`, `status`) VALUES
(3, 1, 'Ciaz', 'Alpha', '5', '1', '43 L', '21.56', '1462', '103 bhp', '138 NM', '1', '5', 5, '170', '2650', '1024', '510', '4490', '1485', '1730', 'yes', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 'yes', '9.98 Lakhs', 'Ciaz.jpg', 1),
(6, 2, 'Harrier', 'XZO', '1', '2', '50 L', '-----', '1956', '138 bhp', '350 NM', '1', '6', 5, '205', '2741', '-----', '425', '1894', '1706', '1729', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '15.55 Lakhs', 'harrier.jpg', 1),
(7, 6, 'Seltos', 'HTX', '1', '2', '50 L', '20', '1493', '114 bhp', '250 NM', '1', '6', 5, '190', '2610', '----', '433', '4315', '1645', '1800', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '14.96', 'seltos.jpg', 1),
(11, 1, 'Brezza', 'ZDI', '1', '2', '45 L', '24.29', '1248', '89 bhp', '200 Nm', '1', '5', 5, '198', '2500', '1195', '328', '3995', '1640', '1790', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', '10.14 Lakhs', 'brezza.jpg', 1),
(13, 7, 'Hector', 'Smart', '1', '2', '60 L', '17.41', '1956', '168 bhp', '350 NM', '1', '6', 5, '192', '2750', '----', '----', '4655', '1760', '1835', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', '13.48 Lakhs', 'hector.jpg', 1),
(15, 3, 'Venue', 'SXO', '1', '2', '45 L', '23.7', '1396', '89 bhp', '220 NM', '1', '6', 5, '190', '2600', '----', '350', '3995', '1605', '1770', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '10.84 Lakhs', 'venue.jpg', 1),
(16, 4, 'City', 'VXMT', '5', '1', '40 L', '17.4', '1497', '117 bhp', '145 NM', '1', '5', 5, '165', '2600', '1088', '510', '4440', '1495', '1695', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', '13.09', 'city.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `compid` int(20) NOT NULL,
  `comp_name` varchar(30) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`compid`, `comp_name`, `status`) VALUES
(1, 'Maruti Suzuki', 1),
(2, 'Tata Motors', 1),
(3, 'Hyundai', 1),
(4, 'Honda', 1),
(6, 'Kia', 1),
(7, 'MG', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dimension`
--

CREATE TABLE `dimension` (
  `dimid` int(20) NOT NULL,
  `carid` int(20) NOT NULL,
  `grnd_clr` varchar(20) NOT NULL,
  `wheelbase` varchar(20) NOT NULL,
  `kb_wgt` varchar(20) NOT NULL,
  `bt_space` varchar(20) NOT NULL,
  `length` varchar(20) NOT NULL,
  `height` varchar(20) NOT NULL,
  `width` varchar(20) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `displacement`
--

CREATE TABLE `displacement` (
  `dispid` int(20) NOT NULL,
  `carid` int(20) NOT NULL,
  `varid` int(20) NOT NULL,
  `displace` varchar(20) NOT NULL,
  `max_pwr` varchar(20) NOT NULL,
  `max_tq` varchar(20) NOT NULL,
  `cylinder` int(10) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback_tb`
--

CREATE TABLE `feedback_tb` (
  `feedback_id` int(11) NOT NULL,
  `loginid` varchar(20) NOT NULL,
  `feedback` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_tb`
--

INSERT INTO `feedback_tb` (`feedback_id`, `loginid`, `feedback`, `date`) VALUES
(1, 'jomy', 'Helpful', '2019-11-13'),
(2, 'jayan', 'Nice', '2019-11-13'),
(3, 'sooraj', 'helloo...', '2019-11-13'),
(4, 'jomy', 'ttt', '2019-11-14');

-- --------------------------------------------------------

--
-- Table structure for table `fuel`
--

CREATE TABLE `fuel` (
  `fuelid` int(20) NOT NULL,
  `fuel_type` varchar(30) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fuel`
--

INSERT INTO `fuel` (`fuelid`, `fuel_type`, `status`) VALUES
(1, 'Petrol', 1),
(2, 'Diesel', 1),
(3, 'CNG', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_tb`
--

CREATE TABLE `login_tb` (
  `loginid` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `usertype` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_tb`
--

INSERT INTO `login_tb` (`loginid`, `username`, `password`, `usertype`) VALUES
(1, 'admin', 'ca948f35c27bc11809f50f430bd64fa6', 1),
(2, 'thomas', 'e3beaa8228a7f84e07eed0f5fc6d1700', 0),
(3, 'jomy', '827ccb0eea8a706c4c34a16891f84e7b', 0),
(4, 'joseph', 'c0e02b4490451676cbb0101ec7f3fc3d', 0),
(5, 'kiran', 'ec9d3ccef787c1baa9efd799f8e4ed01', 0),
(6, 'sandeep', 'ac651c5b5166a53f9432bb812f6497a8', 0),
(7, 'sooraj', '827ccb0eea8a706c4c34a16891f84e7b', 0),
(8, 'abey', 'da70dd2119565910578f63d16537bd8d', 0),
(9, 'jayan', 'd41d8cd98f00b204e9800998ecf8427e', 0),
(10, 'teenuv', 'e35b7a9da89ea6afde029863f7092dd5', 0),
(11, 'qwee', 'b3f947379e88aab49c26f395aa0ebaee', 0);

-- --------------------------------------------------------

--
-- Table structure for table `register_tb`
--

CREATE TABLE `register_tb` (
  `userid` int(10) NOT NULL,
  `loginid` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `stateid` int(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `contno` bigint(20) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register_tb`
--

INSERT INTO `register_tb` (`userid`, `loginid`, `name`, `stateid`, `city`, `contno`, `emailid`, `username`, `password`, `status`) VALUES
(1, 2, 'thomas', 13, 'kasaragod', 9400822466, 'thomas@gmail.com', 'thomas', 'e3beaa8228a7f84e07eed0f5fc6d1700', '0'),
(2, 3, 'jomy', 13, 'pala', 8520147963, 'jomy@gmail.co', 'jomy', '827ccb0eea8a706c4c34a16891f84e7b', '0'),
(3, 4, 'joseph', 16, 'gudal', 7894560123, 'joseph@gmail.com', 'joseph', 'c0e02b4490451676cbb0101ec7f3fc3d', '0'),
(4, 5, 'kiran', 12, 'mangalore', 9495762466, 'kiran@gmail.com', 'kiran', 'ec9d3ccef787c1baa9efd799f8e4ed01', '0'),
(5, 6, 'sandeep', 7, 'patna', 9630258741, 'sandeep@gmail.com', 'sandeep', 'ac651c5b5166a53f9432bb812f6497a8', '0'),
(6, 7, 'Sooraj', 13, 'Aluva', 7410258963, 'sooraj@gmail.com', 'sooraj', '827ccb0eea8a706c4c34a16891f84e7b', '0'),
(7, 8, 'abey', 13, 'adoor', 7410258963, 'abey@gma.co', 'abey', 'da70dd2119565910578f63d16537bd8d', '0'),
(8, 9, 'Jayakrishan', 13, 'Kollam', 8520147963, 'jayan@gmail.com', 'jayan', 'd41d8cd98f00b204e9800998ecf8427e', '0'),
(9, 10, 'te', 3, 'kply', 0, 'teenuvtherese@amaljyothi.ac.in', 'teenuv', 'e35b7a9da89ea6afde029863f7092dd5', '0'),
(10, 11, 'asd', 2, 'def', 1234567890, 'we@gmail.co', 'qwee', 'b3f947379e88aab49c26f395aa0ebaee', '0');

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `seatid` int(20) NOT NULL,
  `carid` int(20) NOT NULL,
  `seat` int(20) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `stateid` int(10) NOT NULL,
  `state` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`stateid`, `state`) VALUES
(1, 'Andhra Pradesh'),
(2, 'Arunachal Pradesh'),
(3, 'Assam'),
(4, 'Bihar'),
(5, 'Chattisgarh'),
(6, 'Goa'),
(7, 'Gujarat'),
(8, 'Haryana'),
(9, 'Himachal Pradesh'),
(10, 'Jammu & Kashmir'),
(11, 'Jharkhand'),
(12, 'Karnataka'),
(13, 'Kerala'),
(14, 'Madhya Pradesh'),
(15, 'Maharashtra'),
(16, 'Manipur'),
(17, 'Meghalaya'),
(18, 'Mizoram'),
(19, 'Nagaland'),
(20, 'Odisha'),
(21, 'Punjab'),
(22, 'Rajasthan'),
(23, 'Sikkim'),
(24, 'Tamil Nadu'),
(25, 'Telangana'),
(26, 'Tripura'),
(27, 'Uttarakhand'),
(28, 'Uttar Pradesh'),
(29, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `transmission`
--

CREATE TABLE `transmission` (
  `transid` int(20) NOT NULL,
  `transmission` varchar(20) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transmission`
--

INSERT INTO `transmission` (`transid`, `transmission`, `status`) VALUES
(1, 'Manual', 1),
(2, 'Automatic', 1);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `typeid` int(20) NOT NULL,
  `type` varchar(30) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`typeid`, `type`, `status`) VALUES
(1, 'SUV', 1),
(2, 'MUV', 1),
(3, 'CUV', 1),
(4, 'Hatchback', 1),
(5, 'Sedan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `varients`
--

CREATE TABLE `varients` (
  `varid` int(20) NOT NULL,
  `carid` int(20) NOT NULL,
  `var_name` varchar(30) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car_models`
--
ALTER TABLE `car_models`
  ADD PRIMARY KEY (`carid`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`compid`);

--
-- Indexes for table `dimension`
--
ALTER TABLE `dimension`
  ADD PRIMARY KEY (`dimid`);

--
-- Indexes for table `displacement`
--
ALTER TABLE `displacement`
  ADD PRIMARY KEY (`dispid`);

--
-- Indexes for table `feedback_tb`
--
ALTER TABLE `feedback_tb`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `fuel`
--
ALTER TABLE `fuel`
  ADD PRIMARY KEY (`fuelid`);

--
-- Indexes for table `login_tb`
--
ALTER TABLE `login_tb`
  ADD PRIMARY KEY (`loginid`);

--
-- Indexes for table `register_tb`
--
ALTER TABLE `register_tb`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`seatid`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`stateid`);

--
-- Indexes for table `transmission`
--
ALTER TABLE `transmission`
  ADD PRIMARY KEY (`transid`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`typeid`);

--
-- Indexes for table `varients`
--
ALTER TABLE `varients`
  ADD PRIMARY KEY (`varid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car_models`
--
ALTER TABLE `car_models`
  MODIFY `carid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `compid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dimension`
--
ALTER TABLE `dimension`
  MODIFY `dimid` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `displacement`
--
ALTER TABLE `displacement`
  MODIFY `dispid` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback_tb`
--
ALTER TABLE `feedback_tb`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fuel`
--
ALTER TABLE `fuel`
  MODIFY `fuelid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login_tb`
--
ALTER TABLE `login_tb`
  MODIFY `loginid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `register_tb`
--
ALTER TABLE `register_tb`
  MODIFY `userid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `seat`
--
ALTER TABLE `seat`
  MODIFY `seatid` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `stateid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `transmission`
--
ALTER TABLE `transmission`
  MODIFY `transid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `typeid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `varients`
--
ALTER TABLE `varients`
  MODIFY `varid` int(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
