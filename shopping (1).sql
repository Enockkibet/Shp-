-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 25, 2018 at 10:16 AM
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
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-01-24 16:21:18', '21-07-2018 09:10:34 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Chairs', 'Quality Chairs', '2017-01-24 19:17:37', '21-07-2018 09:15:59 PM'),
(4, 'Office Desks', '', '2017-01-24 19:19:32', '21-07-2018 09:16:18 PM'),
(5, 'Sofa', '', '2017-01-24 19:19:54', '21-07-2018 09:18:44 PM'),
(6, 'Bedroom', '', '2017-02-20 19:18:52', '21-07-2018 09:19:17 PM'),
(7, 'Dining', '', '2018-07-21 17:02:42', NULL),
(8, 'Home Decor', '', '2018-07-21 17:03:21', NULL),
(9, 'OCCASIONAL', '', '2018-07-21 17:03:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(7, 4, '21', 1, '2018-07-21 18:19:55', 'Internet Banking', 'Delivered'),
(8, 4, '27', 1, '2018-07-21 21:09:53', 'Debit / Credit card', 'Delivered'),
(9, 4, '23', 1, '2018-07-22 12:07:14', 'Mpesa', 'Delivered'),
(10, 4, '25', 1, '2018-07-22 12:07:14', 'Mpesa', 'Delivered'),
(11, 4, '31', 1, '2018-07-22 12:07:14', 'Mpesa', 'Delivered'),
(12, 1, '24', 1, '2018-07-23 09:26:00', 'Mpesa', NULL),
(13, 1, '25', 1, '2018-07-23 09:26:01', 'Mpesa', NULL),
(14, 12, '23', 1, '2018-07-25 09:53:50', 'Mpesa', NULL),
(15, 12, '25', 1, '2018-07-25 09:53:51', 'Mpesa', NULL),
(16, 1, '23', 1, '2018-07-25 10:03:40', 'Paypal', NULL),
(17, 1, '42', 1, '2018-07-25 10:12:54', 'Paypal', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

DROP TABLE IF EXISTS `ordertrackhistory`;
CREATE TABLE IF NOT EXISTS `ordertrackhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(5, 7, 'Delivered', 'Delivered', '2018-07-21 18:25:18'),
(6, 8, 'in Process', 'dds', '2018-07-21 21:26:18'),
(7, 8, 'Delivered', 'dd', '2018-07-21 21:27:36'),
(8, 9, 'Delivered', 'ff', '2018-07-22 12:11:00'),
(9, 10, 'Delivered', 'd', '2018-07-22 12:11:29'),
(10, 11, 'Delivered', 'dd', '2018-07-22 12:11:44');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

DROP TABLE IF EXISTS `productreviews`;
CREATE TABLE IF NOT EXISTS `productreviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(5, 29, 5, 3, 4, 'Enock Gravids', 'Great Chair', 'Great Chair', '2018-07-21 18:55:22'),
(6, 30, 5, 3, 2, 'Enock Gravids', 'Great Chair', 'moshi', '2018-07-21 21:42:15');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(22, 3, 28, 'American Leather', 'China', 82000, 85000, '<font color=\"#a0a0a0\" face=\"arial\"><span style=\"font-size: 12px;\">&nbsp;High Back Chairs For Living Room Modern Chairs Design New High Back Chairs For Living Room</span></font><br>', 'american-leather-living-room-high-back-chair-nia-chr-hb-penny-cheap-high-back-chairs-for-living-room.jpg', 'american-leather-living-room-high-back-chair-nia-chr-hb-penny-cheap-high-back-chairs-for-living-room.jpg', '', 200, 'In Stock', '2018-07-21 18:20:26', NULL),
(23, 3, 28, 'Sofa Chair', 'China', 7500, 8000, 'Original High back sofa arm chair', '7649eaa371c71512f6cc061fd6f9fbc8--sofa-chair-arm-chairs.jpg', '7649eaa371c71512f6cc061fd6f9fbc8--sofa-chair-arm-chairs.jpg', '', 100, 'In Stock', '2018-07-21 18:37:15', NULL),
(24, 3, 28, 'Living room chair', 'Constance', 9500, 10000, 'Original living room vintage accent chair', 'furniture-furniture-living-room-vintage-accent-chairs-design-with-cheap-high-back-chairs-for-living-room.jpg', 'furniture-furniture-living-room-vintage-accent-chairs-design-with-cheap-high-back-chairs-for-living-room.jpg', '', 0, 'In Stock', '2018-07-21 18:39:32', NULL),
(25, 3, 28, 'Moder Chair design', 'Avira Kenya', 5000, 6000, 'High Back chair for living room', 'high-back-chairs-for-living-room-modern-chairs-design-new-high-back-chairs-for-living-room.jpg', 'high-back-chairs-for-living-room-modern-chairs-design-new-high-back-chairs-for-living-room.jpg', '', 0, 'In Stock', '2018-07-21 18:44:04', NULL),
(26, 3, 28, 'Wicker', 'Avira Kenya', 10000, 12000, '<br>', 'high-back-chairs-for-living-room-wicker-high-back-dining-chairs-simple-high-back-chairs-for-living-room.jpg', 'high-back-chairs-for-living-room-wicker-high-back-dining-chairs-simple-high-back-chairs-for-living-room.jpg', '', 0, 'In Stock', '2018-07-21 18:46:04', NULL),
(27, 3, 28, 'Wing Chair', 'Avira Kenya', 14000, 15000, 'High back wing chair living room contemporary with beach house impressive<br>', 'high-back-wing-chair-living-room-contemporary-with-beach-house-impressive-high-back-chairs-for-living-room.jpg', 'high-back-wing-chair-living-room-contemporary-with-beach-house-impressive-high-back-chairs-for-living-room.jpg', '', 0, 'In Stock', '2018-07-21 18:49:13', NULL),
(28, 3, 28, 'Living room chair', 'Avira Kenya', 15000, 18000, 'Modern furniture living room chair', 'living-room-decor-creative-images-modern-furniture-living-room-best-high-back-chairs-for-living-room.jpg', 'living-room-decor-creative-images-modern-furniture-living-room-best-high-back-chairs-for-living-room.jpg', '', 500, 'In Stock', '2018-07-21 18:51:25', NULL),
(29, 3, 28, 'Modern Furniture Chair', 'China', 12000, 17000, 'Modern creative design chair', 'living-room-decor-creative-images-modern-furniture-living-room-la-cool-high-back-chairs-for-living-room.jpg', 'living-room-decor-creative-images-modern-furniture-living-room-best-high-back-chairs-for-living-room.jpg', '', 200, 'Out of Stock', '2018-07-21 18:53:08', NULL),
(30, 4, 57, 'Modular Office Desk', 'Thitima', 15999, 16999, 'decorating modular office fur with office furniture table trends 2017 using modular office furniture innovative office design and decoration with office fur ideas desks walmart<br>', 'decorating-modular-office-fur-with-office-furniture-table-trends-2017-using-modular-office-furniture-innovative-office-design-and-decoration-with-office-fur-ideas-desks-walmart.jpg', 'decorating-modular-office-fur-with-office-furniture-table-trends-2017-using-modular-office-furniture-innovative-office-design-and-decoration-with-office-fur-ideas-desks-walmart.jpg', '', 0, 'In Stock', '2018-07-21 19:05:57', NULL),
(31, 4, 57, 'Lucido Desk', 'Thitima', 74999, 79999, 'Lucido Desk', 'lucido-desks-5.jpg', 'lucido-desks-5.jpg', '', 300, 'In Stock', '2018-07-21 19:12:14', NULL),
(32, 4, 57, 'Modular Office Furniture Design', 'China Made', 99599, 105999, 'Modular Office Furniture Design<br>', 'modular-office-furniture-photos-wallpaper-gallery-pigsxi-58761116.jpg', 'modular-office-furniture-design-unique-furniture-designer-workstation-modern-new-partition-office-of-modular-office-furniture-design.jpg', '', 700, 'In Stock', '2018-07-21 19:17:50', NULL),
(33, 4, 57, 'Office Cubicles', 'Nairobi Furniture LTD', 110999, 120999, 'Awesome Office Cubicles', 'modular-office-furniture-price-list-awesome-office-cubicles-presentations-are-like-surfing-of-modular-office-furniture-price-list.jpg', 'modular-office-furniture-price-list-awesome-office-cubicles-presentations-are-like-surfing-of-modular-office-furniture-price-list.jpg', '', 500, 'In Stock', '2018-07-21 19:19:20', NULL),
(34, 4, 57, 'Wood Modular Office Desk ', 'Thitima', 84499, 90499, 'Office Furniture Wood Modular Office Desk Staff Workstation for 4 Person<br>', 'Office-Furniture-Wood-Modular-Office-Desk-Staff-Workstation-for-4-Person.jpg', 'Office-Furniture-Wood-Modular-Office-Desk-Staff-Workstation-for-4-Person.jpg', '', 850, 'In Stock', '2018-07-21 19:27:13', NULL),
(35, 5, 36, 'Classical Sofa Chair', 'Furniture LTD', 94999, 98999, 'Classical sofa chair with clipping path<br>', 'classical-sofa-chair-w-clipping-path-7513807.jpg', 'classical-sofa-chair-w-clipping-path-7513807.jpg', '', 950, 'In Stock', '2018-07-21 19:50:08', NULL),
(36, 5, 36, 'Elegant Classic', 'Busnelli inspiration', 82000, 85000, 'Elegant classic sofa collection by busnelli inspiration showroom<br>', 'elegant-classic-sofa-collection-by-busnelli-inspiration-showroom-42e05d5ea2576622.jpg', 'elegant-classic-sofa-collection-by-busnelli-inspiration-showroom-42e05d5ea2576622.jpg', '', 200, 'In Stock', '2018-07-21 19:52:23', NULL),
(37, 5, 36, 'Living room sofa', 'Furniture LTD', 65000, 75000, 'Living room sofa', 'living_room-sofa-038.jpg', 'living_room-sofa-038.jpg', '', 200, 'In Stock', '2018-07-21 19:53:35', NULL),
(38, 5, 36, 'European Sofa', 'Furniture LTD', 130490, 150000, 'White European classical sofa', 'White-European-classical-sofa.jpg', 'White-European-classical-sofa.jpg', '', 850, 'In Stock', '2018-07-21 19:55:06', NULL),
(39, 5, 36, 'Classical Sofa Idealic', 'Furniture LTD', 65000, 85000, 'New Ideas classical sofa', 'new-ideas-classical-sofa-with-0.jpg', 'new-ideas-classical-sofa-with-0.jpg', '', 550, 'Out of Stock', '2018-07-21 19:56:24', NULL),
(40, 5, 36, 'Iron Sofa', 'Avira Kenya', 211549, 230000, 'Classical Iron Sofa', '5abfaeba1f767d11a672298ad3dcc7b3.jpg', '5abfaeba1f767d11a672298ad3dcc7b3.jpg', '5abfaeba1f767d11a672298ad3dcc7b3.jpg', 2500, 'In Stock', '2018-07-21 19:59:31', NULL),
(41, 5, 36, 'Iron Sofa', 'Avira Kenya', 211549, 230000, 'Classical Iron Sofa', '5abfaeba1f767d11a672298ad3dcc7b3.jpg', '5abfaeba1f767d11a672298ad3dcc7b3.jpg', '5abfaeba1f767d11a672298ad3dcc7b3.jpg', 2500, 'In Stock', '2018-07-21 21:11:12', NULL),
(42, 5, 37, 'Sofa Connie', 'Avira Kenya', 82000, 85000, 'ftrftftyg', 'Outdoor-Furniture-PNG-HD.png', 'thumb-1920-270990.jpg', '', 200, 'In Stock', '2018-07-25 10:12:24', NULL),
(43, 5, 37, 'Sofa Connie', 'Avira Kenya', 82000, 85000, 'ftrftftyg', 'Outdoor-Furniture-PNG-HD.png', 'thumb-1920-270990.jpg', '', 200, 'In Stock', '2018-07-25 10:13:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(13, 9, 'Coffee Tables', '2018-07-21 17:06:22', NULL),
(14, 9, 'Tv Stands', '2018-07-21 17:06:39', NULL),
(15, 9, 'Entertainment Units', '2018-07-21 17:07:02', '21-07-2018 10:37:30 PM'),
(16, 9, 'End Tables', '2018-07-21 17:07:21', NULL),
(17, 9, 'Console Tables', '2018-07-21 17:08:44', NULL),
(18, 9, 'Shoe Cabinets', '2018-07-21 17:08:57', NULL),
(19, 6, 'Bedroom Sets', '2018-07-21 17:09:34', NULL),
(20, 6, 'King Beds', '2018-07-21 17:09:48', NULL),
(21, 6, 'Queen Beds', '2018-07-21 17:10:02', NULL),
(22, 6, 'Single Beds', '2018-07-21 17:10:32', NULL),
(23, 6, 'Kids Beds', '2018-07-21 17:10:42', NULL),
(24, 6, 'Dressing Tables', '2018-07-21 17:11:01', NULL),
(25, 6, 'Chest of Drawers', '2018-07-21 17:11:18', NULL),
(26, 6, 'Warddrope', '2018-07-21 17:11:33', NULL),
(27, 6, 'Nightstand', '2018-07-21 17:11:58', NULL),
(28, 3, 'High Back', '2018-07-21 17:12:59', NULL),
(29, 3, 'Low Back', '2018-07-21 17:13:06', NULL),
(30, 3, 'Mesh Chair', '2018-07-21 17:13:18', NULL),
(31, 3, 'Fabric Chair', '2018-07-21 17:13:33', NULL),
(32, 3, 'Visitor', '2018-07-21 17:13:40', NULL),
(33, 3, 'Secretarial', '2018-07-21 17:13:55', NULL),
(34, 3, 'Cashier', '2018-07-21 17:14:06', NULL),
(36, 5, 'Classical Sofa', '2018-07-21 17:16:32', NULL),
(37, 5, 'Recliner Sofa', '2018-07-21 17:16:44', NULL),
(38, 5, 'Sofa Beds', '2018-07-21 17:16:54', NULL),
(39, 5, 'Leather Sofa', '2018-07-21 17:17:06', NULL),
(40, 5, 'Fabric Sofa', '2018-07-21 17:17:22', NULL),
(41, 5, 'Bean Bags', '2018-07-21 17:17:41', NULL),
(42, 7, 'Glass Dining', '2018-07-21 17:18:01', NULL),
(43, 7, 'Wood Dining', '2018-07-21 17:18:10', NULL),
(44, 7, 'Buffet Tables', '2018-07-21 17:18:21', NULL),
(45, 7, 'Bar Counters', '2018-07-21 17:18:34', NULL),
(46, 7, 'Bar Stools', '2018-07-21 17:18:47', NULL),
(47, 7, 'Dining Cabinets', '2018-07-21 17:18:57', NULL),
(48, 8, 'Lanterns Chandeliers', '2018-07-21 17:19:33', NULL),
(49, 8, 'Vases', '2018-07-21 17:19:51', NULL),
(50, 8, 'Rugs & Carpets', '2018-07-21 17:20:10', NULL),
(51, 8, 'Mirrors', '2018-07-21 17:20:26', NULL),
(52, 8, 'Curtains & Blinds', '2018-07-21 17:20:42', NULL),
(53, 8, 'Paintings', '2018-07-21 17:21:00', NULL),
(54, 8, 'Clocks', '2018-07-21 17:21:11', NULL),
(55, 8, 'Photo Frames', '2018-07-21 17:21:23', NULL),
(56, 8, 'Cushions', '2018-07-21 17:21:44', NULL),
(57, 4, 'Modular desks', '2018-07-21 17:23:01', NULL),
(58, 4, 'Executive Desks', '2018-07-21 17:23:13', NULL),
(59, 4, 'Workstation', '2018-07-21 17:23:28', NULL),
(60, 4, 'Credenza', '2018-07-21 17:23:49', NULL),
(61, 4, 'Pedestal', '2018-07-21 17:24:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 'kibetenockg@gmail.com', 0x3a3a3100000000000000000000000000, '2018-07-21 15:52:28', NULL, 0),
(25, 'kibetenockg@gmail.com', 0x3a3a3100000000000000000000000000, '2018-07-21 18:19:48', '21-07-2018 11:56:28 PM', 1),
(26, 'kibetenockg@gmail.com', 0x3a3a3100000000000000000000000000, '2018-07-21 18:41:35', NULL, 1),
(27, 'kibetenockg@gmail.com', 0x3a3a3100000000000000000000000000, '2018-07-22 12:07:08', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(30) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(4, 'Enock', 'kibetenockg@gmail.com', 254712032, 'ca000c9695d8ae53ef99516937d634eb', '875 Nairobi', 'Westlands', 'Nairobi', 44, '25478', 'Westlands', 'Nairobi', 232, '2018-07-21 18:19:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(2, 4, 30, '2018-07-21 19:07:22');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
