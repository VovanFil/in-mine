-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2017 at 09:51 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oc_lazio2.3`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(1, 2, 'plaza', 'themes', '', 'plaza', '', 'plaza', 'plaza', 222, 3516, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', '2MO4q9MfHswsfZffaru1kmLDK82v6rVq4fdU96ddiscC2VHTYgEXpLOavW0xvMzwDGKa10m8oVOciPpYTHxIFUamSZ74qQhrIST3caO2cKL9LEbw3aYvTxsNcPmof8sql4Qs0VqW104OHlsLZ9dWiNt7X9vXJGQKHYcDnxtczpnWiEz57hsCnY3Cjp31P2KNJoatneCEo2EHl9GutCbSRP7J11FWiDiYWOhi9zrsooA1D4H3ZqpS2R1khAFUnchl', 1, '2017-08-09 08:06:18', '2017-08-09 08:06:18'),
(2, 'Default', 'erkAlYyYZgyKxp2r1nayRw3rLXdLSCeljYHh5cG9pLviqXagtjslnbASIoWxiRgCZjasGMxsRskLlVbvfPtIXrTsiBY8QE2Zaw2HYtdCtDGkGn2zogARxrwuH1jtUg4YhSL86tejLnxkFo3YN95UkBfXSvY0r1zCD203qXSyYnlR7tq6OXmfljWmpuZgI1YeRaYigDrsuekK4OJkDf2iaM5BxRRsqxcucN3oX3GYvVdkEbKTGqNd6cyqfmUFN96e', 1, '2017-08-21 09:24:44', '2017-08-21 09:24:44'),
(3, 'Default', 'btGG5zdiwgbmNPPQEmLFGdSFzcfkhCejg1tj2yKxGArGt3WcCgbboHGLHzXu05wScKWjO7g6BpknuqxaKJmvALxUIyxZ1w429Rp1QjDA6XZ0AI2Cs3z1tpho2YU2KQwwH3xGMDE84AgdBinzvBaCJLJVFkEpy1h3g0hSeEyL8gfbCTSGKuIWhOK23vDN2ZU4cJ7B8TgcLU4mEPnWGIveeLMQkGJtxDQLFwwXnr5MGbWbIRUjDLp4vDyGAgx69QPP', 1, '2017-09-08 08:41:45', '2017-09-08 08:41:45');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_article`
--

CREATE TABLE `oc_article` (
  `article_id` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_article`
--

INSERT INTO `oc_article` (`article_id`, `sort_order`, `status`, `date_added`, `date_modified`, `image`, `author`) VALUES
(1, 1, 1, '2017-08-09 14:10:54', '2017-09-05 21:36:19', 'catalog/blog/blog1.jpg', 'Plazathemes'),
(2, 1, 1, '2017-08-09 14:11:00', '2017-09-05 21:36:47', 'catalog/blog/blog2.jpg', 'Plazathemes'),
(3, 1, 1, '2017-08-09 14:11:05', '2017-09-05 21:37:34', 'catalog/blog/blog3.jpg', 'Plazathemes'),
(4, 1, 1, '2017-08-09 14:11:05', '2017-09-05 21:38:22', 'catalog/blog/blog1.jpg', 'Plazathemes');

-- --------------------------------------------------------

--
-- Table structure for table `oc_article_description`
--

CREATE TABLE `oc_article_description` (
  `article_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `intro_text` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_article_description`
--

INSERT INTO `oc_article_description` (`article_id`, `language_id`, `name`, `description`, `intro_text`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(1, 1, 'Aypi non habent claritatem  insitam', '&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;br&gt;&lt;/p&gt;', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis.', 'Aypi non habent claritatem  insitam', '', ''),
(1, 2, 'Aypi non habent claritatem  insitam.', '&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;br&gt;&lt;/p&gt;', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis.', 'Aypi non habent claritatem  insitam', '', ''),
(2, 1, 'Bypi non habent claritatem  insitam', '&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;br&gt;&lt;/p&gt;', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis.', 'Bypi non habent claritatem  insitam', '', ''),
(2, 2, 'Bypi non habent claritatem  insitam.', '&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;br&gt;&lt;/p&gt;', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis.', 'Bypi non habent claritatem  insitam', '', ''),
(3, 1, 'Cypi non habent claritatem  insitam', '&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;br&gt;&lt;/p&gt;', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis.', 'Cypi non habent claritatem  insitam', '', ''),
(3, 2, 'Cypi non habent claritatem  insitam', '&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;br&gt;&lt;/p&gt;', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis.', 'Cypi non habent claritatem  insitam', '', ''),
(4, 1, 'Dypi non habent claritatem  insitam', '&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;br&gt;&lt;/p&gt;', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis.', 'Dypi non habent claritatem  insitam', '', ''),
(4, 2, 'Dypi non habent claritatem  insitam', '&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;br&gt;&lt;/p&gt;', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis.', 'Dypi non habent claritatem  insitam', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_article_list`
--

CREATE TABLE `oc_article_list` (
  `article_list_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_article_list`
--

INSERT INTO `oc_article_list` (`article_list_id`, `name`, `status`) VALUES
(1, 'Blog', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_article_to_list`
--

CREATE TABLE `oc_article_to_list` (
  `article_list_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_article_to_list`
--

INSERT INTO `oc_article_to_list` (`article_list_id`, `article_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_article_to_store`
--

CREATE TABLE `oc_article_to_store` (
  `article_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_article_to_store`
--

INSERT INTO `oc_article_to_store` (`article_id`, `store_id`) VALUES
(1, 0),
(1, 5),
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 0),
(2, 5),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(3, 0),
(3, 5),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(4, 0),
(4, 5),
(4, 1),
(4, 2),
(4, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed'),
(1, 2, 'Description'),
(2, 2, 'No. of Cores'),
(4, 2, 'test 1'),
(5, 2, 'test 2'),
(6, 2, 'test 3'),
(7, 2, 'test 4'),
(8, 2, 'test 5'),
(9, 2, 'test 6'),
(10, 2, 'test 7'),
(11, 2, 'test 8'),
(3, 2, 'Clockspeed');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(3, 2, 'Memory'),
(4, 2, 'Technical'),
(5, 2, 'Motherboard'),
(6, 2, 'Processor');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1),
(9, 'Brand Slider', 1),
(10, 'Brand Slider2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(79, 7, 1, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(87, 6, 1, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(94, 8, 1, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
(95, 8, 1, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
(96, 8, 1, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
(91, 8, 1, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
(92, 8, 1, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
(93, 8, 1, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
(88, 8, 1, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
(89, 8, 1, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
(90, 8, 1, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
(80, 7, 1, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(97, 8, 1, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
(98, 8, 1, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0),
(99, 7, 2, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(100, 6, 2, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(101, 8, 2, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
(102, 8, 2, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
(103, 8, 2, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
(104, 8, 2, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
(105, 8, 2, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
(106, 8, 2, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
(107, 8, 2, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
(108, 8, 2, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
(109, 8, 2, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
(110, 7, 2, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(111, 8, 2, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
(112, 8, 2, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0),
(142, 9, 1, 'Brand6', '#', 'catalog/brand/8.jpg', 0),
(141, 9, 1, 'Brand5', '#', 'catalog/brand/7.jpg', 0),
(140, 9, 1, 'Brand4', '#', 'catalog/brand/6.jpg', 0),
(139, 9, 1, 'Brand3', '#', 'catalog/brand/5.jpg', 0),
(138, 9, 1, 'Brand2', '#', 'catalog/brand/4.jpg', 0),
(137, 9, 1, 'Brand1', '#', 'catalog/brand/3.jpg', 0),
(136, 9, 1, 'Brand', '#', 'catalog/brand/1.jpg', 0),
(120, 10, 1, 'Brand', '#', 'catalog/brand/9.jpg', 0),
(121, 10, 1, 'Brand1', '#', 'catalog/brand/10.jpg', 0),
(122, 10, 1, 'Brand2', '#', 'catalog/brand/11.jpg', 0),
(123, 10, 1, 'Brand3', '#', 'catalog/brand/12.jpg', 0),
(124, 10, 1, 'Brand4', '#', 'catalog/brand/13.jpg', 0),
(125, 10, 1, 'Brand5', '#', 'catalog/brand/14.jpg', 0),
(126, 10, 1, 'Brand6', '#', 'catalog/brand/11.jpg', 0),
(127, 10, 1, 'Brand7', '#', 'catalog/brand/12.jpg', 0),
(128, 10, 2, 'Brand', '#', 'catalog/brand/9.jpg', 0),
(129, 10, 2, 'Brand1', '#', 'catalog/brand/10.jpg', 0),
(130, 10, 2, 'Brand2', '#', 'catalog/brand/11.jpg', 0),
(131, 10, 2, 'Brand3', '#', 'catalog/brand/12.jpg', 0),
(132, 10, 2, 'Brand4', '#', 'catalog/brand/13.jpg', 0),
(133, 10, 2, 'Brand5', '#', 'catalog/brand/14.jpg', 0),
(134, 10, 2, 'Brand6', '#', 'catalog/brand/13.jpg', 0),
(135, 10, 2, 'Brand7', '#', 'catalog/brand/10.jpg', 0),
(143, 9, 1, 'Brand7', '#', 'catalog/brand/3.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_cart`
--

CREATE TABLE `oc_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_cart`
--

INSERT INTO `oc_cart` (`cart_id`, `api_id`, `customer_id`, `session_id`, `product_id`, `recurring_id`, `option`, `quantity`, `date_added`) VALUES
(8, 0, 1, '31f38c164a355ec79490e1d5d1', 28, 0, '[]', 1, '2017-09-08 14:56:48');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `thumbnail_image` varchar(255) DEFAULT NULL,
  `homethumb_image` varchar(255) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`, `thumbnail_image`, `homethumb_image`, `featured`) VALUES
(113, '', 112, 0, 1, 0, 1, '2017-09-11 10:31:04', '2017-09-11 10:31:04', NULL, NULL, 0),
(112, '', 0, 0, 1, 0, 1, '2017-09-11 10:29:42', '2017-09-11 10:29:42', 'catalog/icon/icon4.png', 'catalog/category/feature4.jpg', 1),
(111, '', 106, 0, 1, 0, 1, '2017-09-11 10:28:19', '2017-09-11 10:28:19', NULL, NULL, 0),
(90, '', 0, 0, 1, 0, 1, '2017-09-11 09:41:32', '2017-09-11 09:41:32', 'catalog/icon/icon.png', 'catalog/category/feature.jpg', 1),
(91, '', 90, 0, 1, 0, 1, '2017-09-11 09:42:58', '2017-09-11 09:42:58', NULL, NULL, 0),
(92, '', 90, 0, 1, 0, 1, '2017-09-11 09:44:12', '2017-09-11 09:44:12', NULL, NULL, 0),
(93, '', 90, 0, 1, 0, 1, '2017-09-11 09:45:24', '2017-09-11 09:45:24', NULL, NULL, 0),
(222, '', 93, 0, 1, 0, 1, '2017-11-07 09:40:13', '2017-11-07 09:40:13', NULL, NULL, 0),
(95, '', 90, 0, 1, 0, 1, '2017-09-11 09:52:36', '2017-09-11 09:52:36', NULL, NULL, 0),
(96, '', 0, 0, 1, 0, 1, '2017-09-11 09:53:43', '2017-09-11 09:53:43', 'catalog/icon/icon1.png', 'catalog/category/feature1.jpg', 1),
(97, '', 96, 0, 1, 0, 1, '2017-09-11 09:55:06', '2017-09-11 09:55:06', NULL, NULL, 0),
(98, '', 96, 0, 1, 0, 1, '2017-09-11 09:56:24', '2017-09-11 09:56:24', NULL, NULL, 0),
(99, '', 96, 0, 1, 0, 1, '2017-09-11 09:58:24', '2017-09-11 09:58:24', NULL, NULL, 0),
(100, '', 96, 0, 1, 0, 1, '2017-09-11 10:03:10', '2017-09-11 10:03:10', NULL, NULL, 0),
(101, '', 0, 0, 1, 0, 1, '2017-09-11 10:05:06', '2017-09-11 10:05:06', 'catalog/icon/icon2.png', 'catalog/category/feature2.jpg', 1),
(102, '', 101, 0, 1, 0, 1, '2017-09-11 10:06:44', '2017-09-11 10:06:44', NULL, NULL, 0),
(103, '', 101, 0, 1, 0, 1, '2017-09-11 10:07:58', '2017-09-11 10:07:58', NULL, NULL, 0),
(104, '', 101, 0, 1, 0, 1, '2017-09-11 10:09:04', '2017-09-11 10:09:04', NULL, NULL, 0),
(105, '', 101, 0, 1, 0, 1, '2017-09-11 10:15:20', '2017-09-11 10:15:20', NULL, NULL, 0),
(106, '', 0, 0, 1, 0, 1, '2017-09-11 10:19:59', '2017-09-11 10:19:59', 'catalog/icon/icon3.png', 'catalog/category/feature3.jpg', 1),
(107, '', 106, 0, 1, 0, 1, '2017-09-11 10:22:48', '2017-09-11 10:22:48', NULL, NULL, 0),
(108, '', 106, 0, 1, 0, 1, '2017-09-11 10:24:00', '2017-09-11 10:24:00', NULL, NULL, 0),
(109, '', 106, 0, 1, 0, 1, '2017-09-11 10:25:13', '2017-09-11 10:25:13', NULL, NULL, 0),
(110, '', 106, 0, 1, 0, 1, '2017-09-11 10:26:31', '2017-09-11 10:26:31', NULL, NULL, 0),
(114, '', 112, 0, 1, 0, 1, '2017-09-11 10:32:22', '2017-09-11 10:32:22', NULL, NULL, 0),
(115, '', 112, 0, 1, 0, 1, '2017-09-11 10:37:11', '2017-09-11 10:37:11', NULL, NULL, 0),
(116, '', 112, 0, 1, 0, 1, '2017-09-11 11:08:15', '2017-09-11 11:08:15', NULL, NULL, 0),
(117, '', 112, 0, 1, 0, 1, '2017-09-11 11:15:04', '2017-09-11 11:15:04', NULL, NULL, 0),
(118, '', 0, 0, 1, 0, 1, '2017-09-11 11:18:50', '2017-09-11 11:18:50', 'catalog/icon/icon5.png', '', 0),
(119, '', 0, 0, 1, 0, 1, '2017-09-11 11:20:15', '2017-09-11 11:20:15', 'catalog/icon/icon6.png', 'catalog/category/feature5.jpg', 1),
(120, '', 119, 0, 1, 0, 1, '2017-09-11 11:21:51', '2017-09-11 11:21:51', NULL, NULL, 0),
(121, '', 119, 0, 1, 0, 1, '2017-09-11 11:22:58', '2017-09-11 11:22:58', NULL, NULL, 0),
(122, '', 119, 0, 1, 0, 1, '2017-09-11 11:24:09', '2017-09-11 11:24:09', NULL, NULL, 0),
(123, '', 119, 0, 1, 0, 1, '2017-09-11 11:25:15', '2017-09-11 11:25:15', NULL, NULL, 0),
(124, '', 119, 0, 1, 0, 1, '2017-09-11 11:26:21', '2017-09-11 11:26:21', NULL, NULL, 0),
(125, '', 0, 0, 1, 0, 1, '2017-09-11 13:53:59', '2017-09-11 13:53:59', 'catalog/icon/icon7.png', 'catalog/category/feature6.jpg', 1),
(126, '', 125, 0, 1, 0, 1, '2017-09-11 14:00:07', '2017-09-11 14:00:07', NULL, NULL, 0),
(127, '', 125, 0, 1, 0, 1, '2017-09-11 14:06:25', '2017-09-11 14:06:25', NULL, NULL, 0),
(128, '', 125, 0, 1, 0, 1, '2017-09-11 14:10:49', '2017-09-11 14:10:49', NULL, NULL, 0),
(129, '', 125, 0, 1, 0, 1, '2017-09-11 14:12:32', '2017-09-11 14:12:32', NULL, NULL, 0),
(130, '', 125, 0, 1, 0, 1, '2017-09-11 14:13:07', '2017-09-11 14:13:07', NULL, NULL, 0),
(131, '', 0, 0, 1, 0, 1, '2017-09-11 14:14:48', '2017-09-11 14:14:48', 'catalog/icon/icon8.png', 'catalog/category/feature7.jpg', 1),
(132, '', 131, 0, 1, 0, 1, '2017-09-11 14:15:19', '2017-09-11 14:15:19', NULL, NULL, 0),
(133, '', 131, 0, 1, 0, 1, '2017-09-11 14:16:26', '2017-09-11 14:16:26', NULL, NULL, 0),
(134, '', 131, 0, 1, 0, 1, '2017-09-11 14:16:54', '2017-09-11 14:16:54', NULL, NULL, 0),
(135, '', 131, 0, 1, 0, 1, '2017-09-11 14:18:04', '2017-09-11 14:18:04', NULL, NULL, 0),
(136, '', 131, 0, 1, 0, 1, '2017-09-11 14:19:26', '2017-09-11 14:19:26', NULL, NULL, 0),
(137, '', 0, 0, 1, 0, 1, '2017-09-11 14:21:24', '2017-09-11 14:21:24', 'catalog/icon/icon9.png', '', 0),
(138, '', 0, 0, 1, 0, 1, '2017-09-11 14:22:48', '2017-09-11 14:22:48', 'catalog/icon/icon10.png', 'catalog/category/brand5.jpg', 0),
(144, '', 0, 0, 1, 0, 1, '2017-10-18 15:44:10', '2017-10-24 16:59:29', '', 'catalog/category/feature-home5.jpg', 1),
(145, '', 144, 0, 1, 0, 1, '2017-10-18 15:51:39', '2017-10-24 16:46:49', NULL, NULL, 0),
(146, '', 144, 0, 1, 0, 1, '2017-10-18 15:52:49', '2017-10-24 16:47:00', NULL, NULL, 0),
(147, '', 144, 0, 1, 0, 1, '2017-10-18 15:54:05', '2017-10-24 16:47:13', NULL, NULL, 0),
(148, '', 144, 0, 1, 0, 1, '2017-10-18 15:55:11', '2017-10-24 16:47:25', NULL, NULL, 0),
(149, '', 0, 0, 1, 0, 1, '2017-10-18 15:56:09', '2017-10-24 16:58:48', '', 'catalog/category/feature1-home5.jpg', 1),
(150, '', 149, 0, 1, 0, 1, '2017-10-18 15:57:32', '2017-10-24 16:47:53', NULL, NULL, 0),
(151, '', 149, 0, 1, 0, 1, '2017-10-18 15:58:35', '2017-10-24 16:48:08', NULL, NULL, 0),
(152, '', 149, 0, 1, 0, 1, '2017-10-18 15:59:47', '2017-10-24 16:48:21', NULL, NULL, 0),
(153, '', 149, 0, 1, 0, 1, '2017-10-18 16:01:11', '2017-10-24 16:48:32', NULL, NULL, 0),
(154, '', 0, 0, 1, 0, 1, '2017-10-18 16:04:26', '2017-10-24 16:58:34', '', 'catalog/category/feature2-home5.jpg', 1),
(155, '', 154, 0, 1, 0, 1, '2017-10-18 16:04:54', '2017-10-24 16:49:00', NULL, NULL, 0),
(156, '', 154, 0, 1, 0, 1, '2017-10-18 16:06:29', '2017-10-24 16:49:33', NULL, NULL, 0),
(157, '', 154, 0, 1, 0, 1, '2017-10-18 16:11:25', '2017-10-24 16:49:46', NULL, NULL, 0),
(158, '', 154, 0, 1, 0, 1, '2017-10-18 16:12:30', '2017-10-24 16:49:55', NULL, NULL, 0),
(159, '', 0, 0, 1, 0, 1, '2017-10-18 16:13:56', '2017-10-24 16:50:21', '', 'catalog/category/feature3-home5.jpg', 1),
(160, '', 159, 0, 1, 0, 1, '2017-10-18 16:14:33', '2017-10-24 16:50:36', NULL, NULL, 0),
(161, '', 159, 0, 1, 0, 1, '2017-10-18 16:15:59', '2017-10-24 16:50:45', NULL, NULL, 0),
(162, '', 159, 0, 1, 0, 1, '2017-10-18 16:24:31', '2017-10-24 16:50:55', NULL, NULL, 0),
(163, '', 159, 0, 1, 0, 1, '2017-10-18 16:28:13', '2017-10-24 16:51:06', NULL, NULL, 0),
(164, '', 159, 0, 1, 0, 1, '2017-10-18 16:31:03', '2017-10-24 16:51:16', NULL, NULL, 0),
(165, '', 0, 0, 1, 0, 1, '2017-10-18 16:32:09', '2017-10-24 17:00:50', '', 'catalog/category/feature4-home5.jpg', 1),
(166, '', 165, 0, 1, 0, 1, '2017-10-18 16:32:54', '2017-10-24 16:51:53', NULL, NULL, 0),
(167, '', 165, 0, 1, 0, 1, '2017-10-18 16:36:19', '2017-10-24 16:52:06', NULL, NULL, 0),
(168, '', 165, 0, 1, 0, 1, '2017-10-18 16:41:21', '2017-10-24 16:52:16', NULL, NULL, 0),
(169, '', 165, 0, 1, 0, 1, '2017-10-18 16:42:48', '2017-10-24 16:52:26', NULL, NULL, 0),
(170, '', 165, 0, 1, 0, 1, '2017-10-18 16:44:46', '2017-10-24 16:52:37', NULL, NULL, 0),
(171, '', 0, 0, 1, 0, 1, '2017-10-18 16:52:41', '2017-10-24 17:00:14', NULL, NULL, 0),
(172, '', 0, 0, 1, 0, 1, '2017-10-18 16:53:59', '2017-10-24 17:00:34', '', 'catalog/category/feature6-home5.jpg', 1),
(173, '', 172, 0, 1, 0, 1, '2017-10-18 16:55:11', '2017-10-24 16:53:31', NULL, NULL, 0),
(174, '', 172, 0, 1, 0, 1, '2017-10-18 16:56:45', '2017-10-24 16:53:44', NULL, NULL, 0),
(175, '', 172, 0, 1, 0, 1, '2017-10-18 16:58:42', '2017-10-24 16:54:06', NULL, NULL, 0),
(176, '', 172, 0, 1, 0, 1, '2017-10-18 17:00:51', '2017-10-24 16:54:20', NULL, NULL, 0),
(177, '', 172, 0, 1, 0, 1, '2017-10-18 17:01:22', '2017-10-24 16:54:32', NULL, NULL, 0),
(178, '', 172, 0, 1, 0, 1, '2017-10-18 17:29:52', '2017-10-24 16:54:42', NULL, NULL, 0),
(179, '', 0, 0, 1, 0, 1, '2017-10-19 08:53:12', '2017-10-24 16:59:19', '', 'catalog/category/feature5-home5.jpg', 1),
(180, '', 179, 0, 1, 0, 1, '2017-10-19 08:54:55', '2017-10-24 16:55:20', NULL, NULL, 0),
(181, '', 179, 0, 1, 0, 1, '2017-10-19 08:56:50', '2017-10-24 16:55:31', NULL, NULL, 0),
(182, '', 179, 0, 1, 0, 1, '2017-10-19 08:58:12', '2017-10-24 16:55:46', NULL, NULL, 0),
(183, '', 179, 0, 1, 0, 1, '2017-10-19 09:00:51', '2017-10-24 16:55:56', NULL, NULL, 0),
(184, '', 179, 0, 1, 0, 1, '2017-10-19 09:01:16', '2017-10-24 16:56:08', NULL, NULL, 0),
(185, '', 0, 0, 1, 0, 1, '2017-10-19 09:04:41', '2017-10-24 16:58:57', '', 'catalog/category/feature7-home5.jpg', 1),
(186, '', 185, 0, 1, 0, 1, '2017-10-19 09:06:57', '2017-10-24 16:56:42', NULL, NULL, 0),
(187, '', 185, 0, 1, 0, 1, '2017-10-19 09:07:27', '2017-10-24 16:57:05', NULL, NULL, 0),
(188, '', 185, 0, 1, 0, 1, '2017-10-19 09:12:54', '2017-10-19 09:12:54', NULL, NULL, 0),
(189, '', 185, 0, 1, 0, 1, '2017-10-19 09:13:22', '2017-10-24 16:57:20', NULL, NULL, 0),
(190, '', 185, 0, 1, 0, 1, '2017-10-19 09:15:10', '2017-10-24 16:57:53', NULL, NULL, 0),
(191, '', 0, 0, 1, 0, 1, '2017-10-19 09:18:01', '2017-10-24 16:58:18', NULL, NULL, 0),
(192, '', 0, 0, 1, 0, 1, '2017-10-25 16:18:08', '2017-10-25 16:18:08', NULL, NULL, 0),
(193, '', 0, 0, 1, 0, 1, '2017-10-25 16:20:12', '2017-10-25 16:20:12', NULL, NULL, 0),
(194, '', 0, 0, 1, 0, 1, '2017-10-25 16:22:38', '2017-10-25 16:22:38', NULL, NULL, 0),
(195, '', 194, 0, 1, 0, 1, '2017-10-25 16:24:49', '2017-10-25 16:24:49', NULL, NULL, 0),
(196, '', 194, 0, 1, 0, 1, '2017-10-25 16:25:52', '2017-10-25 16:25:52', NULL, NULL, 0),
(197, '', 194, 0, 1, 0, 1, '2017-10-25 16:27:05', '2017-10-25 16:27:05', NULL, NULL, 0),
(198, '', 194, 0, 1, 0, 1, '2017-10-25 16:28:54', '2017-10-25 16:28:54', NULL, NULL, 0),
(199, '', 0, 0, 1, 0, 1, '2017-10-25 16:29:54', '2017-10-25 16:29:54', NULL, NULL, 0),
(200, '', 199, 0, 1, 0, 1, '2017-10-25 16:31:08', '2017-10-25 16:31:08', NULL, NULL, 0),
(201, '', 199, 0, 1, 0, 1, '2017-10-25 16:32:05', '2017-10-25 16:32:05', NULL, NULL, 0),
(202, '', 199, 0, 1, 0, 1, '2017-10-25 16:33:19', '2017-10-25 16:33:19', NULL, NULL, 0),
(203, '', 199, 0, 1, 0, 1, '2017-10-25 16:34:43', '2017-10-25 16:34:43', NULL, NULL, 0),
(204, '', 0, 0, 1, 0, 1, '2017-10-25 16:36:30', '2017-10-25 16:36:30', NULL, NULL, 0),
(205, '', 0, 0, 1, 0, 1, '2017-10-25 16:37:44', '2017-10-25 16:37:44', NULL, NULL, 0),
(206, '', 205, 0, 1, 0, 1, '2017-10-25 16:39:21', '2017-10-25 16:39:21', NULL, NULL, 0),
(207, '', 205, 0, 1, 0, 1, '2017-10-25 16:40:41', '2017-10-25 16:40:41', NULL, NULL, 0),
(208, '', 205, 0, 1, 0, 1, '2017-10-25 16:42:16', '2017-10-25 16:42:16', NULL, NULL, 0),
(209, '', 0, 0, 1, 0, 1, '2017-10-25 16:43:32', '2017-10-25 16:43:32', NULL, NULL, 0),
(210, '', 0, 0, 1, 0, 1, '2017-10-25 16:44:49', '2017-10-25 16:44:49', NULL, NULL, 0),
(211, '', 0, 0, 1, 0, 1, '2017-10-25 16:45:49', '2017-10-25 16:45:49', NULL, NULL, 0),
(212, '', 0, 0, 1, 0, 1, '2017-10-25 16:46:46', '2017-10-25 16:46:46', NULL, NULL, 0),
(213, '', 0, 0, 1, 0, 1, '2017-10-25 16:47:41', '2017-10-25 16:47:41', NULL, NULL, 0),
(214, '', 91, 0, 1, 0, 1, '2017-11-02 09:38:52', '2017-11-02 09:38:52', NULL, NULL, 0),
(215, '', 91, 0, 1, 0, 1, '2017-11-02 09:39:25', '2017-11-02 09:39:25', NULL, NULL, 0),
(216, '', 91, 0, 1, 0, 1, '2017-11-02 09:39:56', '2017-11-02 09:39:56', NULL, NULL, 0),
(217, '', 91, 0, 1, 0, 1, '2017-11-02 09:40:26', '2017-11-02 09:40:26', NULL, NULL, 0),
(218, '', 92, 0, 1, 0, 1, '2017-11-02 09:43:10', '2017-11-02 09:43:10', NULL, NULL, 0),
(219, '', 92, 0, 1, 0, 1, '2017-11-02 09:43:35', '2017-11-02 09:43:35', NULL, NULL, 0),
(220, '', 92, 0, 1, 0, 1, '2017-11-02 09:44:05', '2017-11-02 09:44:05', NULL, NULL, 0),
(221, '', 92, 0, 1, 0, 1, '2017-11-02 09:47:46', '2017-11-02 09:47:46', NULL, NULL, 0),
(223, '', 93, 0, 1, 0, 1, '2017-11-07 09:40:44', '2017-11-07 09:40:44', NULL, NULL, 0),
(224, '', 93, 0, 1, 0, 1, '2017-11-07 09:41:42', '2017-11-07 09:41:42', NULL, NULL, 0),
(225, '', 93, 0, 1, 0, 1, '2017-11-07 09:42:10', '2017-11-07 09:42:10', NULL, NULL, 0),
(226, '', 95, 0, 1, 0, 1, '2017-11-07 09:42:50', '2017-11-07 09:42:50', NULL, NULL, 0),
(227, '', 95, 0, 1, 0, 1, '2017-11-07 09:43:13', '2017-11-07 09:43:13', NULL, NULL, 0),
(228, '', 95, 0, 1, 0, 1, '2017-11-07 09:43:57', '2017-11-07 09:43:57', NULL, NULL, 0),
(229, '', 95, 0, 1, 0, 1, '2017-11-07 09:44:25', '2017-11-07 09:44:25', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(110, 2, 'Mice &amp; Keyboards', '', 'Mice &amp; Keyboards', '', ''),
(110, 1, 'Mice &amp; Keyboards', '', 'Mice &amp; Keyboards', '', ''),
(91, 1, 'PlayStation', '', 'PlayStation', '', ''),
(90, 2, 'Video Games', '', 'Video Games', '', ''),
(92, 1, 'Sony PSP', '', 'Sony PSP', '', ''),
(92, 2, 'Sony PSP', '', 'Sony PSP', '', ''),
(93, 1, 'Wii U', '', 'Wii U', '', ''),
(93, 2, 'Wii U', '', 'Wii U', '', ''),
(91, 2, 'PlayStation', '', 'PlayStation', '', ''),
(90, 1, 'Video Games', '', 'Video Games', '', ''),
(111, 1, 'Monitors', '', 'Monitors', '', ''),
(111, 2, 'Monitors', '', 'Monitors', '', ''),
(103, 2, 'In-Ear &amp; Earbud', '', 'In-Ear &amp; Earbud', '', ''),
(104, 1, 'On-Ear', '', 'On-Ear', '', ''),
(104, 2, 'On-Ear', '', 'On-Ear', '', ''),
(105, 1, 'Sports', '', 'Sports', '', ''),
(105, 2, 'Sports', '', 'Sports', '', ''),
(106, 1, 'Computer', '', 'Computer', '', ''),
(106, 2, 'Computer', '', 'Computer', '', ''),
(107, 1, 'Desktops', '', 'Desktops', '', ''),
(107, 2, 'Desktops', '', 'Desktops', '', ''),
(108, 1, 'Drives &amp; Storage', '', 'Drives &amp; Storage', '', ''),
(108, 2, 'Drives &amp; Storage', '', 'Drives &amp; Storage', '', ''),
(109, 1, 'Laptops', '', 'Laptops', '', ''),
(109, 2, 'Laptops', '', 'Laptops', '', ''),
(97, 2, 'Apple', '', 'Apple', '', ''),
(97, 1, 'Apple', '', 'Apple', '', ''),
(98, 1, 'Blackberry', '', 'Blackberry', '', ''),
(98, 2, 'Blackberry', '', 'Blackberry', '', ''),
(99, 1, 'Nokia', '', 'Nokia', '', ''),
(99, 2, 'Nokia', '', 'Nokia', '', ''),
(100, 1, 'Samsung', '', 'Samsung', '', ''),
(100, 2, 'Samsung', '', 'Samsung', '', ''),
(101, 1, 'Headphones', '', 'Headphones', '', ''),
(101, 2, 'Headphones', '', 'Headphones', '', ''),
(102, 1, 'Bluetooth', '', 'Bluetooth', '', ''),
(102, 2, 'Bluetooth', '', 'Bluetooth', '', ''),
(103, 1, 'In-Ear &amp; Earbud', '', 'In-Ear &amp; Earbud', '', ''),
(96, 2, 'Cell Phone', '', 'Cell Phone', '', ''),
(96, 1, 'Cell Phone', '', 'Cell Phone', '', ''),
(95, 2, 'Xbox 360', '', 'Xbox 360', '', ''),
(95, 1, 'Xbox 360', '', 'Xbox 360', '', ''),
(222, 1, 'Asdipiscing', '', 'Asdipiscing', '', ''),
(112, 1, 'Camera', '', 'Camera', '', ''),
(112, 2, 'Camera', '', 'Camera', '', ''),
(113, 1, 'Camcorders', '', 'Camcorders', '', ''),
(113, 2, 'Camcorders', '', 'Camcorders', '', ''),
(114, 1, 'Digital Frames', '', 'Digital Frames', '', ''),
(114, 2, 'Digital Frames', '', 'Digital Frames', '', ''),
(115, 1, 'Digital SLRs', '', 'Digital SLRs', '', ''),
(115, 2, 'Digital SLRsDigital SLRs', '', 'Digital SLRs', '', ''),
(116, 1, 'Lenses', '', 'Lenses', '', ''),
(116, 2, 'Lenses', '', 'Lenses', '', ''),
(117, 1, 'Point-and-Shoots', '', 'Point-and-Shoots', '', ''),
(117, 2, 'Point-and-Shoots', '', 'Point-and-Shoots', '', ''),
(118, 1, 'Sports', '', 'Sports', '', ''),
(118, 2, 'Sports', '', 'Sports', '', ''),
(119, 1, 'TVs', '', 'TVs', '', ''),
(119, 2, 'TVs', '', 'TVs', '', ''),
(120, 1, '3D HDTVs', '', '3D HDTVs', '', ''),
(120, 2, '3D HDTVs', '', '3D HDTVs', '', ''),
(121, 1, 'LCD HDTVs', '', 'LCD HDTVs', '', ''),
(121, 2, 'LCD HDTVs', '', 'LCD HDTVs', '', ''),
(122, 1, 'LED HDTVs', '', 'LED HDTVs', '', ''),
(122, 2, 'LED HDTVs', '', 'LED HDTVs', '', ''),
(123, 1, 'Plasma HDTVs', '', 'Plasma HDTVs', '', ''),
(123, 2, 'Plasma HDTVs', '', 'Plasma HDTVs', '', ''),
(124, 1, 'Smart HDTVs', '', 'Smart HDTVs', '', ''),
(124, 2, 'Smart HDTVs', '', 'Smart HDTVs', '', ''),
(125, 1, 'Smartwatch', '', 'Smartwatch', '', ''),
(125, 2, 'Smartwatch', '', 'Smartwatch', '', ''),
(126, 1, 'Brands', '', 'Brands', '', ''),
(126, 2, 'Brands', '', 'Brands', '', ''),
(127, 1, 'Fitness', '', 'Fitness', '', ''),
(127, 2, 'Fitness', '', 'Fitness', '', ''),
(128, 1, 'Kids', '', 'Kids', '', ''),
(128, 2, 'Kids', '', 'Kids', '', ''),
(129, 1, 'Men', '', 'Men', '', ''),
(129, 2, 'Men', '', 'Men', '', ''),
(130, 1, 'Women', '', 'Women', '', ''),
(130, 2, 'Women', '', 'Women', '', ''),
(131, 1, 'Printers', '', 'Printers', '', ''),
(131, 2, 'Printers', '', 'Printers', '', ''),
(132, 1, 'Bass', '', 'Bass', '', ''),
(132, 2, 'Bass', '', 'Bass', '', ''),
(133, 1, 'Business &amp; Office', '', 'Business &amp; Office', '', ''),
(133, 2, 'Business &amp; Office', '', 'Business &amp; Office', '', ''),
(134, 1, 'DJ &amp; Lighting', '', 'DJ &amp; Lighting', '', ''),
(134, 2, 'DJ &amp; Lighting', '', 'DJ &amp; Lighting', '', ''),
(135, 1, 'Keyboards', '', 'Keyboards', '', ''),
(135, 2, 'Keyboards', '', 'Keyboards', '', ''),
(136, 1, 'Mac', '', 'Mac', '', ''),
(136, 2, 'Mac', '', 'Mac', '', ''),
(137, 1, 'Webcams', '', 'Webcams', '', ''),
(137, 2, 'Webcams', '', 'Webcams', '', ''),
(138, 1, 'Microphones', '', 'Microphones', '', ''),
(138, 2, 'Microphones', '', 'Microphones', '', ''),
(144, 2, 'Living Room', '', 'Living Room', '', ''),
(179, 2, 'Kids and Teens', '', 'Kids and Teens', '', ''),
(149, 2, 'Dining Room', '', 'Dining Room', '', ''),
(154, 2, 'Bedroom', '', 'Bedroom', '', ''),
(144, 1, 'Living Room', '', 'Living Room', '', ''),
(145, 2, 'Chairs &amp; Chaises', '', 'Chairs &amp; Chaises', '', ''),
(145, 1, 'Chairs &amp; Chaises', '', 'Chairs &amp; Chaises', '', ''),
(146, 2, 'Loveseats', '', 'Loveseats', '', ''),
(146, 1, 'Loveseats', '', 'Loveseats', '', ''),
(147, 2, 'Sectionals', '', 'Sectionals', '', ''),
(147, 1, 'Sectionals', '', 'Sectionals', '', ''),
(148, 2, 'Sofas', '', 'Sofas', '', ''),
(148, 1, 'Sofas', '', 'Sofas', '', ''),
(149, 1, 'Dining Room', '', 'Dining Room', '', ''),
(150, 2, 'Benches', '', 'Benches', '', ''),
(150, 1, 'Benches', '', 'Benches', '', ''),
(151, 2, 'Chairs', '', 'Chairs', '', ''),
(151, 1, 'Chairs', '', 'Chairs', '', ''),
(152, 2, 'Dining Sets', '', 'Dining Sets', '', ''),
(152, 1, 'Dining Sets', '', 'Dining Sets', '', ''),
(153, 2, 'Dining Tables', '', 'Dining Tables', '', ''),
(153, 1, 'Dining Tables', '', 'Dining Tables', '', ''),
(154, 1, 'Bedroom', '', 'Bedroom', '', ''),
(155, 2, 'Daybeds &amp; Futons', '', 'Daybeds &amp; Futons', '', ''),
(155, 1, 'Daybeds &amp; Futons', '', 'Daybeds &amp; Futons', '', ''),
(156, 2, 'Full Beds', '', 'Full Beds', '', ''),
(156, 1, 'Full Beds', '', 'Full Beds', '', ''),
(157, 2, 'King Beds', '', 'King Beds', '', ''),
(157, 1, 'King Beds', '', 'King Beds', '', ''),
(158, 2, 'Queen Beds', '', 'Queen Beds', '', ''),
(158, 1, 'Queen Beds', '', 'Queen Beds', '', ''),
(159, 2, 'Home Office', '', 'Home Office', '', ''),
(159, 1, 'Home Office', '', 'Home Office', '', ''),
(160, 2, 'Bookcases', '', 'Bookcases', '', ''),
(160, 1, 'Bookcases', '', 'Bookcases', '', ''),
(161, 2, 'Chairs', '', 'Chairs', '', ''),
(161, 1, 'Chairs', '', 'Chairs', '', ''),
(162, 2, 'Desks', '', 'Desks', '', ''),
(162, 1, 'Desks', '', 'Desks', '', ''),
(163, 2, 'Filing Cabinets', '', 'Filing Cabinets', '', ''),
(163, 1, 'Filing Cabinets', '', 'Filing Cabinets', '', ''),
(164, 2, 'Storage', '', 'Storage', '', ''),
(164, 1, 'Storage', '', 'Storage', '', ''),
(165, 1, 'Tables', '', 'Tables', '', ''),
(166, 2, 'Accent Tablese', '', 'Accent Tablese', '', ''),
(166, 1, 'Accent Tablese', '', 'Accent Tablese', '', ''),
(167, 2, 'Coffee Tables', '', 'Coffee Tables', '', ''),
(167, 1, 'Coffee Tables', '', 'Coffee Tables', '', ''),
(168, 2, 'Console Tables', '', 'Console Tables', '', ''),
(168, 1, 'Console Tables', '', 'Console Tables', '', ''),
(169, 2, 'Occasional Tables', '', 'Occasional Tables', '', ''),
(169, 1, 'Occasional Tables', '', 'Occasional Tables', '', ''),
(170, 2, 'Sofa Tables', '', 'Sofa Tables', '', ''),
(170, 1, 'Sofa Tables', '', 'Sofa Tables', '', ''),
(171, 1, 'Mattress Sets', '', 'Mattress Sets', '', ''),
(171, 2, 'Mattress Sets', '', 'Mattress Sets', '', ''),
(172, 1, 'Mattresses', '', 'Mattresses', '', ''),
(173, 2, 'Bar Stools', '', 'Bar Stools', '', ''),
(173, 1, 'Bar Stools', '', 'Bar Stools', '', ''),
(174, 2, 'Full Size', '', 'Full Size', '', ''),
(174, 1, 'Full Size', '', 'Full Size', '', ''),
(175, 2, 'King Size', '', 'King Size', '', ''),
(175, 1, 'King Size', '', 'King Size', '', ''),
(176, 2, 'King Size', '', 'King Size', '', ''),
(176, 1, 'King Size', '', 'King Size', '', ''),
(177, 2, 'Queen Size', '', 'Queen Size', '', ''),
(177, 1, 'Queen Size', '', 'Queen Size', '', ''),
(178, 2, 'Twin Size', '', 'Twin Size', '', ''),
(178, 1, 'Twin Size', '', 'Twin Size', '', ''),
(179, 1, 'Kids and Teens', '', 'Kids and Teens', '', ''),
(180, 2, 'Bunkbeds', '', 'Bunkbeds', '', ''),
(180, 1, 'Bunkbeds', '', 'Bunkbeds', '', ''),
(181, 2, 'Desks, Vanities', '', 'Desks, Vanities', '', ''),
(181, 1, 'Desks, Vanities', '', 'Desks, Vanities', '', ''),
(182, 2, 'Full Beds', '', 'Full Beds', '', ''),
(182, 1, 'Full Beds', '', 'Full Beds', '', ''),
(183, 2, 'Mirrors', '', 'Mirrors', '', ''),
(183, 1, 'Mirrors', '', 'Mirrors', '', ''),
(184, 2, 'Twin Beds', '', 'Twin Beds', '', ''),
(184, 1, 'Twin Beds', '', 'Twin Beds', '', ''),
(185, 1, 'Entertainment', '', 'Entertainment', '', ''),
(185, 2, 'Entertainment', '', 'Entertainment', '', ''),
(186, 2, 'Bed Frames', '', 'Bed Frames', '', ''),
(186, 1, 'Bed Frames', '', 'Bed Frames', '', ''),
(187, 2, 'Boxsprings', '', 'Boxsprings', '', ''),
(187, 1, 'Boxsprings', '', 'Boxsprings', '', ''),
(188, 1, 'Headboards', '', 'Headboards', '', ''),
(188, 2, 'Headboards', '', 'Headboards', '', ''),
(189, 2, 'Mattress Protectors', '', 'Mattress Protectors', '', ''),
(189, 1, 'Mattress Protectors', '', 'Mattress Protectors', '', ''),
(190, 2, 'Pillows', '', 'Pillows', '', ''),
(190, 1, 'Pillows', '', 'Pillows', '', ''),
(191, 2, 'Accent Furniture', '', 'Accent Furniture', '', ''),
(191, 1, 'Accent Furniture', '', 'Accent Furniture', '', ''),
(172, 2, 'Mattresses', '', 'Mattresses', '', ''),
(165, 2, 'Tables', '', 'Tables', '', ''),
(192, 1, 'Arts &amp; Photography', '', 'Arts &amp; Photography', '', ''),
(192, 2, 'Arts &amp; Photography', '', 'Arts &amp; Photography', '', ''),
(193, 1, 'Comics &amp; Graphic', '', 'Comics &amp; Graphic', '', ''),
(193, 2, 'Comics &amp; Graphic', '', 'Comics &amp; Graphic', '', ''),
(194, 1, 'Technology', '', 'Technology', '', ''),
(194, 2, 'Technology', '', 'Technology', '', ''),
(195, 1, 'Graphics &amp; Design', '', 'Graphics &amp; Design', '', ''),
(195, 2, 'Graphics &amp; Design', '', 'Graphics &amp; Design', '', ''),
(196, 1, 'Hardware', '', 'Hardware', '', ''),
(196, 2, 'Hardware', '', 'Hardware', '', ''),
(197, 1, 'Programming', '', 'Programming', '', ''),
(197, 2, 'Programming', '', 'Programming', '', ''),
(198, 1, 'Software', '', 'Software', '', ''),
(198, 2, 'Software', '', 'Software', '', ''),
(199, 1, 'History', '', 'History', '', ''),
(199, 2, 'History', '', 'History', '', ''),
(200, 1, 'Africa', '', 'Africa', '', ''),
(200, 2, 'Africa', '', 'Africa', '', ''),
(201, 1, 'Americas', '', 'Americas', '', ''),
(201, 2, 'Americas', '', 'Americas', '', ''),
(202, 1, 'Asia', '', 'Asia', '', ''),
(202, 2, 'Asia', '', 'Asia', '', ''),
(203, 1, 'Europe', '', 'Europe', '', ''),
(203, 2, 'Europe', '', 'Europe', '', ''),
(204, 1, 'Law', '', 'Law', '', ''),
(204, 2, 'Law', '', 'Law', '', ''),
(205, 1, 'Medical Books', '', 'Medical Books', '', ''),
(205, 2, 'Medical Books', '', 'Medical Books', '', ''),
(206, 1, 'Basic Sciences', '', 'Basic Sciences', '', ''),
(206, 2, 'Basic Sciences', '', 'Basic Sciences', '', ''),
(207, 1, 'Dentistry', '', 'Dentistry', '', ''),
(207, 2, 'Dentistry', '', 'Dentistry', '', ''),
(208, 1, 'Medicine', '', 'Medicine', '', ''),
(208, 2, 'Medicine', '', 'Medicine', '', ''),
(209, 1, 'Politics &amp; Social Sciences', '', 'Politics &amp; Social Sciences', '', ''),
(209, 2, 'Politics &amp; Social Sciences', '', 'Politics &amp; Social Sciences', '', ''),
(210, 1, 'Food &amp; Cookbooks', '', 'Food &amp; Cookbooks', '', ''),
(210, 2, 'Food &amp; Cookbooks', '', 'Food &amp; Cookbooks', '', ''),
(211, 1, 'Romance', '', 'Romance', '', ''),
(211, 2, 'Romance', '', 'Romance', '', ''),
(212, 1, 'Travel', '', 'Travel', '', ''),
(212, 2, 'Travel', '', 'Travel', '', ''),
(213, 1, 'Nursing', '', 'Nursing', '', ''),
(213, 2, 'Nursing', '', 'Nursing', '', ''),
(214, 1, 'Laptops, Desktops &amp; Monitors', '', 'Laptops, Desktops &amp; Monitors', '', ''),
(214, 2, 'Laptops, Desktops &amp; Monitors', '', 'Laptops, Desktops &amp; Monitors', '', ''),
(215, 1, 'Printers &amp; Ink', '', 'Printers &amp; Ink', '', ''),
(215, 2, 'Printers &amp; Ink', '', 'Printers &amp; Ink', '', ''),
(216, 1, 'Computer Accessories', '', 'Computer Accessories', '', ''),
(216, 2, 'Computer Accessories', '', 'Computer Accessories', '', ''),
(217, 1, 'Software', '', 'Software', '', ''),
(217, 2, 'Software', '', 'Software', '', ''),
(218, 1, 'Macbook', '', 'Macbook', '', ''),
(218, 2, 'Macbook', '', 'Macbook', '', ''),
(219, 1, 'Macbook Air', '', 'Macbook Air', '', ''),
(219, 2, 'Macbook Air', '', 'Macbook Air', '', ''),
(220, 1, 'Laptop Pro', '', 'Laptop Pro', '', ''),
(220, 2, 'Laptop Pro', '', 'Laptop Pro', '', ''),
(221, 1, 'Mouse', '', 'Mouse', '', ''),
(221, 2, 'Mouse', '', 'Mouse', '', ''),
(222, 2, 'Asdipiscing', '', 'Asdipiscing', '', ''),
(223, 1, 'Web Cameras', '', 'Web Cameras', '', ''),
(223, 2, 'Web Cameras', '', 'Web Cameras', '', ''),
(224, 1, 'Diam sit', '', 'Diam sit', '', ''),
(224, 2, 'Diam sit', '', 'Diam sit', '', ''),
(225, 1, 'Labore et', '', 'Labore et', '', ''),
(225, 2, 'Labore et', '', 'Labore et', '', ''),
(226, 1, 'Monitors', '', 'Monitors', '', ''),
(226, 2, 'Monitors', '', 'Monitors', '', ''),
(227, 1, 'Scanners', '', 'Scanners', '', ''),
(227, 2, 'Scanners', '', 'Scanners', '', ''),
(228, 1, 'Esdipiscing', '', 'Esdipiscing', '', ''),
(228, 2, 'Esdipiscing', '', 'Esdipiscing', '', ''),
(229, 1, 'Scanners', '', 'Scanners', '', ''),
(229, 2, 'Scanners', '', 'Scanners', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_filter`
--

INSERT INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES
(90, 1),
(90, 2),
(90, 3),
(90, 4),
(90, 5),
(90, 6),
(90, 7),
(90, 8),
(90, 10),
(90, 11),
(90, 12),
(90, 13),
(90, 14),
(91, 1),
(91, 2),
(91, 3),
(91, 4),
(91, 5),
(91, 6),
(91, 7),
(91, 8),
(91, 10),
(91, 11),
(91, 12),
(91, 13),
(91, 14),
(92, 1),
(92, 2),
(92, 3),
(92, 4),
(92, 5),
(92, 6),
(92, 7),
(92, 8),
(92, 10),
(92, 11),
(92, 12),
(92, 13),
(92, 14),
(93, 1),
(93, 2),
(93, 3),
(93, 4),
(93, 7),
(93, 8),
(93, 10),
(93, 11),
(93, 12),
(93, 13),
(93, 14),
(95, 1),
(95, 2),
(95, 3),
(95, 4),
(95, 5),
(95, 6),
(95, 7),
(95, 8),
(95, 10),
(95, 11),
(95, 12),
(95, 13),
(95, 14),
(96, 1),
(96, 2),
(96, 3),
(96, 4),
(96, 5),
(96, 6),
(96, 7),
(96, 8),
(96, 10),
(96, 11),
(96, 12),
(96, 13),
(96, 14),
(97, 1),
(97, 2),
(97, 3),
(97, 4),
(97, 5),
(97, 6),
(97, 7),
(97, 8),
(97, 10),
(97, 11),
(97, 12),
(97, 13),
(97, 14),
(98, 1),
(98, 2),
(98, 3),
(98, 4),
(98, 5),
(98, 6),
(98, 7),
(98, 8),
(98, 10),
(98, 11),
(98, 12),
(98, 13),
(98, 14),
(99, 1),
(99, 2),
(99, 3),
(99, 4),
(99, 5),
(99, 6),
(99, 7),
(99, 8),
(99, 10),
(99, 11),
(99, 12),
(99, 13),
(99, 14),
(100, 1),
(100, 2),
(100, 3),
(100, 4),
(100, 5),
(100, 6),
(100, 7),
(100, 8),
(100, 10),
(100, 11),
(100, 12),
(100, 13),
(100, 14),
(101, 1),
(101, 2),
(101, 3),
(101, 4),
(101, 5),
(101, 6),
(101, 7),
(101, 8),
(101, 10),
(101, 11),
(101, 12),
(101, 13),
(101, 14),
(102, 1),
(102, 2),
(102, 3),
(102, 4),
(102, 5),
(102, 6),
(102, 7),
(102, 8),
(102, 10),
(102, 11),
(102, 12),
(102, 13),
(102, 14),
(103, 1),
(103, 2),
(103, 3),
(103, 4),
(103, 5),
(103, 6),
(103, 7),
(103, 8),
(103, 11),
(103, 12),
(103, 13),
(103, 14),
(104, 1),
(104, 2),
(104, 3),
(104, 4),
(104, 5),
(104, 6),
(104, 7),
(104, 8),
(104, 10),
(104, 12),
(104, 13),
(104, 14),
(105, 1),
(105, 2),
(105, 3),
(105, 4),
(105, 5),
(105, 6),
(105, 7),
(105, 8),
(105, 10),
(105, 11),
(105, 12),
(105, 13),
(105, 14),
(106, 1),
(106, 2),
(106, 3),
(106, 4),
(106, 5),
(106, 6),
(106, 7),
(106, 8),
(106, 10),
(106, 11),
(106, 12),
(106, 13),
(106, 14),
(107, 1),
(107, 2),
(107, 3),
(107, 4),
(107, 5),
(107, 6),
(107, 7),
(107, 8),
(107, 10),
(107, 11),
(107, 12),
(107, 13),
(107, 14),
(108, 1),
(108, 2),
(108, 3),
(108, 4),
(108, 5),
(108, 6),
(108, 7),
(108, 8),
(108, 10),
(108, 11),
(108, 12),
(108, 13),
(108, 14),
(109, 1),
(109, 2),
(109, 3),
(109, 4),
(109, 5),
(109, 6),
(109, 7),
(109, 8),
(109, 10),
(109, 11),
(109, 12),
(109, 13),
(109, 14),
(110, 1),
(110, 2),
(110, 3),
(110, 4),
(110, 5),
(110, 6),
(110, 7),
(110, 8),
(110, 10),
(110, 11),
(110, 12),
(110, 13),
(110, 14),
(111, 1),
(111, 2),
(111, 3),
(111, 4),
(111, 5),
(111, 6),
(111, 7),
(111, 8),
(111, 10),
(111, 11),
(111, 12),
(111, 13),
(111, 14),
(112, 1),
(112, 2),
(112, 3),
(112, 4),
(112, 5),
(112, 6),
(112, 7),
(112, 8),
(112, 10),
(112, 11),
(112, 12),
(112, 13),
(112, 14),
(113, 1),
(113, 2),
(113, 3),
(113, 4),
(113, 7),
(113, 8),
(113, 10),
(113, 11),
(113, 12),
(113, 13),
(113, 14),
(114, 1),
(114, 2),
(114, 3),
(114, 4),
(114, 5),
(114, 6),
(114, 7),
(114, 8),
(114, 10),
(114, 11),
(114, 12),
(114, 13),
(114, 14),
(115, 1),
(115, 2),
(115, 3),
(115, 4),
(115, 5),
(115, 6),
(115, 7),
(115, 8),
(115, 10),
(115, 11),
(115, 12),
(115, 13),
(115, 14),
(116, 1),
(116, 2),
(116, 3),
(116, 4),
(116, 5),
(116, 6),
(116, 7),
(116, 8),
(116, 10),
(116, 11),
(116, 12),
(116, 13),
(116, 14),
(117, 1),
(117, 2),
(117, 3),
(117, 4),
(117, 5),
(117, 6),
(117, 7),
(117, 8),
(117, 10),
(117, 11),
(117, 12),
(117, 13),
(117, 14),
(118, 1),
(118, 2),
(118, 3),
(118, 4),
(118, 5),
(118, 6),
(118, 7),
(118, 8),
(118, 10),
(118, 11),
(118, 12),
(118, 13),
(118, 14),
(119, 1),
(119, 2),
(119, 3),
(119, 4),
(119, 5),
(119, 6),
(119, 7),
(119, 8),
(119, 10),
(119, 11),
(119, 12),
(119, 13),
(119, 14),
(120, 1),
(120, 2),
(120, 3),
(120, 4),
(120, 5),
(120, 6),
(120, 7),
(120, 8),
(120, 10),
(120, 11),
(120, 12),
(120, 13),
(120, 14),
(121, 1),
(121, 2),
(121, 3),
(121, 4),
(121, 5),
(121, 6),
(121, 7),
(121, 8),
(121, 10),
(121, 11),
(121, 12),
(121, 13),
(121, 14),
(122, 1),
(122, 2),
(122, 3),
(122, 4),
(122, 5),
(122, 6),
(122, 7),
(122, 8),
(122, 10),
(122, 11),
(122, 12),
(122, 13),
(122, 14),
(123, 1),
(123, 2),
(123, 3),
(123, 4),
(123, 7),
(123, 8),
(123, 10),
(123, 11),
(123, 12),
(123, 13),
(123, 14),
(124, 1),
(124, 2),
(124, 3),
(124, 4),
(124, 5),
(124, 6),
(124, 7),
(124, 8),
(124, 10),
(124, 11),
(124, 12),
(124, 13),
(124, 14),
(125, 1),
(125, 2),
(125, 3),
(125, 4),
(125, 5),
(125, 6),
(125, 7),
(125, 8),
(125, 10),
(125, 11),
(125, 12),
(125, 13),
(125, 14),
(126, 1),
(126, 2),
(126, 3),
(126, 4),
(126, 5),
(126, 6),
(126, 7),
(126, 8),
(126, 10),
(126, 11),
(126, 12),
(126, 13),
(126, 14),
(127, 1),
(127, 2),
(127, 3),
(127, 4),
(127, 5),
(127, 6),
(127, 7),
(127, 8),
(127, 10),
(127, 11),
(127, 12),
(127, 13),
(127, 14),
(128, 1),
(128, 2),
(128, 3),
(128, 4),
(128, 5),
(128, 6),
(128, 7),
(128, 8),
(128, 10),
(128, 11),
(128, 12),
(128, 13),
(128, 14),
(129, 1),
(129, 2),
(129, 3),
(129, 4),
(129, 5),
(129, 6),
(129, 7),
(129, 8),
(129, 10),
(129, 11),
(129, 12),
(129, 13),
(129, 14),
(131, 1),
(131, 2),
(131, 3),
(131, 4),
(131, 5),
(131, 6),
(131, 7),
(131, 8),
(131, 10),
(131, 11),
(131, 12),
(131, 13),
(131, 14),
(133, 1),
(133, 2),
(133, 3),
(133, 4),
(133, 5),
(133, 6),
(133, 7),
(133, 8),
(133, 10),
(133, 11),
(133, 12),
(133, 13),
(133, 14),
(135, 1),
(135, 2),
(135, 3),
(135, 4),
(135, 5),
(135, 6),
(135, 7),
(135, 8),
(135, 10),
(135, 11),
(135, 12),
(135, 13),
(135, 14),
(136, 1),
(136, 2),
(136, 3),
(136, 4),
(136, 5),
(136, 6),
(136, 7),
(136, 8),
(136, 10),
(136, 11),
(136, 12),
(136, 13),
(136, 14),
(137, 1),
(137, 2),
(137, 3),
(137, 4),
(137, 5),
(137, 6),
(137, 7),
(137, 8),
(137, 10),
(137, 11),
(137, 12),
(137, 13),
(137, 14),
(138, 1),
(138, 2),
(138, 3),
(138, 4),
(138, 5),
(138, 6),
(138, 7),
(138, 8),
(138, 10),
(138, 11),
(138, 12),
(138, 13),
(138, 14),
(144, 1),
(144, 2),
(144, 3),
(144, 4),
(144, 5),
(144, 6),
(144, 7),
(144, 8),
(144, 10),
(144, 11),
(144, 12),
(144, 13),
(144, 14),
(145, 1),
(145, 2),
(145, 3),
(145, 4),
(145, 5),
(145, 6),
(145, 7),
(145, 8),
(145, 10),
(145, 11),
(145, 12),
(145, 13),
(145, 14),
(146, 1),
(146, 2),
(146, 3),
(146, 4),
(146, 5),
(146, 6),
(146, 7),
(146, 8),
(146, 10),
(146, 11),
(146, 12),
(146, 13),
(146, 14),
(147, 1),
(147, 2),
(147, 3),
(147, 4),
(147, 5),
(147, 6),
(147, 7),
(147, 8),
(147, 10),
(147, 11),
(147, 12),
(147, 13),
(147, 14),
(148, 1),
(148, 2),
(148, 3),
(148, 4),
(148, 5),
(148, 6),
(148, 7),
(148, 8),
(148, 10),
(148, 11),
(148, 12),
(148, 13),
(148, 14),
(149, 1),
(149, 2),
(149, 3),
(149, 4),
(149, 5),
(149, 6),
(149, 7),
(149, 8),
(149, 10),
(149, 11),
(149, 12),
(149, 13),
(149, 14),
(150, 1),
(150, 2),
(150, 3),
(150, 4),
(150, 5),
(150, 6),
(150, 7),
(150, 8),
(150, 10),
(150, 11),
(150, 12),
(150, 13),
(150, 14),
(151, 1),
(151, 2),
(151, 3),
(151, 4),
(151, 5),
(151, 6),
(151, 7),
(151, 8),
(151, 10),
(151, 11),
(151, 12),
(151, 13),
(151, 14),
(152, 1),
(152, 2),
(152, 3),
(152, 4),
(152, 5),
(152, 6),
(152, 7),
(152, 8),
(152, 10),
(152, 11),
(152, 12),
(152, 13),
(152, 14),
(153, 1),
(153, 2),
(153, 3),
(153, 4),
(153, 5),
(153, 6),
(153, 7),
(153, 8),
(153, 10),
(153, 11),
(153, 12),
(153, 13),
(153, 14),
(154, 1),
(154, 2),
(154, 3),
(154, 4),
(154, 5),
(154, 6),
(154, 7),
(154, 8),
(154, 10),
(154, 11),
(154, 12),
(154, 13),
(154, 14),
(156, 1),
(156, 2),
(156, 3),
(156, 4),
(156, 5),
(156, 6),
(156, 7),
(156, 8),
(156, 10),
(156, 11),
(156, 12),
(156, 13),
(156, 14),
(157, 1),
(157, 2),
(157, 3),
(157, 4),
(157, 5),
(157, 6),
(157, 7),
(157, 8),
(157, 10),
(157, 11),
(157, 12),
(157, 13),
(157, 14),
(158, 1),
(158, 2),
(158, 3),
(158, 4),
(158, 5),
(158, 6),
(158, 7),
(158, 8),
(158, 10),
(158, 11),
(158, 12),
(158, 13),
(158, 14),
(159, 1),
(159, 2),
(159, 3),
(159, 4),
(159, 5),
(159, 6),
(159, 7),
(159, 8),
(159, 10),
(159, 11),
(159, 12),
(159, 13),
(159, 14),
(161, 1),
(161, 2),
(161, 3),
(161, 4),
(161, 5),
(161, 6),
(161, 7),
(161, 8),
(161, 10),
(161, 11),
(161, 12),
(161, 13),
(161, 14),
(163, 1),
(163, 2),
(163, 3),
(163, 4),
(163, 5),
(163, 6),
(163, 7),
(163, 8),
(163, 10),
(163, 11),
(163, 12),
(163, 13),
(163, 14),
(164, 1),
(164, 2),
(164, 3),
(164, 4),
(164, 5),
(164, 6),
(164, 7),
(164, 8),
(164, 10),
(164, 11),
(164, 12),
(164, 13),
(164, 14),
(165, 1),
(165, 2),
(165, 3),
(165, 4),
(165, 5),
(165, 6),
(165, 7),
(165, 8),
(165, 10),
(165, 11),
(165, 12),
(165, 13),
(165, 14),
(167, 1),
(167, 2),
(167, 3),
(167, 4),
(167, 5),
(167, 6),
(167, 7),
(167, 8),
(167, 10),
(167, 11),
(167, 12),
(167, 13),
(167, 14),
(168, 1),
(168, 2),
(168, 3),
(168, 4),
(168, 5),
(168, 6),
(168, 7),
(168, 8),
(168, 10),
(168, 11),
(168, 12),
(168, 13),
(168, 14),
(169, 1),
(169, 2),
(169, 3),
(169, 4),
(169, 5),
(169, 6),
(169, 7),
(169, 8),
(169, 10),
(169, 11),
(169, 12),
(169, 13),
(169, 14),
(170, 1),
(170, 2),
(170, 3),
(170, 4),
(170, 5),
(170, 6),
(170, 7),
(170, 8),
(170, 10),
(170, 11),
(170, 12),
(170, 13),
(170, 14),
(171, 1),
(171, 2),
(171, 3),
(171, 4),
(171, 5),
(171, 6),
(171, 7),
(171, 8),
(171, 10),
(171, 11),
(171, 12),
(171, 13),
(171, 14),
(172, 1),
(172, 2),
(172, 3),
(172, 4),
(172, 5),
(172, 6),
(172, 7),
(172, 8),
(172, 10),
(172, 11),
(172, 12),
(172, 13),
(172, 14),
(173, 1),
(173, 2),
(173, 3),
(173, 4),
(173, 5),
(173, 6),
(173, 7),
(173, 8),
(173, 10),
(173, 11),
(173, 12),
(173, 13),
(173, 14),
(174, 1),
(174, 2),
(174, 3),
(174, 4),
(174, 5),
(174, 6),
(174, 7),
(174, 8),
(174, 10),
(174, 11),
(174, 12),
(174, 13),
(174, 14),
(175, 1),
(175, 2),
(175, 3),
(175, 4),
(175, 5),
(175, 6),
(175, 7),
(175, 8),
(175, 10),
(175, 11),
(175, 12),
(175, 13),
(175, 14),
(178, 1),
(178, 2),
(178, 3),
(178, 4),
(178, 5),
(178, 6),
(178, 7),
(178, 8),
(178, 10),
(178, 11),
(178, 12),
(178, 13),
(178, 14),
(179, 1),
(179, 2),
(179, 3),
(179, 4),
(179, 5),
(179, 6),
(179, 7),
(179, 8),
(179, 10),
(179, 11),
(179, 12),
(179, 13),
(179, 14),
(180, 1),
(180, 2),
(180, 3),
(180, 4),
(180, 5),
(180, 6),
(180, 7),
(180, 8),
(180, 10),
(180, 11),
(180, 12),
(180, 13),
(180, 14),
(181, 1),
(181, 2),
(181, 3),
(181, 4),
(181, 5),
(181, 6),
(181, 7),
(181, 8),
(181, 10),
(181, 11),
(181, 12),
(181, 13),
(181, 14),
(183, 1),
(183, 2),
(183, 3),
(183, 4),
(183, 5),
(183, 6),
(183, 7),
(183, 8),
(183, 10),
(183, 11),
(183, 12),
(183, 13),
(183, 14),
(185, 1),
(185, 2),
(185, 3),
(185, 4),
(185, 5),
(185, 6),
(185, 7),
(185, 8),
(185, 10),
(185, 11),
(185, 12),
(185, 13),
(185, 14),
(186, 1),
(186, 2),
(186, 3),
(186, 4),
(186, 5),
(186, 6),
(186, 7),
(186, 8),
(186, 10),
(186, 11),
(186, 12),
(186, 13),
(186, 14),
(188, 1),
(188, 2),
(188, 3),
(188, 4),
(188, 5),
(188, 6),
(188, 7),
(188, 8),
(188, 10),
(188, 11),
(188, 12),
(188, 13),
(188, 14),
(190, 1),
(190, 2),
(190, 3),
(190, 4),
(190, 5),
(190, 6),
(190, 7),
(190, 8),
(190, 10),
(190, 11),
(190, 12),
(190, 13),
(190, 14),
(191, 1),
(191, 2),
(191, 3),
(191, 4),
(191, 5),
(191, 6),
(191, 7),
(191, 8),
(191, 10),
(191, 11),
(191, 12),
(191, 13),
(191, 14),
(192, 1),
(192, 2),
(192, 3),
(192, 4),
(192, 5),
(192, 6),
(192, 7),
(192, 8),
(192, 10),
(192, 11),
(192, 12),
(192, 13),
(192, 14),
(193, 1),
(193, 2),
(193, 3),
(193, 4),
(193, 5),
(193, 6),
(193, 7),
(193, 8),
(193, 10),
(193, 11),
(193, 12),
(193, 13),
(193, 14),
(194, 1),
(194, 2),
(194, 3),
(194, 4),
(194, 5),
(194, 6),
(194, 7),
(194, 8),
(194, 10),
(194, 11),
(194, 12),
(194, 13),
(194, 14),
(195, 1),
(195, 2),
(195, 3),
(195, 4),
(195, 5),
(195, 6),
(195, 7),
(195, 8),
(195, 10),
(195, 11),
(195, 12),
(195, 13),
(195, 14),
(196, 1),
(196, 2),
(196, 3),
(196, 4),
(196, 5),
(196, 6),
(196, 7),
(196, 8),
(196, 10),
(196, 11),
(196, 12),
(196, 13),
(196, 14),
(197, 1),
(197, 2),
(197, 3),
(197, 4),
(197, 5),
(197, 6),
(197, 7),
(197, 8),
(197, 10),
(197, 11),
(197, 12),
(197, 13),
(197, 14),
(198, 1),
(198, 2),
(198, 3),
(198, 4),
(198, 5),
(198, 6),
(198, 7),
(198, 8),
(198, 10),
(198, 11),
(198, 12),
(198, 13),
(198, 14),
(199, 1),
(199, 2),
(199, 3),
(199, 4),
(199, 5),
(199, 6),
(199, 7),
(199, 8),
(199, 10),
(199, 11),
(199, 12),
(199, 13),
(199, 14),
(200, 1),
(200, 2),
(200, 3),
(200, 4),
(200, 5),
(200, 6),
(200, 7),
(200, 8),
(200, 10),
(200, 11),
(200, 12),
(200, 13),
(200, 14),
(201, 1),
(201, 2),
(201, 3),
(201, 4),
(201, 5),
(201, 6),
(201, 7),
(201, 8),
(201, 10),
(201, 11),
(201, 12),
(201, 13),
(201, 14),
(202, 1),
(202, 2),
(202, 3),
(202, 4),
(202, 5),
(202, 6),
(202, 7),
(202, 8),
(202, 10),
(202, 11),
(202, 12),
(202, 13),
(202, 14),
(203, 1),
(203, 2),
(203, 3),
(203, 4),
(203, 5),
(203, 6),
(203, 7),
(203, 8),
(203, 10),
(203, 11),
(203, 12),
(203, 13),
(203, 14),
(204, 1),
(204, 2),
(204, 3),
(204, 4),
(204, 5),
(204, 6),
(204, 7),
(204, 8),
(204, 10),
(204, 11),
(204, 12),
(204, 13),
(204, 14),
(205, 1),
(205, 2),
(205, 3),
(205, 4),
(205, 5),
(205, 6),
(205, 7),
(205, 8),
(205, 10),
(205, 11),
(205, 12),
(205, 13),
(205, 14),
(206, 1),
(206, 2),
(206, 3),
(206, 4),
(206, 5),
(206, 6),
(206, 7),
(206, 8),
(206, 10),
(206, 11),
(206, 12),
(206, 13),
(206, 14),
(207, 1),
(207, 2),
(207, 3),
(207, 4),
(207, 5),
(207, 6),
(207, 7),
(207, 8),
(207, 10),
(207, 11),
(207, 12),
(207, 13),
(207, 14),
(208, 1),
(208, 2),
(208, 3),
(208, 4),
(208, 5),
(208, 6),
(208, 7),
(208, 8),
(208, 10),
(208, 11),
(208, 12),
(208, 13),
(208, 14),
(209, 1),
(209, 2),
(209, 3),
(209, 4),
(209, 5),
(209, 6),
(209, 7),
(209, 8),
(209, 10),
(209, 11),
(209, 12),
(209, 13),
(209, 14),
(210, 1),
(210, 2),
(210, 3),
(210, 4),
(210, 5),
(210, 6),
(210, 7),
(210, 8),
(210, 10),
(210, 11),
(210, 12),
(210, 13),
(210, 14),
(211, 1),
(211, 2),
(211, 3),
(211, 4),
(211, 5),
(211, 6),
(211, 7),
(211, 8),
(211, 10),
(211, 11),
(211, 12),
(211, 13),
(211, 14),
(212, 1),
(212, 2),
(212, 3),
(212, 4),
(212, 5),
(212, 6),
(212, 7),
(212, 8),
(212, 10),
(212, 11),
(212, 12),
(212, 13),
(212, 14),
(213, 1),
(213, 2),
(213, 3),
(213, 4),
(213, 5),
(213, 6),
(213, 7),
(213, 8),
(213, 10),
(213, 11),
(213, 12),
(213, 13),
(213, 14);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(121, 119, 0),
(117, 117, 1),
(118, 118, 0),
(119, 119, 0),
(116, 112, 0),
(116, 116, 1),
(117, 112, 0),
(114, 114, 1),
(115, 112, 0),
(115, 115, 1),
(113, 112, 0),
(113, 113, 1),
(114, 112, 0),
(111, 106, 0),
(111, 111, 1),
(112, 112, 0),
(109, 109, 1),
(110, 106, 0),
(110, 110, 1),
(121, 121, 1),
(108, 106, 0),
(108, 108, 1),
(109, 106, 0),
(106, 106, 0),
(107, 106, 0),
(91, 90, 0),
(120, 120, 1),
(107, 107, 1),
(104, 104, 1),
(105, 105, 1),
(105, 101, 0),
(103, 101, 0),
(104, 101, 0),
(103, 103, 1),
(101, 101, 0),
(102, 102, 1),
(102, 101, 0),
(99, 99, 1),
(100, 100, 1),
(100, 96, 0),
(123, 119, 0),
(123, 123, 1),
(122, 119, 0),
(122, 122, 1),
(124, 119, 0),
(132, 131, 0),
(132, 132, 1),
(130, 130, 1),
(131, 131, 0),
(129, 129, 1),
(130, 125, 0),
(133, 131, 0),
(128, 125, 0),
(128, 128, 1),
(127, 125, 0),
(127, 127, 1),
(126, 125, 0),
(126, 126, 1),
(124, 124, 1),
(125, 125, 0),
(98, 98, 1),
(99, 96, 0),
(92, 92, 1),
(93, 90, 0),
(91, 91, 1),
(92, 90, 0),
(90, 90, 0),
(129, 125, 0),
(120, 119, 0),
(98, 96, 0),
(97, 97, 1),
(97, 96, 0),
(96, 96, 0),
(95, 95, 1),
(95, 90, 0),
(222, 90, 0),
(222, 93, 1),
(93, 93, 1),
(133, 133, 1),
(134, 131, 0),
(134, 134, 1),
(135, 131, 0),
(135, 135, 1),
(136, 131, 0),
(136, 136, 1),
(137, 137, 0),
(138, 138, 0),
(195, 194, 0),
(195, 195, 1),
(194, 194, 0),
(193, 193, 0),
(192, 192, 0),
(144, 144, 0),
(145, 144, 0),
(145, 145, 1),
(146, 144, 0),
(146, 146, 1),
(147, 144, 0),
(147, 147, 1),
(148, 144, 0),
(148, 148, 1),
(149, 149, 0),
(150, 149, 0),
(150, 150, 1),
(151, 149, 0),
(151, 151, 1),
(152, 149, 0),
(152, 152, 1),
(153, 149, 0),
(153, 153, 1),
(154, 154, 0),
(155, 154, 0),
(155, 155, 1),
(156, 154, 0),
(156, 156, 1),
(157, 154, 0),
(157, 157, 1),
(158, 154, 0),
(158, 158, 1),
(159, 159, 0),
(160, 159, 0),
(160, 160, 1),
(161, 159, 0),
(161, 161, 1),
(162, 159, 0),
(162, 162, 1),
(163, 159, 0),
(163, 163, 1),
(164, 159, 0),
(164, 164, 1),
(165, 165, 0),
(166, 165, 0),
(166, 166, 1),
(167, 165, 0),
(167, 167, 1),
(168, 165, 0),
(168, 168, 1),
(169, 165, 0),
(169, 169, 1),
(170, 165, 0),
(170, 170, 1),
(171, 171, 0),
(172, 172, 0),
(173, 172, 0),
(173, 173, 1),
(174, 172, 0),
(174, 174, 1),
(175, 172, 0),
(175, 175, 1),
(176, 172, 0),
(176, 176, 1),
(177, 172, 0),
(177, 177, 1),
(178, 172, 0),
(178, 178, 1),
(179, 179, 0),
(180, 179, 0),
(180, 180, 1),
(181, 179, 0),
(181, 181, 1),
(182, 179, 0),
(182, 182, 1),
(183, 179, 0),
(183, 183, 1),
(184, 179, 0),
(184, 184, 1),
(185, 185, 0),
(186, 185, 0),
(186, 186, 1),
(187, 185, 0),
(187, 187, 1),
(188, 185, 0),
(188, 188, 1),
(189, 185, 0),
(189, 189, 1),
(190, 185, 0),
(190, 190, 1),
(191, 191, 0),
(196, 194, 0),
(196, 196, 1),
(197, 194, 0),
(197, 197, 1),
(198, 194, 0),
(198, 198, 1),
(199, 199, 0),
(200, 199, 0),
(200, 200, 1),
(201, 199, 0),
(201, 201, 1),
(202, 199, 0),
(202, 202, 1),
(203, 199, 0),
(203, 203, 1),
(204, 204, 0),
(205, 205, 0),
(206, 205, 0),
(206, 206, 1),
(207, 205, 0),
(207, 207, 1),
(208, 205, 0),
(208, 208, 1),
(209, 209, 0),
(210, 210, 0),
(211, 211, 0),
(212, 212, 0),
(213, 213, 0),
(214, 90, 0),
(214, 91, 1),
(214, 214, 2),
(215, 90, 0),
(215, 91, 1),
(215, 215, 2),
(216, 90, 0),
(216, 91, 1),
(216, 216, 2),
(217, 90, 0),
(217, 91, 1),
(217, 217, 2),
(218, 90, 0),
(218, 92, 1),
(218, 218, 2),
(219, 90, 0),
(219, 92, 1),
(219, 219, 2),
(220, 90, 0),
(220, 92, 1),
(220, 220, 2),
(221, 90, 0),
(221, 92, 1),
(221, 221, 2),
(222, 222, 2),
(223, 90, 0),
(223, 93, 1),
(223, 223, 2),
(224, 90, 0),
(224, 93, 1),
(224, 224, 2),
(225, 90, 0),
(225, 93, 1),
(225, 225, 2),
(226, 90, 0),
(226, 95, 1),
(226, 226, 2),
(227, 90, 0),
(227, 95, 1),
(227, 227, 2),
(228, 90, 0),
(228, 95, 1),
(228, 228, 2),
(229, 90, 0),
(229, 95, 1),
(229, 229, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(90, 5, 0),
(90, 4, 0),
(90, 3, 0),
(90, 2, 0),
(90, 1, 0),
(90, 0, 0),
(91, 5, 0),
(91, 4, 0),
(91, 3, 0),
(91, 2, 0),
(91, 1, 0),
(91, 0, 0),
(92, 5, 0),
(92, 4, 0),
(92, 3, 0),
(92, 2, 0),
(92, 1, 0),
(92, 0, 0),
(93, 5, 0),
(93, 4, 0),
(93, 3, 0),
(93, 2, 0),
(93, 1, 0),
(93, 0, 0),
(222, 0, 0),
(222, 1, 0),
(222, 2, 0),
(222, 3, 0),
(222, 4, 0),
(222, 5, 0),
(114, 5, 0),
(114, 4, 0),
(114, 3, 0),
(114, 2, 0),
(114, 1, 0),
(114, 0, 0),
(115, 5, 0),
(115, 4, 0),
(115, 3, 0),
(115, 2, 0),
(115, 1, 0),
(115, 0, 0),
(116, 5, 0),
(116, 4, 0),
(116, 3, 0),
(116, 2, 0),
(116, 1, 0),
(116, 0, 0),
(117, 0, 0),
(117, 1, 0),
(117, 2, 0),
(117, 3, 0),
(117, 4, 0),
(117, 5, 0),
(118, 5, 0),
(118, 4, 0),
(118, 3, 0),
(118, 2, 0),
(118, 1, 0),
(118, 0, 0),
(119, 5, 0),
(119, 4, 0),
(119, 3, 0),
(119, 2, 0),
(119, 1, 0),
(119, 0, 0),
(120, 5, 0),
(120, 4, 0),
(120, 3, 0),
(120, 2, 0),
(120, 1, 0),
(120, 0, 0),
(121, 5, 0),
(121, 4, 0),
(121, 3, 0),
(121, 2, 0),
(121, 1, 0),
(121, 0, 0),
(122, 5, 0),
(122, 4, 0),
(122, 3, 0),
(122, 2, 0),
(122, 1, 0),
(122, 0, 0),
(111, 5, 0),
(111, 4, 0),
(111, 3, 0),
(111, 2, 0),
(111, 1, 0),
(111, 0, 0),
(112, 5, 0),
(112, 4, 0),
(112, 3, 0),
(112, 2, 0),
(112, 1, 0),
(112, 0, 0),
(113, 5, 0),
(113, 4, 0),
(113, 3, 0),
(113, 2, 0),
(113, 1, 0),
(113, 0, 0),
(98, 5, 0),
(98, 3, 0),
(98, 2, 0),
(98, 1, 0),
(98, 0, 0),
(98, 4, 0),
(99, 5, 0),
(99, 3, 0),
(99, 2, 0),
(99, 1, 0),
(99, 0, 0),
(99, 4, 0),
(100, 5, 0),
(100, 3, 0),
(100, 2, 0),
(100, 1, 0),
(100, 0, 0),
(100, 4, 0),
(101, 5, 0),
(101, 3, 0),
(101, 2, 0),
(101, 1, 0),
(101, 0, 0),
(101, 4, 0),
(102, 5, 0),
(102, 3, 0),
(102, 2, 0),
(102, 1, 0),
(102, 0, 0),
(102, 4, 0),
(103, 5, 0),
(103, 3, 0),
(103, 2, 0),
(103, 1, 0),
(103, 0, 0),
(103, 4, 0),
(104, 5, 0),
(104, 3, 0),
(104, 2, 0),
(104, 1, 0),
(104, 0, 0),
(104, 4, 0),
(105, 5, 0),
(105, 3, 0),
(105, 2, 0),
(105, 1, 0),
(105, 0, 0),
(105, 4, 0),
(106, 5, 0),
(106, 3, 0),
(106, 2, 0),
(106, 1, 0),
(106, 0, 0),
(106, 4, 0),
(107, 5, 0),
(107, 3, 0),
(107, 2, 0),
(107, 1, 0),
(107, 0, 0),
(107, 4, 0),
(108, 5, 0),
(108, 3, 0),
(108, 2, 0),
(108, 1, 0),
(108, 0, 0),
(108, 4, 0),
(109, 5, 0),
(109, 3, 0),
(109, 2, 0),
(109, 1, 0),
(109, 0, 0),
(109, 4, 0),
(110, 5, 0),
(110, 3, 0),
(110, 2, 0),
(110, 1, 0),
(110, 0, 0),
(110, 4, 0),
(97, 5, 0),
(97, 3, 0),
(97, 2, 0),
(97, 1, 0),
(97, 0, 0),
(97, 4, 0),
(96, 5, 0),
(96, 3, 0),
(96, 2, 0),
(96, 1, 0),
(96, 0, 0),
(96, 4, 0),
(95, 5, 0),
(95, 3, 0),
(95, 2, 0),
(95, 1, 0),
(95, 0, 0),
(95, 4, 0),
(123, 0, 0),
(123, 1, 0),
(123, 2, 0),
(123, 3, 0),
(123, 4, 0),
(123, 5, 0),
(124, 0, 0),
(124, 1, 0),
(124, 2, 0),
(124, 3, 0),
(124, 4, 0),
(124, 5, 0),
(125, 0, 0),
(125, 1, 0),
(125, 2, 0),
(125, 3, 0),
(125, 4, 0),
(125, 5, 0),
(126, 0, 0),
(126, 1, 0),
(126, 2, 0),
(126, 3, 0),
(126, 4, 0),
(126, 5, 0),
(127, 0, 0),
(127, 1, 0),
(127, 2, 0),
(127, 3, 0),
(127, 4, 0),
(127, 5, 0),
(128, 0, 0),
(128, 1, 0),
(128, 2, 0),
(128, 3, 0),
(128, 4, 0),
(128, 5, 0),
(129, 0, 0),
(129, 1, 0),
(129, 2, 0),
(129, 3, 0),
(129, 4, 0),
(129, 5, 0),
(130, 0, 0),
(130, 1, 0),
(130, 2, 0),
(130, 3, 0),
(130, 4, 0),
(130, 5, 0),
(131, 0, 0),
(131, 1, 0),
(131, 2, 0),
(131, 3, 0),
(131, 4, 0),
(131, 5, 0),
(132, 0, 0),
(132, 1, 0),
(132, 2, 0),
(132, 3, 0),
(132, 4, 0),
(132, 5, 0),
(133, 0, 0),
(133, 1, 0),
(133, 2, 0),
(133, 3, 0),
(133, 4, 0),
(133, 5, 0),
(134, 0, 0),
(134, 1, 0),
(134, 2, 0),
(134, 3, 0),
(134, 4, 0),
(134, 5, 0),
(135, 0, 0),
(135, 1, 0),
(135, 2, 0),
(135, 3, 0),
(135, 4, 0),
(135, 5, 0),
(136, 0, 0),
(136, 1, 0),
(136, 2, 0),
(136, 3, 0),
(136, 4, 0),
(136, 5, 0),
(137, 0, 0),
(137, 1, 0),
(137, 2, 0),
(137, 3, 0),
(137, 4, 0),
(137, 5, 0),
(138, 0, 0),
(138, 1, 0),
(138, 2, 0),
(138, 3, 0),
(138, 4, 0),
(138, 5, 0),
(194, 2, 0),
(194, 3, 0),
(194, 4, 0),
(194, 5, 0),
(194, 6, 0),
(194, 7, 0),
(195, 5, 0),
(195, 4, 0),
(195, 3, 0),
(195, 2, 0),
(195, 1, 0),
(195, 0, 0),
(194, 1, 0),
(194, 0, 0),
(193, 7, 0),
(193, 6, 0),
(193, 5, 0),
(193, 4, 0),
(193, 3, 0),
(193, 2, 0),
(193, 1, 0),
(193, 0, 0),
(192, 7, 0),
(192, 6, 0),
(192, 5, 0),
(192, 4, 0),
(192, 3, 0),
(192, 2, 0),
(192, 1, 0),
(192, 0, 0),
(144, 0, 0),
(144, 1, 0),
(144, 2, 0),
(144, 3, 0),
(144, 4, 0),
(144, 5, 0),
(145, 5, 0),
(145, 4, 0),
(145, 3, 0),
(145, 2, 0),
(145, 1, 0),
(145, 0, 0),
(146, 5, 0),
(146, 4, 0),
(146, 3, 0),
(146, 2, 0),
(146, 1, 0),
(146, 0, 0),
(147, 5, 0),
(147, 4, 0),
(147, 3, 0),
(147, 2, 0),
(147, 1, 0),
(147, 0, 0),
(148, 5, 0),
(148, 4, 0),
(148, 3, 0),
(148, 2, 0),
(148, 1, 0),
(148, 0, 0),
(149, 0, 0),
(149, 1, 0),
(149, 2, 0),
(149, 3, 0),
(149, 4, 0),
(149, 5, 0),
(150, 5, 0),
(150, 4, 0),
(150, 3, 0),
(150, 2, 0),
(150, 1, 0),
(150, 0, 0),
(151, 5, 0),
(151, 4, 0),
(151, 3, 0),
(151, 2, 0),
(151, 1, 0),
(151, 0, 0),
(152, 5, 0),
(152, 4, 0),
(152, 3, 0),
(152, 2, 0),
(152, 1, 0),
(152, 0, 0),
(153, 5, 0),
(153, 4, 0),
(153, 3, 0),
(153, 2, 0),
(153, 1, 0),
(153, 0, 0),
(154, 0, 0),
(154, 1, 0),
(154, 2, 0),
(154, 3, 0),
(154, 4, 0),
(154, 5, 0),
(155, 5, 0),
(155, 4, 0),
(155, 3, 0),
(155, 2, 0),
(155, 1, 0),
(155, 0, 0),
(156, 5, 0),
(156, 4, 0),
(156, 3, 0),
(156, 2, 0),
(156, 1, 0),
(156, 0, 0),
(157, 5, 0),
(157, 4, 0),
(157, 3, 0),
(157, 2, 0),
(157, 1, 0),
(157, 0, 0),
(158, 5, 0),
(158, 4, 0),
(158, 3, 0),
(158, 2, 0),
(158, 1, 0),
(158, 0, 0),
(159, 5, 0),
(159, 4, 0),
(159, 3, 0),
(159, 2, 0),
(159, 1, 0),
(159, 0, 0),
(160, 5, 0),
(160, 4, 0),
(160, 3, 0),
(160, 2, 0),
(160, 1, 0),
(160, 0, 0),
(161, 5, 0),
(161, 4, 0),
(161, 3, 0),
(161, 2, 0),
(161, 1, 0),
(161, 0, 0),
(162, 5, 0),
(162, 4, 0),
(162, 3, 0),
(162, 2, 0),
(162, 1, 0),
(162, 0, 0),
(163, 5, 0),
(163, 4, 0),
(163, 3, 0),
(163, 2, 0),
(163, 1, 0),
(163, 0, 0),
(164, 5, 0),
(164, 4, 0),
(164, 3, 0),
(164, 2, 0),
(164, 1, 0),
(164, 0, 0),
(165, 0, 0),
(165, 1, 0),
(165, 2, 0),
(165, 3, 0),
(165, 4, 0),
(165, 5, 0),
(166, 5, 0),
(166, 4, 0),
(166, 3, 0),
(166, 2, 0),
(166, 1, 0),
(166, 0, 0),
(167, 5, 0),
(167, 4, 0),
(167, 3, 0),
(167, 2, 0),
(167, 1, 0),
(167, 0, 0),
(168, 5, 0),
(168, 4, 0),
(168, 3, 0),
(168, 2, 0),
(168, 1, 0),
(168, 0, 0),
(169, 5, 0),
(169, 4, 0),
(169, 3, 0),
(169, 2, 0),
(169, 1, 0),
(169, 0, 0),
(170, 5, 0),
(170, 4, 0),
(170, 3, 0),
(170, 2, 0),
(170, 1, 0),
(170, 0, 0),
(171, 0, 0),
(171, 1, 0),
(171, 2, 0),
(171, 3, 0),
(171, 4, 0),
(171, 5, 0),
(172, 0, 0),
(172, 1, 0),
(172, 2, 0),
(172, 3, 0),
(172, 4, 0),
(172, 5, 0),
(173, 5, 0),
(173, 4, 0),
(173, 3, 0),
(173, 2, 0),
(173, 1, 0),
(173, 0, 0),
(174, 5, 0),
(174, 4, 0),
(174, 3, 0),
(174, 2, 0),
(174, 1, 0),
(174, 0, 0),
(175, 5, 0),
(175, 4, 0),
(175, 3, 0),
(175, 2, 0),
(175, 1, 0),
(175, 0, 0),
(176, 5, 0),
(176, 4, 0),
(176, 3, 0),
(176, 2, 0),
(176, 1, 0),
(176, 0, 0),
(177, 5, 0),
(177, 4, 0),
(177, 3, 0),
(177, 2, 0),
(177, 1, 0),
(177, 0, 0),
(178, 5, 0),
(178, 4, 0),
(178, 3, 0),
(178, 2, 0),
(178, 1, 0),
(178, 0, 0),
(179, 0, 0),
(179, 1, 0),
(179, 2, 0),
(179, 3, 0),
(179, 4, 0),
(179, 5, 0),
(180, 5, 0),
(180, 4, 0),
(180, 3, 0),
(180, 2, 0),
(180, 1, 0),
(180, 0, 0),
(181, 5, 0),
(181, 4, 0),
(181, 3, 0),
(181, 2, 0),
(181, 1, 0),
(181, 0, 0),
(182, 5, 0),
(182, 4, 0),
(182, 3, 0),
(182, 2, 0),
(182, 1, 0),
(182, 0, 0),
(183, 5, 0),
(183, 4, 0),
(183, 3, 0),
(183, 2, 0),
(183, 1, 0),
(183, 0, 0),
(184, 5, 0),
(184, 4, 0),
(184, 3, 0),
(184, 2, 0),
(184, 1, 0),
(184, 0, 0),
(185, 0, 0),
(185, 1, 0),
(185, 2, 0),
(185, 3, 0),
(185, 4, 0),
(185, 5, 0),
(186, 5, 0),
(186, 4, 0),
(186, 3, 0),
(186, 2, 0),
(186, 1, 0),
(186, 0, 0),
(187, 5, 0),
(187, 4, 0),
(187, 3, 0),
(187, 2, 0),
(187, 1, 0),
(187, 0, 0),
(188, 0, 0),
(188, 1, 0),
(188, 2, 0),
(188, 3, 0),
(188, 4, 0),
(188, 5, 0),
(189, 5, 0),
(189, 4, 0),
(189, 3, 0),
(189, 2, 0),
(189, 1, 0),
(189, 0, 0),
(190, 5, 0),
(190, 4, 0),
(190, 3, 0),
(190, 2, 0),
(190, 1, 0),
(190, 0, 0),
(191, 5, 0),
(191, 4, 0),
(191, 3, 0),
(191, 2, 0),
(191, 1, 0),
(191, 0, 0),
(195, 6, 0),
(195, 7, 0),
(196, 0, 0),
(196, 1, 0),
(196, 2, 0),
(196, 3, 0),
(196, 4, 0),
(196, 5, 0),
(196, 6, 0),
(196, 7, 0),
(197, 0, 0),
(197, 1, 0),
(197, 2, 0),
(197, 3, 0),
(197, 4, 0),
(197, 5, 0),
(197, 6, 0),
(197, 7, 0),
(198, 0, 0),
(198, 1, 0),
(198, 2, 0),
(198, 3, 0),
(198, 4, 0),
(198, 5, 0),
(198, 6, 0),
(198, 7, 0),
(199, 0, 0),
(199, 1, 0),
(199, 2, 0),
(199, 3, 0),
(199, 4, 0),
(199, 5, 0),
(199, 6, 0),
(199, 7, 0),
(200, 0, 0),
(200, 1, 0),
(200, 2, 0),
(200, 3, 0),
(200, 4, 0),
(200, 5, 0),
(200, 6, 0),
(200, 7, 0),
(201, 0, 0),
(201, 1, 0),
(201, 2, 0),
(201, 3, 0),
(201, 4, 0),
(201, 5, 0),
(201, 6, 0),
(201, 7, 0),
(202, 0, 0),
(202, 1, 0),
(202, 2, 0),
(202, 3, 0),
(202, 4, 0),
(202, 5, 0),
(202, 6, 0),
(202, 7, 0),
(203, 0, 0),
(203, 1, 0),
(203, 2, 0),
(203, 3, 0),
(203, 4, 0),
(203, 5, 0),
(203, 6, 0),
(203, 7, 0),
(204, 0, 0),
(204, 1, 0),
(204, 2, 0),
(204, 3, 0),
(204, 4, 0),
(204, 5, 0),
(204, 6, 0),
(204, 7, 0),
(205, 0, 0),
(205, 1, 0),
(205, 2, 0),
(205, 3, 0),
(205, 4, 0),
(205, 5, 0),
(205, 6, 0),
(205, 7, 0),
(206, 0, 0),
(206, 1, 0),
(206, 2, 0),
(206, 3, 0),
(206, 4, 0),
(206, 5, 0),
(206, 6, 0),
(206, 7, 0),
(207, 0, 0),
(207, 1, 0),
(207, 2, 0),
(207, 3, 0),
(207, 4, 0),
(207, 5, 0),
(207, 6, 0),
(207, 7, 0),
(208, 0, 0),
(208, 1, 0),
(208, 2, 0),
(208, 3, 0),
(208, 4, 0),
(208, 5, 0),
(208, 6, 0),
(208, 7, 0),
(209, 0, 0),
(209, 1, 0),
(209, 2, 0),
(209, 3, 0),
(209, 4, 0),
(209, 5, 0),
(209, 6, 0),
(209, 7, 0),
(210, 0, 0),
(210, 1, 0),
(210, 2, 0),
(210, 3, 0),
(210, 4, 0),
(210, 5, 0),
(210, 6, 0),
(210, 7, 0),
(211, 0, 0),
(211, 1, 0),
(211, 2, 0),
(211, 3, 0),
(211, 4, 0),
(211, 5, 0),
(211, 6, 0),
(211, 7, 0),
(212, 0, 0),
(212, 1, 0),
(212, 2, 0),
(212, 3, 0),
(212, 4, 0),
(212, 5, 0),
(212, 6, 0),
(212, 7, 0),
(213, 0, 0),
(213, 1, 0),
(213, 2, 0),
(213, 3, 0),
(213, 4, 0),
(213, 5, 0),
(213, 6, 0),
(213, 7, 0),
(214, 0, 0),
(214, 1, 0),
(214, 2, 0),
(214, 3, 0),
(214, 4, 0),
(214, 5, 0),
(214, 6, 0),
(214, 7, 0),
(215, 0, 0),
(215, 1, 0),
(215, 2, 0),
(215, 3, 0),
(215, 4, 0),
(215, 5, 0),
(215, 6, 0),
(215, 7, 0),
(216, 0, 0),
(216, 1, 0),
(216, 2, 0),
(216, 3, 0),
(216, 4, 0),
(216, 5, 0),
(216, 6, 0),
(216, 7, 0),
(217, 0, 0),
(217, 1, 0),
(217, 2, 0),
(217, 3, 0),
(217, 4, 0),
(217, 5, 0),
(217, 6, 0),
(217, 7, 0),
(218, 0, 0),
(218, 1, 0),
(218, 2, 0),
(218, 3, 0),
(218, 4, 0),
(218, 5, 0),
(218, 6, 0),
(218, 7, 0),
(219, 0, 0),
(219, 1, 0),
(219, 2, 0),
(219, 3, 0),
(219, 4, 0),
(219, 5, 0),
(219, 6, 0),
(219, 7, 0),
(220, 0, 0),
(220, 1, 0),
(220, 2, 0),
(220, 3, 0),
(220, 4, 0),
(220, 5, 0),
(220, 6, 0),
(220, 7, 0),
(221, 0, 0),
(221, 1, 0),
(221, 2, 0),
(221, 3, 0),
(221, 4, 0),
(221, 5, 0),
(221, 6, 0),
(221, 7, 0),
(222, 6, 0),
(222, 7, 0),
(223, 0, 0),
(223, 1, 0),
(223, 2, 0),
(223, 3, 0),
(223, 4, 0),
(223, 5, 0),
(223, 6, 0),
(223, 7, 0),
(224, 0, 0),
(224, 1, 0),
(224, 2, 0),
(224, 3, 0),
(224, 4, 0),
(224, 5, 0),
(224, 6, 0),
(224, 7, 0),
(225, 0, 0),
(225, 1, 0),
(225, 2, 0),
(225, 3, 0),
(225, 4, 0),
(225, 5, 0),
(225, 6, 0),
(225, 7, 0),
(226, 0, 0),
(226, 1, 0),
(226, 2, 0),
(226, 3, 0),
(226, 4, 0),
(226, 5, 0),
(226, 6, 0),
(226, 7, 0),
(227, 0, 0),
(227, 1, 0),
(227, 2, 0),
(227, 3, 0),
(227, 4, 0),
(227, 5, 0),
(227, 6, 0),
(227, 7, 0),
(228, 0, 0),
(228, 1, 0),
(228, 2, 0),
(228, 3, 0),
(228, 4, 0),
(228, 5, 0),
(228, 6, 0),
(228, 7, 0),
(229, 0, 0),
(229, 1, 0),
(229, 2, 0),
(229, 3, 0),
(229, 4, 0),
(229, 5, 0),
(229, 6, 0),
(229, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(90, 0),
(90, 1),
(90, 2),
(91, 0),
(91, 1),
(91, 2),
(92, 0),
(92, 1),
(92, 2),
(93, 0),
(93, 1),
(93, 2),
(95, 0),
(95, 1),
(95, 2),
(96, 0),
(96, 1),
(96, 2),
(97, 0),
(97, 1),
(97, 2),
(98, 0),
(98, 1),
(98, 2),
(99, 0),
(99, 1),
(99, 2),
(100, 0),
(100, 1),
(100, 2),
(101, 0),
(101, 1),
(101, 2),
(102, 0),
(102, 1),
(102, 2),
(103, 0),
(103, 1),
(103, 2),
(104, 0),
(104, 1),
(104, 2),
(105, 0),
(105, 1),
(105, 2),
(106, 0),
(106, 1),
(106, 2),
(107, 0),
(107, 1),
(107, 2),
(108, 0),
(108, 1),
(108, 2),
(109, 0),
(109, 1),
(109, 2),
(110, 0),
(110, 1),
(110, 2),
(111, 0),
(111, 1),
(111, 2),
(112, 0),
(112, 1),
(112, 2),
(113, 0),
(113, 1),
(113, 2),
(114, 0),
(114, 1),
(114, 2),
(115, 0),
(115, 1),
(115, 2),
(116, 0),
(116, 1),
(116, 2),
(117, 0),
(117, 1),
(117, 2),
(118, 0),
(118, 1),
(118, 2),
(119, 0),
(119, 1),
(119, 2),
(120, 0),
(120, 1),
(120, 2),
(121, 0),
(121, 1),
(121, 2),
(122, 0),
(122, 1),
(122, 2),
(123, 0),
(123, 1),
(123, 2),
(124, 0),
(124, 1),
(124, 2),
(125, 0),
(125, 1),
(125, 2),
(126, 0),
(126, 1),
(126, 2),
(127, 0),
(127, 1),
(127, 2),
(128, 0),
(128, 1),
(128, 2),
(129, 0),
(129, 1),
(129, 2),
(130, 0),
(130, 1),
(130, 2),
(131, 0),
(131, 1),
(131, 2),
(132, 0),
(132, 1),
(132, 2),
(133, 0),
(133, 1),
(133, 2),
(134, 0),
(134, 1),
(134, 2),
(135, 0),
(135, 1),
(135, 2),
(136, 0),
(136, 1),
(136, 2),
(137, 0),
(137, 1),
(137, 2),
(138, 0),
(138, 1),
(138, 2),
(144, 3),
(144, 4),
(144, 5),
(145, 0),
(145, 3),
(145, 4),
(145, 5),
(146, 0),
(146, 3),
(146, 4),
(146, 5),
(147, 0),
(147, 3),
(147, 4),
(147, 5),
(148, 0),
(148, 3),
(148, 4),
(148, 5),
(149, 3),
(149, 4),
(149, 5),
(150, 0),
(150, 3),
(150, 4),
(150, 5),
(151, 0),
(151, 3),
(151, 4),
(151, 5),
(152, 0),
(152, 3),
(152, 4),
(152, 5),
(153, 0),
(153, 3),
(153, 4),
(153, 5),
(154, 3),
(154, 4),
(154, 5),
(155, 0),
(155, 3),
(155, 4),
(155, 5),
(156, 0),
(156, 3),
(156, 4),
(156, 5),
(157, 0),
(157, 3),
(157, 4),
(157, 5),
(158, 0),
(158, 3),
(158, 4),
(158, 5),
(159, 0),
(159, 3),
(159, 4),
(159, 5),
(160, 0),
(160, 3),
(160, 4),
(160, 5),
(161, 0),
(161, 3),
(161, 4),
(161, 5),
(162, 0),
(162, 3),
(162, 4),
(162, 5),
(163, 0),
(163, 3),
(163, 4),
(163, 5),
(164, 0),
(164, 3),
(164, 4),
(164, 5),
(165, 3),
(165, 4),
(165, 5),
(166, 0),
(166, 3),
(166, 4),
(166, 5),
(167, 0),
(167, 3),
(167, 4),
(167, 5),
(168, 0),
(168, 3),
(168, 4),
(168, 5),
(169, 0),
(169, 3),
(169, 4),
(169, 5),
(170, 0),
(170, 3),
(170, 4),
(170, 5),
(171, 3),
(171, 4),
(171, 5),
(172, 3),
(172, 4),
(172, 5),
(173, 0),
(173, 3),
(173, 4),
(173, 5),
(174, 0),
(174, 3),
(174, 4),
(174, 5),
(175, 0),
(175, 3),
(175, 4),
(175, 5),
(176, 0),
(176, 3),
(176, 4),
(176, 5),
(177, 0),
(177, 3),
(177, 4),
(177, 5),
(178, 0),
(178, 3),
(178, 4),
(178, 5),
(179, 3),
(179, 4),
(179, 5),
(180, 0),
(180, 3),
(180, 4),
(180, 5),
(181, 0),
(181, 3),
(181, 4),
(181, 5),
(182, 0),
(182, 3),
(182, 4),
(182, 5),
(183, 0),
(183, 3),
(183, 4),
(183, 5),
(184, 0),
(184, 3),
(184, 4),
(184, 5),
(185, 3),
(185, 4),
(185, 5),
(186, 3),
(186, 4),
(186, 5),
(187, 3),
(187, 4),
(187, 5),
(188, 0),
(188, 3),
(189, 3),
(189, 4),
(189, 5),
(190, 3),
(190, 4),
(190, 5),
(191, 3),
(191, 4),
(191, 5),
(192, 0),
(192, 6),
(192, 7),
(193, 0),
(193, 6),
(193, 7),
(194, 0),
(194, 6),
(194, 7),
(195, 6),
(195, 7),
(196, 6),
(196, 7),
(197, 6),
(197, 7),
(198, 6),
(198, 7),
(199, 0),
(199, 6),
(199, 7),
(200, 6),
(200, 7),
(201, 6),
(201, 7),
(202, 6),
(202, 7),
(203, 6),
(203, 7),
(204, 0),
(204, 6),
(204, 7),
(205, 0),
(205, 6),
(205, 7),
(206, 6),
(206, 7),
(207, 6),
(207, 7),
(208, 6),
(208, 7),
(209, 0),
(209, 6),
(209, 7),
(210, 0),
(210, 6),
(210, 7),
(211, 0),
(211, 6),
(211, 7),
(212, 0),
(212, 6),
(212, 7),
(213, 0),
(213, 6),
(213, 7),
(214, 0),
(214, 1),
(214, 2),
(215, 0),
(215, 1),
(215, 2),
(216, 0),
(216, 1),
(216, 2),
(217, 0),
(217, 1),
(217, 2),
(218, 0),
(218, 1),
(218, 2),
(219, 0),
(219, 1),
(219, 2),
(220, 0),
(220, 1),
(220, 2),
(221, 0),
(221, 1),
(221, 2),
(222, 0),
(222, 1),
(222, 2),
(223, 0),
(223, 1),
(223, 2),
(224, 0),
(224, 1),
(224, 2),
(225, 0),
(225, 1),
(225, 2),
(226, 0),
(226, 1),
(226, 2),
(227, 0),
(227, 1),
(227, 2),
(228, 0),
(228, 1),
(228, 2),
(229, 0),
(229, 1),
(229, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_cmsblock`
--

CREATE TABLE `oc_cmsblock` (
  `cmsblock_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` tinyint(1) DEFAULT NULL,
  `identify` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `banner_store` varchar(255) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_cmsblock`
--

INSERT INTO `oc_cmsblock` (`cmsblock_id`, `status`, `sort_order`, `identify`, `link`, `type`, `banner_store`) VALUES
(51, 1, 0, 'banner_left', '', 1, '1,2,3,4,0'),
(45, 1, 0, 'banner_static1_home1', '', 1, '0'),
(46, 1, 0, 'banner_cennter_home1', '', 1, '0'),
(47, 1, 0, 'banner_bottom', '', 1, '1,2,3,4,5,6,7,0'),
(48, 1, 0, 'social_footer', '', 1, '1,2,3,4,5,6,7,0'),
(49, 1, 0, 'footer_link', '', 1, '1,2,3,4,5,6,7,0'),
(44, 1, 0, 'banner_top', '', 1, '1,3,4,6,7,0'),
(43, 1, 0, 'special_product', 'index.php?route=product/special', 0, '1,2,3,4,5,0'),
(52, 1, 0, 'banner_static1_home2', '', 1, '1,0'),
(42, 1, 0, 'contact_us', 'index.php?route=information/contact', 0, '1,2,3,4,5,0'),
(35, 1, 0, 'bestseller_page', 'index.php?route=product/ocbestseller', 0, '1,2,3,4,5,0'),
(41, 1, 0, 'newproducts_page', 'index.php?route=product/ocnewproduct', 0, '1,2,3,4,5,0'),
(50, 1, 0, 'banner_cennter1_home1', '', 1, '0'),
(53, 1, 0, 'banner_static2_home2', '', 1, '1,0'),
(54, 1, 0, 'banner_cennter_home2', '', 1, '1,0'),
(55, 1, 0, 'banner_static_home3', '', 1, '2,0'),
(56, 1, 0, 'banner_static1_home3', '', 1, '2,0'),
(57, 1, 0, 'banner_cennter_home3', '', 1, '2,0'),
(61, 1, 0, 'banner_static_home5', '', 1, '4,0'),
(58, 1, 0, 'banner_static_home4', '', 1, '3,0'),
(59, 1, 0, 'banner_cennter_home4', '', 1, '3,0'),
(60, 1, 0, 'banner_cennter1_home4', '', 1, '3,0'),
(62, 1, 0, 'banner_static1_home5', '', 1, '4,0'),
(63, 1, 0, 'banner_cennter_home5', '', 1, '4,0'),
(64, 1, 0, 'banner_left2', '', 1, '3,4,5,0'),
(65, 1, 0, 'banner_static_home6', '', 1, '5,0'),
(66, 1, 0, 'banner_static1_home6', '', 1, '5,0'),
(67, 1, 0, 'banner_cennter_home6', '', 1, '5,0'),
(68, 1, 0, 'banner_static_home7', '', 1, '6,0'),
(69, 1, 0, 'banner_cennter_home7', '', 1, '6,0'),
(70, 1, 0, 'banner_cennter1_home7', '', 1, '6,0'),
(71, 1, 0, 'banner_left3', '', 1, '6,7,0'),
(72, 1, 0, 'banner_static_home8', '', 1, '7,0'),
(73, 1, 0, 'banner_static1_home8', '', 1, '7,0'),
(74, 1, 0, 'banner_cennter_home8', '', 1, '7,0');

-- --------------------------------------------------------

--
-- Table structure for table `oc_cmsblock_description`
--

CREATE TABLE `oc_cmsblock_description` (
  `cmsblock_des_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `cmsblock_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `sub_title` varchar(64) DEFAULT NULL,
  `description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_cmsblock_description`
--

INSERT INTO `oc_cmsblock_description` (`cmsblock_des_id`, `language_id`, `cmsblock_id`, `title`, `sub_title`, `description`) VALUES
(290, 1, 67, 'Banner Center Home6', NULL, '&lt;div class=&quot;banner-center&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block2-home6.jpg&quot; alt=&quot;block3&quot;&gt;&lt;/a&gt;&lt;/div&gt;'),
(291, 2, 67, 'Banner Center Home6', NULL, '&lt;div class=&quot;banner-center&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block2-home6.jpg&quot; alt=&quot;block3&quot;&gt;&lt;/a&gt;&lt;/div&gt;'),
(306, 1, 47, '                  Banner Bottom      ', NULL, '										  										  										  										  										  										  &lt;div class=&quot;banner-bottom&quot;&gt;\r\n	&lt;div class=&quot;container&quot;&gt;\r\n		&lt;div class=&quot;container-inner&quot;&gt;\r\n			&lt;div class=&quot;row&quot;&gt;\r\n				&lt;div class=&quot;col-d-4 col-sm-4 col-sms-12&quot;&gt;\r\n					&lt;div class=&quot;col col1&quot;&gt;\r\n						&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n						&lt;div class=&quot;banner-text&quot;&gt;\r\n							&lt;h2&gt;+88 123 456 7899&lt;/h2&gt;\r\n							&lt;p&gt;Free support line!&lt;/p&gt;\r\n						&lt;/div&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=&quot;col-d-4 col-sm-4 col-sms-12&quot;&gt;\r\n					&lt;div class=&quot;col col2&quot;&gt;\r\n						&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n						&lt;div class=&quot;banner-text&quot;&gt;\r\n							&lt;h2&gt;Support@plazathemes.com&lt;/h2&gt;\r\n							&lt;p&gt;Orders Support!&lt;/p&gt;\r\n						&lt;/div&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=&quot;col-d-4 col-sm-4 col-sms-12&quot;&gt;\r\n					&lt;div class=&quot;col col3&quot;&gt;\r\n						&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n						&lt;div class=&quot;banner-text&quot;&gt;\r\n							&lt;h2&gt;Mon - Fri / 8:00 - 18:00&lt;/h2&gt;\r\n							&lt;p&gt;Working Days/Hours!&lt;/p&gt;\r\n						&lt;/div&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt; 									 									 									 									 									 									'),
(309, 2, 48, '                  Social Footer      ', NULL, '										  										  										  										  										  										  &lt;div class=&quot;social-footer&quot;&gt;\r\n	&lt;div class=&quot;title-social&quot;&gt;&lt;h2&gt;Follow us&lt;/h2&gt;&lt;/div&gt;\r\n	&lt;ul&gt;\r\n		&lt;li class=&quot;twitter&quot;&gt;&lt;a href=&quot;#&quot;&gt;twitter&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li class=&quot;facebook&quot;&gt;&lt;a href=&quot;#&quot;&gt;facebook&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li class=&quot;google&quot;&gt;&lt;a href=&quot;#&quot;&gt;google&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li class=&quot;behance&quot;&gt;&lt;a href=&quot;#&quot;&gt;behance&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li class=&quot;pinterest&quot;&gt;&lt;a href=&quot;#&quot;&gt;pinterest&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li class=&quot;youtube&quot;&gt;&lt;a href=&quot;#&quot;&gt;youtube&lt;/a&gt;&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n&lt;/div&gt; 									 									 									 									 									 									'),
(310, 1, 49, '                  Footer Link      ', NULL, '										  										  										  										  										  										  &lt;div class=&quot;footer-link&quot;&gt;\r\n	&lt;ul&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Blog&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Contact Us&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;My Account&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Checkout&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Cart&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Shop&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;SmartWatch&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Video Game&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Cellphone&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Headphone&lt;/a&gt;&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n&lt;/div&gt; 									 									 									 									 									 									'),
(300, 1, 68, 'Banner Static Home7', NULL, '&lt;div class=&quot;banner-static1&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block-home7.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block1-home7.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(301, 2, 68, 'Banner Static Home7', NULL, '&lt;div class=&quot;banner-static1&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block-home7.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block1-home7.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(302, 1, 69, 'Banner Center Home7', NULL, '&lt;div class=&quot;banner-center&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block2-home7.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block3-home7.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(303, 2, 69, 'Banner Center Home7', NULL, '&lt;div class=&quot;banner-center&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block2-home7.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block3-home7.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(304, 1, 70, 'Banner Center1 Home7', NULL, '&lt;div class=&quot;banner-center1&quot;&gt;\r\n	&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block4-home7.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n&lt;/div&gt;'),
(305, 2, 70, 'Banner Center1 Home7', NULL, '&lt;div class=&quot;banner-center1&quot;&gt;\r\n	&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block4-home7.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n&lt;/div&gt;'),
(315, 2, 71, '   Banner Left3 ', NULL, '										  &lt;div class=&quot;banner-left&quot;&gt;\r\n	&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/banner-left2.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n&lt;/div&gt; 									'),
(287, 2, 66, 'Banner Static1 Home6', NULL, '&lt;div class=&quot;banner-static1&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n				&lt;div class=&quot;banner-text&quot;&gt;\r\n					&lt;h2&gt;Free Return&lt;/h2&gt;\r\n					&lt;p&gt;30 days money back!&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n				&lt;div class=&quot;banner-text&quot;&gt;\r\n					&lt;h2&gt;Free shipping&lt;/h2&gt;\r\n					&lt;p&gt;Free shipping on all order&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col3&quot;&gt;\r\n				&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n				&lt;div class=&quot;banner-text&quot;&gt;\r\n					&lt;h2&gt;Secure payment&lt;/h2&gt;\r\n					&lt;p&gt;100% secure payment&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col4&quot;&gt;\r\n				&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n				&lt;div class=&quot;banner-text&quot;&gt;\r\n					&lt;h2&gt;Support 24/7&lt;/h2&gt;\r\n					&lt;p&gt;We support online 24hrs&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(268, 1, 61, '      Banner Static Home5  ', NULL, '										  										  &lt;div class=&quot;banner-static1&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block-home5.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block1-home5.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt; 									 									'),
(269, 2, 61, '      Banner Static Home5  ', NULL, '										  										  &lt;div class=&quot;banner-static1&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block-home5.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block1-home5.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt; 									 									'),
(270, 1, 62, 'Banner Static1 Home5', NULL, '&lt;div class=&quot;banner-static2&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block2-home5.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block3-home5.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(271, 2, 62, 'Banner Static1 Home5', NULL, '&lt;div class=&quot;banner-static2&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block2-home5.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block3-home5.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(272, 1, 63, 'Banner Center Home5', NULL, '&lt;div class=&quot;banner-center&quot;&gt;\r\n	&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block4-home5.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n&lt;/div&gt;'),
(273, 2, 63, 'Banner Center Home5', NULL, '&lt;div class=&quot;banner-center&quot;&gt;\r\n	&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block4-home5.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n&lt;/div&gt;'),
(285, 2, 65, 'Banner Static Home6', NULL, '&lt;div class=&quot;banner-static&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block-home6.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block1-home6.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(286, 1, 66, 'Banner Static1 Home6', NULL, '&lt;div class=&quot;banner-static1&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n				&lt;div class=&quot;banner-text&quot;&gt;\r\n					&lt;h2&gt;Free Return&lt;/h2&gt;\r\n					&lt;p&gt;30 days money back!&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n				&lt;div class=&quot;banner-text&quot;&gt;\r\n					&lt;h2&gt;Free shipping&lt;/h2&gt;\r\n					&lt;p&gt;Free shipping on all order&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col3&quot;&gt;\r\n				&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n				&lt;div class=&quot;banner-text&quot;&gt;\r\n					&lt;h2&gt;Secure payment&lt;/h2&gt;\r\n					&lt;p&gt;100% secure payment&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col4&quot;&gt;\r\n				&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n				&lt;div class=&quot;banner-text&quot;&gt;\r\n					&lt;h2&gt;Support 24/7&lt;/h2&gt;\r\n					&lt;p&gt;We support online 24hrs&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(253, 2, 59, 'Banner Center Home4', NULL, '&lt;div class=&quot;banner-center&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block2-home4.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block3-home4.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(254, 1, 60, 'Banner Center1 Home4', NULL, '&lt;div class=&quot;banner-center1&quot;&gt;\r\n	&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block4-home4.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n&lt;/div&gt;'),
(255, 2, 60, 'Banner Center1 Home4', NULL, '&lt;div class=&quot;banner-center1&quot;&gt;\r\n	&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block4-home4.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n&lt;/div&gt;'),
(217, 2, 50, 'Banner Center1 Home1', NULL, '&lt;div class=&quot;banner-center1&quot;&gt;\r\n	&lt;div class=&quot;col col1&quot;&gt;\r\n		&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block4-home1.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(281, 2, 51, '   Banner Left ', NULL, '										  &lt;div class=&quot;banner-left&quot;&gt;\r\n	&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/banner-left.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n&lt;/div&gt; 									'),
(280, 1, 51, '   Banner Left ', NULL, '										  &lt;div class=&quot;banner-left&quot;&gt;\r\n	&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/banner-left.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n&lt;/div&gt; 									'),
(222, 1, 52, 'Banner Static1 Home2', NULL, '&lt;div class=&quot;banner-static1&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block-home2.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block1-home2.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(223, 2, 52, 'Banner Static1 Home2', NULL, '&lt;div class=&quot;banner-static1&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block-home2.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block1-home2.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(224, 1, 53, 'Banner Static2 Home2', NULL, '&lt;div class=&quot;banner-static2&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block2-home2.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block3-home2.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(225, 2, 53, 'Banner Static2 Home2', NULL, '&lt;div class=&quot;banner-static2&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block2-home2.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block3-home2.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(228, 1, 54, '   Banner Center Home2', NULL, '										  										  &lt;div class=&quot;banner-center1&quot;&gt;\r\n	&lt;div class=&quot;col col1&quot;&gt;\r\n		&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block4-home1.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt; 									 									'),
(229, 2, 54, '   Banner Center Home2 ', NULL, '										  										  &lt;div class=&quot;banner-center1&quot;&gt;\r\n	&lt;div class=&quot;col col1&quot;&gt;\r\n		&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block4-home1.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt; 									 									'),
(236, 1, 55, 'Banner Static Home3', NULL, '&lt;div class=&quot;banner-static&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block-home3.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block1-home3.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(237, 2, 55, 'Banner Static Home3', NULL, '&lt;div class=&quot;banner-static&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block-home3.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block1-home3.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(238, 1, 56, 'Banner Static1 Home3', NULL, '&lt;div class=&quot;banner-static1&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n				&lt;div class=&quot;banner-text&quot;&gt;\r\n					&lt;h2&gt;Free Return&lt;/h2&gt;\r\n					&lt;p&gt;30 days money back!&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n				&lt;div class=&quot;banner-text&quot;&gt;\r\n					&lt;h2&gt;Free shipping&lt;/h2&gt;\r\n					&lt;p&gt;Free shipping on all order&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col3&quot;&gt;\r\n				&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n				&lt;div class=&quot;banner-text&quot;&gt;\r\n					&lt;h2&gt;Secure payment&lt;/h2&gt;\r\n					&lt;p&gt;100% secure payment&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col4&quot;&gt;\r\n				&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n				&lt;div class=&quot;banner-text&quot;&gt;\r\n					&lt;h2&gt;Support 24/7&lt;/h2&gt;\r\n					&lt;p&gt;We support online 24hrs&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(239, 2, 56, 'Banner Static1 Home3', NULL, '&lt;div class=&quot;banner-static1&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n				&lt;div class=&quot;banner-text&quot;&gt;\r\n					&lt;h2&gt;Free Return&lt;/h2&gt;\r\n					&lt;p&gt;30 days money back!&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n				&lt;div class=&quot;banner-text&quot;&gt;\r\n					&lt;h2&gt;Free shipping&lt;/h2&gt;\r\n					&lt;p&gt;Free shipping on all order&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col3&quot;&gt;\r\n				&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n				&lt;div class=&quot;banner-text&quot;&gt;\r\n					&lt;h2&gt;Secure payment&lt;/h2&gt;\r\n					&lt;p&gt;100% secure payment&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col4&quot;&gt;\r\n				&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n				&lt;div class=&quot;banner-text&quot;&gt;\r\n					&lt;h2&gt;Support 24/7&lt;/h2&gt;\r\n					&lt;p&gt;We support online 24hrs&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(240, 1, 57, 'Banner Center Home3', NULL, '&lt;div class=&quot;banner-center&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block3-home3.jpg&quot; alt=&quot;block3&quot;&gt;&lt;/a&gt;&lt;/div&gt;'),
(241, 2, 57, 'Banner Center Home3', NULL, '&lt;div class=&quot;banner-center&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block3-home3.jpg&quot; alt=&quot;block3&quot;&gt;&lt;/a&gt;&lt;/div&gt;'),
(250, 1, 58, 'Banner Static Home4', NULL, '&lt;div class=&quot;banner-static1&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block-home4.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block1-home4.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(251, 2, 58, 'Banner Static Home4', NULL, '&lt;div class=&quot;banner-static1&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block-home4.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block1-home4.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(252, 1, 59, 'Banner Center Home4', NULL, '&lt;div class=&quot;banner-center&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block2-home4.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block3-home4.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(311, 2, 49, '                  Footer Link      ', NULL, '										  										  										  										  										  										  &lt;div class=&quot;footer-link&quot;&gt;\r\n	&lt;ul&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Blog&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Contact Us&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;My Account&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Checkout&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Cart&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Shop&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;SmartWatch&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Video Game&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Cellphone&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Headphone&lt;/a&gt;&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n&lt;/div&gt; 									 									 									 									 									 									'),
(216, 1, 50, 'Banner Center1 Home1', NULL, '&lt;div class=&quot;banner-center1&quot;&gt;\r\n	&lt;div class=&quot;col col1&quot;&gt;\r\n		&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block4-home1.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(308, 1, 48, '                  Social Footer      ', NULL, '										  										  										  										  										  										  &lt;div class=&quot;social-footer&quot;&gt;\r\n	&lt;div class=&quot;title-social&quot;&gt;&lt;h2&gt;Follow us&lt;/h2&gt;&lt;/div&gt;\r\n	&lt;ul&gt;\r\n		&lt;li class=&quot;twitter&quot;&gt;&lt;a href=&quot;#&quot;&gt;twitter&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li class=&quot;facebook&quot;&gt;&lt;a href=&quot;#&quot;&gt;facebook&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li class=&quot;google&quot;&gt;&lt;a href=&quot;#&quot;&gt;google&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li class=&quot;behance&quot;&gt;&lt;a href=&quot;#&quot;&gt;behance&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li class=&quot;pinterest&quot;&gt;&lt;a href=&quot;#&quot;&gt;pinterest&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li class=&quot;youtube&quot;&gt;&lt;a href=&quot;#&quot;&gt;youtube&lt;/a&gt;&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n&lt;/div&gt; 									 									 									 									 									 									'),
(289, 2, 64, '   Banner Left2 ', NULL, '										  &lt;div class=&quot;banner-left&quot;&gt;\r\n	&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/banner-left1.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n&lt;/div&gt; 									'),
(288, 1, 64, '   Banner Left2 ', NULL, '										  &lt;div class=&quot;banner-left&quot;&gt;\r\n	&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/banner-left1.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n&lt;/div&gt; 									'),
(284, 1, 65, 'Banner Static Home6', NULL, '&lt;div class=&quot;banner-static&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block-home6.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block1-home6.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(196, 1, 35, 'Bestseller', NULL, '										  &lt;div class=&quot;banner-static5&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block5-home3.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;h2&gt;Accessories.&lt;/h2&gt;\r\n				&lt;p&gt;Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula.&lt;/p&gt;\r\n				&lt;ul&gt;\r\n					&lt;li&gt;\r\n						&lt;span&gt;Claritas est etiam processus dynamicus.&lt;/span&gt;\r\n					&lt;/li&gt;\r\n					&lt;li&gt;\r\n						&lt;span&gt;Claritas est etiam processus dynamicus.&lt;/span&gt;\r\n					&lt;/li&gt;\r\n					&lt;li&gt;\r\n						&lt;span&gt;Claritas est etiam processus dynamicus.&lt;/span&gt;\r\n					&lt;/li&gt;\r\n				&lt;/ul&gt;\r\n				&lt;a href=&quot;#&quot;&gt;Shop now&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt; 									'),
(197, 2, 35, 'Bestseller', NULL, '										  &lt;div class=&quot;banner-static5&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block5-home3.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;h2&gt;Accessories.&lt;/h2&gt;\r\n				&lt;p&gt;Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula.&lt;/p&gt;\r\n				&lt;ul&gt;\r\n					&lt;li&gt;\r\n						&lt;span&gt;Claritas est etiam processus dynamicus.&lt;/span&gt;\r\n					&lt;/li&gt;\r\n					&lt;li&gt;\r\n						&lt;span&gt;Claritas est etiam processus dynamicus.&lt;/span&gt;\r\n					&lt;/li&gt;\r\n					&lt;li&gt;\r\n						&lt;span&gt;Claritas est etiam processus dynamicus.&lt;/span&gt;\r\n					&lt;/li&gt;\r\n				&lt;/ul&gt;\r\n				&lt;a href=&quot;#&quot;&gt;Shop now&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt; 									'),
(198, 1, 41, 'New Products', NULL, '										  									'),
(199, 2, 41, 'New Products', NULL, '										  									'),
(200, 1, 42, 'Contact Us', NULL, '										  									'),
(201, 2, 42, 'Contact Us', NULL, '										  									'),
(202, 1, 43, 'Special', NULL, '										  									'),
(203, 2, 43, 'Special', NULL, '										  									'),
(298, 1, 44, '   Banner Top ', NULL, '										  										  										  										  &lt;div class=&quot;banner-static&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-4 col-sm-4 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n				&lt;div class=&quot;banner-text&quot;&gt;\r\n					&lt;h2&gt;Free Return&lt;/h2&gt;\r\n					&lt;p&gt;30 days money back guarantee!&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-4 col-sm-4 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n				&lt;div class=&quot;banner-text&quot;&gt;\r\n					&lt;h2&gt;Free shipping&lt;/h2&gt;\r\n					&lt;p&gt;Free shipping on all order&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-4 col-sm-4 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col3&quot;&gt;\r\n				&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n				&lt;div class=&quot;banner-text&quot;&gt;\r\n					&lt;h2&gt;Support 24/7&lt;/h2&gt;\r\n					&lt;p&gt;We support online 24hrs&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt; 									 									 									 									'),
(299, 2, 44, '   Banner Top ', NULL, '										  										  										  										  &lt;div class=&quot;banner-static&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-4 col-sm-4 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n				&lt;div class=&quot;banner-text&quot;&gt;\r\n					&lt;h2&gt;Free Return&lt;/h2&gt;\r\n					&lt;p&gt;30 days money back guarantee!&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-4 col-sm-4 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n				&lt;div class=&quot;banner-text&quot;&gt;\r\n					&lt;h2&gt;Free shipping&lt;/h2&gt;\r\n					&lt;p&gt;Free shipping on all order&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-4 col-sm-4 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col3&quot;&gt;\r\n				&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n				&lt;div class=&quot;banner-text&quot;&gt;\r\n					&lt;h2&gt;Support 24/7&lt;/h2&gt;\r\n					&lt;p&gt;We support online 24hrs&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt; 									 									 									 									'),
(206, 1, 45, 'Banner Static1 Home1', NULL, '&lt;div class=&quot;banner-static1&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block-home1.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block1-home1.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(207, 2, 45, 'Banner Static1 Home1', NULL, '&lt;div class=&quot;banner-static1&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block-home1.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block1-home1.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(208, 1, 46, 'Banner Center Home1', NULL, '&lt;div class=&quot;banner-center&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block2-home1.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block3-home1.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(209, 2, 46, 'Banner Center Home1', NULL, '&lt;div class=&quot;banner-center&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block2-home1.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block3-home1.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(307, 2, 47, '                  Banner Bottom      ', NULL, '										  										  										  										  										  										  &lt;div class=&quot;banner-bottom&quot;&gt;\r\n	&lt;div class=&quot;container&quot;&gt;\r\n		&lt;div class=&quot;container-inner&quot;&gt;\r\n			&lt;div class=&quot;row&quot;&gt;\r\n				&lt;div class=&quot;col-d-4 col-sm-4 col-sms-12&quot;&gt;\r\n					&lt;div class=&quot;col col1&quot;&gt;\r\n						&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n						&lt;div class=&quot;banner-text&quot;&gt;\r\n							&lt;h2&gt;+88 123 456 7899&lt;/h2&gt;\r\n							&lt;p&gt;Free support line!&lt;/p&gt;\r\n						&lt;/div&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=&quot;col-d-4 col-sm-4 col-sms-12&quot;&gt;\r\n					&lt;div class=&quot;col col2&quot;&gt;\r\n						&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n						&lt;div class=&quot;banner-text&quot;&gt;\r\n							&lt;h2&gt;Support@plazathemes.com&lt;/h2&gt;\r\n							&lt;p&gt;Orders Support!&lt;/p&gt;\r\n						&lt;/div&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=&quot;col-d-4 col-sm-4 col-sms-12&quot;&gt;\r\n					&lt;div class=&quot;col col3&quot;&gt;\r\n						&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n						&lt;div class=&quot;banner-text&quot;&gt;\r\n							&lt;h2&gt;Mon - Fri / 8:00 - 18:00&lt;/h2&gt;\r\n							&lt;p&gt;Working Days/Hours!&lt;/p&gt;\r\n						&lt;/div&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt; 									 									 									 									 									 									'),
(314, 1, 71, '   Banner Left3 ', NULL, '										  &lt;div class=&quot;banner-left&quot;&gt;\r\n	&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/banner-left2.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n&lt;/div&gt; 									'),
(316, 1, 72, 'Banner Static Home8', NULL, '&lt;div class=&quot;banner-static&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block-home8.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block1-home8.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(317, 2, 72, 'Banner Static Home8', NULL, '&lt;div class=&quot;banner-static&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block-home8.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block1-home8.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(318, 1, 73, 'Banner Static1 Home8', NULL, '&lt;div class=&quot;banner-static1&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n				&lt;div class=&quot;banner-text&quot;&gt;\r\n					&lt;h2&gt;Free Return&lt;/h2&gt;\r\n					&lt;p&gt;30 days money back!&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n				&lt;div class=&quot;banner-text&quot;&gt;\r\n					&lt;h2&gt;Free shipping&lt;/h2&gt;\r\n					&lt;p&gt;Free shipping on all order&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col3&quot;&gt;\r\n				&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n				&lt;div class=&quot;banner-text&quot;&gt;\r\n					&lt;h2&gt;Secure payment&lt;/h2&gt;\r\n					&lt;p&gt;100% secure payment&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col4&quot;&gt;\r\n				&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n				&lt;div class=&quot;banner-text&quot;&gt;\r\n					&lt;h2&gt;Support 24/7&lt;/h2&gt;\r\n					&lt;p&gt;We support online 24hrs&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(319, 2, 73, 'Banner Static1 Home8', NULL, '&lt;div class=&quot;banner-static1&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n				&lt;div class=&quot;banner-text&quot;&gt;\r\n					&lt;h2&gt;Free Return&lt;/h2&gt;\r\n					&lt;p&gt;30 days money back!&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n				&lt;div class=&quot;banner-text&quot;&gt;\r\n					&lt;h2&gt;Free shipping&lt;/h2&gt;\r\n					&lt;p&gt;Free shipping on all order&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col3&quot;&gt;\r\n				&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n				&lt;div class=&quot;banner-text&quot;&gt;\r\n					&lt;h2&gt;Secure payment&lt;/h2&gt;\r\n					&lt;p&gt;100% secure payment&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col4&quot;&gt;\r\n				&lt;div class=&quot;icon-banner&quot;&gt;&lt;/div&gt;\r\n				&lt;div class=&quot;banner-text&quot;&gt;\r\n					&lt;h2&gt;Support 24/7&lt;/h2&gt;\r\n					&lt;p&gt;We support online 24hrs&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(320, 1, 74, 'Banner Center Home8', NULL, '&lt;div class=&quot;banner-center&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block2-home8.jpg&quot; alt=&quot;block3&quot;&gt;&lt;/a&gt;&lt;/div&gt;'),
(321, 2, 74, 'Banner Center Home8', NULL, '&lt;div class=&quot;banner-center&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cmsblock/block2-home8.jpg&quot; alt=&quot;block3&quot;&gt;&lt;/a&gt;&lt;/div&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `oc_cmsblock_to_store`
--

CREATE TABLE `oc_cmsblock_to_store` (
  `cmsblock_id` int(11) DEFAULT NULL,
  `store_id` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D''Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'South Korea', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People''s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.75171014, 1, '2017-11-01 09:42:31'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2017-11-15 08:22:41'),
(3, 'Euro', 'EUR', '', '€', '2', 0.85932801, 1, '2017-11-01 09:42:31');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `language_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `safe`, `token`, `code`, `date_added`) VALUES
(1, 1, 0, 1, 'plaza', 'themes', 'demo@plazathemes.com', '1234567890', '', '8df4df61099ea019009c4331b4452fe357bb826a', 'qKFhqeWrK', NULL, NULL, 0, 0, '', '127.0.0.1', 1, 0, '', '', '2017-08-29 14:27:33'),
(2, 1, 0, 1, 'plaza', 'themes', 'demo1@plazathemes.com', '01234567890', '', '2f73ad0a28cbc1c519cd444c64aaf574fbd6c86f', 'hzyRK8igG', NULL, NULL, 0, 1, '', '127.0.0.1', 1, 0, '', '', '2017-10-07 10:57:46');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_affiliate`
--

CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_approval`
--

CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 2, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '127.0.0.1', '2017-08-29 14:27:35'),
(2, 2, '127.0.0.1', '2017-10-07 10:57:53');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_login`
--

INSERT INTO `oc_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(1, '', '127.0.0.1', 4, '2017-09-01 02:53:40', '2017-10-04 09:32:24');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_search`
--

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_wishlist`
--

INSERT INTO `oc_customer_wishlist` (`customer_id`, `product_id`, `date_added`) VALUES
(1, 32, '2017-09-08 10:16:05'),
(1, 30, '2017-09-07 15:43:17'),
(1, 29, '2017-09-08 10:16:13'),
(1, 35, '2017-09-08 10:43:14'),
(1, 33, '2017-10-24 09:15:29');

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(1, 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', 1, 0),
(2, 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', 1, 0),
(3, 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', 1, 0),
(4, 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', 1, 0),
(5, 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', 1, 0),
(6, 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', 1, 0),
(7, 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', 1, 0),
(8, 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', 1, 0),
(9, 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', 1, 0),
(10, 'activity_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'event/activity/addAffiliate', 1, 0),
(11, 'activity_affiliate_edit', 'catalog/model/account/customer/editAffiliate/after', 'event/activity/editAffiliate', 1, 0),
(12, 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'event/activity/addOrderHistory', 1, 0),
(13, 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', 1, 0),
(14, 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1, 0),
(15, 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1, 0),
(16, 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1, 0),
(17, 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', 1, 0),
(18, 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', 1, 0),
(19, 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', 1, 0),
(20, 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1, 0),
(21, 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', 1, 0),
(22, 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', 1, 0),
(23, 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', 1, 0),
(24, 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', 1, 0),
(25, 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', 1, 0),
(26, 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', 1, 0),
(27, 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', 1, 0),
(28, 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', 1, 0),
(29, 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', 1, 0),
(30, 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1, 0),
(31, 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1, 0),
(32, 'admin_mail_return', 'admin/model/sale/return/addReturn/after', 'mail/return', 1, 0),
(33, 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(20, 'theme', 'default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(42, 'module', 'oc_page_builder'),
(43, 'module', 'ocajaxlogin'),
(44, 'module', 'ocblog'),
(45, 'module', 'occmsblock'),
(46, 'module', 'oclayerednavigation'),
(47, 'module', 'newslettersubscribe'),
(48, 'module', 'ocslideshow'),
(50, 'module', 'octhemeoption'),
(51, 'module', 'ocproduct'),
(52, 'module', 'octabproducts'),
(53, 'module', 'ochozmegamenu'),
(56, 'module', 'carousel'),
(57, 'module', 'featured'),
(58, 'module', 'ocvermegamenu'),
(60, 'module', 'ocnewproductpage'),
(61, 'module', 'ocbestsellerpage'),
(62, 'module', 'ocfeaturedcategory');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension_install`
--

CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension_install`
--

INSERT INTO `oc_extension_install` (`extension_install_id`, `extension_download_id`, `filename`, `date_added`) VALUES
(27, 0, 'octhemeoption.ocmod.zip', '2017-09-08 09:52:09'),
(26, 0, 'octhemeoption.ocmod.zip', '2017-09-08 09:25:18'),
(25, 0, 'occustomizetemplate.ocmod.zip', '2017-08-29 10:03:24'),
(24, 0, 'occustomizetemplate.ocmod.zip', '2017-08-29 10:02:22'),
(23, 0, 'octhemeoption.ocmod.zip', '2017-08-29 10:01:05'),
(22, 0, 'oclayerednavigation.ocmod.zip', '2017-08-29 10:00:56'),
(21, 0, 'occustomizetemplate.ocmod.zip', '2017-08-29 10:00:28'),
(28, 0, 'occustomizetemplate.ocmod.zip', '2017-09-08 17:04:18'),
(29, 0, 'occustomizetemplate.ocmod.zip', '2017-09-11 09:25:49'),
(30, 0, 'occustomizetemplate.ocmod.zip', '2017-09-11 09:27:00'),
(31, 0, 'occustomizetemplate.ocmod.zip', '2017-09-16 10:01:53'),
(32, 0, 'occustomizetemplate.ocmod.zip', '2017-09-16 10:13:43'),
(33, 0, 'occustomizetemplate.ocmod.zip', '2017-10-26 16:32:17'),
(34, 0, 'occustomizetemplate.ocmod.zip', '2017-10-26 16:36:23'),
(35, 0, 'octhemeoption.ocmod.zip', '2017-11-09 14:21:04'),
(36, 0, 'occustomizetemplate.ocmod.zip', '2017-11-10 14:35:23'),
(37, 0, 'occustomizetemplate.ocmod.zip', '2017-11-10 14:37:45');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension_path`
--

CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter`
--

INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES
(1, 1, 0),
(2, 1, 0),
(3, 1, 0),
(4, 1, 0),
(5, 2, 0),
(6, 2, 0),
(7, 2, 0),
(8, 2, 0),
(9, 2, 0),
(10, 2, 0),
(14, 3, 0),
(13, 3, 0),
(12, 3, 0),
(11, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_description`
--

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `filter_group_id`, `name`) VALUES
(2, 2, 1, 'Handbags'),
(2, 1, 1, 'Handbags'),
(3, 2, 1, 'Dresses'),
(5, 1, 2, 'Black'),
(6, 1, 2, 'Blue'),
(7, 1, 2, 'Green'),
(8, 1, 2, 'Grey'),
(9, 1, 2, 'Red'),
(10, 1, 2, 'White'),
(13, 1, 3, 'Tommy Hilfiger'),
(12, 2, 3, 'Diesel'),
(12, 1, 3, 'Diesel'),
(3, 1, 1, 'Dresses'),
(4, 2, 1, 'Accessories'),
(4, 1, 1, 'Accessories'),
(5, 2, 2, 'Black'),
(6, 2, 2, 'Blue'),
(7, 2, 2, 'Green'),
(8, 2, 2, 'Grey'),
(9, 2, 2, 'Red'),
(10, 2, 2, 'White'),
(11, 2, 3, 'Calvin Klein'),
(11, 1, 3, 'Calvin Klein'),
(1, 1, 1, 'Tops'),
(1, 2, 1, 'Tops'),
(13, 2, 3, 'Tommy Hilfiger'),
(14, 1, 3, 'Versace'),
(14, 2, 3, 'Versace');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_group`
--

INSERT INTO `oc_filter_group` (`filter_group_id`, `sort_order`) VALUES
(1, 0),
(2, 0),
(3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_group_description`
--

INSERT INTO `oc_filter_group_description` (`filter_group_id`, `language_id`, `name`) VALUES
(2, 1, 'Color'),
(1, 1, 'Category'),
(2, 2, 'Color'),
(3, 1, 'Manufacturer'),
(1, 2, 'Category'),
(3, 2, 'Manufacturer');

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2009-01-06 23:26:25', '2010-02-26 22:33:24'),
(4, 'UK Shipping', 'UK Shipping Zones', '2009-06-23 01:14:53', '2010-12-15 15:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 1, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', ''),
(4, 2, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 2, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 2, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 2, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(4, 5, 0),
(4, 0, 0),
(4, 4, 0),
(4, 3, 0),
(4, 2, 0),
(4, 1, 0),
(6, 5, 0),
(6, 0, 0),
(6, 4, 0),
(6, 3, 0),
(6, 2, 0),
(6, 1, 0),
(3, 5, 0),
(3, 0, 0),
(3, 4, 0),
(3, 3, 0),
(3, 2, 0),
(3, 1, 0),
(5, 5, 0),
(5, 0, 0),
(5, 4, 0),
(5, 3, 0),
(5, 2, 0),
(5, 1, 0),
(4, 6, 0),
(4, 7, 0),
(6, 6, 0),
(6, 7, 0),
(3, 6, 0),
(3, 7, 0),
(5, 6, 0),
(5, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(4, 0),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(5, 0),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(6, 0),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en-gb', 'en-US,en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1),
(2, 'French', 'fr-gb', 'fr_US.UTF-8,fr_US,fr-gb,french', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Lazio 01: Home'),
(2, 'Lazio 01: Product'),
(3, 'Lazio 01: Category'),
(4, 'Lazio 01: Default'),
(5, 'Lazio 02: Category'),
(6, 'Lazio 02: Product'),
(7, 'Lazio 03: Default'),
(8, 'Lazio 04: Category'),
(9, 'Lazio 02: Home'),
(10, 'Lazio 03: Category'),
(11, 'Lazio 03: Product'),
(12, 'Lazio 03: Home'),
(13, 'Lazio 02: Default'),
(14, 'Lazio 04: Default'),
(15, 'Lazio 05: Default'),
(16, 'Lazio 06: Default'),
(17, 'Lazio 04: Home'),
(18, 'Lazio 05: Home'),
(19, 'Lazio 06: Home'),
(20, 'Lazio 04: Product'),
(21, 'Lazio 05: Product'),
(22, 'Lazio 06: Product'),
(23, 'Lazio 05: Category'),
(24, 'Lazio 06: Category'),
(26, 'Lazio 01: Manufacturer Product,Search Product,Special Product'),
(27, 'Lazio 02: Manufacturer Product,Search Product,Special Product'),
(28, 'Lazio 03: Manufacturer Product,Search Product,Special Product'),
(29, 'Lazio 05: Manufacturer Product,Search Product,Special Product'),
(30, 'Lazio 06: Manufacturer Product,Search Product,Special Product'),
(31, 'Lazio 04: Manufacturer Product,Search Product,Special Product'),
(32, 'Lazio 01: Newproduct Page, Bestseller Product'),
(33, 'Lazio 02: Newproduct Page, Bestseller Product'),
(34, 'Lazio 03: Newproduct Page, Bestseller Product'),
(35, 'Lazio 04: Newproduct Page, Bestseller Product'),
(36, 'Lazio 05: Newproduct Page, Bestseller Product'),
(37, 'Lazio 06: Newproduct Page, Bestseller Product'),
(38, 'Lazio 07: Default'),
(39, 'Lazio 08: Default'),
(40, 'Lazio 07: Home'),
(41, 'Lazio 07: Category'),
(42, 'Lazio 07: Manufacturer Product,Search Product,Special Product'),
(43, 'Lazio 07: Newproduct Page, Bestseller Product'),
(44, 'Lazio 07: Product'),
(45, 'Lazio 08: Home'),
(46, 'Lazio 08: Category'),
(47, 'Lazio 08: Manufacturer Product,Search Product,Special Product'),
(48, 'Lazio 08: Newproduct Page, Bestseller Product'),
(49, 'Lazio 08: Product');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(1102, 26, 'occmsblock.37', 'block6', 0),
(1295, 12, 'occmsblock.37', 'block6', 0),
(1273, 1, 'newslettersubscribe.40', 'block7', 0),
(1272, 1, 'occmsblock.37', 'block6', 0),
(1093, 3, 'newslettersubscribe.40', 'block7', 0),
(1092, 3, 'occmsblock.37', 'block6', 0),
(1101, 26, 'occmsblock.36', 'block5', 0),
(1083, 4, 'newslettersubscribe.40', 'block7', 0),
(1082, 4, 'occmsblock.37', 'block6', 0),
(1081, 4, 'occmsblock.36', 'block5', 0),
(1091, 3, 'occmsblock.36', 'block5', 0),
(1090, 3, 'occmsblock.89', 'block4', 0),
(1121, 2, 'newslettersubscribe.40', 'block7', 0),
(1119, 2, 'occmsblock.36', 'block5', 0),
(1120, 2, 'occmsblock.37', 'block6', 0),
(1100, 26, 'occmsblock.89', 'block4', 0),
(667, 9, 'occmsblock.36', 'block5', 0),
(666, 9, 'occmsblock.89', 'block4', 1),
(665, 9, 'newslettersubscribe.40', 'block4', 0),
(684, 5, 'occmsblock.89', 'block4', 1),
(1080, 4, 'occmsblock.89', 'block4', 0),
(682, 5, 'ochozmegamenu.43', 'block2', 1),
(697, 13, 'newslettersubscribe.40', 'block4', 0),
(696, 13, 'ochozmegamenu.43', 'block2', 0),
(695, 13, 'ocajaxlogin', 'content_top', 0),
(694, 13, 'occmsblock.86', 'block1', 0),
(689, 6, 'ochozmegamenu.43', 'block2', 1),
(688, 6, 'ocajaxlogin', 'content_top', 0),
(687, 6, 'occmsblock.86', 'block1', 0),
(724, 27, 'occmsblock.89', 'block4', 1),
(1079, 4, 'occmsblock.86', 'block3', 0),
(723, 27, 'newslettersubscribe.40', 'block4', 0),
(1294, 12, 'occmsblock.36', 'block5', 0),
(1293, 12, 'occmsblock.89', 'block4', 1),
(1292, 12, 'newslettersubscribe.40', 'block4', 0),
(1291, 12, 'ochozmegamenu.43', 'block2', 0),
(730, 10, 'ocajaxlogin', 'content_top', 0),
(729, 10, 'ocvermegamenu.85', 'block1', 0),
(1078, 4, 'ocvermegamenu.85', 'block2', 0),
(739, 7, 'newslettersubscribe.40', 'block4', 0),
(738, 7, 'ochozmegamenu.43', 'block2', 0),
(737, 7, 'ocajaxlogin', 'content_top', 0),
(736, 7, 'ocvermegamenu.85', 'block1', 0),
(754, 11, 'newslettersubscribe.40', 'block4', 0),
(753, 11, 'ochozmegamenu.43', 'block2', 0),
(752, 11, 'ocajaxlogin', 'content_top', 0),
(751, 11, 'ocvermegamenu.85', 'block1', 0),
(808, 28, 'newslettersubscribe.40', 'block4', 0),
(1118, 2, 'occmsblock.89', 'block4', 0),
(793, 17, 'newslettersubscribe.40', 'block7', 0),
(792, 17, 'occmsblock.37', 'block6', 0),
(791, 17, 'occmsblock.36', 'block5', 0),
(790, 17, 'occmsblock.89', 'block4', 0),
(824, 8, 'ocvermegamenu.105', 'block2', 0),
(823, 8, 'ocajaxlogin', 'content_top', 0),
(1117, 2, 'occmsblock.86', 'block3', 0),
(822, 8, 'ochozmegamenu.43', 'block1', 0),
(833, 14, 'occmsblock.86', 'block3', 0),
(832, 14, 'ocvermegamenu.105', 'block2', 0),
(831, 14, 'ocajaxlogin', 'content_top', 0),
(830, 14, 'ochozmegamenu.43', 'block1', 0),
(850, 20, 'occmsblock.86', 'block3', 0),
(849, 20, 'ocvermegamenu.105', 'block2', 0),
(848, 20, 'ocajaxlogin', 'content_top', 0),
(847, 20, 'ochozmegamenu.43', 'block1', 0),
(967, 29, 'occmsblock.89', 'block4', 1),
(883, 15, 'ochozmegamenu.43', 'block2', 0),
(867, 18, 'oc_page_builder.72', 'content_top', 1),
(866, 18, 'ocajaxlogin', 'content_top', 0),
(865, 18, 'occmsblock.86', 'block1', 0),
(937, 23, 'newslettersubscribe.40', 'block4', 0),
(900, 21, 'ochozmegamenu.43', 'block2', 0),
(899, 21, 'ocajaxlogin', 'content_top', 0),
(898, 21, 'occmsblock.86', 'block1', 0),
(1019, 24, 'ocvermegamenu.105', 'block1', 0),
(1018, 24, 'occmsblock.126', 'column_left', 1),
(1017, 24, 'oclayerednavigation', 'column_left', 0),
(882, 15, 'ocajaxlogin', 'content_top', 0),
(881, 15, 'occmsblock.86', 'block1', 0),
(1116, 2, 'ocvermegamenu.85', 'block2', 0),
(1115, 2, 'ocajaxlogin', 'content_top', 0),
(935, 23, 'ocajaxlogin', 'content_top', 0),
(1027, 16, 'ocajaxlogin', 'content_top', 0),
(1026, 16, 'ocvermegamenu.105', 'block1', 0),
(1011, 19, 'oc_page_builder.78', 'content_top', 1),
(1010, 19, 'ocajaxlogin', 'content_top', 0),
(1009, 19, 'ocvermegamenu.105', 'block1', 0),
(1044, 22, 'ochozmegamenu.43', 'block2', 0),
(1043, 22, 'ocajaxlogin', 'content_top', 0),
(1042, 22, 'ocvermegamenu.105', 'block1', 0),
(1035, 30, 'ocvermegamenu.105', 'block1', 0),
(1034, 30, 'occmsblock.126', 'column_left', 1),
(1033, 30, 'featured.125', 'column_left', 0),
(1114, 2, 'ochozmegamenu.43', 'block1', 0),
(1089, 3, 'occmsblock.86', 'block3', 0),
(1099, 26, 'occmsblock.86', 'block3', 0),
(1098, 26, 'ocvermegamenu.85', 'block2', 0),
(664, 9, 'ochozmegamenu.43', 'block2', 0),
(722, 27, 'ochozmegamenu.43', 'block2', 0),
(683, 5, 'newslettersubscribe.40', 'block4', 0),
(681, 5, 'ocajaxlogin', 'content_top', 0),
(728, 10, 'occmsblock.92', 'column_left', 1),
(727, 10, 'oclayerednavigation', 'column_left', 0),
(807, 28, 'ochozmegamenu.43', 'block2', 1),
(806, 28, 'ocajaxlogin', 'content_top', 0),
(821, 8, 'oclayerednavigation', 'column_left', 0),
(994, 31, 'occmsblock.86', 'block3', 0),
(1088, 3, 'ocvermegamenu.85', 'block2', 0),
(997, 31, 'occmsblock.37', 'block6', 0),
(996, 31, 'occmsblock.36', 'block5', 0),
(936, 23, 'ochozmegamenu.43', 'block2', 0),
(934, 23, 'occmsblock.86', 'block1', 0),
(966, 29, 'newslettersubscribe.40', 'block4', 0),
(1271, 1, 'occmsblock.36', 'block5', 0),
(1270, 1, 'occmsblock.89', 'block4', 0),
(1269, 1, 'occmsblock.86', 'block3', 0),
(1268, 1, 'ocvermegamenu.85', 'block2', 0),
(1267, 1, 'oc_page_builder.32', 'content_top', 0),
(1087, 3, 'ocajaxlogin', 'content_top', 0),
(1086, 3, 'ochozmegamenu.43', 'block1', 0),
(1085, 3, 'occmsblock.92', 'column_left', 1),
(1084, 3, 'oclayerednavigation', 'column_left', 0),
(1266, 1, 'ochozmegamenu.43', 'block1', 0),
(1077, 4, 'ocajaxlogin', 'content_top', 0),
(1076, 4, 'ochozmegamenu.43', 'block1', 0),
(1097, 26, 'ocajaxlogin', 'content_top', 0),
(1096, 26, 'ochozmegamenu.43', 'block1', 0),
(1095, 26, 'occmsblock.92', 'column_left', 1),
(1094, 26, 'featured.52', 'column_left', 0),
(1112, 32, 'occmsblock.37', 'block6', 0),
(1111, 32, 'occmsblock.36', 'block5', 0),
(1110, 32, 'occmsblock.89', 'block4', 0),
(1109, 32, 'occmsblock.86', 'block3', 0),
(1108, 32, 'ocvermegamenu.85', 'block2', 0),
(1107, 32, 'ocajaxlogin', 'content_top', 0),
(1106, 32, 'ochozmegamenu.43', 'block1', 0),
(1105, 32, 'occmsblock.92', 'column_left', 1),
(1104, 32, 'featured.52', 'column_left', 0),
(663, 9, 'ocajaxlogin', 'content_top', 1),
(662, 9, 'oc_page_builder.54', 'content_top', 0),
(661, 9, 'occmsblock.86', 'block1', 0),
(668, 9, 'occmsblock.37', 'block6', 0),
(680, 5, 'occmsblock.86', 'block1', 0),
(679, 5, 'occmsblock.92', 'column_left', 1),
(678, 5, 'oclayerednavigation', 'column_left', 0),
(685, 5, 'occmsblock.36', 'block5', 0),
(686, 5, 'occmsblock.37', 'block6', 0),
(690, 6, 'newslettersubscribe.40', 'block4', 0),
(691, 6, 'occmsblock.89', 'block4', 1),
(692, 6, 'occmsblock.36', 'block5', 0),
(693, 6, 'occmsblock.37', 'block6', 0),
(698, 13, 'occmsblock.89', 'block4', 1),
(699, 13, 'occmsblock.36', 'block5', 0),
(700, 13, 'occmsblock.37', 'block6', 0),
(721, 27, 'ocajaxlogin', 'content_top', 0),
(720, 27, 'occmsblock.86', 'block1', 0),
(719, 27, 'occmsblock.92', 'column_left', 1),
(718, 27, 'featured.52', 'column_left', 0),
(1290, 12, 'ocajaxlogin', 'content_top', 1),
(1289, 12, 'oc_page_builder.60', 'content_top', 0),
(725, 27, 'occmsblock.36', 'block5', 0),
(726, 27, 'occmsblock.37', 'block6', 0),
(731, 10, 'ochozmegamenu.43', 'block2', 0),
(732, 10, 'newslettersubscribe.40', 'block4', 0),
(733, 10, 'occmsblock.89', 'block4', 1),
(734, 10, 'occmsblock.36', 'block5', 0),
(735, 10, 'occmsblock.37', 'block6', 0),
(740, 7, 'occmsblock.89', 'block4', 1),
(741, 7, 'occmsblock.36', 'block5', 0),
(742, 7, 'occmsblock.37', 'block6', 0),
(805, 28, 'ocvermegamenu.85', 'block1', 0),
(804, 28, 'occmsblock.92', 'column_left', 1),
(803, 28, 'featured.52', 'column_left', 0),
(755, 11, 'occmsblock.89', 'block4', 1),
(756, 11, 'occmsblock.36', 'block5', 0),
(757, 11, 'occmsblock.37', 'block6', 0),
(789, 17, 'occmsblock.86', 'block3', 0),
(788, 17, 'ocvermegamenu.105', 'block2', 1),
(787, 17, 'ocajaxlogin', 'content_top', 1),
(786, 17, 'oc_page_builder.68', 'content_top', 0),
(785, 17, 'ochozmegamenu.43', 'block1', 0),
(794, 33, 'featured.52', 'column_left', 0),
(795, 33, 'occmsblock.92', 'column_left', 1),
(796, 33, 'occmsblock.86', 'block1', 0),
(797, 33, 'ocajaxlogin', 'content_top', 0),
(798, 33, 'ochozmegamenu.43', 'block2', 0),
(799, 33, 'newslettersubscribe.40', 'block4', 0),
(800, 33, 'occmsblock.89', 'block4', 1),
(801, 33, 'occmsblock.36', 'block5', 0),
(802, 33, 'occmsblock.37', 'block6', 0),
(809, 28, 'occmsblock.89', 'block4', 1),
(810, 28, 'occmsblock.36', 'block5', 0),
(811, 28, 'occmsblock.37', 'block6', 0),
(812, 34, 'featured.52', 'column_left', 0),
(813, 34, 'occmsblock.92', 'column_left', 1),
(814, 34, 'ocvermegamenu.85', 'block1', 0),
(815, 34, 'ocajaxlogin', 'content_top', 0),
(816, 34, 'ochozmegamenu.43', 'block2', 0),
(817, 34, 'newslettersubscribe.40', 'block4', 0),
(818, 34, 'occmsblock.89', 'block4', 1),
(819, 34, 'occmsblock.36', 'block5', 0),
(820, 34, 'occmsblock.37', 'block6', 0),
(825, 8, 'occmsblock.86', 'block3', 0),
(826, 8, 'occmsblock.89', 'block4', 0),
(827, 8, 'occmsblock.36', 'block5', 0),
(828, 8, 'occmsblock.37', 'block6', 0),
(829, 8, 'newslettersubscribe.40', 'block7', 0),
(834, 14, 'occmsblock.89', 'block4', 0),
(835, 14, 'occmsblock.36', 'block5', 0),
(836, 14, 'occmsblock.37', 'block6', 0),
(837, 14, 'newslettersubscribe.40', 'block7', 0),
(995, 31, 'occmsblock.89', 'block4', 0),
(993, 31, 'ocvermegamenu.105', 'block2', 0),
(992, 31, 'ocajaxlogin', 'content_top', 0),
(991, 31, 'ochozmegamenu.43', 'block1', 0),
(851, 20, 'occmsblock.89', 'block4', 0),
(852, 20, 'occmsblock.36', 'block5', 0),
(853, 20, 'occmsblock.37', 'block6', 0),
(854, 20, 'newslettersubscribe.40', 'block7', 0),
(1257, 35, 'occmsblock.37', 'block6', 0),
(1256, 35, 'occmsblock.36', 'block5', 0),
(1255, 35, 'occmsblock.89', 'block4', 0),
(1254, 35, 'occmsblock.86', 'block3', 0),
(1253, 35, 'ocvermegamenu.105', 'block2', 0),
(1252, 35, 'ocajaxlogin', 'content_top', 0),
(1251, 35, 'ochozmegamenu.43', 'block1', 0),
(1250, 35, 'occmsblock.126', 'column_left', 1),
(868, 18, 'ochozmegamenu.43', 'block2', 0),
(869, 18, 'newslettersubscribe.40', 'block4', 0),
(870, 18, 'occmsblock.89', 'block4', 1),
(871, 18, 'occmsblock.36', 'block5', 0),
(872, 18, 'occmsblock.37', 'block6', 0),
(933, 23, 'occmsblock.92', 'column_left', 1),
(932, 23, 'oclayerednavigation', 'column_left', 0),
(884, 15, 'newslettersubscribe.40', 'block4', 0),
(885, 15, 'occmsblock.89', 'block4', 1),
(886, 15, 'occmsblock.36', 'block5', 0),
(887, 15, 'occmsblock.37', 'block6', 0),
(965, 29, 'newslettersubscribe.40', 'block3', 0),
(963, 29, 'ocajaxlogin', 'content_top', 0),
(964, 29, 'ochozmegamenu.43', 'block2', 0),
(962, 29, 'occmsblock.86', 'block1', 0),
(901, 21, 'newslettersubscribe.40', 'block4', 0),
(902, 21, 'occmsblock.89', 'block4', 1),
(903, 21, 'occmsblock.36', 'block5', 0),
(904, 21, 'occmsblock.37', 'block6', 0),
(976, 36, 'occmsblock.89', 'block4', 1),
(977, 36, 'occmsblock.36', 'block5', 0),
(978, 36, 'occmsblock.37', 'block6', 0),
(975, 36, 'newslettersubscribe.40', 'block4', 0),
(974, 36, 'ochozmegamenu.43', 'block2', 0),
(973, 36, 'ocajaxlogin', 'content_top', 0),
(972, 36, 'occmsblock.86', 'block1', 0),
(971, 36, 'occmsblock.126', 'column_left', 1),
(938, 23, 'occmsblock.89', 'block4', 1),
(939, 23, 'occmsblock.36', 'block5', 0),
(940, 23, 'occmsblock.37', 'block6', 0),
(961, 29, 'occmsblock.126', 'column_left', 1),
(960, 29, 'featured.125', 'column_left', 0),
(970, 36, 'featured.125', 'column_left', 0),
(968, 29, 'occmsblock.36', 'block5', 0),
(969, 29, 'occmsblock.37', 'block6', 0),
(990, 31, 'occmsblock.126', 'column_left', 1),
(989, 31, 'featured.125', 'column_left', 0),
(998, 31, 'newslettersubscribe.40', 'block7', 0),
(1249, 35, 'featured.125', 'column_left', 0),
(1012, 19, 'ochozmegamenu.43', 'block2', 0),
(1013, 19, 'newslettersubscribe.40', 'block4', 0),
(1014, 19, 'occmsblock.89', 'block4', 1),
(1015, 19, 'occmsblock.36', 'block5', 0),
(1016, 19, 'occmsblock.37', 'block6', 0),
(1020, 24, 'ocajaxlogin', 'content_top', 0),
(1021, 24, 'ochozmegamenu.43', 'block2', 0),
(1022, 24, 'newslettersubscribe.40', 'block4', 0),
(1023, 24, 'occmsblock.89', 'block4', 1),
(1024, 24, 'occmsblock.36', 'block5', 0),
(1025, 24, 'occmsblock.37', 'block6', 0),
(1028, 16, 'ochozmegamenu.43', 'block2', 0),
(1029, 16, 'newslettersubscribe.40', 'block4', 0),
(1030, 16, 'occmsblock.89', 'block4', 1),
(1031, 16, 'occmsblock.36', 'block5', 0),
(1032, 16, 'occmsblock.37', 'block6', 0),
(1036, 30, 'ocajaxlogin', 'content_top', 0),
(1037, 30, 'ochozmegamenu.43', 'block2', 0),
(1038, 30, 'newslettersubscribe.40', 'block4', 0),
(1039, 30, 'occmsblock.89', 'block4', 1),
(1040, 30, 'occmsblock.36', 'block5', 0),
(1041, 30, 'occmsblock.37', 'block6', 0),
(1045, 22, 'newslettersubscribe.40', 'block4', 0),
(1046, 22, 'occmsblock.89', 'block4', 1),
(1047, 22, 'occmsblock.36', 'block5', 0),
(1048, 22, 'occmsblock.37', 'block6', 0),
(1049, 37, 'featured.125', 'column_left', 0),
(1050, 37, 'occmsblock.126', 'column_left', 1),
(1051, 37, 'ocvermegamenu.105', 'block1', 0),
(1052, 37, 'ocajaxlogin', 'content_top', 0),
(1053, 37, 'ochozmegamenu.43', 'block2', 0),
(1054, 37, 'newslettersubscribe.40', 'block4', 0),
(1055, 37, 'occmsblock.89', 'block4', 1),
(1056, 37, 'occmsblock.36', 'block5', 0),
(1057, 37, 'occmsblock.37', 'block6', 0),
(1058, 40, 'ochozmegamenu.43', 'block1', 0),
(1059, 40, 'oc_page_builder.134', 'content_top', 0),
(1060, 40, 'ocajaxlogin', 'content_top', 1),
(1061, 40, 'ocvermegamenu.133', 'block2', 0),
(1062, 40, 'occmsblock.86', 'block3', 0),
(1063, 40, 'occmsblock.89', 'block4', 0),
(1064, 40, 'occmsblock.36', 'block5', 0),
(1065, 40, 'occmsblock.37', 'block6', 0),
(1066, 40, 'newslettersubscribe.40', 'block7', 0),
(1103, 26, 'newslettersubscribe.40', 'block7', 0),
(1113, 32, 'newslettersubscribe.40', 'block7', 0),
(1146, 41, 'occmsblock.36', 'block5', 0),
(1145, 41, 'occmsblock.89', 'block4', 0),
(1144, 41, 'occmsblock.86', 'block3', 0),
(1143, 41, 'ocvermegamenu.133', 'block2', 0),
(1142, 41, 'ocajaxlogin', 'content_top', 0),
(1141, 41, 'ochozmegamenu.43', 'block1', 0),
(1140, 41, 'occmsblock.145', 'column_left', 1),
(1139, 41, 'oclayerednavigation', 'column_left', 0),
(1155, 42, 'occmsblock.89', 'block4', 0),
(1154, 42, 'occmsblock.86', 'block3', 0),
(1153, 42, 'ocvermegamenu.133', 'block2', 0),
(1152, 42, 'ocajaxlogin', 'content_top', 0),
(1151, 42, 'ochozmegamenu.43', 'block1', 0),
(1150, 42, 'occmsblock.145', 'column_left', 1),
(1149, 42, 'featured.146', 'column_left', 0),
(1147, 41, 'occmsblock.37', 'block6', 0),
(1148, 41, 'newslettersubscribe.40', 'block7', 0),
(1156, 42, 'occmsblock.36', 'block5', 0),
(1157, 42, 'occmsblock.37', 'block6', 0),
(1158, 42, 'newslettersubscribe.40', 'block7', 0),
(1159, 43, 'featured.146', 'column_left', 0),
(1160, 43, 'occmsblock.145', 'column_left', 1),
(1161, 43, 'ochozmegamenu.43', 'block1', 0),
(1162, 43, 'ocajaxlogin', 'content_top', 0),
(1163, 43, 'ocvermegamenu.133', 'block2', 0),
(1164, 43, 'occmsblock.86', 'block3', 0),
(1165, 43, 'occmsblock.89', 'block4', 0),
(1166, 43, 'occmsblock.36', 'block5', 0),
(1167, 43, 'occmsblock.37', 'block6', 0),
(1168, 43, 'newslettersubscribe.40', 'block7', 0),
(1169, 44, 'ochozmegamenu.43', 'block1', 0),
(1170, 44, 'ocajaxlogin', 'content_top', 0),
(1171, 44, 'ocvermegamenu.133', 'block2', 0),
(1172, 44, 'occmsblock.86', 'block3', 0),
(1173, 44, 'occmsblock.89', 'block4', 0),
(1174, 44, 'occmsblock.36', 'block5', 0),
(1175, 44, 'occmsblock.37', 'block6', 0),
(1176, 44, 'newslettersubscribe.40', 'block7', 0),
(1311, 45, 'occmsblock.37', 'block6', 0),
(1309, 45, 'occmsblock.89', 'block4', 1),
(1310, 45, 'occmsblock.36', 'block5', 0),
(1308, 45, 'newslettersubscribe.40', 'block4', 0),
(1307, 45, 'ochozmegamenu.43', 'block2', 0),
(1306, 45, 'oc_page_builder.135', 'content_top', 1),
(1185, 46, 'oclayerednavigation', 'column_left', 0),
(1186, 46, 'occmsblock.145', 'column_left', 1),
(1187, 46, 'ocvermegamenu.133', 'block1', 0),
(1188, 46, 'ocajaxlogin', 'content_top', 0),
(1189, 46, 'ochozmegamenu.43', 'block2', 0),
(1190, 46, 'newslettersubscribe.40', 'block4', 0),
(1191, 46, 'occmsblock.89', 'block4', 1),
(1192, 46, 'occmsblock.36', 'block5', 0),
(1193, 46, 'occmsblock.37', 'block6', 0),
(1194, 47, 'featured.146', 'column_left', 0),
(1195, 47, 'occmsblock.145', 'column_left', 1),
(1196, 47, 'ocvermegamenu.133', 'block1', 0),
(1197, 47, 'ocajaxlogin', 'content_top', 0),
(1198, 47, 'ochozmegamenu.43', 'block2', 0),
(1199, 47, 'newslettersubscribe.40', 'block4', 0),
(1200, 47, 'occmsblock.89', 'block4', 1),
(1201, 47, 'occmsblock.36', 'block5', 0),
(1202, 47, 'occmsblock.37', 'block6', 0),
(1203, 48, 'featured.146', 'column_left', 0),
(1204, 48, 'occmsblock.145', 'column_left', 1),
(1205, 48, 'ocvermegamenu.133', 'block1', 0),
(1206, 48, 'ocajaxlogin', 'content_top', 0),
(1207, 48, 'ochozmegamenu.43', 'block2', 0),
(1208, 48, 'newslettersubscribe.40', 'block4', 0),
(1209, 48, 'occmsblock.89', 'block4', 1),
(1210, 48, 'occmsblock.36', 'block5', 0),
(1211, 48, 'occmsblock.37', 'block6', 0),
(1212, 49, 'ocvermegamenu.133', 'block1', 0),
(1213, 49, 'ocajaxlogin', 'content_top', 0),
(1214, 49, 'ochozmegamenu.43', 'block2', 0),
(1215, 49, 'newslettersubscribe.40', 'block4', 0),
(1216, 49, 'occmsblock.89', 'block4', 1),
(1217, 49, 'occmsblock.36', 'block5', 0),
(1218, 49, 'occmsblock.37', 'block6', 0),
(1219, 39, 'ocvermegamenu.133', 'block1', 0),
(1220, 39, 'ocajaxlogin', 'content_top', 0),
(1221, 39, 'ochozmegamenu.43', 'block2', 0),
(1222, 39, 'newslettersubscribe.40', 'block4', 0),
(1223, 39, 'occmsblock.89', 'block4', 1),
(1224, 39, 'occmsblock.36', 'block5', 0),
(1225, 39, 'occmsblock.37', 'block6', 0),
(1288, 12, 'ocvermegamenu.85', 'block1', 0),
(1258, 35, 'newslettersubscribe.40', 'block7', 0),
(1305, 45, 'ocajaxlogin', 'content_top', 0),
(1304, 45, 'ocvermegamenu.133', 'block1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(352, 19, 5, 'common/home'),
(317, 20, 3, 'product/product'),
(326, 21, 4, 'product/product'),
(358, 22, 5, 'product/product'),
(333, 23, 4, 'product/category'),
(353, 24, 5, 'product/category'),
(313, 14, 3, ''),
(322, 15, 4, ''),
(354, 16, 5, ''),
(304, 17, 3, 'common/home'),
(320, 18, 4, 'common/home'),
(286, 6, 1, 'product/product'),
(403, 47, 7, 'product/special'),
(300, 11, 2, 'product/product'),
(296, 7, 2, ''),
(312, 8, 3, 'product/category'),
(283, 9, 1, 'common/home'),
(404, 47, 7, 'product/manufacturer/%'),
(285, 5, 1, 'product/category'),
(418, 12, 2, 'common/home'),
(287, 13, 1, ''),
(420, 45, 7, 'common/home'),
(400, 44, 6, 'product/product'),
(294, 27, 1, 'product/special'),
(293, 27, 1, 'product/manufacturer/%'),
(292, 27, 1, 'product/search'),
(295, 10, 2, 'product/category'),
(309, 28, 2, 'product/special'),
(308, 28, 2, 'product/manufacturer/%'),
(307, 28, 2, 'product/search'),
(341, 29, 4, 'product/search'),
(340, 29, 4, 'product/manufacturer/%'),
(339, 29, 4, 'product/special'),
(357, 30, 5, 'product/special'),
(356, 30, 5, 'product/manufacturer/%'),
(355, 30, 5, 'product/search'),
(349, 31, 3, 'product/search'),
(348, 31, 3, 'product/manufacturer/%'),
(347, 31, 3, 'product/special'),
(399, 43, 6, 'product/ocnewproduct'),
(397, 42, 6, 'product/manufacturer/%'),
(305, 33, 1, 'product/ocnewproduct'),
(306, 33, 1, 'product/ocbestseller'),
(310, 34, 2, 'product/ocnewproduct'),
(311, 34, 2, 'product/ocbestseller'),
(413, 35, 3, 'product/ocnewproduct'),
(412, 35, 3, 'product/ocbestseller'),
(343, 36, 4, 'product/ocnewproduct'),
(342, 36, 4, 'product/ocbestseller'),
(359, 37, 5, 'product/ocnewproduct'),
(360, 37, 5, 'product/ocbestseller'),
(402, 46, 7, 'product/category'),
(394, 41, 6, 'product/category'),
(398, 43, 6, 'product/ocbestseller'),
(395, 42, 6, 'product/search'),
(396, 42, 6, 'product/special'),
(383, 3, 0, 'product/category'),
(415, 1, 0, 'common/home'),
(389, 2, 0, 'product/product'),
(382, 4, 0, ''),
(386, 26, 0, 'product/search'),
(385, 26, 0, 'product/manufacturer/%'),
(384, 26, 0, 'product/special'),
(388, 32, 0, 'product/ocbestseller'),
(387, 32, 0, 'product/ocnewproduct'),
(379, 38, 6, ''),
(380, 40, 6, 'common/home'),
(405, 47, 7, 'product/search'),
(406, 48, 7, 'product/ocnewproduct'),
(407, 48, 7, 'product/ocbestseller'),
(408, 49, 7, 'product/product');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(1, 2, 'Centimeter', 'cm'),
(2, 2, 'Millimeter', 'mm'),
(3, 2, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/category/brand3.jpg', 0),
(6, 'Palm', 'catalog/category/brand4.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Apple', 'catalog/category/brand1.jpg', 0),
(9, 'Canon', 'catalog/category/brand2.jpg', 0),
(10, 'Sony', 'catalog/category/brand5.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(6, 0),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7),
(7, 0),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(7, 5),
(8, 0),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(8, 5),
(8, 6),
(8, 7),
(9, 0),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(9, 5),
(9, 6),
(9, 7),
(10, 0),
(10, 1),
(10, 2),
(10, 3),
(10, 4),
(10, 5),
(10, 6),
(10, 7);

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(21, 22, 'OC Layered Navigation Ajax', 'layered_navigation', 'Plaza Theme', '3.x', 'http://www.plazathemes.com/', '<modification>\r\n    <name>OC Layered Navigation Ajax</name>\r\n	<version>3.x</version>\r\n	<link>http://www.plazathemes.com/</link>\r\n	<author>Plaza Theme</author>\r\n	<code>layered_navigation</code>\r\n\r\n	<file path="catalog/controller/product/category.php">\r\n        <operation>\r\n            <search><![CDATA[$category_info = $this->model_catalog_category->getCategory($category_id);]]></search>\r\n            <add position="before"><![CDATA[\r\n        /* Edit for Layered Navigation */\r\n        if (!empty($_SERVER[''HTTPS'']) && $_SERVER[''HTTPS''] != ''off'') {\r\n            // SSL connection\r\n            $base_url = str_replace(''http'', ''https'', $this->config->get(''config_url''));\r\n        } else {\r\n            $base_url = $this->config->get(''config_url'');\r\n        }\r\n            ]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[''href'' => $this->url->link(''product/category'', ''path='' . $this->request->get[''path''] . ''_'' . $result[''category_id''] . $url)]]></search>\r\n            <add position="replace"><![CDATA[''href''  => $base_url . ''index.php?route=product/category&path='' . $result[''category_id''] . $url]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->url->link(''product/category'', ''path='' . $this->request->get[''path''] . ''&sort=p.sort_order&order=ASC'' . $url)]]></search>\r\n            <add position="replace"><![CDATA[$base_url . ''index.php?route=product/category&path='' . $category_id . ''&sort=p.sort_order&order=ASC'' . $url]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->url->link(''product/category'', ''path='' . $this->request->get[''path''] . ''&sort=pd.name&order=ASC'' . $url)]]></search>\r\n            <add position="replace"><![CDATA[$base_url . ''index.php?route=product/category&path='' . $category_id . ''&sort=pd.name&order=ASC'' . $url]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->url->link(''product/category'', ''path='' . $this->request->get[''path''] . ''&sort=pd.name&order=DESC'' . $url)]]></search>\r\n            <add position="replace"><![CDATA[$base_url . ''index.php?route=product/category&path='' . $category_id . ''&sort=pd.name&order=DESC'' . $url]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->url->link(''product/category'', ''path='' . $this->request->get[''path''] . ''&sort=p.price&order=ASC'' . $url)]]></search>\r\n            <add position="replace"><![CDATA[$base_url . ''index.php?route=product/category&path='' . $category_id . ''&sort=p.price&order=ASC'' . $url]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->url->link(''product/category'', ''path='' . $this->request->get[''path''] . ''&sort=p.price&order=DESC'' . $url)]]></search>\r\n            <add position="replace"><![CDATA[$base_url . ''index.php?route=product/category&path='' . $category_id . ''&sort=p.price&order=DESC'' . $url]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->url->link(''product/category'', ''path='' . $this->request->get[''path''] . ''&sort=rating&order=DESC'' . $url)]]></search>\r\n            <add position="replace"><![CDATA[$base_url . ''index.php?route=product/category&path='' . $category_id . ''&sort=rating&order=DESC'' . $url]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->url->link(''product/category'', ''path='' . $this->request->get[''path''] . ''&sort=rating&order=ASC'' . $url)]]></search>\r\n            <add position="replace"><![CDATA[$base_url . ''index.php?route=product/category&path='' . $category_id . ''&sort=rating&order=ASC'' . $url]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->url->link(''product/category'', ''path='' . $this->request->get[''path''] . ''&sort=p.model&order=ASC'' . $url)]]></search>\r\n            <add position="replace"><![CDATA[$base_url . ''index.php?route=product/category&path='' . $category_id . ''&sort=p.model&order=ASC'' . $url]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->url->link(''product/category'', ''path='' . $this->request->get[''path''] . ''&sort=p.model&order=DESC'' . $url)]]></search>\r\n            <add position="replace"><![CDATA[$base_url . ''index.php?route=product/category&path='' . $category_id . ''&sort=p.model&order=DESC'' . $url]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->url->link(''product/category'', ''path='' . $this->request->get[''path''] . $url . ''&limit='' . $value)]]></search>\r\n            <add position="replace"><![CDATA[$base_url . ''index.php?route=product/category&path='' . $category_id . $url . ''&limit='' . $value]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$pagination->url = $this->url->link(''product/category'', ''path='' . $this->request->get[''path''] . $url . ''&page={page}'');]]></search>\r\n            <add position="replace"><![CDATA[$pagination->url = $base_url . ''index.php?route=extension/module/oclayerednavigation/category&path='' . $category_id . $url . ''&page={page}'';]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$data[''limit''] = $limit;]]></search>\r\n            <add position="replace"><![CDATA[\r\n            /* Edit for Layered Navigation Ajax Module */\r\n            $module_status = $this->config->get(''module_oclayerednavigation_status'');\r\n            if($module_status) {\r\n                // $this->document->addScript(''catalog/view/javascript/jquery/jquery-ui.min.js'');\r\n                $this->document->addStyle(''catalog/view/javascript/jquery/css/jquery-ui.min.css'');\r\n \r\n                if (file_exists(DIR_TEMPLATE . $this->config->get(''theme_'' . $this->config->get(''config_theme'') . ''_directory'') . ''/stylesheet/opentheme/oclayerednavigation/css/oclayerednavigation.css'')) {\r\n                    $this->document->addStyle(''catalog/view/theme/'' . $this->config->get(''theme_'' . $this->config->get(''config_theme'') . ''_directory'') . ''/stylesheet/opentheme/oclayerednavigation/css/oclayerednavigation.css'');\r\n                } else {\r\n                    $this->document->addStyle(''catalog/view/theme/default/stylesheet/opentheme/oclayerednavigation/css/oclayerednavigation.css'');\r\n                }\r\n \r\n                $this->document->addScript(''catalog/view/javascript/opentheme/oclayerednavigation/oclayerednavigation.js'');\r\n            }\r\n\r\n\r\n            ]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->response->setOutput($this->load->view(''product/category'', $data));]]></search>\r\n            <add position="replace"><![CDATA[\r\n            /* Edit for Layered Navigation Ajax Module */\r\n            if($module_status) {\r\n                $data[''module_oclayerednavigation_loader_img''] = $base_url . ''image/'' . $this->config->get(''module_oclayerednavigation_loader_img'');\r\n \r\n                $this->response->setOutput($this->load->view(''extension/module/oclayerednavigation/occategory'', $data));\r\n            } else {\r\n \r\n                $this->response->setOutput($this->load->view(''product/category'', $data));\r\n            }\r\n            ]]></add>\r\n        </operation>\r\n	</file>\r\n\r\n    <file path="catalog/model/catalog/product.php">\r\n        <operation>\r\n            <search><![CDATA[if (!empty($data[''filter_manufacturer_id''])) {]]></search>\r\n            <add position="before">\r\n                <![CDATA[\r\n        /* Price range */\r\n        if  (!empty($data[''filter_price''])) {\r\n            $min_price = $data[''filter_price''][''min_price''];\r\n            $max_price = $data[''filter_price''][''max_price''];\r\n            $sql_sl_special = "(SELECT price FROM " . DB_PREFIX . "product_special ps WHERE ps.product_id = p.product_id AND ps.customer_group_id = ''" . (int)$this->config->get(''config_customer_group_id'') . "'' AND ((ps.date_start = ''0000-00-00'' OR ps.date_start < NOW()) AND (ps.date_end = ''0000-00-00'' OR ps.date_end > NOW())) ORDER BY ps.priority ASC, ps.price ASC LIMIT 1)";\r\n            $sql_sl_discount = "(SELECT price FROM " . DB_PREFIX . "product_discount pd2 WHERE pd2.product_id = p.product_id AND pd2.customer_group_id = ''" . (int)$this->config->get(''config_customer_group_id'') . "'' AND pd2.quantity = ''1'' AND ((pd2.date_start = ''0000-00-00'' OR pd2.date_start < NOW()) AND (pd2.date_end = ''0000-00-00'' OR pd2.date_end > NOW())) ORDER BY pd2.priority ASC, pd2.price ASC LIMIT 1)";\r\n            $sql .= " AND (CASE WHEN " . $sql_sl_special . " IS NOT NULL THEN " . $sql_sl_special . " WHEN " . $sql_sl_discount . " IS NOT NULL THEN ". $sql_sl_discount . " ELSE p.price END) >=''". $min_price ."''" ;\r\n            $sql .= " AND (CASE WHEN " . $sql_sl_special . " IS NOT NULL THEN " . $sql_sl_special . " WHEN " . $sql_sl_discount . " IS NOT NULL THEN ". $sql_sl_discount . " ELSE p.price END) <=''". $max_price ."''";\r\n        }\r\n        /* End */\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n    </file>\r\n</modification>', 1, '2017-08-29 10:01:00'),
(34, 35, 'OC Theme Option', 'oc_theme_option', 'Plaza Theme', '3.x', '', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n    <code>oc_theme_option</code>\r\n    <name>OC Theme Option</name>\r\n    <version>3.x</version>\r\n    <author>Plaza Theme</author>\r\n\r\n    <!-- Menu Left in Admin -->\r\n    <file path="admin/controller/common/column_left.php">\r\n        <operation>\r\n            <search ><![CDATA[$sale = array();]]></search>\r\n            <add position="before"><![CDATA[\r\n            // OC Menu Items\r\n            $this->load->language(''ocadminmenu/ocadminmenu'');\r\n\r\n            $ocadmin_menu = array();\r\n\r\n            if($this->user->hasPermission(''access'', ''extension/module/octhemeoption'')) {\r\n                $ocadmin_menu[] = array(\r\n                    ''name''     => $this->language->get(''text_theme_config''),\r\n                    ''href''     => $this->url->link(''extension/module/octhemeoption'', ''user_token='' . $this->session->data[''user_token''], true),\r\n                    ''children'' => array()\r\n                );\r\n            }\r\n\r\n            if($this->user->hasPermission(''access'', ''catalog/occategorythumbnail'')) {\r\n                $ocadmin_menu[] = array(\r\n                    ''name''     => $this->language->get(''text_category_thumbnail''),\r\n                    ''href''     => $this->url->link(''catalog/occategorythumbnail'', ''user_token='' . $this->session->data[''user_token''], true),\r\n                    ''children'' => array()\r\n                );\r\n            }\r\n\r\n            // Blog\r\n            $blog = array();\r\n\r\n            if ($this->user->hasPermission(''access'', ''blog/article'')) {\r\n                $blog[] = array(\r\n                    ''name''     => $this->language->get(''text_article''),\r\n                    ''href''     => $this->url->link(''blog/article'', ''user_token='' . $this->session->data[''user_token''], true),\r\n                    ''children'' => array()\r\n                );\r\n            }\r\n\r\n            if ($this->user->hasPermission(''access'', ''blog/articlelist'')) {\r\n                $blog[] = array(\r\n                    ''name''     => $this->language->get(''text_article_list''),\r\n                    ''href''     => $this->url->link(''blog/articlelist'', ''user_token='' . $this->session->data[''user_token''], true),\r\n                    ''children'' => array()\r\n                );\r\n            }\r\n\r\n            if ($this->user->hasPermission(''access'', ''blog/config'')) {\r\n                $blog[] = array(\r\n                    ''name''     => $this->language->get(''text_blog_config''),\r\n                    ''href''     => $this->url->link(''blog/config'', ''user_token='' . $this->session->data[''user_token''], true),\r\n                    ''children'' => array()\r\n                );\r\n            }\r\n\r\n            if($blog) {\r\n                $ocadmin_menu[] = array(\r\n                    ''name''      => $this->language->get(''text_blog''),\r\n                    ''href''      => '''',\r\n                    ''children''  => $blog\r\n                );\r\n            }\r\n\r\n            if($this->user->hasPermission(''access'', ''extension/module/occmsblock'')) {\r\n                $ocadmin_menu[] = array(\r\n                    ''name''     => $this->language->get(''text_cms_block''),\r\n                    ''href''     => $this->url->link(''extension/module/occmsblock/cmslist'', ''user_token='' . $this->session->data[''user_token''], true),\r\n                    ''children'' => array()\r\n                );\r\n            }\r\n\r\n            if($this->user->hasPermission(''access'', ''extension/module/ocslideshow'')) {\r\n                $ocadmin_menu[] = array(\r\n                    ''name''     => $this->language->get(''text_slideshow''),\r\n                    ''href''     => $this->url->link(''extension/module/ocslideshow/form'', ''user_token='' . $this->session->data[''user_token''], true),\r\n                    ''children'' => array()\r\n                );\r\n            }\r\n            \r\n            $data[''menus''][] = array(\r\n                ''id''       => ''menu-panel'',\r\n                ''icon''     => ''fa-empire'',\r\n                ''name''     => $this->language->get(''text_theme_menu''),\r\n                ''href''     => '''',\r\n                ''children'' => $ocadmin_menu\r\n            );\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n	\r\n	<file path="catalog/controller/account/{account,address,affiliate,download,edit,forgotten,login,logout,newsletter,order,password,recurring,register,reset,return,reward,success,tracking,transaction,voucher,wishlist}*.php">\r\n  <operation>\r\n   <search><![CDATA[$this->document->setTitle($this->language->get(''heading_title''));]]></search>\r\n   <add position="after"><![CDATA[\r\n    $data[''heading_title''] = $this->language->get(''heading_title'');\r\n   ]]></add>\r\n  </operation>\r\n </file>\r\n \r\n <file path="catalog/controller/affiliate/{login,register,success,}*.php">\r\n  <operation>\r\n   <search><![CDATA[$this->document->setTitle($this->language->get(''heading_title''));]]></search>\r\n   <add position="after"><![CDATA[\r\n    $data[''heading_title''] = $this->language->get(''heading_title'');\r\n   ]]></add>\r\n  </operation>\r\n </file>\r\n \r\n <file path="catalog/controller/checkout/{cart,checkout,failure,success}*.php">\r\n  <operation>\r\n   <search><![CDATA[$this->document->setTitle($this->language->get(''heading_title''));]]></search>\r\n   <add position="after"><![CDATA[\r\n    $data[''heading_title''] = $this->language->get(''heading_title'');\r\n   ]]></add>\r\n  </operation>\r\n </file>\r\n \r\n <file path="catalog/controller/product/{compare,manufacturer,search,special}*.php">\r\n  <operation>\r\n   <search><![CDATA[$this->document->setTitle($this->language->get(''heading_title''));]]></search>\r\n   <add position="after"><![CDATA[\r\n    $data[''heading_title''] = $this->language->get(''heading_title'');\r\n   ]]></add>\r\n  </operation>\r\n </file>\r\n \r\n <file path="catalog/controller/{common,error}/{maintenance,not_found}*.php">\r\n  <operation>\r\n   <search><![CDATA[$this->document->setTitle($this->language->get(''heading_title''));]]></search>\r\n   <add position="after"><![CDATA[\r\n    $data[''heading_title''] = $this->language->get(''heading_title'');\r\n   ]]></add>\r\n  </operation>\r\n </file>\r\n \r\n <file path="catalog/controller/extension/{credit_card,payment}/{sagepay_direct,sagepay_server,squareup,amazon_login_pay,klarna_checkout,wechat_pay}*.php">\r\n  <operation>\r\n   <search><![CDATA[$this->document->setTitle($this->language->get(''heading_title''));]]></search>\r\n   <add position="after"><![CDATA[\r\n    $data[''heading_title''] = $this->language->get(''heading_title'');\r\n   ]]></add>\r\n  </operation>\r\n </file>\r\nthem vao xml, thu xem con bi sai text ko\r\n<file path="catalog/controller/information/{sitemap,contact}*.php">\r\n  <operation>\r\n   <search><![CDATA[$this->document->setTitle($this->language->get(''heading_title''));]]></search>\r\n   <add position="after"><![CDATA[\r\n    $data[''heading_title''] = $this->language->get(''heading_title'');\r\n   ]]></add>\r\n  </operation>\r\n </file>\r\n	\r\n	<file path="catalog/controller/account/{account,address,affiliate,download,edit,forgotten,login,logout,newsletter,order,password,recurring,register,reset,return,reward,success,tracking,transaction,voucher,wishlist}*.php">\r\n	  <operation>\r\n	   <search><![CDATA[$this->document->setTitle($this->language->get(''heading_title''));]]></search>\r\n	   <add position="after"><![CDATA[\r\n		$data[''heading_title''] = $this->language->get(''heading_title'');\r\n	   ]]></add>\r\n	  </operation>\r\n	 </file>\r\n	 \r\n	 <file path="catalog/controller/affiliate/{login,register,success,}*.php">\r\n	  <operation>\r\n	   <search><![CDATA[$this->document->setTitle($this->language->get(''heading_title''));]]></search>\r\n	   <add position="after"><![CDATA[\r\n		$data[''heading_title''] = $this->language->get(''heading_title'');\r\n	   ]]></add>\r\n	  </operation>\r\n	 </file>\r\n	 \r\n	 <file path="catalog/controller/checkout/{cart,checkout,failure,success}*.php">\r\n	  <operation>\r\n	   <search><![CDATA[$this->document->setTitle($this->language->get(''heading_title''));]]></search>\r\n	   <add position="after"><![CDATA[\r\n		$data[''heading_title''] = $this->language->get(''heading_title'');\r\n	   ]]></add>\r\n	  </operation>\r\n	 </file>\r\n	 \r\n	 <file path="catalog/controller/product/{compare,manufacturer,search,special}*.php">\r\n	  <operation>\r\n	   <search><![CDATA[$this->document->setTitle($this->language->get(''heading_title''));]]></search>\r\n	   <add position="after"><![CDATA[\r\n		$data[''heading_title''] = $this->language->get(''heading_title'');\r\n	   ]]></add>\r\n	  </operation>\r\n	 </file>\r\n	 \r\n	 <file path="catalog/controller/{common,error}/{maintenance,not_found}*.php">\r\n	  <operation>\r\n	   <search><![CDATA[$this->document->setTitle($this->language->get(''heading_title''));]]></search>\r\n	   <add position="after"><![CDATA[\r\n		$data[''heading_title''] = $this->language->get(''heading_title'');\r\n	   ]]></add>\r\n	  </operation>\r\n	 </file>\r\n	 \r\n	 <file path="catalog/controller/extension/{credit_card,payment}/{sagepay_direct,sagepay_server,squareup,amazon_login_pay,klarna_checkout,wechat_pay}*.php">\r\n	  <operation>\r\n	   <search><![CDATA[$this->document->setTitle($this->language->get(''heading_title''));]]></search>\r\n	   <add position="after"><![CDATA[\r\n		$data[''heading_title''] = $this->language->get(''heading_title'');\r\n	   ]]></add>\r\n	  </operation>\r\n	 </file>\r\n\r\n    <!-- PRODUCT ROTATOR IMAGE -->\r\n    <file path="admin/controller/catalog/product.php">\r\n        <operation>\r\n            <search ><![CDATA[public function index() {]]></search>\r\n            <add position="after"><![CDATA[\r\n        /* Product Rotator */\r\n        $this->load->model(''catalog/ocproductrotator'');\r\n        \r\n        $this->model_catalog_ocproductrotator->installProductRotator();\r\n        /* End Product Rotator */\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search ><![CDATA[$this->load->language(''catalog/product'');]]></search>\r\n            <add position="before"><![CDATA[\r\n                /* Product Rotator */\r\n                $this->load->language(''extension/module/ocproductrotator'');\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search ><![CDATA[''sort_order'' => $product_image[''sort_order'']]]></search>\r\n            <add position="before"><![CDATA[\r\n                /* Product Rotator */\r\n                ''is_rotator'' => $product_image[''is_rotator''],\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path="admin/model/catalog/product.php">\r\n        <operation>\r\n            <search><![CDATA[$this->db->query("INSERT INTO " . DB_PREFIX . "product_image SET product_id = ''" . (int)$product_id . "'', image = ''" . $this->db->escape($product_image[''image'']) . "'', sort_order = ''" . (int)$product_image[''sort_order''] . "''");]]></search>\r\n            <add position="replace">\r\n                <![CDATA[\r\n                    /* Product Rotator */\r\n                    $this->db->query("INSERT INTO " . DB_PREFIX . "product_image SET product_id = ''" . (int)$product_id . "'', image = ''" . $this->db->escape($product_image[''image'']) . "'', sort_order = ''" . (int)$product_image[''sort_order''] . "'', is_rotator = ''" . (int)$product_image[''is_rotator''] . "''");\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path="admin/view/template/catalog/product_form.twig">\r\n        <operation>\r\n            <search><![CDATA[<td class="text-right">{{ entry_sort_order }}</td>]]></search>\r\n            <add position="after">\r\n                <![CDATA[\r\n                    <!-- Product Rotator -->\r\n                    <td class="text-center">{{ entry_is_rotator }}</td>\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[<td class="text-left"><button type="button" onclick="$(''#image-row{{ image_row }}'').remove();" data-toggle="tooltip" title="{{ button_remove }}" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>]]></search>\r\n            <add position="before">\r\n                <![CDATA[\r\n                    <!-- Product Rotator -->\r\n                    <td class="text-center">\r\n                      <select name="product_image[{{ image_row }}][is_rotator]" class="form-control rotator-select">\r\n                        {% if product_image.is_rotator and (product_image.is_rotator == 1) %}\r\n                        <option value="1" selected="selected">Yes</option>\r\n                        <option value="0">No</option>\r\n                        {% else %}\r\n                        <option value="1">Yes</option>\r\n                        <option value="0" selected="selected">No</option>\r\n                        {% endif %}\r\n                      </select>\r\n                    </td>\r\n                    <!-- End -->\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[function addImage() {]]></search>\r\n            <add position="before">\r\n                <![CDATA[\r\n                    //Product Rotator\r\n                    $(''#tab-image tfoot td:first'').attr(''colspan'', 3);\r\n                    $(''.rotator-select'').change(function() {\r\n                      var value = $(this).val();\r\n                      if(value == 1) {\r\n                        $(''.rotator-select'').val(0);\r\n                        $(this).val(1);\r\n                      }\r\n                    });\r\n                    //End\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$(''#images tbody'').append(html);]]></search>\r\n            <add position="after">\r\n                <![CDATA[\r\n                    //Product Rotator\r\n                    $(''.rotator-select'').change(function() {\r\n                      var value = $(this).val();\r\n                      if(value == 1) {\r\n                        $(''.rotator-select'').val(0);\r\n                        $(this).val(1);\r\n                      }\r\n                    });\r\n                    //End\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[html += ''  <td class="text-left"><button type="button" onclick="$(\\''#image-row'' + image_row  + ''\\'').remove();" data-toggle="tooltip" title="{{ button_remove }}" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>'';]]></search>\r\n            <add position="before">\r\n                <![CDATA[\r\n                    //Product Rotator\r\n                    html += '' <td class="text-center">'';\r\n                    html += ''   <select name="product_image['' + image_row + ''][is_rotator]" class="form-control rotator-select">'';\r\n                    html += ''     <option value="1">{{ text_yes }}</option>'';\r\n                    html += ''     <option value="0" selected="selected">{{ text_no }}</option>'';\r\n                    html += ''   </select>'';\r\n                    html += '' </td>'';\r\n                    //End\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n    </file>\r\n    \r\n    <!-- THEME OPTION -->\r\n    <file path="catalog/controller/common/header.php">\r\n        <operation>\r\n            <search><![CDATA[return $this->load->view(''common/header'', $data);]]></search>\r\n            <add position="before"><![CDATA[\r\n				$data[''store_id''] = $this->config->get(''config_store_id'');\r\n				$data[''theme_option_status''] = $this->config->get(''module_octhemeoption_status'');\r\n				$data[''a_tag''] = $this->config->get(''module_octhemeoption_a_tag'');\r\n				$data[''header_tag''] = $this->config->get(''module_octhemeoption_header_tag'');\r\n				$data[''body_css''] = $this->config->get(''module_octhemeoption_body'');\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <!-- Layouts Position -->\r\n    <file path="admin/controller/design/layout.php">\r\n        <operation>\r\n            <search><![CDATA[$this->response->setOutput($this->load->view(''design/layout_form'', $data));]]></search>\r\n            <add position="replace"><![CDATA[\r\n                $this->response->setOutput($this->load->view(''design/layout_plaza_form'', $data));\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n</modification>\r\n', 1, '2017-11-09 14:21:08');
INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(36, 37, 'OC Customize Template', 'oc_customize_template', 'Plaza Theme', '3.x', '', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n    <code>oc_customize_template</code>\r\n    <name>OC Customize Template</name>\r\n    <version>3.x</version>\r\n    <author>Plaza Theme</author>\r\n	\r\n	<file path="catalog/controller/account/{account,address,affiliate,download,edit,forgotten,login,logout,newsletter,order,password,recurring,register,reset,return,reward,success,tracking,transaction,voucher,wishlist}*.php">\r\n  <operation>\r\n   <search><![CDATA[$this->document->setTitle($this->language->get(''heading_title''));]]></search>\r\n   <add position="after"><![CDATA[\r\n    $data[''heading_title''] = $this->language->get(''heading_title'');\r\n   ]]></add>\r\n  </operation>\r\n </file>\r\n \r\n <file path="catalog/controller/affiliate/{login,register,success,}*.php">\r\n  <operation>\r\n   <search><![CDATA[$this->document->setTitle($this->language->get(''heading_title''));]]></search>\r\n   <add position="after"><![CDATA[\r\n    $data[''heading_title''] = $this->language->get(''heading_title'');\r\n   ]]></add>\r\n  </operation>\r\n </file>\r\n \r\n <file path="catalog/controller/checkout/{cart,checkout,failure,success}*.php">\r\n  <operation>\r\n   <search><![CDATA[$this->document->setTitle($this->language->get(''heading_title''));]]></search>\r\n   <add position="after"><![CDATA[\r\n    $data[''heading_title''] = $this->language->get(''heading_title'');\r\n   ]]></add>\r\n  </operation>\r\n </file>\r\n \r\n <file path="catalog/controller/product/{compare,manufacturer,search,special,ocnewproduct,ocbestseller}*.php">\r\n  <operation>\r\n   <search><![CDATA[$this->document->setTitle($this->language->get(''heading_title''));]]></search>\r\n   <add position="after"><![CDATA[\r\n    $data[''heading_title''] = $this->language->get(''heading_title'');\r\n   ]]></add>\r\n  </operation>\r\n </file>\r\n \r\n <file path="catalog/controller/{common,error}/{maintenance,not_found}*.php">\r\n  <operation>\r\n   <search><![CDATA[$this->document->setTitle($this->language->get(''heading_title''));]]></search>\r\n   <add position="after"><![CDATA[\r\n    $data[''heading_title''] = $this->language->get(''heading_title'');\r\n   ]]></add>\r\n  </operation>\r\n </file>\r\n \r\n <file path="catalog/controller/extension/{credit_card,payment}/{sagepay_direct,sagepay_server,squareup,amazon_login_pay,klarna_checkout,wechat_pay}*.php">\r\n  <operation>\r\n   <search><![CDATA[$this->document->setTitle($this->language->get(''heading_title''));]]></search>\r\n   <add position="after"><![CDATA[\r\n    $data[''heading_title''] = $this->language->get(''heading_title'');\r\n   ]]></add>\r\n  </operation>\r\n </file>\r\n <file path="catalog/controller/information/{sitemap,contact}*.php">\r\n  <operation>\r\n   <search><![CDATA[$this->document->setTitle($this->language->get(''heading_title''));]]></search>\r\n   <add position="after"><![CDATA[\r\n    $data[''heading_title''] = $this->language->get(''heading_title'');\r\n   ]]></add>\r\n  </operation>\r\n </file>\r\n	<file path="catalog/controller/account/{address,download,order,recurring,return,reward,transaction,wishlist}*.php">\r\n  <operation>\r\n   <search><![CDATA[$this->document->setTitle($this->language->get(''heading_title''));]]></search>\r\n   <add position="after"><![CDATA[\r\n    $data[''text_empty''] = $this->language->get(''text_empty'');\r\n   ]]></add>\r\n  </operation>\r\n </file>\r\n <file path="catalog/controller/checkout/cart.php">\r\n  <operation>\r\n   <search><![CDATA[$this->document->setTitle($this->language->get(''heading_title''));]]></search>\r\n   <add position="after"><![CDATA[\r\n    $data[''text_empty''] = $this->language->get(''text_empty'');\r\n   ]]></add>\r\n  </operation>\r\n </file>\r\n <file path="catalog/controller/common/cart.php">\r\n  <operation>\r\n   <search><![CDATA[$this->document->setTitle($this->language->get(''heading_title''));]]></search>\r\n   <add position="after"><![CDATA[\r\n    $data[''text_empty''] = $this->language->get(''text_empty'');\r\n   ]]></add>\r\n  </operation>\r\n </file>\r\n <file path="catalog/controller/extension/credit_card/{sagepay_direct,sagepay_server}*.php">\r\n  <operation>\r\n   <search><![CDATA[$this->document->setTitle($this->language->get(''heading_title''));]]></search>\r\n   <add position="after"><![CDATA[\r\n    $data[''text_empty''] = $this->language->get(''text_empty'');\r\n   ]]></add>\r\n  </operation>\r\n </file>\r\n \r\n <file path="catalog/controller/product/search.php">\r\n  <operation>\r\n   <search><![CDATA[$data[''breadcrumbs''] = array();]]></search>\r\n   <add position="before"><![CDATA[\r\n    $data[''text_empty''] = $this->language->get(''text_empty'');\r\n   ]]></add>\r\n  </operation>\r\n </file>\r\n \r\n <file path="catalog/controller/product/{category,compare,manufacturer,special}*.php">\r\n  <operation>\r\n   <search><![CDATA[$this->document->setTitle($this->language->get(''heading_title''));]]></search>\r\n   <add position="after"><![CDATA[\r\n    $data[''text_empty''] = $this->language->get(''text_empty'');\r\n   ]]></add>\r\n  </operation>\r\n </file>\r\n	<file path="admin/model/localisation/language.php">\r\n		<operation>\r\n			<search><![CDATA[return $language_id;]]></search>\r\n			<add position="before"><![CDATA[\r\n				$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "cmsblock_description WHERE language_id = ''" . (int)$this->config->get(''config_language_id'') . "''");\r\n\r\n				foreach ($query->rows as $cmsblock_description) {\r\n					$this->db->query("INSERT INTO " . DB_PREFIX . "cmsblock_description SET cmsblock_des_id = ''" . (int)$cmsblock_description[''cmsblock_des_id''] . "'', language_id = ''" . (int)$language_id . "'', cmsblock_id = ''" . (int)$cmsblock_description[''cmsblock_id''] . "'', title = ''" . $this->db->escape($cmsblock_description[''title'']) . "'', description = ''" . $this->db->escape($cmsblock_description[''description'']) . "''");\r\n				}\r\n				$this->cache->delete(''cmsblock_description'');\r\n\r\n				$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "article_description WHERE language_id = ''" . (int)$this->config->get(''config_language_id'') . "''");\r\n\r\n				foreach ($query->rows as $article_description) {\r\n					$this->db->query("INSERT INTO " . DB_PREFIX . "article_description SET article_id = ''" . (int)$article_description[''article_id''] . "'', language_id = ''" . (int)$language_id . "'', name = ''" . $this->db->escape($article_description[''name'']) . "'', description = ''" . $this->db->escape($article_description[''description'']) . "'', intro_text = ''" . $this->db->escape($article_description[''intro_text'']) . "'', meta_title = ''" . $this->db->escape($article_description[''meta_title'']) . "'', meta_description = ''" . $this->db->escape($article_description[''meta_description'']) . "'', meta_keyword = ''" . $this->db->escape($article_description[''meta_keyword'']) . "''");\r\n				}\r\n				$this->cache->delete(''article_description'');\r\n				\r\n				$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "ocslideshow_image_description WHERE language_id = ''" . (int)$this->config->get(''config_language_id'') . "''");\r\n\r\n				foreach ($query->rows as $ocslideshow_image_description) {\r\n					$this->db->query("INSERT INTO " . DB_PREFIX . "ocslideshow_image_description SET ocslideshow_image_id = ''" . (int)$ocslideshow_image_description[''ocslideshow_image_id''] . "'', language_id = ''" . (int)$language_id . "'', ocslideshow_id = ''" . (int)$ocslideshow_image_description[''ocslideshow_id''] . "'', description = ''" . $this->db->escape($ocslideshow_image_description[''description'']) . "'', title = ''" . $this->db->escape($ocslideshow_image_description[''title'']) . "'', sub_title = ''" . $this->db->escape($ocslideshow_image_description[''sub_title'']) . "''");\r\n				}\r\n				$this->cache->delete(''ocslideshow_image_description'');\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation>\r\n		<search><![CDATA[\r\n			$this->db->query("DELETE FROM " . DB_PREFIX . "option_description WHERE language_id = ''" . (int)$language_id . "''");\r\n		]]></search>\r\n		<add position="after"><![CDATA[\r\n			$this->db->query("DELETE FROM " . DB_PREFIX . "cmsblock_description WHERE language_id = ''" . (int)$language_id . "''");\r\n			$this->db->query("DELETE FROM " . DB_PREFIX . "article_description WHERE language_id = ''" . (int)$language_id . "''");\r\n			$this->db->query("DELETE FROM " . DB_PREFIX . "ocslideshow_image_description WHERE language_id = ''" . (int)$language_id . "''");\r\n		]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path="admin/controller/design/layout.php">\r\n	  <operation>\r\n	   <search><![CDATA[$this->load->language(''design/layout'');]]></search>\r\n	   <add position="after"><![CDATA[\r\n		$data[''heading_title''] = $this->language->get(''heading_title'');\r\n	   ]]></add>\r\n	  </operation>\r\n	  <operation>\r\n	   <search><![CDATA[protected function getForm() {]]></search>\r\n	   <add position="after"><![CDATA[\r\n		$this->load->language(''design/layout'');\r\n		$data[''heading_title''] = $this->language->get(''heading_title'');\r\n	   ]]></add>\r\n	  </operation>\r\n	  \r\n	 </file>\r\n	\r\n	<file path="catalog/controller/common/cart.php">\r\n		<operation>\r\n			<search><![CDATA[$data[''text_items''] = sprintf($this->language->get(''text_items''), $this->cart->countProducts() + (isset($this->session->data[''vouchers'']) ? count($this->session->data[''vouchers'']) : 0), $this->currency->format($total, $this->session->data[''currency'']));]]></search>\r\n			<add position="replace"><![CDATA[\r\n				$data[''text_items''] = sprintf($this->language->get(''text_items''), $this->cart->countProducts() + (isset($this->session->data[''vouchers'']) ? count($this->session->data[''vouchers'']) : 0), null);\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$data[''products''][] = array(]]></search>\r\n			<add position="before"><![CDATA[\r\n				$c_words = 30;\r\n				$product[''name''] = strlen($product[''name'']) > $c_words ? substr($product[''name''],0,$c_words)."..." : $product[''name''];\r\n			]]></add>\r\n		</operation>\r\n	</file>	\r\n	\r\n	<file path="catalog/controller/extension/module/category.php">\r\n		<operation>\r\n			<search><![CDATA[if ($category[''category_id''] == $data[''category_id'']) {]]></search>\r\n			<add position="replace"><![CDATA[\r\n				if (true) {\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path="catalog/controller/common/header.php">\r\n		<operation>\r\n			<search><![CDATA[return $this->load->view(''common/header'', $data);]]></search>\r\n			<add position="before"><![CDATA[\r\n				$data[''block1''] = $this->load->controller(''common/block1'');\r\n				$data[''block2''] = $this->load->controller(''common/block2'');			\r\n				$data[''block3''] = $this->load->controller(''common/block3'');\r\n				if($this->config->get(''module_ocajaxlogin_status'')){\r\n					$data[''use_ajax_login''] = true;\r\n				}else{\r\n					$data[''use_ajax_login''] = false;\r\n				}\r\n				\r\n				// For page specific css\r\n				if (isset($this->request->get[''route''])) {\r\n					if (isset($this->request->get[''product_id''])) {\r\n						$class = ''-'' . $this->request->get[''product_id''];\r\n					} elseif (isset($this->request->get[''path''])) {\r\n						$class = ''-'' . $this->request->get[''path''];\r\n					} elseif (isset($this->request->get[''manufacturer_id''])) {\r\n						$class = ''-'' . $this->request->get[''manufacturer_id''];\r\n					} elseif (isset($this->request->get[''information_id''])) {\r\n						$class = ''-'' . $this->request->get[''information_id''];\r\n					} else {\r\n						$class = '''';\r\n					}\r\n\r\n					$data[''class''] = str_replace(''/'', ''-'', $this->request->get[''route'']) . $class;\r\n				} else {\r\n					$data[''class''] = ''common-home'';\r\n				}\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$data[''telephone''] = $this->config->get(''config_telephone'');]]></search>\r\n			<add position="after"><![CDATA[\r\n				$data[''text_welcome''] = $this->language->get(''text_welcome'');\r\n				$data[''email''] = $this->config->get(''config_email'');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path="catalog/controller/common/footer.php">\r\n		<operation>\r\n			<search><![CDATA[$data[''newsletter''] = $this->url->link(''account/newsletter'', '''', true);]]></search>\r\n			<add position="after"><![CDATA[								\r\n				$data[''block4''] = $this->load->controller(''common/block4'');\r\n				$data[''block5''] = $this->load->controller(''common/block5'');\r\n				$data[''block6''] = $this->load->controller(''common/block6'');\r\n				$data[''block7''] = $this->load->controller(''common/block7'');				\r\n				if ($this->request->server[''HTTPS'']) {\r\n					$server = $this->config->get(''config_ssl'');\r\n				} else {\r\n					$server = $this->config->get(''config_url'');\r\n				}\r\n				if (is_file(DIR_IMAGE . $this->config->get(''config_logo''))) {\r\n					$data[''logo''] = $server . ''image/'' . $this->config->get(''config_logo'');\r\n				} else {\r\n					$data[''logo''] = '''';\r\n				}\r\n				$data[''text_download_app''] = $this->language->get(''text_download_app'');\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[''title'' => $result[''title''],]]></search>\r\n			<add position="after"><![CDATA[		\r\n				''short-des'' => utf8_substr(strip_tags(html_entity_decode($result[''description''], ENT_QUOTES, ''UTF-8'')), 0, 300),\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path="catalog/controller/product/category.php">\r\n		<operation>\r\n			<search><![CDATA[foreach ($results as $result) {]]></search>\r\n			<add position="before"><![CDATA[\r\n				/* Get new product */\r\n				$this->load->model(''catalog/product'');\r\n		\r\n				$data[''new_products''] = array();\r\n		\r\n				$filter_data = array(\r\n					''sort''  => ''p.date_added'',\r\n					''order'' => ''DESC'',\r\n					''start'' => 0,\r\n					''limit'' => 10\r\n				);\r\n		\r\n				$new_results = $this->model_catalog_product->getProducts($filter_data);\r\n				/* End */\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$data[''products''][] = array(]]></search>\r\n			<add position="before"><![CDATA[\r\n				$is_new = false;\r\n				if ($new_results) { \r\n					foreach($new_results as $new_r) {\r\n						if($result[''product_id''] == $new_r[''product_id'']) {\r\n							$is_new = true;\r\n						}\r\n					}\r\n				}\r\n				if (($this->config->get(''config_customer_price'') && $this->customer->isLogged()) || !$this->config->get(''config_customer_price'')) {\r\n					$price_num = $this->tax->calculate($result[''price''], $result[''tax_class_id''], $this->config->get(''config_tax''));\r\n				} else {\r\n					$price_num = false;\r\n				}\r\n\r\n				if ((float)$result[''special'']) {\r\n					$special_num = $this->tax->calculate($result[''special''], $result[''tax_class_id''], $this->config->get(''config_tax''));\r\n				} else {\r\n					$special_num = false;\r\n				}\r\n				/// Product Rotator /\r\n				$store_id = $this->config->get(''config_store_id'');\r\n\r\n				$product_rotator_status = (int) $this->config->get(''module_octhemeoption_rotator'')[$store_id];\r\n				if($product_rotator_status == 1) {\r\n				 $this->load->model(''catalog/ocproductrotator'');\r\n				 $this->load->model(''tool/image'');\r\n			 \r\n				 $product_id = $result[''product_id''];\r\n				 $product_rotator_image = $this->model_catalog_ocproductrotator->getProductRotatorImage($product_id);\r\n			 \r\n				 if($product_rotator_image) {\r\n				  $rotator_image = $this->model_tool_image->resize($product_rotator_image, $this->config->get(''theme_'' . $this->config->get(''config_theme'') . ''_image_product_width''), $this->config->get(''theme_'' . $this->config->get(''config_theme'') . ''_image_product_height'')); \r\n				 } else {\r\n				  $rotator_image = false;\r\n				 } \r\n				} else {\r\n				 $rotator_image = false;    \r\n				}\r\n				/// End Product Rotator /\r\n								\r\n				$c_words = 50;\r\n				$result[''name''] = strlen($result[''name'']) > $c_words ? substr($result[''name''],0,$c_words)."..." : $result[''name''];\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[''product_id''  => $result[''product_id''],]]></search>\r\n			<add position="before"><![CDATA[\r\n				''is_new''      => $is_new,\r\n				''rotator_image'' => $rotator_image,\r\n				''price_num''       => $price_num,\r\n				''special_num''     => $special_num,\r\n				''manufacturer'' => $result[''manufacturer''],\r\n				''manufacturers'' => $this->url->link(''product/manufacturer/info'', ''manufacturer_id='' . $result[''manufacturer_id'']),\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path="catalog/controller/product/product.php">\r\n		<operation>\r\n			<search><![CDATA[$results = $this->model_catalog_product->getProductRelated($this->request->get[''product_id'']);]]></search>\r\n			<add position="before"><![CDATA[\r\n				/* Get new product */\r\n				$this->load->model(''catalog/product'');\r\n		\r\n				$data[''new_products''] = array();\r\n		\r\n				$filter_data = array(\r\n					''sort''  => ''p.date_added'',\r\n					''order'' => ''DESC'',\r\n					''start'' => 0,\r\n					''limit'' => 10\r\n				);\r\n		\r\n				$new_results = $this->model_catalog_product->getProducts($filter_data);\r\n				/* End */\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$data[''products''][] = array(]]></search>\r\n			<add position="before"><![CDATA[\r\n				$is_new = false;\r\n				if ($new_results) { \r\n					foreach($new_results as $new_r) {\r\n						if($result[''product_id''] == $new_r[''product_id'']) {\r\n							$is_new = true;\r\n						}\r\n					}\r\n				}\r\n				if (($this->config->get(''config_customer_price'') && $this->customer->isLogged()) || !$this->config->get(''config_customer_price'')) {\r\n					$price_num = $this->tax->calculate($result[''price''], $result[''tax_class_id''], $this->config->get(''config_tax''));\r\n				} else {\r\n					$price_num = false;\r\n				}\r\n\r\n				if ((float)$result[''special'']) {\r\n					$special_num = $this->tax->calculate($result[''special''], $result[''tax_class_id''], $this->config->get(''config_tax''));\r\n				} else {\r\n					$special_num = false;\r\n				}\r\n				/// Product Rotator /\r\n				$store_id = $this->config->get(''config_store_id'');\r\n\r\n				$product_rotator_status = (int) $this->config->get(''module_octhemeoption_rotator'')[$store_id];\r\n				if($product_rotator_status == 1) {\r\n				 $this->load->model(''catalog/ocproductrotator'');\r\n				 $this->load->model(''tool/image'');\r\n			 \r\n				 $product_id = $result[''product_id''];\r\n				 $product_rotator_image = $this->model_catalog_ocproductrotator->getProductRotatorImage($product_id);\r\n			 \r\n				 if($product_rotator_image) {\r\n				  $rotator_image = $this->model_tool_image->resize($product_rotator_image, $this->config->get(''theme_'' . $this->config->get(''config_theme'') . ''_image_product_width''), $this->config->get(''theme_'' . $this->config->get(''config_theme'') . ''_image_product_height'')); \r\n				 } else {\r\n				  $rotator_image = false;\r\n				 }\r\n				} else {\r\n				 $rotator_image = false;    \r\n				}\r\n				/// End Product Rotator /	\r\n				\r\n				$data[''use_quickview''] = (int) $this->config->get(''module_octhemeoption_quickview'')[$store_id];\r\n				\r\n				$c_words = 50;\r\n				$result[''name''] = strlen($result[''name'']) > $c_words ? substr($result[''name''],0,$c_words)."..." : $result[''name''];\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[''rating''      => $rating,]]></search>\r\n			<add position="after"><![CDATA[\r\n				''is_new''      => $is_new,\r\n				''rotator_image'' => $rotator_image,\r\n				''price_num''       => $price_num,\r\n				''special_num''     => $special_num,\r\n				''manufacturer'' => $result[''manufacturer''],\r\n				''manufacturers'' => $this->url->link(''product/manufacturer/info'', ''manufacturer_id='' . $result[''manufacturer_id'']),\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$data[''description''] = html_entity_decode($product_info[''description''], ENT_QUOTES, ''UTF-8'');]]></search>\r\n			<add position="after"><![CDATA[\r\n				$data[''short_description''] = utf8_substr(strip_tags(html_entity_decode($product_info[''description''], ENT_QUOTES, ''UTF-8'')), 0,400, $this->config->get($this->config->get(''config_theme'') . ''_product_description_length'')) . ''..'';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path="catalog/controller/product/special.php">		\r\n		<operation>\r\n			<search><![CDATA[$results = $this->model_catalog_product->getProductSpecials($filter_data);]]></search>\r\n			<add position="after"><![CDATA[\r\n				/* Get new product */\r\n				$this->load->model(''catalog/product'');\r\n		\r\n				$data[''new_products''] = array();\r\n		\r\n				$filter_data = array(\r\n					''sort''  => ''p.date_added'',\r\n					''order'' => ''DESC'',\r\n					''start'' => 0,\r\n					''limit'' => 10\r\n				);\r\n		\r\n				$new_results = $this->model_catalog_product->getProducts($filter_data);\r\n				/* End */\r\n			]]></add>\r\n		</operation>\r\n		\r\n		<operation>\r\n			<search><![CDATA[$data[''products''][] = array(]]></search>\r\n			<add position="before"><![CDATA[\r\n				$is_new = false;\r\n				if ($new_results) { \r\n					foreach($new_results as $new_r) {\r\n						if($result[''product_id''] == $new_r[''product_id'']) {\r\n							$is_new = true;\r\n						}\r\n					}\r\n				}\r\n				if (($this->config->get(''config_customer_price'') && $this->customer->isLogged()) || !$this->config->get(''config_customer_price'')) {\r\n					$price_num = $this->tax->calculate($result[''price''], $result[''tax_class_id''], $this->config->get(''config_tax''));\r\n				} else {\r\n					$price_num = false;\r\n				}\r\n\r\n				if ((float)$result[''special'']) {\r\n					$special_num = $this->tax->calculate($result[''special''], $result[''tax_class_id''], $this->config->get(''config_tax''));\r\n				} else {\r\n					$special_num = false;\r\n				}\r\n				/// Product Rotator /\r\n				$store_id = $this->config->get(''config_store_id'');\r\n				$product_rotator_status = (int) $this->config->get(''module_octhemeoption_rotator'')[$store_id];\r\n				\r\n				if($product_rotator_status == 1) {\r\n				 $this->load->model(''catalog/ocproductrotator'');\r\n				 $this->load->model(''tool/image'');\r\n			 \r\n				 $product_id = $result[''product_id''];\r\n				 $product_rotator_image = $this->model_catalog_ocproductrotator->getProductRotatorImage($product_id);\r\n			 \r\n					 if($product_rotator_image) {\r\n							$rotator_image = $this->model_tool_image->resize($product_rotator_image, $this->config->get(''theme_'' . $this->config->get(''config_theme'') . ''_image_product_width''), $this->config->get(''theme_'' . $this->config->get(''config_theme'') . ''_image_product_height'')); \r\n					} else {\r\n						$rotator_image = false;\r\n					}\r\n				} else {\r\n				 $rotator_image = false;    \r\n				}\r\n				/// End Product Rotator /\r\n				\r\n				$c_words = 50;\r\n				$result[''name''] = strlen($result[''name'']) > $c_words ? substr($result[''name''],0,$c_words)."..." : $result[''name''];\r\n			]]></add>\r\n		</operation>\r\n		\r\n		<operation>\r\n			<search><![CDATA[''rating''      => $result[''rating''],]]></search>\r\n			<add position="after"><![CDATA[\r\n				''is_new''      => $is_new,\r\n				''rotator_image'' => $rotator_image,\r\n				''price_num''       => $price_num,\r\n				''special_num''     => $special_num,\r\n				''manufacturer'' => $result[''manufacturer''],\r\n				''manufacturers'' => $this->url->link(''product/manufacturer/info'', ''manufacturer_id='' . $result[''manufacturer_id'']),\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path="catalog/controller/product/search.php">\r\n		<operation>\r\n			<search><![CDATA[$results = $this->model_catalog_product->getProducts($filter_data);]]></search>\r\n			<add position="after"><![CDATA[\r\n				/* Get new product */\r\n				$this->load->model(''catalog/product'');\r\n		\r\n				$data[''new_products''] = array();\r\n		\r\n				$filter_data = array(\r\n					''sort''  => ''p.date_added'',\r\n					''order'' => ''DESC'',\r\n					''start'' => 0,\r\n					''limit'' => 10\r\n				);\r\n		\r\n				$new_results = $this->model_catalog_product->getProducts($filter_data);\r\n				/* End */\r\n			]]></add>\r\n		</operation>\r\n		\r\n		<operation>\r\n			<search><![CDATA[$data[''products''][] = array(]]></search>\r\n			<add position="before"><![CDATA[\r\n				$is_new = false;\r\n				if ($new_results) { \r\n					foreach($new_results as $new_r) {\r\n						if($result[''product_id''] == $new_r[''product_id'']) {\r\n							$is_new = true;\r\n						}\r\n					}\r\n				}\r\n				if (($this->config->get(''config_customer_price'') && $this->customer->isLogged()) || !$this->config->get(''config_customer_price'')) {\r\n					$price_num = $this->tax->calculate($result[''price''], $result[''tax_class_id''], $this->config->get(''config_tax''));\r\n				} else {\r\n					$price_num = false;\r\n				}\r\n\r\n				if ((float)$result[''special'']) {\r\n					$special_num = $this->tax->calculate($result[''special''], $result[''tax_class_id''], $this->config->get(''config_tax''));\r\n				} else {\r\n					$special_num = false;\r\n				}\r\n				/// Product Rotator /\r\n				$store_id = $this->config->get(''config_store_id'');\r\n				$product_rotator_status = (int) $this->config->get(''module_octhemeoption_rotator'')[$store_id];\r\n				if($product_rotator_status == 1) {\r\n				 $this->load->model(''catalog/ocproductrotator'');\r\n				 $this->load->model(''tool/image'');\r\n			 \r\n				 $product_id = $result[''product_id''];\r\n				 $product_rotator_image = $this->model_catalog_ocproductrotator->getProductRotatorImage($product_id);\r\n			 \r\n				 if($product_rotator_image) {\r\n							$rotator_image = $this->model_tool_image->resize($product_rotator_image, $this->config->get(''theme_'' . $this->config->get(''config_theme'') . ''_image_product_width''), $this->config->get(''theme_'' . $this->config->get(''config_theme'') . ''_image_product_height'')); \r\n					} else {\r\n						$rotator_image = false;\r\n					} \r\n				} else {\r\n				 $rotator_image = false;    \r\n				}\r\n				/// End Product Rotator /\r\n				\r\n				$c_words = 50;\r\n				$result[''name''] = strlen($result[''name'']) > $c_words ? substr($result[''name''],0,$c_words)."..." : $result[''name''];\r\n			]]></add>\r\n		</operation>\r\n		\r\n		<operation>\r\n			<search><![CDATA[''rating''      => $result[''rating''],]]></search>\r\n			<add position="after"><![CDATA[\r\n				''is_new''      => $is_new,\r\n				''rotator_image'' => $rotator_image,\r\n				''price_num''       => $price_num,\r\n				''special_num''     => $special_num,\r\n				''manufacturer'' => $result[''manufacturer''],\r\n				''manufacturers'' => $this->url->link(''product/manufacturer/info'', ''manufacturer_id='' . $result[''manufacturer_id'']),\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path="catalog/controller/product/manufacturer.php">\r\n		<operation>\r\n			<search><![CDATA[$results = $this->model_catalog_product->getProducts($filter_data);]]></search>\r\n			<add position="after"><![CDATA[\r\n				/* Get new product */\r\n				$this->load->model(''catalog/product'');\r\n		\r\n				$data[''new_products''] = array();\r\n		\r\n				$filter_data = array(\r\n					''sort''  => ''p.date_added'',\r\n					''order'' => ''DESC'',\r\n					''start'' => 0,\r\n					''limit'' => 10\r\n				);\r\n		\r\n				$new_results = $this->model_catalog_product->getProducts($filter_data);\r\n				/* End */\r\n			]]></add>\r\n		</operation>\r\n		\r\n		<operation>\r\n			<search><![CDATA[$data[''products''][] = array(]]></search>\r\n			<add position="before"><![CDATA[\r\n				$is_new = false;\r\n				if ($new_results) { \r\n					foreach($new_results as $new_r) {\r\n						if($result[''product_id''] == $new_r[''product_id'']) {\r\n							$is_new = true;\r\n						}\r\n					}\r\n				}\r\n				if (($this->config->get(''config_customer_price'') && $this->customer->isLogged()) || !$this->config->get(''config_customer_price'')) {\r\n					$price_num = $this->tax->calculate($result[''price''], $result[''tax_class_id''], $this->config->get(''config_tax''));\r\n				} else {\r\n					$price_num = false;\r\n				}\r\n\r\n				if ((float)$result[''special'']) {\r\n					$special_num = $this->tax->calculate($result[''special''], $result[''tax_class_id''], $this->config->get(''config_tax''));\r\n				} else {\r\n					$special_num = false;\r\n				}\r\n				/// Product Rotator /\r\n				$store_id = $this->config->get(''config_store_id'');\r\n				$product_rotator_status = (int) $this->config->get(''module_octhemeoption_rotator'')[$store_id];\r\n				if($product_rotator_status == 1) {\r\n				 $this->load->model(''catalog/ocproductrotator'');\r\n				 $this->load->model(''tool/image'');\r\n			 \r\n				 $product_id = $result[''product_id''];\r\n				 $product_rotator_image = $this->model_catalog_ocproductrotator->getProductRotatorImage($product_id);\r\n			 \r\n				 if($product_rotator_image) {\r\n							$rotator_image = $this->model_tool_image->resize($product_rotator_image, $this->config->get(''theme_'' . $this->config->get(''config_theme'') . ''_image_product_width''), $this->config->get(''theme_'' . $this->config->get(''config_theme'') . ''_image_product_height'')); \r\n					} else {\r\n						$rotator_image = false;\r\n					}\r\n				} else {\r\n				 $rotator_image = false;    \r\n				}\r\n				/// End Product Rotator /\r\n				\r\n				$c_words = 50;\r\n				$result[''name''] = strlen($result[''name'']) > $c_words ? substr($result[''name''],0,$c_words)."..." : $result[''name''];\r\n			]]></add>\r\n		</operation>\r\n		\r\n		<operation>\r\n			<search><![CDATA[''rating''      => $result[''rating''],]]></search>\r\n			<add position="after"><![CDATA[\r\n				''is_new''      => $is_new,\r\n				''rotator_image'' => $rotator_image,\r\n				''price_num''       => $price_num,\r\n				''special_num''     => $special_num,\r\n				''manufacturer'' => $result[''manufacturer''],\r\n				''manufacturers'' => $this->url->link(''product/manufacturer/info'', ''manufacturer_id='' . $result[''manufacturer_id'']),\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2017-11-10 14:37:49');

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(47, 'Tabs Categories Home2', 'octabproducts', '{"name":"Tabs Categories Home2","class":"tabscategories1","status":"1","title_lang":{"en-gb":{"title":"Video Games"},"fr-gb":{"title":"Video Games"}},"module_description":{"1":{"description":""},"2":{"description":""}},"type":"0","slider":"1","items":"3","row":"2","loop":"1","margin":"0","auto":"0","time":"3000","speed":"1000","navigation":"1","pagination":"0","desktop":"3","tablet":"3","mobile":"2","smobile":"1","nrow":"1","description":"0","countdown":"0","rotator":"1","newlabel":"0","salelabel":"0","limit":"8","width":"600","height":"667","module_image":"catalog\\/category\\/bg3-category.jpg","octab":[{"tab_name":{"en-gb":{"title":"Video Games"},"fr-gb":{"title":"Video Games"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"0","cate_name":"Video Games","cate_id":"90","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"}]}'),
(95, 'Tabs Categories1 Home2', 'octabproducts', '{"name":"Tabs Categories1 Home2","class":"tabscategories2","status":"1","title_lang":{"en-gb":{"title":"Cell Phone"},"fr-gb":{"title":"Cell Phone"}},"module_description":{"1":{"description":""},"2":{"description":""}},"type":"0","slider":"1","items":"3","row":"2","loop":"1","margin":"0","auto":"0","time":"3000","speed":"1000","navigation":"1","pagination":"0","desktop":"3","tablet":"3","mobile":"2","smobile":"1","nrow":"1","description":"0","countdown":"0","rotator":"0","newlabel":"1","salelabel":"1","limit":"8","width":"600","height":"667","module_image":"catalog\\/category\\/bg4-category.jpg","octab":[{"tab_name":{"en-gb":{"title":"Cell Phone"},"fr-gb":{"title":"Cell Phone"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"0","cate_name":"Cell Phone","cate_id":"96","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"}]}'),
(70, 'Brand Slider2', 'carousel', '{"name":"Brand Slider2","banner_id":"10","width":"170","height":"110","status":"1"}'),
(32, 'Layout Homepage 01', 'oc_page_builder', '{"name":"Layout Homepage 01","status":"1","widget":[{"class":"full-width","main_cols":[{"format":"12","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"ocajaxlogin","name":"OC Ajax Login","url":"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/ocajaxlogin&amp;user_token=pV5WsoAx9b4nS2pf5IH5tYgum8ZxSYyM"}]},"format":"12"}]}]}]},{"class":"","main_cols":[{"format":"3","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"newslettersubscribe.39","name":"OC Newsletter &gt; Newsletter Popup","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/newslettersubscribe&amp;user_token=Ug9n11N44PYYYgHma1rt7JVFN3zAmNAJ&amp;module_id=39"}]},"format":"12"}]}]},{"format":"6","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"ocslideshow.41","name":"OC Slide show &gt; Home slideshow 1","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/ocslideshow&amp;user_token=Ug9n11N44PYYYgHma1rt7JVFN3zAmNAJ&amp;module_id=41"}]},"format":"12"}]}]},{"format":"3","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"occmsblock.87","name":"OC CMS Block &gt; Banner Static1 Home1","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=Ug9n11N44PYYYgHma1rt7JVFN3zAmNAJ&amp;module_id=87"}]},"format":"12"}]}]}]},{"class":"","main_cols":[{"format":"12","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"ocproduct.44","name":"OC Products &gt; New Products Home1","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/ocproduct&amp;user_token=xHUClh5oGx6dDRrMt0FSUY1SZ5R0b9lo&amp;module_id=44"},{"code":"occmsblock.88","name":"OC CMS Block &gt; Banner Center Home1","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=LSNYfLuvLJvw1shJgs6zvoQOLfGULTwE&amp;module_id=88"},{"code":"octabproducts.45","name":"OC Tab Products &gt; Tabs Categories Home1","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=Nly6opSskgM5p8dObKorMH9tpF50whWN&amp;module_id=45"},{"code":"octabproducts.74","name":"OC Tab Products &gt; Tabs Categories1 Home1","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=Nly6opSskgM5p8dObKorMH9tpF50whWN&amp;module_id=74"},{"code":"octabproducts.81","name":"OC Tab Products &gt; Tabs Categories2 Home1","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=Nly6opSskgM5p8dObKorMH9tpF50whWN&amp;module_id=81"},{"code":"occmsblock.91","name":"OC CMS Block &gt; Banner Center1 Home1","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=tWwRc9YMV1x6Okv03b19Inx5sgYY47Jv&amp;module_id=91"},{"code":"octabproducts.108","name":"OC Tab Products &gt; Tabs Categories3 Home1","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=oT7Cvdq1k2egNgPSNk6O4NFjYtRxVrVE&amp;module_id=108"}]},"format":"12"}]}]}]}]}'),
(87, 'Banner Static1 Home1', 'occmsblock', '{"name":"Banner Static1 Home1","cmsblock_id":"45","status":"1"}'),
(89, 'Banner Bottom', 'occmsblock', '{"name":"Banner Bottom","cmsblock_id":"47","status":"1"}'),
(35, 'Logo Footer', 'occmsblock', '{"name":"Logo Footer","cmsblock_id":"22","status":"1"}'),
(36, 'Social Footer', 'occmsblock', '{"name":"Social Footer","cmsblock_id":"48","status":"1"}'),
(37, 'Footer Link', 'occmsblock', '{"name":"Footer Link","cmsblock_id":"49","status":"1"}'),
(39, 'Newsletter Popup', 'newslettersubscribe', '{"name":"Newsletter Popup","popup":"1","status":"1","newslettersubscribe_unsubscribe":"1","newslettersubscribe_mail_status":"1","newslettersubscribe_thickbox":"1","newslettersubscribe_registered":"1","store_id":"0","to":"sendall","customer_group_id":"1","customers":"","affiliates":"","products":"","subject":"","message":""}'),
(40, 'Newsletter', 'newslettersubscribe', '{"name":"Newsletter","popup":"0","status":"1","newslettersubscribe_unsubscribe":"1","newslettersubscribe_mail_status":"1","newslettersubscribe_thickbox":"1","newslettersubscribe_registered":"1","store_id":"0","to":"sendall","customer_group_id":"1","customers":"","affiliates":"","products":"","subject":"","message":""}'),
(41, 'Home slideshow 1', 'ocslideshow', '{"name":"Home slideshow 1","status":"1","banner":"18","width":"610","height":"536"}'),
(42, 'From The Blog', 'ocblog', '{"name":"From The Blog","status":"1","list":"1","width":"370","height":"235","auto":"0","items":"2","speed":"1000","rows":"1","navigation":"0","pagination":"1"}'),
(43, 'Horizontal Mega Menu', 'ochozmegamenu', '{"name":"Horizontal Mega Menu","status":"1","hhome":"1","sticky":"1","hdepth":" 4     ","hlevel":" 4    ","hactive":"LINK41,LINK35,LINK43,LINK42","mobile":"0"}'),
(44, 'New Products Home1', 'ocproduct', '{"name":"New Products Home1","class":"newproducts","status":"1","option":"0","product":["28","29","30","31","32","33","34","35","36","40"],"cate_name":"","cate_id":"","productfrom":"2","productcate":"","input_specific_product":"0","autoproduct":"0","title_lang":{"en-gb":{"title":"New Products"},"fr-gb":{"title":"New Products"}},"module_description":{"1":{"description":"&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;"},"2":{"description":"&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;"}},"type":"0","slider":"1","items":"3","auto":"0","time":"3000","speed":"1000","row":"2","loop":"0","margin":"30","navigation":"1","pagination":"0","desktop":"3","tablet":"2","mobile":"1","smobile":"1","nrow":"1","description":"0","countdown":"0","rotator":"1","newlabel":"0","salelabel":"0","limit":"10","width":"600","height":"667"}'),
(88, 'Banner Center Home1', 'occmsblock', '{"name":"Banner Center Home1","cmsblock_id":"46","status":"1"}'),
(45, 'Tabs Categories Home1', 'octabproducts', '{"name":"Tabs Categories Home1","class":"tabscategories1","status":"1","title_lang":{"en-gb":{"title":"Video games"},"fr-gb":{"title":"Video games"}},"module_description":{"1":{"description":"Including these items, the latest models, updated daily."},"2":{"description":"Including these items, the latest models, updated daily."}},"type":"2","slider":"1","items":"2","row":"2","loop":"1","margin":"0","auto":"0","time":"3000","speed":"1000","navigation":"1","pagination":"0","desktop":"2","tablet":"2","mobile":"2","smobile":"1","nrow":"1","description":"1","countdown":"0","rotator":"1","newlabel":"1","salelabel":"1","limit":"10","width":"600","height":"667","module_image":"catalog\\/category\\/bg-catrgory.jpg","octab":[{"tab_name":{"en-gb":{"title":"Loveseats"},"fr-gb":{"title":"Loveseats"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"0","cate_name":"Living Room\\u00a0\\u00a0&gt;\\u00a0\\u00a0Loveseats","cate_id":"59","productfrom":"0","productcate":["28","29","30","31","32","33","35","36","41"],"input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Sectionals"},"fr-gb":{"title":"Sectionals"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"0","cate_name":"Living Room\\u00a0\\u00a0&gt;\\u00a0\\u00a0Sectionals","cate_id":"60","productfrom":"0","productcate":["40","36","35","34","33","32","31","30","29","41"],"input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Sofas"},"fr-gb":{"title":"Sofas"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"0","cate_name":"Living Room\\u00a0\\u00a0&gt;\\u00a0\\u00a0Sofas","cate_id":"61","productfrom":"0","productcate":["29","30","31","32","33","34","35","36","40","41"],"input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Chairs &amp; Chaises"},"fr-gb":{"title":"Chairs &amp; Chaises"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"0","cate_name":"Living Room\\u00a0\\u00a0&gt;\\u00a0\\u00a0Chairs &amp; Chaises","cate_id":"17","productfrom":"0","productcate":["36","35","34","33","32","31","30","29","28"],"input_specific_product":"0","autoproduct":"0"}]}'),
(51, 'Brand Slider', 'carousel', '{"name":"Brand Slider","banner_id":"9","width":"170","height":"110","status":"1"}'),
(52, 'Featured Products', 'featured', '{"name":"Featured Products","product_name":"","product":["28","29","30","31","32"],"limit":"5","width":"100","height":"100","status":"1"}'),
(53, 'Home slideshow 2', 'ocslideshow', '{"name":"Home slideshow 2","status":"1","banner":"19","width":"610","height":"536"}'),
(54, 'Layout Homepage 02', 'oc_page_builder', '{"name":"Layout Homepage 02","status":"1","widget":[{"class":"full-width","main_cols":[{"format":"12","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"newslettersubscribe.39","name":"OC Newsletter &gt; Newsletter Popup","url":"http:\\/\\/tt_outline1.com\\/admin\\/index.php?route=extension\\/module\\/newslettersubscribe&amp;user_token=CcbFsbJJXlTExdFyZinRmOQ5uHWyIEDB&amp;module_id=39"}]},"format":"12"}]}]}]},{"class":"","main_cols":[{"format":"3","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"ocvermegamenu.85","name":"OC Vertical Megamenu &gt; Vertical Menu","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/ocvermegamenu&amp;user_token=etZ4KSNRo8F9LO7stT6NMdezDtvoxdO9&amp;module_id=85"}]},"format":"12"}]}]},{"format":"6","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"ocslideshow.53","name":"OC Slide show &gt; Home slideshow 2","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/ocslideshow&amp;user_token=etZ4KSNRo8F9LO7stT6NMdezDtvoxdO9&amp;module_id=53"}]},"format":"12"}]}]},{"format":"3","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"occmsblock.93","name":"OC CMS Block &gt; Banner Static1 Home2","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=etZ4KSNRo8F9LO7stT6NMdezDtvoxdO9&amp;module_id=93"}]},"format":"12"}]}]}]},{"class":"","main_cols":[{"format":"12","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"occmsblock.94","name":"OC CMS Block &gt; Banner Static2 Home2","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=etZ4KSNRo8F9LO7stT6NMdezDtvoxdO9&amp;module_id=94"},{"code":"octabproducts.47","name":"OC Tab Products &gt; Tabs Categories Home2","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=ZyUVkbv30zWbL2zPPTfVIgKpzducmpwA&amp;module_id=47"},{"code":"octabproducts.95","name":"OC Tab Products &gt; Tabs Categories1 Home2","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=KNcQrPhgt0a6CdKJPE81N05y0whcmLgB&amp;module_id=95"},{"code":"octabproducts.96","name":"OC Tab Products &gt; Tabs Categories2 Home2","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=KNcQrPhgt0a6CdKJPE81N05y0whcmLgB&amp;module_id=96"},{"code":"occmsblock.97","name":"OC CMS Block &gt; Banner Center Home2","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=HAvh1PTtzhm9EpdJgRYMP7k3mnCSTYt7&amp;module_id=97"},{"code":"octabproducts.109","name":"OC Tab Products &gt; Tabs Categories3 Home2","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=Nly6opSskgM5p8dObKorMH9tpF50whWN&amp;module_id=109"}]},"format":"12"}]}]}]},{"class":"home-modul full-width","main_cols":[{"format":"12","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"ocfeaturedcategory.99","name":"OC Featured Category &gt; Featured Category Home2","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/ocfeaturedcategory&amp;user_token=Nly6opSskgM5p8dObKorMH9tpF50whWN&amp;module_id=99"}]},"format":"12"}]}]}]}]}'),
(93, 'Banner Static1 Home2', 'occmsblock', '{"name":"Banner Static1 Home2","cmsblock_id":"52","status":"1"}'),
(94, 'Banner Static2 Home2', 'occmsblock', '{"name":"Banner Static2 Home2","cmsblock_id":"53","status":"1"}'),
(58, 'New Products Home3', 'ocproduct', '{"name":"New Products Home3","class":"newproducts","status":"1","option":"2","product":["28","29","30","31","32","33","34","35","36","40","41"],"cate_name":"","cate_id":"","productfrom":"0","productcate":"","input_specific_product":"0","autoproduct":"0","title_lang":{"en-gb":{"title":"New Products"},"fr-gb":{"title":"New Products"}},"module_description":{"1":{"description":"The most prominent product in the store, which was bought with the highest number"},"2":{"description":"The most prominent product in the store, which was bought with the highest number"}},"type":"0","slider":"1","items":"2","auto":"0","time":"3000","speed":"1000","row":"2","loop":"1","margin":"0","navigation":"1","pagination":"0","desktop":"2","tablet":"2","mobile":"1","smobile":"1","nrow":"1","description":"0","countdown":"0","rotator":"1","newlabel":"0","salelabel":"0","limit":"10","width":"600","height":"667"}'),
(59, 'Home slideshow 3', 'ocslideshow', '{"name":"Home slideshow 3","status":"1","banner":"20","width":"890","height":"536"}'),
(60, 'Layout Homepage 03', 'oc_page_builder', '{"name":"Layout Homepage 03","status":"1","widget":[{"class":"banner-home","main_cols":[{"format":"3","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"newslettersubscribe.39","name":"OC Newsletter &gt; Newsletter Popup","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/newslettersubscribe&amp;user_token=HAvh1PTtzhm9EpdJgRYMP7k3mnCSTYt7&amp;module_id=39"}]},"format":"12"}]}]},{"format":"9","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"ocslideshow.59","name":"OC Slide show &gt; Home slideshow 3","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/ocslideshow&amp;user_token=HAvh1PTtzhm9EpdJgRYMP7k3mnCSTYt7&amp;module_id=59"}]},"format":"12"}]}]}]},{"class":"","main_cols":[{"format":"12","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"occmsblock.100","name":"OC CMS Block &gt; Banner Static Home3","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=HAvh1PTtzhm9EpdJgRYMP7k3mnCSTYt7&amp;module_id=100"}]},"format":"12"}]}]}]},{"class":"home-moduls","main_cols":[{"format":"3","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"occmsblock.101","name":"OC CMS Block &gt; Banner Static1 Home3","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=HAvh1PTtzhm9EpdJgRYMP7k3mnCSTYt7&amp;module_id=101"},{"code":"featured.52","name":"Featured &gt; Featured Products","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/featured&amp;user_token=HAvh1PTtzhm9EpdJgRYMP7k3mnCSTYt7&amp;module_id=52"},{"code":"occmsblock.92","name":"OC CMS Block &gt; Banner Left","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=SNWLC9YVS1UKZYnhhvN3Ia6m9QAZLhW2&amp;module_id=92"}]},"format":"12"}]}]},{"format":"9","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"ocproduct.58","name":"OC Products &gt; New Products Home3","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/ocproduct&amp;user_token=SNWLC9YVS1UKZYnhhvN3Ia6m9QAZLhW2&amp;module_id=58"},{"code":"occmsblock.102","name":"OC CMS Block &gt; Banner Center Home3","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=SNWLC9YVS1UKZYnhhvN3Ia6m9QAZLhW2&amp;module_id=102"},{"code":"octabproducts.103","name":"OC Tab Products &gt; Tabs Categories Home3","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=SNWLC9YVS1UKZYnhhvN3Ia6m9QAZLhW2&amp;module_id=103"},{"code":"octabproducts.104","name":"OC Tab Products &gt; Tabs Categories1 Home3","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=SNWLC9YVS1UKZYnhhvN3Ia6m9QAZLhW2&amp;module_id=104"}]},"format":"12"}]}]}]}]}'),
(100, 'Banner Static Home3', 'occmsblock', '{"name":"Banner Static Home3","cmsblock_id":"55","status":"1"}'),
(101, 'Banner Static1 Home3', 'occmsblock', '{"name":"Banner Static1 Home3","cmsblock_id":"56","status":"1"}'),
(91, 'Banner Center1 Home1', 'occmsblock', '{"name":"Banner Center1 Home1","cmsblock_id":"50","status":"1"}'),
(86, 'Banner Top', 'occmsblock', '{"name":"Banner Top","cmsblock_id":"44","status":"1"}'),
(85, 'Vertical Menu', 'ocvermegamenu', '{"name":"Vertical Menu","status":"1","hhome":"0","hdepth":"4","hlevel":"4","hitem_limit":"10","h_active_cate":"CAT90,CAT96,CAT101,CAT106,CAT112,CAT118,CAT119,CAT125,CAT131,CAT137,CAT138"}'),
(68, 'Layout Homepage 04', 'oc_page_builder', '{"name":"Layout Homepage 04","status":"1","widget":[{"class":"","main_cols":[{"format":"3","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"newslettersubscribe.39","name":"OC Newsletter &gt; Newsletter Popup","url":"http:\\/\\/tt_outline1.com\\/admin\\/index.php?route=extension\\/module\\/newslettersubscribe&amp;user_token=inZLOnySZbqnXyGXEUO2uy1Z0q81DAMq&amp;module_id=39"}]},"format":"12"}]}]},{"format":"6","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"ocslideshow.69","name":"OC Slide show &gt; Home slideshow 4","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/ocslideshow&amp;user_token=oT7Cvdq1k2egNgPSNk6O4NFjYtRxVrVE&amp;module_id=69"}]},"format":"12"}]}]},{"format":"3","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"occmsblock.106","name":"OC CMS Block &gt; Banner Static Home4","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=oT7Cvdq1k2egNgPSNk6O4NFjYtRxVrVE&amp;module_id=106"}]},"format":"12"}]}]}]},{"class":"","main_cols":[{"format":"12","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"ocproduct.107","name":"OC Products &gt; New Products Home4","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/ocproduct&amp;user_token=oT7Cvdq1k2egNgPSNk6O4NFjYtRxVrVE&amp;module_id=107"},{"code":"occmsblock.110","name":"OC CMS Block &gt; Banner Center Home4","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=tjfqedEFl5X7wlEnMOkl8ooeaImkNymF&amp;module_id=110"},{"code":"octabproducts.111","name":"OC Tab Products &gt; Tabs Categories Home4","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=tjfqedEFl5X7wlEnMOkl8ooeaImkNymF&amp;module_id=111"},{"code":"octabproducts.112","name":"OC Tab Products &gt; Tabs Categories1 Home4","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=tjfqedEFl5X7wlEnMOkl8ooeaImkNymF&amp;module_id=112"},{"code":"octabproducts.113","name":"OC Tab Products &gt; Tabs Categories2 Home4","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=tjfqedEFl5X7wlEnMOkl8ooeaImkNymF&amp;module_id=113"},{"code":"occmsblock.114","name":"OC CMS Block &gt; Banner Center1 Home4","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=tjfqedEFl5X7wlEnMOkl8ooeaImkNymF&amp;module_id=114"},{"code":"octabproducts.116","name":"OC Tab Products &gt; Tabs Categories3 Home4","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=tjfqedEFl5X7wlEnMOkl8ooeaImkNymF&amp;module_id=116"}]},"format":"12"}]}]}]}]}'),
(105, 'Vertical Menu2', 'ocvermegamenu', '{"name":"Vertical Menu2","status":"1","hhome":"0","hdepth":"4","hlevel":"4","hitem_limit":"9","h_active_cate":"CAT144,CAT149,CAT154,CAT159,CAT165,CAT171,CAT172,CAT179,CAT185,CAT191"}'),
(69, 'Home slideshow 4', 'ocslideshow', '{"name":"Home slideshow 4","status":"1","banner":"21","width":"610","height":"536"}'),
(71, 'Home slideshow 5', 'ocslideshow', '{"name":"Home slideshow 5","status":"1","banner":"23","width":"610","height":"536"}'),
(72, 'Layout Homepage 05', 'oc_page_builder', '{"name":"Layout Homepage 05","status":"1","widget":[{"class":"full-width","main_cols":[{"format":"12","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"newslettersubscribe.39","name":"OC Newsletter &gt; Newsletter Popup","url":"http:\\/\\/tt_outline1.com\\/admin\\/index.php?route=extension\\/module\\/newslettersubscribe&amp;user_token=zkwWDYFLs3ylViUDiqrx3OIQzAIFfVet&amp;module_id=39"}]},"format":"12"}]}]}]},{"class":"","main_cols":[{"format":"3","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"ocvermegamenu.105","name":"OC Vertical Megamenu &gt; Vertical Menu2","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/ocvermegamenu&amp;user_token=tjfqedEFl5X7wlEnMOkl8ooeaImkNymF&amp;module_id=105"}]},"format":"12"}]}]},{"format":"6","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"ocslideshow.71","name":"OC Slide show &gt; Home slideshow 5","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/ocslideshow&amp;user_token=tjfqedEFl5X7wlEnMOkl8ooeaImkNymF&amp;module_id=71"}]},"format":"12"}]}]},{"format":"3","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"occmsblock.117","name":"OC CMS Block &gt; Banner Static Home5","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=VqKTzFXwBH5R945PVSevLfckLmOVH4K8&amp;module_id=117"}]},"format":"12"}]}]}]},{"class":"","main_cols":[{"format":"12","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"occmsblock.118","name":"OC CMS Block &gt; Banner Static1 Home5","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=VqKTzFXwBH5R945PVSevLfckLmOVH4K8&amp;module_id=118"},{"code":"octabproducts.119","name":"OC Tab Products &gt; Tabs Categories Home5","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=VqKTzFXwBH5R945PVSevLfckLmOVH4K8&amp;module_id=119"},{"code":"octabproducts.120","name":"OC Tab Products &gt; Tabs Categories1 Home5","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=VqKTzFXwBH5R945PVSevLfckLmOVH4K8&amp;module_id=120"},{"code":"octabproducts.121","name":"OC Tab Products &gt; Tabs Categories2 Home5","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=VqKTzFXwBH5R945PVSevLfckLmOVH4K8&amp;module_id=121"},{"code":"occmsblock.122","name":"OC CMS Block &gt; Banner Center Home5","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=VqKTzFXwBH5R945PVSevLfckLmOVH4K8&amp;module_id=122"},{"code":"octabproducts.123","name":"OC Tab Products &gt; Tabs Categories3 Home5","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=VqKTzFXwBH5R945PVSevLfckLmOVH4K8&amp;module_id=123"}]},"format":"12"}]}]}]},{"class":"full-width","main_cols":[{"format":"12","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"ocfeaturedcategory.124","name":"OC Featured Category &gt; Featured Category Home5","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/ocfeaturedcategory&amp;user_token=VqKTzFXwBH5R945PVSevLfckLmOVH4K8&amp;module_id=124"}]},"format":"12"}]}]}]}]}'),
(117, 'Banner Static Home5', 'occmsblock', '{"name":"Banner Static Home5","cmsblock_id":"61","status":"1"}'),
(118, 'Banner Static1 Home5', 'occmsblock', '{"name":"Banner Static1 Home5","cmsblock_id":"62","status":"1"}'),
(119, 'Tabs Categories Home5', 'octabproducts', '{"name":"Tabs Categories Home5","class":"tabscategories1","status":"1","title_lang":{"en-gb":{"title":"Living Room"},"fr-gb":{"title":"Living Room"}},"module_description":{"1":{"description":""},"2":{"description":""}},"type":"0","slider":"1","items":"3","row":"2","loop":"1","margin":"0","auto":"0","time":"3000","speed":"1000","navigation":"1","pagination":"0","desktop":"3","tablet":"2","mobile":"1","smobile":"1","nrow":"1","description":"0","countdown":"0","rotator":"1","newlabel":"0","salelabel":"0","limit":"10","width":"600","height":"667","module_image":"catalog\\/category\\/bg12-category.jpg","octab":[{"tab_name":{"en-gb":{"title":"Chairs &amp; Chaises"},"fr-gb":{"title":"Chairs &amp; Chaises"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Living Room\\u00a0\\u00a0&gt;\\u00a0\\u00a0Chairs &amp; Chaises","cate_id":"145","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Loveseats"},"fr-gb":{"title":"Loveseats"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Living Room\\u00a0\\u00a0&gt;\\u00a0\\u00a0Loveseats","cate_id":"146","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Sectionals"},"fr-gb":{"title":"Sectionals"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Living Room\\u00a0\\u00a0&gt;\\u00a0\\u00a0Sectionals","cate_id":"147","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Sofas"},"fr-gb":{"title":"Sofas"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Living Room\\u00a0\\u00a0&gt;\\u00a0\\u00a0Sofas","cate_id":"148","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"}]}'),
(74, 'Tabs Categories1 Home1', 'octabproducts', '{"name":"Tabs Categories1 Home1","class":"tabscategories2","status":"1","title_lang":{"en-gb":{"title":"Cell Phone"},"fr-gb":{"title":"Cell Phone"}},"module_description":{"1":{"description":"Including these items, the latest models, updated daily."},"2":{"description":"Including these items, the latest models, updated daily."}},"type":"2","slider":"1","items":"2","row":"2","loop":"1","margin":"0","auto":"0","time":"3000","speed":"1000","navigation":"1","pagination":"0","desktop":"2","tablet":"2","mobile":"2","smobile":"1","nrow":"1","description":"1","countdown":"0","rotator":"1","newlabel":"1","salelabel":"1","limit":"9","width":"600","height":"667","module_image":"catalog\\/category\\/bg1-category.jpg","octab":[{"tab_name":{"en-gb":{"title":"Apple"},"fr-gb":{"title":"Apple"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"0","cate_name":"Cell Phone\\u00a0\\u00a0&gt;\\u00a0\\u00a0Apple","cate_id":"97","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Blackberry"},"fr-gb":{"title":"Blackberry"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"0","cate_name":"Cell Phone\\u00a0\\u00a0&gt;\\u00a0\\u00a0Blackberry","cate_id":"98","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Nokia"},"fr-gb":{"title":"Nokia"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"0","cate_name":"Cell Phone\\u00a0\\u00a0&gt;\\u00a0\\u00a0Nokia","cate_id":"99","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Samsung"},"fr-gb":{"title":"Samsung"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"0","cate_name":"Cell Phone\\u00a0\\u00a0&gt;\\u00a0\\u00a0Samsung","cate_id":"100","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"}]}'),
(76, 'From The Blog2', 'ocblog', '{"name":"From The Blog2","status":"1","list":"1","width":"370","height":"235","auto":"0","items":"1","speed":"1000","rows":"2","navigation":"0","pagination":"0"}'),
(78, 'Layout Homepage 06', 'oc_page_builder', '{"name":"Layout Homepage 06","status":"1","widget":[{"class":"","main_cols":[{"format":"3","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"newslettersubscribe.39","name":"OC Newsletter &gt; Newsletter Popup","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/newslettersubscribe&amp;user_token=VqKTzFXwBH5R945PVSevLfckLmOVH4K8&amp;module_id=39"}]},"format":"12"}]}]},{"format":"9","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"ocslideshow.79","name":"OC Slide show &gt; Home slideshow 6","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/ocslideshow&amp;user_token=VqKTzFXwBH5R945PVSevLfckLmOVH4K8&amp;module_id=79"}]},"format":"12"}]}]}]},{"class":"","main_cols":[{"format":"12","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"occmsblock.127","name":"OC CMS Block &gt; Banner Static Home6","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=VqKTzFXwBH5R945PVSevLfckLmOVH4K8&amp;module_id=127"}]},"format":"12"}]}]}]},{"class":"home-moduls","main_cols":[{"format":"3","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"occmsblock.128","name":"OC CMS Block &gt; Banner Static1 Home6","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=VqKTzFXwBH5R945PVSevLfckLmOVH4K8&amp;module_id=128"},{"code":"featured.125","name":"Featured &gt; Featured Products2","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/featured&amp;user_token=VqKTzFXwBH5R945PVSevLfckLmOVH4K8&amp;module_id=125"},{"code":"occmsblock.126","name":"OC CMS Block &gt; Banner Left2","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=VqKTzFXwBH5R945PVSevLfckLmOVH4K8&amp;module_id=126"}]},"format":"12"}]}]},{"format":"9","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"ocproduct.129","name":"OC Products &gt; New Products Home6","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/ocproduct&amp;user_token=VqKTzFXwBH5R945PVSevLfckLmOVH4K8&amp;module_id=129"},{"code":"occmsblock.130","name":"OC CMS Block &gt; Banner Center Home6","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=VqKTzFXwBH5R945PVSevLfckLmOVH4K8&amp;module_id=130"},{"code":"octabproducts.131","name":"OC Tab Products &gt; Tabs Categories Home6","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=VqKTzFXwBH5R945PVSevLfckLmOVH4K8&amp;module_id=131"},{"code":"octabproducts.132","name":"OC Tab Products &gt; Tabs Categories1 Home6","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=VqKTzFXwBH5R945PVSevLfckLmOVH4K8&amp;module_id=132"}]},"format":"12"}]}]}]}]}'),
(127, 'Banner Static Home6', 'occmsblock', '{"name":"Banner Static Home6","cmsblock_id":"65","status":"1"}'),
(128, 'Banner Static1 Home6', 'occmsblock', '{"name":"Banner Static1 Home6","cmsblock_id":"66","status":"1"}'),
(79, 'Home slideshow 6', 'ocslideshow', '{"name":"Home slideshow 6","status":"1","banner":"24","width":"890","height":"536"}'),
(81, 'Tabs Categories2 Home1', 'octabproducts', '{"name":"Tabs Categories2 Home1","class":"tabscategories3","status":"1","title_lang":{"en-gb":{"title":"Headphones"},"fr-gb":{"title":"Headphones"}},"module_description":{"1":{"description":"Including these items, the latest models, updated daily."},"2":{"description":"Including these items, the latest models, updated daily."}},"type":"2","slider":"1","items":"2","row":"2","loop":"1","margin":"0","auto":"0","time":"3000","speed":"1000","navigation":"1","pagination":"0","desktop":"2","tablet":"2","mobile":"2","smobile":"1","nrow":"1","description":"1","countdown":"0","rotator":"1","newlabel":"1","salelabel":"1","limit":"8","width":"600","height":"667","module_image":"catalog\\/category\\/bg2-category.jpg","octab":[{"tab_name":{"en-gb":{"title":"Bluetooth"},"fr-gb":{"title":"Bluetooth"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"0","cate_name":"Headphones\\u00a0\\u00a0&gt;\\u00a0\\u00a0Bluetooth","cate_id":"102","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"On-Ear"},"fr-gb":{"title":"On-Ear"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"0","cate_name":"Headphones\\u00a0\\u00a0&gt;\\u00a0\\u00a0On-Ear","cate_id":"104","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Sports"},"fr-gb":{"title":"Sports"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"0","cate_name":"Headphones\\u00a0\\u00a0&gt;\\u00a0\\u00a0Sports","cate_id":"105","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"}]}'),
(138, 'New Products Home7', 'ocproduct', '{"name":"New Products Home7","class":"newproducts","status":"1","option":"2","product":"","cate_name":"","cate_id":"","productfrom":"0","productcate":"","input_specific_product":"0","autoproduct":"0","title_lang":{"en-gb":{"title":"New Products"},"fr-gb":{"title":"New Products"}},"module_description":{"1":{"description":""},"2":{"description":""}},"type":"0","slider":"1","items":"3","auto":"0","time":"3000","speed":"1000","row":"2","loop":"1","margin":"0","navigation":"1","pagination":"0","desktop":"3","tablet":"2","mobile":"1","smobile":"1","nrow":"1","description":"0","countdown":"0","rotator":"1","newlabel":"0","salelabel":"0","limit":"8","width":"600","height":"667"}'),
(140, 'Tabs Categories Home7', 'octabproducts', '{"name":"Tabs Categories Home7","class":"tabscategories1","status":"1","title_lang":{"en-gb":{"title":"Technology"},"fr-gb":{"title":"Technology"}},"module_description":{"1":{"description":""},"2":{"description":""}},"type":"2","slider":"1","items":"2","row":"2","loop":"1","margin":"0","auto":"0","time":"3000","speed":"1000","navigation":"1","pagination":"0","desktop":"2","tablet":"2","mobile":"1","smobile":"1","nrow":"1","description":"1","countdown":"0","rotator":"1","newlabel":"0","salelabel":"0","limit":"7","width":"600","height":"667","module_image":"catalog\\/category\\/bg17-category.jpg","octab":[{"tab_name":{"en-gb":{"title":"Graphics &amp; Design"},"fr-gb":{"title":"Graphics &amp; Design"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Technology\\u00a0\\u00a0&gt;\\u00a0\\u00a0Graphics &amp; Design","cate_id":"195","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Hardware"},"fr-gb":{"title":"Hardware"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Technology\\u00a0\\u00a0&gt;\\u00a0\\u00a0Hardware","cate_id":"196","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Programming"},"fr-gb":{"title":"Programming"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Technology\\u00a0\\u00a0&gt;\\u00a0\\u00a0Programming","cate_id":"197","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Software"},"fr-gb":{"title":"Software"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Technology\\u00a0\\u00a0&gt;\\u00a0\\u00a0Software","cate_id":"198","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"}]}'),
(139, 'Banner Center Home7', 'occmsblock', '{"name":"Banner Center Home7","cmsblock_id":"69","status":"1"}'),
(92, 'Banner Left', 'occmsblock', '{"name":"Banner Left","cmsblock_id":"51","status":"1"}'),
(96, 'Tabs Categories2 Home2', 'octabproducts', '{"name":"Tabs Categories2 Home2","class":"tabscategories3","status":"1","title_lang":{"en-gb":{"title":"Headphones"},"fr-gb":{"title":"Headphones"}},"module_description":{"1":{"description":""},"2":{"description":""}},"type":"0","slider":"1","items":"3","row":"2","loop":"1","margin":"0","auto":"0","time":"3000","speed":"1000","navigation":"1","pagination":"0","desktop":"3","tablet":"3","mobile":"2","smobile":"1","nrow":"1","description":"0","countdown":"0","rotator":"1","newlabel":"0","salelabel":"0","limit":"8","width":"600","height":"667","module_image":"catalog\\/category\\/bg5-category.jpg","octab":[{"tab_name":{"en-gb":{"title":"Headphones"},"fr-gb":{"title":"Headphones"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"0","cate_name":"Headphones","cate_id":"101","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"}]}'),
(97, 'Banner Center Home2', 'occmsblock', '{"name":"Banner Center Home2","cmsblock_id":"54","status":"1"}'),
(99, 'Featured Category Home2', 'ocfeaturedcategory', '{"name":"Featured Category Home2","status":"1","slider":"1","width":"268","height":"268","limit":"8","item":"4","speed":"1000","autoplay":"0","rows":"2","shownextback":"0","shownav":"0","showdes":"0","showsub":"1","showsubnumber":"5"}'),
(102, 'Banner Center Home3', 'occmsblock', '{"name":"Banner Center Home3","cmsblock_id":"57","status":"1"}'),
(103, 'Tabs Categories Home3', 'octabproducts', '{"name":"Tabs Categories Home3","class":"tabscategories1","status":"1","title_lang":{"en-gb":{"title":"Video Games"},"fr-gb":{"title":"Video Games"}},"module_description":{"1":{"description":""},"2":{"description":""}},"type":"0","slider":"1","items":"4","row":"1","loop":"1","margin":"0","auto":"0","time":"3000","speed":"1000","navigation":"1","pagination":"0","desktop":"4","tablet":"3","mobile":"2","smobile":"1","nrow":"1","description":"0","countdown":"0","rotator":"1","newlabel":"0","salelabel":"0","limit":"12","width":"600","height":"667","module_image":"catalog\\/category\\/bg6-category.jpg","octab":{"0":{"tab_name":{"en-gb":{"title":"PlayStation"},"fr-gb":{"title":"PlayStation"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"0","cate_name":"Video Games\\u00a0\\u00a0&gt;\\u00a0\\u00a0PlayStation","cate_id":"91","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},"1":{"tab_name":{"en-gb":{"title":"Sony PSP"},"fr-gb":{"title":"Sony PSP"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"0","cate_name":"Video Games\\u00a0\\u00a0&gt;\\u00a0\\u00a0Sony PSP","cate_id":"92","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},"2":{"tab_name":{"en-gb":{"title":"Wii U"},"fr-gb":{"title":"Wii U"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"0","cate_name":"Video Games\\u00a0\\u00a0&gt;\\u00a0\\u00a0Wii U","cate_id":"93","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},"4":{"tab_name":{"en-gb":{"title":"Xbox 360"},"fr-gb":{"title":"Xbox 360"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"0","cate_name":"Video Games\\u00a0\\u00a0&gt;\\u00a0\\u00a0Xbox 360","cate_id":"95","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"}}}'),
(104, 'Tabs Categories1 Home3', 'octabproducts', '{"name":"Tabs Categories1 Home3","class":"tabscategories2","status":"1","title_lang":{"en-gb":{"title":"Headphones"},"fr-gb":{"title":"Headphones"}},"module_description":{"1":{"description":""},"2":{"description":""}},"type":"0","slider":"1","items":"4","row":"1","loop":"1","margin":"20","auto":"0","time":"3000","speed":"1000","navigation":"1","pagination":"0","desktop":"4","tablet":"3","mobile":"2","smobile":"1","nrow":"1","description":"0","countdown":"0","rotator":"1","newlabel":"0","salelabel":"0","limit":"12","width":"600","height":"667","module_image":"catalog\\/category\\/bg7-category.jpg","octab":[{"tab_name":{"en-gb":{"title":"Bluetooth"},"fr-gb":{"title":"Bluetooth"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"0","cate_name":"Headphones\\u00a0\\u00a0&gt;\\u00a0\\u00a0Bluetooth","cate_id":"102","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"In-Ear &amp; Earbud"},"fr-gb":{"title":"In-Ear &amp; Earbud"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"0","cate_name":"Headphones\\u00a0\\u00a0&gt;\\u00a0\\u00a0In-Ear &amp; Earbud","cate_id":"103","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"On-Ear"},"fr-gb":{"title":"On-Ear"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"0","cate_name":"Headphones\\u00a0\\u00a0&gt;\\u00a0\\u00a0On-Ear","cate_id":"104","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Sports"},"fr-gb":{"title":"Sports"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"0","cate_name":"Headphones\\u00a0\\u00a0&gt;\\u00a0\\u00a0Sports","cate_id":"105","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"}]}'),
(106, 'Banner Static Home4', 'occmsblock', '{"name":"Banner Static Home4","cmsblock_id":"58","status":"1"}'),
(107, 'New Products Home4', 'ocproduct', '{"name":"New Products Home4","class":"newproducts","status":"1","option":"2","product":"","cate_name":"","cate_id":"","productfrom":"0","productcate":"","input_specific_product":"0","autoproduct":"0","title_lang":{"en-gb":{"title":"New Products"},"fr-gb":{"title":"New Products"}},"module_description":{"1":{"description":""},"2":{"description":""}},"type":"0","slider":"1","items":"3","auto":"0","time":"3000","speed":"1000","row":"2","loop":"1","margin":"30","navigation":"1","pagination":"0","desktop":"3","tablet":"2","mobile":"1","smobile":"1","nrow":"1","description":"0","countdown":"0","rotator":"1","newlabel":"0","salelabel":"0","limit":"10","width":"600","height":"667"}'),
(108, 'Tabs Categories3 Home1', 'octabproducts', '{"name":"Tabs Categories3 Home1","class":"tabscategories4","status":"1","title_lang":{"en-gb":{"title":"Brand Sale"},"fr-gb":{"title":"Brand Sale"}},"module_description":{"1":{"description":""},"2":{"description":""}},"type":"1","slider":"1","items":"2","row":"1","loop":"1","margin":"0","auto":"0","time":"3000","speed":"1000","navigation":"1","pagination":"0","desktop":"2","tablet":"2","mobile":"2","smobile":"1","nrow":"1","description":"1","countdown":"0","rotator":"1","newlabel":"0","salelabel":"0","limit":"6","width":"600","height":"667","module_image":"catalog\\/category\\/img-categorytab.jpg","octab":[{"tab_name":{"en-gb":{"title":"Apple"},"fr-gb":{"title":"Apple"}},"option":"3","productall":"","manu_name":"Apple","manu_id":"8","manu_logo":"1","cate_name":"","cate_id":"","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Canon"},"fr-gb":{"title":"Canon"}},"option":"3","productall":"","manu_name":"Canon","manu_id":"9","manu_logo":"1","cate_name":"","cate_id":"","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"HTC"},"fr-gb":{"title":"HTC"}},"option":"3","productall":"","manu_name":"HTC","manu_id":"5","manu_logo":"1","cate_name":"","cate_id":"","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Palm"},"fr-gb":{"title":"Palm"}},"option":"3","productall":"","manu_name":"Palm","manu_id":"6","manu_logo":"1","cate_name":"","cate_id":"","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Sony"},"fr-gb":{"title":"Sony"}},"option":"3","productall":"","manu_name":"Sony","manu_id":"10","manu_logo":"1","cate_name":"","cate_id":"","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"}]}'),
(109, 'Tabs Categories3 Home2', 'octabproducts', '{"name":"Tabs Categories3 Home2","class":"tabscategories4","status":"1","title_lang":{"en-gb":{"title":"Brand Sale"},"fr-gb":{"title":"Brand Sale"}},"module_description":{"1":{"description":""},"2":{"description":""}},"type":"1","slider":"1","items":"2","row":"1","loop":"1","margin":"0","auto":"0","time":"3000","speed":"1000","navigation":"1","pagination":"0","desktop":"2","tablet":"2","mobile":"2","smobile":"1","nrow":"1","description":"1","countdown":"0","rotator":"1","newlabel":"0","salelabel":"0","limit":"7","width":"600","height":"667","module_image":"catalog\\/category\\/img1-categorytab.jpg","octab":[{"tab_name":{"en-gb":{"title":"Apple"},"fr-gb":{"title":"Apple"}},"option":"3","productall":"","manu_name":"Apple","manu_id":"8","manu_logo":"1","cate_name":"","cate_id":"","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Canon"},"fr-gb":{"title":"Canon"}},"option":"3","productall":"","manu_name":"Canon","manu_id":"9","manu_logo":"1","cate_name":"","cate_id":"","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"HTC"},"fr-gb":{"title":"HTC"}},"option":"3","productall":"","manu_name":"HTC","manu_id":"5","manu_logo":"1","cate_name":"","cate_id":"","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Palm"},"fr-gb":{"title":"Palm"}},"option":"3","productall":"","manu_name":"Palm","manu_id":"6","manu_logo":"1","cate_name":"","cate_id":"","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Sony"},"fr-gb":{"title":"Sony"}},"option":"3","productall":"","manu_name":"Sony","manu_id":"10","manu_logo":"1","cate_name":"","cate_id":"","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"}]}'),
(110, 'Banner Center Home4', 'occmsblock', '{"name":"Banner Center Home4","cmsblock_id":"59","status":"1"}'),
(111, 'Tabs Categories Home4', 'octabproducts', '{"name":"Tabs Categories Home4","class":"tabscategories1","status":"1","title_lang":{"en-gb":{"title":"Living Room"},"fr-gb":{"title":"Living Room"}},"module_description":{"1":{"description":""},"2":{"description":""}},"type":"2","slider":"1","items":"2","row":"2","loop":"1","margin":"0","auto":"0","time":"3000","speed":"1000","navigation":"1","pagination":"0","desktop":"2","tablet":"2","mobile":"1","smobile":"1","nrow":"1","description":"1","countdown":"0","rotator":"1","newlabel":"0","salelabel":"0","limit":"7","width":"600","height":"667","module_image":"catalog\\/category\\/bg9-category.jpg","octab":[{"tab_name":{"en-gb":{"title":"Chairs &amp; Chaises"},"fr-gb":{"title":"Chairs &amp; Chaises"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Living Room\\u00a0\\u00a0&gt;\\u00a0\\u00a0Chairs &amp; Chaises","cate_id":"145","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Loveseats"},"fr-gb":{"title":"Loveseats"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Living Room\\u00a0\\u00a0&gt;\\u00a0\\u00a0Loveseats","cate_id":"146","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Sectionals"},"fr-gb":{"title":"Sectionals"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Living Room\\u00a0\\u00a0&gt;\\u00a0\\u00a0Sectionals","cate_id":"147","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Sofas"},"fr-gb":{"title":"Sofas"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Living Room\\u00a0\\u00a0&gt;\\u00a0\\u00a0Sofas","cate_id":"148","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"}]}');
INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(112, 'Tabs Categories1 Home4', 'octabproducts', '{"name":"Tabs Categories1 Home4","class":"tabscategories2","status":"1","title_lang":{"en-gb":{"title":"Dining Room"},"fr-gb":{"title":"Dining Room"}},"module_description":{"1":{"description":""},"2":{"description":""}},"type":"2","slider":"1","items":"2","row":"2","loop":"1","margin":"0","auto":"0","time":"3000","speed":"1000","navigation":"1","pagination":"0","desktop":"2","tablet":"2","mobile":"1","smobile":"1","nrow":"1","description":"1","countdown":"0","rotator":"1","newlabel":"0","salelabel":"0","limit":"7","width":"600","height":"667","module_image":"catalog\\/category\\/bg10-category.jpg","octab":[{"tab_name":{"en-gb":{"title":"Benches"},"fr-gb":{"title":"Benches"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Dining Room\\u00a0\\u00a0&gt;\\u00a0\\u00a0Benches","cate_id":"150","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Chairs"},"fr-gb":{"title":"Chairs"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Dining Room\\u00a0\\u00a0&gt;\\u00a0\\u00a0Chairs","cate_id":"151","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Dining Sets"},"fr-gb":{"title":"Dining Sets"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Dining Room\\u00a0\\u00a0&gt;\\u00a0\\u00a0Dining Sets","cate_id":"152","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Dining Tables"},"fr-gb":{"title":"Dining Tables"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Dining Room\\u00a0\\u00a0&gt;\\u00a0\\u00a0Dining Tables","cate_id":"153","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"}]}'),
(113, 'Tabs Categories2 Home4', 'octabproducts', '{"name":"Tabs Categories2 Home4","class":"tabscategories3","status":"1","title_lang":{"en-gb":{"title":"Bedroom"},"fr-gb":{"title":"Bedroom"}},"module_description":{"1":{"description":""},"2":{"description":""}},"type":"2","slider":"1","items":"2","row":"2","loop":"0","margin":"0","auto":"0","time":"3000","speed":"1000","navigation":"1","pagination":"0","desktop":"2","tablet":"2","mobile":"1","smobile":"1","nrow":"1","description":"1","countdown":"0","rotator":"1","newlabel":"0","salelabel":"0","limit":"7","width":"600","height":"667","module_image":"catalog\\/category\\/bg8-category.jpg","octab":[{"tab_name":{"en-gb":{"title":"Daybeds &amp; Futons"},"fr-gb":{"title":"Daybeds &amp; Futons"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Bedroom\\u00a0\\u00a0&gt;\\u00a0\\u00a0Daybeds &amp; Futons","cate_id":"155","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Full Beds"},"fr-gb":{"title":"Full Beds"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Bedroom\\u00a0\\u00a0&gt;\\u00a0\\u00a0Full Beds","cate_id":"156","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"King Beds"},"fr-gb":{"title":"King Beds"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Bedroom\\u00a0\\u00a0&gt;\\u00a0\\u00a0King Beds","cate_id":"157","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Queen Beds"},"fr-gb":{"title":"Queen Beds"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Bedroom\\u00a0\\u00a0&gt;\\u00a0\\u00a0Queen Beds","cate_id":"158","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"}]}'),
(114, 'Banner Center1 Home4', 'occmsblock', '{"name":"Banner Center1 Home4","cmsblock_id":"60","status":"1"}'),
(116, 'Tabs Categories3 Home4', 'octabproducts', '{"name":"Tabs Categories3 Home4","class":"tabscategories4","status":"1","title_lang":{"en-gb":{"title":"Brand Sale"},"fr-gb":{"title":"Brand Sale"}},"module_description":{"1":{"description":""},"2":{"description":""}},"type":"1","slider":"1","items":"2","row":"1","loop":"1","margin":"0","auto":"0","time":"3000","speed":"1000","navigation":"1","pagination":"0","desktop":"2","tablet":"2","mobile":"1","smobile":"1","nrow":"1","description":"1","countdown":"0","rotator":"1","newlabel":"0","salelabel":"0","limit":"7","width":"600","height":"667","module_image":"catalog\\/category\\/img2-categorytab.jpg","octab":[{"tab_name":{"en-gb":{"title":"Apple"},"fr-gb":{"title":"Apple"}},"option":"3","productall":"","cate_name":"","cate_id":"","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0","manu_name":"Apple","manu_id":"8","manu_logo":"1"},{"tab_name":{"en-gb":{"title":"Canon"},"fr-gb":{"title":"Canon"}},"option":"3","productall":"","cate_name":"","cate_id":"","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0","manu_name":"Canon","manu_id":"9","manu_logo":"1"},{"tab_name":{"en-gb":{"title":"HTC"},"fr-gb":{"title":"HTC"}},"option":"3","productall":"","cate_name":"","cate_id":"","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0","manu_name":"HTC","manu_id":"5","manu_logo":"1"},{"tab_name":{"en-gb":{"title":"Palm"},"fr-gb":{"title":"Palm"}},"option":"3","productall":"","cate_name":"","cate_id":"","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0","manu_name":"Palm","manu_id":"6","manu_logo":"1"},{"tab_name":{"en-gb":{"title":"Sony"},"fr-gb":{"title":"Sony"}},"option":"3","productall":"","cate_name":"","cate_id":"","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0","manu_name":"Sony","manu_id":"10","manu_logo":"1"}]}'),
(120, 'Tabs Categories1 Home5', 'octabproducts', '{"name":"Tabs Categories1 Home5","class":"tabscategories2","status":"1","title_lang":{"en-gb":{"title":"Dining Room"},"fr-gb":{"title":"Dining Room"}},"module_description":{"1":{"description":""},"2":{"description":""}},"type":"0","slider":"1","items":"3","row":"2","loop":"1","margin":"0","auto":"0","time":"3000","speed":"1000","navigation":"1","pagination":"0","desktop":"3","tablet":"2","mobile":"1","smobile":"1","nrow":"1","description":"0","countdown":"0","rotator":"1","newlabel":"0","salelabel":"0","limit":"10","width":"600","height":"667","module_image":"catalog\\/category\\/bg13-category.jpg","octab":[{"tab_name":{"en-gb":{"title":"Benches"},"fr-gb":{"title":"Benches"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Dining Room\\u00a0\\u00a0&gt;\\u00a0\\u00a0Benches","cate_id":"150","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Chairs"},"fr-gb":{"title":"Chairs"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Dining Room\\u00a0\\u00a0&gt;\\u00a0\\u00a0Chairs","cate_id":"151","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Dining Sets"},"fr-gb":{"title":"Dining Sets"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Dining Room\\u00a0\\u00a0&gt;\\u00a0\\u00a0Dining Sets","cate_id":"152","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Dining Tables"},"fr-gb":{"title":"Dining Tables"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Dining Room\\u00a0\\u00a0&gt;\\u00a0\\u00a0Dining Tables","cate_id":"153","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"}]}'),
(121, 'Tabs Categories2 Home5', 'octabproducts', '{"name":"Tabs Categories2 Home5","class":"tabscategories3","status":"1","title_lang":{"en-gb":{"title":"Bedroom"},"fr-gb":{"title":"Bedroom"}},"module_description":{"1":{"description":""},"2":{"description":""}},"type":"0","slider":"1","items":"3","row":"2","loop":"1","margin":"0","auto":"0","time":"3000","speed":"1000","navigation":"1","pagination":"0","desktop":"3","tablet":"2","mobile":"1","smobile":"1","nrow":"1","description":"0","countdown":"0","rotator":"1","newlabel":"0","salelabel":"0","limit":"10","width":"600","height":"667","module_image":"catalog\\/category\\/bg14-category.jpg","octab":[{"tab_name":{"en-gb":{"title":"Daybeds &amp; Futons"},"fr-gb":{"title":"Daybeds &amp; Futons"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Bedroom\\u00a0\\u00a0&gt;\\u00a0\\u00a0Daybeds &amp; Futons","cate_id":"155","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Full Beds"},"fr-gb":{"title":"Full Beds"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Bedroom\\u00a0\\u00a0&gt;\\u00a0\\u00a0Full Beds","cate_id":"156","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"King Beds"},"fr-gb":{"title":"King Beds"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Bedroom\\u00a0\\u00a0&gt;\\u00a0\\u00a0King Beds","cate_id":"157","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Queen Beds"},"fr-gb":{"title":"Queen Beds"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Bedroom\\u00a0\\u00a0&gt;\\u00a0\\u00a0Queen Beds","cate_id":"158","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"}]}'),
(122, 'Banner Center Home5', 'occmsblock', '{"name":"Banner Center Home5","cmsblock_id":"63","status":"1"}'),
(123, 'Tabs Categories3 Home5', 'octabproducts', '{"name":"Tabs Categories3 Home5","class":"tabscategories4","status":"1","title_lang":{"en-gb":{"title":"Brand Sale"},"fr-gb":{"title":"Brand Sale"}},"module_description":{"1":{"description":""},"2":{"description":""}},"type":"1","slider":"1","items":"2","row":"1","loop":"1","margin":"0","auto":"0","time":"3000","speed":"1000","navigation":"1","pagination":"0","desktop":"2","tablet":"2","mobile":"1","smobile":"1","nrow":"1","description":"1","countdown":"0","rotator":"1","newlabel":"0","salelabel":"0","limit":"7","width":"600","height":"667","module_image":"catalog\\/category\\/img3-categorytab.jpg","octab":[{"tab_name":{"en-gb":{"title":"Apple"},"fr-gb":{"title":"Apple"}},"option":"3","productall":"","manu_name":"Apple","manu_id":"8","manu_logo":"1","cate_name":"","cate_id":"","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Canon"},"fr-gb":{"title":"Canon"}},"option":"3","productall":"","manu_name":"Canon","manu_id":"9","manu_logo":"1","cate_name":"","cate_id":"","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"HTC"},"fr-gb":{"title":"HTC"}},"option":"3","productall":"","manu_name":"HTC","manu_id":"5","manu_logo":"1","cate_name":"","cate_id":"","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Palm"},"fr-gb":{"title":"Palm"}},"option":"3","productall":"","manu_name":"Palm","manu_id":"6","manu_logo":"1","cate_name":"","cate_id":"","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Sony"},"fr-gb":{"title":"Sony"}},"option":"3","productall":"","manu_name":"Sony","manu_id":"10","manu_logo":"1","cate_name":"","cate_id":"","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"}]}'),
(124, 'Featured Category Home5', 'ocfeaturedcategory', '{"name":"Featured Category Home5","status":"1","slider":"1","width":"268","height":"268","limit":"8","item":"4","speed":"3000","autoplay":"0","rows":"2","shownextback":"0","shownav":"0","showdes":"0","showsub":"1","showsubnumber":"5"}'),
(125, 'Featured Products2', 'featured', '{"name":"Featured Products2","product_name":"","product":["50","51","52","53","54"],"limit":"5","width":"600","height":"667","status":"1"}'),
(126, 'Banner Left2', 'occmsblock', '{"name":"Banner Left2","cmsblock_id":"64","status":"1"}'),
(129, 'New Products Home6', 'ocproduct', '{"name":"New Products Home6","class":"newproducts","status":"1","option":"2","product":"","cate_name":"","cate_id":"","productfrom":"0","productcate":"","input_specific_product":"0","autoproduct":"0","title_lang":{"en-gb":{"title":"New Products"},"fr-gb":{"title":"New Products"}},"module_description":{"1":{"description":""},"2":{"description":""}},"type":"0","slider":"1","items":"2","auto":"0","time":"3000","speed":"1000","row":"2","loop":"1","margin":"0","navigation":"1","pagination":"0","desktop":"2","tablet":"2","mobile":"1","smobile":"1","nrow":"1","description":"0","countdown":"0","rotator":"1","newlabel":"0","salelabel":"0","limit":"8","width":"600","height":"667"}'),
(130, 'Banner Center Home6', 'occmsblock', '{"name":"Banner Center Home6","cmsblock_id":"67","status":"1"}'),
(131, 'Tabs Categories Home6', 'octabproducts', '{"name":"Tabs Categories Home6","class":"tabscategories1","status":"1","title_lang":{"en-gb":{"title":"Living Room"},"fr-gb":{"title":"Living Room"}},"module_description":{"1":{"description":""},"2":{"description":""}},"type":"0","slider":"1","items":"4","row":"1","loop":"1","margin":"0","auto":"0","time":"3000","speed":"1000","navigation":"1","pagination":"0","desktop":"4","tablet":"3","mobile":"2","smobile":"1","nrow":"1","description":"0","countdown":"0","rotator":"1","newlabel":"0","salelabel":"0","limit":"12","width":"600","height":"667","module_image":"catalog\\/category\\/bg15-category.jpg","octab":[{"tab_name":{"en-gb":{"title":"Chairs &amp; Chaises"},"fr-gb":{"title":"Chairs &amp; Chaises"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Living Room\\u00a0\\u00a0&gt;\\u00a0\\u00a0Chairs &amp; Chaises","cate_id":"145","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Loveseats"},"fr-gb":{"title":"Loveseats"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Living Room\\u00a0\\u00a0&gt;\\u00a0\\u00a0Loveseats","cate_id":"146","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Sectionals"},"fr-gb":{"title":"Sectionals"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Living Room\\u00a0\\u00a0&gt;\\u00a0\\u00a0Sectionals","cate_id":"147","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Sofas"},"fr-gb":{"title":"Sofas"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Living Room\\u00a0\\u00a0&gt;\\u00a0\\u00a0Sofas","cate_id":"148","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"}]}'),
(132, 'Tabs Categories1 Home6', 'octabproducts', '{"name":"Tabs Categories1 Home6","class":"tabscategories2","status":"1","title_lang":{"en-gb":{"title":"Dining Room"},"fr-gb":{"title":"Dining Room"}},"module_description":{"1":{"description":""},"2":{"description":""}},"type":"0","slider":"1","items":"4","row":"1","loop":"1","margin":"0","auto":"0","time":"3000","speed":"1000","navigation":"1","pagination":"0","desktop":"4","tablet":"3","mobile":"2","smobile":"1","nrow":"1","description":"0","countdown":"0","rotator":"1","newlabel":"0","salelabel":"0","limit":"12","width":"600","height":"667","module_image":"catalog\\/category\\/bg16-category.jpg","octab":[{"tab_name":{"en-gb":{"title":"Benches"},"fr-gb":{"title":"Benches"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Dining Room\\u00a0\\u00a0&gt;\\u00a0\\u00a0Benches","cate_id":"150","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Chairs"},"fr-gb":{"title":"Chairs"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Dining Room\\u00a0\\u00a0&gt;\\u00a0\\u00a0Chairs","cate_id":"151","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Dining Sets"},"fr-gb":{"title":"Dining Sets"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Dining Room\\u00a0\\u00a0&gt;\\u00a0\\u00a0Dining Sets","cate_id":"152","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Dining Tables"},"fr-gb":{"title":"Dining Tables"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Dining Room\\u00a0\\u00a0&gt;\\u00a0\\u00a0Dining Tables","cate_id":"153","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"}]}'),
(133, 'Vertical Menu3', 'ocvermegamenu', '{"name":"Vertical Menu3","status":"1","hhome":"0","hdepth":"4","hlevel":"4","hitem_limit":"10","h_active_cate":"CAT192,CAT193,CAT194,CAT199,CAT204,CAT205,CAT209,CAT210,CAT211,CAT212,CAT213"}'),
(134, 'Layout Homepage 07', 'oc_page_builder', '{"name":"Layout Homepage 07","status":"1","widget":[{"class":"banner-home","main_cols":[{"format":"3","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"newslettersubscribe.39","name":"OC Newsletter &gt; Newsletter Popup","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/newslettersubscribe&amp;user_token=qYq26d091dcehdT2k1pimPldlwfP27jl&amp;module_id=39"}]},"format":"12"}]}]},{"format":"6","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"ocslideshow.136","name":"OC Slide show &gt; Home slideshow 7","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/ocslideshow&amp;user_token=qYq26d091dcehdT2k1pimPldlwfP27jl&amp;module_id=136"}]},"format":"12"}]}]},{"format":"3","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"occmsblock.137","name":"OC CMS Block &gt; Banner Static Home7","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=qYq26d091dcehdT2k1pimPldlwfP27jl&amp;module_id=137"}]},"format":"12"}]}]}]},{"class":"","main_cols":[{"format":"12","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"ocproduct.138","name":"OC Products &gt; New Products Home7","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/ocproduct&amp;user_token=qYq26d091dcehdT2k1pimPldlwfP27jl&amp;module_id=138"},{"code":"occmsblock.139","name":"OC CMS Block &gt; Banner Center Home7","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=qYq26d091dcehdT2k1pimPldlwfP27jl&amp;module_id=139"},{"code":"octabproducts.140","name":"OC Tab Products &gt; Tabs Categories Home7","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=qYq26d091dcehdT2k1pimPldlwfP27jl&amp;module_id=140"},{"code":"octabproducts.141","name":"OC Tab Products &gt; Tabs Categories1 Home7","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=qYq26d091dcehdT2k1pimPldlwfP27jl&amp;module_id=141"},{"code":"octabproducts.142","name":"OC Tab Products &gt; Tabs Categories2 Home7","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=qYq26d091dcehdT2k1pimPldlwfP27jl&amp;module_id=142"},{"code":"occmsblock.143","name":"OC CMS Block &gt; Banner Center1 Home7","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=qYq26d091dcehdT2k1pimPldlwfP27jl&amp;module_id=143"},{"code":"octabproducts.144","name":"OC Tab Products &gt; Tabs Categories3 Home7","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=qYq26d091dcehdT2k1pimPldlwfP27jl&amp;module_id=144"}]},"format":"12"}]}]}]}]}'),
(135, 'Layout Homepage 08', 'oc_page_builder', '{"name":"Layout Homepage 08","status":"1","widget":[{"class":"","main_cols":[{"format":"3","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"newslettersubscribe.39","name":"OC Newsletter &gt; Newsletter Popup","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/newslettersubscribe&amp;user_token=qYq26d091dcehdT2k1pimPldlwfP27jl&amp;module_id=39"}]},"format":"12"}]}]},{"format":"9","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"ocslideshow.147","name":"OC Slide show &gt; Home slideshow 8","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/ocslideshow&amp;user_token=qYq26d091dcehdT2k1pimPldlwfP27jl&amp;module_id=147"}]},"format":"12"}]}]}]},{"class":"","main_cols":[{"format":"12","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"occmsblock.148","name":"OC CMS Block &gt; Banner Static Home8","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=qYq26d091dcehdT2k1pimPldlwfP27jl&amp;module_id=148"}]},"format":"12"}]}]}]},{"class":"home-moduls","main_cols":[{"format":"3","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"occmsblock.149","name":"OC CMS Block &gt; Banner Static1 Home8","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=qYq26d091dcehdT2k1pimPldlwfP27jl&amp;module_id=149"},{"code":"featured.146","name":"Featured &gt; Featured Products3","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/featured&amp;user_token=qYq26d091dcehdT2k1pimPldlwfP27jl&amp;module_id=146"},{"code":"occmsblock.145","name":"OC CMS Block &gt; Banner Left3","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=qYq26d091dcehdT2k1pimPldlwfP27jl&amp;module_id=145"}]},"format":"12"}]}]},{"format":"9","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"ocproduct.150","name":"OC Products &gt; New Products Home8","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/ocproduct&amp;user_token=qYq26d091dcehdT2k1pimPldlwfP27jl&amp;module_id=150"},{"code":"occmsblock.153","name":"OC CMS Block &gt; Banner Center Home8","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=qYq26d091dcehdT2k1pimPldlwfP27jl&amp;module_id=153"},{"code":"octabproducts.151","name":"OC Tab Products &gt; Tabs Categories Home8","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=qYq26d091dcehdT2k1pimPldlwfP27jl&amp;module_id=151"},{"code":"octabproducts.152","name":"OC Tab Products &gt; Tabs Categories1 Home8","url":"http:\\/\\/tt2_lazio1.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=qYq26d091dcehdT2k1pimPldlwfP27jl&amp;module_id=152"}]},"format":"12"}]}]}]}]}'),
(136, 'Home slideshow 7', 'ocslideshow', '{"name":"Home slideshow 7","status":"1","banner":"25","width":"610","height":"536"}'),
(137, 'Banner Static Home7', 'occmsblock', '{"name":"Banner Static Home7","cmsblock_id":"68","status":"1"}'),
(141, 'Tabs Categories1 Home7', 'octabproducts', '{"name":"Tabs Categories1 Home7","class":"tabscategories2","status":"1","title_lang":{"en-gb":{"title":"History"},"fr-gb":{"title":"History"}},"module_description":{"1":{"description":""},"2":{"description":""}},"type":"2","slider":"1","items":"2","row":"2","loop":"1","margin":"0","auto":"0","time":"3000","speed":"1000","navigation":"1","pagination":"0","desktop":"2","tablet":"2","mobile":"1","smobile":"1","nrow":"1","description":"1","countdown":"0","rotator":"1","newlabel":"0","salelabel":"0","limit":"7","width":"600","height":"667","module_image":"catalog\\/category\\/bg18-category.jpg","octab":[{"tab_name":{"en-gb":{"title":"Africa"},"fr-gb":{"title":"Africa"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"History\\u00a0\\u00a0&gt;\\u00a0\\u00a0Africa","cate_id":"200","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Americas"},"fr-gb":{"title":"Americas"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"History\\u00a0\\u00a0&gt;\\u00a0\\u00a0Americas","cate_id":"201","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Asia"},"fr-gb":{"title":"Asia"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"History\\u00a0\\u00a0&gt;\\u00a0\\u00a0Asia","cate_id":"202","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Europe"},"fr-gb":{"title":"Europe"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"History\\u00a0\\u00a0&gt;\\u00a0\\u00a0Europe","cate_id":"203","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"}]}'),
(142, 'Tabs Categories2 Home7', 'octabproducts', '{"name":"Tabs Categories2 Home7","class":"tabscategories3","status":"1","title_lang":{"en-gb":{"title":"Medical Books"},"fr-gb":{"title":"Medical Books"}},"module_description":{"1":{"description":""},"2":{"description":""}},"type":"2","slider":"1","items":"2","row":"2","loop":"1","margin":"0","auto":"0","time":"3000","speed":"1000","navigation":"1","pagination":"0","desktop":"2","tablet":"2","mobile":"1","smobile":"1","nrow":"1","description":"1","countdown":"0","rotator":"1","newlabel":"0","salelabel":"0","limit":"7","width":"600","height":"667","module_image":"catalog\\/category\\/bg19-category.jpg","octab":[{"tab_name":{"en-gb":{"title":"Basic Sciences"},"fr-gb":{"title":"Basic Sciences"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Medical Books\\u00a0\\u00a0&gt;\\u00a0\\u00a0Basic Sciences","cate_id":"206","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Dentistry"},"fr-gb":{"title":"Dentistry"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Medical Books\\u00a0\\u00a0&gt;\\u00a0\\u00a0Dentistry","cate_id":"207","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Medicine"},"fr-gb":{"title":"Medicine"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"Medical Books\\u00a0\\u00a0&gt;\\u00a0\\u00a0Medicine","cate_id":"208","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"}]}'),
(143, 'Banner Center1 Home7', 'occmsblock', '{"name":"Banner Center1 Home7","cmsblock_id":"70","status":"1"}'),
(144, 'Tabs Categories3 Home7', 'octabproducts', '{"name":"Tabs Categories3 Home7","class":"tabscategories4","status":"1","title_lang":{"en-gb":{"title":"Brand Sale"},"fr-gb":{"title":"Brand Sale"}},"module_description":{"1":{"description":""},"2":{"description":""}},"type":"1","slider":"1","items":"2","row":"1","loop":"1","margin":"0","auto":"0","time":"3000","speed":"1000","navigation":"1","pagination":"0","desktop":"2","tablet":"2","mobile":"1","smobile":"1","nrow":"1","description":"1","countdown":"0","rotator":"1","newlabel":"0","salelabel":"0","limit":"7","width":"600","height":"667","module_image":"catalog\\/category\\/img4-categorytab.jpg","octab":[{"tab_name":{"en-gb":{"title":"Apple"},"fr-gb":{"title":"Apple"}},"option":"3","productall":"","cate_name":"","cate_id":"","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0","manu_name":"Apple","manu_id":"8","manu_logo":"1"},{"tab_name":{"en-gb":{"title":"Canon"},"fr-gb":{"title":"Canon"}},"option":"3","productall":"","cate_name":"","cate_id":"","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0","manu_name":"Canon","manu_id":"9","manu_logo":"1"},{"tab_name":{"en-gb":{"title":"HTC"},"fr-gb":{"title":"HTC"}},"option":"3","productall":"","cate_name":"","cate_id":"","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0","manu_name":"HTC","manu_id":"5","manu_logo":"1"},{"tab_name":{"en-gb":{"title":"Palm"},"fr-gb":{"title":"Palm"}},"option":"3","productall":"","cate_name":"","cate_id":"","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0","manu_name":"Palm","manu_id":"6","manu_logo":"1"},{"tab_name":{"en-gb":{"title":"Sony"},"fr-gb":{"title":"Sony"}},"option":"3","productall":"","cate_name":"","cate_id":"","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0","manu_name":"Sony","manu_id":"10","manu_logo":"1"}]}'),
(145, 'Banner Left3', 'occmsblock', '{"name":"Banner Left3","cmsblock_id":"71","status":"1"}'),
(146, 'Featured Products3', 'featured', '{"name":"Featured Products3","product_name":"","product":["62","63","64","66","65"],"limit":"5","width":"600","height":"667","status":"1"}'),
(147, 'Home slideshow 8', 'ocslideshow', '{"name":"Home slideshow 8","status":"1","banner":"27","width":"890","height":"536"}'),
(148, 'Banner Static Home8', 'occmsblock', '{"name":"Banner Static Home8","cmsblock_id":"72","status":"1"}'),
(149, 'Banner Static1 Home8', 'occmsblock', '{"name":"Banner Static1 Home8","cmsblock_id":"73","status":"1"}'),
(150, 'New Products Home8', 'ocproduct', '{"name":"New Products Home8","class":"newproducts","status":"1","option":"2","product":"","cate_name":"","cate_id":"","productfrom":"0","productcate":"","input_specific_product":"0","autoproduct":"0","title_lang":{"en-gb":{"title":"New Products"},"fr-gb":{"title":"New Products"}},"module_description":{"1":{"description":""},"2":{"description":""}},"type":"0","slider":"1","items":"2","auto":"0","time":"3000","speed":"1000","row":"2","loop":"1","margin":"0","navigation":"1","pagination":"0","desktop":"2","tablet":"2","mobile":"1","smobile":"1","nrow":"1","description":"0","countdown":"0","rotator":"1","newlabel":"0","salelabel":"0","limit":"8","width":"600","height":"667"}'),
(151, 'Tabs Categories Home8', 'octabproducts', '{"name":"Tabs Categories Home8","class":"tabscategories1","status":"1","title_lang":{"en-gb":{"title":"Technology"},"fr-gb":{"title":"Technology"}},"module_description":{"1":{"description":""},"2":{"description":""}},"type":"0","slider":"1","items":"4","row":"1","loop":"1","margin":"0","auto":"0","time":"3000","speed":"1000","navigation":"1","pagination":"0","desktop":"4","tablet":"3","mobile":"2","smobile":"1","nrow":"1","description":"0","countdown":"0","rotator":"1","newlabel":"0","salelabel":"0","limit":"8","width":"600","height":"667","module_image":"catalog\\/category\\/bg20-category.jpg","octab":[{"tab_name":{"en-gb":{"title":"Graphics &amp; Design"},"fr-gb":{"title":"Graphics &amp; Design"}},"option":"1","productall":"","cate_name":"Technology\\u00a0\\u00a0&gt;\\u00a0\\u00a0Graphics &amp; Design","cate_id":"195","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0","manu_name":"","manu_id":"","manu_logo":"1"},{"tab_name":{"en-gb":{"title":"Hardware"},"fr-gb":{"title":"Hardware"}},"option":"1","productall":"","cate_name":"Technology\\u00a0\\u00a0&gt;\\u00a0\\u00a0Hardware","cate_id":"196","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0","manu_name":"","manu_id":"","manu_logo":"1"},{"tab_name":{"en-gb":{"title":"Programming"},"fr-gb":{"title":"Programming"}},"option":"1","productall":"","cate_name":"Technology\\u00a0\\u00a0&gt;\\u00a0\\u00a0Programming","cate_id":"197","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0","manu_name":"","manu_id":"","manu_logo":"1"},{"tab_name":{"en-gb":{"title":"Software"},"fr-gb":{"title":"Software"}},"option":"1","productall":"","cate_name":"Technology\\u00a0\\u00a0&gt;\\u00a0\\u00a0Software","cate_id":"198","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0","manu_name":"","manu_id":"","manu_logo":"1"}]}'),
(152, 'Tabs Categories1 Home8', 'octabproducts', '{"name":"Tabs Categories1 Home8","class":"tabscategories2","status":"1","title_lang":{"en-gb":{"title":"History"},"fr-gb":{"title":"History"}},"module_description":{"1":{"description":""},"2":{"description":""}},"type":"0","slider":"1","items":"4","row":"1","loop":"1","margin":"0","auto":"0","time":"3000","speed":"1000","navigation":"1","pagination":"0","desktop":"4","tablet":"3","mobile":"2","smobile":"1","nrow":"1","description":"0","countdown":"0","rotator":"1","newlabel":"0","salelabel":"0","limit":"8","width":"600","height":"667","module_image":"catalog\\/category\\/bg21-category.jpg","octab":[{"tab_name":{"en-gb":{"title":"Africa"},"fr-gb":{"title":"Africa"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"History\\u00a0\\u00a0&gt;\\u00a0\\u00a0Africa","cate_id":"200","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Americas"},"fr-gb":{"title":"Americas"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"History\\u00a0\\u00a0&gt;\\u00a0\\u00a0Americas","cate_id":"201","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Asia"},"fr-gb":{"title":"Asia"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"History\\u00a0\\u00a0&gt;\\u00a0\\u00a0Asia","cate_id":"202","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"},{"tab_name":{"en-gb":{"title":"Europe"},"fr-gb":{"title":"Europe"}},"option":"1","productall":"","manu_name":"","manu_id":"","manu_logo":"1","cate_name":"History\\u00a0\\u00a0&gt;\\u00a0\\u00a0Europe","cate_id":"203","productfrom":"1","productcate":"","input_specific_product":"0","autoproduct":"0"}]}'),
(153, 'Banner Center Home8', 'occmsblock', '{"name":"Banner Center Home8","cmsblock_id":"74","status":"1"}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_ocslideshow`
--

CREATE TABLE `oc_ocslideshow` (
  `ocslideshow_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `auto` tinyint(1) DEFAULT NULL,
  `delay` int(11) DEFAULT NULL,
  `hover` tinyint(1) DEFAULT NULL,
  `nextback` tinyint(1) DEFAULT NULL,
  `contrl` tinyint(1) DEFAULT NULL,
  `effect` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ocslideshow`
--

INSERT INTO `oc_ocslideshow` (`ocslideshow_id`, `name`, `status`, `auto`, `delay`, `hover`, `nextback`, `contrl`, `effect`) VALUES
(18, 'Home slideshow 1', 1, 1, 5000, 0, 0, 1, '  random  '),
(19, 'Home slideshow 2', 1, 1, 5000, 0, 0, 1, '  random  '),
(20, 'Home slideshow 3', 1, 1, 5000, 0, 0, 1, '  random  '),
(21, 'Home slideshow 4', 1, 1, 5000, 0, 0, 1, '  random  '),
(23, 'Home slideshow 5', 1, 1, 5000, 0, 0, 1, '  random  '),
(24, 'Home slideshow 6', 1, 1, 5000, 0, 0, 1, '  random  '),
(25, 'Home slideshow 7', 1, 1, 5000, 0, 0, 1, '  random  '),
(27, 'Home slideshow8', 1, 1, 5000, 0, 0, 1, '  random  ');

-- --------------------------------------------------------

--
-- Table structure for table `oc_ocslideshow_image`
--

CREATE TABLE `oc_ocslideshow_image` (
  `ocslideshow_image_id` int(11) NOT NULL,
  `ocslideshow_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `banner_store` varchar(110) DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `small_image` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ocslideshow_image`
--

INSERT INTO `oc_ocslideshow_image` (`ocslideshow_image_id`, `ocslideshow_id`, `link`, `type`, `banner_store`, `image`, `small_image`) VALUES
(288, 25, '  # ', 2, '6,0,6,0', 'catalog/slideshow/bg13-slider.jpg', 'no_image.png'),
(278, 19, '    #  ', 1, '1,0,1,0', 'catalog/slideshow/bg3-slider.jpg', 'no_image.png'),
(287, 25, '  # ', 1, '6,0,6,0', 'catalog/slideshow/bg14-slider.jpg', 'no_image.png'),
(276, 18, '  # ', 1, '0,0', 'catalog/slideshow/bg2-slider.jpg', 'no_image.png'),
(286, 24, '  # ', 2, '5,0,5,0', 'catalog/slideshow/bg11-slider.jpg', 'no_image.png'),
(280, 20, '  # ', 1, '2,0,2,0', 'catalog/slideshow/bg6-slider.jpg', 'no_image.png'),
(282, 21, '  # ', 2, '3,0,3,0', 'catalog/slideshow/bg7-slider.jpg', 'no_image.png'),
(281, 21, '  # ', 1, '3,0,3,0', 'catalog/slideshow/bg8-slider.jpg', 'no_image.png'),
(284, 23, '  # ', 1, '4,0,4,0', 'catalog/slideshow/bg10-slider.jpg', 'no_image.png'),
(283, 23, '  # ', 2, '4,0,4,0', 'catalog/slideshow/bg9-slider.jpg', 'no_image.png'),
(285, 24, '  # ', 1, '5,0,5,0', 'catalog/slideshow/bg12-slider.jpg', 'no_image.png'),
(275, 18, '      #   ', 2, '0,0', 'catalog/slideshow/bg1-slider.jpg', 'no_image.png'),
(277, 19, '', 2, '1,0,1,0', 'catalog/slideshow/bg4-slider.jpg', 'no_image.png'),
(279, 20, '  # ', 2, '2,0,2,0', 'catalog/slideshow/bg5-slider.jpg', 'no_image.png'),
(290, 27, '    #  ', 1, '7,0,7,0', 'catalog/slideshow/bg16-slider.jpg', 'no_image.png'),
(289, 27, '    #  ', 2, '7,0,7,0', 'catalog/slideshow/bg15-slider.jpg', 'no_image.png');

-- --------------------------------------------------------

--
-- Table structure for table `oc_ocslideshow_image_description`
--

CREATE TABLE `oc_ocslideshow_image_description` (
  `ocslideshow_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `ocslideshow_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `sub_title` varchar(64) DEFAULT NULL,
  `description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ocslideshow_image_description`
--

INSERT INTO `oc_ocslideshow_image_description` (`ocslideshow_image_id`, `language_id`, `ocslideshow_id`, `title`, `sub_title`, `description`) VALUES
(290, 2, 27, '  Flat 40% Off  ', '    ', '  On All Business, Investment &amp;amp; MANAGEMENT BOOKS  '),
(290, 1, 27, '  Flat 40% Off  ', '    ', '  On All Business, Investment &amp;amp; MANAGEMENT BOOKS  '),
(289, 1, 27, '  Spring Super Book Sale  ', '  Save on natural Cooking &amp; Welnes  ', '  $625.75 &lt;span&gt;$400.75&lt;/span&gt;  '),
(289, 2, 27, '  Spring Super Book Sale  ', '  Save on natural Cooking &amp; Welnes  ', '  $625.75 &lt;span&gt;$400.75&lt;/span&gt;  '),
(275, 2, 18, ' Xbox One ', ' Special Edition Lunar  Black Wireless Controller ', ' $725.59 &lt;span&gt;$500.59&lt;/span&gt; '),
(276, 1, 18, ' Tronite X Smart Watches ', ' Make Your Life Smart ', ' $625.75 &lt;span&gt;$400.75&lt;/span&gt; '),
(276, 2, 18, ' Tronite X Smart Watches ', ' Make Your Life Smart ', ' $625.75 &lt;span&gt;$400.75&lt;/span&gt; '),
(282, 1, 21, ' Armchair ', ' Save up to 50% Off ', ' &lt;p&gt;&lt;br&gt;&lt;/p&gt; '),
(282, 2, 21, ' Armchair ', ' Save up to 50% Off ', ' &lt;p&gt;&lt;br&gt;&lt;/p&gt; '),
(281, 2, 21, ' Sofa &amp; Armchairs ', ' Save up to 50% off ', ' &lt;p&gt;&lt;br&gt;&lt;/p&gt; '),
(281, 1, 21, ' Sofa &amp; Armchairs ', ' Save up to 50% off ', ' &lt;p&gt;&lt;br&gt;&lt;/p&gt; '),
(288, 2, 25, ' 3dtotal books ', ' Save up to 50% Off ', '  '),
(288, 1, 25, ' 3dtotal books ', ' Save up to 50% Off ', '  '),
(287, 2, 25, ' 3dtotal books ', ' Save up to 50% Off ', '  '),
(287, 1, 25, ' 3dtotal books ', ' Save up to 50% Off ', '  '),
(284, 2, 23, ' Living room ', ' Sale 30% off ', ' &lt;p&gt;&lt;br&gt;&lt;/p&gt; '),
(284, 1, 23, ' Living room ', ' Sale 30% off ', ' &lt;p&gt;&lt;br&gt;&lt;/p&gt; '),
(283, 2, 23, ' Sofa &amp; Armchairs ', ' Save up to 50% off ', ' &lt;p&gt;&lt;br&gt;&lt;/p&gt; '),
(283, 1, 23, ' Sofa &amp; Armchairs ', ' Save up to 50% off ', ' &lt;p&gt;&lt;br&gt;&lt;/p&gt; '),
(286, 2, 24, ' Nightstands ', ' Pride 3 drawers ', ' save up to 50% off '),
(285, 1, 24, ' Furniture ', ' Living room 2017 ', ' Add That Striking Look To Your Living Room '),
(285, 2, 24, ' Furniture ', ' Living room 2017 ', ' Add That Striking Look To Your Living Room '),
(286, 1, 24, ' Nightstands ', ' Pride 3 drawers ', ' save up to 50% off '),
(277, 2, 19, '  Lg G watch  ', '  Flat 56% Off  ', '  At $99.99 - Only for today  '),
(278, 1, 19, '  Bluetooth speakers Z600  ', '  Save up to 50% off  ', '  &lt;p&gt;&lt;br&gt;&lt;/p&gt;  '),
(278, 2, 19, '  Bluetooth speakers Z600  ', '  Save up to 50% off  ', '  &lt;p&gt;&lt;br&gt;&lt;/p&gt;  '),
(277, 1, 19, '  Lg G watch  ', '  Flat 56% Off  ', '  At $99.99 - Only for today  '),
(280, 2, 20, ' Lg G watch ', ' Flat 56% Off ', ' At $99.99 - Only for today '),
(280, 1, 20, ' Lg G watch ', ' Flat 56% Off ', ' At $99.99 - Only for today '),
(279, 2, 20, ' Amkette ', ' Evo gamepad pro2 ', ' Amazing Gameplay on your Smartphone '),
(279, 1, 20, ' Amkette ', ' Evo gamepad pro2 ', ' Amazing Gameplay on your Smartphone '),
(275, 1, 18, ' Xbox One ', ' Special Edition Lunar  Black Wireless Controller ', ' $725.59 &lt;span&gt;$500.59&lt;/span&gt; ');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(1, 2, 'Radio'),
(2, 2, 'Checkbox'),
(4, 2, 'Text'),
(6, 2, 'Textarea'),
(8, 2, 'Date'),
(7, 2, 'File'),
(5, 2, 'Select'),
(9, 2, 'Time'),
(10, 2, 'Date &amp; Time'),
(12, 2, 'Delivery Date'),
(11, 2, 'Size');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(43, 2, 1, 'Large'),
(32, 2, 1, 'Small'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 2, 1, 'Medium'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(48, 2, 11, 'Large'),
(47, 2, 11, 'Medium'),
(46, 2, 11, 'Small');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, 0, 'INV-2017-00', 0, 'Lazio1', 'http://tt2_lazio1.com/', 2, 1, 'plaza', 'themes', 'demo1@plazathemes.com', '01234567890', '', '', 'plaza', 'themes', '', 'plaza', '', 'plaza', 'plaza', 'United Kingdom', 222, 'Angus', 3516, '', '[]', 'Cash On Delivery', 'cod', 'plaza', 'themes', '', 'plaza', '', 'plaza', 'plaza', 'United Kingdom', 222, 'Angus', 3516, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '308.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'en-US,en;q=0.8', '2017-10-07 10:58:04', '2017-10-07 10:58:29');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 1, 1, 0, '', '2017-10-07 10:58:08'),
(2, 1, 1, 0, '', '2017-10-07 10:58:29');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, 32, 'Donec Non Est', '5', 1, '300.0000', '300.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_shipment`
--

CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(2, 2, 'Processing'),
(3, 2, 'Shipped'),
(7, 2, 'Canceled'),
(5, 2, 'Complete'),
(8, 2, 'Denied'),
(9, 2, 'Canceled Reversal'),
(10, 2, 'Failed'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback'),
(1, 2, 'Pending'),
(16, 2, 'Voided'),
(15, 2, 'Processed'),
(14, 2, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(1, 1, 'sub_total', 'Sub-Total', '300.0000', 1),
(2, 1, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(3, 1, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(4, 1, 'tax', 'VAT (20%)', '1.0000', 5),
(5, 1, 'total', 'Total', '308.0000', 9);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(28, '1', '', '', '', '', '', '', '', 999999, 7, 'catalog/products/1.jpg', 9, 1, '320.0000', 200, 0, '2017-08-21', '146.40000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 63, '2009-02-03 16:06:50', '2017-10-23 10:47:35'),
(29, '2', '', '', '', '', '', '', '', 99999, 7, 'catalog/products/2.jpg', 8, 1, '280.0000', 0, 0, '2017-08-21', '133.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 27, '2009-02-03 16:42:17', '2017-10-19 11:20:07'),
(30, '3', '', '', '', '', '', '', '', 999999, 7, 'catalog/products/3.jpg', 8, 1, '260.0000', 0, 0, '2017-08-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 14, '2009-02-03 16:59:00', '2017-10-17 14:04:11'),
(31, '4', '', '', '', '', '', '', '', 999999, 7, 'catalog/products/4.jpg', 8, 1, '320.0000', 0, 0, '2017-08-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 8, '2009-02-03 17:00:10', '2017-10-17 14:04:48'),
(32, '5', '', '', '', '', '', '', '', 999998, 7, 'catalog/products/5.jpg', 8, 1, '300.0000', 0, 0, '2017-08-21', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 4, '2009-02-03 17:07:26', '2017-10-17 14:06:05'),
(33, '6', '', '', '', '', '', '', '', 999999, 7, 'catalog/products/6.jpg', 8, 1, '230.0000', 0, 0, '2017-08-21', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 2, '2009-02-03 17:08:31', '2017-10-17 14:06:43'),
(34, '7', '', '', '', '', '', '', '', 999999, 7, 'catalog/products/7.jpg', 8, 1, '320.0000', 0, 0, '2017-08-21', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 1, '2009-02-03 18:07:54', '2017-10-17 14:07:15'),
(35, '8', '', '', '', '', '', '', '', 999999, 7, 'catalog/products/8.jpg', 8, 0, '180.0000', 0, 0, '2017-08-21', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 2, '2009-02-03 18:08:31', '2017-10-17 14:08:09'),
(36, '9', '', '', '', '', '', '', '', 999999, 7, 'catalog/products/9.jpg', 8, 0, '320.0000', 100, 0, '2017-08-21', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 1, '2009-02-03 18:09:19', '2017-10-17 14:09:05'),
(40, '10', '', '', '', '', '', '', '', 999999, 7, 'catalog/products/10.jpg', 8, 1, '210.0000', 0, 0, '2017-08-21', '10.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 1, '2009-02-03 21:07:12', '2017-09-29 16:14:06'),
(41, '11', '', '', '', '', '', '', '', 999999, 7, 'catalog/products/11.jpg', 8, 1, '250.0000', 0, 0, '2017-08-21', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 4, '2009-02-03 21:07:26', '2017-09-29 16:21:17'),
(42, '12', '', '', '', '', '', '', '', 999999, 7, 'catalog/products/12.jpg', 8, 1, '350.0000', 400, 0, '2017-08-21', '12.50000000', 1, '1.00000000', '2.00000000', '3.00000000', 1, 1, 2, 0, 1, 11, '2009-02-03 21:07:37', '2017-09-29 16:28:00'),
(50, '1-1', '', '', '', '', '', '', '', 999999, 7, 'catalog/products1/1.jpg', 5, 1, '320.0000', 200, 0, '2017-08-21', '146.40000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 9, '2017-10-19 09:20:30', '2017-10-24 17:01:28'),
(51, '2-1', '', '', '', '', '', '', '', 99999, 7, 'catalog/products1/2.jpg', 8, 1, '280.0000', 0, 0, '2017-08-21', '133.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 1, '2017-10-19 10:38:54', '2017-10-24 17:01:40'),
(52, '3-1', '', '', '', '', '', '', '', 999999, 7, 'catalog/products1/3.jpg', 8, 1, '260.0000', 0, 0, '2017-08-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 2, '2017-10-19 11:20:19', '2017-10-24 17:01:51'),
(53, '4-1', '', '', '', '', '', '', '', 999999, 7, 'catalog/products1/4.jpg', 8, 1, '320.0000', 0, 0, '2017-08-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 1, '2017-10-19 13:40:41', '2017-10-24 17:02:03'),
(54, '5-1', '', '', '', '', '', '', '', 999998, 7, 'catalog/products1/5.jpg', 8, 1, '300.0000', 0, 0, '2017-08-21', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 2, '2017-10-19 13:52:38', '2017-10-24 17:02:17'),
(55, '6-1', '', '', '', '', '', '', '', 999999, 7, 'catalog/products1/6.jpg', 8, 1, '230.0000', 0, 0, '2017-08-21', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 2, '2017-10-19 14:14:50', '2017-10-24 17:02:31'),
(56, '7-1', '', '', '', '', '', '', '', 999999, 7, 'catalog/products1/7.jpg', 8, 1, '320.0000', 0, 0, '2017-08-21', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 3, '2017-10-19 14:24:56', '2017-10-24 17:02:42'),
(57, '8-1', '', '', '', '', '', '', '', 999999, 7, 'catalog/products1/8.jpg', 8, 0, '180.0000', 0, 0, '2017-08-21', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 2, '2017-10-19 14:43:37', '2017-10-19 14:53:47'),
(58, '9-1', '', '', '', '', '', '', '', 999999, 7, 'catalog/products1/9.jpg', 8, 0, '320.0000', 100, 0, '2017-08-21', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 2, '2017-10-19 14:53:57', '2017-10-24 17:02:55'),
(59, '10-1', '', '', '', '', '', '', '', 999999, 7, 'catalog/products1/10.jpg', 8, 1, '210.0000', 0, 0, '2017-08-21', '10.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 4, '2017-10-19 15:16:36', '2017-10-24 17:03:05'),
(60, '11-1', '', '', '', '', '', '', '', 999999, 7, 'catalog/products1/11.jpg', 8, 1, '250.0000', 0, 0, '2017-08-21', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 2, '2017-10-19 15:33:11', '2017-10-24 17:03:16'),
(61, '12-1', '', '', '', '', '', '', '', 999999, 7, 'catalog/products1/12.jpg', 8, 1, '350.0000', 400, 0, '2017-08-21', '12.50000000', 1, '1.00000000', '2.00000000', '3.00000000', 1, 1, 2, 0, 1, 7, '2017-10-19 15:58:50', '2017-10-24 17:03:33'),
(62, '1-2', '', '', '', '', '', '', '', 999999, 7, 'catalog/products2/1.jpg', 9, 1, '320.0000', 200, 0, '2017-08-21', '146.40000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 6, '2017-10-26 08:44:46', '2017-10-26 08:52:03'),
(63, '2-2', '', '', '', '', '', '', '', 99999, 7, 'catalog/products2/2.jpg', 8, 1, '280.0000', 0, 0, '2017-08-21', '133.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 2, '2017-10-26 08:52:48', '2017-10-26 08:57:52'),
(64, '3-2', '', '', '', '', '', '', '', 999999, 7, 'catalog/products2/3.jpg', 8, 1, '260.0000', 0, 0, '2017-08-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 1, '2017-10-26 08:58:01', '2017-10-26 09:01:29'),
(65, '4-2', '', '', '', '', '', '', '', 999999, 7, 'catalog/products2/5.jpg', 8, 1, '320.0000', 0, 0, '2017-08-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 1, '2017-10-26 09:01:47', '2017-10-26 09:05:55'),
(66, '5-2', '', '', '', '', '', '', '', 999998, 7, 'catalog/products2/6.jpg', 8, 1, '300.0000', 0, 0, '2017-08-21', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 2, '2017-10-26 09:06:04', '2017-10-26 09:11:12'),
(67, '6-2', '', '', '', '', '', '', '', 999999, 7, 'catalog/products2/7.jpg', 8, 1, '230.0000', 0, 0, '2017-08-21', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 2, '2017-10-26 09:11:41', '2017-10-26 09:15:42'),
(68, '7-2', '', '', '', '', '', '', '', 999999, 7, 'catalog/products2/8.jpg', 8, 1, '320.0000', 0, 0, '2017-08-21', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 2, '2017-10-26 09:15:58', '2017-10-26 09:19:19'),
(69, '8-2', '', '', '', '', '', '', '', 999999, 7, 'catalog/products2/9.jpg', 8, 0, '180.0000', 0, 0, '2017-08-21', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 2, '2017-10-26 09:19:29', '2017-10-26 09:22:54'),
(70, '9-2', '', '', '', '', '', '', '', 999999, 7, 'catalog/products2/10.jpg', 8, 0, '320.0000', 100, 0, '2017-08-21', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 4, '2017-10-26 09:23:03', '2017-10-26 09:26:47');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(42, 3, 1, '100mhz'),
(42, 3, 2, '100mhz'),
(61, 3, 1, '100mhz'),
(61, 3, 2, '100mhz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(28, 2, 'Accumsan Elit', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.\r\n', '', 'Accumsan Elit', '', ''),
(35, 2, 'Letraset Sheets', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Letraset Sheets', '', ''),
(32, 2, 'Donec Non Est', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Donec Non Est', '', ''),
(34, 2, 'Fusce Aliquam', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Fusce Aliquam', '', ''),
(33, 2, 'Etiam Gravida', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Etiam Gravida', '', ''),
(30, 2, 'Cas Meque Metus', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Cas Meque Metus', '', ''),
(35, 1, 'Letraset Sheets', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Letraset Sheets', '', ''),
(40, 2, 'Proin Lectus Ipsum', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Proin Lectus Ipsum', '', ''),
(28, 1, 'Accumsan Elit', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.\r\n', '', 'Accumsan Elit', '', ''),
(29, 2, 'Aliquam Consequat', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.\r\n', '', 'Aliquam Consequat', '', ''),
(36, 1, 'Lorem Ipsum', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Lorem Ipsum', '', ''),
(36, 2, 'Lorem Ipsum', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Lorem Ipsum', '', ''),
(32, 1, 'Donec Non Est', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Donec Non Est', '', ''),
(41, 2, 'Quisque In Arcu', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Quisque In Arcu', '', ''),
(33, 1, 'Etiam Gravida', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Etiam Gravida', '', ''),
(34, 1, 'Fusce Aliquam', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Fusce Aliquam', '', ''),
(31, 1, 'Donec Ac Tempus', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Donec Ac Tempus', '', ''),
(31, 2, 'Donec Ac Tempus', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Donec Ac Tempus', '', ''),
(42, 2, 'Ras Neque Metus', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Ras Neque Metus', '', ''),
(42, 1, 'Ras Neque Metus', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Ras Neque Metus', '', ''),
(30, 1, 'Cas Meque Metus', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Cas Meque Metus', '', ''),
(40, 1, 'Proin Lectus Ipsum', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Proin Lectus Ipsum', '', ''),
(41, 1, 'Quisque In Arcu', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Quisque In Arcu', '', ''),
(29, 1, 'Aliquam Consequat', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.\r\n', '', 'Aliquam Consequat', '', ''),
(50, 2, 'Cas Neque Tetus', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.\r\n', '', 'Cas Neque Tetus', '', ''),
(50, 1, 'Cas Neque Tetus', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.\r\n', '', 'Cas Neque Tetus', '', ''),
(51, 1, 'Corem Ipsum', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.\r\n', '', 'Corem Ipsum', '', ''),
(51, 2, 'Corem Ipsum', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.\r\n', '', 'Corem Ipsum', '', ''),
(52, 1, 'Donec Mon Ost', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Donec Mon Ost', '', ''),
(52, 2, 'Donec Mon Ost', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Donec Mon Ost', '', ''),
(53, 1, 'Donec Oc Nempus', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Donec Oc Nempus', '', ''),
(53, 2, 'Donec Oc Nempus', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Donec Oc Nempus', '', ''),
(54, 2, 'Dorem Opsum Passages', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Dorem Opsum Passages', '', ''),
(54, 1, 'Dorem Opsum Passages', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Dorem Opsum Passages', '', ''),
(55, 1, 'Fusce Oliquam', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Fusce Oliquam', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(55, 2, 'Fusce Oliquam', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Fusce Oliquam', '', ''),
(56, 1, 'Mas Eque Netus', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Mas Eque Netus', '', ''),
(56, 2, 'Mas Eque Netus', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Mas Eque Netus', '', ''),
(57, 2, 'Metraset Shos', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Metraset Shos', '', ''),
(57, 1, 'Metraset Shos', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Metraset Shos', '', ''),
(58, 2, 'Munc Acilisis', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Munc Acilisis', '', ''),
(58, 1, 'Munc Acilisis', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Munc Acilisis', '', ''),
(59, 1, 'Occumsan Olit', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Occumsan Olit', '', ''),
(59, 2, 'Occumsan Olit', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Occumsan Olit', '', ''),
(60, 2, 'Oliquam Consequat', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Oliquam Consequat', '', ''),
(60, 1, 'Oliquam Consequat', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Oliquam Consequat', '', ''),
(61, 1, 'Otiam Gravida', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Otiam Gravida', '', ''),
(61, 2, 'Otiam Gravida', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Otiam Gravida', '', ''),
(62, 2, 'Acamson Elet', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.\r\n', '', 'Acamson Elet', '', ''),
(62, 1, 'Acamson Elet', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.\r\n', '', 'Acamson Elet', '', ''),
(63, 2, 'Conac Oc Pempus', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.\r\n', '', 'Conac Oc Pempus', '', ''),
(63, 1, 'Conac Oc Pempus', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.\r\n', '', 'Conac Oc Pempus', '', ''),
(64, 2, 'Munco Facilisis', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Munco Facilisis', '', ''),
(64, 1, 'Munco Facilisis', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Munco Facilisis', '', ''),
(65, 2, 'Petraset Cheets', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Petraset Cheets', '', ''),
(65, 1, 'Petraset Cheets', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Petraset Cheets', '', ''),
(66, 2, 'Olaquem Consaquat', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Olaquem Consaquat', '', ''),
(66, 1, 'Olaquem Consaquat', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Olaquem Consaquat', '', ''),
(67, 2, 'Pocem Opsam', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Pocem Opsam', '', ''),
(67, 1, 'Pocem Opsam', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Pocem Opsam', '', ''),
(68, 2, 'Ponac Mon Ost', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Ponac Mon Ost', '', ''),
(68, 1, 'Ponac Mon Ost', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Ponac Mon Ost', '', ''),
(69, 2, 'Qusce Olaquam', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Qusce Olaquam', '', ''),
(69, 1, 'Qusce Olaquam', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Qusce Olaquam', '', ''),
(70, 2, 'Rocem Opsum Passages', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Rocem Opsum Passages', '', ''),
(70, 1, 'Rocem Opsum Passages', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.', '', 'Rocem Opsum Passages', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(449, 42, 1, 30, 1, '66.0000', '0000-00-00', '0000-00-00'),
(448, 42, 1, 20, 1, '77.0000', '0000-00-00', '0000-00-00'),
(447, 42, 1, 10, 1, '88.0000', '0000-00-00', '0000-00-00'),
(458, 61, 1, 30, 1, '66.0000', '0000-00-00', '0000-00-00'),
(457, 61, 1, 20, 1, '77.0000', '0000-00-00', '0000-00-00'),
(456, 61, 1, 10, 1, '88.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_filter`
--

INSERT INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES
(28, 1),
(28, 2),
(28, 3),
(28, 4),
(28, 5),
(28, 6),
(28, 7),
(28, 8),
(28, 10),
(28, 11),
(28, 12),
(28, 13),
(28, 14),
(29, 1),
(29, 2),
(29, 3),
(29, 4),
(29, 5),
(29, 7),
(29, 8),
(29, 10),
(29, 11),
(29, 12),
(29, 13),
(29, 14),
(30, 1),
(30, 2),
(30, 3),
(30, 4),
(30, 5),
(30, 6),
(30, 7),
(30, 9),
(30, 10),
(30, 11),
(30, 12),
(30, 13),
(30, 14),
(31, 1),
(31, 2),
(31, 3),
(31, 4),
(31, 5),
(31, 6),
(31, 7),
(31, 8),
(31, 9),
(31, 10),
(31, 11),
(31, 12),
(31, 13),
(31, 14),
(32, 1),
(32, 2),
(32, 3),
(32, 4),
(32, 5),
(32, 6),
(32, 7),
(32, 8),
(32, 9),
(32, 10),
(32, 11),
(32, 12),
(32, 13),
(32, 14),
(33, 1),
(33, 2),
(33, 3),
(33, 4),
(33, 5),
(33, 6),
(33, 7),
(33, 8),
(33, 9),
(33, 10),
(33, 11),
(33, 12),
(33, 13),
(33, 14),
(34, 1),
(34, 2),
(34, 3),
(34, 4),
(34, 5),
(34, 6),
(34, 7),
(34, 8),
(34, 10),
(34, 11),
(34, 12),
(34, 13),
(34, 14),
(35, 1),
(35, 2),
(35, 3),
(35, 4),
(35, 5),
(35, 6),
(35, 7),
(35, 8),
(35, 9),
(35, 10),
(35, 11),
(35, 12),
(35, 13),
(35, 14),
(36, 1),
(36, 2),
(36, 3),
(36, 4),
(36, 5),
(36, 6),
(36, 7),
(36, 8),
(36, 9),
(36, 10),
(36, 11),
(36, 12),
(36, 13),
(36, 14),
(40, 1),
(40, 2),
(40, 3),
(40, 4),
(40, 5),
(40, 7),
(40, 8),
(40, 9),
(40, 10),
(40, 11),
(40, 12),
(40, 13),
(40, 14),
(41, 1),
(41, 2),
(41, 3),
(41, 4),
(41, 5),
(41, 6),
(41, 7),
(41, 8),
(41, 9),
(41, 10),
(41, 11),
(41, 12),
(41, 13),
(41, 14),
(42, 1),
(42, 2),
(42, 3),
(42, 4),
(42, 5),
(42, 6),
(42, 7),
(42, 8),
(42, 9),
(42, 10),
(42, 11),
(42, 12),
(42, 13),
(42, 14),
(50, 1),
(50, 2),
(50, 3),
(50, 4),
(50, 5),
(50, 6),
(50, 7),
(50, 8),
(50, 10),
(50, 11),
(50, 12),
(50, 13),
(50, 14),
(51, 1),
(51, 2),
(51, 3),
(51, 4),
(51, 5),
(51, 7),
(51, 8),
(51, 10),
(51, 11),
(51, 12),
(51, 13),
(51, 14),
(52, 1),
(52, 2),
(52, 3),
(52, 4),
(52, 5),
(52, 6),
(52, 7),
(52, 9),
(52, 10),
(52, 11),
(52, 12),
(52, 13),
(52, 14),
(53, 1),
(53, 2),
(53, 3),
(53, 4),
(53, 5),
(53, 6),
(53, 7),
(53, 8),
(53, 9),
(53, 10),
(53, 11),
(53, 12),
(53, 13),
(53, 14),
(54, 1),
(54, 2),
(54, 3),
(54, 4),
(54, 5),
(54, 6),
(54, 7),
(54, 8),
(54, 9),
(54, 10),
(54, 11),
(54, 12),
(54, 13),
(54, 14),
(55, 1),
(55, 2),
(55, 3),
(55, 4),
(55, 5),
(55, 6),
(55, 7),
(55, 8),
(55, 9),
(55, 10),
(55, 11),
(55, 12),
(55, 13),
(55, 14),
(56, 1),
(56, 2),
(56, 3),
(56, 4),
(56, 5),
(56, 6),
(56, 7),
(56, 8),
(56, 10),
(56, 11),
(56, 12),
(56, 13),
(56, 14),
(57, 1),
(57, 2),
(57, 3),
(57, 4),
(57, 5),
(57, 6),
(57, 7),
(57, 8),
(57, 9),
(57, 10),
(57, 11),
(57, 12),
(57, 13),
(57, 14),
(58, 1),
(58, 2),
(58, 3),
(58, 4),
(58, 5),
(58, 6),
(58, 7),
(58, 8),
(58, 9),
(58, 10),
(58, 11),
(58, 12),
(58, 13),
(58, 14),
(59, 1),
(59, 2),
(59, 3),
(59, 4),
(59, 5),
(59, 7),
(59, 8),
(59, 9),
(59, 10),
(59, 11),
(59, 12),
(59, 13),
(59, 14),
(60, 1),
(60, 2),
(60, 3),
(60, 4),
(60, 5),
(60, 6),
(60, 7),
(60, 8),
(60, 9),
(60, 10),
(60, 11),
(60, 12),
(60, 13),
(60, 14),
(61, 1),
(61, 2),
(61, 3),
(61, 4),
(61, 5),
(61, 6),
(61, 7),
(61, 8),
(61, 9),
(61, 10),
(61, 11),
(61, 12),
(61, 13),
(61, 14),
(62, 1),
(62, 2),
(62, 3),
(62, 4),
(62, 5),
(62, 6),
(62, 7),
(62, 8),
(62, 10),
(62, 11),
(62, 12),
(62, 13),
(62, 14),
(63, 1),
(63, 2),
(63, 3),
(63, 4),
(63, 5),
(63, 7),
(63, 8),
(63, 10),
(63, 11),
(63, 12),
(63, 13),
(63, 14),
(64, 1),
(64, 2),
(64, 3),
(64, 4),
(64, 5),
(64, 6),
(64, 7),
(64, 9),
(64, 10),
(64, 11),
(64, 12),
(64, 13),
(64, 14),
(65, 1),
(65, 2),
(65, 3),
(65, 4),
(65, 5),
(65, 6),
(65, 7),
(65, 8),
(65, 9),
(65, 10),
(65, 11),
(65, 12),
(65, 13),
(65, 14),
(66, 1),
(66, 2),
(66, 3),
(66, 4),
(66, 5),
(66, 6),
(66, 7),
(66, 8),
(66, 9),
(66, 10),
(66, 11),
(66, 12),
(66, 13),
(66, 14),
(67, 1),
(67, 2),
(67, 3),
(67, 4),
(67, 5),
(67, 6),
(67, 7),
(67, 8),
(67, 9),
(67, 10),
(67, 11),
(67, 12),
(67, 13),
(67, 14),
(68, 1),
(68, 2),
(68, 3),
(68, 4),
(68, 5),
(68, 6),
(68, 7),
(68, 8),
(68, 10),
(68, 11),
(68, 12),
(68, 13),
(68, 14),
(69, 1),
(69, 2),
(69, 3),
(69, 4),
(69, 5),
(69, 6),
(69, 7),
(69, 8),
(69, 9),
(69, 10),
(69, 11),
(69, 12),
(69, 13),
(69, 14),
(70, 1),
(70, 2),
(70, 3),
(70, 4),
(70, 5),
(70, 6),
(70, 7),
(70, 8),
(70, 9),
(70, 10),
(70, 11),
(70, 12),
(70, 13),
(70, 14);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `is_rotator` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`, `is_rotator`) VALUES
(2715, 28, 'catalog/products/12.jpg', 0, 0),
(2556, 41, 'catalog/products/12.jpg', 0, 1),
(2553, 40, 'catalog/products/11.jpg', 0, 1),
(2600, 36, 'catalog/products/12.jpg', 0, 0),
(2592, 34, 'catalog/products/12.jpg', 0, 0),
(2591, 34, 'catalog/products/10.jpg', 0, 1),
(2584, 32, 'catalog/products/6.jpg', 0, 0),
(2582, 32, 'catalog/products/3.jpg', 0, 1),
(2577, 31, 'catalog/products/13.jpg', 0, 0),
(2620, 29, 'catalog/products/16.jpg', 0, 0),
(2552, 40, 'catalog/products/12.jpg', 0, 0),
(2551, 40, 'catalog/products/13.jpg', 0, 0),
(2573, 30, 'catalog/products/6.jpg', 0, 0),
(2714, 28, 'catalog/products/10.jpg', 0, 0),
(2555, 41, 'catalog/products/13.jpg', 0, 0),
(2550, 40, 'catalog/products/14.jpg', 0, 0),
(2549, 40, 'catalog/products/16.jpg', 0, 0),
(2601, 36, 'catalog/products/16.jpg', 0, 0),
(2599, 36, 'catalog/products/10.jpg', 0, 1),
(2590, 34, 'catalog/products/1.jpg', 0, 0),
(2589, 34, 'catalog/products/16.jpg', 0, 0),
(2583, 32, 'catalog/products/13.jpg', 0, 0),
(2581, 32, 'catalog/products/12.jpg', 0, 0),
(2578, 31, 'catalog/products/12.jpg', 0, 1),
(2576, 31, 'catalog/products/10.jpg', 0, 0),
(2623, 29, 'catalog/products/6.jpg', 0, 0),
(2561, 42, 'catalog/products/13.jpg', 0, 0),
(2560, 42, 'catalog/products/14.jpg', 0, 1),
(2559, 42, 'catalog/products/10.jpg', 0, 0),
(2558, 42, 'catalog/products/18.jpg', 0, 0),
(2557, 42, 'catalog/products/17.jpg', 0, 0),
(2574, 30, 'catalog/products/14.jpg', 0, 1),
(2572, 30, 'catalog/products/10.jpg', 0, 0),
(2712, 28, 'catalog/products/7.jpg', 0, 0),
(2554, 41, 'catalog/products/17.jpg', 0, 0),
(2622, 29, 'catalog/products/14.jpg', 0, 1),
(2621, 29, 'catalog/products/15.jpg', 0, 0),
(2597, 35, 'catalog/products/11.jpg', 0, 0),
(2596, 35, 'catalog/products/15.jpg', 0, 0),
(2595, 35, 'catalog/products/14.jpg', 0, 0),
(2594, 35, 'catalog/products/10.jpg', 0, 1),
(2587, 33, 'catalog/products/11.jpg', 0, 0),
(2586, 33, 'catalog/products/10.jpg', 0, 0),
(2713, 28, 'catalog/products/11.jpg', 0, 1),
(2571, 30, 'catalog/products/1.jpg', 0, 0),
(2575, 31, 'catalog/products/1.jpg', 0, 0),
(2580, 32, 'catalog/products/10.jpg', 0, 0),
(2579, 32, 'catalog/products/1.jpg', 0, 0),
(2585, 33, 'catalog/products/1.jpg', 0, 1),
(2593, 35, 'catalog/products/1.jpg', 0, 0),
(2598, 36, 'catalog/products/1.jpg', 0, 0),
(2588, 33, 'catalog/products/7.jpg', 0, 0),
(2721, 50, 'catalog/products1/3.jpg', 0, 1),
(2720, 50, 'catalog/products1/10.jpg', 0, 0),
(2719, 50, 'catalog/products1/11.jpg', 0, 0),
(2718, 50, 'catalog/products1/12.jpg', 0, 0),
(2717, 50, 'catalog/products1/14.jpg', 0, 0),
(2725, 51, 'catalog/products1/5.jpg', 0, 0),
(2724, 51, 'catalog/products1/1.jpg', 0, 0),
(2723, 51, 'catalog/products1/4.jpg', 0, 1),
(2722, 51, 'catalog/products1/7.jpg', 0, 0),
(2773, 62, 'catalog/products2/11.jpg', 0, 0),
(2729, 52, 'catalog/products1/7.jpg', 0, 0),
(2727, 52, 'catalog/products/14.jpg', 0, 1),
(2728, 52, 'catalog/products1/1.jpg', 0, 0),
(2726, 52, 'catalog/products1/3.jpg', 0, 0),
(2733, 53, 'catalog/products1/8.jpg', 0, 0),
(2732, 53, 'catalog/products1/7.jpg', 0, 1),
(2731, 53, 'catalog/products1/5.jpg', 0, 0),
(2730, 53, 'catalog/products1/6.jpg', 0, 0),
(2739, 54, 'catalog/products1/12.jpg', 0, 0),
(2738, 54, 'catalog/products1/8.jpg', 0, 0),
(2737, 54, 'catalog/products1/14.jpg', 0, 1),
(2735, 54, 'catalog/products1/10.jpg', 0, 0),
(2736, 54, 'catalog/products1/1.jpg', 0, 0),
(2734, 54, 'catalog/products1/11.jpg', 0, 0),
(2743, 55, 'catalog/products1/12.jpg', 0, 0),
(2742, 55, 'catalog/products1/9.jpg', 0, 1),
(2741, 55, 'catalog/products1/1.jpg', 0, 0),
(2740, 55, 'catalog/products1/10.jpg', 0, 0),
(2747, 56, 'catalog/products1/13.jpg', 0, 0),
(2746, 56, 'catalog/products1/12.jpg', 0, 1),
(2745, 56, 'catalog/products1/1.jpg', 0, 0),
(2744, 56, 'catalog/products1/10.jpg', 0, 0),
(2676, 57, 'catalog/products1/12.jpg', 0, 0),
(2675, 57, 'catalog/products1/1.jpg', 0, 0),
(2674, 57, 'catalog/products1/10.jpg', 0, 0),
(2673, 57, 'catalog/products1/6.jpg', 0, 1),
(2677, 57, 'catalog/products1/17.jpg', 0, 0),
(2751, 58, 'catalog/products1/12.jpg', 0, 0),
(2750, 58, 'catalog/products1/15.jpg', 0, 1),
(2749, 58, 'catalog/products1/1.jpg', 0, 0),
(2748, 58, 'catalog/products1/10.jpg', 0, 0),
(2756, 59, 'catalog/products1/2.jpg', 0, 1),
(2755, 59, 'catalog/products1/11.jpg', 0, 0),
(2754, 59, 'catalog/products1/12.jpg', 0, 0),
(2753, 59, 'catalog/products1/15.jpg', 0, 0),
(2752, 59, 'catalog/products1/4.jpg', 0, 0),
(2759, 60, 'catalog/products1/4.jpg', 0, 1),
(2758, 60, 'catalog/products1/13.jpg', 0, 0),
(2757, 60, 'catalog/products1/15.jpg', 0, 0),
(2764, 61, 'catalog/products1/7.jpg', 0, 1),
(2763, 61, 'catalog/products1/1.jpg', 0, 0),
(2762, 61, 'catalog/products1/10.jpg', 0, 0),
(2761, 61, 'catalog/products1/11.jpg', 0, 0),
(2760, 61, 'catalog/products1/2.jpg', 0, 0),
(2716, 28, 'catalog/products/13.jpg', 0, 0),
(2772, 62, 'catalog/products2/10.jpg', 0, 0),
(2771, 62, 'catalog/products2/2.jpg', 0, 0),
(2770, 62, 'catalog/products2/15.jpg', 0, 1),
(2774, 62, 'catalog/products2/8.jpg', 0, 0),
(2781, 63, 'catalog/products2/7.jpg', 0, 0),
(2780, 63, 'catalog/products2/22.jpg', 0, 0),
(2779, 63, 'catalog/products2/5.jpg', 0, 1),
(2782, 63, 'catalog/products2/8.jpg', 0, 0),
(2789, 64, 'catalog/products2/12.jpg', 0, 0),
(2788, 64, 'catalog/products2/10.jpg', 0, 1),
(2787, 64, 'catalog/products2/8.jpg', 0, 0),
(2790, 64, 'catalog/products2/11.jpg', 0, 0),
(2797, 65, 'catalog/products2/12.jpg', 0, 0),
(2796, 65, 'catalog/products2/11.jpg', 0, 0),
(2795, 65, 'catalog/products2/1.jpg', 0, 1),
(2798, 65, 'catalog/products2/4.jpg', 0, 0),
(2809, 66, 'catalog/products2/16.jpg', 0, 0),
(2808, 66, 'catalog/products2/15.jpg', 0, 0),
(2807, 66, 'catalog/products2/13.jpg', 0, 0),
(2806, 66, 'catalog/products2/12.jpg', 0, 0),
(2805, 66, 'catalog/products2/11.jpg', 0, 1),
(2810, 66, 'catalog/products2/4.jpg', 0, 0),
(2817, 67, 'catalog/products2/7.jpg', 0, 0),
(2816, 67, 'catalog/products2/12.jpg', 0, 1),
(2815, 67, 'catalog/products2/11.jpg', 0, 0),
(2818, 67, 'catalog/products2/4.jpg', 0, 0),
(2825, 68, 'catalog/products2/12.jpg', 0, 0),
(2824, 68, 'catalog/products2/11.jpg', 0, 0),
(2823, 68, 'catalog/products2/1.jpg', 0, 1),
(2826, 68, 'catalog/products2/22.jpg', 0, 0),
(2835, 69, 'catalog/products2/13.jpg', 0, 0),
(2834, 69, 'catalog/products2/12.jpg', 0, 0),
(2833, 69, 'catalog/products2/10.jpg', 0, 0),
(2832, 69, 'catalog/products2/11.jpg', 0, 1),
(2836, 69, 'catalog/products2/16.jpg', 0, 0),
(2843, 70, 'catalog/products2/12.jpg', 0, 0),
(2842, 70, 'catalog/products2/11.jpg', 0, 0),
(2841, 70, 'catalog/products2/8.jpg', 0, 1),
(2844, 70, 'catalog/products2/16.jpg', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(224, 35, 11, '', 1),
(222, 42, 7, '', 1),
(219, 42, 8, '2011-02-20', 1),
(208, 42, 4, 'test', 1),
(226, 30, 5, '', 1),
(218, 42, 1, '', 1),
(209, 42, 6, '', 1),
(217, 42, 5, '', 1),
(223, 42, 2, '', 1),
(221, 42, 9, '22:25', 1),
(220, 42, 10, '2011-02-20 22:25', 1),
(227, 52, 5, '', 1),
(228, 57, 11, '', 1),
(236, 61, 9, '22:25', 1),
(229, 61, 7, '', 1),
(230, 61, 8, '2011-02-20', 1),
(231, 61, 4, 'test', 1),
(232, 61, 1, '', 1),
(233, 61, 6, '', 1),
(234, 61, 5, '', 1),
(235, 61, 2, '', 1),
(237, 61, 10, '2011-02-20 22:25', 1),
(238, 64, 5, '', 1),
(239, 69, 11, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(6, 218, 42, 1, 31, 146, 1, '20.0000', '+', 2, '-', '20.00000000', '+'),
(5, 218, 42, 1, 32, 96, 1, '10.0000', '+', 1, '+', '10.00000000', '+'),
(2, 217, 42, 5, 42, 200, 1, '2.0000', '+', 0, '+', '2.00000000', '+'),
(1, 217, 42, 5, 41, 100, 0, '1.0000', '+', 0, '+', '1.00000000', '+'),
(3, 217, 42, 5, 40, 300, 0, '3.0000', '+', 0, '+', '3.00000000', '+'),
(4, 217, 42, 5, 39, 92, 1, '4.0000', '+', 0, '+', '4.00000000', '+'),
(11, 223, 42, 2, 45, 3998, 1, '40.0000', '+', 0, '+', '40.00000000', '+'),
(14, 224, 35, 11, 48, 15, 1, '15.0000', '+', 0, '+', '0.00000000', '+'),
(13, 224, 35, 11, 47, 10, 1, '10.0000', '+', 0, '+', '0.00000000', '+'),
(12, 224, 35, 11, 46, 0, 1, '5.0000', '+', 0, '+', '0.00000000', '+'),
(16, 226, 30, 5, 40, 5, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(15, 226, 30, 5, 39, 2, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(10, 223, 42, 2, 44, 2696, 1, '30.0000', '+', 0, '+', '30.00000000', '+'),
(9, 223, 42, 2, 24, 194, 1, '20.0000', '+', 0, '+', '20.00000000', '+'),
(8, 223, 42, 2, 23, 48, 1, '10.0000', '+', 0, '+', '10.00000000', '+'),
(7, 218, 42, 1, 43, 300, 1, '30.0000', '+', 3, '+', '30.00000000', '+'),
(18, 227, 52, 5, 40, 5, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(17, 227, 52, 5, 39, 2, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(21, 228, 57, 11, 48, 15, 1, '15.0000', '+', 0, '+', '0.00000000', '+'),
(20, 228, 57, 11, 47, 10, 1, '10.0000', '+', 0, '+', '0.00000000', '+'),
(19, 228, 57, 11, 46, 0, 1, '5.0000', '+', 0, '+', '0.00000000', '+'),
(24, 232, 61, 1, 43, 300, 1, '30.0000', '+', 3, '+', '30.00000000', '+'),
(23, 232, 61, 1, 31, 146, 1, '20.0000', '+', 2, '-', '20.00000000', '+'),
(22, 232, 61, 1, 32, 96, 1, '10.0000', '+', 1, '+', '10.00000000', '+'),
(27, 234, 61, 5, 41, 100, 0, '1.0000', '+', 0, '+', '1.00000000', '+'),
(28, 234, 61, 5, 42, 200, 1, '2.0000', '+', 0, '+', '2.00000000', '+'),
(26, 234, 61, 5, 40, 300, 0, '3.0000', '+', 0, '+', '3.00000000', '+'),
(32, 235, 61, 2, 45, 3998, 1, '40.0000', '+', 0, '+', '40.00000000', '+'),
(25, 234, 61, 5, 39, 92, 1, '4.0000', '+', 0, '+', '4.00000000', '+'),
(31, 235, 61, 2, 44, 2696, 1, '30.0000', '+', 0, '+', '30.00000000', '+'),
(30, 235, 61, 2, 24, 194, 1, '20.0000', '+', 0, '+', '20.00000000', '+'),
(29, 235, 61, 2, 23, 48, 1, '10.0000', '+', 0, '+', '10.00000000', '+'),
(34, 238, 64, 5, 40, 5, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(33, 238, 64, 5, 39, 2, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(37, 239, 69, 11, 48, 15, 1, '15.0000', '+', 0, '+', '0.00000000', '+'),
(36, 239, 69, 11, 47, 10, 1, '10.0000', '+', 0, '+', '0.00000000', '+'),
(35, 239, 69, 11, 46, 0, 1, '5.0000', '+', 0, '+', '0.00000000', '+');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(28, 29),
(28, 31),
(28, 32),
(28, 33),
(28, 34),
(28, 35),
(28, 36),
(28, 56),
(29, 28),
(31, 28),
(32, 28),
(33, 28),
(34, 28),
(35, 28),
(36, 28),
(56, 28);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(563, 42, 1, 100),
(572, 28, 1, 400),
(565, 30, 1, 200),
(573, 50, 1, 400),
(574, 52, 1, 200),
(575, 61, 1, 100),
(577, 62, 1, 400),
(579, 64, 1, 200);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(459, 42, 1, 1, '90.0000', '2017-08-21', '2018-08-21'),
(462, 30, 1, 2, '90.0000', '0000-00-00', '0000-00-00'),
(461, 30, 1, 1, '80.0000', '0000-00-00', '0000-00-00'),
(477, 28, 1, 1, '230.0000', '2017-08-21', '2018-08-21'),
(463, 33, 1, 1, '120.0000', '2017-08-21', '2018-08-21'),
(464, 36, 1, 1, '150.0000', '2017-08-21', '2018-08-21'),
(478, 50, 1, 1, '230.0000', '2017-08-21', '2018-08-21'),
(480, 52, 1, 2, '90.0000', '0000-00-00', '0000-00-00'),
(479, 52, 1, 1, '80.0000', '0000-00-00', '0000-00-00'),
(481, 55, 1, 1, '120.0000', '2017-08-21', '2018-08-21'),
(482, 58, 1, 1, '150.0000', '2017-08-21', '2018-08-21'),
(483, 61, 1, 1, '90.0000', '2017-08-21', '2018-08-21'),
(485, 62, 1, 1, '230.0000', '2017-08-21', '2018-08-21'),
(489, 64, 1, 2, '90.0000', '0000-00-00', '0000-00-00'),
(488, 64, 1, 1, '80.0000', '0000-00-00', '0000-00-00'),
(491, 67, 1, 1, '120.0000', '2017-08-21', '2018-08-21'),
(493, 70, 1, 1, '150.0000', '2017-08-21', '2018-08-21');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(28, 90),
(28, 91),
(28, 92),
(28, 93),
(28, 95),
(28, 96),
(28, 97),
(28, 98),
(28, 99),
(28, 100),
(28, 101),
(28, 102),
(28, 103),
(28, 104),
(28, 105),
(28, 106),
(28, 107),
(28, 108),
(28, 109),
(28, 110),
(28, 111),
(28, 112),
(28, 113),
(28, 114),
(28, 115),
(28, 116),
(28, 117),
(28, 118),
(28, 119),
(28, 120),
(28, 121),
(28, 122),
(28, 123),
(28, 124),
(29, 90),
(29, 91),
(29, 92),
(29, 93),
(29, 95),
(29, 96),
(29, 97),
(29, 98),
(29, 99),
(29, 100),
(29, 101),
(29, 102),
(29, 103),
(29, 104),
(29, 105),
(29, 106),
(29, 107),
(29, 108),
(29, 109),
(29, 110),
(29, 111),
(29, 112),
(29, 113),
(29, 114),
(29, 115),
(29, 116),
(29, 117),
(29, 118),
(29, 119),
(29, 120),
(29, 121),
(29, 122),
(29, 123),
(29, 124),
(29, 125),
(29, 126),
(29, 127),
(29, 128),
(29, 129),
(29, 130),
(29, 131),
(29, 132),
(29, 133),
(29, 134),
(29, 135),
(29, 136),
(29, 137),
(29, 138),
(30, 90),
(30, 91),
(30, 92),
(30, 93),
(30, 95),
(30, 96),
(30, 97),
(30, 98),
(30, 99),
(30, 100),
(30, 101),
(30, 102),
(30, 103),
(30, 104),
(30, 105),
(30, 106),
(30, 107),
(30, 108),
(30, 109),
(30, 110),
(30, 111),
(30, 112),
(30, 113),
(30, 114),
(30, 115),
(30, 116),
(30, 117),
(30, 118),
(30, 119),
(30, 120),
(30, 121),
(30, 122),
(30, 123),
(30, 124),
(30, 125),
(30, 126),
(30, 127),
(30, 128),
(30, 129),
(30, 130),
(30, 131),
(30, 132),
(30, 133),
(30, 134),
(30, 135),
(30, 136),
(30, 137),
(30, 138),
(31, 90),
(31, 91),
(31, 92),
(31, 93),
(31, 95),
(31, 96),
(31, 97),
(31, 98),
(31, 99),
(31, 100),
(31, 101),
(31, 102),
(31, 103),
(31, 104),
(31, 105),
(31, 106),
(31, 107),
(31, 108),
(31, 109),
(31, 110),
(31, 111),
(31, 112),
(31, 113),
(31, 114),
(31, 115),
(31, 116),
(31, 117),
(31, 118),
(31, 119),
(31, 120),
(31, 121),
(31, 122),
(31, 123),
(31, 124),
(31, 125),
(31, 126),
(31, 127),
(31, 128),
(31, 129),
(31, 130),
(31, 131),
(31, 132),
(31, 133),
(31, 134),
(31, 135),
(31, 136),
(31, 137),
(31, 138),
(32, 90),
(32, 91),
(32, 92),
(32, 93),
(32, 95),
(32, 96),
(32, 97),
(32, 98),
(32, 99),
(32, 100),
(32, 101),
(32, 102),
(32, 103),
(32, 104),
(32, 105),
(32, 106),
(32, 107),
(32, 108),
(32, 109),
(32, 110),
(32, 111),
(32, 112),
(32, 113),
(32, 114),
(32, 115),
(32, 116),
(32, 117),
(32, 118),
(32, 119),
(32, 120),
(32, 121),
(32, 122),
(32, 123),
(32, 124),
(32, 125),
(32, 126),
(32, 127),
(32, 128),
(32, 129),
(32, 130),
(32, 131),
(32, 132),
(32, 133),
(32, 134),
(32, 135),
(32, 136),
(32, 137),
(32, 138),
(33, 90),
(33, 91),
(33, 92),
(33, 93),
(33, 95),
(33, 96),
(33, 97),
(33, 98),
(33, 99),
(33, 100),
(33, 101),
(33, 102),
(33, 103),
(33, 104),
(33, 105),
(33, 106),
(33, 107),
(33, 108),
(33, 109),
(33, 110),
(33, 111),
(33, 112),
(33, 113),
(33, 114),
(33, 115),
(33, 116),
(33, 117),
(33, 118),
(33, 119),
(33, 120),
(33, 121),
(33, 122),
(33, 123),
(33, 124),
(33, 125),
(33, 126),
(33, 127),
(33, 128),
(33, 129),
(33, 130),
(33, 131),
(33, 132),
(33, 133),
(33, 134),
(33, 135),
(33, 136),
(33, 137),
(33, 138),
(34, 90),
(34, 91),
(34, 92),
(34, 93),
(34, 95),
(34, 96),
(34, 97),
(34, 98),
(34, 99),
(34, 100),
(34, 101),
(34, 102),
(34, 103),
(34, 104),
(34, 105),
(34, 106),
(34, 107),
(34, 108),
(34, 109),
(34, 110),
(34, 111),
(34, 112),
(34, 113),
(34, 114),
(34, 115),
(34, 116),
(34, 117),
(34, 118),
(34, 119),
(34, 120),
(34, 121),
(34, 122),
(34, 123),
(34, 124),
(34, 125),
(34, 126),
(34, 127),
(34, 128),
(34, 129),
(34, 130),
(34, 131),
(34, 132),
(34, 133),
(34, 134),
(34, 135),
(34, 136),
(34, 137),
(34, 138),
(35, 90),
(35, 91),
(35, 92),
(35, 93),
(35, 95),
(35, 96),
(35, 97),
(35, 98),
(35, 99),
(35, 100),
(35, 101),
(35, 102),
(35, 103),
(35, 104),
(35, 105),
(35, 106),
(35, 107),
(35, 108),
(35, 109),
(35, 110),
(35, 111),
(35, 112),
(35, 113),
(35, 114),
(35, 115),
(35, 116),
(35, 117),
(35, 118),
(35, 119),
(35, 120),
(35, 121),
(35, 122),
(35, 123),
(35, 124),
(35, 125),
(35, 126),
(35, 127),
(35, 128),
(35, 129),
(35, 130),
(35, 131),
(35, 132),
(35, 133),
(35, 134),
(35, 135),
(35, 136),
(35, 137),
(35, 138),
(36, 90),
(36, 91),
(36, 92),
(36, 93),
(36, 95),
(36, 96),
(36, 97),
(36, 98),
(36, 99),
(36, 100),
(36, 101),
(36, 102),
(36, 103),
(36, 104),
(36, 105),
(36, 106),
(36, 107),
(36, 108),
(36, 109),
(36, 110),
(36, 111),
(36, 112),
(36, 113),
(36, 114),
(36, 115),
(36, 116),
(36, 117),
(36, 118),
(36, 119),
(36, 120),
(36, 121),
(36, 122),
(36, 123),
(36, 124),
(36, 125),
(36, 126),
(36, 127),
(36, 128),
(36, 129),
(36, 130),
(36, 131),
(36, 132),
(36, 133),
(36, 134),
(36, 135),
(36, 136),
(36, 137),
(36, 138),
(40, 90),
(40, 91),
(40, 92),
(40, 93),
(40, 95),
(40, 96),
(40, 97),
(40, 98),
(40, 99),
(40, 100),
(40, 101),
(40, 102),
(40, 103),
(40, 104),
(40, 105),
(40, 106),
(40, 107),
(40, 108),
(40, 109),
(40, 110),
(40, 111),
(40, 112),
(40, 113),
(40, 114),
(40, 115),
(40, 116),
(40, 117),
(40, 118),
(40, 119),
(40, 120),
(40, 121),
(40, 122),
(40, 123),
(40, 124),
(40, 125),
(40, 126),
(40, 127),
(40, 128),
(40, 129),
(40, 130),
(40, 131),
(40, 132),
(40, 133),
(40, 134),
(40, 135),
(40, 136),
(40, 137),
(40, 138),
(41, 90),
(41, 91),
(41, 92),
(41, 93),
(41, 95),
(41, 96),
(41, 97),
(41, 98),
(41, 99),
(41, 100),
(41, 101),
(41, 102),
(41, 103),
(41, 104),
(41, 105),
(41, 106),
(41, 107),
(41, 108),
(41, 109),
(41, 110),
(41, 111),
(41, 112),
(41, 113),
(41, 114),
(41, 115),
(41, 116),
(41, 117),
(41, 118),
(41, 119),
(41, 120),
(41, 121),
(41, 122),
(41, 123),
(41, 124),
(41, 125),
(41, 126),
(41, 127),
(41, 128),
(41, 129),
(41, 130),
(41, 131),
(41, 132),
(41, 133),
(41, 134),
(41, 135),
(41, 136),
(41, 137),
(41, 138),
(42, 90),
(42, 91),
(42, 92),
(42, 93),
(42, 95),
(42, 96),
(42, 97),
(42, 98),
(42, 99),
(42, 100),
(42, 101),
(42, 102),
(42, 103),
(42, 104),
(42, 105),
(42, 106),
(42, 107),
(42, 108),
(42, 109),
(42, 110),
(42, 111),
(42, 112),
(42, 113),
(42, 114),
(42, 115),
(42, 116),
(42, 117),
(42, 118),
(42, 119),
(42, 120),
(42, 121),
(42, 122),
(42, 123),
(42, 124),
(42, 125),
(42, 126),
(42, 127),
(42, 128),
(42, 129),
(42, 130),
(42, 131),
(42, 132),
(42, 133),
(42, 134),
(42, 135),
(42, 136),
(42, 137),
(42, 138),
(50, 144),
(50, 145),
(50, 146),
(50, 147),
(50, 148),
(50, 149),
(50, 150),
(50, 151),
(50, 152),
(50, 153),
(50, 154),
(50, 155),
(50, 156),
(50, 157),
(50, 158),
(50, 159),
(50, 160),
(50, 161),
(50, 162),
(50, 163),
(50, 164),
(50, 165),
(50, 166),
(50, 167),
(50, 168),
(50, 169),
(50, 170),
(50, 171),
(50, 172),
(50, 173),
(50, 174),
(50, 175),
(50, 177),
(50, 178),
(50, 179),
(50, 180),
(50, 181),
(50, 182),
(50, 183),
(50, 184),
(50, 185),
(50, 186),
(50, 187),
(50, 188),
(50, 189),
(50, 190),
(50, 191),
(51, 144),
(51, 145),
(51, 146),
(51, 147),
(51, 148),
(51, 149),
(51, 150),
(51, 151),
(51, 152),
(51, 153),
(51, 154),
(51, 155),
(51, 156),
(51, 157),
(51, 158),
(51, 159),
(51, 160),
(51, 161),
(51, 162),
(51, 163),
(51, 164),
(51, 165),
(51, 166),
(51, 167),
(51, 168),
(51, 169),
(51, 170),
(51, 171),
(51, 172),
(51, 173),
(51, 174),
(51, 175),
(51, 177),
(51, 178),
(51, 179),
(51, 180),
(51, 181),
(51, 182),
(51, 183),
(51, 184),
(51, 185),
(51, 186),
(51, 187),
(51, 188),
(51, 189),
(51, 190),
(51, 191),
(52, 144),
(52, 145),
(52, 146),
(52, 147),
(52, 148),
(52, 149),
(52, 150),
(52, 151),
(52, 152),
(52, 153),
(52, 154),
(52, 155),
(52, 156),
(52, 157),
(52, 158),
(52, 159),
(52, 160),
(52, 161),
(52, 162),
(52, 163),
(52, 164),
(52, 165),
(52, 166),
(52, 167),
(52, 168),
(52, 169),
(52, 170),
(52, 171),
(52, 172),
(52, 173),
(52, 174),
(52, 175),
(52, 177),
(52, 178),
(52, 179),
(52, 180),
(52, 181),
(52, 182),
(52, 183),
(52, 184),
(52, 185),
(52, 186),
(52, 187),
(52, 188),
(52, 189),
(52, 190),
(52, 191),
(53, 144),
(53, 145),
(53, 146),
(53, 147),
(53, 148),
(53, 149),
(53, 150),
(53, 151),
(53, 152),
(53, 153),
(53, 154),
(53, 155),
(53, 156),
(53, 157),
(53, 158),
(53, 159),
(53, 160),
(53, 161),
(53, 162),
(53, 163),
(53, 164),
(53, 165),
(53, 166),
(53, 167),
(53, 168),
(53, 169),
(53, 170),
(53, 171),
(53, 172),
(53, 173),
(53, 174),
(53, 175),
(53, 177),
(53, 178),
(53, 179),
(53, 180),
(53, 181),
(53, 182),
(53, 184),
(53, 185),
(53, 186),
(53, 187),
(53, 188),
(53, 189),
(53, 190),
(53, 191),
(54, 144),
(54, 145),
(54, 146),
(54, 147),
(54, 148),
(54, 149),
(54, 150),
(54, 151),
(54, 152),
(54, 153),
(54, 154),
(54, 155),
(54, 156),
(54, 157),
(54, 158),
(54, 159),
(54, 160),
(54, 161),
(54, 162),
(54, 163),
(54, 164),
(54, 165),
(54, 166),
(54, 167),
(54, 168),
(54, 169),
(54, 170),
(54, 171),
(54, 172),
(54, 173),
(54, 174),
(54, 175),
(54, 177),
(54, 178),
(54, 179),
(54, 180),
(54, 181),
(54, 182),
(54, 183),
(54, 184),
(54, 185),
(54, 186),
(54, 187),
(54, 188),
(54, 189),
(54, 190),
(54, 191),
(55, 144),
(55, 145),
(55, 146),
(55, 147),
(55, 148),
(55, 149),
(55, 150),
(55, 151),
(55, 152),
(55, 153),
(55, 154),
(55, 155),
(55, 156),
(55, 157),
(55, 158),
(55, 159),
(55, 160),
(55, 161),
(55, 162),
(55, 163),
(55, 164),
(55, 165),
(55, 166),
(55, 167),
(55, 168),
(55, 169),
(55, 170),
(55, 171),
(55, 172),
(55, 173),
(55, 174),
(55, 175),
(55, 177),
(55, 178),
(55, 179),
(55, 180),
(55, 181),
(55, 182),
(55, 183),
(55, 184),
(55, 185),
(55, 186),
(55, 187),
(55, 188),
(55, 189),
(55, 190),
(55, 191),
(56, 144),
(56, 145),
(56, 146),
(56, 147),
(56, 148),
(56, 149),
(56, 150),
(56, 151),
(56, 152),
(56, 153),
(56, 154),
(56, 155),
(56, 156),
(56, 157),
(56, 158),
(56, 159),
(56, 160),
(56, 161),
(56, 162),
(56, 163),
(56, 164),
(56, 165),
(56, 166),
(56, 167),
(56, 168),
(56, 169),
(56, 170),
(56, 171),
(56, 172),
(56, 173),
(56, 174),
(56, 175),
(56, 177),
(56, 178),
(56, 179),
(56, 180),
(56, 181),
(56, 182),
(56, 183),
(56, 184),
(56, 185),
(56, 186),
(56, 187),
(56, 188),
(56, 189),
(56, 190),
(56, 191),
(57, 144),
(57, 145),
(57, 146),
(57, 147),
(57, 148),
(57, 149),
(57, 150),
(57, 151),
(57, 152),
(57, 153),
(57, 154),
(57, 155),
(57, 156),
(57, 157),
(57, 158),
(57, 159),
(57, 160),
(57, 162),
(57, 163),
(57, 164),
(57, 165),
(57, 166),
(57, 167),
(57, 168),
(57, 171),
(57, 172),
(57, 173),
(57, 174),
(57, 175),
(57, 177),
(57, 178),
(57, 179),
(57, 180),
(57, 181),
(57, 182),
(57, 183),
(57, 184),
(57, 185),
(57, 186),
(57, 187),
(57, 188),
(57, 189),
(57, 190),
(57, 191),
(58, 144),
(58, 145),
(58, 146),
(58, 147),
(58, 148),
(58, 149),
(58, 150),
(58, 151),
(58, 152),
(58, 153),
(58, 154),
(58, 155),
(58, 156),
(58, 157),
(58, 158),
(58, 159),
(58, 160),
(58, 161),
(58, 162),
(58, 163),
(58, 164),
(58, 165),
(58, 166),
(58, 167),
(58, 168),
(58, 171),
(58, 172),
(58, 173),
(58, 174),
(58, 175),
(58, 177),
(58, 178),
(58, 179),
(58, 180),
(58, 181),
(58, 182),
(58, 183),
(58, 184),
(58, 185),
(58, 186),
(58, 187),
(58, 188),
(58, 189),
(58, 190),
(58, 191),
(59, 144),
(59, 145),
(59, 146),
(59, 147),
(59, 148),
(59, 149),
(59, 150),
(59, 151),
(59, 152),
(59, 153),
(59, 154),
(59, 155),
(59, 156),
(59, 157),
(59, 158),
(59, 159),
(59, 160),
(59, 161),
(59, 162),
(59, 163),
(59, 164),
(59, 165),
(59, 166),
(59, 167),
(59, 168),
(59, 171),
(59, 172),
(59, 173),
(59, 174),
(59, 175),
(59, 177),
(59, 178),
(59, 179),
(59, 180),
(59, 181),
(59, 182),
(59, 183),
(59, 184),
(59, 185),
(59, 186),
(59, 187),
(59, 188),
(59, 189),
(59, 190),
(59, 191),
(60, 144),
(60, 145),
(60, 146),
(60, 147),
(60, 148),
(60, 149),
(60, 150),
(60, 151),
(60, 152),
(60, 153),
(60, 154),
(60, 155),
(60, 156),
(60, 157),
(60, 158),
(60, 159),
(60, 160),
(60, 161),
(60, 162),
(60, 163),
(60, 164),
(60, 165),
(60, 166),
(60, 167),
(60, 168),
(60, 169),
(60, 170),
(60, 171),
(60, 172),
(60, 173),
(60, 174),
(60, 175),
(60, 177),
(60, 178),
(60, 180),
(60, 181),
(60, 182),
(60, 183),
(60, 184),
(60, 185),
(60, 186),
(60, 187),
(60, 188),
(60, 189),
(60, 190),
(60, 191),
(61, 144),
(61, 145),
(61, 146),
(61, 147),
(61, 148),
(61, 149),
(61, 150),
(61, 151),
(61, 152),
(61, 153),
(61, 154),
(61, 155),
(61, 156),
(61, 157),
(61, 158),
(61, 159),
(61, 160),
(61, 161),
(61, 162),
(61, 163),
(61, 164),
(61, 165),
(61, 166),
(61, 167),
(61, 168),
(61, 171),
(61, 172),
(61, 173),
(61, 174),
(61, 175),
(61, 177),
(61, 179),
(61, 180),
(61, 181),
(61, 182),
(61, 183),
(61, 184),
(61, 185),
(61, 186),
(61, 187),
(61, 188),
(61, 189),
(61, 190),
(61, 191),
(62, 192),
(62, 193),
(62, 194),
(62, 195),
(62, 196),
(62, 197),
(62, 198),
(62, 199),
(62, 200),
(62, 201),
(62, 202),
(62, 203),
(62, 204),
(62, 205),
(62, 206),
(62, 207),
(62, 208),
(62, 209),
(62, 210),
(62, 211),
(62, 212),
(62, 213),
(63, 192),
(63, 193),
(63, 194),
(63, 195),
(63, 196),
(63, 197),
(63, 198),
(63, 199),
(63, 200),
(63, 201),
(63, 202),
(63, 203),
(63, 204),
(63, 205),
(63, 206),
(63, 207),
(63, 208),
(63, 209),
(63, 210),
(63, 211),
(63, 212),
(63, 213),
(64, 192),
(64, 193),
(64, 194),
(64, 195),
(64, 196),
(64, 197),
(64, 198),
(64, 199),
(64, 200),
(64, 201),
(64, 202),
(64, 203),
(64, 204),
(64, 205),
(64, 206),
(64, 207),
(64, 208),
(64, 209),
(64, 210),
(64, 211),
(64, 212),
(64, 213),
(65, 192),
(65, 193),
(65, 194),
(65, 195),
(65, 196),
(65, 197),
(65, 198),
(65, 199),
(65, 200),
(65, 201),
(65, 202),
(65, 203),
(65, 204),
(65, 205),
(65, 206),
(65, 207),
(65, 208),
(65, 209),
(65, 210),
(65, 211),
(65, 212),
(65, 213),
(66, 192),
(66, 193),
(66, 194),
(66, 195),
(66, 196),
(66, 197),
(66, 198),
(66, 199),
(66, 200),
(66, 201),
(66, 202),
(66, 203),
(66, 204),
(66, 205),
(66, 206),
(66, 207),
(66, 208),
(66, 209),
(66, 210),
(66, 211),
(66, 212),
(66, 213),
(67, 192),
(67, 193),
(67, 194),
(67, 195),
(67, 196),
(67, 197),
(67, 198),
(67, 199),
(67, 200),
(67, 201),
(67, 202),
(67, 203),
(67, 204),
(67, 205),
(67, 206),
(67, 207),
(67, 208),
(67, 209),
(67, 210),
(67, 211),
(67, 212),
(67, 213),
(68, 192),
(68, 193),
(68, 194),
(68, 195),
(68, 196),
(68, 197),
(68, 198),
(68, 199),
(68, 200),
(68, 201),
(68, 202),
(68, 203),
(68, 204),
(68, 205),
(68, 206),
(68, 207),
(68, 208),
(68, 209),
(68, 210),
(68, 211),
(68, 212),
(68, 213),
(69, 192),
(69, 193),
(69, 194),
(69, 195),
(69, 196),
(69, 197),
(69, 198),
(69, 199),
(69, 200),
(69, 201),
(69, 202),
(69, 203),
(69, 204),
(69, 205),
(69, 206),
(69, 207),
(69, 208),
(69, 209),
(69, 210),
(69, 211),
(69, 212),
(69, 213),
(70, 192),
(70, 193),
(70, 194),
(70, 195),
(70, 196),
(70, 197),
(70, 198),
(70, 199),
(70, 200),
(70, 201),
(70, 202),
(70, 203),
(70, 204),
(70, 205),
(70, 206),
(70, 207),
(70, 208),
(70, 209),
(70, 210),
(70, 211),
(70, 212),
(70, 213);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(42, 0, 0),
(42, 1, 0),
(42, 2, 0),
(42, 3, 0),
(42, 4, 0),
(42, 5, 0),
(30, 5, 0),
(30, 4, 0),
(30, 3, 0),
(30, 2, 0),
(30, 1, 0),
(30, 0, 0),
(28, 5, 0),
(28, 3, 0),
(28, 2, 0),
(28, 1, 0),
(28, 0, 0),
(28, 4, 0),
(41, 0, 0),
(41, 1, 0),
(41, 2, 0),
(41, 3, 0),
(41, 4, 0),
(41, 5, 0),
(40, 0, 0),
(40, 1, 0),
(40, 2, 0),
(40, 3, 0),
(40, 4, 0),
(40, 5, 0),
(36, 5, 0),
(36, 4, 0),
(36, 3, 0),
(36, 2, 0),
(36, 1, 0),
(36, 0, 0),
(34, 5, 0),
(34, 4, 0),
(34, 3, 0),
(34, 2, 0),
(34, 1, 0),
(34, 0, 0),
(32, 5, 0),
(32, 4, 0),
(32, 3, 0),
(32, 2, 0),
(32, 1, 0),
(32, 0, 0),
(31, 5, 0),
(31, 4, 0),
(31, 3, 0),
(31, 2, 0),
(31, 1, 0),
(31, 0, 0),
(29, 0, 0),
(29, 1, 0),
(29, 2, 0),
(29, 3, 0),
(29, 4, 0),
(29, 5, 0),
(35, 5, 0),
(35, 4, 0),
(35, 3, 0),
(35, 2, 0),
(35, 1, 0),
(35, 0, 0),
(33, 5, 0),
(33, 4, 0),
(33, 3, 0),
(33, 2, 0),
(33, 1, 0),
(33, 0, 0),
(50, 0, 0),
(50, 1, 0),
(50, 2, 0),
(50, 3, 0),
(50, 4, 0),
(50, 5, 0),
(51, 0, 0),
(51, 1, 0),
(51, 2, 0),
(51, 3, 0),
(51, 4, 0),
(51, 5, 0),
(52, 0, 0),
(52, 1, 0),
(52, 2, 0),
(52, 3, 0),
(52, 4, 0),
(52, 5, 0),
(53, 0, 0),
(53, 1, 0),
(53, 2, 0),
(53, 3, 0),
(53, 4, 0),
(53, 5, 0),
(54, 0, 0),
(54, 1, 0),
(54, 2, 0),
(54, 3, 0),
(54, 4, 0),
(54, 5, 0),
(55, 0, 0),
(55, 1, 0),
(55, 2, 0),
(55, 3, 0),
(55, 4, 0),
(55, 5, 0),
(56, 0, 0),
(56, 1, 0),
(56, 2, 0),
(56, 3, 0),
(56, 4, 0),
(56, 5, 0),
(57, 5, 0),
(57, 4, 0),
(57, 3, 0),
(57, 2, 0),
(57, 1, 0),
(57, 0, 0),
(58, 0, 0),
(58, 1, 0),
(58, 2, 0),
(58, 3, 0),
(58, 4, 0),
(58, 5, 0),
(59, 0, 0),
(59, 1, 0),
(59, 2, 0),
(59, 3, 0),
(59, 4, 0),
(59, 5, 0),
(60, 0, 0),
(60, 1, 0),
(60, 2, 0),
(60, 3, 0),
(60, 4, 0),
(60, 5, 0),
(61, 0, 0),
(61, 1, 0),
(61, 2, 0),
(61, 3, 0),
(61, 4, 0),
(61, 5, 0),
(62, 5, 0),
(62, 4, 0),
(62, 3, 0),
(62, 2, 0),
(62, 1, 0),
(62, 0, 0),
(62, 6, 0),
(62, 7, 0),
(63, 5, 0),
(63, 4, 0),
(63, 3, 0),
(63, 2, 0),
(63, 1, 0),
(63, 0, 0),
(63, 6, 0),
(63, 7, 0),
(64, 5, 0),
(64, 4, 0),
(64, 3, 0),
(64, 2, 0),
(64, 1, 0),
(64, 0, 0),
(64, 6, 0),
(64, 7, 0),
(65, 5, 0),
(65, 4, 0),
(65, 3, 0),
(65, 2, 0),
(65, 1, 0),
(65, 0, 0),
(65, 6, 0),
(65, 7, 0),
(66, 5, 0),
(66, 4, 0),
(66, 3, 0),
(66, 2, 0),
(66, 1, 0),
(66, 0, 0),
(66, 6, 0),
(66, 7, 0),
(67, 5, 0),
(67, 4, 0),
(67, 3, 0),
(67, 2, 0),
(67, 1, 0),
(67, 0, 0),
(67, 6, 0),
(67, 7, 0),
(68, 5, 0),
(68, 4, 0),
(68, 3, 0),
(68, 2, 0),
(68, 1, 0),
(68, 0, 0),
(68, 6, 0),
(68, 7, 0),
(69, 5, 0),
(69, 4, 0),
(69, 3, 0),
(69, 2, 0),
(69, 1, 0),
(69, 0, 0),
(69, 6, 0),
(69, 7, 0),
(70, 5, 0),
(70, 4, 0),
(70, 3, 0),
(70, 2, 0),
(70, 1, 0),
(70, 0, 0),
(70, 6, 0),
(70, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(28, 1),
(28, 2),
(29, 0),
(29, 1),
(29, 2),
(30, 0),
(30, 1),
(30, 2),
(31, 0),
(31, 1),
(31, 2),
(32, 0),
(32, 1),
(32, 2),
(33, 0),
(33, 1),
(33, 2),
(34, 0),
(34, 1),
(34, 2),
(35, 0),
(35, 1),
(35, 2),
(36, 0),
(36, 1),
(36, 2),
(40, 0),
(40, 1),
(40, 2),
(41, 0),
(41, 1),
(41, 2),
(42, 0),
(42, 1),
(42, 2),
(50, 3),
(50, 4),
(50, 5),
(51, 3),
(51, 4),
(51, 5),
(52, 3),
(52, 4),
(52, 5),
(53, 3),
(53, 4),
(53, 5),
(54, 3),
(54, 4),
(54, 5),
(55, 3),
(55, 4),
(55, 5),
(56, 3),
(56, 4),
(56, 5),
(57, 3),
(58, 3),
(58, 4),
(58, 5),
(59, 3),
(59, 4),
(59, 5),
(60, 3),
(60, 4),
(60, 5),
(61, 3),
(61, 4),
(61, 5),
(62, 6),
(62, 7),
(63, 6),
(63, 7),
(64, 6),
(64, 7),
(65, 6),
(65, 7),
(66, 6),
(66, 7),
(67, 6),
(67, 7),
(68, 6),
(68, 7),
(69, 6),
(69, 7),
(70, 6),
(70, 7);

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_review`
--

INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(1, 28, 0, 'Alex', 'Good product!!! is is useful\r\nThank you so much!!!', 5, 1, '2017-08-11 09:20:51', '2017-08-11 09:21:08'),
(2, 29, 0, 'John', 'Good product!!! is is useful\r\nThank you so much!!!', 4, 1, '2017-08-11 09:20:51', '2017-08-11 09:21:08'),
(3, 30, 0, 'Alex', 'Good product!!! is is useful\r\nThank you so much!!!', 3, 1, '2017-08-11 09:20:51', '2017-08-11 09:21:08'),
(4, 31, 0, 'John', 'Good product!!! is is useful\r\nThank you so much!!!', 2, 1, '2017-08-11 09:20:51', '2017-08-11 09:21:08'),
(5, 32, 0, 'Alex', 'Good product!!! is is useful\r\nThank you so much!!!', 1, 1, '2017-08-11 09:20:51', '2017-08-11 09:21:08'),
(6, 33, 0, 'John', 'Good product!!! is is useful\r\nThank you so much!!!', 5, 1, '2017-08-11 09:20:51', '2017-08-11 09:21:08'),
(7, 34, 0, 'Alex', 'Good product!!! is is useful\r\nThank you so much!!!', 3, 1, '2017-08-11 09:20:51', '2017-08-11 09:21:08'),
(8, 35, 0, 'John', 'Good product!!! is is useful\r\nThank you so much!!!', 4, 1, '2017-08-11 09:20:51', '2017-08-11 09:21:08'),
(9, 36, 0, 'Alex', 'Good product!!! is is useful\r\nThank you so much!!!', 2, 1, '2017-08-11 09:20:51', '2017-08-11 09:21:08'),
(10, 40, 0, 'John', 'Good product!!! is is useful\r\nThank you so much!!!', 1, 1, '2017-08-11 09:20:51', '2017-08-11 09:21:08'),
(11, 41, 0, 'Alex', 'Good product!!! is is useful\r\nThank you so much!!!', 5, 1, '2017-08-11 09:20:51', '2017-10-02 09:31:00'),
(12, 42, 0, 'John', 'Good product!!! is is useful\r\nThank you so much!!!', 3, 1, '2017-08-11 09:20:51', '2017-08-11 09:21:08'),
(20, 41, 0, 'plaza themes', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 5, 1, '2017-10-02 09:30:25', '2017-10-24 10:44:29'),
(21, 50, 0, 'plaza themes', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 5, 1, '2017-10-20 16:00:20', '2017-10-24 10:44:19'),
(22, 51, 0, 'plaza themes', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 4, 1, '2017-10-20 16:00:29', '2017-10-24 10:44:09'),
(23, 52, 0, 'plaza themes', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 5, 1, '2017-10-20 16:00:39', '2017-10-24 10:43:58'),
(24, 53, 0, 'plaza themes', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 5, 1, '2017-10-20 16:01:08', '2017-10-24 10:43:47'),
(25, 54, 0, 'plaza themes', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 5, 1, '2017-10-20 16:01:16', '2017-10-24 10:43:39'),
(26, 55, 0, 'plaza themes', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 4, 1, '2017-10-20 16:01:56', '2017-10-24 10:43:30'),
(27, 56, 0, 'plaza themes', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 5, 1, '2017-10-24 10:35:27', '2017-10-24 10:43:21'),
(28, 57, 0, 'plaza themes', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 5, 1, '2017-10-24 10:35:38', '2017-10-24 10:43:12'),
(29, 58, 0, 'plaza themes', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 5, 1, '2017-10-24 10:35:48', '2017-10-24 10:43:03'),
(30, 59, 0, 'plaza themes', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 5, 1, '2017-10-24 10:36:08', '2017-10-24 10:42:55'),
(31, 60, 0, 'plaza themes', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 5, 1, '2017-10-24 10:36:18', '2017-10-24 10:42:47'),
(32, 61, 0, 'plaza themes', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 4, 1, '2017-10-24 10:36:30', '2017-10-24 10:42:38'),
(33, 62, 0, 'plaza themes', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 5, 1, '2017-10-26 14:41:53', '2017-10-26 14:44:32'),
(34, 63, 0, 'plaza themes', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 5, 1, '2017-10-26 14:42:02', '2017-10-26 14:44:23'),
(35, 64, 0, 'plaza themes', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 5, 1, '2017-10-26 14:42:10', '2017-10-26 14:44:13'),
(36, 66, 0, 'plaza themes', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 5, 1, '2017-10-26 14:42:20', '2017-10-26 14:44:04'),
(37, 65, 0, 'plaza themes', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 5, 1, '2017-10-26 14:42:36', '2017-10-26 14:43:55'),
(38, 67, 0, 'plaza themes', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 5, 1, '2017-10-26 14:42:44', '2017-10-26 14:43:47'),
(39, 68, 0, 'plaza themes', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 5, 1, '2017-10-26 14:42:51', '2017-10-26 14:43:39'),
(40, 69, 0, 'plaza themes', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 5, 1, '2017-10-26 14:42:58', '2017-10-26 14:43:31'),
(41, 70, 0, 'plaza themes', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 5, 1, '2017-10-26 14:43:09', '2017-10-26 14:43:23');

-- --------------------------------------------------------

--
-- Table structure for table `oc_seo_url`
--

CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_seo_url`
--

INSERT INTO `oc_seo_url` (`seo_url_id`, `store_id`, `language_id`, `query`, `keyword`) VALUES
(922, 0, 1, 'manufacturer_id=8', 'apple'),
(927, 0, 1, 'information_id=4', 'about_us'),
(905, 0, 1, 'product_id=42', 'test'),
(908, 0, 1, 'product_id=30', 'canon-eos-5d'),
(921, 0, 1, 'product_id=28', 'htc-touch-hd'),
(909, 0, 1, 'product_id=31', 'nikon-d300'),
(915, 0, 1, 'product_id=29', 'palm-treo-pro'),
(913, 0, 1, 'product_id=35', 'product-8'),
(911, 0, 1, 'product_id=33', 'samsung-syncmaster-941bw'),
(904, 0, 1, 'product_id=41', 'imac'),
(903, 0, 1, 'product_id=40', 'iphone'),
(914, 0, 1, 'product_id=36', 'ipod-nano'),
(912, 0, 1, 'product_id=34', 'ipod-shuffle'),
(910, 0, 1, 'product_id=32', 'ipod-touch'),
(923, 0, 1, 'manufacturer_id=9', 'canon'),
(925, 0, 1, 'manufacturer_id=5', 'htc'),
(886, 0, 1, 'manufacturer_id=7', 'hewlett-packard'),
(924, 0, 1, 'manufacturer_id=6', 'palm'),
(926, 0, 1, 'manufacturer_id=10', 'sony'),
(928, 0, 1, 'information_id=6', 'delivery'),
(929, 0, 1, 'information_id=3', 'privacy'),
(930, 0, 1, 'information_id=5', 'terms');

-- --------------------------------------------------------

--
-- Table structure for table `oc_session`
--

CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_session`
--

INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('016e506103ae16aaba13716a38', '{"language":"en-gb","currency":"USD"}', '2017-11-06 13:17:02'),
('0224f021b7eb785a227cfd9df1', '{"language":"en-gb","currency":"USD"}', '2017-10-26 10:10:05'),
('02db8b45c92d376de94d752111', '{"language":"en-gb","currency":"USD"}', '2017-11-03 04:19:05'),
('03e11dea5d948e06473e7150f4', '{"language":"en-gb","currency":"USD"}', '2017-11-06 09:08:35'),
('054e2cb4657fe111e2ca9beeeb', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"qTFybjV9fEF6BO4q5XNVPZSytGq4WlwW"}', '2017-10-03 10:03:49'),
('0615b5b9e49108505bb94dbe97', '{"language":"en-gb","currency":"USD"}', '2017-09-05 15:15:49'),
('06174b2f5ef25924fac611a029', '{"language":"en-gb","currency":"USD"}', '2017-10-07 04:28:44'),
('07ea61738b192ad9fa91fec751', '{"language":"en-gb","currency":"USD"}', '2017-10-07 04:39:35'),
('08524fae3418b89d8c430f75d5', '{"language":"en-gb","currency":"USD"}', '2017-11-04 02:43:43'),
('08c8219a97e47e50c4ffc61725', '{"language":"en-gb","currency":"USD"}', '2017-09-18 02:51:56'),
('0a41d2a5f8cfb1972a12727503', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"l5LJmtIOkRsAPbVMkqaOf7S2am1UmIrX"}', '2017-08-21 16:30:17'),
('0b0d089443f513cf72e2965965', '{"language":"en-gb","currency":"USD"}', '2017-11-09 10:25:05'),
('0b3d4cd81d4902e783673e7066', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"CcbFsbJJXlTExdFyZinRmOQ5uHWyIEDB","install":"V2IQJSP4AX","customer_id":"1"}', '2017-08-29 09:48:06'),
('0bb6df0316c15de01c3e1076d7', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"K0e92UHKnne28qu4XEG4cGhGs1fduN6E"}', '2017-08-21 10:49:13'),
('0ccd66158211fbc7ad299eec03', '{"language":"en-gb","currency":"USD"}', '2017-09-30 14:24:34'),
('0d16267e8ddc8e4baa2166389c', '{"language":"en-gb","currency":"USD"}', '2017-10-26 10:00:53'),
('0d4ba8245a2dc1fdbcde70c7ce', '{"language":"en-gb","currency":"USD"}', '2017-11-15 09:12:29'),
('0dd8d07bfa939092c9228c2a9b', '{"user_id":"1","user_token":"zkwWDYFLs3ylViUDiqrx3OIQzAIFfVet","language":"en-gb","currency":"USD"}', '2017-09-05 10:52:19'),
('0ddc41b74562027ff44bc88974', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"dlD4LiA1iZCs3Dgi6dtLVYPoGltCKiHz"}', '2017-09-30 05:07:44'),
('0f83655047f11b7e68dce1c17e', '{"user_id":"1","user_token":"i6W2HYEhIMWzcm7Otf3Xuy5u4hj9w32t","language":"en-gb","currency":"USD","compare":["47"]}', '2017-08-19 05:06:34'),
('0ff1b016f787bf5ff90caff712', '{"language":"en-gb","currency":"USD"}', '2017-11-03 07:12:13'),
('100f19d9db518be70493bc2c38', '{"language":"en-gb","currency":"USD"}', '2017-08-22 02:25:37'),
('1190f61b78112ce0673eed280c', '{"language":"en-gb","currency":"USD"}', '2017-10-24 03:57:38'),
('154a1797fd6f9d6d53a82cf4b5', '{"language":"en-gb","currency":"USD"}', '2017-09-28 07:12:45'),
('1607493cdff430c019e436617e', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"sr2Hu8ZeBM8vnjuCCHUrFx7xb4izpGmR","install":"GLlBwsyEQI"}', '2017-09-16 04:55:35'),
('16e9d04a80ed736842146d6688', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"loKqpI450EnqU21jAo2SImmAJfIl7zeE"}', '2017-08-26 05:04:17'),
('19131ffd5e925003676154352a', '{"language":"en-gb","currency":"USD"}', '2017-08-29 08:10:03'),
('1aeb82f4bc4ce33ed4cd7d7c64', '{"language":"en-gb","currency":"USD"}', '2017-10-17 08:19:17'),
('1efc27aa3a0da863c4dc1184bf', '{"language":"en-gb","currency":"USD"}', '2017-08-31 10:26:14'),
('1fdf5be9bbfa8cb22e75dbe2df', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"5ht1SGR766a7QZyALeRT2QxUvXF4k4Xb"}', '2017-08-28 15:51:04'),
('206867ad1404777aa39cfd57e3', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"XpoAS7jOcXRHXL9SWp4BzWqmJ39PYcN9"}', '2017-10-04 10:30:55'),
('2173882558a0ce2d8af2321128', '{"language":"en-gb","currency":"USD","customer_id":"1"}', '2017-09-08 08:22:09'),
('2195f01d51e19ed82acdcd1eef', '{"language":"en-gb","currency":"USD"}', '2017-11-07 07:09:47'),
('22c5c56972b254ab5492dea981', '{"language":"en-gb","currency":"USD"}', '2017-10-25 07:41:39'),
('24e0c44a160ce02a07622e7acc', 'false', '2017-11-15 08:45:54'),
('273217336d0e018243aae6de68', '{"user_id":"1","user_token":"ZyUVkbv30zWbL2zPPTfVIgKpzducmpwA","language":"en-gb","currency":"USD"}', '2017-10-14 04:16:23'),
('27d146ec0748e82d621bbf6a2b', '{"language":"en-gb","currency":"USD"}', '2017-09-14 03:19:19'),
('29b71ab5ef0cfce52fad44ffd9', '{"user_id":"1","user_token":"yN3r8OU8uvenXTEnVbfkAroHRWxqq7JN","language":"en-gb","currency":"USD","install":"FR0gl4qNJk"}', '2017-08-14 10:43:48'),
('2a012c5e382c16c45e54de7565', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"tTs3VXdN8H5adPeuNIL33XhPlBeqbgQk"}', '2017-11-07 07:09:26'),
('2bbb491842b5df3c2440f31d71', '{"language":"en-gb","currency":"USD"}', '2017-11-07 02:45:05'),
('2e8347bcbb722a275e7d162df4', '{"language":"en-gb","currency":"USD"}', '2017-10-13 10:01:45'),
('2f08a2fc3cd34a0da6a9c909a9', '{"language":"en-gb","currency":"USD"}', '2017-11-09 04:16:36'),
('30787e92b9d225696ff6bd3e52', '{"language":"en-gb","currency":"USD"}', '2017-10-25 07:40:02'),
('31f38c164a355ec79490e1d5d1', '{"language":"en-gb","currency":"USD","wishlist":[],"customer_id":"1"}', '2017-10-24 02:46:21'),
('3546aaf2627022813b51bb4d47', '{"language":"en-gb","currency":"USD"}', '2017-08-16 08:37:22'),
('357477e08eb881d8ccac36473b', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"F67r9QLm9GUXIubHLfdvb2WdwjuJZOcp"}', '2017-08-28 10:27:54'),
('360a468d8c98eb6e3ae1c69794', '{"language":"en-gb","currency":"USD"}', '2017-11-04 03:58:58'),
('36c6534f787322259306b2a685', '{"language":"en-gb","currency":"USD"}', '2017-10-18 08:57:32'),
('374f7d4cc117432f0edc48a098', '{"user_id":"1","user_token":"nG06AtdFxSIg1PHZ0nP11xKR6dXArIP7","language":"en-gb","currency":"USD"}', '2017-08-18 10:19:51'),
('390d5f6c0b403f768b5463317e', '{"user_id":"1","user_token":"etZ4KSNRo8F9LO7stT6NMdezDtvoxdO9"}', '2017-10-13 10:06:01'),
('399e1ccf8098c04c5f9cbe1f7c', '{"user_id":"1","user_token":"9oORNuxOdijRbgvGsbTBv6d0LQKyUh34"}', '2017-09-16 03:13:28'),
('3aa6652dd2bc3601b8f69e9a86', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"a1X8ppOxgKtPPJNqzx9obFcPbqmHOC98"}', '2017-09-18 10:26:09'),
('3e37e61f0803dc70637f2f54e2', '{"user_id":"1","user_token":"qYq26d091dcehdT2k1pimPldlwfP27jl","language":"en-gb","currency":"USD","install":"ltu8Gev7dB"}', '2017-10-26 10:08:56'),
('3f5459900d991f9253af275676', '{"user_id":"1","user_token":"Y4nWb2vslNrsNI7wLiiaKo84nGk0btjX","language":"en-gb","currency":"USD","compare":["30"]}', '2017-08-15 04:47:25'),
('405485a7787744155d191ebe0c', '{"language":"en-gb","currency":"USD"}', '2017-10-26 10:11:35'),
('4084227b6831d6bf155d7d335f', '{"language":"en-gb","currency":"USD"}', '2017-10-09 01:51:59'),
('40e98ac2144f9d3a7ae2867bda', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"gYm5ySbQCnyLFqocWARrSJ6wbGmbaQEL"}', '2017-11-03 10:31:37'),
('417699b9daf40dccf2198bb5b1', '{"language":"en-gb","currency":"USD","wishlist":[],"customer_id":"1"}', '2017-09-07 10:08:03'),
('425ea2f1f71b0d60cf6406e70d', '{"language":"en-gb","currency":"USD"}', '2017-08-29 08:10:01'),
('429af1f26a112479fc3d81e7a1', '{"language":"en-gb","currency":"USD"}', '2017-08-30 16:12:48'),
('430128eed1ed94dddc7f41f9ab', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"pj7xJL44GPcPeGosINxorES4VuHN3gIl"}', '2017-10-02 15:35:58'),
('43e9cd7901001455fe866f5073', 'false', '2017-08-21 14:57:12'),
('457aa375b9e33cddcddeb0cf91', '{"language":"en-gb","currency":"USD"}', '2017-11-15 09:02:54'),
('458d4268c826c1f5339ffb695b', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"y06MQssUhI07hFhFqgSirsa8Z6GVDa7l"}', '2017-09-09 10:07:03'),
('465de2696d17962d0982a2392a', '{"language":"en-gb","currency":"USD"}', '2017-10-26 10:17:08'),
('466eadc726d293a8697f20818c', '{"user_id":"1","user_token":"96VqPbhEOObWUdzIlA0WMshr7dXp0sOS","language":"en-gb","currency":"USD"}', '2017-08-18 06:55:48'),
('4702ae29d38307638e6c2afe92', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"FY7Q6uAF8UO76DDYsKcUBnGlrC9zd8x9"}', '2017-09-15 10:39:20'),
('4750ebc3e761f669b3cabde59d', '{"language":"en-gb","currency":"USD"}', '2017-11-08 15:46:01'),
('488e822462afc94a932a72ff52', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"ZHW5pFVEDt33CARMT5C2RZSKPUJ3jt4z"}', '2017-11-01 10:06:54'),
('49e1647563b629a071a626359d', '{"language":"en-gb","currency":"USD"}', '2017-08-29 08:08:29'),
('4a09dd92329623cec256193fcb', '{"language":"en-gb","currency":"USD"}', '2017-11-15 09:10:54'),
('4a2c51a6ef91486a00ebeffe9a', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"inZLOnySZbqnXyGXEUO2uy1Z0q81DAMq"}', '2017-09-01 10:53:49'),
('4b6a624fb3a8fc1b198e790742', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"xHUClh5oGx6dDRrMt0FSUY1SZ5R0b9lo"}', '2017-09-13 16:04:37'),
('4c9241cee0667a6b0984cc3244', '{"language":"en-gb","currency":"USD"}', '2017-10-27 10:08:28'),
('4dd3fa40189341e77316e551b6', '{"language":"en-gb","currency":"USD","account":"register","customer_id":"2","payment_address":{"address_id":"1","firstname":"plaza","lastname":"themes","company":"","address_1":"plaza","address_2":"","postcode":"plaza","city":"plaza","zone_id":"3516","zone":"Angus","zone_code":"AGS","country_id":"222","country":"United Kingdom","iso_code_2":"GB","iso_code_3":"GBR","address_format":"","custom_field":null},"shipping_address":{"address_id":"1","firstname":"plaza","lastname":"themes","company":"","address_1":"plaza","address_2":"","postcode":"plaza","city":"plaza","zone_id":"3516","zone":"Angus","zone_code":"AGS","country_id":"222","country":"United Kingdom","iso_code_2":"GB","iso_code_3":"GBR","address_format":"","custom_field":null},"user_id":"1","user_token":"RUCoeIdDTm1ZBKMOeR6Fl4PlnXtUDIxK"}', '2017-10-07 04:39:27'),
('4fcb1a70d56af6386034158093', '{"language":"en-gb","currency":"USD"}', '2017-08-22 02:25:36'),
('504444d6304ba65762b39f1d84', '{"language":"en-gb","currency":"USD"}', '2017-11-06 07:48:04'),
('50956c2590fcede79fa0069ec8', '{"language":"en-gb","currency":"EUR","user_id":"1","user_token":"pV5WsoAx9b4nS2pf5IH5tYgum8ZxSYyM","install":"XoDZ4F00IS"}', '2017-08-09 10:45:49'),
('50fdb6bf4de5fccf7fc16bda3d', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"LSNYfLuvLJvw1shJgs6zvoQOLfGULTwE"}', '2017-09-14 08:13:30'),
('518056e2f1735f12ae670f4e4f', 'false', '2017-11-01 11:01:52'),
('5253e724dfdce75f9cfb440798', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"X5r3YYqhoCIBnz4HHEuPBlndeOfU0BqJ"}', '2017-09-29 10:27:58'),
('53023787ddaaf7f4b8a3b91c67', '{"language":"en-gb","currency":"USD"}', '2017-10-25 09:18:24'),
('53ff419990db5e707e5be964a6', '{"language":"en-gb","currency":"USD"}', '2017-10-19 09:54:47'),
('55e70a214d8b8e4e468f95fd95', '{"language":"en-gb","currency":"USD"}', '2017-10-30 10:06:35'),
('5738574c97328d35f9d5fc03ff', '{"language":"en-gb","currency":"USD"}', '2017-10-23 10:54:40'),
('575f8908b072cced000c8cad22', '{"language":"en-gb","currency":"USD"}', '2017-09-05 03:49:39'),
('59bf85014fd4eea58b60450055', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"KFpJ45tLczUNvkvaF6ZrM2pWq6d84R5V","install":"XPDkVxUsvj"}', '2017-11-09 10:14:51'),
('5a4f25e879a2adcdb631a23c8e', '{"language":"en-gb","currency":"USD"}', '2017-08-29 08:08:27'),
('5cd9ff4020cff1ad2748ab332d', '{"language":"en-gb","currency":"USD"}', '2017-10-18 08:45:14'),
('5dd4225803d4f917f03fbb96a7', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"F04iWshdqRlRFVYWyaa16MKsXysfdRwu","install":"HMzzjIKQuA"}', '2017-09-11 10:54:02'),
('5ed8179aa8342af99e00344599', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"9QRTkrSWTdyXMpjZJx5c8qmMfM6txeld"}', '2017-11-02 09:21:11'),
('5f191fe46a5b881a8291148662', '{"language":"en-gb","currency":"USD"}', '2017-11-07 03:48:55'),
('61d4df232c75363a09141ecd9e', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"An89dLlE66tLLktprlBEoINSXKnjjBOM","customer_id":"1","shipping_address":false}', '2017-09-07 10:18:18'),
('6314d074bab798c19a8a261ca0', '{"language":"en-gb","currency":"USD"}', '2017-09-06 10:45:37'),
('63f45ce0a15e847e22e0953dd0', '{"language":"en-gb","currency":"USD"}', '2017-10-17 10:42:11'),
('65c9b91d381c22662ac843200b', '{"language":"en-gb","currency":"USD"}', '2017-10-20 10:07:25'),
('6966b4c294feee1fdc35a242a5', '{"language":"en-gb","currency":"USD"}', '2017-11-15 08:59:15'),
('69b56e641cb0ad904b7e8dff20', '{"language":"en-gb","currency":"USD"}', '2017-11-06 08:16:05'),
('6ae4174111ad2fdd0e91a128d3', '{"language":"en-gb","currency":"USD"}', '2017-10-24 03:01:10'),
('6c4e45d89caa893c54401dca08', '{"user_id":"1","user_token":"fiCUnQQz3YPFrWDk21EKkzVSjLPfLLHH"}', '2017-10-19 10:12:09'),
('6ca6898cd0e698d14092e4bf11', '{"language":"en-gb","currency":"USD"}', '2017-08-22 02:30:58'),
('6e85094a47e0af0a3f746a41af', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"Y1XUfZHTOnBnb6FQwwxcnESlmwXjVCl4"}', '2017-11-04 03:58:11'),
('6f2e359060b607f935801d4997', '{"language":"en-gb","currency":"USD"}', '2017-08-11 10:02:54'),
('707c330d464cd7387ea5466a92', '{"language":"en-gb","currency":"USD","vouchers":[],"user_id":"1","user_token":"q2NrbXqlVFefxbZc7TUTeGpLF9xjIBbM"}', '2017-10-05 08:52:14'),
('7148d5170bc294703ed3b478e8', '{"user_id":"1","user_token":"RlzVRPrQzMbzeIapsijK9YrWP2Q84BwK","language":"en-gb","currency":"USD","install":"pjgEJmMJcj"}', '2017-08-11 10:48:41'),
('73834da908d44fccd4d4554dda', '{"language":"en-gb","currency":"USD"}', '2017-11-02 04:44:32'),
('73b88657fc102c6da5e90dc236', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"tWwRc9YMV1x6Okv03b19Inx5sgYY47Jv","wishlist":["42"]}', '2017-10-02 10:53:27'),
('73be9336142304bc44ff2c92fd', '{"language":"en-gb","currency":"USD","customer_id":"1","compare":["34"]}', '2017-09-06 10:48:38'),
('73c4d9eb8d78a5f042368b9529', '{"language":"en-gb","currency":"USD"}', '2017-10-24 10:06:44'),
('73eec68d5c4e2f34afdb7b9f08', '{"user_id":"1","user_token":"HAvh1PTtzhm9EpdJgRYMP7k3mnCSTYt7","language":"en-gb","currency":"USD"}', '2017-10-17 10:43:47'),
('755e4bb81511432e4209787220', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"b13ONWwFNYVkXtVJXkeey2S1drBOAXSF"}', '2017-11-13 01:45:44'),
('7c6874129204376cfcbc82a4cf', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"Yv8NHaCBbfnTzYQ4OUIh99fTjKKfDkt4"}', '2017-08-23 09:15:37'),
('7eb6d964eb5ec6209aae8d5b81', 'false', '2017-10-23 01:51:54'),
('7ed5e48c20a2623a3f45c33017', '{"language":"en-gb","currency":"USD","wishlist":[],"customer_id":"1"}', '2017-09-08 04:17:17'),
('7f02ea0725caf63a08cdbb4fd2', '{"user_id":"1","user_token":"KNcQrPhgt0a6CdKJPE81N05y0whcmLgB"}', '2017-10-16 16:23:16'),
('7f5b48542f34507ba9fd0b07c3', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"Ug9n11N44PYYYgHma1rt7JVFN3zAmNAJ"}', '2017-09-12 07:44:40'),
('808b331943ac72879691d50fa2', '{"user_id":"1","user_token":"aYhoR47J5R9QjUtMvvwdbmN8wQnNkj4S"}', '2017-09-03 15:47:30'),
('80fb9ed65b6f99c1a53d71b648', '{"user_id":"1","user_token":"FuRlUtCYkL02h0NqHfDC3rWM3EFBDvFn"}', '2017-10-24 02:45:55'),
('825209b876a34b1672150447fd', '{"language":"en-gb","currency":"USD"}', '2017-08-30 15:11:29'),
('8762f6e2dd3754262d2cbec307', '{"language":"en-gb","currency":"USD"}', '2017-11-09 10:31:38'),
('878ae6702220e75349dc672ee7', '{"user_id":"1","user_token":"VqKTzFXwBH5R945PVSevLfckLmOVH4K8"}', '2017-10-25 10:19:40'),
('895cf8aa4b648c49e0a78beb81', '{"user_id":"1","user_token":"3zo8fANjFYiAxVLlJLqU26BvYVk95hvc","language":"en-gb","currency":"EUR","install":"WNuOG45vNq"}', '2017-08-10 04:15:49'),
('8b6866069b5b1ee6e49fee8197', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"do36ZFEfC1W80GS3vlVBe9IiIKvf8z0O"}', '2017-08-24 16:20:08'),
('8d753e3ad66c9c1892bee6263e', 'false', '2017-10-21 15:29:24'),
('8f11c4522c9392889859413d83', '{"user_id":"1","user_token":"ysANXEe4eCn0GmTz67Xi4K19n79Hynx4","language":"en-gb","currency":"USD"}', '2017-08-12 02:08:39'),
('93d9d27e5d7858c2eb8f972e7a', '{"user_id":"1","user_token":"FPLM81RFadtmIqOwL1VVSDsmmUtf7CXg","language":"en-gb","currency":"USD"}', '2017-08-31 10:34:30'),
('93dd0b53313112999a95c6033c', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"XNZmJNtYe6e488xflGrAjEtlwLeSomNe"}', '2017-08-10 04:53:13'),
('9401f33b17e40e14b952372021', '{"user_id":"1","user_token":"sEKIWdqS0593YiVWqUHIwn6GVWi3h4Q8","language":"en-gb","currency":"USD"}', '2017-08-30 09:54:08'),
('971985cdff9d7beb5c9aaeb9f9', '{"user_id":"1","user_token":"4Tj4F6zSz51l73geBOlhXcrL0AojFFRm"}', '2017-09-04 03:40:47'),
('98d457b5790163bd9d9fae4980', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"2sr88fvmvuzqsTBGZxKmrRwQm8YMVdN3"}', '2017-08-30 15:32:50'),
('98ee77a36e9e802ebd31fdd494', '{"language":"en-gb","currency":"USD"}', '2017-09-07 15:57:10'),
('99197f4decef2fe765e09e9637', '{"language":"en-gb","currency":"USD"}', '2017-11-09 10:26:28'),
('9aa84c9065d5a8b6ac20bca17a', '{"language":"en-gb","currency":"USD","customer_id":"1"}', '2017-09-08 03:43:48'),
('9bbbd477e816df130e2275acf1', '{"language":"en-gb","currency":"USD"}', '2017-08-22 02:27:14'),
('9c65150cc0d6e14809f950c280', '{"language":"en-gb","currency":"USD"}', '2017-10-21 01:40:50'),
('9df993e0de02f7c573fe021463', '{"language":"en-gb","currency":"USD"}', '2017-09-01 10:51:43'),
('9e00509db567170c3d58ee254c', '{"user_id":"1","user_token":"1bAAqig2hQ9ns552EcrIcdsFwKMfWGN6","language":"en-gb","currency":"USD"}', '2017-08-18 03:10:15'),
('9e55daa259bf4b54fb277b2b6e', '{"user_id":"1","user_token":"tjfqedEFl5X7wlEnMOkl8ooeaImkNymF","language":"en-gb","currency":"USD"}', '2017-10-24 10:36:19'),
('9eb7b031ec24363f5dcf3fe2ed', '{"language":"en-gb","currency":"USD"}', '2017-11-06 10:39:32'),
('9eca700b1cca0f59129fb427c5', '{"language":"en-gb","currency":"USD"}', '2017-10-05 15:54:02'),
('a03c587e4efb6ea21862b1be8a', '{"language":"en-gb","currency":"USD"}', '2017-08-29 08:10:35'),
('a134f4e38a26b25d48fa1eaa2a', '{"language":"en-gb","currency":"USD"}', '2017-11-13 08:18:06'),
('a23b78b17d040f031c0c5c36e9', '{"language":"en-gb","currency":"USD","compare":["35"],"wishlist":["40"]}', '2017-11-03 10:38:08'),
('a2490ed2040707e0a562844497', '{"user_id":"1","user_token":"xM6haga44Zpex4oici4DgKBG3Sw2oL73","language":"en-gb","currency":"USD"}', '2017-08-12 05:22:04'),
('a24d7f67fbab7e6c5985db5f2f', '{"user_id":"1","user_token":"LNtOCMLZ1yTV9J2A8IP2r4u4sbSxyKb7","language":"en-gb","currency":"USD"}', '2017-10-20 10:09:06'),
('a27216f6742f5f7799267ec3cd', '{"language":"en-gb","currency":"USD"}', '2017-08-22 02:31:01'),
('a2ba9bebe486bc28da6a1d0132', '{"user_id":"1","user_token":"CUnArQMZeKvh7MUrxddxzodGXPTMgTAo","language":"en-gb","currency":"USD"}', '2017-08-12 02:13:51'),
('a3a95e8dc2f97515be2875d434', '{"user_id":"1","user_token":"sdKEGN5NBD9lo9hhshix1SxoCOCRQwzX","language":"en-gb","currency":"USD","compare":["30","31"],"install":"Gn3f4i6OW0"}', '2017-08-15 10:44:29'),
('a7bab075346372af63b970a03f', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"AodRldL8Cm3dmF3mr6lwTtNnH0aLclFG","install":"P1D9E4l1yG"}', '2017-09-08 10:30:49'),
('a9550b3f201d6c8712aafb57e1', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"Q5q6ycNxFrodCuImQujx15VvuX0h6Nzw"}', '2017-08-25 09:10:59'),
('aa15b9b404d59c3598dccad7d2', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"LuYYUYCmX2pfdYsYyPT9pK11LrfeA4xf"}', '2017-09-07 15:56:18'),
('ad782eb7020ac7aea6fdf24038', '{"language":"en-gb","currency":"USD"}', '2017-10-21 15:43:51'),
('adc58491fb3e6d851315ae57e1', '{"language":"en-gb","currency":"USD"}', '2017-10-26 10:13:09'),
('ae3e5f096f04925aa258927671', '{"language":"en-gb","currency":"USD"}', '2017-10-14 05:01:34'),
('aeaab82fe6e7b65246a05309c7', '{"user_id":"1","user_token":"v9ByCm8dILyFO44k9VYuh6NM1ufG6l2X","language":"en-gb","currency":"USD","install":"sp93w8x2Kj"}', '2017-08-10 10:46:57'),
('aedd644818d51ea2a20cdcd39b', '{"language":"en-gb","currency":"USD"}', '2017-09-03 14:23:36'),
('aeebbb09878a777dc38c8d1d46', '{"language":"en-gb","currency":"USD"}', '2017-09-05 15:55:06'),
('afa8bb40c50e5d5619fbc6af15', '{"language":"en-gb","currency":"USD"}', '2017-10-30 08:32:47'),
('b209199b5055df180f8c996127', '{"language":"en-gb","currency":"USD"}', '2017-11-09 10:27:09'),
('b22ce471b29a4a7cae793f5862', '{"language":"en-gb","currency":"USD"}', '2017-09-03 15:48:47'),
('b386e77b5f81a3a624ddc1882a', '{"language":"en-gb","currency":"USD"}', '2017-08-11 10:12:11'),
('b52fb79b8da98bf64819d73137', '{"language":"en-gb","currency":"USD"}', '2017-10-16 16:37:04'),
('b53983c8f8ff2adb6988cc7dc3', '{"language":"en-gb","currency":"USD"}', '2017-11-15 09:08:07'),
('b7e14eb33f8a450feec91b9c3e', '{"language":"en-gb","currency":"USD"}', '2017-09-01 03:36:15'),
('b8c62a069d415aae750e794094', '{"user_id":"1","user_token":"cAdXGDcVvUE4zynp8YhSp76h80WbTSSw"}', '2017-11-06 12:52:16'),
('bb80babec50c3fa34d48e85769', '{"user_id":"1","user_token":"JgE5hItoPDZD4fvO2utrJHluW0dPhpuu","language":"en-gb","currency":"USD","wishlist":["42","30"],"compare":["42","30"],"install":"Zly8PEmwsv"}', '2017-08-16 09:56:10'),
('bb9fb8f35da6143395517ede6b', '{"language":"en-gb","currency":"USD"}', '2017-08-22 02:31:00'),
('bdb3bf9d84ca2e1f7ae66fad0e', '{"language":"en-gb","currency":"USD"}', '2017-09-01 03:36:25'),
('bec6e01d445f4037d95bd0515b', '{"user_id":"1","user_token":"Henzr8FukgLWVTjhbdyRAl5GvKdztOMX","install":"JfjkLQ2SGP","language":"en-gb","currency":"USD"}', '2017-09-08 08:25:00'),
('bf31176f83f10438bd8b065a94', '{"language":"en-gb","currency":"USD"}', '2017-11-07 03:43:57'),
('c0b44aa8c92cf29b4cb547af70', '{"language":"en-gb","currency":"USD"}', '2017-09-14 02:26:25'),
('c172c53b96fd686540359e220a', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"cAP3jCDpeaoydXxCEGRxAKtWJ8nSaQ47","install":"J8EqOYRoWh"}', '2017-08-26 17:43:01'),
('c34dacd13fc57674c03af50d84', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"bcH7QKzVxOVVG6aE9Y6FBXiUEOcSDZnp"}', '2017-09-06 10:32:32'),
('c4cd24d272b957813601167250', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"q9o3T96XBmGMAZphCmI8Nw9OuYRO4S44"}', '2017-11-15 09:14:43'),
('c55cac4c6be499bfdfa3b705da', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"ctJFDT26NrZltgfWcrgfJFRHOAhYkrlO"}', '2017-10-21 04:51:01'),
('c6d33f91cececda3dd7b30c83d', '{"language":"en-gb","currency":"USD"}', '2017-11-15 09:14:38'),
('c6ef99e9cc8d99dbc52598c86c', '{"language":"en-gb","currency":"USD"}', '2017-09-07 02:42:04'),
('c795b926944c9044f34d505a02', '{"user_id":"1","user_token":"8qgECVIur3g4gwrranZrbvBBFQ1hseWB","language":"en-gb","currency":"USD"}', '2017-09-28 10:27:16'),
('c94964096e74f8dc16dfd103f7', '{"language":"en-gb","currency":"USD"}', '2017-09-11 16:03:19'),
('c9fddd26689127a0aa705bf24d', '{"language":"en-gb","currency":"USD"}', '2017-08-29 08:10:33'),
('cb8c30f3c006502cdb9d25d421', '{"user_id":"1","user_token":"S05eIZBCOB1XRMA4MQepOVtGUcB1OEoI","language":"en-gb","currency":"USD"}', '2017-10-31 10:19:23'),
('cc2d348c68791f9f0c0a14352f', '{"language":"en-gb","currency":"USD"}', '2017-08-10 04:18:32'),
('cce4d8c26beb8a5148c0b71da7', '{"language":"en-gb","currency":"USD"}', '2017-09-04 04:01:52'),
('cd7eca74eea15fef579fedcf97', '{"language":"en-gb","currency":"USD"}', '2017-11-06 09:45:28'),
('cdb72a74293d761e53b466d74c', '{"language":"en-gb","currency":"USD"}', '2017-09-05 10:53:07'),
('cdb816e0f2d22af241970dc862', '{"user_id":"1","user_token":"SNWLC9YVS1UKZYnhhvN3Ia6m9QAZLhW2","language":"en-gb","currency":"USD"}', '2017-10-18 10:53:53'),
('cec42a549289fc7f87480396df', '{"language":"en-gb","currency":"USD"}', '2017-10-24 10:24:18'),
('d18c64c9747256d50b1e2a5d74', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"u7smgrAHJz8lpdg3w7LtTRGMOjPuvckI","install":"l0GppXM6UH"}', '2017-08-22 10:08:48'),
('d269fa2d47b6ef4fd0dfbb6f3e', '{"user_id":"1","user_token":"ueboQ8AweS4Co53YhEsC0f6ZK4hfREW0","language":"en-gb","currency":"USD"}', '2017-08-17 04:34:20'),
('d2b0b522d05d70d00714831342', '{"user_id":"1","user_token":"8uyDDcqGo2UleXdPRLYvJEnjesR9dU0R"}', '2017-10-28 03:17:58'),
('d5ea939a3e4e0a52a2b5e5ee75', '{"user_id":"1","user_token":"Vrw9r5n6iiqk9nnDX2khRSBOcuwWVOCY","language":"en-gb","currency":"USD"}', '2017-08-17 09:19:45'),
('d74d4a948a094646353147f42d', '{"language":"en-gb","currency":"USD"}', '2017-11-09 03:07:57'),
('da871acdf0013e55bfb298b8a6', '{"language":"en-gb","currency":"USD"}', '2017-10-26 10:10:36'),
('dc1fff0c562de8a2fab0aefef2', '{"language":"en-gb","currency":"USD"}', '2017-11-13 08:21:34'),
('dc5375f0c7340d940faa44269f', '{"language":"en-gb","currency":"USD"}', '2017-11-06 10:31:13'),
('dfb453ca664d53e17a1f7ab0dd', '{"language":"en-gb","currency":"USD"}', '2017-10-27 01:53:07'),
('e20bd4107aeb849ac64b1995f8', '{"language":"en-gb","currency":"USD"}', '2017-11-15 09:05:01'),
('e5f12814c1c53185373d88f439', '{"user_id":"1","user_token":"oisdf6mJTfFjDDMqfHkxLuRXqmf3x9vJ","language":"en-gb","currency":"USD"}', '2017-11-06 09:15:02'),
('e8432b895f6a8b026fc2b88f3f', '{"user_id":"1","user_token":"LcflDhz9zgUIgDGXtHg0JH1gwRfxTFoQ"}', '2017-08-16 13:45:06'),
('e93656c0b3a170a6fb7a28ed07', '{"language":"en-gb","currency":"USD"}', '2017-11-09 10:25:33'),
('e9beb53e9cac8b6fa5483bf692', '{"language":"en-gb","currency":"USD","wishlist":["29"]}', '2017-08-30 09:29:24'),
('eb3b5735b7d5ec35d918d534b8', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"U65J1T1tagVzb9HTzElltR8SLccwg2ag"}', '2017-10-04 04:18:43'),
('eb893fcd8cdae3f9f0c7925731', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"iba4zinxU7pVJuYj78t4Nrmg7xZwU8tW"}', '2017-10-06 10:54:23'),
('ec0bd182ad638a6b820f806cb1', '{"language":"en-gb","currency":"USD"}', '2017-10-24 09:36:48'),
('ecb97873e368b86dc5363b91ed', '{"user_id":"1","user_token":"YU9fTZJuBcJEtk0HmGWgosSMZp5jdysJ","language":"en-gb","currency":"USD"}', '2017-09-05 15:49:34'),
('eeae079fb596fb2de6a222071d', '{"language":"en-gb","currency":"USD"}', '2017-10-26 10:14:09'),
('eec5148a8ac43346ca44718ab4', '{"language":"en-gb","currency":"USD"}', '2017-08-30 09:35:07'),
('f2c29cde2eccd6e1959b5ab627', '{"language":"en-gb","currency":"USD"}', '2017-08-29 10:50:00'),
('f2c53ec05335aaff99f0fb5313', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"1OLo1q85MV4GfY2fVVcGOiHQ9zNjpWLa","install":"c9lQzwENfe"}', '2017-11-10 08:05:20'),
('f3971cfb7b2ac65e3fb93c78a6', '{"language":"en-gb","currency":"USD"}', '2017-11-09 10:26:48'),
('f3ddd3afeaf311199a693bd209', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"Nly6opSskgM5p8dObKorMH9tpF50whWN"}', '2017-10-23 10:16:59'),
('f41fce32e3497000268d3b9bb0', '{"language":"en-gb","currency":"USD"}', '2017-08-12 02:12:23'),
('f59f5d8ae35ac4cb98fca71cc8', '{"language":"en-gb","currency":"USD"}', '2017-11-07 03:49:13'),
('f63465b4fd30fe320ab53c0897', '{"language":"en-gb","currency":"USD"}', '2017-09-06 08:25:03'),
('f67890387afda6910fc9eb9f49', '{"language":"en-gb","currency":"USD"}', '2017-11-06 08:28:35'),
('f68857fd6533580447fb66a0d4', '{"language":"en-gb","currency":"USD"}', '2017-09-08 03:07:04'),
('fa8befde65110a4dd4065078c7', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"axSfhCriPzTQDYSpAdaO4fdzigqASwIw"}', '2017-08-27 10:59:59'),
('fc52ac6d88b8c381a5cfd06b64', '{"language":"en-gb","currency":"USD","wishlist":[],"customer_id":"1"}', '2017-09-08 08:11:07'),
('fc99b6a8a84478eeccaffae807', '{"language":"en-gb","currency":"USD"}', '2017-08-31 07:04:22'),
('fd2cb42b19f6356562da9b7ab3', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"zSmuWTKqfZaaWXXGTL0Xvdfyvdfsexzi"}', '2017-08-24 10:43:13'),
('fde32e811b94c4003bbca55e3e', '{"language":"en-gb","currency":"USD"}', '2017-11-09 10:27:32');

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(2240, 0, 'config', 'config_compression', '4', 0),
(2241, 0, 'config', 'config_secure', '0', 0),
(2242, 0, 'config', 'config_password', '1', 0),
(2243, 0, 'config', 'config_shared', '0', 0),
(2244, 0, 'config', 'config_encryption', '44fRV345WctjXKOGCj5nXoJS5b09Stv7nSePfNTqu3SHVPjr11iRpFRb8OtOck9AYV9H7w8nG00V0AyMuXdWatpmM6UzWAtdNtMjLSJCUkii1RCheREUS2UkPuirQ9LtVAKGUwcZWpmYQIFqQb3wdBB1e0fJmpYkj5GeQbjMBRxzcWWru2Maq6nZbV59VzLwJNF4yp3YtWaQ6jqoTZxvwojslTczvolY66UAtTPhiaiF7DqSkjFWCYZIjDLDUyke99JP3yRsfA2K37oB8cI4rKrBEjjr7IS2we7NOFLgtbLEIbBIEVYWlTSEa1Gy4xjFieCG3yCVQ9Sqxdis7OeTIZfcDSEZJXhuQBn5DrB9QXRIGdTofKJ3d9VVQONoalvXMoN9oZqij3XbJdsuAzZ5AAc4UFZzzHom9XDvUF9nQ3K97bnBPQSik0a259brMkqMhO9oB4dkoa8xm2RCeFtDGBB5v3hyBgURn2EhqNTmIwRsD6mzbwVcilBc7ZBVvvaCNlFd3G1CvW7DYgD46xvQJIvkfhyakhI7lnei7DQKO70fzZtsZqohyFoffP8x5nOf5ovEib4yt5rD6kDDJVzEzf734hvSU4yqFtALFTFdwkKUGmrieN2Eh2D0r4thWWadnbPAtGneOChTgZglX2pfCLVPf9SgFGqZkf08M1smUUt6JG2QtjrRAdjFlNukeoHnHnbJaztB61nv9SSIy21YsS3PGOZ279SjoYmyYczr3iRTZWOQmOrzpkmq0cRET9gGtAnFmBDqRvnzqPRw7f6B2iDOnd4ZS0O3LfzCgYAXa6WCcW9q64IeA79WJ6DqHPfoUs3Hs6ox2Zo8ReMYlIS9TtEwbtBSmdl8t1jES22sjrDT6UJ1rnotyAztDuuQhkTn5H5vxaltQBmGact21Y5rJepcbc7jGBQrqGs7v1FMUlyUCcIHDyysg8WBIGgBT79klxAYV0CQ7JxafirOip2tXLVJNWkVhvJM9EX1BqIS9qCffokK733bs9DFQMJtyAC7', 0),
(2226, 0, 'config', 'config_logo', 'catalog/logo.png', 0),
(2227, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(2228, 0, 'config', 'config_mail_engine', 'mail', 0),
(2229, 0, 'config', 'config_mail_parameter', '', 0),
(2230, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(2231, 0, 'config', 'config_mail_smtp_username', '', 0),
(2232, 0, 'config', 'config_mail_smtp_password', '', 0),
(2233, 0, 'config', 'config_mail_smtp_port', '25', 0),
(2234, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(2235, 0, 'config', 'config_mail_alert', '["order"]', 1),
(2236, 0, 'config', 'config_mail_alert_email', '', 0),
(2237, 0, 'config', 'config_maintenance', '0', 0),
(2238, 0, 'config', 'config_seo_url', '0', 0),
(2239, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(4, 0, 'voucher', 'total_voucher_sort_order', '8', 0),
(5, 0, 'voucher', 'total_voucher_status', '1', 0),
(1226, 0, 'developer', 'developer_sass', '0', 0),
(2207, 0, 'config', 'config_checkout_guest', '1', 0),
(2208, 0, 'config', 'config_checkout_id', '5', 0),
(2209, 0, 'config', 'config_order_status_id', '1', 0),
(2210, 0, 'config', 'config_processing_status', '["5","1","2","12","3"]', 1),
(2211, 0, 'config', 'config_complete_status', '["5","3"]', 1),
(2212, 0, 'config', 'config_fraud_status_id', '7', 0),
(2213, 0, 'config', 'config_api_id', '3', 0),
(2214, 0, 'config', 'config_stock_display', '0', 0),
(2215, 0, 'config', 'config_stock_warning', '0', 0),
(2216, 0, 'config', 'config_stock_checkout', '0', 0),
(2217, 0, 'config', 'config_affiliate_group_id', '1', 0),
(2218, 0, 'config', 'config_affiliate_approval', '0', 0),
(2219, 0, 'config', 'config_affiliate_auto', '0', 0),
(2220, 0, 'config', 'config_affiliate_commission', '5', 0),
(2221, 0, 'config', 'config_affiliate_id', '4', 0),
(2222, 0, 'config', 'config_return_id', '0', 0),
(2223, 0, 'config', 'config_return_status_id', '2', 0),
(2224, 0, 'config', 'config_captcha', '', 0),
(2225, 0, 'config', 'config_captcha_page', '["review","return","contact"]', 1),
(2206, 0, 'config', 'config_cart_weight', '1', 0),
(2205, 0, 'config', 'config_invoice_prefix', 'INV-2017-00', 0),
(2204, 0, 'config', 'config_account_id', '3', 0),
(2203, 0, 'config', 'config_login_attempts', '5', 0),
(2202, 0, 'config', 'config_customer_price', '0', 0),
(95, 0, 'payment_free_checkout', 'payment_free_checkout_status', '1', 0),
(96, 0, 'payment_free_checkout', 'free_checkout_order_status_id', '1', 0),
(97, 0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', 0),
(98, 0, 'payment_cod', 'payment_cod_sort_order', '5', 0),
(99, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(100, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(101, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(102, 0, 'payment_cod', 'payment_cod_status', '1', 0),
(103, 0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
(104, 0, 'shipping_flat', 'shipping_flat_status', '1', 0),
(105, 0, 'shipping_flat', 'shipping_flat_geo_zone_id', '0', 0),
(106, 0, 'shipping_flat', 'shipping_flat_tax_class_id', '9', 0),
(107, 0, 'shipping_flat', 'shipping_flat_cost', '5.00', 0),
(108, 0, 'total_shipping', 'total_shipping_sort_order', '3', 0),
(109, 0, 'total_sub_total', 'sub_total_sort_order', '1', 0),
(110, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(111, 0, 'total_tax', 'total_tax_status', '1', 0),
(112, 0, 'total_total', 'total_total_sort_order', '9', 0),
(113, 0, 'total_total', 'total_total_status', '1', 0),
(114, 0, 'total_tax', 'total_tax_sort_order', '5', 0),
(115, 0, 'total_credit', 'total_credit_sort_order', '7', 0),
(116, 0, 'total_credit', 'total_credit_status', '1', 0),
(117, 0, 'total_reward', 'total_reward_sort_order', '2', 0),
(118, 0, 'total_reward', 'total_reward_status', '1', 0),
(119, 0, 'total_shipping', 'total_shipping_status', '1', 0),
(120, 0, 'total_shipping', 'total_shipping_estimator', '1', 0),
(121, 0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
(122, 0, 'total_coupon', 'total_coupon_status', '1', 0),
(2201, 0, 'config', 'config_customer_group_display', '["1"]', 1),
(2200, 0, 'config', 'config_customer_group_id', '1', 0),
(2312, 0, 'theme_default', 'theme_default_image_cart_height', '105', 0),
(2311, 0, 'theme_default', 'theme_default_image_cart_width', '100', 0),
(2310, 0, 'theme_default', 'theme_default_image_wishlist_height', '105', 0),
(2308, 0, 'theme_default', 'theme_default_image_compare_height', '105', 0),
(2309, 0, 'theme_default', 'theme_default_image_wishlist_width', '100', 0),
(1050, 0, 'module_oclayerednavigation', 'module_oclayerednavigation_loader_img', 'catalog/AjaxLoader.gif', 0),
(2307, 0, 'theme_default', 'theme_default_image_compare_width', '100', 0),
(2306, 0, 'theme_default', 'theme_default_image_related_height', '667', 0),
(2305, 0, 'theme_default', 'theme_default_image_related_width', '600', 0),
(2304, 0, 'theme_default', 'theme_default_image_additional_height', '667', 0),
(2303, 0, 'theme_default', 'theme_default_image_additional_width', '600', 0),
(2302, 0, 'theme_default', 'theme_default_image_product_height', '667', 0),
(149, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(150, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(151, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(153, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(155, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(157, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(158, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(159, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(160, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(161, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(162, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(163, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(164, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(165, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(166, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(167, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(168, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(169, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(171, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(172, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(173, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(174, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(175, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(176, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(177, 0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
(178, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(179, 0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
(180, 0, 'report_customer_search', 'report_customer_search_status', '1', 0),
(181, 0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
(182, 0, 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', 0),
(183, 0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
(184, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
(185, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(186, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
(187, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(188, 0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
(189, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(190, 0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
(191, 0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
(192, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
(193, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(194, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
(195, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(196, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
(197, 0, 'report_marketing', 'report_marketing_status', '1', 0),
(198, 0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
(1225, 0, 'developer', 'developer_theme', '0', 0),
(2199, 0, 'config', 'config_customer_search', '0', 0),
(2198, 0, 'config', 'config_customer_activity', '0', 0),
(2197, 0, 'config', 'config_customer_online', '0', 0),
(2196, 0, 'config', 'config_tax_customer', 'shipping', 0),
(2195, 0, 'config', 'config_tax_default', 'shipping', 0),
(2194, 0, 'config', 'config_tax', '1', 0),
(2193, 0, 'config', 'config_voucher_max', '1000', 0),
(2192, 0, 'config', 'config_voucher_min', '1', 0),
(2191, 0, 'config', 'config_review_guest', '1', 0),
(2190, 0, 'config', 'config_review_status', '1', 0),
(2189, 0, 'config', 'config_limit_admin', '20', 0),
(2188, 0, 'config', 'config_product_count', '1', 0),
(2187, 0, 'config', 'config_weight_class_id', '1', 0),
(2186, 0, 'config', 'config_length_class_id', '1', 0),
(2185, 0, 'config', 'config_currency_auto', '1', 0),
(2414, 1, 'config', 'config_stock_display', '0', 0),
(2184, 0, 'config', 'config_currency', 'USD', 0),
(2183, 0, 'config', 'config_admin_language', 'en-gb', 0),
(2182, 0, 'config', 'config_language', 'en-gb', 0),
(2181, 0, 'config', 'config_zone_id', '3563', 0),
(2180, 0, 'config', 'config_country_id', '222', 0),
(2179, 0, 'config', 'config_comment', '', 0),
(2178, 0, 'config', 'config_open', '', 0),
(2177, 0, 'config', 'config_image', '', 0),
(2413, 1, 'config', 'config_order_status_id', '7', 0),
(2412, 1, 'config', 'config_checkout_id', '0', 0),
(2411, 1, 'config', 'config_checkout_guest', '0', 0),
(2410, 1, 'config', 'config_cart_weight', '0', 0),
(2409, 1, 'config', 'config_account_id', '0', 0),
(2408, 1, 'config', 'config_customer_price', '0', 0),
(2407, 1, 'config', 'config_customer_group_id', '1', 0),
(2406, 1, 'config', 'config_tax_customer', '', 0),
(2404, 1, 'config', 'config_tax', '0', 0),
(2405, 1, 'config', 'config_tax_default', '', 0),
(2403, 1, 'config', 'config_currency', 'USD', 0),
(2402, 1, 'config', 'config_language', 'en-gb', 0),
(2444, 2, 'config', 'config_customer_price', '0', 0),
(2443, 2, 'config', 'config_customer_group_id', '1', 0),
(2442, 2, 'config', 'config_tax_customer', '', 0),
(2441, 2, 'config', 'config_tax_default', '', 0),
(2440, 2, 'config', 'config_tax', '0', 0),
(2439, 2, 'config', 'config_currency', 'USD', 0),
(2438, 2, 'config', 'config_language', 'en-gb', 0),
(2437, 2, 'config', 'config_zone_id', '3516', 0),
(2400, 1, 'config', 'config_country_id', '222', 0),
(2436, 2, 'config', 'config_country_id', '222', 0),
(2435, 2, 'config', 'config_comment', '', 0),
(2434, 2, 'config', 'config_open', '', 0),
(2433, 2, 'config', 'config_image', '', 0),
(2432, 2, 'config', 'config_fax', '01234567890', 0),
(2528, 3, 'config', 'config_customer_price', '0', 0),
(2527, 3, 'config', 'config_customer_group_id', '1', 0),
(2526, 3, 'config', 'config_tax_customer', '', 0),
(2525, 3, 'config', 'config_tax_default', '', 0),
(2524, 3, 'config', 'config_tax', '0', 0),
(2523, 3, 'config', 'config_currency', 'USD', 0),
(2522, 3, 'config', 'config_language', 'en-gb', 0),
(2521, 3, 'config', 'config_zone_id', '3516', 0),
(2520, 3, 'config', 'config_country_id', '222', 0),
(2401, 1, 'config', 'config_zone_id', '3516', 0),
(2519, 3, 'config', 'config_comment', '', 0),
(2518, 3, 'config', 'config_open', '', 0),
(2517, 3, 'config', 'config_image', '', 0),
(2516, 3, 'config', 'config_fax', '01234567890', 0),
(2515, 3, 'config', 'config_telephone', '1234567890', 0),
(2514, 3, 'config', 'config_email', 'demo@plazathemes.com', 0),
(2513, 3, 'config', 'config_geocode', 'United Kingdom', 0),
(2512, 3, 'config', 'config_address', 'No 40 Baria Sreet 133/2, NewYork, USA', 0),
(2726, 4, 'config', 'config_stock_display', '0', 0),
(2727, 4, 'config', 'config_stock_checkout', '0', 0),
(2725, 4, 'config', 'config_order_status_id', '7', 0),
(2724, 4, 'config', 'config_checkout_id', '0', 0),
(2723, 4, 'config', 'config_checkout_guest', '0', 0),
(2722, 4, 'config', 'config_cart_weight', '0', 0),
(2721, 4, 'config', 'config_account_id', '0', 0),
(2720, 4, 'config', 'config_customer_price', '0', 0),
(2719, 4, 'config', 'config_customer_group_id', '1', 0),
(2718, 4, 'config', 'config_tax_customer', '', 0),
(2717, 4, 'config', 'config_tax_default', '', 0),
(2716, 4, 'config', 'config_tax', '0', 0),
(2715, 4, 'config', 'config_currency', 'USD', 0),
(2756, 5, 'config', 'config_customer_price', '0', 0),
(2755, 5, 'config', 'config_customer_group_id', '1', 0),
(2754, 5, 'config', 'config_tax_customer', '', 0),
(2753, 5, 'config', 'config_tax_default', '', 0),
(2752, 5, 'config', 'config_tax', '0', 0),
(2751, 5, 'config', 'config_currency', 'USD', 0),
(2750, 5, 'config', 'config_language', 'en-gb', 0),
(2749, 5, 'config', 'config_zone_id', '3516', 0),
(2748, 5, 'config', 'config_country_id', '222', 0),
(2747, 5, 'config', 'config_comment', '', 0),
(2746, 5, 'config', 'config_open', '', 0),
(2745, 5, 'config', 'config_image', '', 0),
(2744, 5, 'config', 'config_fax', '01234567890', 0),
(2743, 5, 'config', 'config_telephone', '1234567890', 0),
(2742, 5, 'config', 'config_email', 'demo@plazathemes.com', 0),
(2741, 5, 'config', 'config_geocode', 'United Kingdom', 0),
(2379, 1, 'theme_default', 'theme_default_image_cart_width', '100', 0),
(2378, 1, 'theme_default', 'theme_default_image_wishlist_height', '100', 0),
(2377, 1, 'theme_default', 'theme_default_image_wishlist_width', '100', 0),
(2376, 1, 'theme_default', 'theme_default_image_compare_height', '100', 0),
(2375, 1, 'theme_default', 'theme_default_image_compare_width', '100', 0),
(2374, 1, 'theme_default', 'theme_default_image_related_height', '800', 0),
(2373, 1, 'theme_default', 'theme_default_image_related_width', '800', 0),
(2372, 1, 'theme_default', 'theme_default_image_additional_height', '800', 0),
(2371, 1, 'theme_default', 'theme_default_image_additional_width', '800', 0),
(2370, 1, 'theme_default', 'theme_default_image_product_height', '800', 0),
(2369, 1, 'theme_default', 'theme_default_image_product_width', '800', 0),
(2368, 1, 'theme_default', 'theme_default_image_popup_height', '800', 0),
(2367, 1, 'theme_default', 'theme_default_image_popup_width', '800', 0),
(2366, 1, 'theme_default', 'theme_default_image_thumb_height', '800', 0),
(2365, 1, 'theme_default', 'theme_default_image_thumb_width', '800', 0),
(2511, 3, 'config', 'config_owner', 'Towerthemes', 0),
(2502, 2, 'theme_default', 'theme_default_image_location_height', '50', 0),
(2500, 2, 'theme_default', 'theme_default_image_cart_height', '105', 0),
(2501, 2, 'theme_default', 'theme_default_image_location_width', '268', 0),
(2499, 2, 'theme_default', 'theme_default_image_cart_width', '100', 0),
(2498, 2, 'theme_default', 'theme_default_image_wishlist_height', '105', 0),
(2497, 2, 'theme_default', 'theme_default_image_wishlist_width', '100', 0),
(2495, 2, 'theme_default', 'theme_default_image_compare_width', '100', 0),
(2496, 2, 'theme_default', 'theme_default_image_compare_height', '105', 0),
(2494, 2, 'theme_default', 'theme_default_image_related_height', '667', 0),
(2493, 2, 'theme_default', 'theme_default_image_related_width', '600', 0),
(2492, 2, 'theme_default', 'theme_default_image_additional_height', '667', 0),
(2491, 2, 'theme_default', 'theme_default_image_additional_width', '600', 0),
(2558, 3, 'theme_default', 'theme_default_image_wishlist_height', '105', 0),
(2557, 3, 'theme_default', 'theme_default_image_wishlist_width', '100', 0),
(2556, 3, 'theme_default', 'theme_default_image_compare_height', '105', 0),
(2555, 3, 'theme_default', 'theme_default_image_compare_width', '100', 0),
(2554, 3, 'theme_default', 'theme_default_image_related_height', '667', 0),
(2553, 3, 'theme_default', 'theme_default_image_related_width', '600', 0),
(2552, 3, 'theme_default', 'theme_default_image_additional_height', '667', 0),
(2551, 3, 'theme_default', 'theme_default_image_additional_width', '600', 0),
(2550, 3, 'theme_default', 'theme_default_image_product_height', '667', 0),
(2549, 3, 'theme_default', 'theme_default_image_product_width', '600', 0),
(2548, 3, 'theme_default', 'theme_default_image_popup_height', '667', 0),
(2618, 4, 'theme_default', 'theme_default_image_wishlist_height', '105', 0),
(2617, 4, 'theme_default', 'theme_default_image_wishlist_width', '100', 0),
(2616, 4, 'theme_default', 'theme_default_image_compare_height', '105', 0),
(2615, 4, 'theme_default', 'theme_default_image_compare_width', '100', 0),
(2614, 4, 'theme_default', 'theme_default_image_related_height', '667', 0),
(2613, 4, 'theme_default', 'theme_default_image_related_width', '600', 0),
(2612, 4, 'theme_default', 'theme_default_image_additional_height', '667', 0),
(2611, 4, 'theme_default', 'theme_default_image_additional_width', '600', 0),
(2610, 4, 'theme_default', 'theme_default_image_product_height', '667', 0),
(2609, 4, 'theme_default', 'theme_default_image_product_width', '600', 0),
(2608, 4, 'theme_default', 'theme_default_image_popup_height', '667', 0),
(2786, 5, 'theme_default', 'theme_default_image_wishlist_height', '105', 0),
(2785, 5, 'theme_default', 'theme_default_image_wishlist_width', '100', 0),
(2784, 5, 'theme_default', 'theme_default_image_compare_height', '105', 0),
(2783, 5, 'theme_default', 'theme_default_image_compare_width', '100', 0),
(2782, 5, 'theme_default', 'theme_default_image_related_height', '667', 0),
(2781, 5, 'theme_default', 'theme_default_image_related_width', '600', 0),
(2780, 5, 'theme_default', 'theme_default_image_additional_height', '667', 0),
(2779, 5, 'theme_default', 'theme_default_image_additional_width', '600', 0),
(2778, 5, 'theme_default', 'theme_default_image_product_height', '667', 0),
(2777, 5, 'theme_default', 'theme_default_image_product_width', '600', 0),
(2776, 5, 'theme_default', 'theme_default_image_popup_height', '667', 0),
(2775, 5, 'theme_default', 'theme_default_image_popup_width', '600', 0),
(2774, 5, 'theme_default', 'theme_default_image_thumb_height', '667', 0),
(2773, 5, 'theme_default', 'theme_default_image_thumb_width', '600', 0),
(2772, 5, 'theme_default', 'theme_default_image_category_height', '245', 0),
(2607, 4, 'theme_default', 'theme_default_image_popup_width', '600', 0),
(2606, 4, 'theme_default', 'theme_default_image_thumb_height', '667', 0),
(2605, 4, 'theme_default', 'theme_default_image_thumb_width', '600', 0),
(2547, 3, 'theme_default', 'theme_default_image_popup_width', '600', 0),
(2546, 3, 'theme_default', 'theme_default_image_thumb_height', '667', 0),
(2545, 3, 'theme_default', 'theme_default_image_thumb_width', '600', 0),
(2490, 2, 'theme_default', 'theme_default_image_product_height', '667', 0),
(2489, 2, 'theme_default', 'theme_default_image_product_width', '600', 0),
(2487, 2, 'theme_default', 'theme_default_image_popup_width', '600', 0),
(2364, 1, 'theme_default', 'theme_default_image_category_height', '272', 0),
(2363, 1, 'theme_default', 'theme_default_image_category_width', '870', 0),
(2301, 0, 'theme_default', 'theme_default_image_product_width', '600', 0),
(2299, 0, 'theme_default', 'theme_default_image_popup_width', '600', 0),
(2300, 0, 'theme_default', 'theme_default_image_popup_height', '667', 0),
(2362, 1, 'theme_default', 'theme_default_product_description_length', '230', 0),
(2488, 2, 'theme_default', 'theme_default_image_popup_height', '667', 0),
(2486, 2, 'theme_default', 'theme_default_image_thumb_height', '667', 0),
(2544, 3, 'theme_default', 'theme_default_image_category_height', '245', 0),
(2604, 4, 'theme_default', 'theme_default_image_category_height', '245', 0),
(2771, 5, 'theme_default', 'theme_default_image_category_width', '870', 0),
(931, 0, 'module_ocajaxlogin', 'module_ocajaxlogin_redirect_status', '0', 0),
(930, 0, 'module_ocajaxlogin', 'module_ocajaxlogin_status', '1', 0),
(924, 0, 'module_ocblog', 'module_ocblog_meta_description', 'Blog Description', 0),
(923, 0, 'module_ocblog', 'module_ocblog_meta_title', 'Momisa Blog', 0),
(922, 0, 'module_ocblog', 'module_ocblog_article_limit', '10', 0),
(1049, 0, 'module_oclayerednavigation', 'module_oclayerednavigation_status', '1', 0),
(3049, 0, 'module_octhemeoption', 'module_octhemeoption_rotator', '["1","1","1","1","1","1","1","1"]', 1),
(3050, 0, 'module_octhemeoption', 'module_octhemeoption_quickview', '["1","1","1","1","1","1","1","1"]', 1),
(3043, 0, 'module_octhemeoption', 'module_octhemeoption_status', '["0","0","0","0","0","0","0","0"]', 1),
(3044, 0, 'module_octhemeoption', 'module_octhemeoption_body', '[{"color":"707070","font_family":"Poppins","font_size":"12px","font_weight":"400","line_height":"20px"},{"color":"FFFFFF","font_family":"","font_size":"","font_weight":"","line_height":""},{"color":"FFFFFF","font_family":"","font_size":"","font_weight":"","line_height":""},{"color":"FFFFFF","font_family":"","font_size":"","font_weight":"","line_height":""},{"color":"FFFFFF","font_family":"","font_size":"","font_weight":"","line_height":""},{"color":"FFFFFF","font_family":"","font_size":"","font_weight":"","line_height":""},{"color":"FFFFFF","font_family":"","font_size":"","font_weight":"","line_height":""},{"color":"FFFFFF","font_family":"","font_size":"","font_weight":"","line_height":""}]', 1),
(3045, 0, 'module_octhemeoption', 'module_octhemeoption_a_tag', '[{"color":"292929","hover_color":"EE3333"},{"color":"FFFFFF","hover_color":"FFFFFF"},{"color":"FFFFFF","hover_color":"FFFFFF"},{"color":"FFFFFF","hover_color":"FFFFFF"},{"color":"FFFFFF","hover_color":"FFFFFF"},{"color":"FFFFFF","hover_color":"FFFFFF"},{"color":"FFFFFF","hover_color":"FFFFFF"},{"color":"FFFFFF","hover_color":"FFFFFF"}]', 1),
(3046, 0, 'module_octhemeoption', 'module_octhemeoption_header_tag', '[{"color":"292929","font_family":"Poppins","font_weight":"400","h1":{"font_size":"33px"},"h2":{"font_size":"27px"},"h3":{"font_size":"21px"},"h4":{"font_size":"15px"},"h5":{"font_size":"12px"},"h6":{"font_size":"10.2px"}},{"color":"FFFFFF","font_family":"","font_weight":"","h1":{"font_size":""},"h2":{"font_size":""},"h3":{"font_size":""},"h4":{"font_size":""},"h5":{"font_size":""},"h6":{"font_size":""}},{"color":"FFFFFF","font_family":"","font_weight":"","h1":{"font_size":""},"h2":{"font_size":""},"h3":{"font_size":""},"h4":{"font_size":""},"h5":{"font_size":""},"h6":{"font_size":""}},{"color":"FFFFFF","font_family":"","font_weight":"","h1":{"font_size":""},"h2":{"font_size":""},"h3":{"font_size":""},"h4":{"font_size":""},"h5":{"font_size":""},"h6":{"font_size":""}},{"color":"FFFFFF","font_family":"","font_weight":"","h1":{"font_size":""},"h2":{"font_size":""},"h3":{"font_size":""},"h4":{"font_size":""},"h5":{"font_size":""},"h6":{"font_size":""}},{"color":"FFFFFF","font_family":"","font_weight":"","h1":{"font_size":""},"h2":{"font_size":""},"h3":{"font_size":""},"h4":{"font_size":""},"h5":{"font_size":""},"h6":{"font_size":""}},{"color":"FFFFFF","font_family":"","font_weight":"","h1":{"font_size":""},"h2":{"font_size":""},"h3":{"font_size":""},"h4":{"font_size":""},"h5":{"font_size":""},"h6":{"font_size":""}},{"color":"FFFFFF","font_family":"","font_weight":"","h1":{"font_size":""},"h2":{"font_size":""},"h3":{"font_size":""},"h4":{"font_size":""},"h5":{"font_size":""},"h6":{"font_size":""}}]', 1),
(925, 0, 'module_ocblog', 'module_ocblog_meta_keyword', 'Blog Keyword', 0),
(926, 0, 'module_ocblog', 'module_ocblog_blog_width', '370', 0),
(927, 0, 'module_ocblog', 'module_ocblog_blog_height', '235', 0),
(928, 0, 'module_ocblog', 'module_ocblog_article_width', '370', 0),
(929, 0, 'module_ocblog', 'module_ocblog_article_height', '235', 0),
(932, 0, 'module_ocajaxlogin', 'module_ocajaxlogin_loader_img', 'catalog/AjaxLoader.gif', 0),
(2298, 0, 'theme_default', 'theme_default_image_thumb_height', '667', 0),
(2399, 1, 'config', 'config_comment', '', 0),
(2398, 1, 'config', 'config_open', '', 0),
(2397, 1, 'config', 'config_image', '', 0),
(2396, 1, 'config', 'config_fax', '01234567890', 0),
(2431, 2, 'config', 'config_telephone', '1234567890', 0),
(2430, 2, 'config', 'config_email', 'demo@plazathemes.com', 0),
(2429, 2, 'config', 'config_geocode', 'United Kingdom', 0),
(2428, 2, 'config', 'config_address', 'No 40 Baria Sreet 133/2, NewYork, USA', 0),
(2395, 1, 'config', 'config_telephone', '1234567890', 0),
(2394, 1, 'config', 'config_email', 'demo@plazathemes.com', 0),
(2296, 0, 'theme_default', 'theme_default_image_category_height', '245', 0),
(2297, 0, 'theme_default', 'theme_default_image_thumb_width', '600', 0),
(2295, 0, 'theme_default', 'theme_default_image_category_width', '870', 0),
(2176, 0, 'config', 'config_fax', '(00)-123-456789', 0),
(2175, 0, 'config', 'config_telephone', '(800) 123 4567', 0),
(2174, 0, 'config', 'config_email', 'demo@plazathemes.com', 0),
(2173, 0, 'config', 'config_geocode', '51.5032131,-0.1278824', 0),
(2172, 0, 'config', 'config_address', 'No 40 Baria Sreet 133/2, NewYork, USA', 0),
(2171, 0, 'config', 'config_owner', 'Towerthemes', 0),
(2170, 0, 'config', 'config_name', 'Lazio1', 0),
(2169, 0, 'config', 'config_layout_id', '4', 0),
(2167, 0, 'config', 'config_meta_keyword', '', 0),
(2168, 0, 'config', 'config_theme', 'default', 0),
(2166, 0, 'config', 'config_meta_description', 'Lazio1, Responsive, Opencart Theme, Fashion Theme', 0),
(2165, 0, 'config', 'config_meta_title', 'Lazio1 - Responsive Opencart Theme', 0),
(2393, 1, 'config', 'config_geocode', 'United Kingdom', 0),
(2392, 1, 'config', 'config_address', 'No 40 Baria Sreet 133/2, NewYork, USA', 0),
(2361, 1, 'theme_default', 'theme_default_product_limit', '9', 0),
(2360, 1, 'theme_default', 'theme_default_status', '1', 0),
(2359, 1, 'theme_default', 'theme_default_directory', 'tt_lazio2', 0),
(2391, 1, 'config', 'config_owner', 'Towerthemes', 0),
(3047, 0, 'module_octhemeoption', 'module_octhemeoption_loader_img', 'catalog/AjaxLoader.gif', 0),
(2427, 2, 'config', 'config_owner', 'Towerthemes', 0),
(2426, 2, 'config', 'config_name', 'Lazio 3', 0),
(2425, 2, 'config', 'config_layout_id', '7', 0),
(2424, 2, 'config', 'config_theme', 'default', 0),
(2423, 2, 'config', 'config_meta_keyword', '', 0),
(2422, 2, 'config', 'config_meta_description', '', 0),
(2421, 2, 'config', 'config_meta_title', 'Lazio  3 - Responsive Opencart Theme', 0),
(2420, 2, 'config', 'config_ssl', '', 0),
(2419, 2, 'config', 'config_url', 'http://tt2_lazio3.com/', 0),
(2484, 2, 'theme_default', 'theme_default_image_category_height', '245', 0),
(2485, 2, 'theme_default', 'theme_default_image_thumb_width', '600', 0),
(2483, 2, 'theme_default', 'theme_default_image_category_width', '870', 0),
(2510, 3, 'config', 'config_name', 'Lazio 4', 0),
(2509, 3, 'config', 'config_layout_id', '14', 0),
(2508, 3, 'config', 'config_theme', 'default', 0),
(2507, 3, 'config', 'config_meta_keyword', '', 0),
(2506, 3, 'config', 'config_meta_description', '', 0),
(2505, 3, 'config', 'config_meta_title', 'Lazio 4 - Responsive Opencart Theme', 0),
(2504, 3, 'config', 'config_ssl', '', 0),
(2503, 3, 'config', 'config_url', 'http://tt2_lazio4.com/', 0),
(2543, 3, 'theme_default', 'theme_default_image_category_width', '870', 0),
(2542, 3, 'theme_default', 'theme_default_product_description_length', '230', 0),
(2541, 3, 'theme_default', 'theme_default_product_limit', '9', 0),
(2540, 3, 'theme_default', 'theme_default_status', '1', 0),
(2539, 3, 'theme_default', 'theme_default_directory', 'tt_lazio4', 0),
(2714, 4, 'config', 'config_language', 'en-gb', 0),
(2713, 4, 'config', 'config_zone_id', '3516', 0),
(2712, 4, 'config', 'config_country_id', '222', 0),
(2710, 4, 'config', 'config_open', '', 0),
(2711, 4, 'config', 'config_comment', '', 0),
(2707, 4, 'config', 'config_telephone', '1234567890', 0),
(2708, 4, 'config', 'config_fax', '01234567890', 0),
(2709, 4, 'config', 'config_image', '', 0),
(2706, 4, 'config', 'config_email', 'demo@plazathemes.com', 0),
(2603, 4, 'theme_default', 'theme_default_image_category_width', '870', 0),
(2602, 4, 'theme_default', 'theme_default_product_description_length', '230', 0),
(2601, 4, 'theme_default', 'theme_default_product_limit', '9', 0),
(2600, 4, 'theme_default', 'theme_default_status', '1', 0),
(2599, 4, 'theme_default', 'theme_default_directory', 'tt_lazio5', 0),
(2740, 5, 'config', 'config_address', 'No 40 Baria Sreet 133/2, NewYork, USA', 0),
(2739, 5, 'config', 'config_owner', 'Towerthemes', 0),
(2738, 5, 'config', 'config_name', 'Lazio 6', 0),
(2737, 5, 'config', 'config_layout_id', '16', 0),
(2736, 5, 'config', 'config_theme', 'default', 0),
(2735, 5, 'config', 'config_meta_keyword', '', 0),
(2734, 5, 'config', 'config_meta_description', '', 0),
(2733, 5, 'config', 'config_meta_title', 'Lazio 6 - Responsive Opencart Theme', 0),
(2732, 5, 'config', 'config_ssl', '', 0),
(2731, 5, 'config', 'config_url', 'http://tt2_lazio6.com/', 0),
(2770, 5, 'theme_default', 'theme_default_product_description_length', '230', 0),
(2769, 5, 'theme_default', 'theme_default_product_limit', '9', 0),
(2768, 5, 'theme_default', 'theme_default_status', '1', 0),
(2767, 5, 'theme_default', 'theme_default_directory', 'tt_lazio6', 0),
(2245, 0, 'config', 'config_file_max_size', '300000', 0),
(2246, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(2247, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(2248, 0, 'config', 'config_error_display', '1', 0),
(2249, 0, 'config', 'config_error_log', '1', 0),
(2250, 0, 'config', 'config_error_filename', 'error.log', 0),
(2294, 0, 'theme_default', 'theme_default_product_description_length', '230', 0),
(2293, 0, 'theme_default', 'theme_default_product_limit', '9', 0),
(2292, 0, 'theme_default', 'theme_default_status', '1', 0),
(2291, 0, 'theme_default', 'theme_default_directory', 'tt_lazio1', 0),
(3048, 0, 'module_octhemeoption', 'module_octhemeoption_catalog', '["1","1","1","1","1","1","1","1"]', 1),
(2313, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(2314, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(2318, 0, 'module_ocnewproductpage', 'module_ocnewproductpage_limit', '9', 0),
(2317, 0, 'module_ocnewproductpage', 'module_ocnewproductpage_status', '1', 0),
(2322, 0, 'module_ocbestsellerpage', 'module_ocbestsellerpage_limit', '9', 0),
(2321, 0, 'module_ocbestsellerpage', 'module_ocbestsellerpage_status', '1', 0),
(2390, 1, 'config', 'config_name', 'Lazio 2', 0),
(2389, 1, 'config', 'config_layout_id', '13', 0),
(2388, 1, 'config', 'config_theme', 'default', 0),
(2387, 1, 'config', 'config_meta_keyword', '', 0),
(2386, 1, 'config', 'config_meta_description', '', 0),
(2385, 1, 'config', 'config_meta_title', 'Lazio 2 - Responsive Opencart Theme', 0),
(2384, 1, 'config', 'config_ssl', '', 0),
(2383, 1, 'config', 'config_url', 'http://tt2_lazio2.com/', 0),
(2380, 1, 'theme_default', 'theme_default_image_cart_height', '100', 0),
(2381, 1, 'theme_default', 'theme_default_image_location_width', '268', 0),
(2382, 1, 'theme_default', 'theme_default_image_location_height', '50', 0),
(2415, 1, 'config', 'config_stock_checkout', '0', 0),
(2416, 1, 'config', 'config_logo', 'catalog/logo2.png', 0),
(2417, 1, 'config', 'config_icon', 'catalog/cart.png', 0),
(2418, 1, 'config', 'config_secure', '0', 0),
(2445, 2, 'config', 'config_account_id', '0', 0),
(2446, 2, 'config', 'config_cart_weight', '0', 0),
(2447, 2, 'config', 'config_checkout_guest', '0', 0),
(2448, 2, 'config', 'config_checkout_id', '0', 0),
(2449, 2, 'config', 'config_order_status_id', '7', 0),
(2450, 2, 'config', 'config_stock_display', '0', 0),
(2451, 2, 'config', 'config_stock_checkout', '0', 0),
(2452, 2, 'config', 'config_logo', 'catalog/logo.png', 0),
(2453, 2, 'config', 'config_icon', 'catalog/cart.png', 0),
(2454, 2, 'config', 'config_secure', '0', 0),
(2482, 2, 'theme_default', 'theme_default_product_description_length', '230', 0),
(2481, 2, 'theme_default', 'theme_default_product_limit', '9', 0),
(2480, 2, 'theme_default', 'theme_default_status', '1', 0),
(2479, 2, 'theme_default', 'theme_default_directory', 'tt_lazio3', 0),
(2529, 3, 'config', 'config_account_id', '0', 0),
(2530, 3, 'config', 'config_cart_weight', '0', 0),
(2531, 3, 'config', 'config_checkout_guest', '0', 0),
(2532, 3, 'config', 'config_checkout_id', '0', 0),
(2533, 3, 'config', 'config_order_status_id', '7', 0),
(2534, 3, 'config', 'config_stock_display', '0', 0),
(2535, 3, 'config', 'config_stock_checkout', '0', 0),
(2536, 3, 'config', 'config_logo', 'catalog/logo.png', 0),
(2537, 3, 'config', 'config_icon', 'catalog/cart.png', 0),
(2538, 3, 'config', 'config_secure', '0', 0),
(2559, 3, 'theme_default', 'theme_default_image_cart_width', '100', 0),
(2560, 3, 'theme_default', 'theme_default_image_cart_height', '105', 0),
(2561, 3, 'theme_default', 'theme_default_image_location_width', '268', 0),
(2562, 3, 'theme_default', 'theme_default_image_location_height', '50', 0),
(2705, 4, 'config', 'config_geocode', 'United Kingdom', 0),
(2704, 4, 'config', 'config_address', 'No 40 Baria Sreet 133/2, NewYork, USA', 0),
(2702, 4, 'config', 'config_name', 'Lazio 5', 0),
(2703, 4, 'config', 'config_owner', 'Towerthemes', 0),
(2701, 4, 'config', 'config_layout_id', '15', 0),
(2699, 4, 'config', 'config_meta_keyword', '', 0),
(2700, 4, 'config', 'config_theme', 'default', 0),
(2619, 4, 'theme_default', 'theme_default_image_cart_width', '100', 0),
(2620, 4, 'theme_default', 'theme_default_image_cart_height', '105', 0),
(2621, 4, 'theme_default', 'theme_default_image_location_width', '268', 0),
(2622, 4, 'theme_default', 'theme_default_image_location_height', '50', 0),
(2698, 4, 'config', 'config_meta_description', '', 0),
(2697, 4, 'config', 'config_meta_title', 'Lazio 5 - Responsive Opencart Theme', 0),
(2696, 4, 'config', 'config_ssl', '', 0),
(2695, 4, 'config', 'config_url', 'http://tt2_lazio5.com/', 0),
(2728, 4, 'config', 'config_logo', 'catalog/logo2.png', 0),
(2729, 4, 'config', 'config_icon', 'catalog/cart.png', 0),
(2730, 4, 'config', 'config_secure', '0', 0),
(2757, 5, 'config', 'config_account_id', '0', 0),
(2758, 5, 'config', 'config_cart_weight', '0', 0),
(2759, 5, 'config', 'config_checkout_guest', '0', 0),
(2760, 5, 'config', 'config_checkout_id', '0', 0),
(2761, 5, 'config', 'config_order_status_id', '7', 0),
(2762, 5, 'config', 'config_stock_display', '0', 0),
(2763, 5, 'config', 'config_stock_checkout', '0', 0),
(2764, 5, 'config', 'config_logo', 'catalog/logo.png', 0),
(2765, 5, 'config', 'config_icon', 'catalog/cart.png', 0),
(2766, 5, 'config', 'config_secure', '0', 0),
(2787, 5, 'theme_default', 'theme_default_image_cart_width', '100', 0),
(2788, 5, 'theme_default', 'theme_default_image_cart_height', '105', 0),
(2789, 5, 'theme_default', 'theme_default_image_location_width', '268', 0),
(2790, 5, 'theme_default', 'theme_default_image_location_height', '50', 0),
(2929, 6, 'config', 'config_order_status_id', '7', 0),
(2928, 6, 'config', 'config_checkout_id', '0', 0),
(2927, 6, 'config', 'config_checkout_guest', '0', 0),
(2926, 6, 'config', 'config_cart_weight', '0', 0),
(2925, 6, 'config', 'config_account_id', '0', 0),
(2924, 6, 'config', 'config_customer_price', '0', 0),
(2923, 6, 'config', 'config_customer_group_id', '1', 0),
(2922, 6, 'config', 'config_tax_customer', '', 0),
(2921, 6, 'config', 'config_tax_default', '', 0),
(2920, 6, 'config', 'config_tax', '0', 0),
(2919, 6, 'config', 'config_currency', 'USD', 0),
(2918, 6, 'config', 'config_language', 'en-gb', 0),
(2917, 6, 'config', 'config_zone_id', '3516', 0),
(2916, 6, 'config', 'config_country_id', '222', 0),
(2914, 6, 'config', 'config_open', '', 0),
(2915, 6, 'config', 'config_comment', '', 0),
(2913, 6, 'config', 'config_image', '', 0),
(2912, 6, 'config', 'config_fax', '01234567890', 0),
(2911, 6, 'config', 'config_telephone', '1234567890', 0),
(2910, 6, 'config', 'config_email', 'demo@plazathemes.com', 0),
(2909, 6, 'config', 'config_geocode', 'United Kingdom', 0),
(2908, 6, 'config', 'config_address', 'No 40 Baria Sreet 133/2, NewYork, USA', 0),
(2907, 6, 'config', 'config_owner', 'Towerthemes', 0),
(2906, 6, 'config', 'config_name', 'Lazio 7', 0),
(2905, 6, 'config', 'config_layout_id', '38', 0),
(2904, 6, 'config', 'config_theme', 'default', 0),
(2903, 6, 'config', 'config_meta_keyword', '', 0),
(2902, 6, 'config', 'config_meta_description', '', 0),
(2901, 6, 'config', 'config_meta_title', 'Lazio 7 - Responsive Opencart Theme', 0),
(2900, 6, 'config', 'config_ssl', '', 0),
(2899, 6, 'config', 'config_url', 'http://tt2_lazio7.com/', 0),
(2959, 7, 'config', 'config_customer_group_id', '1', 0),
(2958, 7, 'config', 'config_tax_customer', '', 0),
(2957, 7, 'config', 'config_tax_default', '', 0),
(2956, 7, 'config', 'config_tax', '0', 0),
(2955, 7, 'config', 'config_currency', 'USD', 0),
(2954, 7, 'config', 'config_language', 'en-gb', 0),
(2953, 7, 'config', 'config_zone_id', '3516', 0),
(2952, 7, 'config', 'config_country_id', '222', 0),
(2951, 7, 'config', 'config_comment', '', 0),
(2950, 7, 'config', 'config_open', '', 0),
(2949, 7, 'config', 'config_image', '', 0),
(2948, 7, 'config', 'config_fax', '01234567890', 0),
(2947, 7, 'config', 'config_telephone', '1234567890', 0),
(2946, 7, 'config', 'config_email', 'demo@plazathemes.com', 0),
(2945, 7, 'config', 'config_geocode', 'United Kingdom', 0),
(2944, 7, 'config', 'config_address', 'No 40 Baria Sreet 133/2, NewYork, USA', 0),
(2943, 7, 'config', 'config_owner', 'Towerthemes', 0),
(2942, 7, 'config', 'config_name', 'Lazio 8', 0),
(2941, 7, 'config', 'config_layout_id', '39', 0),
(2940, 7, 'config', 'config_theme', 'default', 0),
(2939, 7, 'config', 'config_meta_keyword', '', 0),
(2938, 7, 'config', 'config_meta_description', '', 0),
(2937, 7, 'config', 'config_meta_title', 'Lazio 8 - Responsive Opencart Theme', 0),
(2936, 7, 'config', 'config_ssl', '', 0),
(2935, 7, 'config', 'config_url', 'http://tt2_lazio8.com/', 0),
(2930, 6, 'config', 'config_stock_display', '0', 0),
(2931, 6, 'config', 'config_stock_checkout', '0', 0),
(2932, 6, 'config', 'config_logo', 'catalog/logo.png', 0),
(2933, 6, 'config', 'config_icon', 'catalog/cart.png', 0),
(2934, 6, 'config', 'config_secure', '0', 0),
(2960, 7, 'config', 'config_customer_price', '0', 0),
(2961, 7, 'config', 'config_account_id', '0', 0),
(2962, 7, 'config', 'config_cart_weight', '0', 0),
(2963, 7, 'config', 'config_checkout_guest', '0', 0),
(2964, 7, 'config', 'config_checkout_id', '0', 0),
(2965, 7, 'config', 'config_order_status_id', '7', 0),
(2966, 7, 'config', 'config_stock_display', '0', 0),
(2967, 7, 'config', 'config_stock_checkout', '0', 0),
(2968, 7, 'config', 'config_logo', 'catalog/logo.png', 0),
(2969, 7, 'config', 'config_icon', 'catalog/cart.png', 0),
(2970, 7, 'config', 'config_secure', '0', 0),
(2971, 6, 'theme_default', 'theme_default_directory', 'tt_lazio7', 0),
(2972, 6, 'theme_default', 'theme_default_status', '1', 0),
(2973, 6, 'theme_default', 'theme_default_product_limit', '9', 0),
(2974, 6, 'theme_default', 'theme_default_product_description_length', '230', 0),
(2975, 6, 'theme_default', 'theme_default_image_category_width', '870', 0),
(2976, 6, 'theme_default', 'theme_default_image_category_height', '245', 0),
(2977, 6, 'theme_default', 'theme_default_image_thumb_width', '600', 0),
(2978, 6, 'theme_default', 'theme_default_image_thumb_height', '667', 0),
(2979, 6, 'theme_default', 'theme_default_image_popup_width', '600', 0),
(2980, 6, 'theme_default', 'theme_default_image_popup_height', '667', 0),
(2981, 6, 'theme_default', 'theme_default_image_product_width', '600', 0),
(2982, 6, 'theme_default', 'theme_default_image_product_height', '667', 0),
(2983, 6, 'theme_default', 'theme_default_image_additional_width', '600', 0),
(2984, 6, 'theme_default', 'theme_default_image_additional_height', '667', 0),
(2985, 6, 'theme_default', 'theme_default_image_related_width', '600', 0),
(2986, 6, 'theme_default', 'theme_default_image_related_height', '667', 0),
(2987, 6, 'theme_default', 'theme_default_image_compare_width', '100', 0),
(2988, 6, 'theme_default', 'theme_default_image_compare_height', '105', 0),
(2989, 6, 'theme_default', 'theme_default_image_wishlist_width', '100', 0),
(2990, 6, 'theme_default', 'theme_default_image_wishlist_height', '105', 0),
(2991, 6, 'theme_default', 'theme_default_image_cart_width', '100', 0),
(2992, 6, 'theme_default', 'theme_default_image_cart_height', '105', 0),
(2993, 6, 'theme_default', 'theme_default_image_location_width', '268', 0),
(2994, 6, 'theme_default', 'theme_default_image_location_height', '50', 0),
(3019, 7, 'theme_default', 'theme_default_directory', 'tt_lazio8', 0),
(3020, 7, 'theme_default', 'theme_default_status', '1', 0),
(3021, 7, 'theme_default', 'theme_default_product_limit', '9', 0),
(3022, 7, 'theme_default', 'theme_default_product_description_length', '230', 0),
(3023, 7, 'theme_default', 'theme_default_image_category_width', '870', 0),
(3024, 7, 'theme_default', 'theme_default_image_category_height', '245', 0),
(3025, 7, 'theme_default', 'theme_default_image_thumb_width', '600', 0),
(3026, 7, 'theme_default', 'theme_default_image_thumb_height', '667', 0),
(3027, 7, 'theme_default', 'theme_default_image_popup_width', '600', 0),
(3028, 7, 'theme_default', 'theme_default_image_popup_height', '667', 0),
(3029, 7, 'theme_default', 'theme_default_image_product_width', '600', 0),
(3030, 7, 'theme_default', 'theme_default_image_product_height', '667', 0),
(3031, 7, 'theme_default', 'theme_default_image_additional_width', '600', 0),
(3032, 7, 'theme_default', 'theme_default_image_additional_height', '667', 0),
(3033, 7, 'theme_default', 'theme_default_image_related_width', '600', 0),
(3034, 7, 'theme_default', 'theme_default_image_related_height', '667', 0),
(3035, 7, 'theme_default', 'theme_default_image_compare_width', '100', 0),
(3036, 7, 'theme_default', 'theme_default_image_compare_height', '105', 0),
(3037, 7, 'theme_default', 'theme_default_image_wishlist_width', '100', 0),
(3038, 7, 'theme_default', 'theme_default_image_wishlist_height', '105', 0),
(3039, 7, 'theme_default', 'theme_default_image_cart_width', '100', 0),
(3040, 7, 'theme_default', 'theme_default_image_cart_height', '105', 0),
(3041, 7, 'theme_default', 'theme_default_image_location_width', '268', 0),
(3042, 7, 'theme_default', 'theme_default_image_location_height', '50', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_shipping_courier`
--

CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_shipping_courier`
--

INSERT INTO `oc_shipping_courier` (`shipping_courier_id`, `shipping_courier_code`, `shipping_courier_name`) VALUES
(1, 'dhl', 'DHL'),
(2, 'fedex', 'Fedex'),
(3, 'ups', 'UPS'),
(4, 'royal-mail', 'Royal Mail'),
(5, 'usps', 'United States Postal Service'),
(6, 'auspost', 'Australia Post'),
(7, 'citylink', 'Citylink');

-- --------------------------------------------------------

--
-- Table structure for table `oc_statistics`
--

CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_statistics`
--

INSERT INTO `oc_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', '616.0000'),
(2, 'order_processing', '0.0000'),
(3, 'order_complete', '0.0000'),
(4, 'order_other', '0.0000'),
(5, 'returns', '0.0000'),
(6, 'product', '0.0000'),
(7, 'review', '23.0000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2-3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_store`
--

INSERT INTO `oc_store` (`store_id`, `name`, `url`, `ssl`) VALUES
(1, 'Lazio 2', 'http://tt2_lazio2.com/', ''),
(2, 'Lazio 3', 'http://tt2_lazio3.com/', ''),
(3, 'Lazio 4', 'http://tt2_lazio4.com/', ''),
(4, 'Lazio 5', 'http://tt2_lazio5.com/', ''),
(5, 'Lazio 6', 'http://tt2_lazio6.com/', ''),
(6, 'Lazio 7', 'http://tt2_lazio7.com/', ''),
(7, 'Lazio 8', 'http://tt2_lazio8.com/', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_subscribe`
--

CREATE TABLE `oc_subscribe` (
  `id` int(10) UNSIGNED NOT NULL,
  `email_id` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `date` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_subscribe`
--

INSERT INTO `oc_subscribe` (`id`, `email_id`, `name`, `date`) VALUES
(1, 'demo@demo2.com', 'demo@demo2.com', '2017-08-10');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_testimonial`
--

CREATE TABLE `oc_testimonial` (
  `testimonial_id` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_testimonial`
--

INSERT INTO `oc_testimonial` (`testimonial_id`, `status`, `sort_order`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_testimonial_description`
--

CREATE TABLE `oc_testimonial_description` (
  `testimonial_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_testimonial_description`
--

INSERT INTO `oc_testimonial_description` (`testimonial_id`, `language_id`, `image`, `customer_name`, `content`) VALUES
(1, 0, 'catalog/testimonial/bg-testmal.jpg', 'Rebecka Filson', 'Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima.'),
(2, 0, 'catalog/testimonial/bg1-testmal.jpg', 'Nathanael Jaworski', 'Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima.'),
(3, 0, 'catalog/testimonial/bg2-testmal.jpg', 'Magdalena Valencia', 'Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima.');

-- --------------------------------------------------------

--
-- Table structure for table `oc_theme`
--

CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_translation`
--

CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '6f3bc0c21447ab7ee4710b930c3e431328b4d322', 'AzcLkEI2q', 'John', 'Doe', 'demo@plazathemes.com', '', '', '127.0.0.1', 1, '2017-09-08 08:41:45');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{"access":["blog\\/article","blog\\/articlelist","blog\\/config","catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/occategorythumbnail","catalog\\/octestimonial","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/developer","common\\/filemanager","common\\/profile","common\\/security","customer\\/custom_field","customer\\/customer","customer\\/customer_approval","customer\\/customer_group","design\\/banner","design\\/layout","design\\/seo_url","design\\/theme","design\\/translation","event\\/language","event\\/statistics","event\\/theme","extension\\/analytics\\/google","extension\\/captcha\\/basic","extension\\/captcha\\/google","extension\\/dashboard\\/activity","extension\\/dashboard\\/chart","extension\\/dashboard\\/customer","extension\\/dashboard\\/map","extension\\/dashboard\\/online","extension\\/dashboard\\/order","extension\\/dashboard\\/recent","extension\\/dashboard\\/sale","extension\\/extension\\/analytics","extension\\/extension\\/captcha","extension\\/extension\\/dashboard","extension\\/extension\\/feed","extension\\/extension\\/fraud","extension\\/extension\\/menu","extension\\/extension\\/module","extension\\/extension\\/payment","extension\\/extension\\/report","extension\\/extension\\/shipping","extension\\/extension\\/theme","extension\\/extension\\/total","extension\\/feed\\/google_base","extension\\/feed\\/google_sitemap","extension\\/feed\\/openbaypro","extension\\/fraud\\/fraudlabspro","extension\\/fraud\\/ip","extension\\/fraud\\/maxmind","extension\\/module\\/account","extension\\/module\\/amazon_login","extension\\/module\\/amazon_pay","extension\\/module\\/banner","extension\\/module\\/bestseller","extension\\/module\\/carousel","extension\\/module\\/category","extension\\/module\\/divido_calculator","extension\\/module\\/ebay_listing","extension\\/module\\/featured","extension\\/module\\/filter","extension\\/module\\/google_hangouts","extension\\/module\\/html","extension\\/module\\/information","extension\\/module\\/klarna_checkout_module","extension\\/module\\/latest","extension\\/module\\/laybuy_layout","extension\\/module\\/newslettersubscribe","extension\\/module\\/oc_page_builder","extension\\/module\\/ocajaxlogin","extension\\/module\\/ocblog","extension\\/module\\/occmsblock","extension\\/module\\/ochozmegamenu","extension\\/module\\/oclayerednavigation","extension\\/module\\/ocproduct","extension\\/module\\/ocslideshow","extension\\/module\\/octabproducts","extension\\/module\\/octestimonial","extension\\/module\\/octhemeoption","extension\\/module\\/pilibaba_button","extension\\/module\\/pp_braintree_button","extension\\/module\\/pp_button","extension\\/module\\/pp_login","extension\\/module\\/sagepay_direct_cards","extension\\/module\\/sagepay_server_cards","extension\\/module\\/slideshow","extension\\/module\\/special","extension\\/module\\/store","extension\\/openbay\\/amazon","extension\\/openbay\\/amazon_listing","extension\\/openbay\\/amazon_product","extension\\/openbay\\/amazonus","extension\\/openbay\\/amazonus_listing","extension\\/openbay\\/amazonus_product","extension\\/openbay\\/ebay","extension\\/openbay\\/ebay_profile","extension\\/openbay\\/ebay_template","extension\\/openbay\\/etsy","extension\\/openbay\\/etsy_product","extension\\/openbay\\/etsy_shipping","extension\\/openbay\\/etsy_shop","extension\\/openbay\\/fba","extension\\/payment\\/alipay","extension\\/payment\\/alipay_cross","extension\\/payment\\/amazon_login_pay","extension\\/payment\\/authorizenet_aim","extension\\/payment\\/authorizenet_sim","extension\\/payment\\/bank_transfer","extension\\/payment\\/bluepay_hosted","extension\\/payment\\/bluepay_redirect","extension\\/payment\\/cardconnect","extension\\/payment\\/cardinity","extension\\/payment\\/cheque","extension\\/payment\\/cod","extension\\/payment\\/divido","extension\\/payment\\/eway","extension\\/payment\\/firstdata","extension\\/payment\\/firstdata_remote","extension\\/payment\\/free_checkout","extension\\/payment\\/g2apay","extension\\/payment\\/globalpay","extension\\/payment\\/globalpay_remote","extension\\/payment\\/klarna_account","extension\\/payment\\/klarna_checkout","extension\\/payment\\/klarna_invoice","extension\\/payment\\/laybuy","extension\\/payment\\/liqpay","extension\\/payment\\/nochex","extension\\/payment\\/paymate","extension\\/payment\\/paypoint","extension\\/payment\\/payza","extension\\/payment\\/perpetual_payments","extension\\/payment\\/pilibaba","extension\\/payment\\/pp_braintree","extension\\/payment\\/pp_express","extension\\/payment\\/pp_payflow","extension\\/payment\\/pp_payflow_iframe","extension\\/payment\\/pp_pro","extension\\/payment\\/pp_pro_iframe","extension\\/payment\\/pp_standard","extension\\/payment\\/realex","extension\\/payment\\/realex_remote","extension\\/payment\\/sagepay_direct","extension\\/payment\\/sagepay_server","extension\\/payment\\/sagepay_us","extension\\/payment\\/securetrading_pp","extension\\/payment\\/securetrading_ws","extension\\/payment\\/skrill","extension\\/payment\\/squareup","extension\\/payment\\/twocheckout","extension\\/payment\\/web_payment_software","extension\\/payment\\/wechat_pay","extension\\/payment\\/worldpay","extension\\/report\\/customer_activity","extension\\/report\\/customer_order","extension\\/report\\/customer_reward","extension\\/report\\/customer_search","extension\\/report\\/customer_transaction","extension\\/report\\/marketing","extension\\/report\\/product_purchased","extension\\/report\\/product_viewed","extension\\/report\\/sale_coupon","extension\\/report\\/sale_order","extension\\/report\\/sale_return","extension\\/report\\/sale_shipping","extension\\/report\\/sale_tax","extension\\/shipping\\/auspost","extension\\/shipping\\/citylink","extension\\/shipping\\/ec_ship","extension\\/shipping\\/fedex","extension\\/shipping\\/flat","extension\\/shipping\\/free","extension\\/shipping\\/item","extension\\/shipping\\/parcelforce_48","extension\\/shipping\\/pickup","extension\\/shipping\\/royal_mail","extension\\/shipping\\/ups","extension\\/shipping\\/usps","extension\\/shipping\\/weight","extension\\/theme\\/default","extension\\/total\\/coupon","extension\\/total\\/credit","extension\\/total\\/handling","extension\\/total\\/klarna_fee","extension\\/total\\/low_order_fee","extension\\/total\\/reward","extension\\/total\\/shipping","extension\\/total\\/sub_total","extension\\/total\\/tax","extension\\/total\\/total","extension\\/total\\/voucher","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","mail\\/affiliate","mail\\/customer","mail\\/forgotten","mail\\/return","mail\\/reward","mail\\/transaction","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","marketplace\\/api","marketplace\\/event","marketplace\\/extension","marketplace\\/install","marketplace\\/installer","marketplace\\/marketplace","marketplace\\/modification","marketplace\\/openbay","report\\/online","report\\/report","report\\/statistics","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","startup\\/error","startup\\/event","startup\\/login","startup\\/permission","startup\\/router","startup\\/sass","startup\\/startup","tool\\/backup","tool\\/log","tool\\/upload","user\\/api","user\\/user","user\\/user_permission","extension\\/module\\/banner","extension\\/module\\/carousel","extension\\/module\\/featured","extension\\/module\\/ocvermegamenu","extension\\/module\\/ocfeaturedcategorytab","extension\\/module\\/ocnewproductpage","extension\\/module\\/ocbestsellerpage","extension\\/module\\/ocfeaturedcategory"],"modify":["blog\\/article","blog\\/articlelist","blog\\/config","catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/occategorythumbnail","catalog\\/octestimonial","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/developer","common\\/filemanager","common\\/profile","common\\/security","customer\\/custom_field","customer\\/customer","customer\\/customer_approval","customer\\/customer_group","design\\/banner","design\\/layout","design\\/seo_url","design\\/theme","design\\/translation","event\\/language","event\\/statistics","event\\/theme","extension\\/analytics\\/google","extension\\/captcha\\/basic","extension\\/captcha\\/google","extension\\/dashboard\\/activity","extension\\/dashboard\\/chart","extension\\/dashboard\\/customer","extension\\/dashboard\\/map","extension\\/dashboard\\/online","extension\\/dashboard\\/order","extension\\/dashboard\\/recent","extension\\/dashboard\\/sale","extension\\/extension\\/analytics","extension\\/extension\\/captcha","extension\\/extension\\/dashboard","extension\\/extension\\/feed","extension\\/extension\\/fraud","extension\\/extension\\/menu","extension\\/extension\\/module","extension\\/extension\\/payment","extension\\/extension\\/report","extension\\/extension\\/shipping","extension\\/extension\\/theme","extension\\/extension\\/total","extension\\/feed\\/google_base","extension\\/feed\\/google_sitemap","extension\\/feed\\/openbaypro","extension\\/fraud\\/fraudlabspro","extension\\/fraud\\/ip","extension\\/fraud\\/maxmind","extension\\/module\\/account","extension\\/module\\/amazon_login","extension\\/module\\/amazon_pay","extension\\/module\\/banner","extension\\/module\\/bestseller","extension\\/module\\/carousel","extension\\/module\\/category","extension\\/module\\/divido_calculator","extension\\/module\\/ebay_listing","extension\\/module\\/featured","extension\\/module\\/filter","extension\\/module\\/google_hangouts","extension\\/module\\/html","extension\\/module\\/information","extension\\/module\\/klarna_checkout_module","extension\\/module\\/latest","extension\\/module\\/laybuy_layout","extension\\/module\\/newslettersubscribe","extension\\/module\\/oc_page_builder","extension\\/module\\/ocajaxlogin","extension\\/module\\/ocblog","extension\\/module\\/occmsblock","extension\\/module\\/ochozmegamenu","extension\\/module\\/oclayerednavigation","extension\\/module\\/ocproduct","extension\\/module\\/ocslideshow","extension\\/module\\/octabproducts","extension\\/module\\/octestimonial","extension\\/module\\/octhemeoption","extension\\/module\\/pilibaba_button","extension\\/module\\/pp_braintree_button","extension\\/module\\/pp_button","extension\\/module\\/pp_login","extension\\/module\\/sagepay_direct_cards","extension\\/module\\/sagepay_server_cards","extension\\/module\\/slideshow","extension\\/module\\/special","extension\\/module\\/store","extension\\/openbay\\/amazon","extension\\/openbay\\/amazon_listing","extension\\/openbay\\/amazon_product","extension\\/openbay\\/amazonus","extension\\/openbay\\/amazonus_listing","extension\\/openbay\\/amazonus_product","extension\\/openbay\\/ebay","extension\\/openbay\\/ebay_profile","extension\\/openbay\\/ebay_template","extension\\/openbay\\/etsy","extension\\/openbay\\/etsy_product","extension\\/openbay\\/etsy_shipping","extension\\/openbay\\/etsy_shop","extension\\/openbay\\/fba","extension\\/payment\\/alipay","extension\\/payment\\/alipay_cross","extension\\/payment\\/amazon_login_pay","extension\\/payment\\/authorizenet_aim","extension\\/payment\\/authorizenet_sim","extension\\/payment\\/bank_transfer","extension\\/payment\\/bluepay_hosted","extension\\/payment\\/bluepay_redirect","extension\\/payment\\/cardconnect","extension\\/payment\\/cardinity","extension\\/payment\\/cheque","extension\\/payment\\/cod","extension\\/payment\\/divido","extension\\/payment\\/eway","extension\\/payment\\/firstdata","extension\\/payment\\/firstdata_remote","extension\\/payment\\/free_checkout","extension\\/payment\\/g2apay","extension\\/payment\\/globalpay","extension\\/payment\\/globalpay_remote","extension\\/payment\\/klarna_account","extension\\/payment\\/klarna_checkout","extension\\/payment\\/klarna_invoice","extension\\/payment\\/laybuy","extension\\/payment\\/liqpay","extension\\/payment\\/nochex","extension\\/payment\\/paymate","extension\\/payment\\/paypoint","extension\\/payment\\/payza","extension\\/payment\\/perpetual_payments","extension\\/payment\\/pilibaba","extension\\/payment\\/pp_braintree","extension\\/payment\\/pp_express","extension\\/payment\\/pp_payflow","extension\\/payment\\/pp_payflow_iframe","extension\\/payment\\/pp_pro","extension\\/payment\\/pp_pro_iframe","extension\\/payment\\/pp_standard","extension\\/payment\\/realex","extension\\/payment\\/realex_remote","extension\\/payment\\/sagepay_direct","extension\\/payment\\/sagepay_server","extension\\/payment\\/sagepay_us","extension\\/payment\\/securetrading_pp","extension\\/payment\\/securetrading_ws","extension\\/payment\\/skrill","extension\\/payment\\/squareup","extension\\/payment\\/twocheckout","extension\\/payment\\/web_payment_software","extension\\/payment\\/wechat_pay","extension\\/payment\\/worldpay","extension\\/report\\/customer_activity","extension\\/report\\/customer_order","extension\\/report\\/customer_reward","extension\\/report\\/customer_search","extension\\/report\\/customer_transaction","extension\\/report\\/marketing","extension\\/report\\/product_purchased","extension\\/report\\/product_viewed","extension\\/report\\/sale_coupon","extension\\/report\\/sale_order","extension\\/report\\/sale_return","extension\\/report\\/sale_shipping","extension\\/report\\/sale_tax","extension\\/shipping\\/auspost","extension\\/shipping\\/citylink","extension\\/shipping\\/ec_ship","extension\\/shipping\\/fedex","extension\\/shipping\\/flat","extension\\/shipping\\/free","extension\\/shipping\\/item","extension\\/shipping\\/parcelforce_48","extension\\/shipping\\/pickup","extension\\/shipping\\/royal_mail","extension\\/shipping\\/ups","extension\\/shipping\\/usps","extension\\/shipping\\/weight","extension\\/theme\\/default","extension\\/total\\/coupon","extension\\/total\\/credit","extension\\/total\\/handling","extension\\/total\\/klarna_fee","extension\\/total\\/low_order_fee","extension\\/total\\/reward","extension\\/total\\/shipping","extension\\/total\\/sub_total","extension\\/total\\/tax","extension\\/total\\/total","extension\\/total\\/voucher","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","mail\\/affiliate","mail\\/customer","mail\\/forgotten","mail\\/return","mail\\/reward","mail\\/transaction","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","marketplace\\/api","marketplace\\/event","marketplace\\/extension","marketplace\\/install","marketplace\\/installer","marketplace\\/marketplace","marketplace\\/modification","marketplace\\/openbay","report\\/online","report\\/report","report\\/statistics","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","startup\\/error","startup\\/event","startup\\/login","startup\\/permission","startup\\/router","startup\\/sass","startup\\/startup","tool\\/backup","tool\\/log","tool\\/upload","user\\/api","user\\/user","user\\/user_permission","extension\\/module\\/banner","extension\\/module\\/carousel","extension\\/module\\/featured","extension\\/module\\/ocvermegamenu","extension\\/module\\/ocfeaturedcategorytab","extension\\/module\\/ocnewproductpage","extension\\/module\\/ocbestsellerpage","extension\\/module\\/ocfeaturedcategory"]}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g'),
(5, 2, 'Pound ', 'lb'),
(6, 2, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M''Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu''a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark''unik''', 'GEG', 1),
(184, 11, 'Kotayk''', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik''', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots'' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Niederösterreich', 'NOS', 1),
(202, 14, 'Oberösterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore''s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel''skaya (Homyel'')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George''s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith''s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M''Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O''Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '''Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma''iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa''id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina''', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina''', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d''Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-Württemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Thüringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand''Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Puducherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'Kalimantan Utara', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta''mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be''er Sheva', 'BS', 1),
(1613, 104, 'Bika''at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '''Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al ''Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa''', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa''', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma''an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P''yongan-bukto', 'PYB', 1),
(1769, 112, 'P''yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P''yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch''ungch''ong-bukto', 'CO', 1),
(1774, 113, 'Ch''ungch''ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch''on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t''ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al ''Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra''', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale''s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha''s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al ''Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati''', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord-Brabant', 'NB', 1),
(2336, 150, 'Noord-Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid-Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke''s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa''id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul''yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust''-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A''ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa''asaleleaga', 'FA', 1),
(2856, 181, 'Gaga''emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa''itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va''a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '''Asir', 'AS', 1),
(2882, 184, 'Ha''il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand'' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand'' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A''ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa''iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa''iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'Gävleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'Jämtland', 'Z', 1),
(3080, 203, 'Jönköping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, 'Örebro', 'T', 1),
(3085, 203, 'Östergötland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'Södermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'Värmland', 'S', 1),
(3091, 203, 'Västerbotten', 'AC', 1),
(3092, 203, 'Västernorrland', 'Y', 1),
(3093, 203, 'Västmanland', 'U', 1),
(3094, 203, 'Västra Götaland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graubünden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Zürich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t''ou', 'NT', 1),
(3145, 206, 'P''eng-hu', 'PH', 1),
(3146, 206, 'P''ing-tung', 'PT', 1),
(3147, 206, 'T''ai-chung', 'TG', 1),
(3148, 206, 'T''ai-nan', 'TA', 1),
(3149, 206, 'T''ai-pei county', 'TP', 1),
(3150, 206, 'T''ai-tung', 'TT', 1),
(3151, 206, 'T''ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T''ai-chung', 'TH', 1),
(3157, 206, 'T''ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T''ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha''apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava''u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas''ka Oblast''', '71', 1),
(3481, 220, 'Chernihivs''ka Oblast''', '74', 1),
(3482, 220, 'Chernivets''ka Oblast''', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs''ka Oblast''', '12', 1),
(3485, 220, 'Donets''ka Oblast''', '14', 1),
(3486, 220, 'Ivano-Frankivs''ka Oblast''', '26', 1),
(3487, 220, 'Khersons''ka Oblast''', '65', 1),
(3488, 220, 'Khmel''nyts''ka Oblast''', '68', 1),
(3489, 220, 'Kirovohrads''ka Oblast''', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs''ka Oblast''', '32', 1),
(3492, 220, 'Luhans''ka Oblast''', '09', 1),
(3493, 220, 'L''vivs''ka Oblast''', '46', 1),
(3494, 220, 'Mykolayivs''ka Oblast''', '48', 1),
(3495, 220, 'Odes''ka Oblast''', '51', 1),
(3496, 220, 'Poltavs''ka Oblast''', '53', 1),
(3497, 220, 'Rivnens''ka Oblast''', '56', 1),
(3498, 220, 'Sevastopol''', '40', 1),
(3499, 220, 'Sums''ka Oblast''', '59', 1),
(3500, 220, 'Ternopil''s''ka Oblast''', '61', 1),
(3501, 220, 'Vinnyts''ka Oblast''', '05', 1),
(3502, 220, 'Volyns''ka Oblast''', '07', 1),
(3503, 220, 'Zakarpats''ka Oblast''', '21', 1),
(3504, 220, 'Zaporiz''ka Oblast''', '23', 1),
(3505, 220, 'Zhytomyrs''ka oblast''', '18', 1),
(3506, 221, 'Abu Dhabi', 'ADH', 1),
(3507, 221, '''Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'R''as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg''ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog''iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma''rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa''dah', 'SD', 1),
(3805, 235, 'San''a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta''izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs''ka Oblast''', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1),
(4231, 99, 'Telangana', 'TS', 1),
(4232, 44, 'Qinghai', 'QH', 1),
(4233, 100, 'Papua Barat', 'PB', 1),
(4234, 100, 'Sulawesi Barat', 'SR', 1),
(4235, 100, 'Kepulauan Riau', 'KR', 1),
(4236, 105, 'Barletta-Andria-Trani', 'BT', 1),
(4237, 105, 'Fermo', 'FM', 1),
(4238, 105, 'Monza Brianza', 'MB', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Indexes for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Indexes for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Indexes for table `oc_article`
--
ALTER TABLE `oc_article`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `oc_article_description`
--
ALTER TABLE `oc_article_description`
  ADD PRIMARY KEY (`article_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_article_list`
--
ALTER TABLE `oc_article_list`
  ADD PRIMARY KEY (`article_list_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Indexes for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Indexes for table `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Indexes for table `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Indexes for table `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Indexes for table `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Indexes for table `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Indexes for table `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_cmsblock`
--
ALTER TABLE `oc_cmsblock`
  ADD PRIMARY KEY (`cmsblock_id`);

--
-- Indexes for table `oc_cmsblock_description`
--
ALTER TABLE `oc_cmsblock_description`
  ADD PRIMARY KEY (`cmsblock_des_id`,`language_id`);

--
-- Indexes for table `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Indexes for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Indexes for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Indexes for table `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Indexes for table `oc_customer_affiliate`
--
ALTER TABLE `oc_customer_affiliate`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  ADD PRIMARY KEY (`customer_approval_id`);

--
-- Indexes for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Indexes for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Indexes for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Indexes for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Indexes for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Indexes for table `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Indexes for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Indexes for table `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Indexes for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Indexes for table `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Indexes for table `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Indexes for table `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  ADD PRIMARY KEY (`extension_install_id`);

--
-- Indexes for table `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  ADD PRIMARY KEY (`extension_path_id`);

--
-- Indexes for table `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Indexes for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Indexes for table `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Indexes for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Indexes for table `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Indexes for table `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Indexes for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Indexes for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Indexes for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Indexes for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Indexes for table `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Indexes for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Indexes for table `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Indexes for table `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `oc_ocslideshow`
--
ALTER TABLE `oc_ocslideshow`
  ADD PRIMARY KEY (`ocslideshow_id`);

--
-- Indexes for table `oc_ocslideshow_image`
--
ALTER TABLE `oc_ocslideshow_image`
  ADD PRIMARY KEY (`ocslideshow_image_id`);

--
-- Indexes for table `oc_ocslideshow_image_description`
--
ALTER TABLE `oc_ocslideshow_image_description`
  ADD PRIMARY KEY (`ocslideshow_image_id`,`language_id`);

--
-- Indexes for table `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Indexes for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Indexes for table `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Indexes for table `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Indexes for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Indexes for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Indexes for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Indexes for table `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  ADD PRIMARY KEY (`order_shipment_id`);

--
-- Indexes for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Indexes for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Indexes for table `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Indexes for table `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Indexes for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Indexes for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Indexes for table `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Indexes for table `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Indexes for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Indexes for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Indexes for table `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Indexes for table `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Indexes for table `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Indexes for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Indexes for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Indexes for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Indexes for table `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  ADD PRIMARY KEY (`seo_url_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Indexes for table `oc_session`
--
ALTER TABLE `oc_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `oc_shipping_courier`
--
ALTER TABLE `oc_shipping_courier`
  ADD PRIMARY KEY (`shipping_courier_id`);

--
-- Indexes for table `oc_statistics`
--
ALTER TABLE `oc_statistics`
  ADD PRIMARY KEY (`statistics_id`);

--
-- Indexes for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Indexes for table `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `oc_subscribe`
--
ALTER TABLE `oc_subscribe`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Index_2` (`email_id`);

--
-- Indexes for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Indexes for table `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Indexes for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Indexes for table `oc_testimonial`
--
ALTER TABLE `oc_testimonial`
  ADD PRIMARY KEY (`testimonial_id`);

--
-- Indexes for table `oc_testimonial_description`
--
ALTER TABLE `oc_testimonial_description`
  ADD PRIMARY KEY (`testimonial_id`,`language_id`);

--
-- Indexes for table `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Indexes for table `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Indexes for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Indexes for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Indexes for table `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Indexes for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Indexes for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Indexes for table `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_article`
--
ALTER TABLE `oc_article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_article_list`
--
ALTER TABLE `oc_article_list`
  MODIFY `article_list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT for table `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;
--
-- AUTO_INCREMENT for table `oc_cmsblock`
--
ALTER TABLE `oc_cmsblock`
  MODIFY `cmsblock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `oc_cmsblock_description`
--
ALTER TABLE `oc_cmsblock_description`
  MODIFY `cmsblock_des_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;
--
-- AUTO_INCREMENT for table `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;
--
-- AUTO_INCREMENT for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  MODIFY `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  MODIFY `extension_install_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  MODIFY `extension_path_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1312;
--
-- AUTO_INCREMENT for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=421;
--
-- AUTO_INCREMENT for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;
--
-- AUTO_INCREMENT for table `oc_ocslideshow`
--
ALTER TABLE `oc_ocslideshow`
  MODIFY `ocslideshow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `oc_ocslideshow_image`
--
ALTER TABLE `oc_ocslideshow_image`
  MODIFY `ocslideshow_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;
--
-- AUTO_INCREMENT for table `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  MODIFY `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=459;
--
-- AUTO_INCREMENT for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2845;
--
-- AUTO_INCREMENT for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=580;
--
-- AUTO_INCREMENT for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=494;
--
-- AUTO_INCREMENT for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  MODIFY `seo_url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=931;
--
-- AUTO_INCREMENT for table `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3051;
--
-- AUTO_INCREMENT for table `oc_statistics`
--
ALTER TABLE `oc_statistics`
  MODIFY `statistics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `oc_subscribe`
--
ALTER TABLE `oc_subscribe`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `oc_testimonial`
--
ALTER TABLE `oc_testimonial`
  MODIFY `testimonial_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4239;
--
-- AUTO_INCREMENT for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
