-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2021 at 03:59 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `excel`
--

-- --------------------------------------------------------

--
-- Table structure for table `sheet1`
--

CREATE TABLE `sheet1` (
  `Бүртгэлийн_дугаар` varchar(50) DEFAULT NULL,
  `Зураг` varchar(50) DEFAULT NULL,
  `Элсэгч_овог` varchar(50) DEFAULT NULL,
  `Элсэгч_нэр` varchar(50) DEFAULT NULL,
  `Мэргэжил` varchar(50) DEFAULT NULL,
  `Регистрийн_дугаар` varchar(10) DEFAULT NULL,
  `Төгссөн_сургууль` varchar(100) DEFAULT NULL,
  `гэрчилгээний_дугаар` varchar(50) DEFAULT NULL,
  `Ерөнхий_шалгалтын_оноо` varchar(100) DEFAULT NULL,
  `Бичиг_баримтаа_эхээр_нь_өгсөн_эсэх` tinyint(4) NOT NULL DEFAULT 0,
  `Бүртгэлийн_хураамж` tinyint(4) NOT NULL DEFAULT 0,
  `Утасны_дугаар` int(8) DEFAULT NULL,
  `Төлбөр_төлөлт` varchar(50) DEFAULT NULL,
  `Гарын_үсэг` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
