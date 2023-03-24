-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 24, 2022 at 11:05 AM
-- Server version: 8.0.27
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tkchms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tkchms_admin`
--

DROP TABLE IF EXISTS `tkchms_admin`;
CREATE TABLE IF NOT EXISTS `tkchms_admin` (
  `a_id` int NOT NULL AUTO_INCREMENT,
  `a_number` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `a_name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `a_email` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `a_pwd` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `a_dpic` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `a_bio` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tkchms_admin`
--

INSERT INTO `tkchms_admin` (`a_id`, `a_number`, `a_name`, `a_email`, `a_pwd`, `a_dpic`, `a_bio`) VALUES
(1, 'TKSJ1U', 'System Admin', 'sysadmin@tkchms.com', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 'photo_2022-04-02_13-40-51.jpg', '<ul>\r\n	<li>Fullstack Developer</li>\r\n	<li>Software Engineer</li>\r\n	<li>Bugs bounty hunter</li>\r\n	<li>Graphic Designer</li>\r\n</ul>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tkchms_bookings`
--

DROP TABLE IF EXISTS `tkchms_bookings`;
CREATE TABLE IF NOT EXISTS `tkchms_bookings` (
  `b_id` int NOT NULL AUTO_INCREMENT,
  `b_date` timestamp(4) NOT NULL DEFAULT CURRENT_TIMESTAMP(4) ON UPDATE CURRENT_TIMESTAMP(4),
  `b_status` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT 'Pending',
  `c_id` varchar(200) NOT NULL,
  `a_id` varchar(200) NOT NULL,
  `cc_id` varchar(200) NOT NULL,
  `s_id` varchar(200) NOT NULL,
  `car_id` varchar(200) NOT NULL,
  `car_name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `car_type` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `car_regno` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `b_duration` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `car_price` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `c_name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `c_natidno` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `c_phone` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `b_number` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `b_payment` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `b_car_return_status` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tkchms_bookings`
--

INSERT INTO `tkchms_bookings` (`b_id`, `b_date`, `b_status`, `c_id`, `a_id`, `cc_id`, `s_id`, `car_id`, `car_name`, `car_type`, `car_regno`, `b_duration`, `car_price`, `c_name`, `c_natidno`, `c_phone`, `b_number`, `b_payment`, `b_car_return_status`) VALUES
(19, '2022-11-21 13:04:53.5037', 'Approved', '5', '', '1', '', '1', 'Subaru WRX', 'Hatchback', 'KCA 906 G', '7', '3500', 'John Doe', '1234567890', '+0989786767', 'tkchms-B-YFPB-1857 ', 'Paid', 'Returned'),
(20, '2022-11-21 12:54:17.4348', 'Approved', '6', '', '1', '', '2', 'Mazda Demio', 'Hatchback', 'KBT 900T', '1', '3500', 'APELLES MWANGI', '38208647', '0700859542', 'tkchms-B-COYJ-8231 ', 'Paid', 'Returned'),
(21, '2022-11-21 13:14:31.3444', 'Approved', '6', '', '7', '', '3', 'Mercedes-Benz E Class ', 'Convertible', 'KCK 876 T', '6', '4000', 'APELLES MWANGI', '38208647', '0700859542', 'tkchms-B-PWSI-1046 ', 'Paid', 'Returned'),
(22, '2022-11-21 13:13:43.6055', 'Approved', '6', '', '3', '', '8', ' Volkswagen Sharan', 'Multi-Purpose Vehicle (MPV)', 'KCA 100 H', '7', '4000', 'APELLES MWANGI', '38208647', '0700859542', 'tkchms-B-XZUT-7823 ', 'Paid', 'Returned'),
(23, '2022-11-23 09:52:44.0525', 'Approved', '6', '', '1', '', '1', 'Subaru WRX', 'Hatchback', 'KCA 906 G', '1', '3500', 'APELLES MWANGI', '38208647', '0700859542', 'tkchms-B-WMYO-0864 ', NULL, NULL),
(24, '2022-11-24 07:15:38.5136', 'Approved', '9', '', '3', '', '8', ' Volkswagen Sharan', 'Multi-Purpose Vehicle (MPV)', 'KCA 100 H', '3', '4000', 'grace nungari', '340977264', '0722408984', 'tkchms-B-MUTG-9253 ', 'Paid', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tkchms_cars`
--

DROP TABLE IF EXISTS `tkchms_cars`;
CREATE TABLE IF NOT EXISTS `tkchms_cars` (
  `car_id` int NOT NULL AUTO_INCREMENT,
  `car_cat_id` varchar(200) NOT NULL,
  `car_regno` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `car_name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `car_type` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `car_price` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `car_features` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `exterior_img` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `interior_img` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `rear_img` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `front_img` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `car_status` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT 'Available',
  PRIMARY KEY (`car_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tkchms_cars`
--

INSERT INTO `tkchms_cars` (`car_id`, `car_cat_id`, `car_regno`, `car_name`, `car_type`, `car_price`, `car_features`, `exterior_img`, `interior_img`, `rear_img`, `front_img`, `car_status`) VALUES
(1, '1', 'KCA 906 G', 'Subaru WRX', 'Hatchback', '3500', '<h1>Designed to Dominate Corners</h1>\r\n\r\n<div class=\"items-list\">\r\n<ul>\r\n	<li>Subaru Symmetrical All-Wheel Drive</li>\r\n	<li>Track-Tuned Suspension</li>\r\n	<li>Vehicle Dynamics Control with Active Torque Vectoring</li>\r\n	<li>Quick-Ratio Steering and Aluminum Front Lower Control Arms</li>\r\n</ul>\r\n\r\n<h1>Breathtaking Performance</h1>\r\n\r\n<div class=\"items-list\">\r\n<ul>\r\n	<li>Direct-Injection Turbocharged SUBARU BOXER<sup>&reg;</sup> Engine</li>\r\n	<li>Performance Package</li>\r\n	<li>Brembo<sup>&reg;</sup> Performance Brakes</li>\r\n	<li>Sport Lineartronic<sup>&reg;</sup> Transmission</li>\r\n</ul>\r\n\r\n<h1>Flexible with Advanced Technology</h1>\r\n\r\n<div class=\"items-list\">\r\n<ul>\r\n	<li>SUBARU STARLINK<sup>&reg;</sup> Multimedia</li>\r\n	<li>EyeSight<sup>&reg;</sup> Driver Assist Technology</li>\r\n	<li>Harman Kardon<sup>&reg;</sup> Premium Audio</li>\r\n</ul>\r\n\r\n<h1>WRX STI</h1>\r\n\r\n<div class=\"items-list\">\r\n<ul>\r\n	<li>310-hp Turbocharged SUBARU BOXER<sup>&reg;</sup> Engine with Symmetrical All-Wheel Drive</li>\r\n	<li>6-Piston Front and 2-Piston Rear Brembo<sup>&reg;</sup> Brakes</li>\r\n	<li>Recaro<sup>&reg;</sup> Performance Seats</li>\r\n	<li>Lightweight 19-Inch Wheels</li>\r\n	<li>Ultra-Quick Steering Ratio</li>\r\n	<li>Driver Controlled Center Differential</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n', '20_WRX_photos_ext_01.jpg', '20_WRX_photos_int_04.jpg', '20_WRX_photos_ext_08.jpg', '20_WRX_photos_ext_07.jpg', 'Hired'),
(2, '1', 'KBT 900T', 'Mazda Demio', 'Hatchback', '3500', '<p>RHD PETROL 71,000km AT 2WD 5door 5seats PS, AC, RS, NV, AB, ABS, PWFeatures</p>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"accesories\" style=\"height:103px; width:472px\" summary=\"Accessories\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Air Bag</td>\r\n			<td>Anti-Lock Brake System</td>\r\n			<td>Air Conditioner</td>\r\n			<td>Alloy Wheels</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Back Tire</td>\r\n			<td>Fog Lights</td>\r\n			<td>Grill Guard</td>\r\n			<td>Leather Seats</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Navigation</td>\r\n			<td>Power Steering</td>\r\n			<td>Power Windows</td>\r\n			<td>Roof Rails</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rear Spoiler</td>\r\n			<td>Sun Roof</td>\r\n			<td>TV</td>\r\n			<td>Dual Air Bags</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'exterioir.jpg', 'dashboard.jpg', 'Daihatsu Copen 2017-rear.jpeg.jpeg', 'f.jpg', 'Available'),
(3, '7', 'KCK 876 T', 'Mercedes-Benz E Class ', 'Convertible', '4000', '<div class=\"listing-detail__sub-container\">\r\n<h1>Description</h1>\r\n\r\n<p>2011 Mercedes Benz SLK 200 1.8L turbo charged engine 55000 kms Convertible Multifunctional steering wheel Parking sensors with rear camera Electric adjustable seats with memory Heated / cooled seats Air scarf KCR 222 Reg Available in Nairobi. Ksh 2,600,000/=</p>\r\n\r\n<h1 class=\"listing-detail__sub-heading\">Overview</h1>\r\n\r\n<div class=\"listing-detail__attributes\">\r\n<p>Mileage (km) 55000</p>\r\n\r\n<p>Condition Foreign Used</p>\r\n\r\n<p>Body Type&nbsp; Convertibles</p>\r\n\r\n<p>Colour&nbsp; Black</p>\r\n\r\n<p>Fuel Petrol</p>\r\n\r\n<p>Transmission Automatic</p>\r\n\r\n<p>Duty Type Duty Paid</p>\r\n\r\n<p>Interior Type&nbsp; Leather</p>\r\n\r\n<p>Engine Size 1800cc</p>\r\n\r\n<p>Year&nbsp; 2011</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"listing-detail__sub-container\">\r\n<h1 class=\"listing-detail__sub-heading\">Features</h1>\r\n\r\n<ul>\r\n	<li>Air Conditioning</li>\r\n	<li>Airbags</li>\r\n	<li>Alloy Wheels</li>\r\n	<li>AM/FM Radio</li>\r\n	<li>CD Player</li>\r\n	<li>Cup Holders</li>\r\n	<li>Electric Mirrors</li>\r\n	<li>Electric Windows</li>\r\n	<li>External Winch</li>\r\n	<li>Keyless Entry</li>\r\n	<li>Power Steering</li>\r\n	<li>Rear Camera</li>\r\n	<li>Sunroof</li>\r\n	<li>Thumbstart Ignition</li>\r\n	<li>Traction Control</li>\r\n	<li>Turbo Charged</li>\r\n	<li>Wheel Locks</li>\r\n	<li>Xenon Lights</li>\r\n</ul>\r\n</div>\r\n', 'Mercedes_1.jpg', 'Mercedes 3.jpg', 'Mercedes_2.jpg', 'Mercedes_2.jpg', 'Available'),
(5, '4', 'KBT 453L', 'Jeep Wrangler', 'Sports Utility Vehicle (SUV)', '5500', '<div class=\"rich-text-article-section--body\">\r\n<div class=\"article-snippet\">\r\n<div class=\"article-snippet--content\">\r\n<p>Rugged and undeniably capable off-road, the <a href=\"https://www.carmax.com/cars/jeep/wrangler\">Jeep Wrangler</a> puts the utility in sport utility vehicle. For 2019, the Wrangler comes in two-door or four-door options: the two-door is available in Sport, Sport S, and Rubicon trims and the four-door in Sport, Sport S, Sahara, Moab, and Rubicon trims. Love a manual transmission? With its standard 3.6L V6 paired to a six-speed manual (or an available eight-speed automatic), this is the SUV for you. There&#39;s nothing like opening up your Wrangler and feeling the wind envelop your whole body; driving a <a href=\"https://www.carmax.com/cars/jeep/wrangler\">Jeep Wrangler</a> feels like an adventure as soon as you slide behind the wheel.</p>\r\n\r\n<p>The base <a href=\"https://www.carmax.com/cars/jeep/wrangler/2017\">2017</a>-<a href=\"https://www.carmax.com/cars/jeep/wrangler/2019\">2019 Jeep Wrangler</a> includes:</p>\r\n\r\n<ul>\r\n	<li>Tire pressure monitoring system</li>\r\n	<li>Skid plates and tow hooks</li>\r\n	<li>Removable full-metal doors with crank windows</li>\r\n	<li>Fold-down windshield</li>\r\n	<li>Air conditioning (optional on the two-door Sport)</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"rich-text-article-section--title\">\r\n<div class=\"rich-text-article-section--counter rich-text-section-numbering--numbered\">\r\n<div class=\"rich-text-article-section--counter--no-border\">&nbsp;</div>\r\n</div>\r\n</div>\r\n', 'Jeep Wrangler-extr.jpg', 'Jeep Wrangler-interior.jpg', 'Jeep Wrangler-rear.jpeg', 'Jeep Wrangler-front.jpg', 'Available'),
(6, '4', 'KCH 876 V', 'Jeep Grand Cherokee', 'Sports Utility Vehicle (SUV)', '6000', '<div class=\"article-snippet--content\">\r\n<p>The <a href=\"https://www.carmax.com/cars/jeep/grand-cherokee/2019\">2019 Jeep Grand Cherokee</a> offers a wide selection of trims, with seven diverse options. Starting with the base Laredo, which includes a 3.6L V6 engine generating 295 horsepower and 260 lb.-ft. of torque, you will enjoy a plush interior and a host of standard features.</p>\r\n\r\n<p>If you and your family are adventure-oriented, the 2019 Trailhawk is an off-road specialist trim and includes 4WD. And if you really want the whole package plus a blistering 707 horsepower, the 2018-2019 Trackhawk is the one for you.</p>\r\n\r\n<p>The base <a href=\"https://www.carmax.com/cars/jeep/grand-cherokee/2019\">2019 Jeep Grand Cherokee</a> includes the following:</p>\r\n\r\n<ul>\r\n	<li>Dual-zone automatic climate control</li>\r\n	<li>Rearview camera</li>\r\n	<li>Rear parking sensors</li>\r\n	<li>Seven-inch touchscreen (2018-2019 models; 2017 model has a five-inch screen)</li>\r\n	<li>Six-speaker audio system</li>\r\n</ul>\r\n</div>\r\n', 'GrandCherokee-Ext.jpg', 'GrandCherokee-Front.jpg', 'GrandCherokee-EXtrjpg.jpg.jpg', 'GrandCherokee-Front.jpg', 'Available'),
(7, '6', 'KCL 900 N', 'Dodge Challenger', 'Coupe', '7000', '<ul>\r\n	<li>Classic exterior styling</li>\r\n	<li>Roomy interior</li>\r\n	<li>All-weather usability (AWD versions)</li>\r\n	<li>Excellent Uconnect multimedia system</li>\r\n	<li>Massive power (supercharged V-8)</li>\r\n	<li>Front and rear ventilated disc brakes</li>\r\n	<li>Remote activated perimeter/approach lights</li>\r\n	<li>Manual adjustable front head restraints</li>\r\n	<li>Dual front impact airbags</li>\r\n	<li>Remote keyless entry</li>\r\n	<li>Side-impact bars</li>\r\n	<li>Seat-mounted driver and passenger side-impact airbags</li>\r\n	<li>Electronic stability</li>\r\n	<li>Adjustable front head restraints</li>\r\n	<li>Electronic stability stability control with anti-roll</li>\r\n</ul>\r\n', 'Dodge-Ext.jpg', '2020_dodge_challenger_interio.jpg', 'Dodge-Rear.jpeg', '2018 Dodge Challenger SRT Demon (1).jpg', 'Available'),
(8, '3', 'KCA 100 H', ' Volkswagen Sharan', 'Multi-Purpose Vehicle (MPV)', '4000', '<p>They come with</p>\r\n\r\n<ul>\r\n	<li>smart-looking 16-inch alloy wheels,</li>\r\n	<li>Bluetooth connectivity,</li>\r\n	<li>upgraded front seats with lumbar support and an electric backrest adjustment.</li>\r\n	<li>Tinted rear windows,</li>\r\n	<li>cruise control</li>\r\n	<li>&nbsp;range of additional storage cubbies are also included.</li>\r\n</ul>\r\n', 'VW_Sharan_(1).JPG', 'VW_Sharan_rearIN.jpg', 'VW_Sharan_rearJPG.jpeg', 'VW_Sharan_(1).JPG', 'Hired');

-- --------------------------------------------------------

--
-- Table structure for table `tkchms_car_categories`
--

DROP TABLE IF EXISTS `tkchms_car_categories`;
CREATE TABLE IF NOT EXISTS `tkchms_car_categories` (
  `car_cat_id` int NOT NULL AUTO_INCREMENT,
  `car_cat_name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `car_cat_desc` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  PRIMARY KEY (`car_cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tkchms_car_categories`
--

INSERT INTO `tkchms_car_categories` (`car_cat_id`, `car_cat_name`, `car_cat_desc`) VALUES
(1, 'Hatchback', 'A hatchback is a car type with a rear door that opens upwards. They typically feature a four-door configuration, excluding the rear door. However, two-door hatchbacks are not uncommon.'),
(2, 'Sedan | Saloon', 'Out of the different types of cars, a sedan (US) or a saloon (UK) is traditionally defined as a car with four doors and a typical boot/ trunk. A slightly technical detail is that it usually features a 3-box configuration with each of the boxes categorically used for the engine, passenger, and cargo.\n\nSedans have several sub-types such as notchback, fastback, compact, and sub-compact. It may be interesting to note that cars such as the older generation models of the Skoda Octavia are often incorrectly referred to as notchbacks.'),
(3, 'Multi-Purpose Vehicle (MPV)', 'A multi-purpose vehicle (MPV) or multi-utility vehicle (MUV) are commonly known as \'people carriers\'. They are designed to offer enhanced space and comfort for passengers with two or three rows of seating and large doors. The third row on MPVs/ MUVs can generally be reconfigured.'),
(4, 'Sports Utility Vehicle (SUV)', 'Conventionally, a sports utility vehicle (SUV) is a big car built on a body-on-frame chassis, sports increased ground clearance and offers off-roading capabilities to a certain extent. With that said, the aforementioned definition of an SUV has blurred over time and often includes both off-roaders and soft-roaders.'),
(5, 'Crossover', 'A simple, and common, definition of a crossover would be that it is a vehicle that combines the features of an SUV and a hatchback. Crossover vehicles offer soft-roading capabilities and are constructed like a car - they use unibody construction instead of the body-on-frame platform used in SUVs.'),
(6, 'Coupe', 'A coupe is classically defined as a closed two-door car with a fixed roof. Considered sporty by nature, it generally gets just 2 seats or with a smaller-than-average rear. The typical definition of a coupe has evolved over time and differs across manufacturers and now is also ascribed to cars with four doors and coupe-like proportions, chiefly for their sporty appeal instead of number of doors.\r\n\r\n'),
(7, 'Convertible', 'A convertible, a.k.a. a cabriolet or roadster, is a car with a roof structure that can be \'converted\' to allow open-air or enclosed driving. They feature either a retractable hardtop roof or soft folding top.');

-- --------------------------------------------------------

--
-- Table structure for table `tkchms_car_payments`
--

DROP TABLE IF EXISTS `tkchms_car_payments`;
CREATE TABLE IF NOT EXISTS `tkchms_car_payments` (
  `p_id` int NOT NULL AUTO_INCREMENT,
  `c_name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `b_duration` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `p_amt` varchar(200) NOT NULL,
  `car_id` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `car_cat_id` varchar(200) NOT NULL,
  `car_regno` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `car_type` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `car_name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `c_id` varchar(200) NOT NULL,
  `a_id` varchar(200) NOT NULL,
  `c_natidno` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `p_code` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `p_method` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `p_ref_number` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `p_date` timestamp(4) NOT NULL DEFAULT CURRENT_TIMESTAMP(4) ON UPDATE CURRENT_TIMESTAMP(4),
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tkchms_car_payments`
--

INSERT INTO `tkchms_car_payments` (`p_id`, `c_name`, `b_duration`, `p_amt`, `car_id`, `car_cat_id`, `car_regno`, `car_type`, `car_name`, `c_id`, `a_id`, `c_natidno`, `p_code`, `p_method`, `p_ref_number`, `p_date`) VALUES
(15, 'APELLES MWANGI', '1', '3500', '2', '1', 'KBT 900T', 'Hatchback', 'Mazda Demio', '6', '', '38208647', 'tkchms-P-ZKSM-5032 ', 'Mpesa', '1234567899', '2022-11-21 12:54:17.4330'),
(16, 'APELLES MWANGI', '6', '24000', '3', '7', 'KCK 876 T', 'Convertible', 'Mercedes-Benz E Class ', '6', '', '38208647', 'tkchms-P-FZRN-8104 ', 'Mpesa', '4567890098', '2022-11-21 13:06:55.4460'),
(17, 'APELLES MWANGI', '7', '28000', '8', '3', 'KCA 100 H', 'Multi-Purpose Vehicle (MPV)', ' Volkswagen Sharan', '6', '', '38208647', 'tkchms-P-BDLK-9703 ', 'Mpesa', '4567890098', '2022-11-21 13:12:34.0891'),
(18, 'grace nungari', '3', '12000', '8', '3', 'KCA 100 H', 'Multi-Purpose Vehicle (MPV)', ' Volkswagen Sharan', '9', '', '340977264', 'tkchms-P-AQWO-0795 ', 'Bank Deposit', 'MP76543YTREH', '2022-11-24 07:15:38.5121');

-- --------------------------------------------------------

--
-- Table structure for table `tkchms_clients`
--

DROP TABLE IF EXISTS `tkchms_clients`;
CREATE TABLE IF NOT EXISTS `tkchms_clients` (
  `c_id` int NOT NULL AUTO_INCREMENT,
  `c_name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `c_natidno` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `c_phone` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `c_dob` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `c_adr` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `c_email` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `c_pwd` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `c_dpic` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `c_number` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `c_bio` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tkchms_clients`
--

INSERT INTO `tkchms_clients` (`c_id`, `c_name`, `c_natidno`, `c_phone`, `c_dob`, `c_adr`, `c_email`, `c_pwd`, `c_dpic`, `c_number`, `c_bio`) VALUES
(4, 'Huncho Jack', '90056790', '+254737229776', '20-12-1978', 'Kisumu', 'hunchojack@gmail.com', 'a346bc80408d9b2a5063fd1bddb20e2d5586ec30', 'HUncho_Jack.jpeg', 'tkchms-C-XQGJ-7093 ', ''),
(5, 'John Doe', '1234567890', '+0989786767', '12-July-1990', 'Machakos', 'johndoe@gmail.com', '5d7f79058aafc96f76eef0258a61212914cd0e2f', '71.jpg', 'tkchms-C-WLUA-2567 ', ''),
(6, 'APELLES MWANGI', '38208647', '0700859542', '9th March 1997', 'mwihoko', 'njenga@gmail.com', 'fe703d258c7ef5f50b71e06565a65aa07194907f', 'photo_2022-04-02_13-40-36.jpg', 'tkchms-C-FBTW-8629 ', ''),
(7, 'vivian mwangi', '1234234', '0700859542', NULL, 'nairobi', 'vivi6397@gmail.com', 'fe703d258c7ef5f50b71e06565a65aa07194907f', NULL, 'tkchms-C-CWPH-6287 ', NULL),
(8, 'peter mwangi', '11307590', '0722386904', NULL, 'roysamb', 'peter123@gmail.com', 'fe703d258c7ef5f50b71e06565a65aa07194907f', NULL, 'tkchms-C-GLQN-7083 ', NULL),
(9, 'grace nungari', '340977264', '0722408984', '03/07/1968', 'Kahawa sukari', 'nungarigrace12@gmail.com', 'fe703d258c7ef5f50b71e06565a65aa07194907f', 'admin login.png', 'tkchms-C-BAOH-3621 ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tkchms_feedbacks`
--

DROP TABLE IF EXISTS `tkchms_feedbacks`;
CREATE TABLE IF NOT EXISTS `tkchms_feedbacks` (
  `f_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `user_number` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `feedback` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `f_status` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT 'Pending',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tkchms_feedbacks`
--

INSERT INTO `tkchms_feedbacks` (`f_id`, `user_name`, `user_number`, `feedback`, `f_status`) VALUES
(1, 'APELLES MWANGI', 'tkchms-C-FBTW-8629 ', '<p>best services</p>\r\n', 'Pending'),
(2, 'APELLES MWANGI', 'tkchms-C-FBTW-8629 ', '<p>fair hiring prices</p>\r\n', 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `tkchms_pwd_resets`
--

DROP TABLE IF EXISTS `tkchms_pwd_resets`;
CREATE TABLE IF NOT EXISTS `tkchms_pwd_resets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `token` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tkchms_pwd_resets`
--

INSERT INTO `tkchms_pwd_resets` (`id`, `email`, `token`) VALUES
(1, 'martdevelopers254@gmail.com', 'X8AYZSBN3OPM6K5QI74J');

-- --------------------------------------------------------

--
-- Table structure for table `tkchms_staff`
--

DROP TABLE IF EXISTS `tkchms_staff`;
CREATE TABLE IF NOT EXISTS `tkchms_staff` (
  `s_id` int NOT NULL AUTO_INCREMENT,
  `s_name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `s_natidno` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `s_phone` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `s_adr` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `s_no` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `s_email` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `s_pwd` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `s_dpic` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `s_bio` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tkchms_staff`
--

INSERT INTO `tkchms_staff` (`s_id`, `s_name`, `s_natidno`, `s_phone`, `s_adr`, `s_no`, `s_email`, `s_pwd`, `s_dpic`, `s_bio`) VALUES
(1, 'Lydiah Mutheu', '35574881', '+254737229774', '90 Machakos', 'tkchms-S-LKMT-001', 'lydia@carental.com', 'a69681bcf334ae130217fea4505fd3c994f5683f', 'Orion.jpg', ''),
(2, 'Eric Baldwin', '90067590', '+906756432', 'Kansas-Texas', 'tkchms-S-WRIQ-7923 ', 'e_baldwin@tkchms.com', '82266c60cd892fa5ef1dddfcc7ac9202583d6e2d', '06.jpg', ''),
(3, 'Sales Staff', '12700909', '+254740847563', 'Nairobi', 'tkchms-S-LKZG-5613 ', 'sales@carrental.com', 'a69681bcf334ae130217fea4505fd3c994f5683f', '104.JPG', ''),
(4, 'marleytvstation', '2345672345', '0741080708', 'kasa', 'tkchms-S-LBSA-4607 ', 'marley@gmail.com', 'fe703d258c7ef5f50b71e06565a65aa07194907f', 'photo_2022-04-02_13-40-51.jpg', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
