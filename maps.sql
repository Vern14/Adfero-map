-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2015 at 02:42 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `maps`
--

-- --------------------------------------------------------

--
-- Table structure for table `map`
--

CREATE TABLE IF NOT EXISTS `map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `lat` varchar(255) NOT NULL,
  `long` varchar(255) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `text` varchar(2000) NOT NULL,
  `linkname` varchar(1000) NOT NULL,
  `link` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `map`
--

INSERT INTO `map` (`id`, `name`, `lat`, `long`, `image`, `text`, `linkname`, `link`) VALUES
(1, 'Washington Monument', '38.8895', '-77.0352', 'http://www.history.com/news/wp-content/uploads/2013/10/wsahington-monument.jpg', 'This is some text that I just wrote.This is some text that I just wrote. This is some text that I just wrote.This is some text that I just wrote. <br><br>This is some text that I just wrote.This is some text that I just wrote.This is some text that I just wrote.This is some text  that I just wrote.  <br>', 'National Park Service Website', 'http://www.nps.gov/wamo/index.htm'),
(2, 'Santa Monica Pier', '34.0086', '-118.4986', 'https://theresabridget.files.wordpress.com/2011/04/santa-monica-127.jpg', 'This is some text that I just wrote.This is some text that I just wrote. This is some text that I just wrote.This is some text that I just wrote. <br><br>This is some text that I just wrote.This is some text that I just wrote.This is some text that I just wrote.This is some text  that I just wrote.  <br>', 'Santa Monica Pier Website', 'http://santamonicapier.org/'),
(5, 'Central Park', '40.7833', '-73.9667', 'http://upload.wikimedia.org/wikipedia/commons/d/d9/Lower_Central_Park_Shot_5.JPG', 'This is some text that I just wrote.This is some text that I just wrote. This is some text that I just wrote.This is some text that I just wrote. <br><br>This is some text that I just wrote.This is some text that I just wrote.This is some text that I just wrote.This is some text  that I just wrote.  <br>', 'Central Park Website', 'http://www.centralparknyc.org/'),
(6, 'Disney World', '28.4186', '-81.5811', 'http://preventchildabusenj.org/wordpress/wp-content/uploads/2014/03/waltdisneyworld.jpg', 'This is some text that I just wrote.This is some text that I just wrote. This is some text that I just wrote.This is some text that I just wrote. <br><br>This is some text that I just wrote.This is some text that I just wrote.This is some text that I just wrote.This is some text  that I just wrote.  <br>', 'Walt Disney World Website', 'https://disneyworld.disney.go.com/'),
(7, 'Berkeley Pit', '46.0173', '-112.5102', 'http://cdni.wired.co.uk/1920x1280/a_c/Berkeley-Pit-wired_18apr13_getty_b.jpg', 'This is some text that I just wrote.This is some text that I just wrote. This is some text that I just wrote.This is some text that I just wrote. <br><br>This is some text that I just wrote.This is some text that I just wrote.This is some text that I just wrote.This is some text  that I just wrote.  <br>', 'Website about the Berkeley Pit', 'http://visitmt.com/listing/categories_NET/MoreInfo.aspx?SiteID=1&IDRRecordID=11138'),
(8, 'Dallas Zoo', '32.7441', '-96.8142', 'http://upload.wikimedia.org/wikipedia/commons/c/c6/Dallas_Zoo_Elephant.jpg', 'This is some text that I just wrote.This is some text that I just wrote. This is some text that I just wrote.This is some text that I just wrote. <br><br>This is some text that I just wrote.This is some text that I just wrote.This is some text that I just wrote.This is some text  that I just wrote.  <br>', 'Dallas Zoo Website', 'http://www.dallaszoo.com/'),
(9, 'Lake Harriet', '44.9214', '-93.3053', 'http://pics4.city-data.com/cpicc/cfiles21575.jpg', 'This is some text that I just wrote.This is some text that I just wrote. This is some text that I just wrote.This is some text that I just wrote. <br><br>This is some text that I just wrote.This is some text that I just wrote.This is some text that I just wrote.This is some text  that I just wrote.  <br>', 'Website about Lake Harriet', 'http://www.minneapolisparks.org/?PageID=4&parkid=266');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
