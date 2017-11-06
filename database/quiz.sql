-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2017 at 04:01 AM
-- Server version: 5.5.34
-- PHP Version: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) NOT NULL,
  `optionOne` varchar(50) NOT NULL,
  `optionTwo` varchar(50) NOT NULL,
  `optionThree` varchar(50) NOT NULL,
  `optionFour` varchar(50) NOT NULL,
  `correctAnswer` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `id_2` (`id`),
  KEY `id_3` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `question`, `optionOne`, `optionTwo`, `optionThree`, `optionFour`, `correctAnswer`, `category`) VALUES
(2, 'Who is the first and only person to win the Nobel Prize twice?', 'Albert Einstein', 'Marie Curie', 'Nikola Tesla', 'Max Planck', 'Marie Curie', 'History'),
(4, 'what is your name?', 'ram', 'kamal', 'shyam', 'hari', 'shyam', 'identity'),
(5, 'where do you live?', 'kathmandu', 'toronto', 'parauge', 'new york', 'toronto', 'place'),
(9, 'what is this?', 'aaaa', 'cccc', 'bbbb', 'eeeee', 'aaaa', 'hahaha'),
(11, 'Where am I?', 'kathmadnu', 'tokyo', 'athens', 'rome', 'rome', 'mystery');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE IF NOT EXISTS `result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(250) NOT NULL,
  `selectedAnswer` varchar(250) NOT NULL,
  `correctAnswer` varchar(250) NOT NULL,
  `marks` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=227 ;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `question`, `selectedAnswer`, `correctAnswer`, `marks`, `userId`) VALUES
(109, 'Who is the first and only person to win the Nobel Prize twice?', 'Albert Einstein', 'Marie Curie', 0, 5),
(110, 'what is your name?', 'hari', 'shyam', 0, 5),
(111, 'where do you live?', 'toronto', 'toronto', 10, 5),
(112, 'what is this?', 'aaaa', 'aaaa', 10, 5),
(113, 'Where am I?', 'athens', 'rome', 0, 5),
(221, 'Who is the first and only person to win the Nobel Prize twice?', 'Marie Curie', 'Marie Curie', 10, 14),
(222, 'what is your name?', 'shyam', 'shyam', 10, 14),
(223, 'where do you live?', 'parauge', 'toronto', 0, 14),
(224, 'what is this?', 'aaaa', 'aaaa', 10, 14),
(225, 'Where am I?', 'rome', 'rome', 10, 14),
(226, 'Where am I?', 'kathmadnu', 'rome', 0, 14);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `role`) VALUES
(5, 'kamal', '123', 'user'),
(10, 'sabin', '123', 'user'),
(11, 'hari', 'hars1', 'app'),
(13, 'sakar', '123', 'app'),
(14, 'admin', 'admin', 'admin'),
(15, 'sapana', '123', 'uer'),
(16, 'alpha', '123', 'app'),
(17, 'pogba', '123', 'app'),
(21, 'summer', '12324', 'app'),
(26, 'niraj', '999', 'admin'),
(27, 'sajjan', '123', 'app'),
(28, 'raj', '2344', 'user'),
(29, 'ram', '123', 'user');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
