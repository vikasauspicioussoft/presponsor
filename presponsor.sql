-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2019 at 04:00 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `presponsor`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_members`
--

CREATE TABLE `add_members` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `teams_id` int(67) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_members`
--

INSERT INTO `add_members` (`id`, `firstname`, `lastname`, `email`, `teams_id`) VALUES
(1, 'sds', 'sdfd', 'sd@gmail.com', 10),
(13, 'sam, sunnu, gameu, ', 'same, sonu, same, ', 'same@gmail.com, sonu@gmail.com, gameu@gmail.com, ', 15),
(14, 'tut, sa, pp, ', 'uyt, sd, p, ', 'tyu@gmail.com, sd@gmnail.com, pp@gmail.com, ', 16),
(15, ', ', ', ', ', ', 17),
(16, 'hjkhjk, ', 'ghjgh, ', 'ghj@gmail.com, ', 56),
(17, 'ghjgj, hjk, grefg, ', 'ghjgh, hjkhj, dfgd, ', 'gh@gmail.com, k@gmail.com, dfg@gmail.com, ', 56),
(18, 'ghjgh, ', 'ghjgh, ', 'jg@gmail.com, ', 18),
(19, 'kapil, kappu, ', 'sharma, singh, ', 'sharma@gmail.com, singh@gmail.com, ', 20),
(20, 'dfgdfg, ', 'dfgdfg, ', 'kavita.auspicioussoft@gmail.com, ', 22),
(21, 'bvnbv, ', 'bvnbv, ', 'kavita.auspicioussoft@gmail.com, ', 24),
(22, 'xcbvxcb, ', 'xcbvxcbxc, ', 'dsvgfds@gmail.com, ', 25),
(23, 'fghfg, ', 'hfg, ', 'fghf@gmail.com, ', 26),
(24, 'ghfghf, ', 'fghgf, ', 'gh@gmail.com, ', 27),
(25, 'ghkg, ', 'ghkgh, ', 'ghk@gmail.com, ', 28),
(26, 'vnb, ', 'vbnvb, ', 'kavita.auspicioussoft@gmail.com, ', 29),
(27, 'bvnjghjg, ', 'ghjghj, ', 'ghjgh@gmail.com, ', 30),
(28, '[\"sam\",\"dam\",\"we\",\"ooo\"]', '[\"samy\",\"ao\",\"ew\",\"pp\"]', '[\"same@gmail.com\",\"ao@gmail.com\",\"ew@gmail.com\",\"pp@gmail.com\"]', 31),
(29, '[\"gfvcbhncv\"]', '[\"cvbcvb\"]', '[\"cvbcv@gmail.com\"]', 32),
(30, '[\"bvnbv\"]', '[\"sdf\"]', '[\"fgf@gmail.com\"]', 65),
(31, '[\"bvnbv\"]', '[\"sdf\"]', '[\"fgf@gmail.com\"]', 66),
(32, '[\"paras\"]', '[\"erasfc\"]', '[\"sd@gmail.com\"]', 67),
(33, '[\"fg\"]', '[\"fgh\"]', '[\"gfh@gmail.com\"]', 68);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `user_role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `name`, `password`, `remember_token`, `user_role`, `created_at`, `updated_at`) VALUES
(1, 'fullstackdeveloper918@gmail.com', 'Full Stackdeveloper', '$2y$10$ekYuwDDiYZef5wr3AbPIlusRXUT58K5mx.U8zhASbPgoGP2/OU28u', 'T0op88MjE6Jfnt7BThxYzK5Grti7hmMtB6BwdxvMs21TJYwRbg18Cz3I5RDa', 1, '2018-03-21 00:14:50', '2018-03-21 00:14:50');

-- --------------------------------------------------------

--
-- Table structure for table `crawls`
--

CREATE TABLE `crawls` (
  `id` int(11) NOT NULL,
  `trip_url` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `business_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crawls`
--

INSERT INTO `crawls` (`id`, `trip_url`, `phone`, `email`, `business_name`) VALUES
(1, 'https://activewealthshow.com/', '45345345', 'mailto:Ford@activewealth.com', NULL),
(2, 'https://www.agiratech.com', 'tel:+914443574451', 'mailto:info@agiratech.com', NULL),
(3, 'https://dzone.com/', 'tel:+19196780300', 'mailto:support@dzone.com', NULL),
(4, 'http://www.jackmorton.com', 'tel:+49021149554501', 'mailto:experience@jackmorton.com', NULL),
(5, 'https://www.tripadvisor.in/Tourism-g33252-West_Hollywood_California-Vacations.html', 'tel:+1 310-289-1630', NULL, NULL),
(6, 'https://www.tripadvisor.in/Restaurant_Review-g60713-d353960-Reviews-Hog_Island_Oyster_Company-San_Francisco_California.html#', 'tel:+1 415-391-7117', NULL, NULL),
(7, 'https://www.tripadvisor.in/Tourism-g190454-Vienna-Vacations.html', 'tel:+43 1 7125310', 'mailto:reservierung@gmoakeller.at', 'Gmoakeller'),
(8, 'https://www.tripadvisor.in/Restaurant_Review-g32532-d14172450-Reviews-The_Original_Grilled_Cheese_Truck-Isla_Vista_California.html', 'tel:+1 805-845-0566', NULL, NULL),
(9, 'https://www.tripadvisor.in/Restaurant_Review-g32438-d7967017-Reviews-Woody_s_Bbq-Goleta_California.html', 'tel:+1 805-681-3520', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', '', '2018-03-22 05:24:37', '2018-03-22 05:24:39');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

CREATE TABLE `sponsors` (
  `id` int(11) NOT NULL,
  `sponsor_name` varchar(255) DEFAULT NULL,
  `category` varchar(55) DEFAULT NULL,
  `yelp_website` varchar(255) DEFAULT NULL,
  `yelp_address` varchar(255) DEFAULT NULL,
  `trip_advisor_email` varchar(55) DEFAULT NULL,
  `yellow_pages_email` varchar(55) DEFAULT NULL,
  `website_email` varchar(55) DEFAULT NULL,
  `whoIs_email` varchar(55) DEFAULT NULL,
  `manually_email` varchar(55) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `unsubscribe_date` date DEFAULT NULL,
  `sponsorship_tier` varchar(55) DEFAULT NULL,
  `sponsorship_amount` float DEFAULT NULL,
  `sponsorship_date` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sponsors`
--

