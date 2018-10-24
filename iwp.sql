-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 24, 2018 at 04:55 PM
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
  `cust_id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `phonenum` bigint(13) NOT NULL,
  `emailid` varchar(35) NOT NULL,
  `pass` varchar(25) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cust_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`cust_id`, `name`, `phonenum`, `emailid`, `pass`, `type`) VALUES
(1, 'Sukrit Bedi', 9910917707, 'sukritbedi1@gmail.com', 'sukrit@16399', 0),
(2, 'Snigdha Chaturvedi', 9751199978, 'snigdhachat@gmail.com', 'chaturvedi1997', 1),
(3, 'Admin Main', 0, 'admin@ticketdada.com', 'admin123', 1),
(4, 'Pranjal Shukla', 9910631251, 'pranjalshukla98@gmail.com', 'pranjal123', 0);

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
  `descrip` varchar(400) NOT NULL,
  PRIMARY KEY (`mov_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`mov_id`, `mov_name`, `runtime`, `imdb_rat`, `rt_rat`, `age_rat`, `imgsrc`, `descrip`) VALUES
(1, 'Crazy Rich Asians', '2hr', 7.5, 93, 2, 'Crazy_Rich_Asians_poster.png', 'This contemporary romantic comedy, based on a global bestseller, follows native New Yorker Rachel Chu to Singapore to meet her boyfriend\'s family.'),
(2, 'Game Night', '1hr 40min', 7.0, 84, 1, 'Game-Night-New-film-poster.jpg', 'A group of friends who meet regularly for game nights find themselves entangled in a real-life mystery when the shady brother of one of them is seemingly kidnapped by dangerous gangsters.'),
(3, 'Annihilation', '2hr', 6.9, 79, 1, 'annihilation.jpg', 'A biologist signs up for a dangerous, secret expedition into a mysterious zone where the laws of nature don\'t apply.'),
(4, 'Ant-Man and the Wasp', '2hr 5min', 7.4, 80, 2, 'antman_and_the_wasp.jpg', 'As Scott Lang balances being both a Super Hero and a father, Hope van Dyne and Dr. Hank Pym present an urgent new mission that finds the Ant-Man fighting alongside The Wasp to uncover secrets from their past.'),
(5, 'A Quite Place', '1hr 30min', 7.7, 95, 1, 'aquietplace.jpg', 'In a post-apocalyptic world, a family is forced to live in silence while hiding from monsters with ultra-sensitive hearing.'),
(6, 'Black Panther', '2hr 15min', 7.4, 97, 0, 'black_panther.jpg', 'T\'Challa, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new future and must confront a challenger from his country\'s past.'),
(7, 'Black-K-Klansman', '2hr 16min', 8.0, 95, 1, 'blackkklansman.jpg', 'Ron Stallworth, an African American police officer from Colorado Springs, CO, successfully manages to infiltrate the local Ku Klux Klan branch with the help of a Jewish surrogate who eventually becomes its leader. Based on actual events.'),
(8, 'Eighth Grade', '1hr 36min', 8.2, 97, 0, 'eighth_grade.jpg', 'An introverted teenage girl tries to survive the last week of her disastrous eighth grade year before leaving to start high school.'),
(9, 'Gemini', '2hr 32min', 6.0, 79, 2, 'gemini.jpg', 'A heinous crime tests the complex relationship between a tenacious personal assistant and her Hollywood starlet boss. As the assistant unravels the mystery, she must confront her own understanding of friendship, truth and celebrity.'),
(10, 'Hereditary', '2hr 7min', 7.3, 89, 1, 'hereditary.jpg', 'After the family matriarch passes away, a grieving family is haunted by tragic and disturbing occurrences, and begin to unravel dark secrets.'),
(11, 'Leave no Trace', '2hr', 7.7, 100, 2, 'leave-no-trace.jpg', 'A father and his thirteen year-old daughter are living an ideal existence in a vast urban park in Portland, Oregon, when a small mistake derails their lives forever.'),
(12, 'Madeline\'s Madeline\r\n', '1hr 30min', 5.9, 62, 0, 'mandelines_mandeline.jpg', 'When the workshop\'s ambitious director pushes the teenager to weave her rich interior world and troubled history with her mother into their collective art, the lines between performance and reality begin to blur.');

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

-- --------------------------------------------------------

--
-- Table structure for table `time_detail`
--

DROP TABLE IF EXISTS `time_detail`;
CREATE TABLE IF NOT EXISTS `time_detail` (
  `cin_id` int(1) NOT NULL,
  `time` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_detail`
--

INSERT INTO `time_detail` (`cin_id`, `time`) VALUES
(1, '12:50'),
(1, '1:40'),
(1, '2:30'),
(1, '3:20'),
(1, '4:10'),
(2, '11:50'),
(2, '12:40'),
(2, '1:30'),
(2, '2:20'),
(2, '3:10');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `tran_id` int(8) NOT NULL AUTO_INCREMENT,
  `cust_email` varchar(35) NOT NULL,
  `mov_id` int(3) NOT NULL,
  `cinema` int(1) NOT NULL,
  `timest` varchar(55) NOT NULL,
  `mov_time` varchar(5) NOT NULL,
  PRIMARY KEY (`tran_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`tran_id`, `cust_email`, `mov_id`, `cinema`, `timest`, `mov_time`) VALUES
(1, 'sukritbedi1@gmail.com', 2, 1, '2018-10-22 03:09:23', '4:10'),
(2, 'sukritbedi1@gmail.com', 1, 1, '2018-10-22 04:34:38', '1:40'),
(3, 'snigdhachat@gmail.com', 3, 2, '2018-10-23 06:25:18', '3:20');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
