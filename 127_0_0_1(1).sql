-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 17 أكتوبر 2022 الساعة 21:07
-- إصدار الخادم: 5.7.26
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_admin_db`
--
CREATE DATABASE IF NOT EXISTS `blog_admin_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `blog_admin_db`;

-- --------------------------------------------------------

--
-- بنية الجدول `banner_posts`
--

DROP TABLE IF EXISTS `banner_posts`;
CREATE TABLE IF NOT EXISTS `banner_posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` int(10) UNSIGNED NOT NULL,
  `status` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `banner_posts`
--

INSERT INTO `banner_posts` (`id`, `title`, `status`) VALUES
(1, 1, 'active');

-- --------------------------------------------------------

--
-- بنية الجدول `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(190) NOT NULL,
  `tags` varchar(40) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(50) NOT NULL,
  `posted` varchar(40) NOT NULL,
  `date` date DEFAULT NULL,
  `author` varchar(40) DEFAULT NULL,
  `category` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `tags`, `content`, `photo`, `posted`, `date`, `author`, `category`) VALUES
(1, 'King Abdullah bin Abdulaziz Al Saud', 'KINGS', '<div align=\"left\"><b>King Abdullah bin Abdulaziz Al Saud </b><br>He is the sixth king of the Kingdom of Saudi Arabia, and he took power after the death of his brother King Fahd in 2005, and his rule of the Kingdom lasted for 10 years, and he died in 2015. [9]<br><b>&nbsp;What are the achievements of King Abdullah bin Abdulaziz Al Saud?</b><br>&nbsp;During his reign, the Kingdom of Saudi Arabia witnessed a great development acceleration in various fields, and he, may God have mercy on him, took great care in developing the sectors of education, health, housing, roads, environment, water, electricity, and many others, and among the most important areas that witnessed the achievements of King Abdullah bin Abdulaziz:[ 10] Achieving world peace: Through the implementation of global projects that would help achieve world peace. Culture and Youth: He was the first president of the Equestrian Club, and thanks to his presidency, this sport witnessed a tangible development in the Kingdom. Health: During his reign, King Abdullah Medical City was opened in Makkah and Madinah, 1010 health centers were established in all cities and villages of the Kingdom, and many other medical achievements were also made. Education and Scientific Research: Among the most important educational projects that were established during his reign were the King Abdullah Program for External Scholarships, the King Abdullah Center for Petroleum Studies and Research, and the inauguration of Princess Noura bint Abdul Rahman University to be a Saudi university for girls, and one of the largest women’s universities in the world.</div>', '00396100_1665987115.jpg', 'publish', NULL, NULL, '5'),
(2, 'King Saud bin Abdulaziz Al Saud', 'life,life tips', '<b>King Saud bin Abdulaziz Al Saud assumed the throne of King Saud</b><br>&nbsp; He ruled the Kingdom of Saudi Arabia after the death of his father, King Abdulaziz bin Saud, and ruled the kingdom between 1953 and 1964, and was the second king of Saudi Arabia.[3]<br><b>What are the achievements of King Saud bin Abdulaziz Al Saud?</b><br>&nbsp; King Saud made great achievements; Especially in the field of education, and the following are his most important achievements: [4] Establishing the General Presidency for Girls\' Education. Establishing the first university in Saudi Arabia. Establishment of a number of ministries such as: the Ministry of Education, Health, Agriculture, Commerce, and Transportation. Expansion of the Two Holy Mosques.', '32625100_1665987698.jpg', 'publish', '2018-04-27', 'admin', '2'),
(3, 'King Khalid bin Abdulaziz Al Saud', 'web,development,earth', '<div><b>King Khalid bin Abdulaziz Al Saud</b><br>&nbsp; King Khalid is the fourth king of the Kingdom of Saudi Arabia, and he ruled from 1975 to 1982, and his reign coincided with a number of adversities and turmoil that he was able to overcome with his wisdom.[7]<br><b>&nbsp;What are the achievements of King Khalid bin Abdulaziz Al Saud?</b><br>King Khalid continued the march of progress and prosperity in the Kingdom; He established ministries and universities, and took care of developing roads and transportation<span style=\"font-size: 0.857em;\"></span></div>', '86405500_1665988007.jpg', 'publish', '2018-04-27', 'admin', '3'),
(4, 'King Fahd bin Abdulaziz Al Saud', 'books,reading,novels', '<div><span style=\"font-size: 12.855px;\"><b>King Fahd bin Abdulaziz Al Saud </b><br></span></div><div><span style=\"font-size: 12.855px;\">King Fahd is the fifth king of the Kingdom of Saudi Arabia, and he is also one of the seven Sudairis who represent the sons of Princess Hessa bint Ahmed Al-Sudairy, wife of King Abdulaziz. King Fahd ruled from 1982 until his death in 2005. [8]</span></div><div><span style=\"font-size: 12.855px;\"></span></div><span style=\"font-size: 12.855px;\"><b>&nbsp; What are the achievements of King Fahd bin Abdulaziz Al Saud?</b><br>&nbsp; During his reign, the Kingdom witnessed great progress in the economic, social and educational fields. He developed education and agriculture, issued many administrative regulations, expanded the Two Holy Mosques, and established the King Fahd Complex for the Printing of the Noble Qur’an.</span><span style=\"font-size: 0.857em;\">.</span><br>', '86614500_1665988295.jpg', 'publish', '2018-04-27', 'admin', '4'),
(5, 'King Salman bin Abdulaziz Al Saud', 'KINGS', '<div align=\"left\"><span style=\"font-size: 0.857em;\"><b>King Salman bin Abdulaziz Al Saud</b><br>&nbsp;King Salman is the seventh king and the current Custodian of the Two Holy Mosques of Saudi Arabia. He was pledged allegiance in 2015 after the death of his older brother, King Abdullah.[11]<br><b>What are the achievements of King Salman bin Abdulaziz Al Saud ?</b><br>&nbsp;His most important achievements are summarized as follows: [6] Allocating funds for housing programs, raising social security pensions, and changing the government structure. Approval of the Kingdom’s Vision 2030, which includes many programs aimed at developing the sectors of the economy, society, administration, culture, and others. Supporting the Arab system, supporting the Palestinian cause, empowering Saudi women, and addressing the Corona pandemic.<br></span></div>', '30715300_1665988556.jpg', 'publish', '2018-04-27', 'etemesi', '6'),
(6, 'King Faisal bin Abdulaziz Al Saud', 'KINGS', '<div><b>King Faisal bin Abdulaziz Al Saud</b><br>King Faisal is the third king of the Kingdom of Saudi Arabia, and the third son of King Abdulaziz. He ruled the kingdom from 1964 to 1975. [5]<br><b>What are the achievements of King Faisal bin Abdulaziz Al Saud?</b></div><div>&nbsp;We summarize King Faisal\'s achievements as follows: [6] He opened many schools and established universities. Agriculture stage. Opened the port of Jeddah, and took care of roads and railways. He opened a television station in Riyadh. He continued to serve the Two Holy Mosques and support the Palestinian cause.<span style=\"font-size: 11.0167px;\"></span></div>', '57054000_1665988789.jpg', 'publish', '2018-04-27', 'etemesi', '7');

-- --------------------------------------------------------

--
-- بنية الجدول `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
CREATE TABLE IF NOT EXISTS `blog_categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`) VALUES
(1, 'King Abdulaziz Al Saudtricks'),
(2, 'King Saud bin Abdulaziz Al Saud'),
(3, 'King Khalid bin Abdulaziz Al Saud'),
(4, 'King Fahd bin Abdul Aziz Al Saud'),
(5, 'King Abdullah bin Abdulaziz Al Saud'),
(6, 'King Salman bin Abdulaziz Al Saud'),
(7, 'King Faisal bin Abdulaziz Al Saud');

