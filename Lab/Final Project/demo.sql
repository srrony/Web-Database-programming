-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2019 at 09:02 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `email` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `birthday` varchar(15) NOT NULL,
  `nationality` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `email`, `gender`, `birthday`, `nationality`) VALUES
(1, 'Farhad Hossain', 'tlcfarhad@gmail.com', 'Male', '1996-06-04', 'Bangladeshi'),
(2, 'Sobuj Ahmed', 'sobuj@gmail.com', 'Male', '1995-06-04', 'Bangladeshi'),
(3, 'Rony', 'rony@gmail.com', 'Male', '1996-06-04', 'Bangladeshi'),
(4, 'Sony', 'sony@gmail.com', 'Male', '1995-06-11', 'Bangladeshi');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(20) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `details` varchar(250) DEFAULT NULL,
  `filetemp` varchar(20) DEFAULT NULL,
  `filename` varchar(25) DEFAULT NULL,
  `filetype` varchar(10) DEFAULT NULL,
  `filepath` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `productName`, `price`, `details`, `filetemp`, `filename`, `filetype`, `filepath`) VALUES
(1, 'Jeans Pant', 500, 'This is jeans pant. Fully steach cotton.', 'D:Projects	mpphp1C9.', 'jeans.jpg', 'image/jpeg', 'img/jeans.jpg'),
(2, 'Watch', 249, 'This is leather watch', 'D:Projects	mpphpB3E8', 'leather.jpeg', 'image/jpeg', 'img/leather.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `stdinfo`
--

CREATE TABLE IF NOT EXISTS `stdinfo` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `stdinfo`
--

INSERT INTO `stdinfo` (`id`, `name`, `email`) VALUES
(2, 'Rony', 'rony@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE IF NOT EXISTS `student_info` (
  `id` int(15) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL,
  `program` varchar(30) NOT NULL,
  `age` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `role` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'Farhad Hossain', 'tlcfarhad@gmail.com', '12345', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
