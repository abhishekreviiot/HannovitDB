-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 02, 2020 at 02:47 PM
-- Server version: 10.3.17-MariaDB
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
-- Database: `itiansweb_hannovit`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `mainadmin` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `datecreated` datetime NOT NULL,
  `description` varchar(300) NOT NULL,
  `roleid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `userid`, `password`, `name`, `email`, `mobile`, `mainadmin`, `status`, `datecreated`, `description`, `roleid`) VALUES
(1, 'admin', '=4WatRWY', 'Admin', 'ashutosh.kumar@hkdigitalonline.com', '8743986933', '1', 'Blocked', '2018-12-11 11:26:50', 'Hi..', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `id` int(10) NOT NULL,
  `Title` varchar(200) NOT NULL,
  `SubTitle` text CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `Link` varchar(500) NOT NULL,
  `ButtonText` varchar(255) NOT NULL,
  `Image` varchar(500) NOT NULL,
  `SortOrder` int(11) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `DateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_banner`
--

INSERT INTO `tbl_banner` (`id`, `Title`, `SubTitle`, `Link`, `ButtonText`, `Image`, `SortOrder`, `Status`, `DateCreated`) VALUES
(2, 'Home', '<h4><br></h4>\r\n<h1>A PRODUCT <span>DEVELOPMENT COMPANY</span></h1>\r\n<p>Providing <span>smart hardware devices and comprehensive software solutions</span> for Healthcare Industry in Europe.</p>', 'https://demo.itiansweb.com/hannovit2/blog', 'Please visit our blog', '1162_banner2.jpg', 2, '1', '2020-04-01 05:56:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `id` int(10) NOT NULL,
  `Title` varchar(200) NOT NULL,
  `Exerpt` longtext NOT NULL,
  `Content` longtext CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `Image` varchar(500) NOT NULL,
  `Date` varchar(255) NOT NULL,
  `SortOrder` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `DateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_blog`
--

INSERT INTO `tbl_blog` (`id`, `Title`, `Exerpt`, `Content`, `Image`, `Date`, `SortOrder`, `slug`, `Status`, `DateCreated`) VALUES
(3, 'Help your business grow with help from social media tool', '<p>What a crazy time. I have five children in colleghigh school graduates.jpge or pursing post graduate studies (ages 18 through 26 for those who were wondering). </p>', '<p>What a crazy time. I have five children in colleghigh school graduates.jpge or pursing post graduate studies (ages 18 through 26 for those who were wondering). Each of my children attends college far from home, the closest of which is more than 800 miles away. While I miss being with my older children, I know that a college experience can be the source of great growth and can provide them with even greater employment opportunities in future.</p>\r\n<p>Many families look to the college years for children/grandchildren with mixed emotions excitement and trepidation. These two words rarely go together, but when it comes to college, it seems to be a perfect match.</p>', '19779_news3.jpg', '', 3, 'help-your-business-grow-with-help-from-social-media-tool', '1', '2020-03-24 08:53:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `id` int(10) NOT NULL,
  `ShowOnHome` int(11) NOT NULL,
  `Title` varchar(200) NOT NULL,
  `Image` varchar(500) NOT NULL,
  `SortOrder` int(11) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `DateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`id`, `ShowOnHome`, `Title`, `Image`, `SortOrder`, `Status`, `DateCreated`) VALUES
