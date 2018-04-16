-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2016 at 12:23 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `point_table`
--
CREATE DATABASE IF NOT EXISTS `point_table` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `point_table`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `user_pass` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`user_id`, `user_name`, `user_pass`) VALUES
(1, 'walikhan', 'walikhan'),
(2, 'zainab', 'zainab');

-- --------------------------------------------------------

--
-- Table structure for table `match_table`
--

CREATE TABLE IF NOT EXISTS `match_table` (
  `team` varchar(50) NOT NULL,
  `match_1` varchar(50) NOT NULL,
  `match_2` varchar(50) NOT NULL,
  `match_3` varchar(50) NOT NULL,
  `match_4` varchar(50) NOT NULL,
  `match_5` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `match_table`
--

INSERT INTO `match_table` (`team`, `match_1`, `match_2`, `match_3`, `match_4`, `match_5`) VALUES
('Rangpur_riders', '2', '', '', '', ''),
('Rangpur_riders', '', '1', '', '', ''),
('Rangpur_riders', '', '', '', '', ''),
('barishal', '2', '1', '', '', ''),
('Rangpur_riders', '', '3', '', '', ''),
('bar', '3', '2', '', '', ''),
('dhaka', '1', '2', '0', '', ''),
('rajshahi', '1', '3', '', '', ''),
('raj', '6', '8', '', '', ''),
('dhaka', '5', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(100) NOT NULL AUTO_INCREMENT,
  `post_title` text NOT NULL,
  `post_date` varchar(55) NOT NULL,
  `post_author` text NOT NULL,
  `post_image` text NOT NULL,
  `post_keywords` text NOT NULL,
  `post_content` text NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_date`, `post_author`, `post_image`, `post_keywords`, `post_content`) VALUES
(13, 'Malala is going to school', '06-11-13', 'Abdul Wali', 'Malala_Yousafzai_picture (5).jpg', 'Malala Wishes, happy malala', 'HEllo world, this is my name which is not good....'),
(14, 'Happy Malala Yousafzai', '2013-06-10', 'Zainab', '303864_522685791082568_1997169373_n.jpg', 'Malala Happy, Malala Malala', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).'),
(15, 'Malala is a great girl in the world', '2013-06-10', 'Wali Khan', 'beautiful Malala Yousafzai (8).jpg', 'Malala Beauty, Malala is a nice, Malala', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n'),
(16, 'Angelina Julie Spoke About Malala', '2013-06-10', 'Wali Khan', 'Malala_Yousafzai_picture (7).jpg', 'Angelina Julie, Malala, Happy Malala', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n'),
(18, 'Malala is my girl', '06-10-13', 'Wali Khan', 'Malala_Yousafzai_picture (6).jpg', 'Zardari, Malala, News, Malala Hospital', 'I love Malala.'),
(20, 'Malala Latest News & stories', '06-11-13', 'Wali Khan', 'Malala_Yousafzai_picture (8).jpg', 'Malala news, latest malala, malala queen', 'Malala is one of the great girl in the world who sparked the world when she was not aware of the facts that led say out of coma, now she is very well and fine, I hope she will get soon..'),
(21, 'We Love Malala Yousafzai', '06-11-13', 'Ayesha', 'Malala_Yousafzai_picture (11).jpg', 'Malala, Malala Happy, Love Malala', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n'),
(22, 'Make Donation for Malala', '06-11-13', 'Wali Khan', '208053_293142770786966_1939892656_n.jpg', 'Malala, Malala Donation, Malala Happy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n'),
(23, 'New Post about Malala', '06-11-13', 'Wali Jan', '302503_291732397594670_689933028_n.jpg', 'Malala, Malala New, Malala posts', 'hello, this is a new great post about Malala, and this post was published directly from the admin panel. enjoy it. '),
(24, 'Malala malala malala', '06-11-13', 'Wali Khan', '303864_522685791082568_1997169373_n.jpg', 'malala', 'hello this is only malala, malala malala and again and gain malala...');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `SL no` int(1) NOT NULL,
  `team_name` varchar(50) NOT NULL,
  `win` int(3) NOT NULL,
  `loss` int(4) NOT NULL,
  `tie` int(5) NOT NULL,
  `net_run_rate` int(6) NOT NULL,
  `point` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`SL no`, `team_name`, `win`, `loss`, `tie`, `net_run_rate`, `point`) VALUES
(1, '\0', 1, 0, 0, 1, 2),
(1, 'Dhaka_Gladiators', 1, 0, 0, 1, 2),
(2, 'Rangpur_riders', 1, 0, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(50) NOT NULL,
  `mobile_no` varchar(50) NOT NULL,
  `payment` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `mobile_no`, `payment`, `email`) VALUES
('ASDF', '014752', 'bKash', 'manzim.pcc@gmail.com'),
('ASDF', '014752', 'bKash', 'manzim.pcc@gmail.com'),
('ASDF', '0144556', 'bKash', 'asdfhjk@gmail.com'),
('ruet', '014562', 'ucl', 'asdfhjk@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `password`) VALUES
('admin', '1234');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