-- --------------------------------------------------------

--
-- بنية الجدول `editors_choice`
--

DROP TABLE IF EXISTS `editors_choice`;
CREATE TABLE IF NOT EXISTS `editors_choice` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `blog` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog` (`blog`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `editors_choice`
--

INSERT INTO `editors_choice` (`id`, `blog`) VALUES
(2, 3),
(1, 4);

-- --------------------------------------------------------

--
-- بنية الجدول `links`
--

DROP TABLE IF EXISTS `links`;
CREATE TABLE IF NOT EXISTS `links` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `facebook` varchar(40) DEFAULT NULL,
  `twitter` varchar(40) DEFAULT NULL,
  `googleplus` varchar(40) DEFAULT NULL,
  `pinterest` varchar(40) DEFAULT NULL,
  `dribble` varchar(40) DEFAULT NULL,
  `comments_script` text,
  `sharing_script` text,
  `javascript` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `links`
--

INSERT INTO `links` (`id`, `facebook`, `twitter`, `googleplus`, `pinterest`, `dribble`, `comments_script`, `sharing_script`, `javascript`) VALUES
(1, 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.plus.google.com', 'http://www.pinterest.com', 'http://www.dribble.com', '<div class=\"fb-comments container\" data-href=\"http://www.uoecu.org/newsview.php?id=<?php echo $row[\'id\'];?>\" data-numposts=\"20\" width=\"100%\"></div>', '<div class=\"addthis_sharing_toolbox\"></div>', '<script>(function(d, s, id) {\r\n		var js, fjs = d.getElementsByTagName(s)[0];\r\n		if (d.getElementById(id)) return;\r\n		js = d.createElement(s); js.id = id;\r\n		js.src = \'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.11&appId=298807240601869\';\r\n		fjs.parentNode.insertBefore(js, fjs);\r\n	}(document, \'script\', \'facebook-jssdk\'));</script>\r\n<script type=\"text/javascript\" src=\"//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-57587edcb1479678\"></script>');

-- --------------------------------------------------------

--
-- بنية الجدول `membership_grouppermissions`
--

DROP TABLE IF EXISTS `membership_grouppermissions`;
CREATE TABLE IF NOT EXISTS `membership_grouppermissions` (
  `permissionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `groupID` int(11) DEFAULT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `allowInsert` tinyint(4) DEFAULT NULL,
  `allowView` tinyint(4) NOT NULL DEFAULT '0',
  `allowEdit` tinyint(4) NOT NULL DEFAULT '0',
  `allowDelete` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`permissionID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `membership_grouppermissions`
--

INSERT INTO `membership_grouppermissions` (`permissionID`, `groupID`, `tableName`, `allowInsert`, `allowView`, `allowEdit`, `allowDelete`) VALUES
(1, 2, 'titles', 1, 3, 3, 3),
(2, 2, 'links', 1, 3, 3, 3),
(3, 2, 'blog_categories', 1, 3, 3, 3),
(4, 2, 'blogs', 1, 3, 3, 3),
(5, 2, 'banner_posts', 1, 3, 3, 3),
(6, 2, 'editors_choice', 1, 3, 3, 3),
(32, 3, 'titles', 0, 0, 0, 0),
(33, 3, 'links', 0, 0, 0, 0),
(34, 3, 'blog_categories', 0, 3, 0, 0),
(35, 3, 'blogs', 1, 1, 1, 1),
(36, 3, 'editors_choice', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- بنية الجدول `membership_groups`
--

DROP TABLE IF EXISTS `membership_groups`;
CREATE TABLE IF NOT EXISTS `membership_groups` (
  `groupID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `description` text,
  `allowSignup` tinyint(4) DEFAULT NULL,
  `needsApproval` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`groupID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `membership_groups`
--

INSERT INTO `membership_groups` (`groupID`, `name`, `description`, `allowSignup`, `needsApproval`) VALUES
(1, 'anonymous', 'Anonymous group created automatically on 2018-04-26', 0, 0),
(2, 'Admins', 'Admin group created automatically on 2018-04-26', 0, 1),
(3, 'authors', 'contains all the guest authors', 1, 0);

-- --------------------------------------------------------

--
-- بنية الجدول `membership_userpermissions`
--

DROP TABLE IF EXISTS `membership_userpermissions`;
CREATE TABLE IF NOT EXISTS `membership_userpermissions` (
  `permissionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `memberID` varchar(20) NOT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `allowInsert` tinyint(4) DEFAULT NULL,
  `allowView` tinyint(4) NOT NULL DEFAULT '0',
  `allowEdit` tinyint(4) NOT NULL DEFAULT '0',
  `allowDelete` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`permissionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- بنية الجدول `membership_userrecords`
--

DROP TABLE IF EXISTS `membership_userrecords`;
CREATE TABLE IF NOT EXISTS `membership_userrecords` (
  `recID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tableName` varchar(100) DEFAULT NULL,
  `pkValue` varchar(255) DEFAULT NULL,
  `memberID` varchar(20) DEFAULT NULL,
  `dateAdded` bigint(20) UNSIGNED DEFAULT NULL,
  `dateUpdated` bigint(20) UNSIGNED DEFAULT NULL,
  `groupID` int(11) DEFAULT NULL,
  PRIMARY KEY (`recID`),
  UNIQUE KEY `tableName_pkValue` (`tableName`,`pkValue`),
  KEY `pkValue` (`pkValue`),
  KEY `tableName` (`tableName`),
  KEY `memberID` (`memberID`),
  KEY `groupID` (`groupID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `membership_userrecords`
