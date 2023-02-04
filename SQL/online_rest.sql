-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2023 at 02:35 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(10, 'admin', '0192023a7bbd73250516f069df18b500', 'admin@gmail.com', 'QMZR92', '2023-02-04 07:32:52');

-- --------------------------------------------------------

--
-- Table structure for table `admin_codes`
--

CREATE TABLE `admin_codes` (
  `id` int(222) NOT NULL,
  `codes` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_codes`
--

INSERT INTO `admin_codes` (`id`, `codes`) VALUES
(1, 'QX5ZMN'),
(2, 'QFE6ZM'),
(3, 'QMZR92'),
(4, 'QPGIOV'),
(5, 'QSTE52'),
(6, 'QMTZ2J');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(20, 54, 'Cookies and Cream Milktea', 'Cookies and Cream Flavored Milktea', '39.00', '63de248515140.jpg'),
(22, 60, 'Buffalo Siomai', 'A Bunsiomai Premium Flavor - Buffalo Flavored Siomai', '75.00', '63de2573992fa.jpg'),
(23, 62, 'Shawarma Wrap', 'Streetfood Style Shawarma Wrap Buy 1 Take 1', '95.00', '63de264eb0981.jpg'),
(24, 54, 'Buko Milktea', 'Buko Flavored Milktea', '39.00', '63de26bd502b9.jpg'),
(25, 54, 'Dalgona Milktea', 'Dalgona Flavored Milktea', '39.00', '63de26d55d751.jpg'),
(26, 54, 'Dark Chocolate Milktea', 'Dark Chocolate Flavored Milktea', '39.00', '63de26ef016fd.jpg'),
(27, 54, 'Leche Flan Milktea', 'Leche Flan Flavored Milktea', '39.00', '63de27696bdc7.jpg'),
(28, 54, 'Matcha Milktea', 'Matcha Flavored Milktea', '39.00', '63de27aac99f9.jpg'),
(29, 54, 'Okinawa Milktea', 'Okinawa Flavored Milktea', '39.00', '63de27bdc9c89.jpg'),
(31, 54, 'Thai Milktea', 'Thai Flavored Milktea', '39.00', '63de27ef6672a.jpg'),
(32, 54, 'Wintermelon Milktea', 'Wintermelon Flavored Milktea', '39.00', '63de2841ac47b.jpg'),
(33, 54, 'Honey Peach Fruit Tea', 'Honey Peach Flavored Fruit Tea', '39.00', '63de2862d3a44.jpg'),
(34, 54, 'Kiwi Fruit Tea', 'Kiwi Flavored Fruit Tea', '39.00', '63de287e6774c.jpg'),
(35, 59, 'Mocha Frappe', 'Chocolate with Espresso blended with ice topped whipped cream', '125.00', '63de29edccade.png'),
(36, 59, 'Hershey\'s Crumble', 'Hershey\'s Flavored Milktea with tapioca as sinkers over ice topped with oreo crumble', '110.00', '63de2a93b1edc.png'),
(37, 59, 'Cream Cheese Milk Tea', 'Signatured flavored milk tea mixed with cream cheese and tapioca as sinkers over ice', '135.00', '63de2ac6ef5d2.png'),
(38, 59, 'Mocha Crumble Frappe', 'Our signature Mocha Frappe blended with real oreo cookies topped with whipped cream', '140.00', '63de2af27bae6.png'),
(39, 59, 'Oreo Milk Tea', 'Oreo flavored milk tea with tapioca as sinkers over ice topped with Oreo Crumbe', '130.00', '63de2b20c83d3.png'),
(40, 59, 'Wintermelon Milk Tea', 'Wintermelon flavored milk tea with tapioca as sinkers over ice', '90.00', '63de2b5188b4b.png'),
(41, 59, 'Strawberry Frappe', 'Strawberry flavored drink blended with ice and topped with whipped cream and strawberry syrup', '130.00', '63de2b8370977.png'),
(42, 60, 'Garlic Parmesan Siomai', 'A Bunsiomai Premium Flavor - Garlic Parmesan Siomai', '75.00', '63de2bf468a35.jpg'),
(43, 60, 'Honey BBQ Siomai', 'A Bunsiomai Premium Flavor - Honey BBQ Flavored Siomai', '75.00', '63de2c18ba6c8.jpg'),
(44, 60, 'Lemon Glaze Siomai', 'A Bunsiomai Premium Flavor - Lemon Glaze Flavored Siomai', '75.00', '63de2c352684c.jpg'),
(45, 60, 'Soy Garlic Siomai', 'A Bunsiomai Premium Flavor - Soy Garlic Flavored Siomai', '75.00', '63de2c4743ae3.jpg'),
(46, 64, 'Choco Almond Spread', 'Lily\'s Choco Almond Spread', '223.75', '63de2ce503664.png'),
(47, 64, 'Classic Peanut Butter', 'Lily\'s Classic Peanut Butter 364g', '173.14', '63de2ddce3887.png'),
(48, 64, 'Coco Jam', 'Lily\'s Coco Jam 275g', '109.20', '63de2dbb5eb91.png'),
(49, 64, 'Crunchy Peanut Butter', 'Lily\'s Crunchy Peanut Butter 500g', '234.00', '63de2e35d402e.png'),
(50, 64, 'Lite Peanut Spread', 'Lily\'s Lite Peanut Spread 500g', '231.56', '63de2e8c62b1b.png'),
(51, 61, 'Mango Burst Overload Frappe', 'Our best seller Mango Burst Overload Frappe', '130.00', '63de2f86d1dd5.jpg'),
(52, 61, 'Mango Graham Frappe', 'Our best seller Mango Graham Frappe', '110.00', '63de2fa6c3cdf.jpg'),
(53, 61, 'Mango Graham Milkshake', 'Our best seller Mango Graham Milkshake', '110.00', '63de2fc727fee.jpg'),
(54, 61, 'Oreo Graham Fusion', 'Our best seller Oreo Graham Fusion', '130.00', '63de300335d14.jpg'),
(55, 62, 'Quesadillas', 'Buy 1 Take 1 - Streetfood Style Quesadillas', '99.00', '63de308932fc6.jpg'),
(56, 62, 'Shawarma Overload', 'Streetfood Style Shawarma Overload', '90.00', '63de30cf5c3bb.jpg'),
(57, 62, 'Shawarma Rice', 'Buy 1 Take 1 - Streetfood Style Shawarma Rice', '110.00', '63de30f139a5c.jpg'),
(58, 63, 'Bento Cake', 'Trending Bento Cake (4x3)', '200.00', '63de315d63da4.jpg'),
(59, 63, 'Chiffon Themed Cake', 'Chiffon Cake (6x3)', '650.00', '63de31afea158.jpg'),
(60, 63, 'Fondant Cake', 'a bag designed Fondant cake', '550.00', '63de32965a6a1.jpg'),
(61, 63, 'MnM\'s', 'Decadent Chocolate Cake with Dulce de Leche Filling', '500.00', '63de32f715ff4.jpg'),
(62, 63, 'Edible Photo Print Cake', 'A limited promo of edible photo print cake (6x2)', '500.00', '63de334ec53c0.jpg'),
(63, 65, 'Almond Chocolate', 'Premium Doughnuts', '45.00', '63de33ac97853.jpg'),
(64, 65, 'White Almond', 'Premium Doughnuts', '45.00', '63de33be4e3d4.jpg'),
(65, 65, 'MnM\'s', 'Premium Doughnuts', '45.00', '63de340681e53.jpg'),
(66, 65, 'Caramel Filled', 'Special Doughnuts', '52.00', '63de341ecb7bd.jpg'),
(67, 65, 'Choco Butternut', 'Special Doughnuts', '52.00', '63de342c91c4c.jpg'),
(68, 65, 'Choco Streusel', 'Special Doughnuts', '52.00', '63de343f64822.jpg'),
(69, 65, 'Chocolate Overload', 'Special Doughnuts', '52.00', '63de345079a9a.jpg'),
(70, 65, 'Mango Overload', 'Special Doughnuts', '52.00', '63de345c4cfc2.jpg'),
(71, 65, 'Matcha Crazy', 'Special Doughnuts', '52.00', '63de346c3e0f5.jpg'),
(72, 65, 'Signature Cream Filled', 'Special Doughnuts', '52.00', '63de347fa7be4.jpg'),
(73, 66, 'Cheesebomb Takoyaki', 'Regular Cheesebomb Takoyaki', '150.00', '63de34f56dde3.jpg'),
(74, 66, 'Kaisen Takoyaki', 'Kaisen Sea Food Special', '175.00', '63de351f6cad5.jpg'),
(75, 66, 'Okonomiyaki', 'Our new Okonomiyaki', '150.00', '63de353be6bca.jpg'),
(76, 66, 'Takoyaki', 'Your all-time favorite takoyaki regular', '150.00', '63de3552171b9.jpg'),
(77, 66, 'Yakisoba', 'Our new product, try it now!', '160.00', '63de35780e8ec.jpg'),
(78, 67, 'MB Hawaiian Pizza', 'Moringa with Garlic Hawaiian Flavored Pizza', '199.00', '63de35c95b6de.png'),
(79, 68, 'Matcha Milktea', 'Buy 1 Take 1 Matcha Flavored Milktea', '110.00', '63de36ed914ae.jpg'),
(80, 68, 'Red Velvet Milktea', 'Buy 1 Take 1 Red Velvet Flavored Milktea', '110.00', '63de37123bbcf.jpg'),
(81, 68, 'Wintermelon Milktea', 'Buy 1 Take 1 Wintermelon Flavored Milktea', '110.00', '63de373409281.jpg'),
(82, 68, 'Milky Melon Overload', 'Our special Milky Melon Overload', '110.00', '63de374f47484.jpg'),
(83, 68, 'Ovanana Overload', 'Our special Ovanana Overload', '110.00', '63de37666891e.jpg'),
(84, 68, 'Mango Cheese Overload', 'Our special Mango Cheese Overload', '110.00', '63de378fdd892.jpg'),
(85, 68, 'Buco Nata Overload', 'Our special Buco Nata Overload', '110.00', '63de37af4e9b3.jpg'),
(86, 68, 'Mango Graham Overload ', 'Our special Mango Graham Overload', '110.00', '63de37c510879.jpg'),
(87, 68, 'Avocado Overload', 'Our Special Avocado Overload', '110.00', '63de37dc649c2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(71, 43, 'in process', 'Cooking', '2023-02-02 23:57:29'),
(72, 44, 'in process', 'Delivery', '2023-02-02 23:58:41'),
(73, 43, 'closed', 'Delivered', '2023-02-03 00:01:44'),
(74, 44, 'rejected', 'Out of stock', '2023-02-03 00:04:15'),
(75, 45, 'rejected', 'wrong order', '2023-02-04 01:40:07'),
(76, 46, 'in process', 'rewsr', '2023-02-04 02:15:29');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(54, 23, '39ers', '39ersmilkteashop@gmail.com', '+639235837002', 'https://www.facebook.com/39ers-PH-111640841433717/', '10am', '8pm', 'mon-fri', ' 191 P3 Sittio Bukid 4102 Mambog III, Philippines   ', '63de1280694a6.jpg', '2023-02-04 08:08:32'),
(59, 23, 'Bean Street Coffee', 'bscoffee@gmail.com', ' 0999 229 6739', 'https://www.facebook.com/beanstreetcoffeeimus', '8am', '8pm', 'mon-fri', '435 General E Topacio Street, Imus City, Cavite', '63de18849ee9b.png', '2023-02-04 08:34:12'),
(60, 26, 'Bunsiomai', 'bunsiomai@gmail.com', '0977 124 7838', 'https://www.facebook.com/bunsiomai', '11am', '5pm', 'mon-sat', 'Bunsiomai, General Trias, Philippines', '63de1967b992f.jpg', '2023-02-04 08:37:59'),
(61, 23, 'Mango Burst', 'mangoburst@gmail.com', '284424884', 'https://www.facebook.com/profile.php?id=100085484815752', '10am', '6pm', 'mon-fri', '2nd Floor , SM Molino, Bacoor , Cavite', '63de1a5a6b989.jpg', '2023-02-04 08:42:02'),
(62, 27, 'Shawarmad-ness', 'shawarmadnessm2c@gmail.com', '+09939639644', 'shawarmadness.kyte.site', '8am', '8pm', '24hr-x7', 'Open canal malagasang 2-C, Imus City, Cavite', '63de1c24a699a.jpg', '2023-02-04 08:49:40'),
(63, 22, 'Shayne\'s Sweet', 'shaynessweets@gmail.com', ' 09959219705', 'https://www.facebook.com/shaynessweets', '7am', '8pm', 'mon-sat', ' Silang, Cavite, Philippines ', '63de1e9ebfd72.jpg', '2023-02-04 09:00:14'),
(64, 28, 'Lily\'s', 'pr@mylilys.com', '2823428', ' https://shop.mylilys.com/', '6am', '8pm', '24hr-x7', '#9 Serafia St. Balubaran, Malinta, Valenzuela', '63de1ecf66d73.jpg', '2023-02-04 09:01:03'),
(65, 24, 'Signature Doughnuts', 'sig.donuts@gmail.com', '0917 166 6026', 'https://www.facebook.com/profile.php?id=100076541280089', '9am', '3pm', '24hr-x7', '1758 A Maceda Street, Manila, Philippines', '63de1fe808c77.jpg', '2023-02-04 09:05:44'),
(66, 29, 'Takoyaki Sensei', 'takoyakisensei@gmail.com', '0915 950 3767', 'takoyakisensei.com', '10am', '8pm', '24hr-x7', 'In front of Immaculate Heart of Mary Parish, Bucandala 4, Imus City, Cavite', '63de208e94a9c.png', '2023-02-04 09:08:30'),
(67, 25, 'Pizzaringa', 'pizzaringa@gmail.com', '09663489557', 'pizzaringa.com', '10am', '6pm', 'mon-fri', '376 Nicanor Reyes St. Manila, Philippines', '63de21f02015c.png', '2023-02-04 09:14:24'),
(68, 23, 'Mangrae', 'mangraecamachile@gmail.com', '0906 032 5665', 'https://www.facebook.com/MangraeCamachile', '11am', '8pm', 'mon-thu', 'Ecotrend Villas Pasong Camachile Gen. Trias, Cavite', '63de22fa8d013.jpg', '2023-02-04 09:18:50');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(22, 'Cake', '2023-02-04 08:06:24'),
(23, 'Beverages', '2023-02-04 08:06:29'),
(24, 'Doughnuts', '2023-02-04 08:06:35'),
(25, 'Pizza', '2023-02-04 08:06:40'),
(26, 'Siomai', '2023-02-04 08:06:44'),
(27, 'Shawarma', '2023-02-04 08:06:55'),
(28, 'Spreads', '2023-02-04 08:06:59'),
(29, 'Takoyaki', '2023-02-04 08:07:02');

-- --------------------------------------------------------

--
-- Table structure for table `tb_form`
--

CREATE TABLE `tb_form` (
  `email` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_form`
--

INSERT INTO `tb_form` (`email`, `message`) VALUES
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(43, 'user1', 'user', 'tester', 'user@gmail.com', '09663489557', '3b23e12b76e3c3b4f5269ca20e071b16', 'Niog 2 Bacoor City, Cavite', 1, '2023-02-04 10:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `admin_codes`
--
ALTER TABLE `admin_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin_codes`
--
ALTER TABLE `admin_codes`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
