-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 29, 2024 at 11:11 AM
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
-- Database: `gautam-liquor-store`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` int(11) NOT NULL,
  `added_on` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `product_id`, `quantity`, `price`, `added_on`) VALUES
(180, 9, 9, 1, 7200, '2024-05-26 14:19:39');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(3, 'Wine'),
(4, 'Whisky'),
(6, 'Beer'),
(7, 'Vodka'),
(8, 'Cold Drink');

-- --------------------------------------------------------

--
-- Table structure for table `confirmed_payments`
--

CREATE TABLE `confirmed_payments` (
  `id` int(11) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `total`, `address`, `payment_method`, `status`, `created_at`) VALUES
(6, 8, 17000.00, 'Laudantium officia ', 'cod', 'pending', '2024-05-07 11:35:52'),
(7, 8, 7200.00, 'Ut deserunt dolorem ', 'cod', 'pending', '2024-05-07 12:11:44'),
(8, 8, 7200.00, 'jkadsjfajkdsghf', 'cod', 'pending', '2024-05-07 12:48:20'),
(9, 8, 24200.00, 'Balaju, Kathmandu', 'cod', 'pending', '2024-05-09 06:14:19'),
(11, 8, 8500.00, 'kathmandu', 'esewa', 'pending', '2024-05-17 04:05:04'),
(12, 8, 15700.00, 'kathmandu', 'cod', 'pending', '2024-05-17 04:18:40'),
(21, 8, 25480.00, 'kathmandu', 'esewa', 'pending', '2024-05-17 05:48:02'),
(22, 8, 32700.00, 'kathmandu', 'esewa', 'pending', '2024-05-17 06:49:26'),
(24, 8, 2155.00, 'Nepal, Kathmandu', 'cod', 'pending', '2024-05-19 07:00:49'),
(25, 8, 7200.00, 'Nepal, Kathmandu', 'cod', 'pending', '2024-05-19 07:09:38'),
(26, 8, 8500.00, 'ktm', 'cod', 'pending', '2024-05-19 07:36:37'),
(28, 8, 535.00, 'kathmandu', 'cod', 'pending', '2024-05-19 12:01:02'),
(29, 9, 7200.00, 'kathmandu', 'esewa', 'pending', '2024-05-19 19:27:41'),
(30, 9, 8500.00, 'kathmandu', 'esewa', 'pending', '2024-05-20 18:00:41'),
(31, 9, 1025.00, '', '', 'pending', '2024-05-21 05:34:38'),
(32, 9, 1025.00, 'Nepal, Kathmandu', 'cod', 'pending', '2024-05-21 05:40:21'),
(33, 9, 1025.00, 'Nepal, Kathmandu', 'cod', 'pending', '2024-05-21 05:43:21'),
(34, 9, 7200.00, 'ktm', 'cod', 'pending', '2024-05-21 09:53:27'),
(35, 9, 2400.00, 'Nepal, Kathmandu', 'esewa', 'pending', '2024-05-21 13:51:22'),
(36, 9, NULL, 'Nepal, Kathmandu', 'cod', 'pending', '2024-05-21 13:59:44'),
(37, 9, 3955.00, 'Nepal, Kathmandu', 'esewa', 'pending', '2024-05-21 14:33:16'),
(38, 9, NULL, 'Nepal, Kathmandu', 'cod', 'pending', '2024-05-21 14:33:29'),
(39, 9, 2170.00, 'nepal', 'cod', 'pending', '2024-05-21 18:33:39'),
(42, 9, 2170.00, 'Nepal, Kathmandu', 'esewa', 'pending', '2024-05-22 04:21:18'),
(43, 9, 2170.00, 'ad', 'cod', 'pending', '2024-05-22 04:22:43'),
(44, 9, 2170.00, '', '', 'pending', '2024-05-22 04:24:23'),
(45, 9, 7200.00, 'as', 'cod', 'pending', '2024-05-22 04:24:31'),
(46, 9, 7200.00, 'okok', 'cod', 'pending', '2024-05-22 04:25:02'),
(47, 9, 7200.00, 'kk', 'cod', 'pending', '2024-05-22 04:52:05'),
(48, 9, 7200.00, '', '', 'pending', '2024-05-22 04:54:26'),
(49, 9, 2170.00, '', '', 'pending', '2024-05-22 04:57:01'),
(50, 9, 2170.00, '', '', 'pending', '2024-05-22 04:57:55'),
(51, 9, 8500.00, '', '', 'pending', '2024-05-22 04:58:23'),
(52, 9, 8500.00, 'adada', 'cod', 'pending', '2024-05-22 04:59:42'),
(53, 9, NULL, 'jkahdakdsa', 'esewa', 'pending', '2024-05-22 05:04:34'),
(54, 9, 8500.00, 'kathmandu, Nepla', 'esewa', 'pending', '2024-05-22 14:38:37'),
(55, 9, 8500.00, 'tghjk', 'esewa', 'pending', '2024-05-23 07:29:07'),
(56, 9, 2170.00, 'khkjhdfs', 'esewa', 'pending', '2024-05-23 11:59:51'),
(57, 9, 7200.00, 'kathmandu', 'esewa', 'pending', '2024-05-23 16:07:50'),
(58, 9, 2170.00, '', '', 'pending', '2024-05-23 17:31:48'),
(59, 9, 8500.00, '', '', 'pending', '2024-05-23 17:32:23'),
(60, 9, 535.00, ',m., .,', 'esewa', 'pending', '2024-05-25 06:03:05'),
(61, 9, 2170.00, 'a,msa', 'esewa', 'pending', '2024-05-25 08:47:26'),
(62, 9, 7200.00, 'lklk', 'esewa', 'pending', '2024-05-26 07:20:26'),
(63, 9, 7200.00, 'sdfgh', 'esewa', 'pending', '2024-05-26 08:01:47');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `item_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`item_id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(12, 7, 9, 1, 7200.00),
(13, 8, 9, 1, 7200.00),
(14, 9, 8, 2, 8500.00),
(15, 9, 9, 1, 7200.00),
(16, 11, 8, 1, 8500.00),
(17, 12, 8, 1, 8500.00),
(18, 12, 9, 1, 7200.00),
(19, 21, 10, 4, 2170.00),
(20, 21, 9, 1, 7200.00),
(21, 21, 9, 1, 7200.00),
(22, 21, 12, 1, 2400.00),
(23, 22, 8, 3, 8500.00),
(24, 22, 9, 1, 7200.00),
(25, 24, 11, 1, 2155.00),
(27, 26, 8, 1, 8500.00),
(28, 28, 17, 1, 535.00),
(29, 29, 9, 1, 7200.00),
(30, 30, 8, 1, 8500.00),
(31, 31, 18, 1, 1025.00),
(32, 32, 18, 1, 1025.00),
(33, 33, 18, 1, 1025.00),
(34, 34, 9, 1, 7200.00),
(35, 35, 12, 1, 2400.00),
(36, 37, 19, 1, 3955.00),
(37, 39, 10, 1, 2170.00),
(38, 42, 10, 1, 2170.00),
(39, 43, 10, 1, 2170.00),
(40, 44, 10, 1, 2170.00),
(41, 45, 9, 1, 7200.00),
(42, 46, 9, 1, 7200.00),
(43, 47, 9, 1, 7200.00),
(44, 48, 9, 1, 7200.00),
(45, 49, 10, 1, 2170.00),
(46, 50, 10, 1, 2170.00),
(47, 51, 8, 1, 8500.00),
(48, 52, 8, 1, 8500.00),
(49, 54, 8, 1, 8500.00),
(50, 55, 8, 1, 8500.00),
(51, 56, 10, 1, 2170.00),
(52, 57, 9, 1, 7200.00),
(53, 58, 10, 1, 2170.00),
(54, 59, 8, 1, 8500.00),
(55, 60, 17, 1, 535.00),
(56, 61, 10, 1, 2170.00),
(57, 62, 9, 1, 7200.00),
(58, 63, 9, 1, 7200.00);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sku` varchar(50) NOT NULL,
  `product_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `quantity`, `category_id`, `sku`, `product_image`) VALUES
(8, 'Buffalo Trace Kentucky Bourbon Whiskey 750ML', 'Buffalo Trace Kentucky Straight Bourbon Whiskey is distilled, aged and bottled at the most award-winning distillery in the world.\r\n\r\nMade from the finest corn, rye and barley malt, this whiskey ages in new oak barrels for years in century old warehouses until the peak of maturity.\r\n\r\nThe taste is rich and complex, with hints of vanilla, toffee and candied fruit. The smooth finish lingers on the palate. This will never change.', 8500.00, 5, 4, 'WKB750', 'img_663a1055be5fe2.96830152.png'),
(9, 'Kentucky Tavern Bourbon Whiskey 1L', 'First produced in the early 1900s, the legendary Kentucky Tavern Bourbon brand was created by whiskey pioneer James Thompson who founded the famous Glenmore Distillery in Owensboro, KY.\r\n\r\nCOLOUR: Burnished copper.\r\n\r\nNOSE: Caramel, raisin, grain husk, and reedy wood aromas.\r\n\r\nPALATE: Somewhat muted, dryish medium body with black pepper, sweet buttercream, and spice accents.\r\n\r\nFINISH: Finishes with a creamy vanilla and white ash fade.', 7200.00, 5, 4, 'WKK1000', 'img_663a10f0beb886.21490995.png'),
(10, ' Two Oceans Chardonnay 750ML', 'Colour: Light straw with golden specs.\r\n\r\nNose:Fruit dominated aromas of subtle citrus, apricot and lime with delicate oak nuances in the background.\r\n\r\nPalate: This medium-bodied, lightly-oaked wine has abundant fruit flavours complemented by a fantastic acid/sugar balance to keep it lingering in the mouth.\r\n\r\nRecommendations: Enjoy with fish, roast chicken and light salads.', 2170.00, 10, 3, 'WNT750', 'img_663a1138c0bb32.76501111.png'),
(11, 'Ruslan Premium 750ML + 1 Soan Papdi 200G Free', '~~ Ruslan Vodka Special Offer ~~\r\nGet 1 Soan Papdi 200G FREE with each bottle!\r\n~~~~~~\r\n\r\nThe most popular vodka in Nepal for over 25 years. Traditional ingredients based on an old Russian recipe State of the art filtration technology and triple distillation ensuring a crisp, consistent taste.\r\n\r\nA true 100% pure Vodka with no after effects.', 2155.00, 0, 7, 'VDK1', 'img_663d208620ba22.21021982.png'),
(12, 'SKYY Vodka 750ML (Bottled in Nepal) + 1 Fanny Bag Free', '~~ SKYY Vodka Special Offer ~~\r\nGet 1 Fanny Bag FREE with each bottle!\r\n~~~~~~\r\n\r\nBorn in San Francisco in 1992, SKKY Vodka is made with grain based imported spirits.\r\n\r\nInspired by the pure, clean essence of the San Francisco coast, SKYY delivers a lighter, fresher-tasting vodka & soda with character.', 2400.00, 3, 7, 'VK2', 'img_663d20d62fb3d0.88029466.png'),
(13, 'Tuborg 330ML x 5 Bottles + 1 Glass Free', '~~ Tuborg Beer Special Offer ~~\r\nBuy 5 Bottles and Get 1 Exclusive Glass FREE!\r\n~~~~~~\r\n\r\nLaunched in Nepal in 1990 and enjoyed worldwide since 1880, Tuborg is the largest selling, most preferred and therefore the number 1 beer brand in Nepal.\r\n\r\nTuborg recently unveiled its new look with the innovative Pull-Off Cap for the first time in Nepal.', 1125.00, 10, 6, 'BRT1', 'img_663d211f6c6bf2.15554300.png'),
(14, 'VAT 69 750ML', 'VAT 69 is a blended Whisky produced by William Sanderson. It has upfront malty, heather sweetness and a lovely peat smoke savoury finish.', 4750.00, 4, 4, 'WK69', 'img_663d2181f04474.62370265.png'),
(15, 'Arna 6.4 Special Edition Bottle 330ML', 'This Special Edition Beer is dedicated to the Nepal Cricket Fans and is brewed using Malt, Rice, Hops, Water and lots of Nepalese Passions and Emotions.', 170.00, 20, 6, 'BR2', 'img_663d22013fdca5.23272796.png'),
(16, 'Barahsinghe Craft Yaktoberfest Marzen Style Bottle 650ML', 'Barahsinghe Yaktoberfest is a malty German amber lager that has been part of the Oktoberfest celebration.\r\n\r\nBrewed with imported Munich, Vienna and Pilsner malts, natural spring water and noble hops, this Marzen style beer balanced with spicy hop aromatics will certainly keep your Oktoberfest spirit alive.', 400.00, 10, 6, 'BR400', 'img_663d2232d86c47.40783566.png'),
(17, '8848 Vodka 180ML', 'Mount Everest, known as Chhomolungma by Sherpas meaning “Mother Goddess of the Earth” is the highest point in the world standing at 8848 meters. This vodka is crafted from imported grain spirits, distilled from Soft French Winter Wheat, and blended in small batches with Pure Spring Water from the Himalayas.', 535.00, 10, 7, 'VK8848', 'img_663d228a0936b0.58874599.png'),
(18, 'Manang Valley Premium Sweet White 750ML', 'Embark on a journey of discovery and wonder with our exquisite wines, crafted from a tantalizing blend of homegrown apples handpicked from our own orchard, 3000 meters above sea level.\r\n\r\nNurtured by the pure and icy-cold glacial streams of the Marshyangdi River, our wine promises a refreshingly unique & artistic experience that will captivate your senses and ignite your spirit.\r\n\r\nSavor the essence of the Annapurna mountains with every sip, as the crisp and clean flavors capture the untamed wilderness of Manang. Join us on a thrilling adventure through the natural wonders of the Himalayas and indulge in the spirit of our handcrafted mountain wine.', 1025.00, 5, 3, 'WN765', 'img_663d238b3c9eb5.22863953.png'),
(19, 'Big Master Sweet Red 4L Box', 'Wine Style: Original fruits (grape) natural flavour with sweet red wine finish.\r\n\r\nRecommendations: Enjoy with baked pasta, roasted meat or your favourite dishes.\r\n\r\nServing Temperature: 14-18 °C', 3955.00, 5, 3, 'WNBM1', 'img_663d23cc8b2506.44469388.png');

-- --------------------------------------------------------

--
-- Table structure for table `product_transactions`
--

CREATE TABLE `product_transactions` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `transaction_type` enum('buy','sell') NOT NULL,
  `quantity` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_transactions`
