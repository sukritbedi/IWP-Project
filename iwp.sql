-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 11, 2018 at 09:55 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iwp`
--

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
CREATE TABLE IF NOT EXISTS `info` (
  `name` varchar(20) NOT NULL,
  `phonenum` bigint(13) NOT NULL,
  `emailid` varchar(35) NOT NULL,
  `pass` varchar(25) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`name`, `phonenum`, `emailid`, `pass`, `type`) VALUES
('Sukrit Bedi', 9910917707, 'sukritbedi1@gmail.com', 'sukrit@16399', 0),
('Snigdha Chaturvedi', 9751199978, 'Snigdhachat@gmail.com', 'chaturvedi1997', 0),
('Admin Main', 0, 'admin@ticketdada.com', 'admin123', 1),
('pranjal shukla', 9910631251, 'pranjalshukla98@gmail.com', 'pranjal123', 0);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `mov_id` int(3) NOT NULL AUTO_INCREMENT,
  `mov_name` varchar(25) NOT NULL,
  `runtime` varchar(10) NOT NULL,
  `imdb_rat` float(2,1) NOT NULL,
  `rt_rat` int(3) NOT NULL,
  `age_rat` int(1) NOT NULL,
  `imgsrc` varchar(30) NOT NULL,
  PRIMARY KEY (`mov_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`mov_id`, `mov_name`, `runtime`, `imdb_rat`, `rt_rat`, `age_rat`, `imgsrc`) VALUES
(1, 'Crazy Rich Asians', '2hr', 7.5, 93, 2, 'Crazy_Rich_Asians_poster.png'),
(2, 'Game Night', '1hr 40min', 7.0, 84, 1, 'Game-Night-New-film-poster.jpg'),
(3, 'Annihilation', '2hr', 6.9, 79, 1, 'annihilation.jpg'),
(4, 'Ant-Man and the Wasp', '2hr 5min', 7.4, 88, 2, 'antman_and_the_wasp.jpg'),
(5, 'A Quite Place', '1hr 30min', 7.7, 95, 1, 'aquietplace.jpg'),
(6, 'Black Panther', '2hr 15min', 7.4, 97, 0, 'black_panther.jpg'),
(7, 'Black-K-Klansman', '2hr 16min', 8.0, 95, 1, 'blackkklansman.jpg'),
(8, 'Eighth Grade', '1hr 36min', 8.2, 98, 0, 'eighth_grade.jpg'),
(9, 'Gemini', '2hr 32min', 6.0, 79, 2, 'gemini.jpg'),
(10, 'Hereditary', '2hr 7min', 7.3, 89, 1, 'hereditary.jpg'),
(11, 'Leave no Trace', '2hr', 7.7, 100, 2, 'leave-no-trace.jpg'),
(12, 'Mandelines', '1hr 30min', 5.9, 62, 0, 'mandelines_mandeline.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `show_timings`
--

DROP TABLE IF EXISTS `show_timings`;
CREATE TABLE IF NOT EXISTS `show_timings` (
  `mov_id` int(3) NOT NULL,
  `cin_id` int(3) NOT NULL,
  `time` varchar(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `show_timings`
--

INSERT INTO `show_timings` (`mov_id`, `cin_id`, `time`) VALUES
(1, 1, '12:30'),
(1, 2, '12:30');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
