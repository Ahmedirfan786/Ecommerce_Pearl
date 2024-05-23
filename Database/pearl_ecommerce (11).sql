-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2024 at 08:53 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pearl_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', 'Test@123');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`) VALUES
(1, 'Jewelery', 'Cosmetics are like an artist\'s palette, offering an enchanting array of colors and textures that allow individuals to paint their own unique masterpiece of beauty. These exquisite products are more than just makeup; they are a form of self-expression and ', 'jewelery.png'),
(3, 'Cosmetics', 'cosmetics is good', 'cosmetics.jpg'),
(6, 'Perfume', 'Fragnance and Perfume', 'perfume.jpg'),
(7, 'Hats', 'hatsabc', 'php.png');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `work_phone` varchar(15) DEFAULT NULL,
  `cell_phone` varchar(15) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `address`, `email`, `work_phone`, `cell_phone`, `date_of_birth`, `password`) VALUES
(1, 'Ahmed Irfan', 'demo 123', 'ahmed@gmail.com', '0300000', '030000', '2004-07-07', 'Ahmed123'),
(2, 'Bilal', 'demo demo', 'bilal@gmail.com', '0123456789', '0123456789', '2023-10-15', 'bilal123'),
(4, 'kamran', 'ewqe', 'kamran@gmail.com', '124', '124', '2004-06-09', 'kamran123'),
(7, 'Kashif', 'demo address', 'kashif@gmail.com', '03000000000', '03000000000', '2005-09-09', 'kashif123'),
(8, 'John', '123 Main St', 'john@gmail.com', '1234567890', '0987654321', '1990-05-15', 'johnDoe'),
(9, 'Emily', '456 Elm St', 'emily@gmail.com', '9876543210', '0123456789', '1987-12-20', 'emilySmith'),
(10, 'Michael', '789 Oak St', 'michael@gmail.com', '5555555555', '6666666666', '2000-03-25', 'michaelJohnson'),
(11, 'Sarah', '101 Pine St', 'sarah@gmail.com', '7777777777', '8888888888', '1995-08-17', 'sarahBrown'),
(12, 'David', '555 Maple St', 'david@gmail.com', '2222222222', '3333333333', '1992-11-30', 'davidWilson'),
(13, 'Olivia', '999 Birch St', 'olivia@gmail.com', '4444444444', '9999999999', '1988-04-10', 'oliviaDavis'),
(14, 'William', '777 Cedar St', 'william@gmail.com', '6666666666', '1111111111', '1980-09-05', 'williamMiller'),
(15, 'Sophia', '333 Redwood St', 'sophia@gmail.com', '9999999999', '2222222222', '1983-06-14', 'sophiaMartinez'),
(16, 'James', '222 Juniper St', 'james@gmail.com', '3333333333', '7777777777', '1975-02-02', 'jamesHarris'),
(17, 'Ava', '888 Sequoia St', 'ava@gmail.com', '1234567890', '5555555555', '1982-10-12', 'avaLewis'),
(18, 'Benjamin', '444 Oak St', 'benjamin@gmail.com', '1111111111', '4444444444', '1978-07-07', 'benjaminLee'),
(19, 'Charlotte', '666 Pine St', 'charlotte@gmail.com', '2222222222', '6666666666', '1970-01-01', 'charlotteClark'),
(20, 'Daniel', '111 Elm St', 'daniel@gmail.com', '5555555555', '9999999999', '1965-12-25', 'danielPerez'),
(21, 'Andrew', '123 Gold St', 'andrew@gmail.com', '5555555555', '9999999999', '1990-10-13', 'andrew'),
(22, 'Shiraz', 'abc ', 'shiraz@gmail.com', '1234567890', '1234567890', '1999-01-21', 'shiraz123'),
(23, 'jaksfb', 'aksnf', 'alsf@gmail.com', '234', '', '0000-00-00', ''),
(24, 's.adfn', '', '', '', '', '0000-00-00', ''),
(25, 'yg', '', 'gv@gmail.com', '', '', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `order_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `product_name`, `product_price`, `product_image`, `quantity`, `status`, `order_date`) VALUES
(1, 2, 'Emerald Watch', 25000, '', 1, 'delivered', '2023-10-18 10:42:30'),
(2, 2, 'Emerald Watch', 25000, '', 5, 'delivered', '2023-10-18 10:43:46'),
(3, 2, 'Gold watch', 15000, '', 1, 'delivered', '2023-10-18 10:43:46'),
(4, 2, 'Red Lipstick', 500, '', 2, 'approved', '2023-10-18 10:48:29'),
(5, 2, 'Red Lipstick', 500, '', 2, 'rejected', '2023-10-18 10:49:50'),
(6, 2, 'Emerald Watch', 25000, '', 1, 'approved', '2023-10-18 10:52:29'),
(7, 2, 'Emerald Watch', 25000, '', 1, 'approved', '2023-10-18 01:59:47'),
(8, 2, 'Red Lipstick', 500, '', 1, 'approved', '2023-10-18 02:01:19'),
(9, 2, 'Kashmiri Earings', 1500, '', 1, 'rejected', '2023-10-18 04:13:29'),
(10, 2, 'Emerald Watch', 25000, '', 1, 'rejected', '2023-10-18 04:13:29'),
(11, 1, 'Gold watch', 15000, '', 5, 'delivered', '2023-10-18 10:05:07'),
(12, 1, 'Kashmiri Earings', 1500, '', 1, 'approved', '2023-10-19 07:32:36'),
(13, 4, 'Gold watch', 15000, '', 1, 'approved', '2023-10-19 09:12:08'),
(14, 4, 'Emerald Watch', 25000, '', 5, 'approved', '2023-10-19 09:13:39'),
(15, 4, 'Lavender Perfume', 3000, '', 3, 'approved', '2023-10-19 10:11:03'),
(16, 7, 'Gold Necklace n Earings', 80000, '', 5, 'approved', '2023-10-19 10:46:51'),
(17, 8, 'Silver Ring', 3000, '', 2, 'approved', '2023-10-19 10:51:26'),
(18, 9, 'Golden necklace2', 12000, '', 5, 'approved', '2023-10-19 11:06:09'),
(19, 9, 'Red Lipstick', 500, '', 1, 'approved', '2023-10-19 11:06:09'),
(20, 10, 'Golden Necklace', 50000, '', 1, 'delivered', '2023-10-19 11:29:17'),
(21, 1, '1881 Perfume', 2000, '', 1, 'approved', '2023-10-25 00:35:20'),
(22, 2, 'Lavender Purple Perfume', 3000, '', 1, 'pending', '2023-10-25 02:59:51'),
(23, 2, 'Red Lipstick', 500, '', 1, 'pending', '2023-10-25 03:59:46'),
(24, 2, 'Emerald Watch', 25000, 'emeraldwatch.png', 1, 'pending', '2023-10-25 04:00:28'),
(25, 1, 'Divine Perfume', 2500, 'perfume2.jpg', 1, 'pending', '2023-10-31 04:03:12'),
(26, 1, 'Makeup_kit', 2000, 'makeupkit.jpg', 1, 'delivered', '2023-10-31 12:51:44'),
(27, 1, 'Divine Perfume', 2500, 'perfume2.jpg', 4, 'delivered', '2023-11-10 02:48:02'),
(28, 1, 'Silver Ring', 3000, 'ring.jpeg', 4, 'approved', '2023-11-10 03:10:31');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pro_name` varchar(255) NOT NULL,
  `pro_short_info` varchar(255) NOT NULL,
  `pro_price` varchar(255) NOT NULL,
  `pro_description` varchar(255) NOT NULL,
  `pro_image` varchar(255) NOT NULL,
  `cat_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_short_info`, `pro_price`, `pro_description`, `pro_image`, `cat_type_id`) VALUES