--

INSERT INTO `product_transactions` (`id`, `product_id`, `transaction_type`, `quantity`, `date`) VALUES
(5, 8, 'buy', 1, '2024-05-20 15:10:31'),
(6, 17, 'sell', 3, '2024-05-20 15:10:57'),
(7, 13, 'sell', 5, '2024-05-21 05:45:42'),
(8, 9, 'sell', 3, '2024-05-22 04:16:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','client') NOT NULL,
  `phone` bigint(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `phone`, `address`, `age`) VALUES
(1, 'admin', 'admin@admin.com', 'admin', 'admin', 0, '', 0),
(2, 'Kimberly York', 'xunibikef@mailinator.com', '$2y$10$ZwlyPy4f/AorC1uV5v/wWOYIMt9TOIyo1IO1v.qWLI0WD0jDNdx6G', 'admin', 39, 'Laudantium officia ', 0),
(3, 'Barrett Day', 'tyvufykok@mailinator.com', '$2y$10$zqe5d90V/ulBqvbpvXvtYezwMb4z/AdGd4ZW.HAbXVo97tcnREV0G', 'admin', 216, 'Hic labore eveniet ', 0),
(4, 'Chaim Mendoza', 'bywa@mailinator.com', '$2y$10$bOj0SUcrQmKaEYJdnD31KObabFrYry7ZsGgf3cCY8zds/uJTXRjvi', 'admin', 324, 'Tempor illo non est ', 0),
(5, 'Mohan Basnet', 'basnet.mohan2030@gmail.com', '$2y$10$p5KyTRPnRh2n5PKGlzPI9OnP8VaRY7B8THcascU.p2019xjbKwnYu', 'admin', 560, 'Anix', 0),
(6, 'Client1', 'client@admin.com', '$2y$10$i0HEiPbGVw1JbPxm4iBGJ.78c1Pc0Yy.ATMvJNiOz8nvcTaLfIKdq', 'admin', 234234, 'Chabahil', 0),
(8, 'Vasme Don', 'vasme@client.com', '$2y$10$E25.jGgJG4PgISNaKx8QEOaVgNRWE5GSdO8/E.qekVPNtVWCxzZdW', 'admin', 981111111, 'Chabahil', 30),
(9, 'kamlesh sah', 'test@gmail.com', '$2y$10$nQeTePomfd6EC/FURLc67.M1N3qSvXZJY6yj4RCcx7p/ZamasZlK6', 'admin', 9800012345, 'kathmandu', 28);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirmed_payments`
--
ALTER TABLE `confirmed_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `product_transactions`
--
ALTER TABLE `product_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `confirmed_payments`
--
ALTER TABLE `confirmed_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_transactions`
--
ALTER TABLE `product_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `product_transactions`
--
ALTER TABLE `product_transactions`
  ADD CONSTRAINT `product_transactions_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
