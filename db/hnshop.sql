-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th8 27, 2021 lúc 06:08 AM
-- Phiên bản máy phục vụ: 5.7.31
-- Phiên bản PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hnshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `adminId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `adminName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adminEmail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adminUser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adminPass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(1, 'Hieu', 'hieusnguyen0709@gmail.com', 'HieuRose', '123456', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

DROP TABLE IF EXISTS `tbl_brand`;
CREATE TABLE IF NOT EXISTS `tbl_brand` (
  `brandId` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(10, 'Oppo'),
(9, 'Iphone'),
(8, 'Samsung'),
(11, 'Xiaomi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

DROP TABLE IF EXISTS `tbl_cart`;
CREATE TABLE IF NOT EXISTS `tbl_cart` (
  `cartId` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `sId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`cartId`)
) ENGINE=MyISAM AUTO_INCREMENT=293 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE IF NOT EXISTS `tbl_category` (
  `catId` int(11) NOT NULL AUTO_INCREMENT,
  `catName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`catId`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(4, 'Desktop'),
(5, 'Mobiles Phone'),
(6, 'Accesories'),
(7, 'Software'),
(8, 'Footware'),
(9, 'Sports'),
(10, 'Jewellery'),
(11, 'Clothing'),
(12, 'Kitchen'),
(19, 'Toys');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_comment`
--

DROP TABLE IF EXISTS `tbl_comment`;
CREATE TABLE IF NOT EXISTS `tbl_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `name_comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_comment`
--

INSERT INTO `tbl_comment` (`comment_id`, `name_comment`, `comment`, `product_id`) VALUES
(2, 'Hieu', 'San pham dep lam', 19),
(3, 'Hieu', 'San pham nay rat dep', 18),
(4, 'Hieeus', 'Sáº£n pháº©m nhÆ° loz', 28);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_compare`
--

DROP TABLE IF EXISTS `tbl_compare`;
CREATE TABLE IF NOT EXISTS `tbl_compare` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_compare`
--

INSERT INTO `tbl_compare` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(27, 10, 23, 'Oppo A74 8G/128G', '7000000', '5101713008.png'),
(28, 6, 23, 'Oppo A74 8G/128G', '7000000', '5101713008.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

DROP TABLE IF EXISTS `tbl_customer`;
CREATE TABLE IF NOT EXISTS `tbl_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(9, 'hieunguyen', '108/08 duong so 5', 'HCM', 'Viá»‡t Nam', '1999', '0365549764', 'hieus99@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(8, 'hieunguyen999', '108/08 duong so 5', 'HCM', 'Viá»‡t Nam', '1999', '0365549764', 'hieusnguyen070999@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(10, 'hieurose99', '108/08 duong so 5', 'HCM', 'Viá»‡t Nam', '1999', '0365549764', 'nmh99@gmail.com', '96e79218965eb72c92a549dd5a330112'),
(7, 'hieunguyen', '108/08 duong so 5', 'HCM', 'Viá»‡t Nam', '1999', '0365549764', 'hieusnguyen07091999@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(6, 'hieunguyen123456789', '108/08 duong so 5', 'HCM', 'Viá»‡t Nam', '07091999', '0365549764', 'hieusnguyen0709@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(11, 'hieunguyen999', '108/08 duong so 5', 'HCM', 'Viá»‡t Nam', '1999', '0365549764', '111@gmail.com', '698d51a19d8a121ce581499d7b701668');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE IF NOT EXISTS `tbl_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date_order` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantity`, `price`, `image`, `status`, `date_order`) VALUES
(126, 21, 'Samsung Galaxy S21 Ultra', 6, 3, '90570000', '0339924d3c.png', 0, '2021-08-10 15:02:25'),
(127, 23, 'Oppo A74 8G/128G', 6, 4, '28000000', '5101713008.png', 0, '2021-08-12 04:57:32'),
(128, 23, 'Oppo A74 8G/128G', 6, 3, '21000000', '5101713008.png', 0, '2021-08-12 13:24:54'),
(125, 17, 'Xiaomi Redmi Note 9', 6, 3, '10470000', 'a4f33536b0.png', 0, '2021-08-10 15:02:25'),
(124, 17, 'Xiaomi Redmi Note 9', 6, 4, '13960000', 'a4f33536b0.png', 0, '2021-08-01 13:05:59'),
(123, 19, 'iPhone XR - 64GB (VN/A)', 6, 2, '23000000', '15c99cc5b0.jpg', 0, '2021-08-01 13:05:59'),
(122, 23, 'Oppo A74 8G/128G', 6, 3, '21000000', '5101713008.png', 0, '2021-07-30 13:37:32'),
(121, 27, 'IPhone 6', 6, 2, '10980000', '935953ab83.jpg', 0, '2021-07-30 13:37:32'),
(111, 23, 'Oppo A74 8G/128G', 6, 4, '28000000', '5101713008.png', 2, '2021-07-05 15:51:25'),
(112, 23, 'Oppo A74 8G/128G', 6, 2, '14000000', '5101713008.png', 2, '2021-07-06 12:01:31'),
(138, 21, 'Samsung Galaxy S21 Ultra', 10, 2, '60380000', '0339924d3c.png', 0, '2021-08-27 05:57:12'),
(113, 22, 'OPPO Reno5', 6, 1, '8690000', 'f978d6d9b2.png', 2, '2021-07-06 14:50:29'),
(114, 17, 'Xiaomi Redmi Note 9', 6, 6, '20940000', 'a4f33536b0.png', 2, '2021-07-17 04:13:56'),
(115, 16, 'Xiaomi Redmi Note 10', 6, 1, '5490000', '61145174dc.png', 0, '2021-07-17 04:13:56'),
(116, 21, 'Samsung Galaxy S21 Ultra', 6, 1, '30190000', '0339924d3c.png', 0, '2021-07-19 04:54:45'),
(117, 23, 'Oppo A74 8G/128G', 6, 1, '7000000', '5101713008.png', 0, '2021-07-19 04:54:45'),
(118, 17, 'Xiaomi Redmi Note 9', 6, 3, '10470000', 'a4f33536b0.png', 2, '2021-07-20 14:09:50'),
(119, 23, 'Oppo A74 8G/128G', 6, 4, '28000000', '5101713008.png', 2, '2021-07-24 14:45:46'),
(120, 27, 'IPhone 6', 6, 4, '21960000', '935953ab83.jpg', 2, '2021-07-24 14:45:46'),
(129, 21, 'Samsung Galaxy S21 Ultra', 6, 3, '90570000', '0339924d3c.png', 0, '2021-08-15 04:15:57'),
(130, 28, 'IPhone13', 6, 1, '5490000', 'a7db88a404.jpg', 0, '2021-08-16 04:09:37'),
(131, 27, 'IPhone 6', 6, 1, '5490000', '935953ab83.jpg', 0, '2021-08-16 04:09:37'),
(132, 28, 'IPhone13', 6, 3, '16470000', 'a7db88a404.jpg', 0, '2021-08-20 07:44:19'),
(133, 21, 'Samsung Galaxy S21 Ultra', 6, 5, '150950000', '0339924d3c.png', 2, '2021-08-25 12:19:22'),
(134, 17, 'Xiaomi Redmi Note 9', 6, 3, '10470000', 'a4f33536b0.png', 0, '2021-08-26 07:52:24'),
(135, 28, 'IPhone13', 6, 4, '21960000', 'a7db88a404.jpg', 0, '2021-08-26 07:54:22'),
(136, 23, 'Oppo A74 8G/128G', 6, 1, '7000000', '5101713008.png', 0, '2021-08-26 07:54:22'),
(137, 23, 'Oppo A74 8G/128G', 6, 3, '21000000', '5101713008.png', 0, '2021-08-27 04:49:35'),
(139, 17, 'Xiaomi Redmi Note 9', 10, 2, '6980000', 'a4f33536b0.png', 0, '2021-08-27 05:57:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE IF NOT EXISTS `tbl_product` (
  `productId` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(16, 'Xiaomi Redmi Note 10', 5, 11, '<p>Äáº¹p v&agrave; sang trá»ng</p>', 1, '5490000', '61145174dc.png'),
(17, 'Xiaomi Redmi Note 9', 5, 11, '<p>Xá»‹n x&ograve; v&agrave; ngon ngháº»</p>', 1, '3490000', 'a4f33536b0.png'),
(18, 'iPhone 12 Pro Max - 512GB', 5, 9, '<p>Gi&agrave;u má»›i c&oacute; tiá»n m&agrave; mua</p>', 1, '36690000', '4e0cfe8320.jpg'),
(19, 'iPhone XR - 64GB (VN/A)', 5, 9, '<p>Gi&aacute; cáº£ pháº£i chÄƒng, máº¡i d&ocirc;!</p>', 1, '11500000', '15c99cc5b0.jpg'),
(20, 'Samsung Galaxy A32', 5, 8, '<p>Ngon ngháº» v&agrave; Ä‘áº¹p Ä‘áº½</p>', 1, '6050000', 'af35c3284e.png'),
(21, 'Samsung Galaxy S21 Ultra', 5, 8, '<p>Äiá»‡n thoáº¡i cho ph&aacute;i máº¡nh</p>', 1, '30190000', '0339924d3c.png'),
(22, 'OPPO Reno5', 5, 10, '<p>Oppo cá»§a SÆ¡n T&ugrave;ng</p>', 1, '8690000', 'f978d6d9b2.png'),
(23, 'Oppo A74 8G/128G', 5, 10, '<p>Oppo chá»¥p áº£nh sáº¯c n&eacute;t</p>', 1, '7000000', '5101713008.png'),
(26, 'IPHONE 11', 5, 9, '<p>No cmtttttttt, vi dien thoai nay qua dep</p>', 1, '5490000', '603b52e830.png'),
(27, 'IPhone 6', 5, 9, '<p>Sáº£n pháº©m cháº¥t lÆ°á»£ng, gi&aacute; cáº£ ph&ugrave; há»£p sinh vi&ecirc;n</p>', 1, '5490000', '935953ab83.jpg'),
(28, 'IPhone13', 5, 9, '<p>Dep de va gia ca phai chang khong ban cai</p>', 1, '5490000', 'a7db88a404.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

DROP TABLE IF EXISTS `tbl_slider`;
CREATE TABLE IF NOT EXISTS `tbl_slider` (
  `sliderId` int(11) NOT NULL AUTO_INCREMENT,
  `sliderName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`sliderId`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`sliderId`, `sliderName`, `slider_image`, `type`) VALUES
(12, 'Slider 4', 'cca9dcf338.jpg', 1),
(13, 'Slider 3', '73814ad301.jpg', 1),
(10, 'Slider 2', 'ad57014a95.jpg', 1),
(9, 'Slider 1', '1ae50edcac.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_warehouse`
--

DROP TABLE IF EXISTS `tbl_warehouse`;
CREATE TABLE IF NOT EXISTS `tbl_warehouse` (
  `id_warehouse` int(11) NOT NULL AUTO_INCREMENT,
  `id_sanpham` int(11) NOT NULL,
  `sl_nhap` varchar(50) CHARACTER SET utf8 NOT NULL,
  `sl_ngaynhap` timestamp NOT NULL,
  PRIMARY KEY (`id_warehouse`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wishlist`
--

DROP TABLE IF EXISTS `tbl_wishlist`;
CREATE TABLE IF NOT EXISTS `tbl_wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(7, 6, 23, 'Oppo A74 8G/128G', '6690000', '5101713008.png'),
(4, 6, 17, 'Xiaomi Redmi Note 9', '3490000', 'a4f33536b0.png'),
(9, 6, 20, 'Samsung Galaxy A32', '6050000', 'af35c3284e.png'),
(10, 6, 19, 'iPhone XR - 64GB (VN/A)', '11500000', '15c99cc5b0.jpg'),
(11, 6, 21, 'Samsung Galaxy S21 Ultra', '30190000', '0339924d3c.png'),
(12, 9, 17, 'Xiaomi Redmi Note 9', '3490000', 'a4f33536b0.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;