(1, 0, 'Team Necxtcom', '1354552636_DSC_7408.JPG', 1, '1', '2020-03-31 05:14:33'),
(2, 0, 'Waldgarten Hospital', '999206295_ForestGarden.jpg', 2, '1', '2020-03-31 05:13:43'),
(3, 0, 'Wassergarten Hospital', '1123807795_WaterGerdenChristmas.jpg', 3, '1', '2020-03-31 05:14:08'),
(4, 0, 'Wassergarten Hospital', '2021789431_WaterGarden1.jpg', 4, '1', '2020-03-31 05:06:06'),
(5, 0, 'Stadtgarten Hospital', '164239974_CityGarden1.jpg', 5, '1', '2020-03-31 05:12:42'),
(6, 0, 'Team in Germany', '1664925720_DSC_7412.JPG', 6, '1', '2020-03-31 04:59:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_industry`
--

CREATE TABLE `tbl_industry` (
  `id` int(10) NOT NULL,
  `Title` varchar(200) NOT NULL,
  `Icon` text NOT NULL,
  `Content` longtext CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `Link` varchar(500) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `metaKeywords` varchar(500) NOT NULL,
  `metaDescription` varchar(500) NOT NULL,
  `SortOrder` int(11) NOT NULL,
  `slug` varchar(500) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `DateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_industry`
--

INSERT INTO `tbl_industry` (`id`, `Title`, `Icon`, `Content`, `Link`, `Image`, `metaKeywords`, `metaDescription`, `SortOrder`, `slug`, `Status`, `DateCreated`) VALUES
(1, 'Communication', '', '<p>We areproviding communication solutions for multiple customers in Germany, Austria and Switzerland with the help of team of 50+ people.Â </p>', 'https://demo.itiansweb.com/hannovit2/industries/communication', '19470_bargraph_32px.png', '', '', 1, 'communication', '1', '2020-03-24 17:25:42'),
(2, 'Healthcare Industry', '', '<p>Hannovit brings expertise and domain experience in Healthcare vertical. With the knowledge of over 15 years in this domain and team...</p>', 'https://demo.itiansweb.com/hannovit2/industries/healthcare', '20510_basket_32px.png', '', '', 2, 'healthcare-industry', '1', '2020-03-24 17:26:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_opening`
--

CREATE TABLE `tbl_opening` (
  `id` int(10) NOT NULL,
  `Title` varchar(200) NOT NULL,
  `Content` longtext CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `Image` varchar(500) NOT NULL,
  `Date` varchar(255) NOT NULL,
  `SortOrder` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `DateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_opening`
--

INSERT INTO `tbl_opening` (`id`, `Title`, `Content`, `Image`, `Date`, `SortOrder`, `slug`, `Status`, `DateCreated`) VALUES
(1, 'Python Full stack Web Developer', '<h3>Key Requirements</h3>\r\n<ul class=\"inner-list\">\r\n<li>Candidate should have good working knowledge of Python and Django</li>\r\n<li>Should be able to write stored procedure, design tables using MySql.</li>\r\n<li>Must have developed few web applications from Scratch.</li>\r\n<li>Must be able to design front-end pages using HTML5, Bootstrap and Jquery/Javascript</li>\r\n</ul>\r\n<br>\r\n<p>Does this sound like you? We would love to connect! Please send us your resume at <strong>info@hannovit.com</strong></p>', '17004_Full_stack_developer.jpg', 'March 15th, 2019', 1, 'social-media-manager', '1', '2020-03-25 06:39:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pages`
--

CREATE TABLE `tbl_pages` (
  `id` int(11) NOT NULL,
  `parentid` varchar(11) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `customLink` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `pdf` varchar(255) NOT NULL,
  `menuname` varchar(100) NOT NULL,
  `subTitle` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `Exerpt` longtext NOT NULL,
  `metaKeywords` varchar(255) NOT NULL,
  `metaDescription` varchar(255) NOT NULL,
  `header` varchar(10) NOT NULL,
  `footer` varchar(10) NOT NULL,
  `Status` varchar(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `dated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pages`
--

INSERT INTO `tbl_pages` (`id`, `parentid`, `sort_order`, `customLink`, `image`, `banner`, `pdf`, `menuname`, `subTitle`, `content`, `Exerpt`, `metaKeywords`, `metaDescription`, `header`, `footer`, `Status`, `slug`, `dated`) VALUES
(1, '0', 1, '', '', '', '', 'Home', '', '', '', '', '', 'yes', 'yes', '1', 'home', '2020-03-25 07:50:24'),
(2, '0', 2, '', '18709_Custom-Software-Development.jpg', '', '', 'About Us', 'About Hannovit Technologies', '<p>â€œHannovit Technologies Pvt Ltd is part of G&amp;W group with its offices in Burgdorf, Germany and NCR, India. Itâ€™s a Product Development company, providing comprehensive hardware and software solutions for Healthcare Industry for its customers in Europe.</p>\r\n<p>AR Seniorendienste is the first company of G&amp;W group, which was established in 2010 in Germany by two professionals â€“ Gaurav Garg, alumni of IIT Delhi and Michael Wieck.AR Seniorendienstehas four nursing care centers in Germany. We also work in collaboration with several hospitals in Europe. We have served thousands of patients since last 10 years.</p>\r\n<p>G&amp;W owns another company NECXTCOM, which provides communication solutions to several customers in Germany, Austria and Switzerland. It is representative of NEC Corp which was earlier known as Nippon Electric Company. It is an exclusive distributor and re-seller of NEC,which provides future-proof communication solutions.</p>', '<p>â€œHannovit Technologies Pvt Ltd is part of G&W group with its offices in Burgdorf, Germany and NCR, India. Itâ€™s a Product Development company, providing comprehensive hardware and software solutions for Healthcare Industry for its customers in Europe.</p>', '', '', '', 'yes', '1', 'about-us', '2020-03-30 06:53:29'),
(3, '0', 3, '', '', '', '', 'Services', '', '', 'Hannovit is a pioneer in developing sterling smart hardware devices for hospitals. We are working in the direction to provide comprehensive software soutions for our customers.', '', '', '', 'yes', '1', 'services', '2020-03-30 12:21:54'),
(4, '0', 5, '', '', '', '', 'Industries', '', '', '', '', '', '', 'yes', '1', 'industries', '2020-03-25 07:50:38'),
(5, '0', 4, '', '', '', '', 'Team Member', '', '', 'Meet the companyâ€™s leaders and the hard-working people who deliver innovative ideas to companies like yours.', '', '', '', 'yes', '1', 'team-member', '2020-03-30 12:22:19'),
(11, '0', 7, '', '', '', '', 'Career', '', '', 'We build top-notch products in healthcare domain for European customers. If you are looking to be a part of team who are working on next generation technologies, Hannovit is the place for you.', '', '', 'yes', 'yes', '1', 'career', '2020-03-30 12:23:58'),
(12, '3', 12, '', '', '', '', 'Application Development', '', '<p>Hannovit leverages its technical and consulting capabilities, its deep domain knowledge in healthcare sector, to deliver next-generation, future-ready applications which help our clients in meeting their strategic priorities.</p>\r\n<p>Our web application uses modern web capabilities to deliver an app-like experience to users. These applications are also called Progress Web application(PWA). </p>\r\n<p>Apps can be opened in all the browsers, at the same time you can open them on mobile, like any native (mobile)app. The best part about PWAs â€” you get the best user experience possible in slow connectivity as well as with no connectivity.</p>\r\n<h3>PWAs can also use:</h3>\r\n<ul class=\"inner-list\">\r\n<li>Push notifications</li>\r\n<li>Full Screen</li>\r\n<li>Offline working</li>\r\n<li>Splash screen is supported giving it a more app like feel</li>\r\n</ul>', '<p>Hannovit leverages its technical and consulting capabilities, its deep domain knowledge in healthcare sector, to deliver next-generation, future-ready applications which help our clients in meeting their strategic priorities.</p>', '', '', '', 'yes', '1', 'development-services', '2020-03-27 13:57:44'),
(13, '3', 13, '', '', '', '', 'Technical Expertise', '', '<p>We have expertise in software development using open source tools and technologies such as Python, Flask, Django, Jenkins, Travis CI, Git, MySQL, and Next Cloud etc.</p>\r\n<h3>What is open source-</h3>\r\n<p>Open source software is basically software wherein a copyright holder provides the right to   study change and distribute the software to anyone and for any purpose. But, open source is really not about getting great software for free; its true power lies in the philosophy behind it- collaboration.</p>\r\n<h3>Open source for cloud computing-</h3>\r\n<p>Also, more and more, people rely on remote computers when performing tasks they might otherwise perform on their local devices. For example, they may use online word processing, email management, and image editing software that they don&#039;t install and run on their personal computers. Instead, they simply access these programs on remote computers by using a Web browser or mobile phone application. Cloud computing is an increasingly important aspect of everyday life with Internet-connected devices. Some cloud computing applications, like Google Apps, are proprietary. Others, like ownCloud and Nextcloud, are open source.</p>\r\n<h3>Why open source â€“</h3>\r\n<p><strong>Security:</strong> Some people prefer open source software because they consider it more secure and stable than proprietary software. As anyone can view and modify open source software, someone might spot and correct errors or omissions that a program&#039;s original authors might have missed.</p>\r\n<p><strong>Stability:</strong>  As programmers publicly distribute the source code for open source software, users relying on that software for critical tasks can be sure their tools won&#039;t disappear or fall into disrepair if their original creators stop working on them.</p>\r\n<p><strong>Community:</strong> Open source software often inspires a community of users and developers to form around it. In the case of open source, the community isn&#039;t just a fan base that buys in (emotionally or financially) to an elite user group; it&#039;s the people who produce, test, use, promote, and ultimately affect the software they love</p>', '<p>We have expertise in software development using open source tools and technologies such as Python, Flask, Django, Jenkins, Travis CI, Git, MySQL, and Next Cloud etc.</p>', '', '', '', 'yes', '1', 'technical-expertise', '2020-04-01 08:49:33'),
(14, '0', 6, '', '', '', '', 'Blog', '', '', '', '', '', 'yes', 'yes', '1', 'blog', '2020-03-25 07:51:22'),
(15, '4', 15, '', '', '', '', 'Communication', '', '<p>We provide communication solutions for multiple customers in Germany, Austria and Switzerland with the help of team of 50+ people. Our sister company NECXTCOM is NEC corp manufacturer representative. Itâ€™s an exclusive value-added distributor and resellers when it comes to providing future-proof communication solutions.</p>', '<p>We provide communication solutions for multiple customers in Germany, Austria and Switzerland with the help of team of 50+ people.</p>', '', '', '', 'yes', '1', 'communication', '2020-03-27 07:39:26'),
(16, '4', 16, '', '', '', '', 'Healthcare', '', '<p>Hannovit brings expertise and domain experience in Healthcare vertical. Having knowledge of over 10 years in this domain and with help of team of more than 350 people in our several healthcare centers in Germany, we are in process of developing comprehensive healthcare solution.</p>', '<p>Hannovit brings expertise and domain experience in Healthcare vertical.</p>', '', '', '', 'yes', '1', 'healthcare', '2020-03-27 07:38:25'),
(17, '0', 8, '', '', '', '', 'Gallery', '', '', '', '', '', 'yes', 'yes', '1', 'gallery', '2020-03-26 08:24:48'),
(18, '11', 18, '', '', '', '', 'Why Hannovit', '', '<p>We build top-notch products in healthcare domain for European customers. If you are looking to be a part of team who are working on next generation technologies, Hannovit is the place for you.</p>\r\n<p>We also give onshore opportunities for locations in Germany, Switzerland, Austria and Sri Lanka. </p>\r\n<p>We are also among the first few companies who share our profits with employees.</p>\r\n', '<p>We build top-notch products in healthcare domain for European customers. If you are looking to be a part of team who are working on next generation technologies, Hannovit is the place for you.</p>', '', '', '', 'yes', '1', 'why-hannovit', '2020-04-01 08:11:48'),
(19, '11', 19, '', '', '', '', 'What we do', '', '<p>we provides smart tangible devices and comprehensive software solutions to our several customers in Healthcare Industry in Europe.</p>', '<p>we provides smart tangible devices and comprehensive software solutions to our several customers in Healthcare Industry in Europe.</p>', '', '', '', 'yes', '1', 'what-we-do', '2020-03-27 07:41:20'),
(20, '11', 20, '', '', '', '', 'Recruitment Process', '', '<p><strong>APPLICATION -</strong> Employee shares his profile tohr@hannovit.com</p>\r\n<p><strong>SHORTLISTING â€“</strong> Our technical panel will screen your application and if your credentials match with our requirement, we will contact you for further details</p>\r\n<p><strong>TECHNICAL PROBLEM SOLVING -</strong> We provide employee with a problem statement to his email. He uploads the technical solution on Github. We provide sufficient time to solve the problem from home.</p>\r\n<p>TECHNICAL INTERVIEW -The technical interview is a golden opportunity for you to exhibit your technical skills.</p>\r\n<p>FACE TO FACE INTERVIEW - We try to understand your career goals, skills, strengths, passion etc. You can quiz the recruiter anything you would like to know about the position or Hannovit as an organization</p>\r\n<p>OFFER ROLL-OUT -Finally, if you are successful, an offer is rolled out along with compensation structure</p>\r\n', '<p>We build top-notch products in healthcare domain for European customers. If you are looking to be a part of team who are working on next generation technologies, Hannovit is the place for you.</p>', '', '', '', 'yes', '1', 'recruitment-process', '2020-03-27 07:36:05'),
(21, '11', 21, '', '', '', '', 'Current Opening', '', '', '<p>We build top-notch products in healthcare domain for European customers. If you are looking to be a part of team who are working on next generation technologies, Hannovit is the place for you.</p>', '', '', '', 'yes', '1', 'current-opening', '2020-03-27 07:44:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services`
--

CREATE TABLE `tbl_services` (
  `id` int(10) NOT NULL,
  `Title` varchar(200) NOT NULL,
  `Content` longtext CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `Link` varchar(500) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `metaKeywords` varchar(500) NOT NULL,
  `metaDescription` varchar(500) NOT NULL,
  `SortOrder` int(11) NOT NULL,
  `slug` varchar(500) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `DateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_services`
--

INSERT INTO `tbl_services` (`id`, `Title`, `Content`, `Link`, `Image`, `metaKeywords`, `metaDescription`, `SortOrder`, `slug`, `Status`, `DateCreated`) VALUES
(1, 'Application Development', '<p>Hannovit leverages its technical and consulting capabilities, its deep domain knowledge in healthcare sector, to deliver next-generation, future-ready applications which help our clients in meeting their strategic priorities.</p>', 'https://demo.itiansweb.com/hannovit2/services/development-services', '19545_browser_32px.png', '', '', 1, 'development-services', '1', '2020-03-27 07:19:23'),
(2, 'Technical Expertise', '<p>We have expertise in software development using open source tools and technologies such as Python, Flask, Django, Jenkins, Travis CI, Git, MySQL, and Next Cloud etc.</p>\r\n', 'https://demo.itiansweb.com/hannovit2/services/technical-expertise', '17100_chat_32px.png', '', '', 2, 'technical-expertise', '1', '2020-03-27 07:19:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_team`
--

CREATE TABLE `tbl_team` (
  `id` int(10) NOT NULL,
  `Title` varchar(200) NOT NULL,
  `SubTitle` text CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `Content` longtext NOT NULL,
  `Link` varchar(500) NOT NULL,
  `Image` varchar(500) NOT NULL,
  `SortOrder` int(11) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `DateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_team`
--

INSERT INTO `tbl_team` (`id`, `Title`, `SubTitle`, `Content`, `Link`, `Image`, `SortOrder`, `Status`, `DateCreated`) VALUES
(1, 'Gaurav Garg', 'Founding Director', '<p>Alumni of IIT Delhi, is Founding Director of Hannovit Technologies. He has got 20 years of Industry experience in managing several businesses across various verticals like healthcare, communication, software spread across  countries like Germany, Switzerland, Austria, India, Sri Lanka. </p>\r\n<p>He is also Managing Director of several other companies including NECXTCOM and AR Seniorendienstespread across various countries.</p>\r\n<p>He has got experience of motivating  big teams of 350+ members.</p>\r\n', '#', '11253_garg.jpg', 1, '1', '2020-03-21 10:07:30'),
(2, 'Abhishek Jain', 'Managing Director', '<p>Abhishek Jain is the Managing Director of Hannovit Technologies. He has got 15+ years of experience in software industry and has worked in various companies in India, Germany and USA. He has got vast experience of verticals like Transport, Map.</p>\r\n<p>He has managed big teams and developed 25+ projects while working with customers in various domains. He has played various roles in program/project management, partner and customer management, software analysis, design, development and integration.</p>', '#', '541_abhishek.png', 2, '1', '2020-03-30 07:14:46'),
(3, 'Zishan Jawed', 'Software Developer', '<p>Zishan Jawed is a software engineer in Hannovit Technologies. After completing his Bachelors degree from Jamia University, he started his career as Infrastructure engineer. He has worked on platforms like windows and Linux and expert in open source technologies like Python, Mysql and Django. He an expert in DevOPs related task also.</p>', '', '306419225_ZishanImage.jpg', 3, '1', '2020-04-01 12:14:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userId` int(11) NOT NULL,
  `activationCode` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `userPass` varchar(255) NOT NULL,
  `companyName` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `dated` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`userId`, `activationCode`, `name`, `userPass`, `companyName`, `designation`, `email`, `phone`, `dated`, `status`) VALUES
(1, '', 'Ashu', 'Nzg5NDU2', 'ITPL', 'WP', 'ashutosh.kumar@hkdigitalonline.com', '7854785485', '2017-12-12 12:22:13', 1),
(2, '', 'sasa', 'MTIzNDU2', 'sas', 'asas', 'ashutossh.kumar@hkdigitalonline.com', '7845845854', '2017-12-09 16:55:52', 1),
(3, '', 'gfhfg', 'MTIzNDU2', 'gfgfgf', 'gfgfg', 'ashutohghsh.kumar@hkdigitalonline.com', '7777888855', '2017-12-09 16:58:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_who_we_are`
--

CREATE TABLE `tbl_who_we_are` (
  `id` int(10) NOT NULL,
  `Title` varchar(200) NOT NULL,
  `Content` longtext NOT NULL,
  `CustomLink` varchar(500) NOT NULL,
  `Image` varchar(500) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `DateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_who_we_are`
--

INSERT INTO `tbl_who_we_are` (`id`, `Title`, `Content`, `CustomLink`, `Image`, `sortorder`, `Status`, `DateCreated`) VALUES
(1, 'Healthcare solutions', 'Hannovit Technologies Pvt Ltd is part of G&W group with its offices in Burgdorf, Germany and NCR, India. Itâ€™s a Product Development company, providing comprehensive hardware and software solutions for Healthcare Industry for its customers in Europe', 'https://demo.itiansweb.com/hannovit2/about-us', '1152_profile.jpg', 1, '1', '2020-03-30 07:38:18');

-- --------------------------------------------------------

--
-- Table structure for table `userpermission`
--

CREATE TABLE `userpermission` (
  `id` int(11) NOT NULL,
  `roleid` int(11) NOT NULL COMMENT '27 - Role Id  super admin',
  `dashboard` int(2) NOT NULL,
  `changestatus` int(2) NOT NULL DEFAULT 1,
  `addrole` int(2) NOT NULL,
  `editrole` int(2) NOT NULL,
  `viewrole` int(2) NOT NULL,
  `deleterole` int(2) NOT NULL,
  `addadmin` int(2) NOT NULL,
  `editadmin` int(2) NOT NULL,
  `viewadmin` int(2) NOT NULL,
  `deleteadmin` int(2) NOT NULL,
  `viewroles` int(2) NOT NULL DEFAULT 1,
  `checkboxall` int(2) NOT NULL,
  `DbIDUserId` int(2) NOT NULL,
  `dated` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userpermission`
--

INSERT INTO `userpermission` (`id`, `roleid`, `dashboard`, `changestatus`, `addrole`, `editrole`, `viewrole`, `deleterole`, `addadmin`, `editadmin`, `viewadmin`, `deleteadmin`, `viewroles`, `checkboxall`, `DbIDUserId`, `dated`) VALUES
(1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `status` varchar(20) NOT NULL,
  `dated` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`id`, `name`, `description`, `status`, `dated`) VALUES
(1, 'Admin', 'Super Admin', 'Active', '2017-03-29 11:05:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_industry`
--
ALTER TABLE `tbl_industry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_opening`
--
ALTER TABLE `tbl_opening`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_team`
--
ALTER TABLE `tbl_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `tbl_who_we_are`
--
ALTER TABLE `tbl_who_we_are`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userpermission`
--
ALTER TABLE `userpermission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_industry`
--
ALTER TABLE `tbl_industry`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_opening`
--
ALTER TABLE `tbl_opening`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_team`
--
ALTER TABLE `tbl_team`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_who_we_are`
--
ALTER TABLE `tbl_who_we_are`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `userpermission`
--
ALTER TABLE `userpermission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