--

INSERT INTO `membership_userrecords` (`recID`, `tableName`, `pkValue`, `memberID`, `dateAdded`, `dateUpdated`, `groupID`) VALUES
(1, 'titles', '1', 'admin', 1524766759, 1666039652, 2),
(2, 'links', '1', 'admin', 1524766827, 1524878963, 2),
(3, 'blog_categories', '1', 'admin', 1524773915, 1665985816, 2),
(4, 'blog_categories', '2', 'admin', 1524773923, 1665985930, 2),
(5, 'blog_categories', '3', 'admin', 1524773931, 1665985987, 2),
(6, 'blog_categories', '4', 'admin', 1524773941, 1665986123, 2),
(7, 'blog_categories', '5', 'admin', 1524773974, 1665986276, 2),
(8, 'blogs', '1', 'admin', 1524778647, 1665988981, 2),
(9, 'banner_posts', '1', 'admin', 1524779492, 1524779492, 2),
(10, 'blogs', '2', 'admin', 1524780270, 1665987698, 2),
(11, 'blogs', '3', 'admin', 1524780339, 1665988007, 2),
(12, 'blogs', '4', 'admin', 1524790853, 1665988295, 2),
(13, 'editors_choice', '1', 'admin', 1524799889, 1524799889, 2),
(14, 'editors_choice', '2', 'admin', 1524799903, 1524799903, 2),
(15, 'blogs', '5', 'etemesi', 1524856026, 1665988556, 3),
(16, 'blogs', '6', 'etemesi', 1524856225, 1665988946, 3),
(17, 'blog_categories', '6', 'etemesi', 1524858044, 1665986366, 3),
(18, 'blog_categories', '7', 'admin', 1665988632, 1665988632, 2);

