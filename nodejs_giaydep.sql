-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 17, 2023 lúc 04:18 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nodejs_giaydep`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Giày Sneakers', '2023-10-17 14:51:11', '2023-10-17 14:51:11'),
(2, 'Giày Lười', '2023-10-17 14:52:15', '2023-10-17 14:52:15'),
(3, 'Giày Tây', '2023-10-17 14:52:31', '2023-10-17 14:52:31'),
(4, 'Dép Quai Ngang', '2023-10-17 14:53:13', '2023-10-17 14:53:13'),
(5, 'Dép Sục', '2023-10-17 14:53:22', '2023-10-17 14:53:22'),
(6, 'Dép Quai Hậu', '2023-10-17 14:54:15', '2023-10-17 14:54:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `price`, `description`, `quantity`, `CategoryId`, `createdAt`, `updatedAt`) VALUES
(2, 'Giày Lười Unisex NATIVE Jefferson', 'image/giay1.png', 1400000, 'Native Jefferson được sản xuất bằng chất liệu nhựa EVA êm ái, trọng lượng siêu nhẹ, không thấm nước và có thể vệ sinh một cách dễ dàng.Bề mặt với thiết kế đục lỗ đặc trưng thương hiệu mang đến sự thoáng mát, thoải mái. Sản phẩm có thể giặt bằng tay, có kh', 10, 1, '2023-10-17 13:00:20', '2023-10-17 13:32:29'),
(3, 'Giày Lười Unisex NATIVE Jefferson', 'image/giay1.png', 1400000, 'Native Jefferson được sản xuất bằng chất liệu nhựa EVA êm ái, trọng lượng siêu nhẹ, không thấm nước và có thể vệ sinh một cách dễ dàng.Bề mặt với thiết kế đục lỗ đặc trưng thương hiệu mang đến sự thoáng mát, thoải mái. Sản phẩm có thể giặt bằng tay, có kh', 10, 1, '2023-10-17 13:00:41', '2023-10-17 13:00:41'),
(4, 'Giày Lười Unisex NATIVE Jefferson', 'image/giay1.png', 1400000, 'Native Jefferson được sản xuất bằng chất liệu nhựa EVA êm ái, trọng lượng siêu nhẹ, không thấm nước và có thể vệ sinh một cách dễ dàng.Bề mặt với thiết kế đục lỗ đặc trưng thương hiệu mang đến sự thoáng mát, thoải mái. Sản phẩm có thể giặt bằng tay, có kh', 10, 1, '2023-10-17 13:00:42', '2023-10-17 13:00:42'),
(5, 'Giày Lười Unisex NATIVE Jefferson', 'image/giay1.png', 1400000, 'Native Jefferson được sản xuất bằng chất liệu nhựa EVA êm ái, trọng lượng siêu nhẹ, không thấm nước và có thể vệ sinh một cách dễ dàng.Bề mặt với thiết kế đục lỗ đặc trưng thương hiệu mang đến sự thoáng mát, thoải mái. Sản phẩm có thể giặt bằng tay, có kh', 10, 1, '2023-10-17 13:00:44', '2023-10-17 13:00:44'),
(6, 'Giày Lười Unisex NATIVE Jefferson', 'image/giay1.png', 1400000, 'Native Jefferson được sản xuất bằng chất liệu nhựa EVA êm ái, trọng lượng siêu nhẹ, không thấm nước và có thể vệ sinh một cách dễ dàng.Bề mặt với thiết kế đục lỗ đặc trưng thương hiệu mang đến sự thoáng mát, thoải mái. Sản phẩm có thể giặt bằng tay, có kh', 10, 1, '2023-10-17 13:00:44', '2023-10-17 13:00:44'),
(7, 'Giày Lười Unisex NATIVE Jefferson', 'image/giay1.png', 1400000, 'Native Jefferson được sản xuất bằng chất liệu nhựa EVA êm ái, trọng lượng siêu nhẹ, không thấm nước và có thể vệ sinh một cách dễ dàng.Bề mặt với thiết kế đục lỗ đặc trưng thương hiệu mang đến sự thoáng mát, thoải mái. Sản phẩm có thể giặt bằng tay, có kh', 10, 1, '2023-10-17 13:00:45', '2023-10-17 13:00:45'),
(8, 'Giày Lười Unisex NATIVE Jefferson', 'image/giay1.png', 1400000, 'Native Jefferson được sản xuất bằng chất liệu nhựa EVA êm ái, trọng lượng siêu nhẹ, không thấm nước và có thể vệ sinh một cách dễ dàng.Bề mặt với thiết kế đục lỗ đặc trưng thương hiệu mang đến sự thoáng mát, thoải mái. Sản phẩm có thể giặt bằng tay, có kh', 10, 1, '2023-10-17 13:00:46', '2023-10-17 13:00:46'),
(9, 'Giày Lười Unisex NATIVE Jefferson', 'image/giay1.png', 1400000, 'Native Jefferson được sản xuất bằng chất liệu nhựa EVA êm ái, trọng lượng siêu nhẹ, không thấm nước và có thể vệ sinh một cách dễ dàng.Bề mặt với thiết kế đục lỗ đặc trưng thương hiệu mang đến sự thoáng mát, thoải mái. Sản phẩm có thể giặt bằng tay, có kh', 10, 1, '2023-10-17 13:00:47', '2023-10-17 13:00:47'),
(10, 'Giày Lười Unisex NATIVE Jefferson', 'image/giay1.png', 1400000, 'Native Jefferson được sản xuất bằng chất liệu nhựa EVA êm ái, trọng lượng siêu nhẹ, không thấm nước và có thể vệ sinh một cách dễ dàng.Bề mặt với thiết kế đục lỗ đặc trưng thương hiệu mang đến sự thoáng mát, thoải mái. Sản phẩm có thể giặt bằng tay, có kh', 10, 1, '2023-10-17 13:00:48', '2023-10-17 13:00:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` int(11) NOT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `SizeId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `ProductId`, `SizeId`, `createdAt`, `updatedAt`) VALUES
(2, 2, 2, '2023-10-17 13:00:20', '2023-10-17 13:32:29'),
(3, 3, 1, '2023-10-17 13:00:41', '2023-10-17 13:00:41'),
(4, 4, 1, '2023-10-17 13:00:42', '2023-10-17 13:00:42'),
(5, 5, 1, '2023-10-17 13:00:44', '2023-10-17 13:00:44'),
(6, 6, 1, '2023-10-17 13:00:44', '2023-10-17 13:00:44'),
(7, 7, 1, '2023-10-17 13:00:45', '2023-10-17 13:00:45'),
(8, 8, 1, '2023-10-17 13:00:46', '2023-10-17 13:00:46'),
(9, 9, 1, '2023-10-17 13:00:47', '2023-10-17 13:00:47'),
(10, 10, 1, '2023-10-17 13:00:48', '2023-10-17 13:00:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Admin', '2023-10-17 15:14:12', '2023-10-17 15:14:12'),
(2, 'Guess', '2023-10-17 15:14:12', '2023-10-17 15:14:12'),
(3, 'SuperAdmin', '2023-10-17 15:14:21', '2023-10-17 15:14:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20231017075045-create-user.js'),
('20231017075232-create-role.js'),
('20231017075313-create-product.js'),
('20231017075650-create-size.js'),
('20231017075738-create-product-size.js'),
('20231017080648-create-category.js');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sizes`
--