INSERT INTO `sponsors` (`id`, `sponsor_name`, `category`, `yelp_website`, `yelp_address`, `trip_advisor_email`, `yellow_pages_email`, `website_email`, `whoIs_email`, `manually_email`, `team_id`, `unsubscribe_date`, `sponsorship_tier`, `sponsorship_amount`, `sponsorship_date`, `updated_at`, `created_at`, `lat`, `lng`) VALUES
(1, 'ttt', 'dfhdfh', 'dfghdfhdfh.com', '67,gfhjgf', 'kavita.auspicioussoft@gmail.com', NULL, 'kavita.auspicioussoft@gmail.com', 'kavita.auspicioussoft@gmail.com', 'kavita.auspicioussoft@gmail.com', 67, '2019-08-08', 'rtrtr', 10000, '2019-08-06', '2019-09-05 05:08:22', '2019-08-07 08:12:23', NULL, NULL),
(2, 'uuuuuuu', 'xcvxcv', 'cvxcv', '1212', 'kavita.auspicioussoft@gmail.com', NULL, 'kavita.auspicioussoft@gmail.com', 'kavita.auspicioussoft@gmail.com', 'kavita.auspicioussoft@gmail.com', 34, '2019-08-23', 'platinum', 10000, '2019-08-01', '2019-09-05 05:08:35', '2019-08-08 23:54:45', NULL, NULL),
(3, 'jai', 'ja', 'ja.com', 'mohali', 'kavita.auspicioussoft@gmail.com', NULL, 'kavita.auspicioussoft@gmail.com', 'kavita.auspicioussoft@gmail.com', 'kavita.auspicioussoft@gmail.com', 23, '2019-08-08', 'gold', 1000, '2019-08-10', '2019-08-09 00:46:56', '2019-08-09 00:46:56', '30.7046486', '76.71787259999999'),
(4, 'jatin', 'jat', 'dfghdfhdfh.com', 'delhi', 'jatin@gmail.com', NULL, 'jatin@gmail.com', 'jatin@gmail.com', 'vikashverma003@gmail.com', 23, '2019-08-08', 'gold', 10000, '2019-08-10', '2019-08-09 01:36:10', '2019-08-09 01:36:10', '28.7040592', '77.10249019999999'),
(5, 'sharavan', 'share', 'dfghdfhdfh.com', 'mumbai', 'kavita.auspicioussoft@gmail.com', NULL, 'kavita.auspicioussoft@gmail.com', 'kavita.auspicioussoft@gmail.com', 'vikashverma003@gmail.com', 23, '2019-08-10', '12', 20000, '2019-08-09', '2019-08-09 01:43:43', '2019-08-09 01:43:43', '19.0759837', '72.8776559'),
(6, 'Hot Millions', 'sdgfds', 'sdfdsf', 'SCF 60 & 61, Phase 3 B2, Mohali', 'kavita.auspicioussoft@gmail.com', NULL, 'kavita.auspicioussoft@gmail.com', 'kavita.auspicioussoft@gmail.com', 'kavita.auspicioussoft@gmail.com', 34, '2019-08-09', '23', 122332, '2019-08-09', '2019-08-09 07:06:33', '2019-08-09 07:06:33', '27.4378838', '-82.58968469999999'),
(7, 'sfdkjsa', 'xcvx', 'xcv.com', '11232, Mohali', 'hbnjh@gmail.com', NULL, 'fnvg@gmail.com', 'fjn@gmail.com', 'vbv@gmail.com', 45, '2019-09-10', '34343', 1111, '2019-09-25', '2019-09-05 01:47:06', '2019-09-05 01:47:06', NULL, NULL),
(8, 'sfdkjsa', 'xcvx', 'xcv.com', '11232, Mohali', 'vikas.auspicioussoft@gmail.com', NULL, 'fnvg@gmail.com', 'fjn@gmail.com', 'vbv@gmail.com', 45, '2019-09-10', '34343', 1111, '2019-09-25', '2019-09-05 01:48:31', '2019-09-05 01:48:31', NULL, NULL),
(9, 'sssss', 'xcvx', 'xcv.com', '11232,', 'vikas.auspicioussoft@gmail.com', NULL, 'fjn@gmail.com', 'vbv@gmail.com', 'vbv@gmail.com', 45, '2019-09-10', '34343', 1111, '2019-09-25', '2019-09-05 05:38:06', '2019-09-05 01:48:47', NULL, NULL),
(10, 'fh', 'h', 'fgh', 'gh', 'vikas.auspicioussoft@gmail.com', NULL, 'dsf@gmail.com', 'fjn@gmail.com', 'vbv@gmail.com', 45, '2019-09-20', '34343', 1111, '2019-09-23', '2019-09-05 01:50:33', '2019-09-05 01:50:33', NULL, NULL),
(11, 'fh', 'h', 'fgh', 'gh', 'vikas.auspicioussoft@gmail.com', NULL, 'dsf@gmail.com', 'fjn@gmail.com', 'vbv@gmail.com', 45, '2019-09-20', '34343', 1111, '2019-09-23', '2019-09-05 01:51:18', '2019-09-05 01:51:18', NULL, NULL),
(12, 'fh', 'h', 'fgh', 'gh', 'vikas.auspicioussoft@gmail.com', NULL, 'dsf@gmail.com', 'fjn@gmail.com', 'vbv@gmail.com', 45, '2019-09-20', '34343', 1111, '2019-09-23', '2019-09-05 01:51:58', '2019-09-05 01:51:58', NULL, NULL),
(13, 'fh', 'h', 'fgh', 'gh', 'vikas.auspicioussoft@gmail.com', NULL, 'dsf@gmail.com', 'fjn@gmail.com', 'vbv@gmail.com', 45, '2019-09-20', '34343', 1111, '2019-09-23', '2019-09-05 01:52:03', '2019-09-05 01:52:03', NULL, NULL),
(14, 'gfhfg', 'gfhgf', 'gfhgfhgf', 'gfh', 'vikas.auspicioussoft@gmail.com', NULL, 'gfhgf', 'fjn@gmail.com', 'vbv@gmail.com', 45, '2019-09-03', '454', 45454, '2019-09-17', '2019-09-05 02:06:57', '2019-09-05 02:06:57', NULL, NULL),
(15, 'gfhfg', 'gfhgf', 'gfhgfhgf', 'gfh', 'vikas.auspicioussoft@gmail.com', NULL, 'gfhgf', 'fjn@gmail.com', 'vbv@gmail.com', 45, '2019-09-03', '454', 45454, '2019-09-17', '2019-09-05 02:08:24', '2019-09-05 02:08:24', NULL, NULL),
(16, 'gfhfg', 'gfhgf', 'gfhgfhgf', 'gfh', 'vikas.auspicioussoft@gmail.com', NULL, 'gfhgf', 'fjn@gmail.com', 'vbv@gmail.com', 45, '2019-09-03', '454', 45454, '2019-09-17', '2019-09-05 02:08:55', '2019-09-05 02:08:55', NULL, NULL),
(18, 'bvnbv', 'xcv', 'xcv.com', '11232, Mohali', 'vikas.auspicioussoft@gmail.com', NULL, 'dsf@gmail.com', 'fjn@gmail.com', 'vbv@gmail.com', 45, '2019-09-05', '34343', 4545, '2019-09-25', '2019-09-05 02:42:14', '2019-09-05 02:42:14', NULL, NULL),
(19, 'dfgdsg', 'dgdgf', 'fdf.com', '11232, Mohali', 'vikas.auspicioussoft@gmail.com', NULL, 'fnvg@gmail.com', 'fjn@gmail.com', 'vbv@gmail.com', 45, '2019-09-19', '34343', 4545, '2019-09-23', '2019-09-05 02:47:17', '2019-09-05 02:47:17', NULL, NULL),
(20, 'dfgdsg', 'dgdgf', 'fdf.com', '11232, Mohali', 'vikas.auspicioussoft@gmail.com', NULL, 'fnvg@gmail.com', 'fjn@gmail.com', 'vbv@gmail.com', 45, '2019-09-19', '34343', 4545, '2019-09-23', '2019-09-05 02:51:45', '2019-09-05 02:51:45', NULL, NULL),
(21, 'dfgdsg', 'dgdgf', 'fdf.com', '11232, Mohali', 'vikas.auspicioussoft@gmail.com', NULL, 'fnvg@gmail.com', 'fjn@gmail.com', 'vbv@gmail.com', 45, '2019-09-19', '34343', 4545, '2019-09-23', '2019-09-05 02:53:06', '2019-09-05 02:53:06', NULL, NULL),
(22, 'sfdkjsa', 'hjghj', 'xcv.com', '11232, Mohali', 'vikas.auspicioussoft@gmail.com', NULL, 'fnvg@gmail.com', 'fjn@gmail.com', 'vbv@gmail.com', 67, '2019-09-12', '5555', 67676, '2019-09-10', '2019-09-05 02:54:15', '2019-09-05 02:54:15', NULL, NULL),
(23, 'sfdkjsa', 'hjghj', 'xcv.com', '11232, Mohali', 'vikas.auspicioussoft@gmail.com', NULL, 'fnvg@gmail.com', 'fjn@gmail.com', 'vbv@gmail.com', 67, '2019-09-12', '5555', 67676, '2019-09-10', '2019-09-05 02:54:32', '2019-09-05 02:54:32', NULL, NULL),
(28, 'sapn', 'spany', 'sapny.com', '1211, 3b3, Mohali', 'sdnf@gmail.com', NULL, 'vn@gmail.com', 'f@gmail.com', 'vbv@gmail.com', 78, '2019-09-06', '77', 56565, '2019-09-06', '2019-09-05 06:23:09', '2019-09-05 06:23:09', NULL, NULL),
(29, 'sfdkjsadsgf', 'sdf', 'xcv.com', '11232, Mohali', 'vikas.auspicioussoft@gmail.com', NULL, 'vn@gmail.com', 'fjn@gmail.com', 'vbv@gmail.com', 34, '2019-09-06', '34343', 34343, '2019-09-25', '2019-09-05 07:10:57', '2019-09-05 07:10:57', NULL, NULL),
(30, 'sam', 'hjghj', 'xcv.com', '11232, Mohali', 'vikas.auspicioussoft@gmail.com', NULL, 'vn@gmail.com', 'fjn@gmail.com', 'vbv@gmail.com', 546, '2019-09-25', '77', 45454, '2019-09-24', '2019-09-05 08:16:28', '2019-09-05 08:16:28', NULL, NULL),
(31, 'pepsi', 'shipping', 'pepsi.co.in', 'sanasfree', 'asd.gmail.com', NULL, 'fnvg@gmail.com', 'fjn@gmail.com', 'vbv@gmail.com', 34, '2019-09-06', '34343', 23232, '2019-09-17', '2019-09-05 08:23:06', '2019-09-05 08:23:06', NULL, NULL),
(32, 'pepsi', 'shipping', 'pepsi.co.in', 'sanasfree', 'asd.gmail.com', NULL, 'fnvg@gmail.com', 'fjn@gmail.com', 'vbv@gmail.com', 34, '2019-09-06', '34343', 23232, '2019-09-17', '2019-09-05 08:23:29', '2019-09-05 08:23:29', NULL, NULL),
(33, 'pepsi', 'shipping', 'pepsi.co.in', 'sanasfree', 'asd.gmail.com', NULL, 'fnvg@gmail.com', 'fjn@gmail.com', 'vbv@gmail.com', 34, '2019-09-06', '34343', 23232, '2019-09-17', '2019-09-05 08:24:28', '2019-09-05 08:24:28', NULL, NULL),
(34, 'pepsi', 'shipping', 'xcv.com', '11232, Mohali', 'asd.gmail.com', NULL, 'vn@gmail.com', 'f@gmail.com', 'vbv@gmail.com', 56, '2019-09-23', '454', 34343, '2019-09-16', '2019-09-05 08:27:44', '2019-09-05 08:27:44', NULL, NULL),
(35, 'pepsi12', 'shipping', 'xcv.com', 'austria', 'asd.gmail.com', NULL, 'test12@gmail.com', 'fjn@gmail.com', 'vbv@gmail.com', 45, '2019-09-05', '77', 45454, '2019-09-05', '2019-09-05 09:18:36', '2019-09-05 09:18:36', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sponsor_package`
--

CREATE TABLE `sponsor_package` (
  `id` int(11) NOT NULL,
  `participants` varchar(255) DEFAULT NULL,
  `diamond` varchar(255) NOT NULL,
  `platinum` varchar(255) NOT NULL,
  `gold` varchar(255) NOT NULL,
  `silver` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sponsor_package`
--

INSERT INTO `sponsor_package` (`id`, `participants`, `diamond`, `platinum`, `gold`, `silver`) VALUES
(1, '0-150', '$1000', '$751', '$250', '$50'),
(2, '151-500', '$1500', '$1000', '$500', '$50'),
(5, '501-1000', '$2000', '$1000', '$500', '$50'),
(6, '1000-5000', '$3000', '$2000', '$1000', '$50'),
(7, '5000-15000', '$5000', '$2500', '$1000', '$75'),
(8, '15001 or more', '$10,000', '$5000', '$2000', '$100');

-- --------------------------------------------------------

--
-- Table structure for table `sponsor_package_option`
--

CREATE TABLE `sponsor_package_option` (
  `id` int(11) NOT NULL,
  `sponsorpackage_id` varchar(255) DEFAULT NULL,
  `tier_name` varchar(255) DEFAULT NULL,
  `active` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `sponsor_amount` varchar(255) DEFAULT NULL,
  `slot_available` int(25) DEFAULT NULL,
  `Total` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sponsor_package_option`
--

INSERT INTO `sponsor_package_option` (`id`, `sponsorpackage_id`, `tier_name`, `active`, `description`, `sponsor_amount`, `slot_available`, `Total`) VALUES
(1, '1', 'diamond', 'yes', 'somee', '1000', 100, '10,0000'),
(2, '1', 'platinum', 'yes', 'some', '500', 150, '650'),
(3, '1', 'gold', 'yes', 'someeee', '4000', 10, '40000'),
(4, '1', 'silver', 'yes', 'some', '100', 100, '10000');

-- --------------------------------------------------------

--
-- Table structure for table `sponsor_payment`
--

CREATE TABLE `sponsor_payment` (
  `id` int(11) NOT NULL,
  `card_number` varchar(255) DEFAULT NULL,
  `cvv` varchar(255) DEFAULT NULL,
  `expiry_month` varchar(255) DEFAULT NULL,
  `expiry_year` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sponsor_payment`
--

INSERT INTO `sponsor_payment` (`id`, `card_number`, `cvv`, `expiry_month`, `expiry_year`, `amount`, `email`) VALUES
(1, '4242424242424242', '314', '10', '2020', '9878', ''),
(2, '4242424242424242', 'eyJpdiI6IkFXQW9yeHA5MVdVRU93dlJYY3d0N1E9PSIsInZhbHVlIjoiK2o0c29qN0xtMnVTSFA5b2R4NGJodz09IiwibWFjIjoiNGQ2ODQ1YTI5NjAxZDY1Mzk1YTIxNjA5YWFiMTdhYjhlNDBlZjJlMzg1NmIzNjMxZjU0YTgzNDkyZDE2YTFjYiJ9', 'eyJpdiI6IlVjeDRqVkdzb29zTWIzZTZHVG4zMnc9PSIsInZhbHVlIjoiK2FRNGREdGtaYVQxOHlmdHZcL2F5YVE9PSIsIm1hYyI6Ijg3OWE1ZGNhN2Y0ZGI1MTQ4YjM2NGRhNjI1ZTRlMjMzYjU0NzdlY2I2MjE5YmU1MTA1NWM5MTAyOTJiY2I4NjMifQ==', 'eyJpdiI6Ikh4SFJJZ3VUS2JuXC9SQmFLdVUrU05RPT0iLCJ2YWx1ZSI6IlBwXC8wUzVLVk9LdkFzcW5hV0g0UklRPT0iLCJtYWMiOiI2MTkxOTg1YWFmMzY4MTlkNzhlZjkzMjQyZjYwODkzNjMzYThhZjk2MDhiNGYwMWFiOTE5YjVmODZlYjMyNDI5In0=', '7778', 'sponsor_name@gmail.com'),
(3, NULL, 'eyJpdiI6Im8rSkVyb3Vxb3hFTHhmcU01Rnk0YVE9PSIsInZhbHVlIjoiang3anVTbXh0dDZDN1FaVkhLdDg2UT09IiwibWFjIjoiMGE1YTA0OTA3YTY0Njg3MzA5ZTkwM2M0N2EzMzdlZDdlNWQ1ODM0NTMyNGUwNzk1YTZhMWRlM2NjMDQxOGY3YiJ9', 'eyJpdiI6IjZmWEs3ekxKbTIxblhMcVZJMkd1YkE9PSIsInZhbHVlIjoiRTdsXC9lV3hFRkFkaUZDMUdhXC9KZStBPT0iLCJtYWMiOiJlOWMyM2RmMDliMzdmZjU1YTkwNThhZTUwYTdlN2VlZDQwNzk2ZDkzNmE3YjA3MzU5M2NmZWMyMWU4MTYxZDdlIn0=', 'eyJpdiI6IkwrREphdGlTOWlXbkNES3BIRVRCUWc9PSIsInZhbHVlIjoiMXhKRk44cXVzS3NhYllabDBFYVNzdz09IiwibWFjIjoiYWFiMWYxNTIzZWUzZDkzZjllOGViOWRiYzJkM2I1NjgyNWMzZmY1M2E4MGMzZjhlYWJmZjNmYTJiY2I2NjExYyJ9', NULL, 'sponsor_name@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `grouptype` varchar(255) DEFAULT NULL,
  `main_activity` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `mail_add_groupname` varchar(255) DEFAULT NULL,
  `website_fb_page` varchar(255) DEFAULT NULL,
  `member_participants` int(11) DEFAULT NULL,
  `tc` varchar(55) DEFAULT '0',
  `other_member` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `group_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `plan_name` varchar(255) DEFAULT NULL,
  `other_main_activity` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `grouptype`, `main_activity`, `first_name`, `last_name`, `title`, `email`, `phone`, `mail_add_groupname`, `website_fb_page`, `member_participants`, `tc`, `other_member`, `updated_at`, `created_at`, `group_name`, `address`, `plan_name`, `other_main_activity`) VALUES
(1, 'One team', 'Test', 'kavita', NULL, NULL, 'kavita.auspicioussoft@gmail.com', '1232664', 'kavita.auspicioussoft@gmail.com', NULL, 12, '0', NULL, '2019-09-06 01:03:33', '2019-08-06 00:08:31', 'kkkkkkkh', '5675, lko', NULL, NULL),
(19, 'Entire travel club', 'jghjg', 'ghjgh', 'ghjghj', 'ghjghjghj', 'ghj@gmail.com', '567567567', 'hj@gmail.com', 'ghm.com', 45, '0', NULL, '2019-09-05 04:46:45', '2019-08-07 06:34:12', 'ghjgh', '66666666', NULL, NULL),
(5, 'League', 'fgf', 'kavita', 'kk', 'fgf', 'kavita.auspicioussoft@gmail.com', '1232664', 'dfgdf@gmail.com', 'abc.com', 7, '0', NULL, '2019-08-06 04:12:59', '2019-08-06 04:12:59', 'gfg', '1212, 121', NULL, NULL),
(17, 'Entire travel club', 'bnmnb', 'bnmbn', 'bnmbn', 'bnmbnm', 'kavita.auspicioussoft@gmail.com', '879789789', 'dfgdf@gmail.com', 'vbvcb.com', 80, '0', NULL, '2019-08-07 05:15:17', '2019-08-07 05:15:17', 'bnmbnmbn', '1212, 121', NULL, NULL),
(7, 'Entire school athletic department', 'vcbcv', 'kavita', 'kk', 'vcbcv', 'kavita.auspicioussoft@gmail.com', '1232664', 'dfgdf@gmail.com', 'cvbcvb', 5, '0', NULL, '2019-08-06 04:16:07', '2019-08-06 04:16:07', 'dsfdsf', '1212, 121', NULL, NULL),
(8, 'School band', 'playing', 'kavita', 'kk', 'aasa', 'kavita.auspicioussoft@gmail.com', '1232664', 'asa@gmail.com', 'wewewe', 23, '0', NULL, '2019-08-06 04:17:54', '2019-08-06 04:17:54', 'avbvb', '1212, 121', NULL, NULL),
(9, 'School band', 'fgfgf', 'kavita', 'kk', 'ttt', 'kavita.auspicioussoft@gmail.com', '1232664', 'dfgdf@gmail.com', 'tty.com', 45, '0', NULL, '2019-08-06 04:19:34', '2019-08-06 04:19:34', 'jack', '1212, 121', NULL, NULL),
(10, 'School band', 'baseball', 'kavita', 'kk', 'tyut', 'kavita.auspicioussoft@gmail.com', '1232664', 'asa@gmail.com', 'tty.com', 7, '0', NULL, '2019-08-06 04:20:51', '2019-08-06 04:20:51', 'jilj', '1212, 121', NULL, NULL),
(11, 'League', 'edtgfdr', 'kavita', 'kk', 'kjbhib', 'kavita.auspicioussoft@gmail.com', '1232664', 'asa@gmail.com', 'kjbnk.com', 8, '0', NULL, '2019-08-06 04:22:19', '2019-08-06 04:22:19', 'tablet', '1212, 121', NULL, NULL),
(12, 'League', 'sd', 'kavita', 'kk', 'sdsd', 'kavita.auspicioussoft@gmail.com', '1232664', 'hj@gmail.com', 'ds', 5, '0', NULL, '2019-08-06 04:31:06', '2019-08-06 04:31:06', 'sdasdsa', '1212, 121', NULL, NULL),
(13, 'League', 'sd', 'kavita', 'kk', 'sdsd', 'kavita.auspicioussoft@gmail.com', '1232664', 'hj@gmail.com', 'ds', 5, '0', NULL, '2019-08-06 04:31:30', '2019-08-06 04:31:30', 'sdasdsa', '1212, 121', NULL, NULL),
(14, 'League', 'xcv', 'kavita', 'kk', 'xcvxc', 'kavita.auspicioussoft@gmail.com', '1232664', 'hj@gmail.com', 'xcvxcv', 5, '0', NULL, '2019-08-06 04:32:59', '2019-08-06 04:32:59', 'xcvxc', '1212, 121', NULL, NULL),
(15, 'League', 'baseball', 'kavita', 'kk', 'Paul', 'kavita.auspicioussoft@gmail.com', '1232664', 'asa@gmail.com', 'abc.com', 99, '0', NULL, '2019-08-06 05:09:07', '2019-08-06 05:09:07', 'alan', '1212, 121', NULL, NULL),
(16, 'Entire school athletic department', 'cricket', 'gambling', 'gambler', 'Lesly', 'gambler@gmail.com', '5467456546', 'dfgdf@gmail.com', 'fgfdgabc.com', 23, '0', NULL, '2019-08-06 05:22:38', '2019-08-06 05:22:38', 'gambler', '909, Boston', NULL, NULL),
(20, 'Entire school athletic department', 'baseball', 'kavita', 'kk', NULL, 'kavita.auspicioussoft@gmail.com', '1232664', NULL, 'savirtam@facebook.com', 123, '0', NULL, '2019-08-08 06:17:35', '2019-08-08 06:17:35', 'kappa', '1212, mohali', NULL, NULL),
(21, 'Entire school athletic department', 'baseball', 'kavita', 'kk', NULL, 'kavita.auspicioussoft@gmail.com', '1232664', NULL, 'savirtam@facebook.com', 123, '0', NULL, '2019-08-08 06:17:35', '2019-08-08 06:17:35', 'kappa', '1212, mohali', NULL, NULL),
(22, 'League', 'dfgdfgdf', 'gfhgf', 'gfhgfh', NULL, 'nh@gmail.com', '5465465465', NULL, 'gfhgfhgf.com', 56, '0', NULL, '2019-08-08 06:35:43', '2019-08-08 06:35:43', 'dfgdfgdfg', '1212, 121', NULL, NULL),
(23, 'Entire school athletic department', 'dsgdsgds', 'vbnbv', 'bvnbv', NULL, 'bvn@gmail.com', '45654654', NULL, 'gvbnbv.com', 65, '0', NULL, '2019-08-08 06:56:20', '2019-08-08 06:56:20', 'dgds', '1212, mohali', NULL, NULL),
(24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2019-08-08 06:56:20', '2019-08-08 06:56:20', NULL, NULL, 'gold', NULL),
(25, 'Entire travel club', 'baseball', 'cvbc', 'cvbcvb', NULL, NULL, '1232664', 'kavita.auspicioussoft@gmail.com', 'vcbcvbcv.com', 56, '0', NULL, '2019-08-08 07:30:12', '2019-08-08 07:30:12', 'auspicioussoft', '1212, mohali', 'platinum', NULL),
(26, 'League', 'baseball', 'gfhgfh', 'fghgfh', NULL, 'kavita.auspicioussoft@gmail.com', '567567567', 'fghgf@gmail.com', 'gfhgfgh.com', 67, '0', NULL, '2019-08-09 02:23:21', '2019-08-09 02:23:21', 'auspicioussoft', 'delhi', 'platinum', 'auspicioussoft'),
(76, 'League', 'dsfdsf', 'bmn', 'vbn', NULL, 'dsf@gmail.com', '454545', 'vikas.auspicioussoft@gmail.com', 'dfg.fb.com', 56, '0', NULL, '2019-09-06 01:23:47', '2019-09-06 01:23:47', 'dfdsf', '99801', 'platinum', 'gaming'),
(28, 'League', 'baseball', 'dhd', 'dfhdfh', NULL, 'kavita.auspicioussoft@gmail.com', '3456346345', 'dfhfd@gmail.com', 'hfhfgh.com', 34, '0', NULL, '2019-08-09 02:45:30', '2019-08-09 02:45:30', 'ghjghjgh', 'delhi', 'gold', 'ghjghj'),
(29, 'League', 'baseball', 'vbm', 'bvmbvm', NULL, 'kavita.auspicioussoft@gmail.com', '1232664', 'kavita.auspicioussoft@gmail.com', 'bnmbnm.com', 78, '0', NULL, '2019-08-09 02:48:05', '2019-08-09 02:48:05', 'fghgfh', 'delhi', 'platinum', 'gfhgfh'),
(30, 'Entire school athletic department', 'rtyrty', 'dsgsd', 'gfds', NULL, 'kavita.auspicioussoft@gmail.com', '34343', 'sdf@gmail.com', 'dfgdf.com', 34, '0', NULL, '2019-08-09 02:55:28', '2019-08-09 02:55:28', 'tryrtyrt', 'delhi', 'platinum', 'rtyrty'),
(31, 'Entire travel club', 'baseball', 'kavita', 'kavita', NULL, 'kavita.auspicioussoft@gmail.com', '466464', 'kavita.auspicioussoft@gmail.com', 'kavita.fb.com', 24, '0', NULL, '2019-08-11 23:25:51', '2019-08-11 23:25:51', 'auspicioussoft', 'mohali', 'platinum', 'baseball'),
(32, 'Entire travel club', 'cricket', 'tyrty', 'rtyrty', NULL, 'asdf@gmail.com', '14353453', 'tyrt@gmail.com', 'dfgdfg.fb.com', 34, '0', NULL, '2019-08-21 23:18:48', '2019-08-21 23:18:48', 'dsnkj', 'Mohali', 'gold', 'playing'),
(33, 'League', 'cricket', 'gfhjgfh', 'gfhfgh', NULL, 'sd@gmail.com', '23432423423', 'gfhgf@gmail.com', 'dfgdfg.fb.facebook', 23, '0', NULL, '2019-08-22 00:10:44', '2019-08-22 00:10:44', 'abch', 'london', 'platinum', 'playing'),
(34, 'League', 'cvbcv', 'gfhgf', 'gfhgf', NULL, 'kavita.auspicioussoft@gmail.com', '1232664', 'kavita.auspicioussoft@gmail.com', 'gfhgf.fb.com', 45, '0', NULL, '2019-08-23 00:00:15', '2019-08-23 00:00:15', 'cvbcv', '454, Mohali', 'platinum', 'cfbxcvb'),
(35, 'School band', 'dsfds', 'ghjgh', 'hjgh', NULL, 'kavita.auspicioussoft@gmail.com', '1232664', 'kavita.auspicioussoft@gmail.com', 'ghjgh.fb.com', 45, '0', NULL, '2019-08-23 00:02:16', '2019-08-23 00:02:16', 'gfhgf', '1212, Mohali', 'platinum', 'ghgfh'),
(36, 'Entire travel club', 'gfhgfh', 'bvnbvn', 'bvnbvn', NULL, 'kavita.auspicioussoft@gmail.com', '1232664', 'kavita.auspicioussoft@gmail.com', 'bhnmbn.fb.com', 34, '0', NULL, '2019-08-23 00:04:39', '2019-08-23 00:04:39', 'gfhgfhgf', 'Brazil', 'platinum', 'gfhgf'),
(37, 'Entire school athletic department', 'edtgfdr', 'fgdf', 'dfgdf', NULL, 'kavita.auspicioussoft@gmail.com', '1232664', 'kavita.auspicioussoft@gmail.com', 'fdgdf.fb.com', 500, '0', NULL, '2019-08-23 00:25:31', '2019-08-23 00:25:31', 'ddsgfds', 'Austria', 'gold', 'dgfdsgds'),
(38, 'Entire school athletic department', 'playing', 'bcvnbvn', 'bvnbvnbv', NULL, 'kavita.auspicioussoft@gmail.com', '75675676', 'bvn@gmail.com', 'ghjg.fb.com', 600, '0', NULL, '2019-08-23 01:26:43', '2019-08-23 01:26:43', 'agh', 'Germany', 'platinum', 'cricket'),
(39, 'Entire travel club', 'cricket', 'bvn', 'bbg', NULL, 'dfsf@gmail.com', '2323232', 'gh@gmail.com', 'sdfds.fb.com', 34, '0', NULL, '2019-08-27 04:28:29', '2019-08-27 04:28:29', 'dfgdf', 'Malaysia', 'platinum', 'playing'),
(40, 'Entire travel club', 'cricket', 'bvn', 'bbg', NULL, 'dfsf@gmail.com', '2323232', 'gh@gmail.com', 'sdfds.fb.com', 34, '0', NULL, '2019-08-27 05:21:29', '2019-08-27 05:21:29', 'dfgdf', 'Malaysia', 'platinum', 'playing'),
(41, 'Entire travel club', 'cricket', 'bvn', 'bbg', NULL, 'dfsf@gmail.com', '2323232', 'gh@gmail.com', 'sdfds.fb.com', 34, '0', NULL, '2019-08-27 05:21:53', '2019-08-27 05:21:53', 'dfgdf', 'Malaysia', 'platinum', 'playing'),
(42, 'Entire travel club', 'cricket', 'bvn', 'bbg', NULL, 'dfsf@gmail.com', '2323232', 'gh@gmail.com', 'sdfds.fb.com', 34, '0', NULL, '2019-08-27 05:22:52', '2019-08-27 05:22:52', 'dfgdf', 'Malaysia', 'platinum', 'playing'),
(43, 'One team', 'dfg', 'xcv', 'xcv', NULL, 'dfg@gmail.com', '5445', 'xcv@gmail.com', 'fdgvh.fb.com', 34, '0', NULL, '2019-08-27 07:22:12', '2019-08-27 07:22:12', 'dfg', 'Brazil', 'silver', 'dfg'),
(44, 'One team', 'dfg', 'xcv', 'xcv', NULL, 'dfg@gmail.com', '5445', 'xcv@gmail.com', 'fdgvh.fb.com', 34, '0', NULL, '2019-08-27 07:24:15', '2019-08-27 07:24:15', 'dfg', 'Brazil', 'silver', 'dfg'),
(45, 'One team', 'dfg', 'xcv', 'xcv', NULL, 'dfg@gmail.com', '5445', 'xcv@gmail.com', 'fdgvh.fb.com', 34, '0', NULL, '2019-08-27 07:27:57', '2019-08-27 07:27:57', 'dfg', 'Brazil', 'silver', 'dfg'),
(46, 'One team', 'dfg', 'xcv', 'xcv', NULL, 'dfg@gmail.com', '5445', 'xcv@gmail.com', 'fdgvh.fb.com', 34, '0', NULL, '2019-08-27 07:28:45', '2019-08-27 07:28:45', 'dfg', 'Brazil', 'silver', 'dfg'),
(47, 'One team', 'dfg', 'xcv', 'xcv', NULL, 'dfg@gmail.com', '5445', 'xcv@gmail.com', 'fdgvh.fb.com', 34, '0', NULL, '2019-08-27 07:31:13', '2019-08-27 07:31:13', 'dfg', 'Brazil', 'silver', 'dfg'),
(48, 'One team', 'dfg', 'xcv', 'xcv', NULL, 'dfg@gmail.com', '5445', 'xcv@gmail.com', 'fdgvh.fb.com', 34, '0', NULL, '2019-08-27 07:31:30', '2019-08-27 07:31:30', 'dfg', 'Brazil', 'silver', 'dfg'),
(49, 'One team', 'dfg', 'xcv', 'xcv', NULL, 'dfg@gmail.com', '5445', 'xcv@gmail.com', 'fdgvh.fb.com', 34, '0', NULL, '2019-08-27 07:32:30', '2019-08-27 07:32:30', 'dfg', 'Brazil', 'silver', 'dfg'),
(50, 'Entire travel club', 'cricket', 'sdf', 'sdf', NULL, 'sdfds@gmail.com', '343', 'sdf@gmail.com', 'dsf', 45, '0', NULL, '2019-08-27 07:55:47', '2019-08-27 07:55:47', 'dsgdsg', 'Brazil', 'silver', 'fg'),
(51, 'School band', 'cricket', 'xcv', 'v', NULL, 'dfxg@gmail.com', '34534', 'fullstackdeveloper918@gmail.com', 'dfcgvxcv.fb.com', 34, '0', NULL, '2019-08-27 08:01:12', '2019-08-27 08:01:12', 'xcbvxcv', 'Brazil', 'platinum', 'xfgvbxc'),
(52, 'School band', 'cricket', 'xcv', 'v', NULL, 'dfxg@gmail.com', '34534', 'fullstackdeveloper918@gmail.com', 'dfcgvxcv.fb.com', 34, '0', NULL, '2019-08-27 08:22:06', '2019-08-27 08:22:06', 'xcbvxcv', 'Brazil', 'platinum', 'xfgvbxc'),
(53, 'Entire school athletic department', 'playing', 'vikas', 'fdgdf', NULL, 'df@gmail.com', '2322323', 'fd@gmail.com', 'dsfds.fb.com', 34, '0', NULL, '2019-08-30 00:05:43', '2019-08-30 00:05:43', 'cricket', 'Belgium', 'diamond', 'dsfds'),
(54, 'League', 'ghkg', 'ytr', 'fjf', NULL, 'ghk@gmail.com', '768678', 'fullstackdeveloper918@gmail.com', 'fjgf.fb.com', 56, '0', NULL, '2019-09-03 02:08:46', '2019-09-03 02:08:46', 'gkg', 'Los Angeles', 'platinum', 'gkukg'),
(55, 'League', 'ghkg', 'ytr', 'fjf', NULL, 'ghk@gmail.com', '768678', 'fullstackdeveloper918@gmail.com', 'fjgf.fb.com', 56, '0', NULL, '2019-09-03 02:10:04', '2019-09-03 02:10:04', 'gkg', 'Los Angeles', 'platinum', 'gkukg'),
(93, 'Entire travel club', 'bnm', 'vikas', 'cvfb', NULL, 'df@gmail.com', '345345', 'cvb@gmail.com', 'cvb.fb.com', 23, '0', NULL, '2019-09-09 08:37:57', '2019-09-09 08:37:57', 'kkkkkkk', 'chile', 'platinum', 'bnmbn'),
(87, 'Entire school athletic department', 'xcv', 'cbv', 'xcb', NULL, 'xcv@gmail.com', '34343', 'xcb@gmail.com', 'dfg.fb.com', 45, '0', NULL, '2019-09-06 04:24:12', '2019-09-06 04:24:12', 'xcv', 'poland', 'diamond', 'xcbvxc'),
(88, 'Entire school athletic department', 'xcv', 'cbv', 'xcb', NULL, 'xcv@gmail.com', '34343', 'xcb@gmail.com', 'dfg.fb.com', 45, '0', NULL, '2019-09-06 04:25:27', '2019-09-06 04:25:27', 'xcv', 'poland', 'diamond', 'xcbvxc'),
(92, 'League', 'bcvcv', 'vikas', 'vcbvc', NULL, 'gf@gmail.com', '57567', 'cvb@gmail.com', 'fgh.fb.com', 502, '0', NULL, '2019-09-09 08:31:36', '2019-09-09 08:31:36', 'cvbcvb', '90010', 'platinum', 'cvgbnv'),
(84, 'League', 'cricket', 'jl', 'jklkj', NULL, 'vxc@gmail.com', '67676676', 'vikas.auspicioussoft@gmail.com', 'fdfg.fb.com', 45, '0', NULL, '2019-09-06 04:18:38', '2019-09-06 04:18:38', 'bvn', '99918', 'gold', 'nbv'),
(85, 'League', 'cricket', 'jl', 'jklkj', NULL, 'vxc@gmail.com', '67676676', 'vikas.auspicioussoft@gmail.com', 'fdfg.fb.com', 45, '0', NULL, '2019-09-06 04:20:31', '2019-09-06 04:20:31', 'bvn', '99918', 'gold', 'nbv'),
(89, 'Entire school athletic department', 'xcv', 'cbv', 'xcb', NULL, 'xcv@gmail.com', '34343', 'xcb@gmail.com', 'dfg.fb.com', 45, '0', NULL, '2019-09-06 04:25:31', '2019-09-06 04:25:31', 'xcv', 'poland', 'diamond', 'xcbvxc'),
(94, 'League', 'cricket', 'gfh', 'fgh', NULL, 'xdf@gmail.com', '3434343', 'gf@gmail.com', 'dfg.fb.com', 345, '0', NULL, '2019-09-10 00:57:19', '2019-09-10 00:57:19', 'sds', '90001', 'diamond', 'cfsds'),
(95, 'League', 'vxc', 'xzc', 'zxc', NULL, 'xcv@gmail.com', '54654654', 'xz@gmail.com', 'xvg.fb.com', 345, '0', NULL, '2019-09-10 04:40:05', '2019-09-10 04:40:05', 'xcvx', '90001', 'platinum', 'xcvxc'),
(96, 'League', 'zxc', 'cvb', 'cvb', NULL, 'zx@gmail.com', '546754654', 'cv@gmail.com', 'cbv.fb.com', 600, '0', NULL, '2019-09-10 04:41:46', '2019-09-10 04:41:46', 'zxcv', '90003', 'diamond', 'zxvc'),
(97, 'Entire travel club', 'cricket', 'xcv', 'xcv', NULL, 'dsf@gmail.com', '56465546', 'vikashverma003@gmail.com', 'dfg.fb.com', 678, '0', NULL, '2019-09-10 04:43:30', '2019-09-10 04:43:30', 'sdf', '90003', 'diamond', 'dsfds'),
(98, 'School band', 'cvbcvbcv', 'vikas', 'bvnvb', NULL, 'vb@gmail.com', '7897978', 'n@gmail.com', 'gfb.fb.com', 123, '0', NULL, '2019-09-10 04:47:46', '2019-09-10 04:47:46', 'cvbcvb', '90006', 'platinum', 'cvbcv');

-- --------------------------------------------------------

--
-- Table structure for table `trip_url`
--

CREATE TABLE `trip_url` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `business_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trip_url`
--

INSERT INTO `trip_url` (`id`, `url`, `business_name`) VALUES
(1, 'https://www.tripadvisor.in/Restaurant_Review-g60823-d3617159-Reviews-Tatte_Bakery_and_Cafe-Brookline_Massachusetts.html', 'Tatte Bakery and Cafe'),
(2, 'https://www.tripadvisor.in/Restaurant_Review-g60745-d1937941-Reviews-Island_Creek_Oyster_Bar-Boston_Massachusetts.html', 'Island Creek Oyster Bar');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User Demo', 'userdemo@gmail.com', NULL, '$2y$10$ekYuwDDiYZef5wr3AbPIlusRXUT58K5mx.U8zhASbPgoGP2/OU28u', NULL, '2019-08-02 06:29:20', '2019-08-02 06:29:20');

-- --------------------------------------------------------

--
-- Table structure for table `yelp_address`
--

CREATE TABLE `yelp_address` (
  `id` int(11) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `business_name` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `yelp_address`
--

INSERT INTO `yelp_address` (`id`, `location`, `city`, `business_name`, `latitude`, `longitude`, `phone`, `address`) VALUES
(1, 'Philippine', 'Malay', 'The Sunny Side Cafe', '11.953085', '121.929657', NULL, NULL),
(2, 'Philippine', 'Kalibo', 'Latté', '11.6947732097538', '122.374717823387', NULL, NULL),
(3, 'Philippine', 'Roxas City', 'Sprinkles Barkery & Cakes', '11.5870194280434', '122.748834304512', NULL, NULL),
(4, 'Philippine', 'Roxas City', 'Coco Veranda', '11.5998699', '122.74453', NULL, NULL),
(5, 'Philippine', 'Roxas City', 'Mang Inasal', '11.590068', '122.751778', NULL, NULL),
(6, 'Philippine', 'Malay', 'Los Indios Bravos', '11.9708009', '121.9176072', NULL, NULL),
(7, 'Philippine', 'Malay', 'The Pig Out Bistro', '11.9650773286637', '121.923854537308', NULL, NULL),
(8, 'Philippine', 'Kalibo', 'Sy Bee Tin', '11.708809', '122.361902', NULL, NULL),
(9, 'Philippine', 'Malay', 'White Beach', '11.961619', '121.924212', NULL, NULL),
(10, 'Philippine', 'Malay', 'Boracay', '11.967574', '121.924912', NULL, NULL),
(11, 'Philippine', 'Malay', 'The Ruf Resto', '11.9653462816334', '121.926760937475', NULL, NULL),
(12, 'Philippine', 'Sikat', 'Lime and Basil Thai Restaurant', '11.1126661300659', '122.509475708008', NULL, NULL),
(13, 'Philippine', 'Kalibo', 'Mang Inasal', '11.7060553934882', '122.371167875827', NULL, NULL),
(14, 'Philippine', 'Malay', 'Starbucks', '11.9634138575596', '121.923236920761', NULL, NULL),
(15, 'Philippine', 'Malay', 'Real Coffee & Tea Cafe', '11.9620434397384', '121.927229913322', NULL, NULL),
(16, 'Philippine', 'Malay', 'Mesa Filipino Moderne', '11.956914', '121.927598', NULL, NULL),
(17, 'Philippine', 'Malay', 'Cha Cha\'s Beach Cafe', '11.9575268693422', '121.92687025178', NULL, NULL),
(18, 'Philippine', 'Malay', 'Dos Mestizos', '11.9559386620961', '121.928895078599', NULL, NULL),
(19, 'Philippine', 'Boracay Island', 'Subo Boracay', '11.9563401859212', '121.930124272954', NULL, NULL),
(20, 'Philippine', 'Malay', 'Halomango', '11.962836', '121.926037', NULL, NULL),
(21, 'chelsea', 'Vinita', 'Clanton\'s Cafe', '36.6376226', '-95.1517914', '+19182569053', NULL),
(22, 'chelsea', 'Chelsea', 'Prairie Rose Grille', '36.52868', '-95.433781', '+19187895111', NULL),
(23, 'chelsea', 'Claremore', 'Hugo\'s Family Restaurant', '36.30711', '-95.62469', '+19183412927', NULL),
(24, 'chelsea', 'Langley', 'The Artichoke Restaurant & Bar', '36.4975629', '-95.0587688', '+19187829855', NULL),
(25, 'chelsea', 'Pryor', 'Sam & Ellas Chicken Palace', '36.2802391052246', '-95.3095855712891', '+19188256224', NULL),
(26, 'chelsea', 'Vinita', 'Hi-Way Cafe', '36.62753', '-95.19901', '+19182565465', NULL),
(27, 'chelsea', 'Claremore', 'Front Porch Bakery', '36.3454965502024', '-95.5927752703428', '+19183417505', NULL),
(28, 'chelsea', 'Claremore', 'El Maguey Mexican Restaurant', '36.286544', '-95.633051', '+19183417677', NULL),
(29, 'chelsea', 'Owasso', 'Bricktown Brewery', '36.293466', '-95.841041', '+19183212739', NULL),
(30, 'chelsea', 'Claremore', 'Hammett House Restaurant', '36.31871', '-95.63015', '+19183417333', NULL),
(31, 'chelsea', 'Pryor', 'Mid-American Grille', '36.2521320878669', '-95.3342728567444', '+19188247625', NULL),
(32, 'chelsea', 'Owasso', 'Hideaway Pizza', '36.2935957706925', '-95.8288085244619', '+19189284777', NULL),
(33, 'chelsea', 'Claremore', 'J Farley\'s', '36.31065', '-95.63328', '+19189236130', NULL),
(34, 'chelsea', 'Owasso', 'Hapa Japanese Cuisine', '36.27772', '-95.8222', '+19182722727', NULL),
(35, 'chelsea', 'Owasso', 'Akira Sushi Bar', '36.2905010087619', '-95.8367274996492', '+19183766115', NULL),
(36, 'chelsea', 'Claremore', 'Asean Diner', '36.3217315', '-95.62367317', '+19183424141', NULL),
(37, 'chelsea', 'Claremore', 'Taco Tico', '36.3205699', '-95.61147', '+19183420050', NULL),
(38, 'chelsea', 'Claremore', 'Main Street Tavern - Claremore', '36.3118668907302', '-95.6150127014835', '+19182834464', NULL),
(39, 'chelsea', 'Pryor', 'Thomas Restaurant', '36.3026657104492', '-95.3198852539062', '', NULL),
(40, 'chelsea', 'Chelsea', 'Main Street Diner', '36.5357398986816', '-95.4319305419922', '+19187892001', NULL),
(41, 'chelsea', 'Vinita', 'Clanton\'s Cafe', '36.6376226', '-95.1517914', '+19182569053', NULL),
(42, 'chelsea', 'Chelsea', 'Prairie Rose Grille', '36.52868', '-95.433781', '+19187895111', NULL),
(43, 'chelsea', 'Claremore', 'Hugo\'s Family Restaurant', '36.30711', '-95.62469', '+19183412927', NULL),
(44, 'chelsea', 'Langley', 'The Artichoke Restaurant & Bar', '36.4975629', '-95.0587688', '+19187829855', NULL),
(45, 'chelsea', 'Pryor', 'Sam & Ellas Chicken Palace', '36.2802391052246', '-95.3095855712891', '+19188256224', NULL),
(46, 'chelsea', 'Vinita', 'Hi-Way Cafe', '36.62753', '-95.19901', '+19182565465', NULL),
(47, 'chelsea', 'Claremore', 'Front Porch Bakery', '36.3454965502024', '-95.5927752703428', '+19183417505', NULL),
(48, 'chelsea', 'Claremore', 'El Maguey Mexican Restaurant', '36.286544', '-95.633051', '+19183417677', NULL),
(49, 'chelsea', 'Owasso', 'Bricktown Brewery', '36.293466', '-95.841041', '+19183212739', NULL),
(50, 'chelsea', 'Claremore', 'Hammett House Restaurant', '36.31871', '-95.63015', '+19183417333', NULL),
(51, 'chelsea', 'Pryor', 'Mid-American Grille', '36.2521320878669', '-95.3342728567444', '+19188247625', NULL),
(52, 'chelsea', 'Owasso', 'Hideaway Pizza', '36.2935957706925', '-95.8288085244619', '+19189284777', NULL),
(53, 'chelsea', 'Claremore', 'J Farley\'s', '36.31065', '-95.63328', '+19189236130', NULL),
(54, 'chelsea', 'Owasso', 'Hapa Japanese Cuisine', '36.27772', '-95.8222', '+19182722727', NULL),
(55, 'chelsea', 'Owasso', 'Akira Sushi Bar', '36.2905010087619', '-95.8367274996492', '+19183766115', NULL),
(56, 'chelsea', 'Claremore', 'Asean Diner', '36.3217315', '-95.62367317', '+19183424141', NULL),
(57, 'chelsea', 'Claremore', 'Taco Tico', '36.3205699', '-95.61147', '+19183420050', NULL),
(58, 'chelsea', 'Claremore', 'Main Street Tavern - Claremore', '36.3118668907302', '-95.6150127014835', '+19182834464', NULL),
(59, 'chelsea', 'Pryor', 'Thomas Restaurant', '36.3026657104492', '-95.3198852539062', '', NULL),
(60, 'chelsea', 'Chelsea', 'Main Street Diner', '36.5357398986816', '-95.4319305419922', '+19187892001', NULL),
(61, 'london', 'London', 'Dishoom', '51.512447030091', '-0.1269579217873', '+442074209320', NULL),
(62, 'london', 'London', 'The British Museum', '51.518298', '-0.126026', '+442073238299', NULL),
(63, 'london', 'London', 'The National Gallery', '51.508929', '-0.128302', '+4420077472885', NULL),
(64, 'london', 'London', 'Tower of London', '51.5083008269638', '-0.0760689389286426', '+442031666000', NULL),
(65, 'london', 'London', 'Dishoom', '51.5129919', '-0.1397337', '+442074209322', NULL),
(66, 'london', 'London', 'Coca Cola London Eye', '51.503364', '-0.11957', '', NULL),
(67, 'london', 'London', 'Big Ben', '51.5007803427897', '-0.124601009192702', '+442072194272', NULL),
(68, 'london', 'London', 'Hyde Park', '51.5039538036569', '-0.152711774741523', '+443000612114', NULL),
(69, 'london', 'London', 'Tate Modern', '51.5078610102146', '-0.0991344451904297', '+442078878888', NULL),
(70, 'london', 'London', 'Victoria and Albert Museum', '51.4963940559606', '-0.171935630295101', '+442079422000', NULL),
(71, 'london', 'London', 'Tower Bridge', '51.5054836850673', '-0.0754022598266602', '+442074033761', NULL),
(72, 'london', 'London', 'Dishoom', '51.5245310066818', '-0.076594190862934', '+442074209324', NULL),
(73, 'london', 'London', 'Regency Café', '51.4940143171', '-0.13222007974201', '+442078216596', NULL),
(74, 'london', 'London', 'Dishoom', '51.5363182978271', '-0.125145272091882', '+442074209321', NULL),
(75, 'london', 'London', 'Westminster Abbey', '51.4993203344498', '-0.127374497474177', '+442072225152', NULL),
(76, 'london', 'London', 'The Natural History Museum', '51.4961423561293', '-0.174409105353236', '+442079425000', NULL),
(77, 'london', 'London', 'Sketch', '51.5127614699071', '-0.14159163911048', '+442076594500', NULL),
(78, 'london', 'London', 'Gordon\'s Wine Bar', '51.5079411426091', '-0.123381614685059', '+442079301408', NULL),
(79, 'london', 'London', 'Camden Market', '51.541502', '-0.14573', '+442037639999', NULL),
(80, 'london', 'London', 'Hawksmoor Seven Dials', '51.5134998914001', '-0.12567396291297', '+442074209390', NULL),
(81, 'Brazil', 'São Paulo', 'Ibirapuera Park', '-23.5882269907679', '-46.6603459137688', '+551155745505', NULL),
(82, 'Brazil', 'São Paulo', 'Municipal Market of São Paulo', '-23.5418189645286', '-46.6293849796057', '+551133133365', NULL),
(83, 'Brazil', 'São Paulo', 'D.O.M.', '-23.5663217605966', '-46.6674552441803', '+551130880761', NULL),
(84, 'Brazil', 'São Paulo', 'Coffee Lab', '-23.5562', '-46.69132', '+551133757400', NULL),
(85, 'Brazil', 'São Paulo', 'Mocotó Bar e Restaurante', '-23.486697', '-46.581646', '+551129513056', NULL),
(86, 'Brazil', 'São Paulo', 'Paulista Avenue', '-23.5630733', '-46.6543584', '', NULL),
(87, 'Brazil', 'São Paulo', 'Frida & Mina', '-23.563214', '-46.682516', '+551125791444', NULL),
(88, 'Brazil', 'São Paulo', 'Figueira Rubaiyat', '-23.5653914', '-46.6695667', '+551130871399', NULL),
(89, 'Brazil', 'São Paulo', 'Veloso Bar', '-23.5851519028138', '-46.63527331842', '+551155720254', NULL),
(90, 'Brazil', 'São Paulo', 'Frank Bar', '-23.5632866', '-46.6511293', '+551131458000', NULL),
(91, 'Brazil', 'São Paulo', 'MASP - São Paulo Museum of Art', '-23.561515', '-46.656008', '+551131495959', NULL),
(92, 'Brazil', 'São Paulo', 'King of the Fork', '-23.5640215', '-46.6837904', '+551125339391', NULL),
(93, 'Brazil', 'São Paulo', 'Bella Paulista', '-23.55613', '-46.660088', '+551132143347', NULL),
(94, 'Brazil', 'São Paulo', 'A Casa do Porco Bar', '-23.5449496425175', '-46.6447404564487', '+551132582578', NULL),
(95, 'Brazil', 'São Paulo', 'Centro Cultural Banco do Brasil', '-23.5473595', '-46.6346207', '+551131133651', NULL),
(96, 'Brazil', 'São Paulo', 'Beco do Batman', '-23.5566032', '-46.6861476', '', NULL),
(97, 'Brazil', 'São Paulo', 'Z Deli Sandwiches', '-23.562986', '-46.6671329094942', '+551130830021', NULL),
(98, 'Brazil', 'São Paulo', 'Skye Bar & Restaurante', '-23.58158', '-46.666748', '+551130554702', NULL),
(99, 'Brazil', 'São Paulo', 'Bacio di Latte', '-23.5677931', '-46.6635882', '+551136622573', NULL),
(100, 'Brazil', 'São Paulo', 'Pinacoteca do Estado', '-23.534274941553', '-46.6339467198519', '+551133241000', NULL),
(101, 'london', 'London', 'Dishoom', '51.512447030091', '-0.1269579217873', '+442074209320', NULL),
(102, 'london', 'London', 'The British Museum', '51.518298', '-0.126026', '+442073238299', NULL),
(103, 'london', 'London', 'The National Gallery', '51.508929', '-0.128302', '+4420077472885', NULL),
(104, 'london', 'London', 'Tower of London', '51.5083008269638', '-0.0760689389286426', '+442031666000', NULL),
(105, 'london', 'London', 'Dishoom', '51.5129919', '-0.1397337', '+442074209322', NULL),
(106, 'london', 'London', 'Coca Cola London Eye', '51.503364', '-0.11957', '', NULL),
(107, 'london', 'London', 'Big Ben', '51.5007803427897', '-0.124601009192702', '+442072194272', NULL),
(108, 'london', 'London', 'Hyde Park', '51.5039538036569', '-0.152711774741523', '+443000612114', NULL),
(109, 'london', 'London', 'Tate Modern', '51.5078610102146', '-0.0991344451904297', '+442078878888', NULL),
(110, 'london', 'London', 'Victoria and Albert Museum', '51.4963940559606', '-0.171935630295101', '+442079422000', NULL),
(111, 'london', 'London', 'Tower Bridge', '51.5054836850673', '-0.0754022598266602', '+442074033761', NULL),
(112, 'london', 'London', 'Dishoom', '51.5245310066818', '-0.076594190862934', '+442074209324', NULL),
(113, 'london', 'London', 'Regency Café', '51.4940143171', '-0.13222007974201', '+442078216596', NULL),
(114, 'london', 'London', 'Dishoom', '51.5363182978271', '-0.125145272091882', '+442074209321', NULL),
(115, 'london', 'London', 'Westminster Abbey', '51.4993203344498', '-0.127374497474177', '+442072225152', NULL),
(116, 'london', 'London', 'The Natural History Museum', '51.4961423561293', '-0.174409105353236', '+442079425000', NULL),
(117, 'london', 'London', 'Sketch', '51.5127614699071', '-0.14159163911048', '+442076594500', NULL),
(118, 'london', 'London', 'Gordon\'s Wine Bar', '51.5079411426091', '-0.123381614685059', '+442079301408', NULL),
(119, 'london', 'London', 'Camden Market', '51.541502', '-0.14573', '+442037639999', NULL),
(120, 'london', 'London', 'Hawksmoor Seven Dials', '51.5134998914001', '-0.12567396291297', '+442074209390', NULL),
(121, 'Brazil', 'São Paulo', 'Ibirapuera Park', '-23.5882269907679', '-46.6603459137688', '+551155745505', NULL),
(122, 'Brazil', 'São Paulo', 'Municipal Market of São Paulo', '-23.5418189645286', '-46.6293849796057', '+551133133365', NULL),
(123, 'Brazil', 'São Paulo', 'D.O.M.', '-23.5663217605966', '-46.6674552441803', '+551130880761', NULL),
(124, 'Brazil', 'São Paulo', 'Coffee Lab', '-23.5562', '-46.69132', '+551133757400', NULL),
(125, 'Brazil', 'São Paulo', 'Mocotó Bar e Restaurante', '-23.486697', '-46.581646', '+551129513056', NULL),
(126, 'Brazil', 'São Paulo', 'Paulista Avenue', '-23.5630733', '-46.6543584', '', NULL),
(127, 'Brazil', 'São Paulo', 'Frida & Mina', '-23.563214', '-46.682516', '+551125791444', NULL),
(128, 'Brazil', 'São Paulo', 'Figueira Rubaiyat', '-23.5653914', '-46.6695667', '+551130871399', NULL),
(129, 'Brazil', 'São Paulo', 'Veloso Bar', '-23.5851519028138', '-46.63527331842', '+551155720254', NULL),
(130, 'Brazil', 'São Paulo', 'Frank Bar', '-23.5632866', '-46.6511293', '+551131458000', NULL),
(131, 'Brazil', 'São Paulo', 'MASP - São Paulo Museum of Art', '-23.561515', '-46.656008', '+551131495959', NULL),
(132, 'Brazil', 'São Paulo', 'King of the Fork', '-23.5640215', '-46.6837904', '+551125339391', NULL),
(133, 'Brazil', 'São Paulo', 'Bella Paulista', '-23.55613', '-46.660088', '+551132143347', NULL),
(134, 'Brazil', 'São Paulo', 'A Casa do Porco Bar', '-23.5449496425175', '-46.6447404564487', '+551132582578', NULL),
(135, 'Brazil', 'São Paulo', 'Centro Cultural Banco do Brasil', '-23.5473595', '-46.6346207', '+551131133651', NULL),
(136, 'Brazil', 'São Paulo', 'Beco do Batman', '-23.5566032', '-46.6861476', '', NULL),
(137, 'Brazil', 'São Paulo', 'Z Deli Sandwiches', '-23.562986', '-46.6671329094942', '+551130830021', NULL),
(138, 'Brazil', 'São Paulo', 'Skye Bar & Restaurante', '-23.58158', '-46.666748', '+551130554702', NULL),
(139, 'Brazil', 'São Paulo', 'Bacio di Latte', '-23.5677931', '-46.6635882', '+551136622573', NULL),
(140, 'Brazil', 'São Paulo', 'Pinacoteca do Estado', '-23.534274941553', '-46.6339467198519', '+551133241000', NULL),
(141, 'Brazil', 'São Paulo', 'Ibirapuera Park', '-23.5882269907679', '-46.6603459137688', '+551155745505', NULL),
(142, 'Brazil', 'São Paulo', 'Municipal Market of São Paulo', '-23.5418189645286', '-46.6293849796057', '+551133133365', NULL),
(143, 'Brazil', 'São Paulo', 'D.O.M.', '-23.5663217605966', '-46.6674552441803', '+551130880761', NULL),
(144, 'Brazil', 'São Paulo', 'Coffee Lab', '-23.5562', '-46.69132', '+551133757400', NULL),
(145, 'Brazil', 'São Paulo', 'Mocotó Bar e Restaurante', '-23.486697', '-46.581646', '+551129513056', NULL),
(146, 'Brazil', 'São Paulo', 'Paulista Avenue', '-23.5630733', '-46.6543584', '', NULL),
(147, 'Brazil', 'São Paulo', 'Frida & Mina', '-23.563214', '-46.682516', '+551125791444', NULL),
(148, 'Brazil', 'São Paulo', 'Figueira Rubaiyat', '-23.5653914', '-46.6695667', '+551130871399', NULL),
(149, 'Brazil', 'São Paulo', 'Veloso Bar', '-23.5851519028138', '-46.63527331842', '+551155720254', NULL),
(150, 'Brazil', 'São Paulo', 'Frank Bar', '-23.5632866', '-46.6511293', '+551131458000', NULL),
(151, 'Brazil', 'São Paulo', 'MASP - São Paulo Museum of Art', '-23.561515', '-46.656008', '+551131495959', NULL),
(152, 'Brazil', 'São Paulo', 'King of the Fork', '-23.5640215', '-46.6837904', '+551125339391', NULL),
(153, 'Brazil', 'São Paulo', 'Bella Paulista', '-23.55613', '-46.660088', '+551132143347', NULL),
(154, 'Brazil', 'São Paulo', 'A Casa do Porco Bar', '-23.5449496425175', '-46.6447404564487', '+551132582578', NULL),
(155, 'Brazil', 'São Paulo', 'Centro Cultural Banco do Brasil', '-23.5473595', '-46.6346207', '+551131133651', NULL),
(156, 'Brazil', 'São Paulo', 'Beco do Batman', '-23.5566032', '-46.6861476', '', NULL),
(157, 'Brazil', 'São Paulo', 'Z Deli Sandwiches', '-23.562986', '-46.6671329094942', '+551130830021', NULL),
(158, 'Brazil', 'São Paulo', 'Skye Bar & Restaurante', '-23.58158', '-46.666748', '+551130554702', NULL),
(159, 'Brazil', 'São Paulo', 'Bacio di Latte', '-23.5677931', '-46.6635882', '+551136622573', NULL),
(160, 'Brazil', 'São Paulo', 'Pinacoteca do Estado', '-23.534274941553', '-46.6339467198519', '+551133241000', NULL),
(161, 'Austria', 'Vienna', 'Figlmüller', '48.209265260697', '16.3748370280422', '+4315126177', NULL),
(162, 'Austria', 'Vienna', 'Cafe Central', '48.2103618939097', '16.3654034261284', '+4315333763', NULL),
(163, 'Austria', 'Vienna', 'Eis-Greissler', '48.210578', '16.374913', '', NULL),
(164, 'Austria', 'Vienna', 'Stephansdom', '48.208788828476', '16.372702915776', '+4315137648', NULL),
(165, 'Austria', 'Vienna', 'Gmoa Keller', '48.200628', '16.37886', '+4317125310', NULL),
(166, 'Austria', 'Vienna', 'Steirereck', '48.2044781437765', '16.381318351337', '+4317133168', NULL),
(167, 'Austria', 'Vienna', 'Gasthaus Pöschl', '48.20668', '16.373851', '+4315135288', NULL),
(168, 'Austria', 'Vienna', 'Plachutta', '48.20755', '16.37867', '+4315121577', NULL),
(169, 'Austria', 'Vienna', 'Trzesniewski', '48.208017', '16.370197', '+4315123291', NULL),
(170, 'Austria', 'Vienna', 'Demel', '48.2086', '16.367215', '+43153517170', NULL),
(171, 'Austria', 'Vienna', 'Belvedere', '48.19126', '16.3798', '+431795570', NULL),
(172, 'Austria', 'Vienna', 'Schloss Schönbrunn', '48.1851487385143', '16.3123353904179', '+431811130', NULL),
(173, 'Austria', 'Vienna', 'Kunsthistorisches Museum', '48.2039120561157', '16.361407817614', '+431525240', NULL),
(174, 'Austria', 'Vienna', 'Prater', '48.216727', '16.398023', '+4317280516', NULL),
(175, 'Austria', 'Vienna', 'Phil', '48.20028', '16.36116', '+4315810489', NULL),
(176, 'Austria', 'Vienna', 'Zanoni & Zanoni', '48.20989', '16.3743899', '+4315127979', NULL),
(177, 'Austria', 'Vienna', 'Jonas Reindl Coffee', '48.21496', '16.36173', '', NULL),
(178, 'Austria', 'Vienna', 'Kolar', '48.21064', '16.36999', '+4315335225', NULL),
(179, 'Austria', 'Vienna', 'Motto am Fluss', '48.2120510520746', '16.3780843301925', '+4312525510', NULL),
(180, 'Austria', 'Vienna', 'Kaffee Alt Wien', '48.20915', '16.3761699', '+4315125222', NULL),
(181, 'Germany', 'Berlin', 'Brandenburg Gate', '52.516305', '13.377678', '', NULL),
(182, 'Germany', 'Berlin', 'Mustafas Gemüse Kebap', '52.493825', '13.387869', '', NULL),
(183, 'Germany', 'Berlin', 'Burgermeister', '52.5011', '13.442463', '+493023883840', NULL),
(184, 'Germany', 'Berlin', 'Rausch Schokoladenhaus', '52.51199', '13.3913499', '+4930757880', NULL),
(185, 'Germany', 'Berlin', 'Federal Diet', '52.5185658738212', '13.3759576107884', '+49302270', NULL),
(186, 'Germany', 'Berlin', 'German Museum of Technology', '52.4986556', '13.3768133', '+4930902540', NULL),
(187, 'Germany', 'Berlin', 'Gendarmenmarkt', '52.513643103492', '13.392638020576', '+493040004797', NULL),
(188, 'Germany', 'Berlin', 'Dolores', '52.523781', '13.409277', '+493028099597', NULL),
(189, 'Germany', 'Berlin', 'Monsieur Vuong', '52.526669', '13.407931', '+493099296924', NULL),
(190, 'Germany', 'Berlin', 'BBI Berlinburger International', '52.48652', '13.43096', '+491604826505', NULL),
(191, 'Germany', 'Berlin', 'Berlin Victory Column', '52.5144972027476', '13.3500838279724', '+49303339509', NULL),
(192, 'Germany', 'Berlin', 'Memorial to the Murdered Jews of Europe', '52.5138909304677', '13.378671211581', '+49302639430', NULL),
(193, 'Germany', 'Berlin', 'Tempelhofer Feld', '52.4757443343279', '13.4018100874023', '', NULL),
(194, 'Germany', 'Berlin', 'Cocolo Ramen', '52.52718', '13.39934', '+493098339073', NULL),
(195, 'Germany', 'Berlin', '1900 Café', '52.50395', '13.32246', '+493088715871', NULL),
(196, 'Germany', 'Berlin', 'Yarok', '52.5283244', '13.3920916', '+493095628703', NULL),
(197, 'Germany', 'Berlin', 'Rembrandt-Burger', '52.52002', '13.44783', '+493089997296', NULL),
(198, 'Germany', 'Berlin', 'The Bird', '52.54674', '13.40575', '+493051053283', NULL),
(199, 'Germany', 'Berlin', 'Berlin Television Tower', '52.520815', '13.409419', '+4930247575875', NULL),
(200, 'Germany', 'Berlin', 'East Side Gallery', '52.505027', '13.439692', '+491723918726', NULL),
(201, 'Malaysia', 'Kuala Lumpur', 'Petronas Twin Towers', '3.1578', '101.711958', '+60323318080', NULL),
(202, 'Malaysia', 'Kuala Lumpur', 'VCR', '3.1432699', '101.70544', '+60321102330', NULL),
(203, 'Malaysia', 'Kuala Lumpur', 'Jalan Alor', '3.14501', '101.70808', '', NULL),
(204, 'Malaysia', 'Kuala Lumpur', 'Restoran Kin Kin', '3.16161', '101.70016', '+60163728069', NULL),
(205, 'Malaysia', 'Kuala Lumpur', 'Din Tai Fung', '3.149356', '101.712717', '+60321488292', NULL),
(206, 'Malaysia', 'Kuala Lumpur', 'Inside Scoop', '3.13247', '101.67091', '', NULL),
(207, 'Malaysia', 'Kuala Lumpur', 'Marini\'s on 57', '3.15661263795547', '101.711443863338', '+60323866030', NULL),
(208, 'Malaysia', 'Kuala Lumpur', 'Opium', '3.14744187614102', '101.708302362254', '+60321425670', NULL),
(209, 'Malaysia', 'Kuala Lumpur', 'Feeka Coffee Roasters', '3.14859', '101.70835', '+60321104599', NULL),
(210, 'Malaysia', 'Kuala Lumpur', 'Lot 10 Hutong', '3.14350952222992', '101.712486387743', '+60327823500', NULL),
(211, 'Malaysia', 'Kuala Lumpur', 'Pulp', '3.12422869813076', '101.674303433426', '+60322013650', NULL),
(212, 'Malaysia', 'Kuala Lumpur', 'Devi\'s Corner', '3.131416', '101.67162', '+60322827591', NULL),
(213, 'Malaysia', 'Kuala Lumpur', 'Perdana Botanical Garden', '3.144827', '101.684771', '+60326176404', NULL),
(214, 'Malaysia', 'Kuala Lumpur', 'TG\'s Nasi Kandar', '3.14543216418666', '101.707010290559', '+60321101221', NULL),
(215, 'Malaysia', 'Kuala Lumpur', 'KL Bird Park', '3.143099', '101.688734', '+60322721010', NULL),
(216, 'Malaysia', 'Kuala Lumpur', 'Sri Nirvana Maju', '3.1310101', '101.6708679', '+60322878445', NULL),
(217, 'Malaysia', 'Kuala Lumpur', 'KLCC Park', '3.15528825746079', '101.714752531491', '+60323809032', NULL),
(218, 'Malaysia', 'Kuala Lumpur', 'Fuego', '3.1580116', '101.7180583', '+60321620886', NULL),
(219, 'Malaysia', 'Kuala Lumpur', 'PS150', '3.1409507', '101.698111', '+60320222888', NULL),
(220, 'Malaysia', 'Kuala Lumpur', 'Taps Beer Bar', '3.14917723188712', '101.709046095109', '+60321101560', NULL),
(221, 'Malaysia', 'Kuala Lumpur', 'Petronas Twin Towers', '3.1578', '101.711958', '+60323318080', NULL),
(222, 'Malaysia', 'Kuala Lumpur', 'VCR', '3.1432699', '101.70544', '+60321102330', NULL),
(223, 'Malaysia', 'Kuala Lumpur', 'Jalan Alor', '3.14501', '101.70808', '', NULL),
(224, 'Malaysia', 'Kuala Lumpur', 'Restoran Kin Kin', '3.16161', '101.70016', '+60163728069', NULL),
(225, 'Malaysia', 'Kuala Lumpur', 'Din Tai Fung', '3.149356', '101.712717', '+60321488292', NULL),
(226, 'Malaysia', 'Kuala Lumpur', 'Inside Scoop', '3.13247', '101.67091', '', NULL),
(227, 'Malaysia', 'Kuala Lumpur', 'Marini\'s on 57', '3.15661263795547', '101.711443863338', '+60323866030', NULL),
(228, 'Malaysia', 'Kuala Lumpur', 'Opium', '3.14744187614102', '101.708302362254', '+60321425670', NULL),
(229, 'Malaysia', 'Kuala Lumpur', 'Feeka Coffee Roasters', '3.14859', '101.70835', '+60321104599', NULL),
(230, 'Malaysia', 'Kuala Lumpur', 'Lot 10 Hutong', '3.14350952222992', '101.712486387743', '+60327823500', NULL),
(231, 'Malaysia', 'Kuala Lumpur', 'Pulp', '3.12422869813076', '101.674303433426', '+60322013650', NULL),
(232, 'Malaysia', 'Kuala Lumpur', 'Devi\'s Corner', '3.131416', '101.67162', '+60322827591', NULL),
(233, 'Malaysia', 'Kuala Lumpur', 'Perdana Botanical Garden', '3.144827', '101.684771', '+60326176404', NULL),
(234, 'Malaysia', 'Kuala Lumpur', 'TG\'s Nasi Kandar', '3.14543216418666', '101.707010290559', '+60321101221', NULL),
(235, 'Malaysia', 'Kuala Lumpur', 'KL Bird Park', '3.143099', '101.688734', '+60322721010', NULL),
(236, 'Malaysia', 'Kuala Lumpur', 'Sri Nirvana Maju', '3.1310101', '101.6708679', '+60322878445', NULL),
(237, 'Malaysia', 'Kuala Lumpur', 'KLCC Park', '3.15528825746079', '101.714752531491', '+60323809032', NULL),
(238, 'Malaysia', 'Kuala Lumpur', 'Fuego', '3.1580116', '101.7180583', '+60321620886', NULL),
(239, 'Malaysia', 'Kuala Lumpur', 'PS150', '3.1409507', '101.698111', '+60320222888', NULL),
(240, 'Malaysia', 'Kuala Lumpur', 'Taps Beer Bar', '3.14917723188712', '101.709046095109', '+60321101560', NULL),
(241, 'Malaysia', 'Kuala Lumpur', 'Petronas Twin Towers', '3.1578', '101.711958', '+60323318080', NULL),
(242, 'Malaysia', 'Kuala Lumpur', 'VCR', '3.1432699', '101.70544', '+60321102330', NULL),
(243, 'Malaysia', 'Kuala Lumpur', 'Jalan Alor', '3.14501', '101.70808', '', NULL),
(244, 'Malaysia', 'Kuala Lumpur', 'Restoran Kin Kin', '3.16161', '101.70016', '+60163728069', NULL),
(245, 'Malaysia', 'Kuala Lumpur', 'Din Tai Fung', '3.149356', '101.712717', '+60321488292', NULL),
(246, 'Malaysia', 'Kuala Lumpur', 'Inside Scoop', '3.13247', '101.67091', '', NULL),
(247, 'Malaysia', 'Kuala Lumpur', 'Marini\'s on 57', '3.15661263795547', '101.711443863338', '+60323866030', NULL),
(248, 'Malaysia', 'Kuala Lumpur', 'Opium', '3.14744187614102', '101.708302362254', '+60321425670', NULL),
(249, 'Malaysia', 'Kuala Lumpur', 'Feeka Coffee Roasters', '3.14859', '101.70835', '+60321104599', NULL),
(250, 'Malaysia', 'Kuala Lumpur', 'Lot 10 Hutong', '3.14350952222992', '101.712486387743', '+60327823500', NULL),
(251, 'Malaysia', 'Kuala Lumpur', 'Pulp', '3.12422869813076', '101.674303433426', '+60322013650', NULL),
(252, 'Malaysia', 'Kuala Lumpur', 'Devi\'s Corner', '3.131416', '101.67162', '+60322827591', NULL),
(253, 'Malaysia', 'Kuala Lumpur', 'Perdana Botanical Garden', '3.144827', '101.684771', '+60326176404', NULL),
(254, 'Malaysia', 'Kuala Lumpur', 'TG\'s Nasi Kandar', '3.14543216418666', '101.707010290559', '+60321101221', NULL),
(255, 'Malaysia', 'Kuala Lumpur', 'KL Bird Park', '3.143099', '101.688734', '+60322721010', NULL),
(256, 'Malaysia', 'Kuala Lumpur', 'Sri Nirvana Maju', '3.1310101', '101.6708679', '+60322878445', NULL),
(257, 'Malaysia', 'Kuala Lumpur', 'KLCC Park', '3.15528825746079', '101.714752531491', '+60323809032', NULL),
(258, 'Malaysia', 'Kuala Lumpur', 'Fuego', '3.1580116', '101.7180583', '+60321620886', NULL),
(259, 'Malaysia', 'Kuala Lumpur', 'PS150', '3.1409507', '101.698111', '+60320222888', NULL),
(260, 'Malaysia', 'Kuala Lumpur', 'Taps Beer Bar', '3.14917723188712', '101.709046095109', '+60321101560', NULL),
(261, 'Malaysia', 'Kuala Lumpur', 'Petronas Twin Towers', '3.1578', '101.711958', '+60323318080', NULL),
(262, 'Malaysia', 'Kuala Lumpur', 'VCR', '3.1432699', '101.70544', '+60321102330', NULL),
(263, 'Malaysia', 'Kuala Lumpur', 'Jalan Alor', '3.14501', '101.70808', '', NULL),
(264, 'Malaysia', 'Kuala Lumpur', 'Restoran Kin Kin', '3.16161', '101.70016', '+60163728069', NULL),
(265, 'Malaysia', 'Kuala Lumpur', 'Din Tai Fung', '3.149356', '101.712717', '+60321488292', NULL),
(266, 'Malaysia', 'Kuala Lumpur', 'Inside Scoop', '3.13247', '101.67091', '', NULL),
(267, 'Malaysia', 'Kuala Lumpur', 'Marini\'s on 57', '3.15661263795547', '101.711443863338', '+60323866030', NULL),
(268, 'Malaysia', 'Kuala Lumpur', 'Opium', '3.14744187614102', '101.708302362254', '+60321425670', NULL),
(269, 'Malaysia', 'Kuala Lumpur', 'Feeka Coffee Roasters', '3.14859', '101.70835', '+60321104599', NULL),
(270, 'Malaysia', 'Kuala Lumpur', 'Lot 10 Hutong', '3.14350952222992', '101.712486387743', '+60327823500', NULL),
(271, 'Malaysia', 'Kuala Lumpur', 'Pulp', '3.12422869813076', '101.674303433426', '+60322013650', NULL),
(272, 'Malaysia', 'Kuala Lumpur', 'Devi\'s Corner', '3.131416', '101.67162', '+60322827591', NULL),
(273, 'Malaysia', 'Kuala Lumpur', 'Perdana Botanical Garden', '3.144827', '101.684771', '+60326176404', NULL),
(274, 'Malaysia', 'Kuala Lumpur', 'TG\'s Nasi Kandar', '3.14543216418666', '101.707010290559', '+60321101221', NULL),
(275, 'Malaysia', 'Kuala Lumpur', 'KL Bird Park', '3.143099', '101.688734', '+60322721010', NULL),
(276, 'Malaysia', 'Kuala Lumpur', 'Sri Nirvana Maju', '3.1310101', '101.6708679', '+60322878445', NULL),
(277, 'Malaysia', 'Kuala Lumpur', 'KLCC Park', '3.15528825746079', '101.714752531491', '+60323809032', NULL),
(278, 'Malaysia', 'Kuala Lumpur', 'Fuego', '3.1580116', '101.7180583', '+60321620886', NULL),
(279, 'Malaysia', 'Kuala Lumpur', 'PS150', '3.1409507', '101.698111', '+60320222888', NULL),
(280, 'Malaysia', 'Kuala Lumpur', 'Taps Beer Bar', '3.14917723188712', '101.709046095109', '+60321101560', NULL),
(281, 'Brazil', 'São Paulo', 'Ibirapuera Park', '-23.5882269907679', '-46.6603459137688', '+551155745505', NULL),
(282, 'Brazil', 'São Paulo', 'Municipal Market of São Paulo', '-23.5418189645286', '-46.6293849796057', '+551133133365', NULL),
(283, 'Brazil', 'São Paulo', 'D.O.M.', '-23.5663217605966', '-46.6674552441803', '+551130880761', NULL),
(284, 'Brazil', 'São Paulo', 'Coffee Lab', '-23.5562', '-46.69132', '+551133757400', NULL),
(285, 'Brazil', 'São Paulo', 'Mocotó Bar e Restaurante', '-23.486697', '-46.581646', '+551129513056', NULL),
(286, 'Brazil', 'São Paulo', 'Paulista Avenue', '-23.5630733', '-46.6543584', '', NULL),
(287, 'Brazil', 'São Paulo', 'Frida & Mina', '-23.563214', '-46.682516', '+551125791444', NULL),
(288, 'Brazil', 'São Paulo', 'Figueira Rubaiyat', '-23.5653914', '-46.6695667', '+551130871399', NULL),
(289, 'Brazil', 'São Paulo', 'Veloso Bar', '-23.5851519028138', '-46.63527331842', '+551155720254', NULL),
(290, 'Brazil', 'São Paulo', 'Frank Bar', '-23.5632866', '-46.6511293', '+551131458000', NULL),
(291, 'Brazil', 'São Paulo', 'MASP - São Paulo Museum of Art', '-23.561515', '-46.656008', '+551131495959', NULL),
(292, 'Brazil', 'São Paulo', 'King of the Fork', '-23.5640215', '-46.6837904', '+551125339391', NULL),
(293, 'Brazil', 'São Paulo', 'Bella Paulista', '-23.55613', '-46.660088', '+551132143347', NULL),
(294, 'Brazil', 'São Paulo', 'A Casa do Porco Bar', '-23.5449496425175', '-46.6447404564487', '+551132582578', NULL),
(295, 'Brazil', 'São Paulo', 'Centro Cultural Banco do Brasil', '-23.5473595', '-46.6346207', '+551131133651', NULL),
(296, 'Brazil', 'São Paulo', 'Beco do Batman', '-23.5566032', '-46.6861476', '', NULL),
(297, 'Brazil', 'São Paulo', 'Z Deli Sandwiches', '-23.562986', '-46.6671329094942', '+551130830021', NULL),
(298, 'Brazil', 'São Paulo', 'Skye Bar & Restaurante', '-23.58158', '-46.666748', '+551130554702', NULL),
(299, 'Brazil', 'São Paulo', 'Bacio di Latte', '-23.5677931', '-46.6635882', '+551136622573', NULL),
(300, 'Brazil', 'São Paulo', 'Pinacoteca do Estado', '-23.534274941553', '-46.6339467198519', '+551133241000', NULL),
(301, 'Brazil', 'São Paulo', 'Ibirapuera Park', '-23.5882269907679', '-46.6603459137688', '+551155745505', NULL),
(302, 'Brazil', 'São Paulo', 'Municipal Market of São Paulo', '-23.5418189645286', '-46.6293849796057', '+551133133365', NULL),
(303, 'Brazil', 'São Paulo', 'D.O.M.', '-23.5663217605966', '-46.6674552441803', '+551130880761', NULL),
(304, 'Brazil', 'São Paulo', 'Coffee Lab', '-23.5562', '-46.69132', '+551133757400', NULL),
(305, 'Brazil', 'São Paulo', 'Mocotó Bar e Restaurante', '-23.486697', '-46.581646', '+551129513056', NULL),
(306, 'Brazil', 'São Paulo', 'Paulista Avenue', '-23.5630733', '-46.6543584', '', NULL),
(307, 'Brazil', 'São Paulo', 'Frida & Mina', '-23.563214', '-46.682516', '+551125791444', NULL),
(308, 'Brazil', 'São Paulo', 'Figueira Rubaiyat', '-23.5653914', '-46.6695667', '+551130871399', NULL),
(309, 'Brazil', 'São Paulo', 'Veloso Bar', '-23.5851519028138', '-46.63527331842', '+551155720254', NULL),
(310, 'Brazil', 'São Paulo', 'Frank Bar', '-23.5632866', '-46.6511293', '+551131458000', NULL),
(311, 'Brazil', 'São Paulo', 'MASP - São Paulo Museum of Art', '-23.561515', '-46.656008', '+551131495959', NULL),
(312, 'Brazil', 'São Paulo', 'King of the Fork', '-23.5640215', '-46.6837904', '+551125339391', NULL),
(313, 'Brazil', 'São Paulo', 'Bella Paulista', '-23.55613', '-46.660088', '+551132143347', NULL),
(314, 'Brazil', 'São Paulo', 'A Casa do Porco Bar', '-23.5449496425175', '-46.6447404564487', '+551132582578', NULL),
(315, 'Brazil', 'São Paulo', 'Centro Cultural Banco do Brasil', '-23.5473595', '-46.6346207', '+551131133651', NULL),
(316, 'Brazil', 'São Paulo', 'Beco do Batman', '-23.5566032', '-46.6861476', '', NULL),
(317, 'Brazil', 'São Paulo', 'Z Deli Sandwiches', '-23.562986', '-46.6671329094942', '+551130830021', NULL),
(318, 'Brazil', 'São Paulo', 'Skye Bar & Restaurante', '-23.58158', '-46.666748', '+551130554702', NULL),
(319, 'Brazil', 'São Paulo', 'Bacio di Latte', '-23.5677931', '-46.6635882', '+551136622573', NULL),
(320, 'Brazil', 'São Paulo', 'Pinacoteca do Estado', '-23.534274941553', '-46.6339467198519', '+551133241000', NULL),
(321, 'Brazil', 'São Paulo', 'Ibirapuera Park', '-23.5882269907679', '-46.6603459137688', '+551155745505', NULL),
(322, 'Brazil', 'São Paulo', 'Municipal Market of São Paulo', '-23.5418189645286', '-46.6293849796057', '+551133133365', NULL),
(323, 'Brazil', 'São Paulo', 'D.O.M.', '-23.5663217605966', '-46.6674552441803', '+551130880761', NULL),
(324, 'Brazil', 'São Paulo', 'Coffee Lab', '-23.5562', '-46.69132', '+551133757400', NULL),
(325, 'Brazil', 'São Paulo', 'Mocotó Bar e Restaurante', '-23.486697', '-46.581646', '+551129513056', NULL),
(326, 'Brazil', 'São Paulo', 'Paulista Avenue', '-23.5630733', '-46.6543584', '', NULL),
(327, 'Brazil', 'São Paulo', 'Frida & Mina', '-23.563214', '-46.682516', '+551125791444', NULL),
(328, 'Brazil', 'São Paulo', 'Figueira Rubaiyat', '-23.5653914', '-46.6695667', '+551130871399', NULL),
(329, 'Brazil', 'São Paulo', 'Veloso Bar', '-23.5851519028138', '-46.63527331842', '+551155720254', NULL),
(330, 'Brazil', 'São Paulo', 'Frank Bar', '-23.5632866', '-46.6511293', '+551131458000', NULL),
(331, 'Brazil', 'São Paulo', 'MASP - São Paulo Museum of Art', '-23.561515', '-46.656008', '+551131495959', NULL),
(332, 'Brazil', 'São Paulo', 'King of the Fork', '-23.5640215', '-46.6837904', '+551125339391', NULL),
(333, 'Brazil', 'São Paulo', 'Bella Paulista', '-23.55613', '-46.660088', '+551132143347', NULL),
(334, 'Brazil', 'São Paulo', 'A Casa do Porco Bar', '-23.5449496425175', '-46.6447404564487', '+551132582578', NULL),
(335, 'Brazil', 'São Paulo', 'Centro Cultural Banco do Brasil', '-23.5473595', '-46.6346207', '+551131133651', NULL),
(336, 'Brazil', 'São Paulo', 'Beco do Batman', '-23.5566032', '-46.6861476', '', NULL),
(337, 'Brazil', 'São Paulo', 'Z Deli Sandwiches', '-23.562986', '-46.6671329094942', '+551130830021', NULL),
(338, 'Brazil', 'São Paulo', 'Skye Bar & Restaurante', '-23.58158', '-46.666748', '+551130554702', NULL),
(339, 'Brazil', 'São Paulo', 'Bacio di Latte', '-23.5677931', '-46.6635882', '+551136622573', NULL),
(340, 'Brazil', 'São Paulo', 'Pinacoteca do Estado', '-23.534274941553', '-46.6339467198519', '+551133241000', NULL),
(341, 'Brazil', 'São Paulo', 'Ibirapuera Park', '-23.5882269907679', '-46.6603459137688', '+551155745505', NULL),
(342, 'Brazil', 'São Paulo', 'Municipal Market of São Paulo', '-23.5418189645286', '-46.6293849796057', '+551133133365', NULL),
(343, 'Brazil', 'São Paulo', 'D.O.M.', '-23.5663217605966', '-46.6674552441803', '+551130880761', NULL),
(344, 'Brazil', 'São Paulo', 'Coffee Lab', '-23.5562', '-46.69132', '+551133757400', NULL),
(345, 'Brazil', 'São Paulo', 'Mocotó Bar e Restaurante', '-23.486697', '-46.581646', '+551129513056', NULL),
(346, 'Brazil', 'São Paulo', 'Paulista Avenue', '-23.5630733', '-46.6543584', '', NULL),
(347, 'Brazil', 'São Paulo', 'Frida & Mina', '-23.563214', '-46.682516', '+551125791444', NULL),
(348, 'Brazil', 'São Paulo', 'Figueira Rubaiyat', '-23.5653914', '-46.6695667', '+551130871399', NULL),
(349, 'Brazil', 'São Paulo', 'Veloso Bar', '-23.5851519028138', '-46.63527331842', '+551155720254', NULL),
(350, 'Brazil', 'São Paulo', 'Frank Bar', '-23.5632866', '-46.6511293', '+551131458000', NULL),
(351, 'Brazil', 'São Paulo', 'MASP - São Paulo Museum of Art', '-23.561515', '-46.656008', '+551131495959', NULL),
(352, 'Brazil', 'São Paulo', 'King of the Fork', '-23.5640215', '-46.6837904', '+551125339391', NULL),
(353, 'Brazil', 'São Paulo', 'Bella Paulista', '-23.55613', '-46.660088', '+551132143347', NULL),
(354, 'Brazil', 'São Paulo', 'A Casa do Porco Bar', '-23.5449496425175', '-46.6447404564487', '+551132582578', NULL),
(355, 'Brazil', 'São Paulo', 'Centro Cultural Banco do Brasil', '-23.5473595', '-46.6346207', '+551131133651', NULL),
(356, 'Brazil', 'São Paulo', 'Beco do Batman', '-23.5566032', '-46.6861476', '', NULL),
(357, 'Brazil', 'São Paulo', 'Z Deli Sandwiches', '-23.562986', '-46.6671329094942', '+551130830021', NULL),
(358, 'Brazil', 'São Paulo', 'Skye Bar & Restaurante', '-23.58158', '-46.666748', '+551130554702', NULL),
(359, 'Brazil', 'São Paulo', 'Bacio di Latte', '-23.5677931', '-46.6635882', '+551136622573', NULL),
(360, 'Brazil', 'São Paulo', 'Pinacoteca do Estado', '-23.534274941553', '-46.6339467198519', '+551133241000', NULL),
(361, 'Brazil', 'São Paulo', 'Ibirapuera Park', '-23.5882269907679', '-46.6603459137688', '+551155745505', NULL),
(362, 'Brazil', 'São Paulo', 'Municipal Market of São Paulo', '-23.5418189645286', '-46.6293849796057', '+551133133365', NULL),
(363, 'Brazil', 'São Paulo', 'D.O.M.', '-23.5663217605966', '-46.6674552441803', '+551130880761', NULL),
(364, 'Brazil', 'São Paulo', 'Coffee Lab', '-23.5562', '-46.69132', '+551133757400', NULL),
(365, 'Brazil', 'São Paulo', 'Mocotó Bar e Restaurante', '-23.486697', '-46.581646', '+551129513056', NULL),
(366, 'Brazil', 'São Paulo', 'Paulista Avenue', '-23.5630733', '-46.6543584', '', NULL),
(367, 'Brazil', 'São Paulo', 'Frida & Mina', '-23.563214', '-46.682516', '+551125791444', NULL),
(368, 'Brazil', 'São Paulo', 'Figueira Rubaiyat', '-23.5653914', '-46.6695667', '+551130871399', NULL),
(369, 'Brazil', 'São Paulo', 'Veloso Bar', '-23.5851519028138', '-46.63527331842', '+551155720254', NULL),
(370, 'Brazil', 'São Paulo', 'Frank Bar', '-23.5632866', '-46.6511293', '+551131458000', NULL),
(371, 'Brazil', 'São Paulo', 'MASP - São Paulo Museum of Art', '-23.561515', '-46.656008', '+551131495959', NULL),
(372, 'Brazil', 'São Paulo', 'King of the Fork', '-23.5640215', '-46.6837904', '+551125339391', NULL),
(373, 'Brazil', 'São Paulo', 'Bella Paulista', '-23.55613', '-46.660088', '+551132143347', NULL),
(374, 'Brazil', 'São Paulo', 'A Casa do Porco Bar', '-23.5449496425175', '-46.6447404564487', '+551132582578', NULL),
(375, 'Brazil', 'São Paulo', 'Centro Cultural Banco do Brasil', '-23.5473595', '-46.6346207', '+551131133651', NULL),
(376, 'Brazil', 'São Paulo', 'Beco do Batman', '-23.5566032', '-46.6861476', '', NULL),
(377, 'Brazil', 'São Paulo', 'Z Deli Sandwiches', '-23.562986', '-46.6671329094942', '+551130830021', NULL),
(378, 'Brazil', 'São Paulo', 'Skye Bar & Restaurante', '-23.58158', '-46.666748', '+551130554702', NULL),
(379, 'Brazil', 'São Paulo', 'Bacio di Latte', '-23.5677931', '-46.6635882', '+551136622573', NULL),
(380, 'Brazil', 'São Paulo', 'Pinacoteca do Estado', '-23.534274941553', '-46.6339467198519', '+551133241000', NULL),
(381, 'Brazil', 'São Paulo', 'Ibirapuera Park', '-23.5882269907679', '-46.6603459137688', '+551155745505', NULL),
(382, 'Brazil', 'São Paulo', 'Municipal Market of São Paulo', '-23.5418189645286', '-46.6293849796057', '+551133133365', NULL),
(383, 'Brazil', 'São Paulo', 'D.O.M.', '-23.5663217605966', '-46.6674552441803', '+551130880761', NULL),
(384, 'Brazil', 'São Paulo', 'Coffee Lab', '-23.5562', '-46.69132', '+551133757400', NULL),
(385, 'Brazil', 'São Paulo', 'Mocotó Bar e Restaurante', '-23.486697', '-46.581646', '+551129513056', NULL),
(386, 'Brazil', 'São Paulo', 'Paulista Avenue', '-23.5630733', '-46.6543584', '', NULL),
(387, 'Brazil', 'São Paulo', 'Frida & Mina', '-23.563214', '-46.682516', '+551125791444', NULL),
(388, 'Brazil', 'São Paulo', 'Figueira Rubaiyat', '-23.5653914', '-46.6695667', '+551130871399', NULL),
(389, 'Brazil', 'São Paulo', 'Veloso Bar', '-23.5851519028138', '-46.63527331842', '+551155720254', NULL),
(390, 'Brazil', 'São Paulo', 'Frank Bar', '-23.5632866', '-46.6511293', '+551131458000', NULL),
(391, 'Brazil', 'São Paulo', 'MASP - São Paulo Museum of Art', '-23.561515', '-46.656008', '+551131495959', NULL),
(392, 'Brazil', 'São Paulo', 'King of the Fork', '-23.5640215', '-46.6837904', '+551125339391', NULL),
(393, 'Brazil', 'São Paulo', 'Bella Paulista', '-23.55613', '-46.660088', '+551132143347', NULL),
(394, 'Brazil', 'São Paulo', 'A Casa do Porco Bar', '-23.5449496425175', '-46.6447404564487', '+551132582578', NULL),
(395, 'Brazil', 'São Paulo', 'Centro Cultural Banco do Brasil', '-23.5473595', '-46.6346207', '+551131133651', NULL),
(396, 'Brazil', 'São Paulo', 'Beco do Batman', '-23.5566032', '-46.6861476', '', NULL),
(397, 'Brazil', 'São Paulo', 'Z Deli Sandwiches', '-23.562986', '-46.6671329094942', '+551130830021', NULL),
(398, 'Brazil', 'São Paulo', 'Skye Bar & Restaurante', '-23.58158', '-46.666748', '+551130554702', NULL),
(399, 'Brazil', 'São Paulo', 'Bacio di Latte', '-23.5677931', '-46.6635882', '+551136622573', NULL),
(400, 'Brazil', 'São Paulo', 'Pinacoteca do Estado', '-23.534274941553', '-46.6339467198519', '+551133241000', NULL),
(401, 'Brazil', '04094-050', 'Ibirapuera Park', '-23.5882269907679', '-46.6603459137688', '+551155745505', NULL),
(402, 'Brazil', '01103-200', 'Municipal Market of São Paulo', '-23.5418189645286', '-46.6293849796057', '+551133133365', NULL),
(403, 'Brazil', '01411-011', 'D.O.M.', '-23.5663217605966', '-46.6674552441803', '+551130880761', NULL),
(404, 'Brazil', '05416-001', 'Coffee Lab', '-23.5562', '-46.69132', '+551133757400', NULL),
(405, 'Brazil', '02219-001', 'Mocotó Bar e Restaurante', '-23.486697', '-46.581646', '+551129513056', NULL),
(406, 'Brazil', '01311-200', 'Paulista Avenue', '-23.5630733', '-46.6543584', '', NULL),
(407, 'Brazil', '05404-000', 'Frida & Mina', '-23.563214', '-46.682516', '+551125791444', NULL),
(408, 'Brazil', '01414-002', 'Figueira Rubaiyat', '-23.5653914', '-46.6695667', '+551130871399', NULL),
(409, 'Brazil', '04110-120', 'Veloso Bar', '-23.5851519028138', '-46.63527331842', '+551155720254', NULL),
(410, 'Brazil', '01333-000', 'Frank Bar', '-23.5632866', '-46.6511293', '+551131458000', NULL),
(411, 'Brazil', '01310-000', 'MASP - São Paulo Museum of Art', '-23.561515', '-46.656008', '+551131495959', NULL),
(412, 'Brazil', '05404-013', 'King of the Fork', '-23.5640215', '-46.6837904', '+551125339391', NULL),
(413, 'Brazil', '01414-000', 'Bella Paulista', '-23.55613', '-46.660088', '+551132143347', NULL),
(414, 'Brazil', '01220-020', 'A Casa do Porco Bar', '-23.5449496425175', '-46.6447404564487', '+551132582578', NULL),
(415, 'Brazil', '01012-000', 'Centro Cultural Banco do Brasil', '-23.5473595', '-46.6346207', '+551131133651', NULL),
(416, 'Brazil', '05436-100', 'Beco do Batman', '-23.5566032', '-46.6861476', '', NULL),
(417, 'Brazil', '01414-000', 'Z Deli Sandwiches', '-23.562986', '-46.6671329094942', '+551130830021', NULL),
(418, 'Brazil', '01402-002', 'Skye Bar & Restaurante', '-23.58158', '-46.666748', '+551130554702', NULL),
(419, 'Brazil', '01426-000', 'Bacio di Latte', '-23.5677931', '-46.6635882', '+551136622573', NULL),
(420, 'Brazil', '01120-010', 'Pinacoteca do Estado', '-23.534274941553', '-46.6339467198519', '+551133241000', NULL),
(421, 'Brazil', '04094-050', 'Ibirapuera Park', '-23.5882269907679', '-46.6603459137688', '+551155745505', NULL),
(422, 'Brazil', '01103-200', 'Municipal Market of São Paulo', '-23.5418189645286', '-46.6293849796057', '+551133133365', NULL),
(423, 'Brazil', '01411-011', 'D.O.M.', '-23.5663217605966', '-46.6674552441803', '+551130880761', NULL),
(424, 'Brazil', '05416-001', 'Coffee Lab', '-23.5562', '-46.69132', '+551133757400', NULL),
(425, 'Brazil', '02219-001', 'Mocotó Bar e Restaurante', '-23.486697', '-46.581646', '+551129513056', NULL),
(426, 'Brazil', '01311-200', 'Paulista Avenue', '-23.5630733', '-46.6543584', '', NULL),
(427, 'Brazil', '05404-000', 'Frida & Mina', '-23.563214', '-46.682516', '+551125791444', NULL),
(428, 'Brazil', '01414-002', 'Figueira Rubaiyat', '-23.5653914', '-46.6695667', '+551130871399', NULL),
(429, 'Brazil', '04110-120', 'Veloso Bar', '-23.5851519028138', '-46.63527331842', '+551155720254', NULL),
(430, 'Brazil', '01333-000', 'Frank Bar', '-23.5632866', '-46.6511293', '+551131458000', NULL),
(431, 'Brazil', '01310-000', 'MASP - São Paulo Museum of Art', '-23.561515', '-46.656008', '+551131495959', NULL),
(432, 'Brazil', '05404-013', 'King of the Fork', '-23.5640215', '-46.6837904', '+551125339391', NULL),
(433, 'Brazil', '01414-000', 'Bella Paulista', '-23.55613', '-46.660088', '+551132143347', NULL),
(434, 'Brazil', '01220-020', 'A Casa do Porco Bar', '-23.5449496425175', '-46.6447404564487', '+551132582578', NULL),
(435, 'Brazil', '01012-000', 'Centro Cultural Banco do Brasil', '-23.5473595', '-46.6346207', '+551131133651', NULL),
(436, 'Brazil', '05436-100', 'Beco do Batman', '-23.5566032', '-46.6861476', '', NULL),
(437, 'Brazil', '01414-000', 'Z Deli Sandwiches', '-23.562986', '-46.6671329094942', '+551130830021', NULL),
(438, 'Brazil', '01402-002', 'Skye Bar & Restaurante', '-23.58158', '-46.666748', '+551130554702', NULL),
(439, 'Brazil', '01426-000', 'Bacio di Latte', '-23.5677931', '-46.6635882', '+551136622573', NULL),
(440, 'Brazil', '01120-010', 'Pinacoteca do Estado', '-23.534274941553', '-46.6339467198519', '+551133241000', NULL),
(441, 'Brazil', '04094-050', 'Ibirapuera Park', '-23.5882269907679', '-46.6603459137688', '+551155745505', NULL),
(442, 'Brazil', '01103-200', 'Municipal Market of São Paulo', '-23.5418189645286', '-46.6293849796057', '+551133133365', NULL),
(443, 'Brazil', '01411-011', 'D.O.M.', '-23.5663217605966', '-46.6674552441803', '+551130880761', NULL),
(444, 'Brazil', '05416-001', 'Coffee Lab', '-23.5562', '-46.69132', '+551133757400', NULL),
(445, 'Brazil', '02219-001', 'Mocotó Bar e Restaurante', '-23.486697', '-46.581646', '+551129513056', NULL),
(446, 'Brazil', '01311-200', 'Paulista Avenue', '-23.5630733', '-46.6543584', '', NULL),
(447, 'Brazil', '05404-000', 'Frida & Mina', '-23.563214', '-46.682516', '+551125791444', NULL),
(448, 'Brazil', '01414-002', 'Figueira Rubaiyat', '-23.5653914', '-46.6695667', '+551130871399', NULL),
(449, 'Brazil', '04110-120', 'Veloso Bar', '-23.5851519028138', '-46.63527331842', '+551155720254', NULL),
(450, 'Brazil', '01333-000', 'Frank Bar', '-23.5632866', '-46.6511293', '+551131458000', NULL),
(451, 'Brazil', '01310-000', 'MASP - São Paulo Museum of Art', '-23.561515', '-46.656008', '+551131495959', NULL),
(452, 'Brazil', '05404-013', 'King of the Fork', '-23.5640215', '-46.6837904', '+551125339391', NULL),
(453, 'Brazil', '01414-000', 'Bella Paulista', '-23.55613', '-46.660088', '+551132143347', NULL),
(454, 'Brazil', '01220-020', 'A Casa do Porco Bar', '-23.5449496425175', '-46.6447404564487', '+551132582578', NULL),
(455, 'Brazil', '01012-000', 'Centro Cultural Banco do Brasil', '-23.5473595', '-46.6346207', '+551131133651', NULL),
(456, 'Brazil', '05436-100', 'Beco do Batman', '-23.5566032', '-46.6861476', '', NULL),
(457, 'Brazil', '01414-000', 'Z Deli Sandwiches', '-23.562986', '-46.6671329094942', '+551130830021', NULL),
(458, 'Brazil', '01402-002', 'Skye Bar & Restaurante', '-23.58158', '-46.666748', '+551130554702', NULL),
(459, 'Brazil', '01426-000', 'Bacio di Latte', '-23.5677931', '-46.6635882', '+551136622573', NULL),
(460, 'Brazil', '01120-010', 'Pinacoteca do Estado', '-23.534274941553', '-46.6339467198519', '+551133241000', NULL),
(461, 'Brazil', '04094-050', 'Ibirapuera Park', '-23.5882269907679', '-46.6603459137688', '+551155745505', NULL),
(462, 'Brazil', '01103-200', 'Municipal Market of São Paulo', '-23.5418189645286', '-46.6293849796057', '+551133133365', NULL),
(463, 'Brazil', '01411-011', 'D.O.M.', '-23.5663217605966', '-46.6674552441803', '+551130880761', NULL),
(464, 'Brazil', '05416-001', 'Coffee Lab', '-23.5562', '-46.69132', '+551133757400', NULL),
(465, 'Brazil', '02219-001', 'Mocotó Bar e Restaurante', '-23.486697', '-46.581646', '+551129513056', NULL),
(466, 'Brazil', '01311-200', 'Paulista Avenue', '-23.5630733', '-46.6543584', '', NULL),
(467, 'Brazil', '05404-000', 'Frida & Mina', '-23.563214', '-46.682516', '+551125791444', NULL),
(468, 'Brazil', '01414-002', 'Figueira Rubaiyat', '-23.5653914', '-46.6695667', '+551130871399', NULL),
(469, 'Brazil', '04110-120', 'Veloso Bar', '-23.5851519028138', '-46.63527331842', '+551155720254', NULL),
(470, 'Brazil', '01333-000', 'Frank Bar', '-23.5632866', '-46.6511293', '+551131458000', NULL),
(471, 'Brazil', '01310-000', 'MASP - São Paulo Museum of Art', '-23.561515', '-46.656008', '+551131495959', NULL),
(472, 'Brazil', '05404-013', 'King of the Fork', '-23.5640215', '-46.6837904', '+551125339391', NULL),
(473, 'Brazil', '01414-000', 'Bella Paulista', '-23.55613', '-46.660088', '+551132143347', NULL),
(474, 'Brazil', '01220-020', 'A Casa do Porco Bar', '-23.5449496425175', '-46.6447404564487', '+551132582578', NULL),
(475, 'Brazil', '01012-000', 'Centro Cultural Banco do Brasil', '-23.5473595', '-46.6346207', '+551131133651', NULL),
(476, 'Brazil', '05436-100', 'Beco do Batman', '-23.5566032', '-46.6861476', '', NULL),
(477, 'Brazil', '01414-000', 'Z Deli Sandwiches', '-23.562986', '-46.6671329094942', '+551130830021', NULL),
(478, 'Brazil', '01402-002', 'Skye Bar & Restaurante', '-23.58158', '-46.666748', '+551130554702', NULL),
(479, 'Brazil', '01426-000', 'Bacio di Latte', '-23.5677931', '-46.6635882', '+551136622573', NULL),
(480, 'Brazil', '01120-010', 'Pinacoteca do Estado', '-23.534274941553', '-46.6339467198519', '+551133241000', NULL),
(481, 'Brazil', '04094-050', 'Ibirapuera Park', '-23.5882269907679', '-46.6603459137688', '+551155745505', NULL),
(482, 'Brazil', '01103-200', 'Municipal Market of São Paulo', '-23.5418189645286', '-46.6293849796057', '+551133133365', NULL),
(483, 'Brazil', '01411-011', 'D.O.M.', '-23.5663217605966', '-46.6674552441803', '+551130880761', NULL),
(484, 'Brazil', '05416-001', 'Coffee Lab', '-23.5562', '-46.69132', '+551133757400', NULL),
(485, 'Brazil', '02219-001', 'Mocotó Bar e Restaurante', '-23.486697', '-46.581646', '+551129513056', NULL),
(486, 'Brazil', '01311-200', 'Paulista Avenue', '-23.5630733', '-46.6543584', '', NULL),
(487, 'Brazil', '05404-000', 'Frida & Mina', '-23.563214', '-46.682516', '+551125791444', NULL),
(488, 'Brazil', '01414-002', 'Figueira Rubaiyat', '-23.5653914', '-46.6695667', '+551130871399', NULL),
(489, 'Brazil', '04110-120', 'Veloso Bar', '-23.5851519028138', '-46.63527331842', '+551155720254', NULL),
(490, 'Brazil', '01333-000', 'Frank Bar', '-23.5632866', '-46.6511293', '+551131458000', NULL);
INSERT INTO `yelp_address` (`id`, `location`, `city`, `business_name`, `latitude`, `longitude`, `phone`, `address`) VALUES
(491, 'Brazil', '01310-000', 'MASP - São Paulo Museum of Art', '-23.561515', '-46.656008', '+551131495959', NULL),
(492, 'Brazil', '05404-013', 'King of the Fork', '-23.5640215', '-46.6837904', '+551125339391', NULL),
(493, 'Brazil', '01414-000', 'Bella Paulista', '-23.55613', '-46.660088', '+551132143347', NULL),
(494, 'Brazil', '01220-020', 'A Casa do Porco Bar', '-23.5449496425175', '-46.6447404564487', '+551132582578', NULL),
(495, 'Brazil', '01012-000', 'Centro Cultural Banco do Brasil', '-23.5473595', '-46.6346207', '+551131133651', NULL),
(496, 'Brazil', '05436-100', 'Beco do Batman', '-23.5566032', '-46.6861476', '', NULL),
(497, 'Brazil', '01414-000', 'Z Deli Sandwiches', '-23.562986', '-46.6671329094942', '+551130830021', NULL),
(498, 'Brazil', '01402-002', 'Skye Bar & Restaurante', '-23.58158', '-46.666748', '+551130554702', NULL),
(499, 'Brazil', '01426-000', 'Bacio di Latte', '-23.5677931', '-46.6635882', '+551136622573', NULL),
(500, 'Brazil', '01120-010', 'Pinacoteca do Estado', '-23.534274941553', '-46.6339467198519', '+551133241000', NULL),
(501, 'Brazil', 'São Paulo', 'Ibirapuera Park', '-23.5882269907679', '-46.6603459137688', '+551155745505', NULL),
(502, 'Brazil', 'São Paulo', 'Municipal Market of São Paulo', '-23.5418189645286', '-46.6293849796057', '+551133133365', NULL),
(503, 'Brazil', 'São Paulo', 'D.O.M.', '-23.5663217605966', '-46.6674552441803', '+551130880761', NULL),
(504, 'Brazil', 'São Paulo', 'Coffee Lab', '-23.5562', '-46.69132', '+551133757400', NULL),
(505, 'Brazil', 'São Paulo', 'Mocotó Bar e Restaurante', '-23.486697', '-46.581646', '+551129513056', NULL),
(506, 'Brazil', 'São Paulo', 'Paulista Avenue', '-23.5630733', '-46.6543584', '', NULL),
(507, 'Brazil', 'São Paulo', 'Frida & Mina', '-23.563214', '-46.682516', '+551125791444', NULL),
(508, 'Brazil', 'São Paulo', 'Figueira Rubaiyat', '-23.5653914', '-46.6695667', '+551130871399', NULL),
(509, 'Brazil', 'São Paulo', 'Veloso Bar', '-23.5851519028138', '-46.63527331842', '+551155720254', NULL),
(510, 'Brazil', 'São Paulo', 'Frank Bar', '-23.5632866', '-46.6511293', '+551131458000', NULL),
(511, 'Brazil', 'São Paulo', 'MASP - São Paulo Museum of Art', '-23.561515', '-46.656008', '+551131495959', NULL),
(512, 'Brazil', 'São Paulo', 'King of the Fork', '-23.5640215', '-46.6837904', '+551125339391', NULL),
(513, 'Brazil', 'São Paulo', 'Bella Paulista', '-23.55613', '-46.660088', '+551132143347', NULL),
(514, 'Brazil', 'São Paulo', 'A Casa do Porco Bar', '-23.5449496425175', '-46.6447404564487', '+551132582578', NULL),
(515, 'Brazil', 'São Paulo', 'Centro Cultural Banco do Brasil', '-23.5473595', '-46.6346207', '+551131133651', NULL),
(516, 'Brazil', 'São Paulo', 'Beco do Batman', '-23.5566032', '-46.6861476', '', NULL),
(517, 'Brazil', 'São Paulo', 'Z Deli Sandwiches', '-23.562986', '-46.6671329094942', '+551130830021', NULL),
(518, 'Brazil', 'São Paulo', 'Skye Bar & Restaurante', '-23.58158', '-46.666748', '+551130554702', NULL),
(519, 'Brazil', 'São Paulo', 'Bacio di Latte', '-23.5677931', '-46.6635882', '+551136622573', NULL),
(520, 'Brazil', 'São Paulo', 'Pinacoteca do Estado', '-23.534274941553', '-46.6339467198519', '+551133241000', NULL),
(521, 'Belgium', 'Brussels', 'Grand Place de Bruxelles', '50.8443908691406', '4.35609006881714', '', NULL),
(522, 'Belgium', 'Brussels', 'Peck 47', '50.84849', '4.35098', '', NULL),
(523, 'Belgium', 'Brussels', 'Delirium Café', '50.8484899793679', '4.35389310121536', '+3225144434', NULL),
(524, 'Belgium', 'City of Brussels', 'Bia Mara', '50.8486199', '4.35073', '+3225020061', NULL),
(525, 'Belgium', 'Brussels', 'Mer du Nord', '50.8502851255317', '4.34771109657476', '+3225131192', NULL),
(526, 'Belgium', 'Brussels', 'Nüetnigenough', '50.845878472881', '4.349795879639', '+3225137884', NULL),
(527, 'Belgium', 'Brussels', 'Le Fin de Siècle', '50.84896', '4.3471', '+3225110000', NULL),
(528, 'Belgium', 'Brussels', 'Pasta Divina', '50.847011', '4.354942', '+3225112155', NULL),
(529, 'Belgium', 'Brussels', 'Moeder Lambic', '50.8451', '4.34697', '+3225036068', NULL),
(530, 'Belgium', 'Brussels', 'Tonton Garby', '50.845126', '4.3548487', '+32484290216', NULL),
(531, 'Belgium', 'Brussels', 'Pierre Marcolini Chocolatier', '50.8410751683056', '4.35460000301974', '+3225141206', NULL),
(532, 'Belgium', 'Brussels', 'Maison Dandoy', '50.8474625068158', '4.35169045587804', '+3225110326', NULL),
(533, 'Belgium', 'Ixelles', 'Osteria Bolognese', '50.8363121', '4.3661307', '+3226085154', NULL),
(534, 'Belgium', 'Brussels', 'Rachel', '50.84531', '4.34754', '+3225033759', NULL),
(535, 'Belgium', 'Brussels', 'Boulangerie Charli', '50.85006', '4.34751', '+3225136332', NULL),
(536, 'Belgium', 'Brussels', 'Maison Dandoy', '50.8461197', '4.3520321', '+3225126588', NULL),
(537, 'Belgium', 'Brussels', 'Le Poechenellekelder', '50.8447887429781', '4.35000658035278', '+3225119262', NULL),
(538, 'Belgium', 'Brussels', 'Winehouse Osteria', '50.8464792', '4.3467156', '+3223500921', NULL),
(539, 'Belgium', 'Brussels', 'Corica', '50.84849', '4.3510854', '+3225118852', NULL),
(540, 'Belgium', 'Brussels', 'My Little Cup', '50.848093', '4.3649574', '+3224370527', NULL),
(541, '90210', 'Beverly Hills', 'The Penthouse at Mastro\'s', '34.068843', '-118.398751', '+13108888782', NULL),
(542, '90210', 'West Hollywood', 'Dialog Cafe', '34.0905094', '-118.3828495', '+13102891630', NULL),
(543, '90210', 'West Hollywood', 'Gracias Madre', '34.0807951106153', '-118.386972025037', '+13239782170', NULL),
(544, '90210', 'Burbank', 'Porto\'s Bakery & Cafe', '34.1677', '-118.34655', '+18188469100', NULL),
(545, '90210', 'Los Angeles', 'Diddy Riese Cookies', '34.0631288784817', '-118.446878719117', '+13102080448', NULL),
(546, '90210', 'Hollywood', 'The Griddle Cafe', '34.097807', '-118.362255', '+13238740377', NULL),
(547, '90210', 'West Hollywood', 'BOA Steakhouse', '34.0897786576692', '-118.39275836136', '+13102782050', NULL),
(548, '90210', 'Los Angeles', 'The Getty Center', '34.077794218403', '-118.473945310349', '+13104407300', NULL),
(549, '90210', 'Beverly Hills', 'Sprinkles Cupcakes', '34.0695469', '-118.4061455', '+13102748765', NULL),
(550, '90210', 'Beverly Hills', 'Nate\'n Al Delicatessen', '34.0703008', '-118.402216', '+13102740101', NULL),
(551, '90210', 'West Hollywood', 'Fresh Corn Grill', '34.0869', '-118.38035', '+13108559592', NULL),
(552, '90210', 'Los Angeles', 'Saffron & Rose Ice Cream', '34.0553693', '-118.441979', '+13104775533', NULL),
(553, '90210', 'Beverly Hills', 'Greystone Mansion & Gardens - The Doheny Estate', '34.0926873932396', '-118.401729777774', '+13102856830', NULL),
(554, '90210', 'West Hollywood', 'Guisados', '34.0844498', '-118.3853226', '+13107770310', NULL),
(555, '90210', 'Beverly Hills', 'The Bazaar by José Andrés', '34.06997360097', '-118.376559019089', '+13102465555', NULL),
(556, '90210', 'Beverly Hills', 'Lawry\'s The Prime Rib - Beverly Hills', '34.0678344219814', '-118.376046', '+13106522827', NULL),
(557, '90210', 'Los Angeles', 'Blu Jam Café', '34.0837144354804', '-118.350571407739', '+13239519191', NULL),
(558, '90210', 'Beverly Hills', 'The Polo Lounge', '34.0813559581321', '-118.414256362696', '+13108872777', NULL),
(559, '90210', 'West Hollywood', 'Katana', '34.095141', '-118.374456', '+13236508585', NULL),
(560, '90210', 'Los Angeles', 'Barton G. The Restaurant Los Angeles', '34.0869539412233', '-118.376752998217', '+13103881888', NULL),
(561, 'Austria', 'Vienna', 'Figlmüller', '48.209265260697', '16.3748370280422', '+4315126177', NULL),
(562, 'Austria', 'Vienna', 'Cafe Central', '48.2103618939097', '16.3654034261284', '+4315333763', NULL),
(563, 'Austria', 'Vienna', 'Eis-Greissler', '48.210578', '16.374913', '', NULL),
(564, 'Austria', 'Vienna', 'Stephansdom', '48.208788828476', '16.372702915776', '+4315137648', NULL),
(565, 'Austria', 'Vienna', 'Gmoa Keller', '48.200628', '16.37886', '+4317125310', NULL),
(566, 'Austria', 'Vienna', 'Steirereck', '48.2044781437765', '16.381318351337', '+4317133168', NULL),
(567, 'Austria', 'Vienna', 'Gasthaus Pöschl', '48.20668', '16.373851', '+4315135288', NULL),
(568, 'Austria', 'Vienna', 'Plachutta', '48.20755', '16.37867', '+4315121577', NULL),
(569, 'Austria', 'Vienna', 'Trzesniewski', '48.208017', '16.370197', '+4315123291', NULL),
(570, 'Austria', 'Vienna', 'Demel', '48.2086', '16.367215', '+43153517170', NULL),
(571, 'Austria', 'Vienna', 'Belvedere', '48.19126', '16.3798', '+431795570', NULL),
(572, 'Austria', 'Vienna', 'Schloss Schönbrunn', '48.1851487385143', '16.3123353904179', '+431811130', NULL),
(573, 'Austria', 'Vienna', 'Kunsthistorisches Museum', '48.2039120561157', '16.361407817614', '+431525240', NULL),
(574, 'Austria', 'Vienna', 'Prater', '48.216727', '16.398023', '+4317280516', NULL),
(575, 'Austria', 'Vienna', 'Phil', '48.20028', '16.36116', '+4315810489', NULL),
(576, 'Austria', 'Vienna', 'Zanoni & Zanoni', '48.20989', '16.3743899', '+4315127979', NULL),
(577, 'Austria', 'Vienna', 'Jonas Reindl Coffee', '48.21496', '16.36173', '', NULL),
(578, 'Austria', 'Vienna', 'Kolar', '48.21064', '16.36999', '+4315335225', NULL),
(579, 'Austria', 'Vienna', 'Motto am Fluss', '48.2120510520746', '16.3780843301925', '+4312525510', NULL),
(580, 'Austria', 'Vienna', 'Kaffee Alt Wien', '48.20915', '16.3761699', '+4315125222', NULL),
(581, 'Itly', 'Rome', 'Colosseo', '41.8902496828181', '12.4922484062616', '+3906699841', NULL),
(582, 'Itly', 'Rome', 'Trevi Fountain', '41.900931', '12.48331', '', NULL),
(583, 'Itly', 'Rome', 'La Prosciutteria - Trevi', '41.9019303973616', '12.4845363304221', '+39066786990', NULL),
(584, 'Itly', 'Rome', 'Giolitti', '41.9010879651567', '12.4773127734385', '+39066991243', NULL),
(585, 'Itly', 'Rome', 'Frigidarium', '41.8982940871793', '12.4704499525814', '+393349951184', NULL),
(586, 'Itly', 'Rome', 'Sapori e Delizie', '41.8949555731952', '12.4988673196126', '+39064875450', NULL),
(587, 'Itly', 'Rome', 'Pantheon - Basilica di Santa Maria ad Martyres', '41.898614', '12.476869', '+390668300230', NULL),
(588, 'Itly', 'Rome', 'Pane e Salame', '41.9006243095738', '12.4817441403866', '+39066791352', NULL),
(589, 'Itly', 'Rome', 'Hostaria La Botticella', '41.89033', '12.4680199', '+39065814738', NULL),
(590, 'Itly', 'Rome', 'Cantina e Cucina', '41.89801', '12.47162', '+39066892574', NULL),
(591, 'Itly', 'Rome', 'Pizza Zizza', '41.8997788372', '12.4565518275', '+393388681227', NULL),
(592, 'Itly', 'Rome', 'Ai Tre Scalini', '41.8962951860604', '12.490467219049', '+390648907495', NULL),
(593, 'Itly', 'Rome', 'That\'s Amore', '41.9021288', '12.4858295', '+39066790302', NULL),
(594, 'Itly', 'Rome', 'Pane & Vino', '41.8891366', '12.4953596', '+390677207177', NULL),
(595, 'Itly', 'Rome', 'Osteria Da Fortunata', '41.8960926932267', '12.4717008476776', '+390660667391', NULL),
(596, 'Itly', 'Rome', 'La Casa del Tazza d\'Oro', '41.8994494630771', '12.4774190950948', '+39066789792', NULL),
(597, 'Itly', 'Rome', 'Osteria Barberini', '41.90445', '12.48753', '+39064743325', NULL),
(598, 'Itly', 'Rome', 'Da Enzo al 29', '41.88812', '12.47774', '+39065812260', NULL),
(599, 'Itly', 'Rome', 'Foro Romano', '41.891504', '12.4887375', '+390639967700', NULL),
(600, 'Itly', 'Rome', 'Da Francesco', '41.8993198', '12.4706596', '+39066864009', NULL),
(601, 'Norway', 'Oslo', 'Frognerparken', '59.9249748190225', '10.7070819153442', '', NULL),
(602, 'Norway', 'Oslo', 'Tim Wendelboe', '59.9233937', '10.7556375', '+4794431627', NULL),
(603, 'Norway', 'Oslo', 'Den Glade Gris', '59.91788', '10.73408', '+4722111710', NULL),
(604, 'Norway', 'Oslo', 'Illegal Burger', '59.91569', '10.74861', '+4722203302', NULL),
(605, 'Norway', 'Oslo', 'Døgnvill Burger Vulkan', '59.9217078926537', '10.7516727175116', '+4721385010', NULL),
(606, 'Norway', 'Oslo', 'Den Norske Opera & Ballett', '59.90778', '10.75206', '+4721422121', NULL),
(607, 'Norway', 'Oslo', 'Fiskeriet', '59.9146610446883', '10.7498409316505', '+4722424540', NULL),
(608, 'Norway', 'Oslo', 'Mathallen Oslo', '59.9222313947069', '10.752047905835', '+4740001209', NULL),
(609, 'Norway', 'Oslo', 'Maaemo', '59.910456', '10.76028', '+4791994805', NULL),
(610, 'Norway', 'Oslo', 'Norsk folkemuseum', '59.907478174103', '10.686789027254', '+4722123700', NULL),
(611, 'Norway', 'Oslo', 'Villa Paradiso Grünerløkka', '59.9235188976501', '10.7574435660154', '+4722354060', NULL),
(612, 'Norway', 'Oslo', 'Lille Saigon 1', '59.9164886', '10.75109', '+4721388188', NULL),
(613, 'Norway', 'Oslo', 'Habsak', '59.9284168', '10.7516581', '+4721949099', NULL),
(614, 'Norway', 'Oslo', 'Alex Sushi Solli Plass', '59.91465', '10.7208204', '+4722439999', NULL),
(615, 'Norway', 'Oslo', 'Supreme Roastworks', '59.927945', '10.7592549', '+4722714202', NULL),
(616, 'Norway', 'Oslo', 'Himkok', '59.9142608931788', '10.7516701614357', '+4722422202', NULL),
(617, 'Norway', 'Oslo', 'Aker Brygge', '59.9091591140499', '10.7272301507638', '+4722832680', NULL),
(618, 'Norway', 'Oslo', 'Rent Mel Bakeri og Pizzeria', '59.91047', '10.74673', '+4740552777', NULL),
(619, 'Norway', 'Oslo', 'Mesh Café', '59.9131757', '10.7363365', '', NULL),
(620, 'Norway', 'Oslo', 'Torggata Botaniske', '59.9161063748158', '10.752256735243', '', NULL),
(621, 'Austria', 'Vienna', 'Figlmüller', '48.209265260697', '16.3748370280422', '+4315126177', NULL),
(622, 'Austria', 'Vienna', 'Cafe Central', '48.2103618939097', '16.3654034261284', '+4315333763', NULL),
(623, 'Austria', 'Vienna', 'Eis-Greissler', '48.210578', '16.374913', '', NULL),
(624, 'Austria', 'Vienna', 'Stephansdom', '48.208788828476', '16.372702915776', '+4315137648', NULL),
(625, 'Austria', 'Vienna', 'Gmoa Keller', '48.200628', '16.37886', '+4317125310', NULL),
(626, 'Austria', 'Vienna', 'Steirereck', '48.2044781437765', '16.381318351337', '+4317133168', NULL),
(627, 'Austria', 'Vienna', 'Gasthaus Pöschl', '48.20668', '16.373851', '+4315135288', NULL),
(628, 'Austria', 'Vienna', 'Plachutta', '48.20755', '16.37867', '+4315121577', NULL),
(629, 'Austria', 'Vienna', 'Trzesniewski', '48.208017', '16.370197', '+4315123291', NULL),
(630, 'Austria', 'Vienna', 'Demel', '48.2086', '16.367215', '+43153517170', NULL),
(631, 'Austria', 'Vienna', 'Belvedere', '48.19126', '16.3798', '+431795570', NULL),
(632, 'Austria', 'Vienna', 'Schloss Schönbrunn', '48.1851487385143', '16.3123353904179', '+431811130', NULL),
(633, 'Austria', 'Vienna', 'Kunsthistorisches Museum', '48.2039120561157', '16.361407817614', '+431525240', NULL),
(634, 'Austria', 'Vienna', 'Prater', '48.216727', '16.398023', '+4317280516', NULL),
(635, 'Austria', 'Vienna', 'Phil', '48.20028', '16.36116', '+4315810489', NULL),
(636, 'Austria', 'Vienna', 'Zanoni & Zanoni', '48.20989', '16.3743899', '+4315127979', NULL),
(637, 'Austria', 'Vienna', 'Jonas Reindl Coffee', '48.21496', '16.36173', '', NULL),
(638, 'Austria', 'Vienna', 'Kolar', '48.21064', '16.36999', '+4315335225', NULL),
(639, 'Austria', 'Vienna', 'Motto am Fluss', '48.2120510520746', '16.3780843301925', '+4312525510', NULL),
(640, 'Austria', 'Vienna', 'Kaffee Alt Wien', '48.20915', '16.3761699', '+4315125222', NULL),
(831, '90001', 'Los Angeles', 'The Grilled Cheese Truck', '33.97908', '-118.25009', '+18183451875', ''),
(832, '90001', 'Huntington Park', 'Rays Texas BBQ', '33.986598', '-118.229803', '', '6038 Santa Fe Ave'),
(833, '90001', 'Los Angeles', 'Tokyo Doggie Style', '33.9788284301758', '-118.249931335449', '', ''),
(834, '90001', 'Huntington Park', 'Avila\'s El Ranchito Mexican Restaurant', '33.978496', '-118.230545', '+13235855055', '6703 Santa Fe Ave'),
(835, '90001', 'Huntington Park', 'The Los Angeles Banh Mi Company', '33.9746224', '-118.2280264', '+13235531710', '2479 E Florence Ave'),
(836, '90001', 'Huntington Park', 'Nina\'s Cafe', '33.98179', '-118.21985', '+13234849803', '2805 E Gage Ave'),
(837, '90001', 'Los Angeles', 'Teddy\'s Red Tacos', '33.9894829', '-118.262014', '+13234959654', '731 East Slauson Ave'),
(838, '90001', 'Los Angeles', 'California Science Center', '34.015789', '-118.286209', '+13237243623', '700 Exposition Park Dr'),
(839, '90001', 'Los Angeles', 'Figueroa Philly Cheese Steak', '34.014196', '-118.282417', '+12137489073', '3850 S Figueroa St'),
(840, '90001', 'Los Angeles', 'Birrieria Jalisco', '33.96956', '-118.24735', '+13235839322', '7714 Compton Ave'),
(841, '90001', 'Los Angeles', 'Tire Shop Taqueria', '34.0097381464074', '-118.265285901725', '', '4069 S Avalon Blvd'),
(842, '90001', 'Huntington Park', 'Las Molenderas Restaurant', '33.981824', '-118.224245', '+13235831933', '2635 Gage Ave'),
(843, '90001', 'Los Angeles', 'Tacos y Birria La Unica', '34.02252', '-118.21658', '+13237154025', '2840 E Olympic Blvd'),
(844, '90001', 'Los Angeles', 'Tacos Los Poblanos', '33.9891021960076', '-118.265354705316', '+13237436639', '5821 Avalon Blvd'),
(845, '90001', 'South Gate', 'El Cielito Cafe', '33.96547', '-118.22551', '+13234849944', '8015 Long Beach Blvd'),
(846, '90001', 'South Gate', 'Meat Bowl', '33.9642198107267', '-118.224787135968', '+13235819623', '8122 Long Beach Blvd'),
(847, '90001', 'Bell', 'Restaurant Mole de Los Reyes', '33.9816589', '-118.2024231', '+13235885536', '6242 Maywood Ave'),
(848, '90001', 'Huntington Park', 'Thirty5 Degrees', '33.9915383018662', '-118.224742852699', '+13235891354', '5610 Pacific Blvd'),
(849, '90001', 'Los Angeles', 'Lettuce Feast', '33.97853', '-118.2497', '+14242613659', NULL),
(850, '90001', 'Los Angeles', 'Space Shuttle Endeavour', '34.0162101142984', '-118.287373578712', '+13237243623', '700 Exposition Park Dr'),
(851, '90002', 'Los Angeles', 'Hawkins House of Burgers', '33.9292549', '-118.2522808', '+13235631129', '11603 Slater St'),
(852, '90002', 'Lynwood', 'Balam Mexican Kitchen', '33.9221976552512', '-118.209478348335', '+14243386762', '11700 Long Beach Blvd'),
(853, '90002', 'Los Angeles', 'Watts Coffee House', '33.943472', '-118.239854', '+13232494343', '1827 E 103rd St'),
(854, '90002', 'Huntington Park', 'Rays Texas BBQ', '33.986598', '-118.229803', '', '6038 Santa Fe Ave'),
(855, '90002', 'Los Angeles', 'The Grilled Cheese Truck', '33.97908', '-118.25009', '+18183451875', ''),
(856, '90002', 'Huntington Park', 'Nina\'s Cafe', '33.98179', '-118.21985', '+13234849803', '2805 E Gage Ave'),
(857, '90002', 'Huntington Park', 'Avila\'s El Ranchito Mexican Restaurant', '33.978496', '-118.230545', '+13235855055', '6703 Santa Fe Ave'),
(858, '90002', 'Los Angeles', 'Tokyo Doggie Style', '33.9788284301758', '-118.249931335449', '', ''),
(859, '90002', 'Huntington Park', 'The Los Angeles Banh Mi Company', '33.9746224', '-118.2280264', '+13235531710', '2479 E Florence Ave'),
(860, '90002', 'South Gate', 'Meat Bowl', '33.9642198107267', '-118.224787135968', '+13235819623', '8122 Long Beach Blvd'),
(861, '90002', 'South Gate', 'El Cielito Cafe', '33.96547', '-118.22551', '+13234849944', '8015 Long Beach Blvd'),
(862, '90002', 'Bell', 'Restaurant Mole de Los Reyes', '33.9816589', '-118.2024231', '+13235885536', '6242 Maywood Ave'),
(863, '90002', 'Los Angeles', 'Tacos y Birria La Unica', '34.02252', '-118.21658', '+13237154025', '2840 E Olympic Blvd'),
(864, '90002', 'Huntington Park', 'Cruzita\'s Deli and Cafe', '33.9733796', '-118.2098306', '+13238356175', '7121 State St'),
(865, '90002', 'Los Angeles', 'Cafe Oaxaca', '33.9457849', '-118.2537301', '+13232490292', '1211 E Century Blvd'),
(866, '90002', 'Los Angeles', 'Teddy\'s Red Tacos', '33.9894829', '-118.262014', '+13234959654', '731 East Slauson Ave'),
(867, '90002', 'Bell', 'La Casita Mexicana', '33.9786', '-118.19515', '+13237731898', '4030 E Gage Ave'),
(868, '90002', 'Los Angeles', 'All Flavor No Grease', '33.93804', '-118.26194', '+13233180409', '728 E 108th St'),
(869, '90002', 'Los Angeles', 'Roscoe\'s House of Chicken & Waffles', '33.9599', '-118.27421', '+13237526211', '106 W Manchester Ave'),
(870, '90002', 'Los Angeles', 'The Lobos Truck', '34.0583969', '-118.1912081', '+14242358562', NULL),
(871, '90003', 'Los Angeles', 'Roscoe\'s House of Chicken & Waffles', '33.9599', '-118.27421', '+13237526211', '106 W Manchester Ave'),
(872, '90003', 'Los Angeles', 'Hawkins House of Burgers', '33.9292549', '-118.2522808', '+13235631129', '11603 Slater St'),
(873, '90003', 'Los Angeles', 'Teddy\'s Red Tacos', '33.9894829', '-118.262014', '+13234959654', '731 East Slauson Ave'),
(874, '90003', 'Huntington Park', 'Rays Texas BBQ', '33.986598', '-118.229803', '', '6038 Santa Fe Ave'),
(875, '90003', 'Los Angeles', 'The Grilled Cheese Truck', '33.97908', '-118.25009', '+18183451875', ''),
(876, '90003', 'Huntington Park', 'Avila\'s El Ranchito Mexican Restaurant', '33.978496', '-118.230545', '+13235855055', '6703 Santa Fe Ave'),
(877, '90003', 'Los Angeles', 'El Tacorin', '33.96454', '-118.27863', '+13237782818', '8215 S Broadway'),
(878, '90003', 'Los Angeles', 'Tokyo Doggie Style', '33.9788284301758', '-118.249931335449', '', ''),
(879, '90003', 'Los Angeles', 'Tacos Los Poblanos', '33.9891021960076', '-118.265354705316', '+13237436639', '5821 Avalon Blvd'),
(880, '90003', 'Huntington Park', 'The Los Angeles Banh Mi Company', '33.9746224', '-118.2280264', '+13235531710', '2479 E Florence Ave'),
(881, '90003', 'Los Angeles', 'Taqueria Tijuana', '33.974841', '-118.277428', '+13237501719', '241 W Florence Ave'),
(882, '90003', 'Los Angeles', 'Cobblermania', '33.96341', '-118.30862', '+13233164793', '8300 S Western Ave'),
(883, '90003', 'Los Angeles', 'Granny\'s Kitchen', '33.9930975470943', '-118.256304330019', '+13232312141', '5440 S Central Ave'),
(884, '90003', 'Los Angeles', 'Casa Noodle Teriyaki', '33.98642', '-118.27357', '+13232328200', '5930 S Main St'),
(885, '90003', 'Los Angeles', 'The Burger Palace', '33.9599551', '-118.2737099', '+13237504507', '100 E Manchester Ave'),
(886, '90003', 'South Gate', 'El Cielito Cafe', '33.96547', '-118.22551', '+13234849944', '8015 Long Beach Blvd'),
(887, '90003', 'South Gate', 'Meat Bowl', '33.9642198107267', '-118.224787135968', '+13235819623', '8122 Long Beach Blvd'),
(888, '90003', 'Huntington Park', 'Las Molenderas Restaurant', '33.981824', '-118.224245', '+13235831933', '2635 Gage Ave'),
(889, '90003', 'Huntington Park', 'Thirty5 Degrees', '33.9915383018662', '-118.224742852699', '+13235891354', '5610 Pacific Blvd'),
(890, '90003', 'Los Angeles', 'Birrieria Jalisco', '33.96956', '-118.24735', '+13235839322', '7714 Compton Ave'),
(891, '90004', 'Los Angeles', 'Kang Ho-dong Baekjeong', '34.0637349', '-118.2972751', '+12133849678', '3465 W 6th St'),
(892, '90004', 'Los Angeles', 'Salt & Straw', '34.075825', '-118.3235051', '+13234660485', '240 N Larchmont Blvd'),
(893, '90004', 'Los Angeles', 'Hae Jang Chon Korean BBQ Restaurant', '34.0639032', '-118.3061281', '+12133898777', '3821 W 6th St'),
(894, '90004', 'Los Angeles', 'Slurpin\' Ramen Bar', '34.0573614429986', '-118.306769744705', '+12133888607', '3500 W 8th St'),
(895, '90004', 'Los Angeles', 'Han Bat Sul Lung Tang', '34.065414', '-118.3095703125', '+12133839499', '4163 W 5th St'),
(896, '90004', 'Los Angeles', 'Dave\'s Hot Chicken', '34.0880681', '-118.308962', '+13235369711', '970 N Western Ave'),
(897, '90004', 'Los Angeles', 'Yup Dduk La', '34.064009', '-118.3007013', '+12132632355', '3603 W 6th St'),
(898, '90004', 'Los Angeles', 'Providence', '34.083628', '-118.330168', '+13234604170', '5955 Melrose Ave'),
(899, '90004', 'Los Angeles', 'Monty\'s Good Burger', '34.06469', '-118.30876', '+12139150257', '516 S Western Ave'),
(900, '90004', 'Los Angeles', 'BCD Tofu House', '34.0620862485445', '-118.302658449143', '+12133826677', '3575 Wilshire Blvd'),
(901, '90004', 'Los Angeles', 'EMC Seafood & Raw Bar', '34.063452', '-118.299046', '+12133519988', '3500 W 6th St'),
(902, '90004', 'Los Angeles', 'The Bun Shop', '34.0740309655666', '-118.309187963605', '+13234681031', '151 N Western Ave'),
(903, '90004', 'Los Angeles', 'Quarters Korean BBQ', '34.0640202245113', '-118.297687050455', '+12133658111', '3465 W 6th St'),
(904, '90004', 'Los Angeles', 'Magal BBQ', '34.057544', '-118.305579846558', '+12133831909', '3460 W 8th St'),
(905, '90004', 'Los Angeles', 'SomiSomi', '34.062880635935', '-118.309975725759', '+12135683284', '621 Western Ave'),
(906, '90004', 'Los Angeles', 'M Grill', '34.061358', '-118.310453', '+12133892770', '3832 Wilshire Blvd'),
(907, '90004', 'Los Angeles', 'Osteria La Buca', '34.0833366755519', '-118.31393718099', '+13234621900', '5210 Melrose Ave'),
(908, '90004', 'Los Angeles', 'Hae Ha Heng Thai Bistro', '34.06876', '-118.30948', '', '301 S Western Ave'),
(909, '90004', 'Los Angeles', 'Genwa Korean BBQ', '34.062321315088', '-118.340898970219', '+13235490760', '5115 Wilshire Blvd'),
(910, '90004', 'Los Angeles', 'Bulgogi Hut', '34.0615866318416', '-118.303241833066', '+12133881988', '3600 Wilshire Blvd'),
(911, '90005', 'Los Angeles', 'Slurpin\' Ramen Bar', '34.0573614429986', '-118.306769744705', '+12133888607', '3500 W 8th St'),
(912, '90005', 'Los Angeles', 'Hae Jang Chon Korean BBQ Restaurant', '34.0639032', '-118.3061281', '+12133898777', '3821 W 6th St'),
(913, '90005', 'Los Angeles', 'Kang Ho-dong Baekjeong', '34.0637349', '-118.2972751', '+12133849678', '3465 W 6th St'),
(914, '90005', 'Los Angeles', 'Magal BBQ', '34.057544', '-118.305579846558', '+12133831909', '3460 W 8th St'),
(915, '90005', 'Los Angeles', 'BCD Tofu House', '34.0620862485445', '-118.302658449143', '+12133826677', '3575 Wilshire Blvd'),
(916, '90005', 'Los Angeles', 'Han Bat Sul Lung Tang', '34.065414', '-118.3095703125', '+12133839499', '4163 W 5th St'),
(917, '90005', 'Los Angeles', 'Yup Dduk La', '34.064009', '-118.3007013', '+12132632355', '3603 W 6th St'),
(918, '90005', 'Los Angeles', 'M Grill', '34.061358', '-118.310453', '+12133892770', '3832 Wilshire Blvd'),
(919, '90005', 'Los Angeles', 'Monty\'s Good Burger', '34.06469', '-118.30876', '+12139150257', '516 S Western Ave'),
(920, '90005', 'Los Angeles', 'EMC Seafood & Raw Bar', '34.063452', '-118.299046', '+12133519988', '3500 W 6th St'),
(921, '90005', 'Los Angeles', 'SomiSomi', '34.062880635935', '-118.309975725759', '+12135683284', '621 Western Ave'),
(922, '90005', 'Los Angeles', 'Eight Korean BBQ', '34.0559926754254', '-118.309936813492', '+12133651750', '863 S Western Ave'),
(923, '90005', 'Los Angeles', 'Quarters Korean BBQ', '34.0640202245113', '-118.297687050455', '+12133658111', '3465 W 6th St'),
(924, '90005', 'Los Angeles', 'Bulgogi Hut', '34.0615866318416', '-118.303241833066', '+12133881988', '3600 Wilshire Blvd'),
(925, '90005', 'Los Angeles', 'Sul & Beans', '34.0629013806047', '-118.309997512967', '+12133855510', '621 Western Ave'),
(926, '90005', 'Los Angeles', 'Salt & Straw', '34.075825', '-118.3235051', '+13234660485', '240 N Larchmont Blvd'),
(927, '90005', 'Los Angeles', 'Ssam Korean BBQ', '34.0513648986816', '-118.308692932129', '+13237379292', '1040 S Western Ave'),
(928, '90005', 'Los Angeles', 'Soowon Galbi KBBQ Restaurant', '34.0564415632956', '-118.291338516533', '+12133659292', '856 S Vermont Ave'),
(929, '90005', 'Los Angeles', 'Langer\'s', '34.05609', '-118.27658', '+12134838050', '704 S Alvarado St'),
(930, '90005', 'Los Angeles', 'République', '34.06415', '-118.34367', '+13103626115', '624 S La Brea Ave'),
(931, '90006', 'Los Angeles', 'Dino\'s Chicken and Burgers', '34.047441', '-118.293926', '+12133803554', '2575 W Pico Blvd'),
(932, '90006', 'Los Angeles', 'Papa Cristo\'s', '34.0474029033579', '-118.299641746033', '+13237372970', '2771 W Pico Blvd'),
(933, '90006', 'Los Angeles', 'Langer\'s', '34.05609', '-118.27658', '+12134838050', '704 S Alvarado St'),
(934, '90006', 'Los Angeles', 'Soowon Galbi KBBQ Restaurant', '34.0564415632956', '-118.291338516533', '+12133659292', '856 S Vermont Ave'),
(935, '90006', 'Los Angeles', 'Slurpin\' Ramen Bar', '34.0573614429986', '-118.306769744705', '+12133888607', '3500 W 8th St'),
(936, '90006', 'Los Angeles', 'Kang Ho-dong Baekjeong', '34.0637349', '-118.2972751', '+12133849678', '3465 W 6th St'),
(937, '90006', 'Los Angeles', 'Beverly Soon Tofu Restaurant', '34.05286', '-118.29235', '+12133801113', '2717 W Olympic Blvd'),
(938, '90006', 'Los Angeles', 'Magal BBQ', '34.057544', '-118.305579846558', '+12133831909', '3460 W 8th St'),
(939, '90006', 'Los Angeles', 'Park\'s BBQ', '34.05381', '-118.29196', '+12133801717', '955 S Vermont Ave'),
(940, '90006', 'Los Angeles', 'EMC Seafood & Raw Bar', '34.063452', '-118.299046', '+12133519988', '3500 W 6th St'),
(941, '90006', 'Los Angeles', 'Yup Dduk La', '34.064009', '-118.3007013', '+12132632355', '3603 W 6th St'),
(942, '90006', 'Los Angeles', 'BCD Tofu House', '34.0620862485445', '-118.302658449143', '+12133826677', '3575 Wilshire Blvd'),
(943, '90006', 'Los Angeles', 'Guelaguetza Restaurante', '34.05241', '-118.30071', '+12134270608', '3014 W Olympic Blvd'),
(944, '90006', 'Los Angeles', 'Hae Jang Chon Korean BBQ Restaurant', '34.0639032', '-118.3061281', '+12133898777', '3821 W 6th St'),
(945, '90006', 'Los Angeles', 'Road To Seoul', '34.04847', '-118.30867', '+13237319292', '1230 S Western Ave'),
(946, '90006', 'Los Angeles', 'Quarters Korean BBQ', '34.0640202245113', '-118.297687050455', '+12133658111', '3465 W 6th St'),
(947, '90006', 'Los Angeles', 'Ssam Korean BBQ', '34.0513648986816', '-118.308692932129', '+13237379292', '1040 S Western Ave'),
(948, '90006', 'Los Angeles', 'Eight Korean BBQ', '34.0559926754254', '-118.309936813492', '+12133651750', '863 S Western Ave'),
(949, '90006', 'Los Angeles', 'Hangari Bajirak Kalguksu', '34.0628602582049', '-118.297570301258', '+12133882326', '3470 W 6th St'),
(950, '90006', 'Los Angeles', 'Kobawoo House', '34.06012', '-118.29128', '+12133897300', '698 S Vermont Ave'),
(951, '90007', 'Los Angeles', 'Dirt Dog', '34.0282923762355', '-118.275208244705', '+12137491813', '2528 S Figueroa St'),
(952, '90007', 'Los Angeles', 'Chichen Itza Restaurant', '34.01744', '-118.2783', '+12137411075', '3655 S Grand Ave'),
(953, '90007', 'Los Angeles', 'Jacks N Joe', '34.02876', '-118.27517', '+12137484565', '2498 S Figueroa St'),
(954, '90007', 'Los Angeles', 'Natural History Museum', '34.016972', '-118.288768', '+12137633466', '900 Exposition Blvd'),
(955, '90007', 'Los Angeles', 'Bacari W. Adams', '34.03447', '-118.28341', '+12137487205', '2308 S Union Ave'),
(956, '90007', 'Los Angeles', 'California Science Center', '34.015789', '-118.286209', '+13237243623', '700 Exposition Park Dr'),
(957, '90007', 'Los Angeles', 'Figueroa Philly Cheese Steak', '34.014196', '-118.282417', '+12137489073', '3850 S Figueroa St'),
(958, '90007', 'Los Angeles', 'Revolutionario: North African Tacos', '34.02523', '-118.29857', '+14242233526', '1436 W Jefferson Blvd'),
(959, '90007', 'Los Angeles', 'Nature\'s Brew', '34.0342569', '-118.283559', '+12137419393', '2316 S Union Ave'),
(960, '90007', 'Los Angeles', 'Holbox', '34.0171789745852', '-118.278350606561', '+12139869972', '3655 S Grand Ave'),
(961, '90007', 'Los Angeles', 'Everytable', '34.0350353531902', '-118.283531060368', '+12139735095', '1101 W 23rd St'),
(962, '90007', 'Los Angeles', 'Bird\'s Nest Cafe', '34.0344334', '-118.2916849', '+13236417986', '2403 S Vermont Ave'),
(963, '90007', 'Los Angeles', 'Dino\'s Chicken and Burgers', '34.047441', '-118.293926', '+12133803554', '2575 W Pico Blvd'),
(964, '90007', 'Los Angeles', 'Papa Cristo\'s', '34.0474029033579', '-118.299641746033', '+13237372970', '2771 W Pico Blvd'),
(965, '90007', 'Los Angeles', 'Ignatius Cafe', '34.031914', '-118.293154', '', '1451 Dana St'),
(966, '90007', 'Los Angeles', 'Space Shuttle Endeavour', '34.0162101142984', '-118.287373578712', '+13237243623', '700 Exposition Park Dr'),
(967, '90007', 'Los Angeles', 'Azla', '34.0173639', '-118.278314392065', '+12137457455', '3655 S Grand Ave'),
(968, '90007', 'Los Angeles', 'La Taquiza', '34.0249016337977', '-118.278697446791', '+12137419795', '3009 S Figueroa St'),
(969, '90007', 'Los Angeles', 'Ebaes', '34.0344536304474', '-118.283669427037', '+12137476888', '2314 S Union Ave'),
(970, '90007', 'Los Angeles', 'Dulce', '34.025354', '-118.285446', '+12135365609', '3096 McClintock Ave');

-- --------------------------------------------------------

--
-- Table structure for table `yelp_test`
--

CREATE TABLE `yelp_test` (
  `id` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `business_name` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `yelp_test`
--

INSERT INTO `yelp_test` (`id`, `location`, `city`, `business_name`, `latitude`, `longitude`, `phone`, `address`) VALUES
(1, '90003', 'Los Angeles', 'Roscoe\'s House of Chicken & Waffles', '33.9599', '-118.27421', '+13237526211', '106 W Manchester Ave'),
(2, '90003', 'Los Angeles', 'Hawkins House of Burgers', '33.9292549', '-118.2522808', '+13235631129', '11603 Slater St'),
(3, '90003', 'Los Angeles', 'Teddy\'s Red Tacos', '33.9894829', '-118.262014', '+13234959654', '731 East Slauson Ave'),
(4, '90003', 'Huntington Park', 'Rays Texas BBQ', '33.986598', '-118.229803', '', '6038 Santa Fe Ave'),
(5, '90003', 'Los Angeles', 'The Grilled Cheese Truck', '33.97908', '-118.25009', '+18183451875', ''),
(6, '90003', 'Huntington Park', 'Avila\'s El Ranchito Mexican Restaurant', '33.978496', '-118.230545', '+13235855055', '6703 Santa Fe Ave'),
(7, '90003', 'Los Angeles', 'El Tacorin', '33.96454', '-118.27863', '+13237782818', '8215 S Broadway'),
(8, '90003', 'Los Angeles', 'Tokyo Doggie Style', '33.9788284301758', '-118.249931335449', '', ''),
(9, '90003', 'Los Angeles', 'Tacos Los Poblanos', '33.9891021960076', '-118.265354705316', '+13237436639', '5821 Avalon Blvd'),
(10, '90003', 'Huntington Park', 'The Los Angeles Banh Mi Company', '33.9746224', '-118.2280264', '+13235531710', '2479 E Florence Ave'),
(11, '90003', 'Los Angeles', 'Taqueria Tijuana', '33.974841', '-118.277428', '+13237501719', '241 W Florence Ave'),
(12, '90003', 'Los Angeles', 'Cobblermania', '33.96341', '-118.30862', '+13233164793', '8300 S Western Ave'),
(13, '90003', 'Los Angeles', 'Granny\'s Kitchen', '33.9930975470943', '-118.256304330019', '+13232312141', '5440 S Central Ave'),
(14, '90003', 'Los Angeles', 'Casa Noodle Teriyaki', '33.98642', '-118.27357', '+13232328200', '5930 S Main St'),
(15, '90003', 'Los Angeles', 'The Burger Palace', '33.9599551', '-118.2737099', '+13237504507', '100 E Manchester Ave'),
(16, '90003', 'South Gate', 'El Cielito Cafe', '33.96547', '-118.22551', '+13234849944', '8015 Long Beach Blvd'),
(17, '90003', 'South Gate', 'Meat Bowl', '33.9642198107267', '-118.224787135968', '+13235819623', '8122 Long Beach Blvd'),
(18, '90003', 'Huntington Park', 'Las Molenderas Restaurant', '33.981824', '-118.224245', '+13235831933', '2635 Gage Ave'),
(19, '90003', 'Huntington Park', 'Thirty5 Degrees', '33.9915383018662', '-118.224742852699', '+13235891354', '5610 Pacific Blvd'),
(20, '90003', 'Los Angeles', 'Birrieria Jalisco', '33.96956', '-118.24735', '+13235839322', '7714 Compton Ave'),
(21, '90008', 'Los Angeles', 'Taqueria Los Anaya', '34.0327911', '-118.3417282', '+13237314070', '4651 W Adams Blvd'),
(22, '90008', 'Inglewood', 'The Serving Spoon', '33.9762855538483', '-118.363437652588', '+13104123927', '1403 Centinela Ave'),
(23, '90008', 'Los Angeles', 'Earle\'s On Crenshaw', '34.0156233070285', '-118.334755915362', '+13232992867', '3864 Crenshaw Blvd'),
(24, '90008', 'Los Angeles', 'République', '34.06415', '-118.34367', '+13103626115', '624 S La Brea Ave'),
(25, '90008', 'Los Angeles', 'Bottega Louie', '34.0469300995766', '-118.256601457672', '+12138021470', '700 S Grand Ave'),
(26, '90008', 'Los Angeles', 'Leo\'s Tacos Truck', '34.046438', '-118.345718', '+13233462001', '1515 S La Brea Ave'),
(27, '90008', 'Los Angeles', 'Mike\'s Deli', '33.9880055506272', '-118.362671546638', '+13232985960', '4859 W Slauson Ave'),
(28, '90008', 'Los Angeles', 'Father\'s Office', '34.0304642240788', '-118.384695173189', '+13107362224', '3229 Helms Ave'),
(29, '90008', 'Culver City', 'Baldwin Hills Scenic Overlook', '34.0176', '-118.384059', '', '6300 Hetzler Rd'),
(30, '90008', 'Los Angeles', 'Slurpin\' Ramen Bar', '34.0573614429986', '-118.306769744705', '+12133888607', '3500 W 8th St'),
(31, '90008', 'Los Angeles', 'Genwa Korean BBQ', '34.062321315088', '-118.340898970219', '+13235490760', '5115 Wilshire Blvd'),
(32, '90008', 'Los Angeles', 'Post & Beam', '34.009861', '-118.3390427', '+13232995599', '3767 Santa Rosalia Dr'),
(33, '90008', 'Los Angeles', 'Orleans & York Deli', '33.988497', '-118.3537791', '+13232918800', '4454 W Slauson Ave'),
(34, '90008', 'Los Angeles', 'Roscoe\'s House of Chicken & Waffles', '34.0474472045898', '-118.346229553223', '+13239344405', '5006 W Pico Blvd'),
(35, '90008', 'Los Angeles', 'Dulan\'s On Crenshaw', '33.9985785', '-118.3307743', '+13232963034', '4859 Crenshaw Blvd'),
(36, '90008', 'Los Angeles', 'El Chato Taco Truck', '34.0571251', '-118.346074', '+13232026936', '5300 W Olympic Blvd'),
(37, '90008', 'Los Angeles', 'Pasta Sisters', '34.0476', '-118.317234', '+13238705271', '3343 W Pico Blvd'),
(38, '90008', 'Inglewood', 'Stuff I Eat', '33.963434', '-118.3518651', '+13106710115', '114 N Market St'),
(39, '90008', 'Los Angeles', 'Grilled Fraiche', '33.9887', '-118.33492', '+13233898888', '5800 W Blvd'),
(40, '90008', 'Los Angeles', 'Road To Seoul', '34.04847', '-118.30867', '+13237319292', '1230 S Western Ave'),
(41, '90009', 'Los Angeles', 'Aliki\'s Greek Taverna', '33.9524703946447', '-118.385242001852', '+13106459555', '5862 Arbor Vitae St'),
(42, '90009', 'Los Angeles', 'Cafe Vietnam Truck', '33.95804', '-118.3898', '+19496789281', ''),
(43, '90009', 'Los Angeles', 'Shakar Bakery', '33.9722213745117', '-118.375694274902', '+18183940222', NULL),
(44, '90009', 'Los Angeles', 'Two Chicks in the Mix', '33.98662', '-118.36492', '', NULL),
(45, '90009', 'Los Angeles', 'Lattes On Location', '33.9722213745117', '-118.375694274902', '+13107567420', ''),
(46, '90009', 'Los Angeles', 'Cheesecake de Granger', '33.9516114', '-118.3875775', '+13107746701', ''),
(47, '90009', 'Los Angeles', 'Ohana Hawiian Grindz', '33.95123', '-118.38516', '+17472328395', NULL),
(48, '90009', 'Los Angeles', 'Northside Bar & Deli', '33.9432602', '-118.4021606', '+13106465252', '599 World Way'),
(49, '90010', 'Los Angeles', 'Slurpin\' Ramen Bar', '34.0573614429986', '-118.306769744705', '+12133888607', '3500 W 8th St'),
(50, '90010', 'Los Angeles', 'Hae Jang Chon Korean BBQ Restaurant', '34.0639032', '-118.3061281', '+12133898777', '3821 W 6th St'),
(51, '90010', 'Los Angeles', 'Han Bat Sul Lung Tang', '34.065414', '-118.3095703125', '+12133839499', '4163 W 5th St'),
(52, '90010', 'Los Angeles', 'Monty\'s Good Burger', '34.06469', '-118.30876', '+12139150257', '516 S Western Ave'),
(53, '90010', 'Los Angeles', 'M Grill', '34.061358', '-118.310453', '+12133892770', '3832 Wilshire Blvd'),
(54, '90010', 'Los Angeles', 'SomiSomi', '34.062880635935', '-118.309975725759', '+12135683284', '621 Western Ave'),
(55, '90010', 'Los Angeles', 'Kang Ho-dong Baekjeong', '34.0637349', '-118.2972751', '+12133849678', '3465 W 6th St'),
(56, '90010', 'Los Angeles', 'Magal BBQ', '34.057544', '-118.305579846558', '+12133831909', '3460 W 8th St'),
(57, '90010', 'Los Angeles', 'BCD Tofu House', '34.0620862485445', '-118.302658449143', '+12133826677', '3575 Wilshire Blvd'),
(58, '90010', 'Los Angeles', 'Yup Dduk La', '34.064009', '-118.3007013', '+12132632355', '3603 W 6th St'),
(59, '90010', 'Los Angeles', 'Sul & Beans', '34.0629013806047', '-118.309997512967', '+12133855510', '621 Western Ave'),
(60, '90010', 'Los Angeles', 'Eight Korean BBQ', '34.0559926754254', '-118.309936813492', '+12133651750', '863 S Western Ave'),
(61, '90010', 'Los Angeles', 'EMC Seafood & Raw Bar', '34.063452', '-118.299046', '+12133519988', '3500 W 6th St'),
(62, '90010', 'Los Angeles', 'Salt & Straw', '34.075825', '-118.3235051', '+13234660485', '240 N Larchmont Blvd'),
(63, '90010', 'Los Angeles', 'Bulgogi Hut', '34.0615866318416', '-118.303241833066', '+12133881988', '3600 Wilshire Blvd'),
(64, '90010', 'Los Angeles', 'Quarters Korean BBQ', '34.0640202245113', '-118.297687050455', '+12133658111', '3465 W 6th St'),
(65, '90010', 'Los Angeles', 'Hae Ha Heng Thai Bistro', '34.06876', '-118.30948', '', '301 S Western Ave'),
(66, '90010', 'Los Angeles', 'Gol Tong Chicken', '34.0674543', '-118.3096191', '+12137166116', '361 S Western Ave'),
(67, '90010', 'Los Angeles', 'Ahgassi Gopchang', '34.0634067908259', '-118.30388175744', '+12132499678', '3744 W 6th St'),
(68, '90010', 'Los Angeles', 'Ssam Korean BBQ', '34.0513648986816', '-118.308692932129', '+13237379292', '1040 S Western Ave'),
(69, '90008', 'Los Angeles', 'Taqueria Los Anaya', '34.0327911', '-118.3417282', '+13237314070', '4651 W Adams Blvd'),
(70, '90008', 'Inglewood', 'The Serving Spoon', '33.9762855538483', '-118.363437652588', '+13104123927', '1403 Centinela Ave'),
(71, '90008', 'Los Angeles', 'Earle\'s On Crenshaw', '34.0156233070285', '-118.334755915362', '+13232992867', '3864 Crenshaw Blvd'),
(72, '90008', 'Los Angeles', 'République', '34.06415', '-118.34367', '+13103626115', '624 S La Brea Ave'),
(73, '90008', 'Los Angeles', 'Bottega Louie', '34.0469300995766', '-118.256601457672', '+12138021470', '700 S Grand Ave'),
(74, '90008', 'Los Angeles', 'Leo\'s Tacos Truck', '34.046438', '-118.345718', '+13233462001', '1515 S La Brea Ave'),
(75, '90008', 'Los Angeles', 'Mike\'s Deli', '33.9880055506272', '-118.362671546638', '+13232985960', '4859 W Slauson Ave'),
(76, '90008', 'Los Angeles', 'Father\'s Office', '34.0304642240788', '-118.384695173189', '+13107362224', '3229 Helms Ave'),
(77, '90008', 'Culver City', 'Baldwin Hills Scenic Overlook', '34.0176', '-118.384059', '', '6300 Hetzler Rd'),
(78, '90008', 'Los Angeles', 'Slurpin\' Ramen Bar', '34.0573614429986', '-118.306769744705', '+12133888607', '3500 W 8th St'),
(79, '90008', 'Los Angeles', 'Genwa Korean BBQ', '34.062321315088', '-118.340898970219', '+13235490760', '5115 Wilshire Blvd'),
(80, '90008', 'Los Angeles', 'Post & Beam', '34.009861', '-118.3390427', '+13232995599', '3767 Santa Rosalia Dr'),
(81, '90008', 'Los Angeles', 'Orleans & York Deli', '33.988497', '-118.3537791', '+13232918800', '4454 W Slauson Ave'),
(82, '90008', 'Los Angeles', 'Roscoe\'s House of Chicken & Waffles', '34.0474472045898', '-118.346229553223', '+13239344405', '5006 W Pico Blvd'),
(83, '90008', 'Los Angeles', 'Dulan\'s On Crenshaw', '33.9985785', '-118.3307743', '+13232963034', '4859 Crenshaw Blvd'),
(84, '90008', 'Los Angeles', 'El Chato Taco Truck', '34.0571251', '-118.346074', '+13232026936', '5300 W Olympic Blvd'),
(85, '90008', 'Los Angeles', 'Pasta Sisters', '34.0476', '-118.317234', '+13238705271', '3343 W Pico Blvd'),
(86, '90008', 'Inglewood', 'Stuff I Eat', '33.963434', '-118.3518651', '+13106710115', '114 N Market St'),
(87, '90008', 'Los Angeles', 'Grilled Fraiche', '33.9887', '-118.33492', '+13233898888', '5800 W Blvd'),
(88, '90008', 'Los Angeles', 'Road To Seoul', '34.04847', '-118.30867', '+13237319292', '1230 S Western Ave'),
(89, '90009', 'Los Angeles', 'Aliki\'s Greek Taverna', '33.9524703946447', '-118.385242001852', '+13106459555', '5862 Arbor Vitae St'),
(90, '90009', 'Los Angeles', 'Cafe Vietnam Truck', '33.95804', '-118.3898', '+19496789281', ''),
(91, '90009', 'Los Angeles', 'Shakar Bakery', '33.9722213745117', '-118.375694274902', '+18183940222', NULL),
(92, '90009', 'Los Angeles', 'Two Chicks in the Mix', '33.98662', '-118.36492', '', NULL),
(93, '90009', 'Los Angeles', 'Lattes On Location', '33.9722213745117', '-118.375694274902', '+13107567420', ''),
(94, '90009', 'Los Angeles', 'Cheesecake de Granger', '33.9516114', '-118.3875775', '+13107746701', ''),
(95, '90009', 'Los Angeles', 'Ohana Hawiian Grindz', '33.95123', '-118.38516', '+17472328395', NULL),
(96, '90009', 'Los Angeles', 'Northside Bar & Deli', '33.9432602', '-118.4021606', '+13106465252', '599 World Way'),
(97, '90010', 'Los Angeles', 'Slurpin\' Ramen Bar', '34.0573614429986', '-118.306769744705', '+12133888607', '3500 W 8th St'),
(98, '90010', 'Los Angeles', 'Hae Jang Chon Korean BBQ Restaurant', '34.0639032', '-118.3061281', '+12133898777', '3821 W 6th St'),
(99, '90010', 'Los Angeles', 'Han Bat Sul Lung Tang', '34.065414', '-118.3095703125', '+12133839499', '4163 W 5th St'),
(100, '90010', 'Los Angeles', 'Monty\'s Good Burger', '34.06469', '-118.30876', '+12139150257', '516 S Western Ave'),
(101, '90010', 'Los Angeles', 'M Grill', '34.061358', '-118.310453', '+12133892770', '3832 Wilshire Blvd'),
(102, '90010', 'Los Angeles', 'SomiSomi', '34.062880635935', '-118.309975725759', '+12135683284', '621 Western Ave'),
(103, '90010', 'Los Angeles', 'Kang Ho-dong Baekjeong', '34.0637349', '-118.2972751', '+12133849678', '3465 W 6th St'),
(104, '90010', 'Los Angeles', 'Magal BBQ', '34.057544', '-118.305579846558', '+12133831909', '3460 W 8th St'),
(105, '90010', 'Los Angeles', 'BCD Tofu House', '34.0620862485445', '-118.302658449143', '+12133826677', '3575 Wilshire Blvd'),
(106, '90010', 'Los Angeles', 'Yup Dduk La', '34.064009', '-118.3007013', '+12132632355', '3603 W 6th St'),
(107, '90010', 'Los Angeles', 'Sul & Beans', '34.0629013806047', '-118.309997512967', '+12133855510', '621 Western Ave'),
(108, '90010', 'Los Angeles', 'Eight Korean BBQ', '34.0559926754254', '-118.309936813492', '+12133651750', '863 S Western Ave'),
(109, '90010', 'Los Angeles', 'EMC Seafood & Raw Bar', '34.063452', '-118.299046', '+12133519988', '3500 W 6th St'),
(110, '90010', 'Los Angeles', 'Salt & Straw', '34.075825', '-118.3235051', '+13234660485', '240 N Larchmont Blvd'),
(111, '90010', 'Los Angeles', 'Bulgogi Hut', '34.0615866318416', '-118.303241833066', '+12133881988', '3600 Wilshire Blvd'),
(112, '90010', 'Los Angeles', 'Quarters Korean BBQ', '34.0640202245113', '-118.297687050455', '+12133658111', '3465 W 6th St'),
(113, '90010', 'Los Angeles', 'Hae Ha Heng Thai Bistro', '34.06876', '-118.30948', '', '301 S Western Ave'),
(114, '90010', 'Los Angeles', 'Gol Tong Chicken', '34.0674543', '-118.3096191', '+12137166116', '361 S Western Ave'),
(115, '90010', 'Los Angeles', 'Ahgassi Gopchang', '34.0634067908259', '-118.30388175744', '+12132499678', '3744 W 6th St'),
(116, '90010', 'Los Angeles', 'Ssam Korean BBQ', '34.0513648986816', '-118.308692932129', '+13237379292', '1040 S Western Ave');

-- --------------------------------------------------------

--
-- Table structure for table `yelp_url`
--

CREATE TABLE `yelp_url` (
  `id` int(255) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `yelp_url`
--

INSERT INTO `yelp_url` (`id`, `key`, `url`) VALUES
(1, 'iLJyFLlgCPav_xnH9IIMs0Cu6vI6-dUzaIAnxktK_SJeWSSLgXzMCItZeu2-wBhU0dvvJh5yTS8A5K38WJiRmiqklRbliISnywUjzn7dWQvmFoHdP_1wAVxMG6pRXXYx', 'https://api.yelp.com/v3/businesses/search');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_members`
--
ALTER TABLE `add_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crawls`
--
ALTER TABLE `crawls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponsor_package`
--
ALTER TABLE `sponsor_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponsor_package_option`
--
ALTER TABLE `sponsor_package_option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponsor_payment`
--
ALTER TABLE `sponsor_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trip_url`
--
ALTER TABLE `trip_url`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yelp_address`
--
ALTER TABLE `yelp_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yelp_test`
--
ALTER TABLE `yelp_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yelp_url`
--
ALTER TABLE `yelp_url`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_members`
--
ALTER TABLE `add_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `crawls`
--
ALTER TABLE `crawls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `sponsor_package`
--
ALTER TABLE `sponsor_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sponsor_package_option`
--
ALTER TABLE `sponsor_package_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sponsor_payment`
--
ALTER TABLE `sponsor_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `trip_url`
--
ALTER TABLE `trip_url`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `yelp_address`
--
ALTER TABLE `yelp_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=971;

--
-- AUTO_INCREMENT for table `yelp_test`
--
ALTER TABLE `yelp_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `yelp_url`
--
ALTER TABLE `yelp_url`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
