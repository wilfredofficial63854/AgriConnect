-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2023 at 06:52 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agri_connect`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `full_name` text NOT NULL,
  `email_address` text NOT NULL,
  `pass_word` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `full_name`, `email_address`, `pass_word`) VALUES
(1, 'admin', 'admin@agriconnect.com', '$2y$10$ZXbMFhBiV1tf1gsQqBAbwei0NMNxXZpFeMDT828LSmw1QCOYVAkmy');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_id` text NOT NULL,
  `product_name` text NOT NULL,
  `quantity` text NOT NULL DEFAULT '1',
  `amount` text NOT NULL,
  `user_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `product_name`, `quantity`, `amount`, `user_id`) VALUES
(1, '6', 'Apples', '1', '150', ''),
(2, '6', 'Apples', '1', '150', ''),
(3, '6', 'Apples', '1', '150', ''),
(4, '6', 'Apples', '1', '150', '0201144293'),
(5, '6', 'Apples', '17', '2550', '0201144293'),
(6, '4', 'Salad', '1', '200', '0201144293');

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` int(11) NOT NULL,
  `product_id` text NOT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` text NOT NULL,
  `product_description` text NOT NULL,
  `product_category` text NOT NULL,
  `unit_price` text NOT NULL,
  `product_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_description`, `product_category`, `unit_price`, `product_image`) VALUES
(1, 'Green Pepper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum venenatis nulla, id lacinia justo. Sed interdum nulla et dignissim interdum. Morbi cursus sapien et nisl consectetur, ut fermentum mauris accumsan. Nullam sollicitudin, odio et feugiat ullamcorper, risus ipsum blandit eros, ut tristique quam nisi eu nisl. Etiam pulvinar', 'Vegetables', '300', '64402d6bdd9f6_img2.webp'),
(2, 'Chicken', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum venenatis nulla, id lacinia justo. Sed interdum nulla et dignissim interdum. Morbi cursus sapien et nisl consectetur, ut fermentum mauris accumsan. Nullam sollicitudin, odio et feugiat ullamcorper, risus ipsum blandit eros, ut tristique quam nisi eu nisl. Etiam pulvinar', 'Vegetables', '100', '64402d80afad8_img3.webp'),
(3, 'Chicken', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum venenatis nulla, id lacinia justo. Sed interdum nulla et dignissim interdum. Morbi cursus sapien et nisl consectetur, ut fermentum mauris accumsan. Nullam sollicitudin, odio et feugiat ullamcorper, risus ipsum blandit eros, ut tristique quam nisi eu nisl. Etiam pulvinar', 'Vegetables', '100', '64402d82c6549_img3.webp'),
(4, 'Salad', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum venenatis nulla, id lacinia justo. Sed interdum nulla et dignissim interdum. Morbi cursus sapien et nisl consectetur, ut fermentum mauris accumsan. Nullam sollicitudin, odio et feugiat ullamcorper, risus ipsum blandit eros, ut tristique quam nisi eu nisl. Etiam pulvinar', 'Vegetables', '200', '64402d9359175_img5.jpg'),
(5, 'Alefu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum venenatis nulla, id lacinia justo. Sed interdum nulla et dignissim interdum. Morbi cursus sapien et nisl consectetur, ut fermentum mauris accumsan. Nullam sollicitudin, odio et feugiat ullamcorper, risus ipsum blandit eros, ut tristique quam nisi eu nisl. Etiam pulvinar', 'Vegetables', '150', '64402da4b9616_img1.webp'),
(6, 'Apples', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum venenatis nulla, id lacinia justo. Sed interdum nulla et dignissim interdum. Morbi cursus sapien et nisl consectetur, ut fermentum mauris accumsan. Nullam sollicitudin, odio et feugiat ullamcorper, risus ipsum blandit eros, ut tristique quam nisi eu nisl. Etiam pulvinar', 'Fruits', '150', '64402dbc17992_img4.jpg'),
(7, 'Apples', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum venenatis nulla, id lacinia justo. Sed interdum nulla et dignissim interdum. Morbi cursus sapien et nisl consectetur, ut fermentum mauris accumsan. Nullam sollicitudin, odio et feugiat ullamcorper, risus ipsum blandit eros, ut tristique quam nisi eu nisl. Etiam pulvinar', 'Fruits', '150', '64402dbc43e2d_img4.jpg'),
(8, 'Apples', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum venenatis nulla, id lacinia justo. Sed interdum nulla et dignissim interdum. Morbi cursus sapien et nisl consectetur, ut fermentum mauris accumsan. Nullam sollicitudin, odio et feugiat ullamcorper, risus ipsum blandit eros, ut tristique quam nisi eu nisl. Etiam pulvinar', 'Fruits', '150', '64402dbc65e13_img4.jpg'),
(10, 'Apples', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum venenatis nulla, id lacinia justo. Sed interdum nulla et dignissim interdum. Morbi cursus sapien et nisl consectetur, ut fermentum mauris accumsan. Nullam sollicitudin, odio et feugiat ullamcorper, risus ipsum blandit eros, ut tristique quam nisi eu nisl. Etiam pulvinar', 'Fruits', '150', '64402dbcbbcfd_img4.jpg'),
(11, 'Apples', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum venenatis nulla, id lacinia justo. Sed interdum nulla et dignissim interdum. Morbi cursus sapien et nisl consectetur, ut fermentum mauris accumsan. Nullam sollicitudin, odio et feugiat ullamcorper, risus ipsum blandit eros, ut tristique quam nisi eu nisl. Etiam pulvinar', 'Fruits', '150', '64402dbcef61c_img4.jpg'),
(12, 'Apples', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum venenatis nulla, id lacinia justo. Sed interdum nulla et dignissim interdum. Morbi cursus sapien et nisl consectetur, ut fermentum mauris accumsan. Nullam sollicitudin, odio et feugiat ullamcorper, risus ipsum blandit eros, ut tristique quam nisi eu nisl. Etiam pulvinar', 'Fruits', '150', '64402dbd24636_img4.jpg'),
(13, 'Apples', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum venenatis nulla, id lacinia justo. Sed interdum nulla et dignissim interdum. Morbi cursus sapien et nisl consectetur, ut fermentum mauris accumsan. Nullam sollicitudin, odio et feugiat ullamcorper, risus ipsum blandit eros, ut tristique quam nisi eu nisl. Etiam pulvinar', 'Fruits', '150', '64402dbd5509a_img4.jpg'),
(14, 'Apples', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum venenatis nulla, id lacinia justo. Sed interdum nulla et dignissim interdum. Morbi cursus sapien et nisl consectetur, ut fermentum mauris accumsan. Nullam sollicitudin, odio et feugiat ullamcorper, risus ipsum blandit eros, ut tristique quam nisi eu nisl. Etiam pulvinar', 'Fruits', '150', '64402dbd77846_img4.jpg'),
(15, 'Apples', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum venenatis nulla, id lacinia justo. Sed interdum nulla et dignissim interdum. Morbi cursus sapien et nisl consectetur, ut fermentum mauris accumsan. Nullam sollicitudin, odio et feugiat ullamcorper, risus ipsum blandit eros, ut tristique quam nisi eu nisl. Etiam pulvinar', 'Fruits', '150', '64402dbda97a1_img4.jpg'),
(16, 'Apples', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum venenatis nulla, id lacinia justo. Sed interdum nulla et dignissim interdum. Morbi cursus sapien et nisl consectetur, ut fermentum mauris accumsan. Nullam sollicitudin, odio et feugiat ullamcorper, risus ipsum blandit eros, ut tristique quam nisi eu nisl. Etiam pulvinar', 'Fruits', '150', '64402dbdcd510_img4.jpg'),
(17, 'Apples', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum venenatis nulla, id lacinia justo. Sed interdum nulla et dignissim interdum. Morbi cursus sapien et nisl consectetur, ut fermentum mauris accumsan. Nullam sollicitudin, odio et feugiat ullamcorper, risus ipsum blandit eros, ut tristique quam nisi eu nisl. Etiam pulvinar', 'Fruits', '150', '64402dbe04232_img4.jpg'),
(18, 'Apples', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum venenatis nulla, id lacinia justo. Sed interdum nulla et dignissim interdum. Morbi cursus sapien et nisl consectetur, ut fermentum mauris accumsan. Nullam sollicitudin, odio et feugiat ullamcorper, risus ipsum blandit eros, ut tristique quam nisi eu nisl. Etiam pulvinar', 'Fruits', '150', '64402dbe2f92f_img4.jpg'),
(19, 'Apples', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum venenatis nulla, id lacinia justo. Sed interdum nulla et dignissim interdum. Morbi cursus sapien et nisl consectetur, ut fermentum mauris accumsan. Nullam sollicitudin, odio et feugiat ullamcorper, risus ipsum blandit eros, ut tristique quam nisi eu nisl. Etiam pulvinar', 'Fruits', '150', '64402dbe5be3a_img4.jpg'),
(20, 'Apples', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum venenatis nulla, id lacinia justo. Sed interdum nulla et dignissim interdum. Morbi cursus sapien et nisl consectetur, ut fermentum mauris accumsan. Nullam sollicitudin, odio et feugiat ullamcorper, risus ipsum blandit eros, ut tristique quam nisi eu nisl. Etiam pulvinar', 'Fruits', '150', '64402dbe897f5_img4.jpg'),
(21, 'Apples', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum venenatis nulla, id lacinia justo. Sed interdum nulla et dignissim interdum. Morbi cursus sapien et nisl consectetur, ut fermentum mauris accumsan. Nullam sollicitudin, odio et feugiat ullamcorper, risus ipsum blandit eros, ut tristique quam nisi eu nisl. Etiam pulvinar', 'Fruits', '150', '64402dbeb1fa9_img4.jpg'),
(22, 'Apples', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum venenatis nulla, id lacinia justo. Sed interdum nulla et dignissim interdum. Morbi cursus sapien et nisl consectetur, ut fermentum mauris accumsan. Nullam sollicitudin, odio et feugiat ullamcorper, risus ipsum blandit eros, ut tristique quam nisi eu nisl. Etiam pulvinar', 'Fruits', '150', '64402dbee4884_img4.jpg'),
(23, 'Apples', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum venenatis nulla, id lacinia justo. Sed interdum nulla et dignissim interdum. Morbi cursus sapien et nisl consectetur, ut fermentum mauris accumsan. Nullam sollicitudin, odio et feugiat ullamcorper, risus ipsum blandit eros, ut tristique quam nisi eu nisl. Etiam pulvinar', 'Fruits', '150', '64402dbf17f64_img4.jpg'),
(24, 'Apples', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum venenatis nulla, id lacinia justo. Sed interdum nulla et dignissim interdum. Morbi cursus sapien et nisl consectetur, ut fermentum mauris accumsan. Nullam sollicitudin, odio et feugiat ullamcorper, risus ipsum blandit eros, ut tristique quam nisi eu nisl. Etiam pulvinar', 'Fruits', '150', '64402dbf486ff_img4.jpg'),
(25, 'Apples', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum venenatis nulla, id lacinia justo. Sed interdum nulla et dignissim interdum. Morbi cursus sapien et nisl consectetur, ut fermentum mauris accumsan. Nullam sollicitudin, odio et feugiat ullamcorper, risus ipsum blandit eros, ut tristique quam nisi eu nisl. Etiam pulvinar', 'Fruits', '150', '64402dbf76667_img4.jpg'),
(26, 'Apples', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum venenatis nulla, id lacinia justo. Sed interdum nulla et dignissim interdum. Morbi cursus sapien et nisl consectetur, ut fermentum mauris accumsan. Nullam sollicitudin, odio et feugiat ullamcorper, risus ipsum blandit eros, ut tristique quam nisi eu nisl. Etiam pulvinar', 'Fruits', '150', '64402dbf9ec2e_img4.jpg'),
(27, 'Apples', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum venenatis nulla, id lacinia justo. Sed interdum nulla et dignissim interdum. Morbi cursus sapien et nisl consectetur, ut fermentum mauris accumsan. Nullam sollicitudin, odio et feugiat ullamcorper, risus ipsum blandit eros, ut tristique quam nisi eu nisl. Etiam pulvinar', 'Fruits', '150', '64402dbfcd33b_img4.jpg'),
(28, 'Apples', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum venenatis nulla, id lacinia justo. Sed interdum nulla et dignissim interdum. Morbi cursus sapien et nisl consectetur, ut fermentum mauris accumsan. Nullam sollicitudin, odio et feugiat ullamcorper, risus ipsum blandit eros, ut tristique quam nisi eu nisl. Etiam pulvinar', 'Fruits', '150', '64402dc00669a_img4.jpg'),
(29, 'Apples', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum venenatis nulla, id lacinia justo. Sed interdum nulla et dignissim interdum. Morbi cursus sapien et nisl consectetur, ut fermentum mauris accumsan. Nullam sollicitudin, odio et feugiat ullamcorper, risus ipsum blandit eros, ut tristique quam nisi eu nisl. Etiam pulvinar', 'Fruits', '150', '64402dc0235c5_img4.jpg'),
(30, 'Apples', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum venenatis nulla, id lacinia justo. Sed interdum nulla et dignissim interdum. Morbi cursus sapien et nisl consectetur, ut fermentum mauris accumsan. Nullam sollicitudin, odio et feugiat ullamcorper, risus ipsum blandit eros, ut tristique quam nisi eu nisl. Etiam pulvinar', 'Fruits', '150', '64402dc048ae0_img4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` text NOT NULL,
  `email_address` text NOT NULL,
  `pass_word` text NOT NULL,
  `city` text NOT NULL,
  `region` text NOT NULL,
  `phone_number` text NOT NULL,
  `dob` date NOT NULL,
  `sex` text NOT NULL,
  `photo` text NOT NULL,
  `country` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email_address`, `pass_word`, `city`, `region`, `phone_number`, `dob`, `sex`, `photo`, `country`) VALUES
(2, 'Wilfred Baduommie Wubonto', 'wilfredofficial63854@gmail.com', '$2y$10$ZcnD0QUORVJOUojMJernoexk3ExbLraSHPb17n2Yp8gbBv/KuOfsG', 'Tumu', 'Upper West', '0201144293', '2000-10-12', 'Male', '64405102ab6e6_img2.webp', 'Ghana');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