CREATE TABLE `sizes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, '35', '2023-10-17 14:54:30', '2023-10-17 14:54:30'),
(2, '36', '2023-10-17 14:54:58', '2023-10-17 14:54:58'),
(3, '37', '2023-10-17 14:55:03', '2023-10-17 14:55:03'),
(4, '38', '2023-10-17 14:55:03', '2023-10-17 14:55:03'),
(5, '39', '2023-10-17 14:55:10', '2023-10-17 14:55:10'),
(6, '40', '2023-10-17 14:55:10', '2023-10-17 14:55:10'),
(7, '41', '2023-10-17 14:55:23', '2023-10-17 14:55:23'),
(8, '42', '2023-10-17 14:55:23', '2023-10-17 14:55:23'),
(9, '43', '2023-10-17 14:55:47', '2023-10-17 14:55:47'),
(10, '44', '2023-10-17 14:55:47', '2023-10-17 14:55:47'),
(11, '45', '2023-10-17 14:55:53', '2023-10-17 14:55:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `RoleId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `RoleId`, `createdAt`, `updatedAt`) VALUES
(1, 'Phan Tien Huy', 'huyphan12382002@gmail.com', 'phantienhuy', '$2b$10$XZ3hX8ziDCntzmOOez7c0.ajWvHzWOu8qU8XplgUEDit9IJpflsvO', 2, '2023-10-17 08:18:07', '2023-10-17 08:18:07'),
(2, 'Phan Tien Huy', 'huyphan123820022@gmail.com', 'admin', '$2b$10$6O0j4xEFOoV35LNL9jCixOBTkLP2abXOyocFWs4SH4VJ0EZ9IVfXG', 1, '2023-10-17 14:12:06', '2023-10-17 14:12:06');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