(3, 'Gold watch', 'Gold Watch!! its beautiful', '15000', 'a', 'goldwatchlw.jpeg', 1),
(4, 'Emerald Watch', 'Emerald Watch!! Amazing', '25000', 'b', 'emeraldwatch.png', 1),
(5, 'Makeup_kit', 'Make up kit!! colorful kit beautiful', '2000', 'c', 'makeupkit.jpg', 3),
(6, 'Red Lipstick', 'Lipstick!! Perfect', '500', 'd', 'lipstick.png', 3),
(7, 'Lavender Purple Perfume', 'Smells really good', '3000', 'e', 'Lavenderperfume.jpg', 6),
(8, 'Gold Ring', 'Old is Gold ', '5000', 'f', 'ring3.jpeg', 1),
(9, 'Ruby Ring', 'Ring with Ruby', '10000', 'g', 'ring2.jpeg', 1),
(10, 'Silver Ring', 'Silver ring the coldness of sight', '3000', 'h', 'ring.jpeg', 1),
(11, 'Golden Necklace', 'Neclace made up of pure gold', '50000', 'i', 'necklace2.jpeg', 1),
(12, 'Gold Necklace n Earings', 'Pure Gold Necklace & Earings', '80000', 'j', 'necklace3.jpeg', 1),
(13, 'Golden Necklace2', 'gold', '12000', 'k.', 'necklace1.jpeg', 1),
(14, 'Kashmiri Earings', 'Cultural Earings from a beautiful land kashmir', '1500', 'l', 'earings1.jpg', 1),
(15, 'Divine Perfume', 'Smells beautiful', '2500', 'm', 'perfume2.jpg', 6),
(16, '1881 Perfume', 'Perfume having retro smell reminding of memories', '2000', '1881 Perfume smells really good.A perfume from old times.Perume of your forefathers', 'perfume3.jpg', 6),
(18, 'hat1', 'hats', '100', 'abc', 'karachi.jpg', 7);

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `review_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `review` varchar(255) DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `review_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`review_id`, `customer_id`, `order_id`, `product_id`, `product_name`, `review`, `rating`, `review_date`) VALUES
(1, 2, 3, 3, 'Gold watch', 'abc', '⭐⭐⭐⭐⭐', '2023-10-25 10:16:03'),
(3, 1, 11, 3, 'Gold watch', 'It very good i like it', '⭐⭐⭐⭐⭐', '2023-10-31 12:09:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_type_id` (`cat_type_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `cat_type_id` FOREIGN KEY (`cat_type_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_reviews_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_reviews_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