-- --------------------------------------------------------

--
-- بنية الجدول `membership_users`
--

DROP TABLE IF EXISTS `membership_users`;
CREATE TABLE IF NOT EXISTS `membership_users` (
  `memberID` varchar(20) NOT NULL,
  `passMD5` varchar(40) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `signupDate` date DEFAULT NULL,
  `groupID` int(10) UNSIGNED DEFAULT NULL,
  `isBanned` tinyint(4) DEFAULT NULL,
  `isApproved` tinyint(4) DEFAULT NULL,
  `custom1` text,
  `custom2` text,
  `custom3` text,
  `custom4` text,
  `comments` text,
  `pass_reset_key` varchar(100) DEFAULT NULL,
  `pass_reset_expiry` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`memberID`),
  KEY `groupID` (`groupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `membership_users`
--

INSERT INTO `membership_users` (`memberID`, `passMD5`, `email`, `signupDate`, `groupID`, `isBanned`, `isApproved`, `custom1`, `custom2`, `custom3`, `custom4`, `comments`, `pass_reset_key`, `pass_reset_expiry`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'ronniengoda@gmail.com', '2018-04-26', 2, 0, 1, NULL, NULL, NULL, NULL, 'Admin member created automatically on 2018-04-26\nRecord updated automatically on 2018-04-27', NULL, NULL),
('etemesi', '827ccb0eea8a706c4c34a16891f84e7b', 'etemesi@gmail.com', '2018-04-27', 3, 0, 1, 'philiiip etemesi', 'nairobi,kenya', 'nairobi', 'kenya', 'member signed up through the registration form.', NULL, NULL),
('guest', NULL, NULL, '2018-04-26', 1, 0, 1, NULL, NULL, NULL, NULL, 'Anonymous member created automatically on 2018-04-26', NULL, NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `page_hits`
--

DROP TABLE IF EXISTS `page_hits`;
CREATE TABLE IF NOT EXISTS `page_hits` (
  `page` varchar(255) NOT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`page`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `page_hits`
--

INSERT INTO `page_hits` (`page`, `count`) VALUES
('Benefits of livig in this world', 8),
('King Fahd bin Abdulaziz Al Saud', 1),
('King Faisal bin Abdulaziz Al Saud', 1),
('King Khalid bin Abdulaziz Al Saud', 1),
('King Salman bin Abdulaziz Al Saud', 1),
('The challanges of being a writter', 5),
('The future of web developement on earth', 19),
('The subtle art of not giving a fuck-Mark Manson', 24),
('Why i ventured into writting as a proffesion', 4);

-- --------------------------------------------------------

--
-- بنية الجدول `titles`
--

DROP TABLE IF EXISTS `titles`;
CREATE TABLE IF NOT EXISTS `titles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `website_name` varchar(40) DEFAULT NULL,
  `tagline` varchar(40) DEFAULT NULL,
  `icon` varchar(40) DEFAULT NULL,
  `keywords` varchar(220) DEFAULT NULL,
  `short_description` varchar(200) DEFAULT NULL,
  `bannertext1` varchar(150) DEFAULT NULL,
  `bannertext2` varchar(150) DEFAULT NULL,
  `bannertext3` varchar(150) DEFAULT NULL,
  `bannertext4` varchar(150) DEFAULT NULL,
  `detailed_description` text,
  `address` varchar(40) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `googlemap` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `titles`
--

INSERT INTO `titles` (`id`, `website_name`, `tagline`, `icon`, `keywords`, `short_description`, `bannertext1`, `bannertext2`, `bannertext3`, `bannertext4`, `detailed_description`, `address`, `email`, `phone`, `googlemap`) VALUES
(1, 'Multimedia 443INFS-3', 'Kings Of Saudi Arabia', '85571800_1665990382.jpg', 'blog,kinkblog,saudi,kings,saudiarabnews,fantastic blog', 'This is a blog and content management system,You can easily setup your blog and customize it according to your needs.This is a short description of your blog.You can change this', 'Create a lifestyle <span>you desire</span>', 'Engaging Purposeful <span>and Creative</span>', 'Create the lifestyle <span>you desire</span>', 'Engaging Purposeful <span>and Creative</span>', 'NAME : Tahani Al-Hejri                   STUDENT NUMBER : 201808040 \r\nNAME : Amal Ali Ahmed Mghly     STUDENT NUMBER : 201708242', 'Kingdom Saudi Arabia', 'info@fantasticblog.com', '+967 774179073', 'https://goo.gl/maps/UwWS3aZsPTEyaqhX7');

-- --------------------------------------------------------

--
-- بنية الجدول `visitor_info`
--

DROP TABLE IF EXISTS `visitor_info`;
CREATE TABLE IF NOT EXISTS `visitor_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `time_accessed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `visitor_info`
--

INSERT INTO `visitor_info` (`id`, `ip_address`, `user_agent`, `time_accessed`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:26:52'),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:27:01'),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:27:40'),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:27:55'),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:28:01'),
(6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:28:12'),
(7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:28:19'),
(8, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:28:22'),
(9, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:28:29'),
(10, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:28:32'),
(11, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:28:35'),
(12, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:28:38'),
(13, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:29:05'),
(14, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:29:09'),
(15, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:29:18'),
(16, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:29:25'),
(17, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:29:28'),
(18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:29:51'),
(19, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:29:57'),
(20, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:30:00'),
(21, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:30:07'),
(22, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:30:15'),
(23, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:39:41'),
(24, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:40:41'),
(25, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:41:27'),
(26, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:26:10'),
(27, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:27:34'),
(28, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:28:20'),
(29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:28:42'),
(30, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:26'),
(31, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:38'),
(32, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:41'),
(33, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:43'),
(34, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:45'),
(35, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:48'),
(36, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:51'),
(37, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:53'),
(38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:56'),
(39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:59'),
(40, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:32:02'),
(41, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:32:05'),
(42, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:32:07'),
(43, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:32:10'),
(44, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 19:08:04'),
(45, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 19:08:14'),
(46, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 21:43:06'),
(47, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 21:47:01'),
(48, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 21:47:08'),
(49, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 21:48:58'),
(50, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 21:49:18'),
(51, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 22:22:28'),
(52, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-28 01:41:41'),
(53, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-28 01:43:58'),
(54, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-28 01:46:23'),
(55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', '2022-10-13 06:28:59'),
(56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', '2022-10-13 06:42:32'),
(57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', '2022-10-13 06:44:48'),
(58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', '2022-10-14 15:06:19'),
(59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', '2022-10-17 04:12:57'),
(60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', '2022-10-17 04:12:57'),
(61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', '2022-10-17 06:44:52'),
(62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', '2022-10-17 06:45:24'),
(63, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', '2022-10-17 07:26:37'),
(64, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', '2022-10-17 07:33:54');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
