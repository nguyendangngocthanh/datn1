-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2023 at 05:36 PM
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
-- Database: `web1`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `href_param` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `href_param`) VALUES
(1, 'Túi đựng', 'bep-tu'),
(2, 'Găng tay', 'bep-dien-tu'),
(5, 'Bóng đá', 'bong-da'),
(6, 'Bóng chuyền', 'bong-chuyen'),
(8, 'Cầu lông', 'cau-long'),
(9, 'Bóng bàn', 'bong-ban');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `subject_name` varchar(350) NOT NULL,
  `note` varchar(1000) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `email`, `phone_number`, `subject_name`, `note`, `status`, `created_at`, `updated_at`, `fullname`) VALUES
(1, 'tranvandiep.it@gmail.com', '1234567890', 'Khoa hoc PHP/Laravel', 'Dang ky khoa hoc', 1, '2022-09-11 15:01:36', '2022-09-11 08:35:33', 'TRAN VAN DIEP'),
(3, 'gokisoft.com@gmail.com', '0967025996', 'HTML5/CSS3', '34234234234', 1, NULL, '2022-09-14 20:31:10', 'TRAN VAN A'),
(4, 'td33284@gmail.com', '0389665732', 'dd', 'chán', 0, NULL, NULL, 'ư');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `thumbnail` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_28_074205_create_role_table', 2),
(6, '2022_07_28_074314_alter_user_table', 3),
(7, '2022_07_28_074339_create_category_table', 3),
(8, '2022_07_28_074401_create_product_table', 3),
(9, '2022_07_28_074428_create_gallery_table', 3),
(10, '2022_07_28_074527_create_feedback_table', 3),
(11, '2022_07_28_074546_create_orders_table', 3),
(12, '2022_07_28_074600_create_order_details_table', 4),
(13, '2022_07_28_074612_create_news_table', 4),
(14, '2023_03_11_045521_add_role_to_users_table', 5),
(15, '2014_10_12_200000_add_two_factor_columns_to_users_table', 6),
(16, '2023_03_11_053700_create_sessions_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL,
  `href_param` varchar(250) NOT NULL,
  `thumbnail` varchar(500) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `href_param`, `thumbnail`, `content`, `created_at`, `updated_at`, `deleted`) VALUES
(1, 'Top 5 mẫu áo đá bóng không logo giá rẻ đẹp nhất năm 2022', 'gioi-thieu-doanh-nghiep', 'http://127.0.0.1:8000/uploads/tintuc2.jpg', '<p>&nbsp;Thời điểm trước 2012, ng&agrave;nh may mặc thể thao Việt Nam ch&uacute;ng ta c&ograve;n phụ thuộc gần như ho&agrave;n to&agrave;n v&agrave;o nguồn cung cấp nước ngo&agrave;i c&ugrave;ng với mức gi&aacute; nhập v&agrave;o kh&aacute; cao v&agrave; chất lượng sản phẩm kh&ocirc;ng được như mong đợi. Tuy nhi&ecirc;n từ những năm 2013 trở về sau n&agrave;y ng&agrave;nh may mặc đồ thể thao ch&uacute;ng ta ph&aacute;t triển cực kỳ mạnh mẽ, tạo ra nhiều sản phẩm đẹp mắt c&ugrave;ng với chất lượng sản phẩm tuyệt vời v&agrave; gi&aacute; cả rất hợp l&yacute;, đem đến cho người ti&ecirc;u d&ugrave;ng Việt Nam nhiều sự lựa chọn, thỏa m&atilde;n sự đam m&ecirc; với c&aacute;c mẫu đồ thể thao.</p>\r\n\r\n<h2><strong>BigSport.vn giới thiệu 5 mẫu &aacute;o đ&aacute; b&oacute;ng đẹp nhất năm 2022</strong></h2>\r\n\r\n<p><strong>1. &Aacute;o đ&aacute; b&oacute;ng Keep Fly Fliegen</strong></p>\r\n\r\n<p>L&agrave; sự kết hợp giữa thương hiệu thể thao Keep Fly v&agrave; tuyển thủ Đ&igrave;nh Trọng cho ra mắt mẫu &aacute;o đ&aacute; b&oacute;ng&nbsp;Fliegen đẳng cấp, sang trọng,&nbsp;c&aacute; t&iacute;nh v&agrave; nhiều t&iacute;nh năng mới ở mấu &aacute;o n&agrave;y.</p>\r\n\r\n<p>- Những t&iacute;nh năng vượt trội&nbsp;c&oacute; tr&ecirc;n mẫu &aacute;o đ&aacute; b&oacute;ng&nbsp;Fliegen:</p>\r\n\r\n<p>+ T&iacute;nh năng&nbsp;chống nắng, chống tia UV 45++</p>\r\n\r\n<p>+ Khử m&ugrave;i khi vận động đổ nhiều mồ h&ocirc;i.</p>\r\n\r\n<p>+ H&uacute;t ẩm v&agrave; thấm h&uacute;t mồ h&ocirc;i tốt cho cảm gi&aacute;c thoải m&aacute;i khi vận động nhiều.</p>\r\n\r\n<p>+ Một t&iacute;nh năng đặc biệt nữa l&agrave; vải c&oacute; thể kh&aacute;ng tĩnh điện loại trừ cảm gi&aacute;c bết d&iacute;nh da.</p>\r\n\r\n<p>&rArr; Với thiết kế đẹp&nbsp;mắt c&ugrave;ng với h&agrave;ng t&aacute; t&iacute;nh năng vượt trội,&nbsp;&Aacute;o đ&aacute; b&oacute;ng Keep Fly Fliegen xứng đ&aacute;ng đứng top đầu trong bảng xếp hạng.</p>\r\n\r\n<p>Gi&aacute; b&aacute;n của mẫu &aacute;o b&oacute;ng đa Keep Fly Fligen l&agrave; 150.000/1 bộ</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-khong-logo-keepfky-fliegen_252abcffdbd947ea9dd85e32cb78951f_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2. &Aacute;o đ&aacute; b&oacute;ng Keep Fly PANZER</strong></p>\r\n\r\n<p>&nbsp;Đứng vị tr&iacute; n&agrave;y vẫn l&agrave; mẫu &aacute;o đ&aacute; b&oacute;ng đến từ thương hiệu Keep Fly, một mẫu thiết kế ra mắt từ đ&acirc;u năm 2021 nhưng đến nay mẫu &aacute;o n&agrave;y vẫn b&aacute;n rất chạy tại BigSport.vn.</p>\r\n\r\n<p>&nbsp;Mẫu &aacute;o thiết kế họa tiết v&ocirc; c&ugrave;ng đẹp mắt, mang đến sự hiện đại v&agrave; s&aacute;ng tạo trong từng đường n&eacute;t. Tuy gi&aacute; trị mẫu &aacute;o n&agrave;y chỉ 120.000/1 bộ nhưng mẫu &aacute;o n&agrave;y vẫn c&oacute; một bộ sưu tập t&iacute;nh năng v&ocirc; c&ugrave;ng hấp dẫn.</p>\r\n\r\n<p>+&nbsp;Chất liệu vải: 100% vải thun lạnh Polyester mềm mịn.</p>\r\n\r\n<p>+ Vải mềm mỏng, nhẹ, c&oacute; độ co gi&atilde;n tốt, thấm h&uacute;t mồ h&ocirc;i, thoải m&aacute;i vận động cho c&aacute;c m&ocirc;n thể thao hoạt động ở cường độ cao.</p>\r\n\r\n<p>+ Logo th&ecirc;u sắc n&eacute;t, c&aacute;c họa tiết tr&ecirc;n &aacute;o đều in chuyển tinh xảo, kh&ocirc;ng bị bong tr&oacute;c hay bay m&agrave;u.</p>\r\n\r\n<p>Gi&aacute; b&aacute;n&nbsp;&Aacute;o đ&aacute; b&oacute;ng Keep Fly PANZER: 120.000/1 bộ</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-keep-fly-panzer_56d7a2622a2b46b597e44bd24935418e_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>3. &Aacute;o đ&aacute; b&oacute;ng kh&ocirc;ng logo CP Raster</strong></p>\r\n\r\n<p>&nbsp;Vị tr&iacute; thứ 3 thuộc về mẫu &aacute;o đến từ thương hiệu thể thao CP, đ&acirc;y l&agrave; một trong những thương hiệu đi đầu về sản xuất đồ b&oacute;ng đ&aacute; v&agrave; đồ thể thao chuẩn Made In Việt Nam. CP cũng l&agrave; đơn vị đi đầu về chất lượng sản phẩm cũng như thiết kế Form &aacute;o. &Aacute;o của CP thường mặc m&aacute;t mẽ, thấm h&uacute;t mồ h&ocirc;i tốt v&agrave; c&oacute; độ bền cao.</p>\r\n\r\n<p>&Aacute;o đ&aacute; b&oacute;ng CP Raster l&agrave; mẫu &aacute;o mới nhất của thương hiệu CP vừa mới ra mắt giữa th&aacute;ng 4. Mẫu &aacute;o thiết kế đơn giản với 2 viền dọc hai b&ecirc;n ngực,&nbsp;tuy kh&ocirc;ng qu&aacute; nổi bật nhưng mẫu &aacute;o thiết kế hiện đại, tinh tế.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-cp-raster_62c55ff81c674a8fbad606f6729310c6_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-cp-raster-do_a8b1e6b943f248a1ab24e48f83858bb9_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>4.&nbsp;<strong>&Aacute;o đ&aacute; b&oacute;ng kh&ocirc;ng logo CP Roger</strong></p>\r\n\r\n<p>&nbsp;Cũng l&agrave; một đại diện đến từ thương hiệu thể thao CP, h&atilde;y xem mẫu &aacute;o n&agrave;y c&oacute; g&igrave; đặc biệt nh&eacute;.</p>\r\n\r\n<p>- &Aacute;o sự dụng hất liệu vải&nbsp;m&egrave; caro cao cấp kết hợp giữa sợi Polyester v&agrave; sợi Spandex cho chất liệu vải&nbsp;mềm, nhẹ, c&oacute; độ co gi&atilde;n tốt, thấm h&uacute;t mồ h&ocirc;i v&agrave; kh&ocirc; nhanh, thoải m&aacute;i vận động cho c&aacute;c m&ocirc;n thể thao hoạt động ở cường độ cao.</p>\r\n\r\n<p>- Logo in lụa sắc n&eacute;t, c&aacute;c họa tiết tr&ecirc;n &aacute;o đều in chuyển tinh xảo theo ti&ecirc;u chuẩn Ch&acirc;u &Acirc;u, đạt chứng nhận Eco Passport,&nbsp;kh&ocirc;ng bị bong tr&oacute;c, bay m&agrave;u v&agrave; đặc biệt l&agrave; kh&ocirc;ng g&acirc;y k&iacute;ch ứng da.</p>\r\n\r\n<p>- C&ocirc;ng nghệ chống bết dinh da gi&uacute;p người mặc cảm thấy dễ chịu khi đổ mồ h&ocirc;i nhiều.</p>\r\n\r\n<p>- T&iacute;nh năng&nbsp;chống nắng, chống tia UV 45++</p>\r\n\r\n<p>- Khử m&ugrave;i khi vận động đổ nhiều mồ h&ocirc;i.</p>\r\n\r\n<p>- H&uacute;t ẩm v&agrave; thấm h&uacute;t mồ h&ocirc;i tốt cho cảm gi&aacute;c thoải m&aacute;i khi vận động nhiều.</p>\r\n\r\n<p>- &Aacute;o b&oacute;ng đ&aacute; Roger&nbsp;m&agrave;u sắc tươi trẻ, năng động, đầy cuốn h&uacute;t.</p>\r\n\r\n<p>- &Aacute;o&nbsp;thiết kế Form su&ocirc;ng dễ mặc v&agrave; c&oacute; tới 6 hấp dẫn&nbsp;m&agrave;u để chọn lựa.</p>\r\n\r\n<p>&rArr; Với h&agrave;ng t&aacute; t&iacute;nh năng cao cấp tr&ecirc;n th&igrave; mẫu &aacute;o n&agrave;y qu&aacute; xứng đ&aacute;ng để đứng trong Top 4 của bảng xếp hạng.</p>\r\n\r\n<p>Gi&aacute; của&nbsp;&Aacute;o đ&aacute; b&oacute;ng&nbsp;CP Roger l&agrave; 170.000/1 bộ.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-khong-logo-roger_c326c2244f5c4d7f9a4fff462c8937c0_grande.jpg\" /></p>\r\n\r\n<p><em>&Aacute;o đ&aacute; b&oacute;ng&nbsp;CP Roger</em></p>', '2022-09-11 14:39:18', '2023-05-16 05:30:25', 0),
(2, '6 mẫu áo đấu ra mắt sớm nhất của mùa giải 2023-2024', 'chinh-sach-bao-mat-thong-tin', 'http://127.0.0.1:8000/uploads/tintuc1.jpg', '<table border=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h1>&nbsp;</h1>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Tuy c&aacute;c giải đấu Ch&acirc;u &Acirc;u như Ngoại hạng Anh, LaLiga, Ligue 1... m&ugrave;a giải 2022-2023 c&ograve;n tới 9 v&ograve;ng đấu mới kết th&uacute;c nhưng đ&atilde; xuất hiện kh&aacute; nhiều mẫu &aacute;o đấu của c&aacute;c đội b&oacute;ng lớn m&ugrave;a giải 2023-2024.<br />\r\nBigSport xin giới thiếu 6 mẫu &aacute;o đấu mới vừa cập bến tại shop.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>1.&nbsp; &Aacute;o đ&aacute; b&oacute;ng Real Madird s&acirc;n nh&agrave;</strong></p>\r\n\r\n<p>Vấn như mọi năm, &aacute;o đ&aacute; b&oacute;ng s&acirc;n nh&agrave; của Real vẫn giữ đ&uacute;ng t&ocirc;ng m&agrave;u trắng truyền thống bao năm nay. Nhưng c&oacute; sự thay đổi nhẹ&nbsp;l&agrave; viền &aacute;o năm nay được chuyển qua m&agrave;u đồng v&agrave; c&oacute; phần nổi bật hơn, khỏe khoắn hơn nhiều.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-real-san-nha-2023-2024-h4_fe64e2344b5544b59dc274a1fe635c5a_grande.jpg\" /></p>\r\n\r\n<p><em>&Aacute;o đ&aacute; b&oacute;ng Real Madird 2023-2024 s&acirc;n nh&agrave;</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2.&nbsp; &Aacute;o&nbsp;đ&aacute; b&oacute;ng&nbsp;Paris Saint Germain s&acirc;n nh&agrave;</strong></p>\r\n\r\n<p>Vẫn t&ocirc;ng m&agrave;u&nbsp;xanh đen&nbsp;ấy nhưng năm nay phần nhấn ở ngực được đổi th&agrave;nh m&agrave;u đỏ nổi bật được in dọc b&ecirc;n ngực tr&aacute;i v&agrave; ch&iacute;nh logo c&acirc;u lạc bộ cũng được th&ecirc;u ngay l&ecirc;n viền đỏ.<br />\r\nM&ugrave;a giải 2024 nh&agrave; t&agrave;i trợ của PSV sẻ l&agrave; h&atilde;ng h&agrave;ng kh&ocirc;ng Qatar Airways.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-psv-san-nha-2023-2024-h1_94d3f4bb64d342588c87a0f5e66aba7d_grande.jpg\" /></p>\r\n\r\n<p><em>&Aacute;o b&oacute;ng đ&aacute; Paris Saint Germain s&acirc;n nh&agrave; 2023 - 2024</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>3. &Aacute;o&nbsp;đ&aacute; b&oacute;ng Liverpool s&acirc;n nh&agrave;</strong><br />\r\nSo với mẫu thiết kế&nbsp;m&ugrave;a giải 2023&nbsp;chỉ với mỗi một t&ocirc;ng&nbsp;kh&aacute; đơn điệu, th&igrave; năm nay mấu &aacute;o đấu Liverpool c&oacute; ch&uacute;t thay đổi nhẹ khi th&ecirc;m v&agrave;o viền cổ &aacute;o v&agrave; tay nổi bật m&agrave;u trắng. Tất nhi&ecirc;n mẫu &aacute;o đấu s&acirc;n nh&agrave; của Liverpool vẫn l&agrave; m&agrave;u đỏ truyền thống.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-liverpool-2023_b90fc9e9b0074f9cb9cfd1dc1243014d_grande.jpg\" /></p>\r\n\r\n<p><em>&Aacute;o&nbsp;đ&aacute; b&oacute;ng Liverpool s&acirc;n nh&agrave; 2023-2024</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4. &Aacute;o đ&aacute; b&oacute;ng Manchester City s&acirc;n nh&agrave;</strong><br />\r\nThiết kế của mẫu &aacute;o Man xanh ở m&ugrave;a giải 2023 - 2024 c&oacute;&nbsp;sự lột x&aacute;c kh&aacute; ngoạn mục. So với c&aacute;ch thiết kế rất nh&agrave;m ch&aacute;n của c&aacute;c m&ugrave;a giải trước th&igrave; năm nay &aacute;o đấu s&acirc;n nh&agrave; của Man xanh được phối th&ecirc;m c&aacute;c viền sọc rất tinh tế v&agrave;&nbsp;bắt mắt. Đ&acirc;y chắc chắn sẻ l&agrave; một trong những mẫu &aacute;o đấu g&acirc;y được sự thu h&uacute;t của người h&acirc;m m&ocirc; sau khi được ra mắt.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-man-city-xanh-2023-2024_75e150e09e624d47bef4a6d1e0355b5d_grande.jpg\" /></p>\r\n\r\n<p><em>&Aacute;o đ&aacute; b&oacute;ng Manchester City s&acirc;n nh&agrave; m&ugrave;a giải 2023 - 2024</em></p>', '2022-09-11 07:52:51', '2023-05-16 05:29:06', 0),
(3, 'Phân biệt vợt cầu lông Proace thật giả đơn giản nhất', '234234234', 'http://127.0.0.1:8000/uploads/tictuc6.jpg', '<p>Proace được c&ocirc;ng ty Phượng Ho&agrave;ng đưa về Việt Nam v&agrave; ph&acirc;n phối từ năm 1997, l&agrave; thương hiệu vợt cầu l&ocirc;ng cực kỳ nổi tiếng ở thời điểm đ&oacute;, khi m&agrave; c&aacute;c thương hiệu lớn như Yonex, Lining, Victor chưa phải l&agrave; đối trọng của Proace.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/vot-cau-long-proace-h2_d443769411244b528f0d3ab9dbbcb118_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;- Những m&atilde; vợt được coi l&agrave; huyền thoại v&agrave; tạo n&ecirc;n thương hiệu Proace như:&nbsp;<a href=\"https://bigsport.vn/products/vot-cau-long-proace-sweet-spot-1000\">Proace 1000</a>,&nbsp;<a href=\"https://bigsport.vn/products/vot-cau-long-proace-sweet-spot-950\">Proace 950</a>, Proace 900,&nbsp;<a href=\"https://bigsport.vn/products/vot-cau-long-proace-sweet-spot-800\">Swet Spot 800</a>, 316, 318...Đến b&acirc;y giờ những d&ograve;ng vợt đ&oacute; vẫn c&ograve;n in đậm trong t&acirc;m tr&iacute; những người chơi cầu l&ocirc;ng lớn tuổi cũng như thế hệ 8x.</p>\r\n\r\n<p>Thời điểm đ&oacute; nếu ai sở hữu được c&acirc;y vợt Proace chắc chắn phải l&agrave; người phải c&oacute; ch&uacute;t điều kiện hoặc qu&aacute; đam m&ecirc; cầu l&ocirc;ng m&agrave; phải đ&aacute;nh đổi đi một thứ g&igrave; đ&oacute; để c&oacute; c&acirc;y vợt cầu l&ocirc;ng Proace.</p>\r\n\r\n<p>- Những năm gần đ&acirc;y thương hiệu cầu l&ocirc;ng Proace tưởng chừng bị l&atilde;ng&nbsp;qu&ecirc;n th&igrave; c&ocirc;ng ty Hải Qu&yacute; đ&atilde;&nbsp;vực dậy thương hiệu n&agrave;y v&agrave; đưa Proace trở lại với kh&aacute;ch h&agrave;ng.&nbsp;</p>\r\n\r\n<p>- Hải Qu&yacute; đ&atilde; l&agrave;m mới h&igrave;nh ảnh của Proace với c&aacute;c mẫu t&uacute;i được thiết kế đẹp hơn, chất lượng hơn, phiếu bảo h&agrave;nh được thay đổi ho&agrave;n to&agrave;n, họ c&ograve;n sản xuất th&ecirc;m c&aacute;c mẫu vợt mới như: 316II, 318II, TGR1000...&nbsp;được kh&aacute;ch h&agrave;ng đ&aacute;nh gi&aacute; cao v&agrave;&nbsp;đ&oacute;n nhận kh&aacute; t&iacute;ch cực.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/vot-cau-long-proace-chinh-hang_3d6f8b99077244b88fdc8d7457485e87_grande.jpg\" /></p>\r\n\r\n<h3><strong><a href=\"https://bigsport.vn/collections/vot-cau-long-proace\"><em>H&igrave;nh ảnh vợt cầu l&ocirc;ng Proace ch&iacute;nh h&atilde;ng</em></a></strong></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>4 h&igrave;nh ảnh&nbsp;dễ d&agrave;ng ph&acirc;n biệt vợt cầu l&ocirc;ng&nbsp;Proace thật giả:</strong></h2>\r\n\r\n<p>1 - H&igrave;nh ảnh đầu ti&ecirc;n ch&iacute;nh l&agrave; mẫu t&uacute;i đựng&nbsp;vợt khi kh&aacute;ch h&agrave;ng mua vợt&nbsp;được tặng k&egrave;m theo, Proace đ&atilde; thay đổi ho&agrave;n to&agrave;n. Mẫu t&uacute;i mới b&acirc;y giờ đẹp hơn, chất lượng hơn v&agrave; nh&igrave;n hiện đại. H&igrave;nh ảnh dưới sẽ bạn sẽ dễ d&agrave;ng so s&aacute;nh 2 mẫu t&uacute;i kh&aacute;c nhau ho&agrave;n to&agrave;n để so s&aacute;nh, nếu đại l&yacute; n&agrave;o c&ograve;n b&aacute;n mẫu t&uacute;i cũ th&igrave; chắc chắn đ&oacute; kh&ocirc;ng phải l&agrave; t&uacute;i vợt Proace ch&iacute;nh h&atilde;ng.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/phan-biet-vot-cau-long-proace-that-gia_374148e4a316405b842a92d70aa940fe_grande.jpg\" /></p>\r\n\r\n<p><em>Dễ d&agrave;ng ph&acirc;n biệt mẫu t&uacute;i đựng vợt cũ v&agrave; mẫu t&uacute;i mới</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2 - H&igrave;nh ảnh tiếp theo để ph&acirc;n biệt h&agrave;ng thật v&agrave; h&agrave;ng giả Proace ch&iacute;nh l&agrave; phiếu bảo h&agrave;nh. Phiếu bảo&nbsp;h&agrave;nh cũng đ&atilde; được thay mới ho&agrave;n to&agrave;n từ m&agrave;u sắc đến h&igrave;nh ảnh nh&agrave; ph&acirc;n phối.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/phan-biet-vot-proace-that-gia_67dae721f8df43a283065b18e24ae0c8_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/vot-cau-long-proace_1bad5386a82642bbb83d41616715c959_grande.jpg\" /></p>\r\n\r\n<p><em>Hải Qu&yacute; l&agrave; đơn vị ph&acirc;n phối ch&iacute;nh thức vợt cầu l&ocirc;ng Proace tại Việt Nam</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3 - H&igrave;nh ảnh tiếp theo dễ d&agrave;ng nhận biết vợt Proace thật giả ch&iacute;nh l&agrave; m&atilde; Code tr&ecirc;n th&acirc;n vợt, vợt ch&iacute;nh h&atilde;ng chỉ c&oacute; chữ QC c&ugrave;ng với d&atilde;y số c&oacute; 9 số bắt đầu với số 15, 16, hoặc 17, c&oacute; nghĩa l&agrave; vựt được sản xuất năm 2015 đến 2017.&nbsp;c&ograve;n vợt Proace nh&aacute;i ghi VNQC c&ugrave;ng với&nbsp;dảy số với 6 chữ số ph&iacute;a sau v&agrave; kh&ocirc;ng c&oacute; &yacute; nghĩa rỏ r&agrave;ng.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/phan-biet-vot-proace-nhai-gia_a565e73e6e214cc291bd25e03f0fcb60_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/vot-cau-long-proace-h1_4c7daf68065b4b5aa04e05828e10708d_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>4 - Tr&ecirc;n tất cả sản phẩm vợt cầu l&ocirc;ng Proace đều c&oacute; lớp bạc cho kh&aacute;ch h&agrave;ng c&agrave;o để lấy m&atilde; số check tin nhắn x&aacute;c nhận h&agrave;ng ch&iacute;nh h&atilde;ng.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/phan-biet-vot-cau-long-proace-nhai-gia_1ef2697b88a741ccbd3fc2ae0ee8182d_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Đ&acirc;y l&agrave; những th&ocirc;ng tin&nbsp;kh&aacute; đầy đủ&nbsp;gi&uacute;p&nbsp;ch&uacute;ng ta nhận biết dễ d&agrave;ng&nbsp;vợt cầu l&ocirc;ng Proace thật giả để kh&ocirc;ng mua phải những c&acirc;y vợt cầu k&eacute;m chất lượng.</p>\r\n\r\n<p>- Ch&uacute;ng ta h&atilde;y lựa chọn đại l&yacute; b&aacute;n h&agrave;ng&nbsp;&uacute;y t&iacute;n, tin cậy,&nbsp;đội ngủ b&aacute;n h&agrave;ng chuy&ecirc;n nghiệp tư vấn cho&nbsp;kh&aacute;ch h&agrave;ng&nbsp;lựa được những c&acirc;y&nbsp;vợt cầu l&ocirc;ng vừa ph&ugrave; hợp với t&uacute;i tiền cũng như ph&ugrave; hợp với&nbsp;lối chơi của mối người.&nbsp;</p>\r\n\r\n<p>&rArr;&nbsp;Ở TP.HCM qu&yacute; kh&aacute;ch c&oacute; thể mua h&agrave;ng tại&nbsp;BigSport.vn l&agrave; cửa h&agrave;ng b&aacute;n h&agrave;ng thể thao chuy&ecirc;n nghiệp,&nbsp;uy t&iacute;n với chuổi cửa h&agrave;ng tại quận T&acirc;n Ph&uacute;, G&ograve; Vấp v&agrave; Th&agrave;nh Phố Thủ Đức. Kinh nghiệm b&aacute;n h&agrave;ng l&acirc;u năm&nbsp;c&ugrave;ng với&nbsp;đội ngủ nh&acirc;n vi&ecirc;n&nbsp;chuy&ecirc;n nghiệp, nhiệt t&igrave;nh, chắc chắn sẽ đem lại cho qu&yacute; kh&aacute;ch&nbsp;chất lượng phục vụ tốt nhất.</p>', '2022-09-11 07:53:02', '2023-05-16 05:33:58', 0),
(4, 'Hướng dẫn nhận biết các thông số cơ bản trên Vợt cầu lông', 'gioi-thieu-doanh-nghiep', 'http://127.0.0.1:8000/uploads/tuctuc3.jpg', '<p>&nbsp; Những năm gần đ&acirc;y cầu l&ocirc;ng l&agrave; m&ocirc;n thể thao được nhiều người ưa chọn h&agrave;ng đầu.&nbsp;Cầu l&ocirc;ng kh&ocirc;ng những chỉ để chơi v&agrave; tập luyện nhằm n&acirc;ng cao sức khỏe v&agrave; l&agrave; niềm vui v&agrave; l&agrave; niềm đam m&ecirc; bất tận của nhiều người, đem lại cuộc sống th&ecirc;m nhiều điều t&iacute;ch cực.<br />\r\n&nbsp; Nhưng để chơi v&agrave; tập luyện m&ocirc;n thể thao n&agrave;y đạt hiệu quả tốt nhất th&igrave; bạn cần hiều về c&aacute;c con số tr&ecirc;n mỗi c&acirc;y vợt để chọn cho m&igrave;nh c&acirc;y vợt ph&ugrave; hợp với bản th&acirc;n m&igrave;nh nhất.<br />\r\nSau đ&acirc;y h&atilde;y c&ugrave;ng BigSport.vn t&igrave;m hiểu về những th&ocirc;ng số tr&ecirc;n mỗi c&acirc;y vợt để xem &yacute; nghĩa của n&oacute; l&agrave; g&igrave; nh&eacute;.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/choi-cau-long_c73de049823c4c0386c0bdeec14e2dbb_grande.jpg\" /></p>\r\n\r\n<h2><br />\r\n<strong>5 K&yacute; hiệu th&ocirc;ng số&nbsp;cơ bản tr&ecirc;n&nbsp;vợt cầu l&ocirc;ng:</strong></h2>\r\n\r\n<p><strong>1. Th&ocirc;ng số U - G c&oacute; nghĩa g&igrave;?</strong><br />\r\n- Th&ocirc;ng số U:<br />\r\nU ở đ&acirc;y c&oacute; nghĩa l&agrave; trọng lượng của c&acirc;y vợt, U c&agrave;ng lớn th&igrave; vợt c&agrave;ng nhẹ v&agrave; ngược lại, U c&agrave;ng nhỏ th&igrave; trọng lượng vợt c&agrave;ng nặng.&nbsp;<br />\r\nBao gồm c&aacute;c th&ocirc;ng số: 2U, 3U, 4U, 5U, 6U (2U: 90 - 94gr, 3U: 85 - 89gr, 4U: 80 - 84gr, 5U: 75 -79gr, 6U: 73 - 74gr).<br />\r\nVới chiều cao v&agrave; c&acirc;n nặng người Việt Nam th&igrave; n&ecirc;n chọn th&ocirc;ng số 3U hoặc 4U l&agrave; tốt nhất, những ai c&oacute; cổ tay thật khỏe th&igrave; chọn 2U(90-94gr), với nữ tay yếu hoặc trẻ em th&igrave; n&ecirc;n chọn 5U l&agrave; hợp l&yacute;.<br />\r\nThường th&igrave; những c&acirc;y vợt c&agrave;ng nặng (U nhỏ) th&igrave; mức chịu lực tốt hơn, đan được mức k&yacute; cao hơn.</p>\r\n\r\n<p><br />\r\n- Th&ocirc;ng số G:<br />\r\nG l&agrave; chu vi c&aacute;n vợt, thường đứng sau k&yacute; hiệu U, như 4U-G5, 3U-G2...,G thế hiện độ to hoặc nhỏ của tay cầm. G c&agrave;ng lớn th&igrave; c&aacute;n vợt c&agrave;ng nhỏ v&agrave; ngược lại. &nbsp;G4, G5 l&agrave; c&aacute;n cầm vừa v&agrave; nhỏ thường d&agrave;nh cho người Ch&acirc;u &Aacute;, c&ograve;n ở Ch&acirc;u &Acirc;u, Ch&acirc;u Mỹ th&igrave; c&aacute;n vợt lớn hơn (G2, G3) do k&iacute;ch thước tay họ to hơn.<br />\r\nỞ Việt Nam người lớn n&ecirc;n chọn c&aacute;n vợt G4, với nữ v&agrave; trẻ em n&ecirc;n chọn c&aacute;n vợt G5 l&agrave; th&iacute;ch hợp.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/thong-so-u-g-vot-cau-long_204a32e933fa40dd8e9e2236108ad1f8_grande.jpg\" /></p>\r\n\r\n<p><br />\r\n<strong>2. Th&ocirc;ng số LBS - Mức căng k&yacute; của vợt:</strong><br />\r\n&nbsp; Số LBS ghi tr&ecirc;n th&acirc;n vợt l&agrave;&nbsp;số mức căng k&yacute; m&agrave; c&aacute;c&nbsp;h&atilde;ng sản xuất vợt&nbsp;quy định,&nbsp;ch&uacute;ng ta&nbsp;thường thấy ghi tr&ecirc;n c&aacute;n vợt như: 19LBS - 24LBS, 20LBS - 26LBS...&nbsp;<br />\r\n&nbsp; Căng vợt ở mức k&yacute; n&agrave;o cho ph&ugrave; hợp với mỗi người l&agrave;&nbsp;cự kỳ quan trọng, n&oacute; li&ecirc;n quan đến khả năng chơi cầu v&agrave; c&aacute;ch chơi cầu của mỗi người, li&ecirc;n quan đến quy định mức căng k&yacute; cho ph&eacute;p của h&atilde;ng sản xuất. Nếu căng vợt một c&aacute;ch t&ugrave;y tiện sẽ ảnh hưởng đến hiệu suất của người chơi cầu, thậm ch&iacute; l&agrave; g&acirc;y chấn thương v&agrave; l&agrave;m hỏng c&acirc;y vợt nếu căng vượt qua số kg m&agrave; h&atilde;ng quy định.<br />\r\n&nbsp; Với người đ&atilde; chơi tốt th&igrave; thường căng khoảng 22LBS đến 24,5LBS &nbsp;(10kg - 11kg), người đang tập chơi hoặc mới biết chơi n&ecirc;n căng vợt khoảng 20LBS đến 21LBS (9kg đến 9,5kg).<br />\r\nMức căng của c&aacute;c tay vợt chuy&ecirc;n nghiệp thường l&agrave;: 28LBS - 32LBS (12,6kg - 14,5kg)&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/chon-thong-so-vot-cau-long_b47685140da647d5b7ff186f6f92c8b4_grande.jpg\" /></p>\r\n\r\n<p><br />\r\n<strong>3. Chiều d&agrave;i tổng thể vợt cầu l&ocirc;ng:</strong><br />\r\n&nbsp; Chiều d&agrave;i vợt&nbsp;theo quy định l&agrave; 665mm-680mm, những c&acirc;y vợt c&oacute; th&acirc;n d&agrave;i hơn th&igrave; ưu thế tấn c&ocirc;ng sẽ tốt hơn v&agrave; ngược lại chiều d&agrave;i&nbsp;vợt ngắn hơn th&igrave; lợi thế về ph&ograve;ng thủ sẽ tốt hơn.<br />\r\n&nbsp; C&aacute;c h&atilde;ng vợt ghi tr&ecirc;n th&acirc;t vợt chữ &quot;LONGSIZE&quot; th&igrave; c&oacute; nghĩa c&acirc;y vợt đ&oacute; c&oacute; th&acirc;n vợt d&agrave;i hơn&nbsp;mức 670mm.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/chieu-dai-vot-cau-long_d8e3d8be374c41f5a2b614e72254fb41_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4. Điểm c&acirc;n bằng vợt - Balance Point</strong><br />\r\n&nbsp; K&yacute; hiệu thể hiện c&acirc;y vợt đ&oacute; nặng đầu, nhẹ đầu hay c&acirc;n bằng được ghi tr&ecirc;n th&acirc;n vợt, đặc điểm n&agrave;y ảnh hướng lớn đến c&aacute;ch chơi cầu cũng như khả năng chơi cầu của mỗi người.<br />\r\nVợt nặng đầu: &gt;295mm, &nbsp;Vợt nhẹ đầu: &lt;285mm, Vợt c&acirc;n bằng: khoảng 285mm-290mm.<br />\r\n+ Vợt nặng đầu &quot;HEAVY&quot;, đ&acirc;y l&agrave; c&acirc;y vợt d&agrave;nh cho những ai th&iacute;ch chơi cầu chuy&ecirc;n tấn c&ocirc;ng, đập cầu cắm s&acirc;n,&nbsp;c&oacute; sức khỏe cũng như cổ tay thật tốt.<br />\r\n+ Vợt c&acirc;n bằng &quot;EVEN BALANCE&quot;, ph&ugrave; hợp với lối chơi đa năng, c&ocirc;ng tốt - thủ tốt, thay đổi linh hoạt trong tấn c&ocirc;ng v&agrave; phản tạt cầu.<br />\r\n+ Vợt nhẹ đầu &quot; LIGHT HEAD&quot;, khả năng ph&ograve;ng thủ v&agrave; điều cầu tối ưu nhưng&nbsp;điểm yếu sẽ l&agrave; mặt&nbsp;tấn c&ocirc;ng.&nbsp;Những c&acirc;y vợt như thế n&agrave;y&nbsp;thường d&agrave;nh cho những ai đứng tr&ecirc;n lưới, c&oacute; cổ tay kh&ocirc;ng được khỏe.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/thong-so-vot-cau-long_c285a787ec314a2ca3800e3e4fb56b20_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\n<strong>5. Độ cứng v&agrave; độ dẻo th&acirc;n vợt</strong><br />\r\n&nbsp; Tr&ecirc;n c&aacute;n&nbsp;vợt của Lining thường ghi SOFT - HARD (Dẻo - Cứng) hoặc c&aacute;c con số như 8.0: &nbsp;vợt cứng, 8,5: cứng vừa, &nbsp;9.0: hơi dẻo, 9,5: vợt dẻo. &nbsp;<br />\r\nThường những c&acirc;y vợt cứng sẽ đi theo c&acirc;y vợt nặng v&agrave; nặng đầu, d&agrave;nh cho những ai th&iacute;ch lối chơi tấn c&ocirc;ng mạnh mẽ. Những c&acirc;y vợt dẻo sẽ đi k&egrave;m với những c&acirc;y vợt c&oacute; trọng lượng nhẹ hoặc c&acirc;n bằng, d&agrave;nh cho lối chơi cầu linh hoạt, ph&ograve;ng thủ v&agrave; phản tạt nhanh.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/thong-so-vot-cau-long-1_e225ec64646a472b8c3fe1487df7cab8_grande.jpg\" /></p>', '2022-09-11 14:39:18', '2023-05-16 05:31:29', 0),
(5, 'U22 Việt Nam giành huy chương đồng tại SEA Games 32', 'chinh-sach-bao-mat-thong-tin', 'http://127.0.0.1:8000/uploads/tintuc9.jpg', '<p><strong>U22 Việt Nam đ&aacute;nh bại Myanmar với tỷ số 3-1 trong trận tranh huy chương đồng m&ocirc;n b&oacute;ng đ&aacute; nam tại SEA Games 32.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đ&uacute;ng như dự đo&aacute;n, cả U22 Việt Nam lẫn U22 Myanmar đều nhập cuộc đầy cởi mở v&agrave; sẵn s&agrave;ng d&acirc;ng cao đội h&igrave;nh để chơi đ&ocirc;i c&ocirc;ng ngay từ những ph&uacute;t đầu ti&ecirc;n. Ch&iacute;nh v&igrave; thế m&agrave; đo&agrave;n qu&acirc;n của HLV Philippe Troussier c&oacute; rất nhiều cơ hội ngon ăn để ghi b&agrave;n.</p>\r\n\r\n<p>Ngay ở ph&uacute;t thứ 5, Văn Trường đ&atilde; c&oacute; cơ hội đối mặt với thủ m&ocirc;n sau sai lầm của h&agrave;ng thủ U22 Myanmar. Tiền đạo của U22 Việt Nam đ&atilde; đi b&oacute;ng qua cả thủ m&ocirc;n đội bạn nhưng lại kh&ocirc;ng thể dứt điểm. Tuy nhi&ecirc;n cũng chỉ 3 ph&uacute;t sau, Hồ Văn Cường đ&atilde; dứt điểm cận th&agrave;nh ch&iacute;nh x&aacute;c để mở tỷ số sớm cho U22 Việt Nam.</p>\r\n\r\n<p>Đến ph&uacute;t thứ 35, tỷ số được n&acirc;ng l&ecirc;n 2-0 cho U22 Việt Nam v&agrave; người ghi b&agrave;n lại l&agrave; Hồ Văn Cường. Từ đường chuyền của L&ecirc; Văn Đ&ocirc;, tiền đạo thuộc bi&ecirc;n chế SLNA tung c&uacute; dứt điểm quyết đo&aacute;n v&agrave;o g&oacute;c gần l&agrave;m tung n&oacute;c lưới. Thủ m&ocirc;n của U22 Myanmar ho&agrave;n to&agrave;n bị bất ngờ trước pha xử l&yacute; đẳng cấp n&agrave;y.</p>\r\n\r\n<p><a href=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/huynguyen/2023/05/16/u22-viet-nam-gianh-huy-chuong-dong-tai-sea-games-32-280870.jpg\"><img alt=\"U22 Việt Nam giành huy chương đồng tại SEA Games 32 280870\" src=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/huynguyen/2023/05/16/u22-viet-nam-gianh-huy-chuong-dong-tai-sea-games-32-280870.jpg\" style=\"height:1732px; width:2598px\" /></a></p>\r\n\r\n<p>Hồ Văn Cường tỏa s&aacute;ng với c&uacute; đ&uacute;p b&agrave;n thắng trong hiệp 1</p>\r\n\r\n<p>Sang đến hiệp 2, U22 Việt Nam tiếp tục c&oacute; th&ecirc;m những sự thay đổi người. Ph&uacute;t thứ 57, Quốc Việt c&oacute; pha đi b&oacute;ng solo xộc thẳng v&agrave;o trong v&ograve;ng cấm của Myanmar. Tiền đạo của HAGL sau đ&oacute; vẫn kịp thời tung đường chuyền dọn cỗ cho Khuất Văn Khang để số 8 của U22 Việt Nam dứt điểm 1 chạm n&acirc;ng tỷ số l&ecirc;n 3-0.</p>\r\n\r\n<p>Những ph&uacute;t cuối trận U22 Việt Nam lẫn U22 Myanmar đều c&oacute; th&ecirc;m nhiều cơ hội ghi b&agrave;n để gia tăng tỷ số. Tuy nhi&ecirc;n chỉ c&oacute; Myanmar l&agrave; tận dụng th&agrave;nh c&ocirc;ng 1 t&igrave;nh huống lộn xộn ở ph&uacute;t 89 để c&oacute; b&agrave;n thắng danh dự. Như vậy U22 Việt Nam c&oacute; được tấm HCĐ an ủi tại SEA Games 32 sau thắng lợi 3-1 trước U22 Myanmar.</p>\r\n\r\n<p><strong>90&#39;+4, HẾT GIỜ U22 VIỆT NAM 3-1 U22 MYANMAR</strong></p>\r\n\r\n<p><strong>89&#39; V&Agrave;O, 1-3 CHO U22 MYANMAR</strong></p>\r\n\r\n<p>U22 Myanmar cuối c&ugrave;ng đ&atilde; c&oacute; b&agrave;n danh dự. T&igrave;nh huống lộn xộn trong v&ograve;ng cấm v&agrave; tiền đạo đối phương rất nhanh tung c&uacute; đ&aacute;nh đầu ghi b&agrave;n.</p>\r\n\r\n<p><strong>85&#39; KH&Oacute; CHO U22 MYANMAR</strong></p>\r\n\r\n<p>U22 Myanmar vẫn nỗ lực đẩy cao đội h&igrave;nh để t&igrave;m kiếm b&agrave;n gỡ nhưng chưa thể tạo ra được cơ hội n&agrave;o thực sự ngon ăn trong hiệp 2.</p>\r\n\r\n<p><strong>77&#39; KH&Ocirc;NG V&Agrave;OOOO</strong></p>\r\n\r\n<p>Su&yacute;t ch&uacute;t nữa Khuất Văn Khang c&oacute; thể ho&agrave;n tất c&uacute; đ&uacute;p của m&igrave;nh. Đ&aacute;ng tiếc c&uacute; dứt điểm của tiền vệ mang &aacute;o số 8 lại hơi hiền.</p>\r\n\r\n<p><strong>70&#39; NỖ LỰC CỦA QUỐC VIỆT</strong></p>\r\n\r\n<p>Quốc Việt đang thi đấu đầy nỗ lực kể từ khi được tung v&agrave;o s&acirc;n. Đ&aacute;ng tiếc t&igrave;nh huống xử l&yacute; c&aacute; nh&acirc;n của anh kh&ocirc;ng qua được 2 hậu vệ Myanmar.</p>\r\n\r\n<p><strong>64&#39; PHẠM LỖI NGUY HIỂM</strong></p>\r\n\r\n<p>T&igrave;nh huống ham b&oacute;ng của cầu thủ U22 Myanmar khiến thủ m&ocirc;n Huy Ho&agrave;ng bị đau.</p>\r\n\r\n<p><strong>57&#39; V&Agrave;OOOO, 3-0 CHO U22 VIỆT NAM</strong></p>\r\n\r\n<p>Minh Trọng tho&aacute;t xuống đ&aacute;y bi&ecirc;n trước khi tung đường dọn cỗ để Văn Khang dễ d&agrave;ng dứt điểm ghi b&agrave;n.</p>\r\n\r\n<p><a href=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/huynguyen/2023/05/16/truc-tiep-u22-viet-nam-2-0-u22-myanmar-lai-la-ho-van-cuong-280837.jpg\"><img alt=\"Trực tiếp U22 Việt Nam 2-0 U22 Myanmar: Lại là Hồ Văn Cường 280837\" src=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/huynguyen/2023/05/16/truc-tiep-u22-viet-nam-2-0-u22-myanmar-lai-la-ho-van-cuong-280837.jpg\" style=\"height:1079px; width:1919px\" /></a></p>\r\n\r\n<p><strong>50&#39; KH&Ocirc;NG V&Agrave;OOO</strong></p>\r\n\r\n<p>Dấu ấn đầu ti&ecirc;n của Quốc Việt kể từ khi v&agrave;o s&acirc;n. Tiền đạo số 19 c&oacute; pha đột ph&aacute; ấn tượng trước khi chuyền b&oacute;ng cho Văn Khang dứt điểm.</p>\r\n\r\n<p><a href=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/huynguyen/2023/05/16/truc-tiep-u22-viet-nam-2-0-u22-myanmar-lai-la-ho-van-cuong-280836.jpg\"><img alt=\"Trực tiếp U22 Việt Nam 2-0 U22 Myanmar: Lại là Hồ Văn Cường 280836\" src=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/huynguyen/2023/05/16/truc-tiep-u22-viet-nam-2-0-u22-myanmar-lai-la-ho-van-cuong-280836.jpg\" style=\"height:789px; width:1382px\" /></a></p>\r\n\r\n<p><strong>46&#39;+1, HIỆP 2 BẮT ĐẦU</strong></p>\r\n\r\n<p><strong>45&#39;+4, HẾT HIỆP 1, U22 VIỆT NAM 2-0 U22 MYANMAR</strong></p>\r\n\r\n<p><a href=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/huynguyen/2023/05/16/truc-tiep-u22-viet-nam-2-0-u22-myanmar-lai-la-ho-van-cuong-280824.jpg\"><img alt=\"Trực tiếp U22 Việt Nam 2-0 U22 Myanmar: Lại là Hồ Văn Cường 280824\" src=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/huynguyen/2023/05/16/truc-tiep-u22-viet-nam-2-0-u22-myanmar-lai-la-ho-van-cuong-280824.jpg\" style=\"height:1250px; width:1080px\" /></a></p>\r\n\r\n<p><strong>40&#39; KH&Ocirc;NG V&Agrave;OOOO</strong></p>\r\n\r\n<p>Thủ m&ocirc;n Huy Ho&agrave;ng c&oacute; t&igrave;nh huống phản xạ xuất sắc để cứu thua sau khi c&uacute; s&uacute;t của cầu thủ Myanmar đập ch&acirc;n v&agrave; đổi hướng.</p>\r\n\r\n<p><a href=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/huynguyen/2023/05/16/truc-tiep-u22-viet-nam-2-0-u22-myanmar-lai-la-ho-van-cuong-280818.jpg\"><img alt=\"Trực tiếp U22 Việt Nam 2-0 U22 Myanmar: Lại là Hồ Văn Cường 280818\" src=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/huynguyen/2023/05/16/truc-tiep-u22-viet-nam-2-0-u22-myanmar-lai-la-ho-van-cuong-280818.jpg\" style=\"height:794px; width:1266px\" /></a></p>\r\n\r\n<p><strong>35&#39; V&Agrave;O, LẠI L&Agrave; HỒ VĂN CƯỜNG V&Agrave; 2-0 CHO U22 VIỆT NAM</strong></p>\r\n\r\n<p>Một ng&agrave;y thi đấu b&ugrave;ng nổ của Hồ Văn Cường. Từ đường chuyển của L&ecirc; Văn Đ&ocirc;, số 13 của U22 Việt Nam tung c&uacute; s&uacute;t uy lực v&agrave;o g&oacute;c gần l&agrave;m tung n&oacute;c lưới.</p>\r\n\r\n<p><strong>33&#39; VĂN Đ&Ocirc; QU&Aacute; ĐEN ĐỦI</strong></p>\r\n\r\n<p>Th&ecirc;m 1 t&igrave;nh huống phản c&ocirc;ng nhanh v&agrave; rất hiệu quả của U22 Việt Nam. Đ&aacute;ng tiếc c&uacute; dứt điểm của L&ecirc; Văn Đ&ocirc; đưa b&oacute;ng chạm cột dọc.</p>\r\n\r\n<p><a href=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/huynguyen/2023/05/16/truc-tiep-u22-viet-nam-1-0-u22-myanmar-vuon-len-dan-truoc-280808.jpg\"><img alt=\"Trực tiếp U22 Việt Nam 1-0 U22 Myanmar: Vươn lên dẫn trước 280808\" src=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/huynguyen/2023/05/16/truc-tiep-u22-viet-nam-1-0-u22-myanmar-vuon-len-dan-truoc-280808.jpg\" style=\"height:1079px; width:1919px\" /></a></p>\r\n\r\n<p><strong>22&#39; KH&Ocirc;NG ĐƯỢC</strong></p>\r\n\r\n<p>U22 Việt Nam đang để cho đối thủ c&oacute; nhiều khoảng trống. Thủ m&ocirc;n Huy Ho&agrave;ng đ&atilde; băng ra nhanh trong t&igrave;nh huống n&agrave;y để l&agrave;m chủ t&igrave;nh h&igrave;nh.</p>\r\n\r\n<p><a href=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/huynguyen/2023/05/16/truc-tiep-u22-viet-nam-1-0-u22-myanmar-vuon-len-dan-truoc-280798.jpg\"><img alt=\"Trực tiếp U22 Việt Nam 1-0 U22 Myanmar: Vươn lên dẫn trước 280798\" src=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/huynguyen/2023/05/16/truc-tiep-u22-viet-nam-1-0-u22-myanmar-vuon-len-dan-truoc-280798.jpg\" style=\"height:724px; width:1412px\" /></a></p>\r\n\r\n<p><strong>15&#39; U22 MYANMAR Đ&Aacute; PRESSING</strong></p>\r\n\r\n<p>Đội bạn vẫn đang rất t&iacute;ch chơi &aacute;p s&aacute;t ngay tr&ecirc;n phần s&acirc;n của U22 Việt Nam. Tuy nhi&ecirc;n điều n&agrave;y c&oacute; thể tạo điều kiện cho những pha phản c&ocirc;ng của ch&uacute;ng ta.</p>\r\n\r\n<p><strong>8&#39; V&Agrave;O, TỶ SỐ ĐƯỢC MỞ CHO U22 VIỆT NAM</strong></p>\r\n\r\n<p>T&igrave;nh huống tấn c&ocirc;ng chớp nho&aacute;ng của U22 Việt Nam được tận dụng rất tốt. Hồ Văn Cường l&agrave; người ghi b&agrave;n với c&uacute; dứt điểm ch&iacute;nh x&aacute;c ở cự ly gần.</p>', '2022-09-11 07:52:51', '2023-05-16 05:37:53', 0),
(6, 'Áo đá bóng các câu lạc bộ nổi tiếng đẹp nhất 2021-2022', '234234234', 'http://127.0.0.1:8000/uploads/tintuc7.jpg', '<h2><strong><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-manchester-united-san-nha-2021-2022-chat-luong\">&Aacute;o b&oacute;ng đ&aacute; Manchester United s&acirc;n nh&agrave;&nbsp;2021 - 2022 m&agrave;u đỏ</a></strong></h2>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-cau-lac-bo-mu-san-nha-2021-2022_e919886a70964dd09509d92a812f3d35_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-manchester-united-san-khach-2021-2022-chat-luong\">&Aacute;o b&oacute;ng đ&aacute; Manchester United s&acirc;n kh&aacute;ch&nbsp;2021 - 2022</a>&nbsp;m&agrave;u trắng xanh</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-cau-lac-bo-mu-san-khach-2021_546584e7db1448ecbd1bbea7cdeacb50_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-manchester-united-san-khach-2021-2022-chat-luong-1\">&Aacute;o b&oacute;ng đ&aacute; Manchester United s&acirc;n kh&aacute;ch&nbsp;2021 - 2022</a></strong><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-manchester-united-san-khach-2021-2022-chat-luong-1\"><strong>&nbsp;m&agrave;u xanh</strong></a></p>\r\n\r\n<h2><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-cau-lac-bo-san-khach-2021-xanh_422164c6fb04447bb9c257a16485d37a_grande.jpg\" /></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-asenal-san-nha-2021-2022-chat-luong\">&Aacute;o b&oacute;ng đ&aacute;</a>&nbsp;c&acirc;u lạc bộ<a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-asenal-san-nha-2021-2022-chat-luong\">&nbsp;Asenal</a>&nbsp;s&acirc;n&nbsp;nh&agrave; 2021-2022 m&agrave;u đỏ</strong></h3>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-cau-lac-bo-asenal-san-nha-2021_63d2e1975b264d2ba2a0758df5e73129_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-asenal-san-khach-2021-2022-xanh-duong\">&Aacute;o b&oacute;ng đ&aacute;</a><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-asenal-san-khach-2021-2022-xanh-duong\">&nbsp;Asenal</a>&nbsp;s&acirc;n kh&aacute;ch&nbsp;2021-2022 m&agrave;u xanh</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-cau-lac-bo-asenal-mau-xanh-2021_4a2b54a2468a487ea119585f53cd9e27_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-leicester-city-san-khach-2021-2022-chat-luong\">&Aacute;o b&oacute;ng đ&aacute;</a><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-leicester-city-san-khach-2021-2022-chat-luong\">&nbsp;Leicester City</a><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-asenal-san-khach-2021-2022-xanh-duong\">&nbsp;</a>s&acirc;n kh&aacute;ch&nbsp;2021-2022 xanh biển</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-cau-lac-bo-asenal-san-khach-2021_5fb01fa45ed0434ebc62c67d7f00ad1e_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-atletico-madrid-san-nha-2021-2022-chat-luong\">&Aacute;o b&oacute;ng đ&aacute;</a><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-atletico-madrid-san-nha-2021-2022-chat-luong\">&nbsp;Alentico Marid</a><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-asenal-san-khach-2021-2022-xanh-duong\">&nbsp;</a>s&acirc;n nh&agrave;&nbsp;2021-2022 sọc đỏ trắng</strong><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-cau-lac-bo-atletico-san-nha-2021-2022_80c58deb1804456cbbd5055fdbb3bc59_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>&Aacute;o b&oacute;ng đ&aacute; Paris Saint Germain s&acirc;n nh&agrave;&nbsp;2021 - 2022 m&agrave;u xanh đen</strong></h3>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-cau-lac-bo-paris-san-nha-2021_18789d63455641649e405c8df3778212_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-paris-saint-germain-san-khach-2021-2022-mau-trang\">&Aacute;o b&oacute;ng đ&aacute;</a></strong><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-paris-saint-germain-san-khach-2021-2022-mau-trang\"><strong>&nbsp;Paris Saint Germain</strong></a><strong><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-asenal-san-khach-2021-2022-xanh-duong\">&nbsp;</a>s&acirc;n kh&aacute;ch&nbsp;2021-2022 m&agrave;u trắng</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-cau-lac-bo-paris-2021-2022_fa4144752a324673b8ff9839f1133771_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-tottenham-san-khach-2021-2022-mau-tim\">&Aacute;o b&oacute;ng đ&aacute;&nbsp;</a><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-tottenham-san-khach-2021-2022-mau-tim\">Totenham m&agrave;u</a>&nbsp;s&acirc;n kh&aacute;ch&nbsp;2021-2022 m&agrave;u t&iacute;m</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-cau-lac-bo-tottenham-2021-2022_38d8ffc98ca14e4b80d1ec12d930c67f_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-tottenham-san-nha-2021-2022-chat-luong\">&Aacute;o b&oacute;ng đ&aacute;&nbsp;</a><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-tottenham-san-nha-2021-2022-chat-luong\">Totenham</a><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-asenal-san-khach-2021-2022-xanh-duong\">&nbsp;</a>s&acirc;n nh&agrave;&nbsp;2021-2022 m&agrave;u trắng</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-cau-lac-bo-tottenham-san-nha-2021-2022_f3c624b51ea249d488a169a822e76b54_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-barcelona-san-nha-2021-2022-chat-luong\">&Aacute;o b&oacute;ng đ&aacute;&nbsp;</a><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-barcelona-san-nha-2021-2022-chat-luong\">Barcelona&nbsp;s&acirc;n nh&agrave;</a>&nbsp;2021-2022 sọc</strong></h3>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-cau-lac-bo-barcelona-san-nha-2021-2022_5f9f2895c4dd4218a152a7fc350f7a1b_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-barcelona-san-nha-2021-2022-chat-luong\">&Aacute;o b&oacute;ng đ&aacute;&nbsp;</a><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-barcelona-san-nha-2021-2022-chat-luong\">Barcelona&nbsp;s&acirc;n</a>&nbsp;kh&aacute;ch&nbsp;2021-2022 m&agrave;u trắng</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-barcelona-san-khach-2022_ca207b49fee845f78a779a40dff6181e_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-bayern-munich-san-khach-2021-2022-chat-luong\">&Aacute;o b&oacute;ng đ&aacute;&nbsp;</a><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-bayern-munich-san-khach-2021-2022-chat-luong\">Bayern&nbsp;Munich s&acirc;n kh&aacute;ch</a>&nbsp;2021-2022 m&agrave;u đen</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-cau-lac-bo-bayern-mau-den-2021_6fa4a52f87404679991605fcab282dd8_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-bayern-munich-san-nha-2021-2022-chat-luong\">&Aacute;o b&oacute;ng đ&aacute;&nbsp;</a><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-bayern-munich-san-nha-2021-2022-chat-luong\">Bayern&nbsp;Munich s&acirc;n nh&agrave;&nbsp;</a>2021-2022 m&agrave;u đỏ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-cau-lac-bo-bayern-san-nha-2021_57d3b3f92b2a40b0ab50fe11ba6b7379_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-chelsea-san-khach-2021-2022-den-xanh\">&Aacute;o b&oacute;ng đ&aacute;&nbsp;</a><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-chelsea-san-khach-2021-2022-den-xanh\">Chelsea&nbsp;s&acirc;n kh&aacute;ch</a>&nbsp;2021-2022 m&agrave;u đen xanh</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-cau-lac-bo-chelsea-san-khach-2021_1dae82baef2849c492b2ff7c1c3b825c_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-chelsea-san-nha-2021-2022-chat-luong\">&Aacute;o b&oacute;ng đ&aacute;&nbsp;</a><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-chelsea-san-nha-2021-2022-chat-luong\">Chelsea&nbsp;s&acirc;n nh&agrave;</a>&nbsp;2021-2022 m&agrave;u xanh b&iacute;ch</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-cau-lac-bo-chelsea-san-nha-2021_b97783fadda74ab69e91c40f64469bcd_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-dortmund-san-nha-2021-2022-chat-luong\">&Aacute;o b&oacute;ng đ&aacute;&nbsp;</a><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-dortmund-san-nha-2021-2022-chat-luong\">Dormunt&nbsp;s&acirc;n nh&agrave;</a>&nbsp;2021-2022 m&agrave;u v&agrave;ng</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-cau-lac-bo-dormunt-san-nha-2021_2b69db9a9d504da493949a17dd70ae4d_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-juventus-san-nha-2021-2022\">&Aacute;o b&oacute;ng đ&aacute;&nbsp;</a><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-juventus-san-nha-2021-2022\">Juventus&nbsp;s&acirc;n nh&agrave;</a>&nbsp;2021-2022 sọc trắng đen</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-cau-lac-bo-juventus-san-nha-2021_7c128d77b9b645f3ab72b910d693dec8_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-liverpool-2021-2022-mau-vang\">&Aacute;o đ&aacute; b&oacute;ng&nbsp;</a><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-liverpool-2021-2022-mau-vang\">Liverpool&nbsp;s&acirc;n kh&aacute;ch</a>&nbsp;2021-2022 m&agrave;u v&agrave;ng</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-cau-lac-bo-liverpool-mau-vang-2021_b049ef6756374e28be45813895c961d8_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><a href=\"http://xn--o%20bng%20%20liverpool%20sn%20khch%202021-2022%20mu%20vng-5defdks4c31ez4c/\">&Aacute;o đ&aacute; b&oacute;ng&nbsp;</a><a href=\"http://xn--o%20bng%20%20liverpool%20sn%20khch%202021-2022%20mu%20vng-5defdks4c31ez4c/\">Liverpool&nbsp;s&acirc;n nh&agrave;&nbsp;</a>2021-2022 m&agrave;u đỏ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-cau-lac-bo-liverpool-san-nha-2021_67a5232c33664b03b002d0556ae8bd73_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-olympique-lyonnais-2021-2022-mau-trang\">&Aacute;o đ&aacute; b</a>anh&nbsp;<a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-olympique-lyonnais-2021-2022-mau-trang\">Lyon&nbsp;s&acirc;n nh&agrave;</a>&nbsp;2021- 2022 m&agrave;u trắng&nbsp;<img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-cau-lac-bo-lyon-trang-2021_cf5453dbbcee44ff9de269a2a775fe8d_grande.jpg\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-manchester-city-san-khach-2021-2022-chat-luong\">&Aacute;o b&oacute;ng đ&aacute;&nbsp;</a><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-manchester-city-san-khach-2021-2022-chat-luong\">Manchester City&nbsp;s&acirc;n kh&aacute;ch&nbsp;</a>2021- 2022 m&agrave;u trắng</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-cau-lac-bo-manchester-city-trang-2021_a31fa89afd834e36a19a9f03c17f6c54_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-manchester-city-san-nha-2021-2022-chat-luong\">&Aacute;o b&oacute;ng đ&aacute;&nbsp;</a><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-manchester-city-san-nha-2021-2022-chat-luong\">Manchester City&nbsp;s&acirc;n nh&agrave;</a>&nbsp;2021- 2022 m&agrave;u xanh</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-cau-lac-bo-san-nha-2021_9472832af7bb476b81fbdad521cf6ccf_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-real-madrid-san-nha-2021-2022-chat-luong\">&Aacute;o đ&aacute; banh&nbsp;</a><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-real-madrid-san-nha-2021-2022-chat-luong\">Real Madrid&nbsp;s&acirc;n nh&agrave;</a>&nbsp;2021- 2022 m&agrave;u trắng</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-cau-lac-bo-real-san-nha-2021-2022_02c1b02df41147bb96c4bfe2b1c02718_grande.jpg\" /></p>\r\n\r\n<p><strong><a href=\"https://bigsport.vn/products/bo-quan-ao-bong-da-real-madrid-san-nha-2021-2022-chat-luong\">&Aacute;o đ&aacute; banh&nbsp;Real Madrid&nbsp;s&acirc;n&nbsp;</a>kh&aacute;ch&nbsp;2021- 2022 m&agrave;u&nbsp;xanh đen</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-real-san-khach-2022_9b1d358aab874afb8b718cbc839c3e15_grande.jpg\" /></p>', '2022-09-11 07:53:02', '2023-05-16 05:35:19', 0);
INSERT INTO `news` (`id`, `title`, `href_param`, `thumbnail`, `content`, `created_at`, `updated_at`, `deleted`) VALUES
(7, 'Top 5 quả bóng đá sân Futsal bán chạy nhất năm 2022', 'gioi-thieu-doanh-nghiep', 'http://127.0.0.1:8000/uploads/tuctuc5.jpg', '<h2><strong>1. Quả b&oacute;ng đ&aacute; GeruStar&nbsp;Futsal 2030 d&aacute;n.</strong></h2>\r\n\r\n<p>&nbsp;Nếu những ai y&ecirc;u th&iacute;ch v&agrave; chơi đ&aacute; b&oacute;ng th&igrave; chắc hẵn đều biết đến thương hiệu thể thao GeruStar v&agrave; quả b&oacute;ng đ&aacute; 2030 huyền thoại.&nbsp;</p>\r\n\r\n<p>B&oacute;ng thiết kế m&agrave;u cực kỳ đẹp mắt, sử dụng m&agrave;u v&agrave;ng&nbsp;l&agrave;m chủ đạo v&agrave; phối m&agrave;u xanh da. Chất lượng b&oacute;ng GeruStar tốt,&nbsp;ỗn định c&ugrave;ng với mức gi&aacute; b&aacute;n hợp l&yacute;.</p>\r\n\r\n<p>2030 được rất nhiều s&acirc;n b&oacute;ng&nbsp;sử dụng để phục vụ cho kh&aacute;ch h&agrave;ng tới chơi b&oacute;ng.</p>\r\n\r\n<p>&nbsp;Với những điểm nổi trội tr&ecirc;n quả b&oacute;ng đ&aacute; 2030 của thương hiệu GeruStar&nbsp;xứng đ&aacute;ng đứng vị tr&iacute; số 1.</p>\r\n\r\n<h3>&rArr; Th&ocirc;ng tin Quả b&oacute;ng đ&aacute; GeruStar&nbsp;Futsal 2030 d&aacute;n</h3>\r\n\r\n<p>+ B&oacute;ng sử&nbsp;dụng chất liệu da&nbsp;PU cao cấp, độ bền cao.</p>\r\n\r\n<p>+ K&iacute;ch thước: Size 4</p>\r\n\r\n<p>+ Trọng lượng:&nbsp;0.43kg</p>\r\n\r\n<p>+ Chu vi b&oacute;ng:&nbsp;610 - 620mm</p>\r\n\r\n<p>+ Sản xuất tại Việt Nam</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/qua-bong-da-futsal-geru-star-2030-dan-h5_fab05e6d4cf54261b3a1f82ae2e48658_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2.&nbsp;<strong>Quả b&oacute;ng đ&aacute; GeruStar&nbsp;Futsal 2030 khau tay.</strong></p>\r\n\r\n<p>- Đ&acirc;y cũng l&agrave; quả b&oacute;ng Futsal của thương hiệu GeruStar nhưng điểm kh&aacute;c biệt ở chổ l&agrave; b&oacute;ng được kh&acirc;u tay n&ecirc;n chắc chắn độ bền sẻ cao hơn v&agrave; gi&aacute; nhỉnh hơn quả b&oacute;ng đ&aacute; 2030 d&aacute;n.</p>\r\n\r\n<p>- Về kiểu thiết kế họa tiết tr&ecirc;n b&oacute;ng th&igrave; cả 2 mẫu đều giống nhau nhưng B&oacute;ng 2030 kh&acirc;u&nbsp;tay lấy m&agrave;u v&agrave;ng nhạt l&agrave;m chủ đạo v&agrave;&nbsp;phối th&ecirc;m m&agrave;u đỏ.</p>\r\n\r\n<h3>&rArr; Th&ocirc;ng tin Quả b&oacute;ng đ&aacute; GeruStar&nbsp;Futsal 2030 kh&acirc;u tay:</h3>\r\n\r\n<p>- Chất liệu da tr&ecirc;n 2030 kh&acirc;u tay l&agrave; da&nbsp;PU cao cấp, độ bền cao v&agrave; chịu m&agrave;i m&ograve;n tốt.</p>\r\n\r\n<p>- K&iacute;ch thước b&oacute;ng: Size 4</p>\r\n\r\n<p>- Trọng lượng: 0.43kg</p>\r\n\r\n<p>- Chu vi b&oacute;ng:&nbsp;610 - 620mm</p>\r\n\r\n<p>- Sản xuất tại Việt Nam.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/bong-futsal-2030-khau-tay_6326915807bf46d6ab15dc68220abc32_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>3. Quả b&oacute;ng đ&aacute; Futsal GeruStal Galaxy d&aacute;n</strong></h2>\r\n\r\n<p>Đứng vị tr&iacute; thứ 3&nbsp;cũng vẫn&nbsp;l&agrave; quả b&oacute;ng đến từ thương hiệu GeruStar,&nbsp;quả b&oacute;ng đ&aacute; Futsal mang t&ecirc;n&nbsp;Galaxy.</p>\r\n\r\n<p>Tuy l&agrave; quả b&oacute;ng ra sau 2 đ&agrave;n anh 2030 nhưng nhờ chất lượng tốt cũng như gi&aacute; th&agrave;nh&nbsp;thấp hơn n&ecirc;n&nbsp;Galaxy vẫn giữ cho m&igrave;nh vị thế nhất định trong bảng xếp hạng.</p>\r\n\r\n<h2>&rArr; Th&ocirc;ng số quả&nbsp;b&oacute;ng đ&aacute;&nbsp;Gerustar Galaxy d&aacute;n</h2>\r\n\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>+ Chất liệu:</td>\r\n			<td>Da PU cao cấp</td>\r\n		</tr>\r\n		<tr>\r\n			<td>+ Trọng lượng</td>\r\n			<td>420gr - 440gr</td>\r\n		</tr>\r\n		<tr>\r\n			<td>+ Chi vi b&oacute;ng:</td>\r\n			<td>610mm - 630mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>+ Độ nẫy:</td>\r\n			<td>50cm - 60cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>+ Size b&oacute;ng:</td>\r\n			<td>Size 4</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/qua-bong-da-futsal-gerustar-galaxy-h3_8656350a0d0740fdaa3b706241058585_grande.jpg\" /></p>\r\n\r\n<h2><strong>4 Quả B&oacute;ng đ&aacute; Futsal Động lực 2.76 kh&acirc;u tay.</strong></h2>\r\n\r\n<p>Nhắc đến những quả b&oacute;ng đ&aacute; chắc hẳn kh&ocirc;ng thể kh&ocirc;ng nhớ tới B&oacute;ng đ&aacute; Động Lực v&agrave; đ&acirc;y c&oacute; lẻ đang l&agrave; thương hiệu b&oacute;ng đ&aacute; nổi ti&ecirc;ng bậc&nbsp;nhất Việt Nam. Hiện nay hầu hết những giải b&oacute;ng đ&aacute; h&agrave;ng đầu Việt Nam thương hiệu&nbsp;Động Lục đều&nbsp;l&agrave; nh&agrave; t&agrave;i trợ ch&iacute;nh. Điển h&igrave;nh l&agrave; quả b&oacute;ng đ&aacute; thi đấu&nbsp;<a href=\"https://bigsport.vn/products/qua-bong-da-dong-luc-uhv-2-07\">UHV 2.07</a>&nbsp;được giải b&oacute;ng đ&aacute; V-League sử dụng rất nhiều năm nay.</p>\r\n\r\n<p>Tuy b&oacute;ng futsal&nbsp;2.76 mới ra sau n&agrave;y nhưng ch&iacute;nh thương hiệu Động Lực&nbsp;qu&aacute; nổi tiếng c&ugrave;ng với chất lượng h&agrave;ng đầu v&agrave; mẫu&nbsp;thiết kế qu&aacute; đẹp&nbsp;n&ecirc;n quả b&oacute;ng đ&aacute; n&agrave;y nhanh ch&oacute;ng đến được tay kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<h3>&rArr; Th&ocirc;ng số&nbsp;B&oacute;ng Futsal Động Lực 2.76:</h3>\r\n\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>+ Chất liệu:</td>\r\n			<td>Da PU cao cấp</td>\r\n		</tr>\r\n		<tr>\r\n			<td>+ Trọng lượng:&nbsp;</td>\r\n			<td>400gr - 440gr</td>\r\n		</tr>\r\n		<tr>\r\n			<td>+ Chi vi b&oacute;ng:</td>\r\n			<td>610mm - 630mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>+ Độ nẫy:</td>\r\n			<td>50cm - 60cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>+ Size b&oacute;ng:</td>\r\n			<td>Size 4</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>- B&oacute;ng thiết kế m&agrave;u trắng l&agrave;m chủ đạo v&agrave;&nbsp;phối m&agrave;u&nbsp;xanh đẹp mắt c&ugrave;ng với lớp da v&acirc;n cho quả b&oacute;ng th&ecirc;m phần cao cấp.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/qua-bong-da-futsal-dong-luc-2.76_edc7a6f0232042dd999e1f953ec8a52f_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>5. Quả&nbsp;b&oacute;ng đ&aacute; Futsal&nbsp;ProStar Delta 2030 d&aacute;n</strong></h2>\r\n\r\n<p>Delta 2030 l&agrave; quả b&oacute;ng đến từ thương hiệu thể thao ProStar, thương hiệu kh&aacute; non trẻ so với Động Lực v&agrave; GeruStar.</p>\r\n\r\n<p>L&agrave; vị tr&iacute; cuối c&ugrave;ng của Top 5 quả b&oacute;ng đ&aacute; s&acirc;n Futsal, s&acirc;n cỏ nh&acirc;n tạo y&ecirc;u th&iacute;ch nhất. Tuy đứng vị trị thứ 5 nhưng kh&ocirc;ng phải Delta c&oacute; doanh số b&aacute;n chậm. Theo th&ocirc;ng tin&nbsp;b&aacute;n h&agrave;ng của hệ thống cửa h&agrave;ng thể thao BigSport th&igrave;&nbsp;năm 2021, BigSport b&aacute;n ra tới hơn 300 quả b&oacute;ng Delta 2030.</p>\r\n\r\n<p>Nhờ chất lượng ổn đinh, gi&aacute; b&aacute;n hấp giẫn c&ugrave;ng với mẫu m&atilde; đẹp&nbsp;n&ecirc;n quả b&oacute;ng đ&aacute; Futsal Delta 2030 xứng đ&aacute;ng được lọt v&agrave;o top 5 quả b&oacute;ng đ&aacute; s&acirc;n cỏ nh&acirc;n tạo được y&ecirc;u th&iacute;ch nhất hiện nay.</p>\r\n\r\n<h3>&rArr;&nbsp;Th&ocirc;ng&nbsp;tin b&oacute;ng đ&aacute; 2030 Delta ProStar d&aacute;n d&aacute;n</h3>\r\n\r\n<p>- Chất liệu:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Da PU cao cấp</p>\r\n\r\n<p>- K&iacute;ch thước:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Size 4</p>\r\n\r\n<p>- Trọng lượng:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.43kg</p>\r\n\r\n<p>- K&iacute;ch thước:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 610 - 620mm</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/qua-bong-da-futsal-prostar-delta_4e0548c8efb4482fb5351c4f9aa3118e_grande.jpg\" /></p>', '2022-09-11 14:39:18', '2023-05-16 05:32:24', 0),
(8, 'Tin tưởng Haaland, HLV Pep Guardiola gửi lời cảnh báo đến Real Madrid', 'chinh-sach-bao-mat-thong-tin', 'http://127.0.0.1:8000/uploads/tintuc11.jpg', '<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p>Pep Guardiola hy vọng Erling Haaland sẽ t&igrave;m lại ch&iacute;nh m&igrave;nh trong trận lượt về b&aacute;n kết UEFA Champions League 2022/23 với Real Madrid.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://thethao247.vn/426-erling-haaland-cuoi-cung-da-bi-khuat-phuc-boi-mot-con-quai-vat-d286362.html\" target=\"_blank\">Erling Haaland đ&atilde; bị Antonio Rudiger kh&oacute;a chặt</a>&nbsp;trong trận h&ograve;a ở Bernabeu tuần trước, nhưng 35 trong số 51 b&agrave;n thắng của cầu thủ người Na Uy m&ugrave;a n&agrave;y đ&atilde; đến tại SVĐ The Etihad v&agrave; HLV Pep Guardiola cho rằng trận t&aacute;i đấu sẽ dễ d&agrave;ng hơn đối với tiền đạo ng&ocirc;i sao của &ocirc;ng, người vừa được Hiệp hội nh&agrave; b&aacute;o b&oacute;ng đ&aacute; (FWA) bầu chọn l&agrave; Cầu thủ xuất sắc nhất năm.</p>\r\n\r\n<p><em>&quot;Xin ch&uacute;c mừng Rudiger nhưng ch&uacute;ng ta kh&ocirc;ng thể qu&ecirc;n Erling Haaland mới 22 tuổi v&agrave; đ&acirc;y l&agrave; lần đầu ti&ecirc;n anh ấy chơi ở b&aacute;n kết Champions League. Haaland mới lần đầu ti&ecirc;n đến Bernabeu, một trong những s&acirc;n khấu lớn nhất, trước một c&acirc;u lạc bộ h&agrave;ng đầu với những hậu vệ, tiền vệ v&agrave; tiền đạo giỏi, t&ocirc;i c&aacute; l&agrave; lần tới sẽ dễ d&agrave;ng hơn một ch&uacute;t.&quot;</em></p>\r\n\r\n<p><em>&quot;Nếu đội c&oacute; thể chơi tốt hơn một ch&uacute;t ở một số những vị tr&iacute; theo c&aacute;ch ch&uacute;ng t&ocirc;i đang nghĩ v&agrave;o những ng&agrave;y tới, c&oacute; lẽ mọi chuyện sẽ dễ d&agrave;ng hơn cho Haaland. Cuối c&ugrave;ng, đ&oacute; l&agrave; những g&igrave; ch&uacute;ng t&ocirc;i đang cố gắng l&agrave;m. Haaland đ&atilde; chiến đấu rất nhiều v&agrave; thể hiện sự cam kết đ&aacute;ng kinh ngạc với những g&igrave; anh ấy phải l&agrave;m ở Madrid.&quot;&nbsp;</em>HLV của Man City n&oacute;i trong buổi họp b&aacute;o trước&nbsp;<a href=\"https://thethao247.vn/449-truc-tiep-everton-vs-man-city-20h00-ngay-14-5-d286771.html\" target=\"_blank\">trận gặp Everton tại v&ograve;ng 36 Ngoại hạng Anh.</a></p>\r\n\r\n<p><a href=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/camhm/2023/05/14/645bc2ffa403a-1684051706-151123.jpeg\"><img alt=\"645bc2ffa403a-1684051706.jpeg\" src=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/camhm/2023/05/14/645bc2ffa403a-1684051706-151123.jpeg\" style=\"height:675px; width:1200px\" /></a></p>\r\n\r\n<p>Pep Guardiola tự tin Haaland sẽ t&igrave;m lại phong độ ghi b&agrave;n trong trận lượt về với Real Madrid. Ảnh: GETTY</p>\r\n\r\n<p>Rudiger vốn đ&atilde; l&agrave; một nh&acirc;n vật kh&ocirc;ng được l&ograve;ng người h&acirc;m mộ Man City v&igrave; đ&atilde; khiến Kevin De Bruyne bị chấn thương trong trận chung kết Champions League 2021 gặp Chelsea. Trung vệ người Đức hiện đ&atilde; khiến Haaland &quot;c&acirc;m n&iacute;n&quot; ở trận lượt đi v&agrave; được kỳ vọng sẽ tiếp tục giữ vững phong độ trong trận lượt về.</p>\r\n\r\n<p>Pep Guardiola đang ủng hộ tiền đạo của m&igrave;nh v&agrave; thậm ch&iacute; c&oacute; thể sử dụng Haaland trong trận đấu tại Premier League với Everton trước khi tung anh ra s&acirc;n thi đấu với Real.</p>\r\n\r\n<p><em>&quot;T&ocirc;i kh&aacute; chắc chắn rằng Haaland đ&atilde; sẵn s&agrave;ng, đầu ti&ecirc;n l&agrave; cho Chủ nhật gặp Everton v&agrave; sau đ&oacute; l&agrave; c&aacute;c trận đấu tiếp theo&quot;</em>, chiến lược gia người T&acirc;y Ban Nha n&oacute;i th&ecirc;m.&nbsp;</p>', '2022-09-11 07:52:51', '2023-05-16 05:39:56', 0),
(9, 'HLV Troussier: \'Thái Lan và Indonesia không mạnh hơn U22 Việt Nam\'', '234234234', 'http://127.0.0.1:8000/uploads/tintuc8.jpg', '<p><strong>HLV Troussier đ&atilde; c&oacute; những nhận x&eacute;t đ&aacute;ng ch&uacute; &yacute; sau khi U22 Việt Nam vượt qua Myanmar để gi&agrave;nh được huy chương đồng m&ocirc;n b&oacute;ng đ&aacute; nam SEA Games 32.</strong></p>\r\n\r\n<p>Với việc thất bại trước U22 Indonesia ở trận b&aacute;n kết 1 m&ocirc;n b&oacute;ng đ&aacute; nam&nbsp;<a href=\"https://thethao247.vn/sea-games\" target=\"_blank\">SEA Games 32</a>, U22 Việt Nam ch&iacute;nh thức hết cơ hội bảo vệ th&agrave;nh c&ocirc;ng tấm huy chương v&agrave;ng. Tuy nhi&ecirc;n, người h&acirc;m mộ vẫn rất kỳ vọng v&agrave;o việc thầy tr&ograve; HLV Philippe Troussier sẽ đ&aacute;nh bại U22 Myanmar ở trận tranh hạng 3 để gi&agrave;nh được tấm huy chương đồng.</p>\r\n\r\n<p>Tr&ecirc;n thực tế, Những chiến binh Sao V&agrave;ng đ&atilde; thi đấu lấn lướt ho&agrave;n to&agrave;n so với đối thủ bất chấp việc kh&ocirc;ng c&oacute; được đội h&igrave;nh mạnh nhất khi cả Văn T&ugrave;ng, Thanh Nh&agrave;n v&agrave; Quốc Việt đều gặp chấn thương. Sau 90 ph&uacute;t b&oacute;ng lăn,&nbsp;<a href=\"https://thethao247.vn/sea-games/406-ket-qua-u22-viet-nam-vs-u22-myanmar-vot-vat-danh-du-d286939.html\" target=\"_blank\">U22 Việt Nam đ&atilde; c&oacute; được điều m&igrave;nh cần l&agrave; chiến thắng 3-1 với c&aacute;c pha lập c&ocirc;ng của Văn Cường (hai b&agrave;n) v&agrave; Khuất Văn Khang, qua đ&oacute; gi&agrave;nh được tấm huy chương đồng</a>.</p>\r\n\r\n<p>Chia sẻ trong buổi họp b&aacute;o sau trận đấu, HLV Philippe Troussier cho biết: &quot;T&ocirc;i cho rằng Th&aacute;i Lan, Indonesia hay Malaysia l&agrave; những đội b&oacute;ng h&agrave;ng đầu khu vực Đ&ocirc;ng Nam &Aacute; c&ugrave;ng với U22 Việt Nam. Tuy nhi&ecirc;n, x&eacute;t về tổ chức đấu ph&aacute;p, nguy&ecirc;n tắc triển khai b&oacute;ng th&igrave; kh&ocirc;ng c&oacute; đội b&oacute;ng n&agrave;o vượt trội cả. Nh&igrave;n chung, c&aacute;c đội b&oacute;ng ngang tr&igrave;nh độ của nhau.</p>\r\n\r\n<p>Điểm kh&aacute;c biệt lớn nhất giữa U22 Việt Nam v&agrave; ba đội b&oacute;ng c&ograve;n lại đến từ trải nghiệm thực chiến. C&aacute;c cầu thủ của Th&aacute;i Lan, Indonesia hay Malaysia được thi đấu rất nhiều ở c&acirc;u lạc bộ. C&oacute; những cầu thủ c&ograve;n được thi đấu ở nước ngo&agrave;i.</p>\r\n\r\n<p>Về lực lượng của U22 Việt Nam, chủ yếu l&agrave; c&aacute;c cầu thủ thuộc lứa tuổi U20. Những cầu thủ n&agrave;y rất t&agrave;i năng v&agrave; sẽ tiến bộ hơn nữa ở kỳ SEA Games tiếp theo&quot;.</p>\r\n\r\n<p><a href=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/ngachelsea/2023/05/16/334919958-545497134427957-1093790840173561245-n-1684239397-191829.jpeg\"><img alt=\"334919958-545497134427957-1093790840173561245-n-1684239397.jpeg\" src=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/ngachelsea/2023/05/16/334919958-545497134427957-1093790840173561245-n-1684239397-191829.jpeg\" style=\"height:639px; width:960px\" /></a></p>\r\n\r\n<p>HLV Philippe Troussier cho rằng Indonesia hay Th&aacute;i Lan kh&ocirc;ng mạnh hơn U22 Việt Nam. (Ảnh: VFF)</p>\r\n\r\n<p>Chia sẻ về trận đấu gặp U22 Myanmar, vị chiến lược gia người Ph&aacute;p cho biết: &quot;T&ocirc;i đ&atilde; nhắc nhở c&aacute;c cầu thủ rằng trận đấu n&agrave;y kh&ocirc;ng đơn giản l&agrave; tranh chấp huy chương m&agrave; l&agrave; khởi đầu của h&agrave;nh tr&igrave;nh mới. Điều hướng tới l&agrave; V&ograve;ng loại U23 ch&acirc;u &Aacute; 2024. T&ocirc;i đ&atilde; dặn c&aacute;c học tr&ograve; phải thể hiện sự kh&ocirc;n ngoan v&agrave; tỉnh t&aacute;o khi họ cố gắng thể hiện lối chơi chủ động, t&iacute;ch cực đưa ra những quyết định hợp l&yacute;&quot;.</p>\r\n\r\n<p>Như vậy, d&ugrave; kh&ocirc;ng thể gi&agrave;nh huy chương v&agrave;ng SEA Games 32 tuy nhi&ecirc;n HLV Philippe Troussier vẫn c&oacute; được danh hiệu đầu ti&ecirc;n c&ugrave;ng với U22 Việt Nam.</p>', '2022-09-11 07:53:02', '2023-05-16 05:36:26', 0),
(10, 'Những chấn thương thường gặp khi chơi bóng đá', 'gioi-thieu-doanh-nghiep', 'http://127.0.0.1:8000/uploads/tintuc4.jpg', '<p>B&oacute;ng đ&aacute; l&agrave; m&ocirc;n thể thao rất phổ biến&nbsp;v&agrave; được y&ecirc;u th&iacute;ch to&agrave;n cầu. B&oacute;ng đ&aacute; đem lại cho ch&uacute;ng ta nhiều sức khỏe, sự nhanh nhẹn v&agrave;&nbsp;giảm stress sau giờ l&agrave;m việc... Tuy nhi&ecirc;n trong b&oacute;ng đ&aacute; sẽ c&oacute; nhiều lần đối kh&aacute;ng,&nbsp;va chạm, bứt tốc&nbsp;khiến bạn c&oacute; thể gặp&nbsp;c&aacute;c chấn thương đắng tiếc.</p>\r\n\r\n<h2><strong>Những chấn thương thường gặp khi chơi đ&aacute; b&oacute;ng:</strong></h2>\r\n\r\n<h3><strong>1 - Chấn thương lật Sơ mi cổ&nbsp;ch&acirc;n:</strong></h3>\r\n\r\n<p>- Chấn thương lật sơ mi cổ ch&acirc;n&nbsp;c&oacute; thể n&oacute;i l&agrave; gặp rất nhiều&nbsp;khi chơi đ&aacute; b&oacute;ng, nếu chỉ lật cổ ch&acirc;n mức độ nhẹ&nbsp;th&igrave; cũng&nbsp;kh&aacute;&nbsp;đau đớn v&agrave; đi lại kh&oacute; khăn&nbsp;trong khoảng 2 đến 3 tuần. Nhưng nếu bị nặng hơn th&igrave; cũng để lại cho bạn di chứng rất nặng về sau v&agrave; c&oacute; thể g&acirc;y thương tật.</p>\r\n\r\n<p>&rArr; Nguy&ecirc;n nh&acirc;n dẫn đến chấn thương cổ ch&acirc;n:</p>\r\n\r\n<p>+ Do mặt s&acirc;n qu&aacute; xấu, c&oacute; nhiều lồi lỏm lốc mốc l&agrave;m bạn dẫm phải bị mất thăng bằng v&agrave; lật cổ ch&acirc;n.</p>\r\n\r\n<p>+ Do đ&ocirc;i gi&agrave;y bạn chất lượng qu&aacute; k&eacute;m hoặc đ&atilde; cũ kỹ khiến phần g&oacute;t kh&ocirc;ng đủ chắc chắn để b&oacute; chắc khớp sơ mi ch&acirc;n dẫn đến lật cổ ch&acirc;n.</p>\r\n\r\n<p>+ Bạn bứt tốc&nbsp;nhanh v&agrave; thắng gấp hoặc tiếp đất sau khi&nbsp;bật nhảy cao,&nbsp;t&igrave;nh huống n&agrave;y thường g&acirc;y ra cho bạn chấn thương kh&aacute; nặng v&agrave; g&acirc;y ra nhiều đau đớn.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/chan-thuong-co-chan-khi-da-bong_d908267365354fb39c0b796aecdcd512_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>2 - Chấn thương đầu gối:</strong></h3>\r\n\r\n<p>- Đ&acirc;y cũng l&agrave; chấn thương phổ biến v&agrave; để lại di chứng kh&aacute; nặng nề về&nbsp;sau nếu bị nặng, bạn phải tốn kh&aacute; nhiều tiền bạc cũng như thời gian để chữa trị.</p>\r\n\r\n<p>- Bộ phận thường bị t&aacute;c động v&agrave;o ch&iacute;nh l&agrave; d&acirc;y chằng ch&eacute;o v&agrave; sụn, nếu nhẹ th&igrave; chỉ bị giản d&acirc;y chằng c&ograve;n nặng th&igrave; bị đứt d&acirc;y chằng v&agrave; vỡ sụn, trật khớp gối.</p>\r\n\r\n<p>&rArr;&nbsp;Nguy&ecirc;n nh&acirc;n thường g&acirc;y ra chấn thương đầu gối l&agrave; những t&igrave;nh huống tiếp đất kh&ocirc;ng tốt sau khi bật nhảy cao, bứt tốc ở tốc độ cao.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/chan-thuong-dau-goi-khi-da-bong_f07ec141f9c24b359854a89fdade4cfa_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>3 - Chấn thương cơ h&aacute;ng:</strong></h3>\r\n\r\n<p>- Nguy&ecirc;n nh&acirc;n thường bị chấn thương cơ h&aacute;ng&nbsp;chủ yếu l&agrave;&nbsp;những pha xoạc b&oacute;ng, bứt tốc, thi đấu ở tốc độ cao.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/chan-thuong-co-hang-khi-da-bong_e69e1b8b0b924abea671488abf4da8be_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>4 - Chấn thương c&aacute;c khớp tay, khớp vai:</strong></h3>\r\n\r\n<p>- Chấn thương c&aacute;c khớp tay thường gặp nhiều&nbsp;ở vị tr&iacute; thủ m&ocirc;n. Những lần đỡ b&oacute;ng với lực s&uacute;t căng hoặc khi tiếp đất chưa tốt&nbsp;sau khi bay người đỡ b&oacute;ng.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/thu-mon-bi-chan-thuong-vai_d0aa64b1bc61474f90e9ae4b3285e379_grande.jpg\" /></p>\r\n\r\n<h2><strong>- L&agrave;m thế n&agrave;o để ph&ograve;ng ngừa c&aacute;c&nbsp;chấn thương khi chơi b&oacute;ng đ&aacute;:</strong></h2>\r\n\r\n<p>- H&atilde;y lu&ocirc;n nhớ: Thực hiện c&aacute;c th&oacute;i quen khởi động l&agrave;m n&oacute;ng cơ thể trước khi tập luyện v&agrave; thi đấu.</p>\r\n\r\n<p>- Kiểm tra sức khỏe kỹ lưỡng&nbsp;trước khi thi đấu.</p>\r\n\r\n<p>- Chơi b&oacute;ng ở những khung giờ hợp l&yacute; v&agrave; c&oacute; thời tiết tốt để kh&ocirc;ng ảnh hưởng đến sức khỏe.</p>\r\n\r\n<p>- Kh&ocirc;ng n&ecirc;n chơi b&oacute;ng&nbsp;qu&aacute; sức v&agrave; thời gian&nbsp;qu&aacute; l&acirc;u, h&atilde;y&nbsp;quy định cho bản th&acirc;n thời gian chơi thể thao ph&ugrave; hợp.</p>\r\n\r\n<p>- Tr&aacute;nh chơi b&oacute;ng những s&acirc;n b&oacute;ng c&oacute; mặt s&acirc;n k&eacute;m chất lượng.</p>\r\n\r\n<p>- Lựa chọn những mẫu&nbsp;<a href=\"https://bigsport.vn/collections/giay-da-bong\">Gi&agrave;y đ&aacute; b&oacute;ng</a>&nbsp;tốt, vừa size ch&acirc;n, những&nbsp;<a href=\"https://bigsport.vn/collections/phu-kien-bong-da\">Phụ kiện bảo vệ</a>&nbsp;đạt chất lượng v&agrave; ph&ugrave; hợp với bản th&acirc;n.</p>', '2022-09-11 14:39:18', '2023-05-16 05:33:07', 0),
(11, 'Chính sách bảo mật thông tin', 'chinh-sach-bao-mat-thong-tin', 'http://127.0.0.1:8000/uploads/khoa hoc lap trinh c online.jpg', '<p><strong>Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin</strong></p>', '2022-09-11 07:52:51', '2022-09-11 07:52:51', 1),
(12, 'Nhờ thống kê khó tin với Man City, Real Madrid ‘sáng cửa’ vào chung kết', '234234234', 'http://127.0.0.1:8000/uploads/tintuc10.jpg', '<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p>Real Madrid đ&atilde; để Man City cầm h&ograve;a ở trận b&aacute;n kết lượt đi tr&ecirc;n s&acirc;n nh&agrave;. Song, họ vẫn c&oacute; thể tự tin v&agrave;o chung kết nhờ một thống k&ecirc; &ldquo;c&oacute; duy&ecirc;n&rdquo; trước The Citizens.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ở trận b&aacute;n kết lượt đi tr&ecirc;n s&acirc;n nh&agrave;,&nbsp;<a href=\"https://thethao247.vn/395-ket-qua-c1-hom-nay-10-5-real-madrid-ban-linh-hu-via-man-city-d286344.html\" target=\"_blank\">Real Madrid đ&atilde; để cho Man City cầm h&ograve;a với tỷ số 1-1</a>. Kết quả n&agrave;y khiến thầy tr&ograve; Carlo Ancelotti đối diện mu&ocirc;n v&agrave;n thử th&aacute;ch khi l&agrave;m kh&aacute;ch tại Etihad v&agrave;o 2h00 ng&agrave;y 18/5 (giờ Việt Nam).</p>\r\n\r\n<p>Trong qu&aacute; khứ,&nbsp;<a href=\"https://thethao247.vn/449-ly-do-dac-biet-giup-man-city-tu-tin-vuot-qua-real-madrid-va-vo-dich-champions-league-d286370.html\" target=\"_blank\">đội b&oacute;ng ho&agrave;ng gia TBN từng 3 lần gục ng&atilde; ở b&aacute;n kết sau khi kh&ocirc;ng thể thắng tr&ecirc;n s&acirc;n nh&agrave; tại trận lượt đi</a>. V&igrave; thế, rất nhiều cổ động vi&ecirc;n Kền kền trắng &acirc;u lo cho nh&agrave; đương kim v&ocirc; địch Champions League.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, &iacute;t ai biết rằng, Real Madrid lại đang sở hữu một thống k&ecirc; kh&oacute; tin trước ch&iacute;nh Man City, qua đ&oacute; gi&uacute;p họ &ldquo;s&aacute;ng cửa&rdquo; g&oacute;p mặt ở trận đấu cuối c&ugrave;ng.</p>\r\n\r\n<p>Cụ thể, đội b&oacute;ng ho&agrave;ng gia TBN chỉ c&oacute; 2 lần đi đến chung kết sau khi kh&ocirc;ng thể gi&agrave;nh chiến thắng ở trận b&aacute;n kết lượt đi. Trong cả 2 lần đ&oacute;, họ đều vượt qua Man City.</p>\r\n\r\n<p>M&ugrave;a giải 2015/16, Kền kền trắng để cho The Citizens cầm h&ograve;a 0-0 ở trận đấu tại Etihad. Song, khi trở về Santiago Bernabeu, Real Madrid đ&atilde; đ&aacute;nh bại đối phương với tỷ số 1-0, qua đ&oacute; gi&agrave;nh v&eacute; v&agrave;o chung kết, nơi đội b&oacute;ng ho&agrave;ng gia TBN vượt qua Juventus 4-1 để đăng quang ng&ocirc;i v&ocirc; địch.</p>\r\n\r\n<p>Gần nhất, ở m&ugrave;a giải 2021/22, Real Madrid nhận thất bại 3-4 tr&ecirc;n s&acirc;n nh&agrave; của Man City. Trong trận t&aacute;i đấu, những tưởng thầy tr&ograve; Carlo Ancelotti đ&atilde; bị loại khi thua 0-1 tới ph&uacute;t 89 song c&uacute; đ&uacute;p kh&oacute; tin m&agrave; Rodrygo thực hiện v&agrave;o khoảng thời gian b&ugrave; giờ đ&atilde; k&eacute;o trận đấu tới hiệp phụ.</p>\r\n\r\n<p><a href=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/manhlt/2023/05/16/real-madrid-man-city-1684238622-190512.jpeg\"><img alt=\"real-madrid-man-city-1684238622.jpeg\" src=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/manhlt/2023/05/16/real-madrid-man-city-1684238622-190512.jpeg\" style=\"height:800px; width:1200px\" /></a></p>\r\n\r\n<p>Real Madrid tự tin hạ Man City nhờ thống k&ecirc; kh&oacute; tin (Nguồn: Internet)</p>\r\n\r\n<p>Tại đ&acirc;y, Benzema thực hiện th&agrave;nh c&ocirc;ng quả 11m qu&yacute; gi&aacute; để gi&uacute;p Real Madrid thắng 3-1, qua đ&oacute; vượt qua đối phương với tỷ số chung cuộc 6-5. Ở chung kết, họ đ&aacute;nh bại Liverpool rồi l&ecirc;n ng&ocirc;i.</p>\r\n\r\n<p>Đ&acirc;y r&otilde; r&agrave;ng l&agrave; những thống k&ecirc; mang tới sự tự tin lớn cho đội b&oacute;ng TBN. Họ sẽ hướng đến lần thứ 3 gieo sầu cho Man City, qua đ&oacute; hướng đến h&agrave;nh tr&igrave;nh bảo vệ ng&ocirc;i vương tại Champions League.</p>\r\n\r\n<p>Đội thắng trong cặp đấu n&agrave;y gặp AC Milan/Inter Milan ở chung kết. Sau trận lượt đi, Nerazzurri đang tạm dẫn đại diện c&ugrave;ng th&agrave;nh phố 2-0.</p>', '2022-09-11 07:53:02', '2023-05-16 05:38:42', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `order_date` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `total_money` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fullname`, `email`, `phone_number`, `address`, `note`, `order_date`, `status`, `total_money`) VALUES
(1, 1, 'TRAN VAN DIEP', 'tranvandiep.it@gmail.com', '123123123', 'Ha Noi', 'Abc', '2022-09-11 13:00:00', 1, 3000),
(3, NULL, 'TRAN VAN A', 'gokisoft.com@gmail.com', '0967025996', 'Trần Hưng Đạo, Quảng Trị', '12312313123123', '2022-09-15 05:07:39', 2, 14000000),
(4, NULL, 'TRAN VAN A', 'gokisoft.com@gmail.com', '0967025996', 'Trần Hưng Đạo, Quảng Trị', '123123123', '2022-09-15 05:08:58', 1, 4000000),
(5, NULL, 'TRAN VAN A', 'gokisoft.com@gmail.com', '0967025996', 'Trần Hưng Đạo, Quảng Trị', '324234234', '2022-09-15 05:09:49', 1, 4000000),
(6, NULL, 'TRAN VAN A', 'gokisoft.com@gmail.com', '0967025996', 'Trần Hưng Đạo, Quảng Trị', NULL, '2022-09-15 05:12:18', 2, 468588468),
(7, NULL, 'đỗ trung thanh', 'td33284@gmail.com', '0389665732', 'Minh Quang Tam Đảo Vĩnh Phúc', 'ư', '2023-03-10 15:23:28', 1, 360000),
(8, NULL, 'đỗ trung thanh', 'td33284@gmail.com', '0389665732', 'Minh Quang Tam Đảo Vĩnh Phúc', 'sss', '2023-04-11 07:33:29', 1, 8120000),
(9, NULL, 'đỗ trung thanh', 'td33284@gmail.com', '0389665732', 'Minh Quang Tam Đảo Vĩnh Phúc', 'aaaaa', '2023-04-11 07:41:18', 0, 4000000),
(10, NULL, 'đỗ trung thanh', 'td33284@gmail.com', '0389665732', 'Minh Quang Tam Đảo Vĩnh Phúc', NULL, '2023-04-11 08:07:25', 0, 120000),
(11, NULL, 'thai thu', '0944329395thanh@gmail.com', '0389665732', 'Minh Quang Tam Đảo Vĩnh Phúc', NULL, '2023-04-11 09:07:09', 2, 120000),
(12, NULL, 'Nguyễn Đặng Ngọc Thành', 'thanh1@gmail.com', '0763432905', 'ưdwdw', 'fsdf', '2023-05-15 09:30:28', 0, 120000),
(13, NULL, 'Nguyễn Đặng Ngọc Thành', 'thanh1@gmail.com', '0763432905', 'ưdwdw', 'dfd', '2023-05-16 07:49:50', 0, 6240000),
(14, NULL, 'fsdf', 'hhhhh@gmail.com', 'fsdfs64565465', 'Xuân Ninh, Quảng Ninh, Quảng Bình', 'fsdfsdf', '2023-05-16 10:52:36', 0, 2120000),
(15, NULL, 'vfddfdf', 'ngocthanh@gmail.com', '0763432905', 'xuân', 'đừng làm vỡ', '2023-05-16 11:03:58', 0, 266928),
(16, NULL, 'higjhjjjj', 'uuuuu@gmail.com', '884884234', 'hiền ninh', 'đừng làm toi buon', '2023-05-16 11:10:14', 0, 24000000);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `total_money` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `price`, `num`, `total_money`) VALUES
(1, 1, 1, 1000, 2, 2000),
(2, 1, 2, 500, 2, 1000),
(3, 3, 2, 2000000, 5, 10000000),
(4, 3, 8, 2000000, 2, 4000000),
(5, 4, 2, 2000000, 2, 4000000),
(6, 5, 2, 2000000, 2, 4000000),
(7, 6, 3, 234234234, 2, 468468468),
(8, 6, 7, 120000, 1, 120000),
(9, 7, 1, 120000, 3, 360000),
(10, 8, 2, 2000000, 4, 8000000),
(11, 8, 7, 120000, 1, 120000),
(12, 9, 2, 2000000, 2, 4000000),
(13, 10, 1, 120000, 1, 120000),
(14, 11, 4, 120000, 1, 120000),
(15, 12, 4, 120000, 1, 120000),
(16, 13, 2, 2000000, 3, 6000000),
(17, 13, 7, 120000, 2, 240000),
(18, 14, 7, 120000, 1, 120000),
(19, 14, 8, 2000000, 1, 2000000),
(20, 15, 14, 22244, 12, 266928),
(21, 16, 5, 2000000, 12, 24000000);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `thumbnail` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `slug` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `title`, `price`, `discount`, `thumbnail`, `description`, `created_at`, `updated_at`, `deleted`, `slug`) VALUES
(1, 1, 'thành', 200000, 120000, 'http://127.0.0.1:8000/uploads/radish_300x300.jpg', '<p>San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1</p>', '2022-09-09 00:50:01', '2023-04-11 01:58:50', 1, 'quan-ao-tre-em-trend-2022'),
(2, 1, 'San pham 2 Xin chao', 6000000, 2000000, 'http://127.0.0.1:8000/uploads/1.jpg', '<p>San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2</p>\r\n\r\n<h1>fsrfwerwerwerwer</h1>\r\n\r\n<h1>pham 2San pham 2</h1>\r\n\r\n<p><img alt=\"\" src=\"https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-ejb.jpg\" style=\"height:400px; width:764px\" /></p>\r\n\r\n<p>&nbsp;</p>', '2022-09-09 01:12:05', '2023-04-11 01:56:53', 0, 'san-pham-2'),
(3, 2, '234234234', 234234234, 234234234, 'http://127.0.0.1:8000/uploads/cucumber_300x300.jpg', '<p>3423423432</p>', '2022-09-09 01:15:10', '2023-04-11 01:58:12', 1, '234234234'),
(4, 1, 'San Pham 1', 200000, 120000, 'http://127.0.0.1:8000/uploads/greenpumpkin_300x300.jpg', '<p>San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1</p>', '2022-09-09 00:50:01', '2023-04-11 01:59:02', 1, 'san-pham-1'),
(5, 1, 'San pham 2 Xin chao', 6000000, 2000000, 'http://127.0.0.1:8000/uploads/1.jpg', '<p>San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2</p>\r\n\r\n<h1>fsrfwerwerwerwer</h1>\r\n\r\n<h1>pham 2San pham 2</h1>\r\n\r\n<p><img alt=\"\" src=\"https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-ejb.jpg\" style=\"height:400px; width:764px\" /></p>\r\n\r\n<p>&nbsp;</p>', '2022-09-09 01:12:05', '2023-04-11 01:57:02', 0, 'san-pham-2'),
(6, 2, '234234234', 234234234, 234234234, 'http://127.0.0.1:8000/uploads/asparagus_600x600.jpg', '<p>3423423432</p>', '2022-09-09 01:15:10', '2023-04-11 01:58:25', 1, '234234234'),
(7, 1, 'San Pham 1', 200000, 120000, 'https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-html5-css3.jpg', 'San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1', '2022-09-09 00:50:01', '2022-09-09 00:50:01', 0, 'san-pham-1'),
(8, 1, 'San pham 2 Xin chao', 6000000, 2000000, 'http://127.0.0.1:8000/uploads/1.jpg', '<p>San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2</p>\r\n\r\n<h1>fsrfwerwerwerwer</h1>\r\n\r\n<h1>pham 2San pham 2</h1>\r\n\r\n<p><img alt=\"\" src=\"https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-ejb.jpg\" style=\"height:400px; width:764px\" /></p>\r\n\r\n<p>&nbsp;</p>', '2022-09-09 01:12:05', '2023-04-11 01:57:54', 0, 'san-pham-2'),
(9, 2, '234234234', 234234234, 234234234, 'http://127.0.0.1:8000/uploads/cabbage_300x300.jpg', '<p>3423423432</p>', '2022-09-09 01:15:10', '2023-04-11 01:58:34', 1, '234234234'),
(10, 1, 'San Pham 1', 200000, 120000, 'https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-html5-css3.jpg', 'San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1', '2022-09-09 00:50:01', '2022-09-09 00:50:01', 0, 'san-pham-1'),
(11, 1, 'San pham 2 Xin chao', 6000000, 2000000, 'http://127.0.0.1:8000/uploads/1.jpg', '<p>San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2</p>\r\n\r\n<h1>fsrfwerwerwerwer</h1>\r\n\r\n<h1>pham 2San pham 2</h1>\r\n\r\n<p><img alt=\"\" src=\"https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-ejb.jpg\" style=\"height:400px; width:764px\" /></p>\r\n\r\n<p>&nbsp;</p>', '2022-09-09 01:12:05', '2023-04-11 01:58:02', 0, 'san-pham-2'),
(12, 2, '234234234', 234234234, 234234234, 'http://127.0.0.1:8000/uploads/broccoli_600x600.jpg', '<p>3423423432</p>', '2022-09-09 01:15:10', '2023-04-11 01:58:41', 1, '234234234'),
(14, 5, 'ffffff', 222233, 22244, 'http://127.0.0.1:8000/uploads/aobongdatrem1.jpg', '<p>fffffffff</p>', '2023-05-16 01:19:34', '2023-05-16 01:19:34', 0, 'ffffff'),
(15, 5, 'ÁO BÓNG ĐÁ BAYERN MUNICH SÂN KHÁCH 2023 - 2024 MÀU TRẮNG ĐỎ', 299000, 199000, 'http://127.0.0.1:8000/uploads/ÁO BÓNG ĐÁ BAYERN MUNICH SÂN KHÁCH 2023 - 2024 MÀU TRẮNG ĐỎ.jpg', '<h2><strong>&Aacute;o đ&aacute; b&oacute;ng Bayern Munich m&agrave;u trắng&nbsp;2023 - 2024</strong></h2>\r\n\r\n<p>- Chất liệu: vải thun lạnh 100% polyester, mềm,&nbsp;mịn v&agrave; siệu nhẹ.</p>\r\n\r\n<p>- Cấu tr&uacute;c vải hai chiều với c&aacute;c đặc t&iacute;nh thấm h&uacute;t tốt v&agrave; c&oacute; giản linh hoạt tạo sự thoải m&aacute;i tho&aacute;ng m&aacute;t cho c&aacute;c cầu thủ khi tập luyện v&agrave; thi đấu ở cường độ cao.</p>\r\n\r\n<p>- C&ocirc;ng nghệ in chuyển cao cấp c&ugrave;ng mực in nhập khẩu Ch&acirc;u &Acirc;u&nbsp;cho m&agrave;u &aacute;o cực kỳ sắc n&eacute;t, thẩm mỹ, &aacute;o&nbsp;lu&ocirc;n tươi mới, bền đẹp v&agrave; kh&ocirc;ng g&acirc;y hại da.</p>\r\n\r\n<p>- Logo c&acirc;u lạc bộ được dệt bằng m&aacute;y dệt cao cấp, sắc n&eacute;t v&agrave; kh&ocirc;ng bị sổ chỉ, nhăn nh&uacute;m như những mẫu &aacute;o b&oacute;ng đ&aacute; thường.</p>\r\n\r\n<p>- &Aacute;o b&oacute;ng đ&aacute; Bayern Munich&nbsp;2023&nbsp;- 2024&nbsp;thiết kế Form su&ocirc;ng&nbsp;chuẩn thể thao rất&nbsp;dễ mặc v&agrave; dễ phối đồ.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000281067/file/ao-da-bong-bayern-2023-2024-mau-trang-do-h2_f54ead9942b84d7ab9e592fec8164928_grande.jpg\" /></p>\r\n\r\n<p><em>&Aacute;o b&oacute;ng đ&aacute; Bayern Munich s&acirc;n kh&aacute;ch 2023 - 2024&nbsp;</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Size &aacute;o: S, M, L, XL, XXL</p>\r\n\r\n<p>&rArr; Mua 10 bộ tặng 1 bộ, 20 bộ tặng 2 bộ...</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>&diams; Hướng dẫn chọn size&nbsp;Quần &aacute;o b&oacute;ng đ&aacute; Bayern Munich:</strong></h3>\r\n\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>S</strong></td>\r\n			<td><strong>M</strong></td>\r\n			<td><strong>L</strong></td>\r\n			<td><strong>XL</strong></td>\r\n			<td><strong>XXL</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>150 - 160cm&nbsp;</strong></td>\r\n			<td><strong>160 - 168cm</strong></td>\r\n			<td><strong>168 - 175cm</strong></td>\r\n			<td><strong>175 - 180cm</strong></td>\r\n			<td><strong>Tr&ecirc;n 180cm</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>45 - 53kg</strong></td>\r\n			<td><strong>53 - 60kg</strong></td>\r\n			<td><strong>60 - 70kg</strong></td>\r\n			<td><strong>70 - 80kg</strong></td>\r\n			<td><strong>Tr&ecirc;n 80kg</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>&loz;<em>&nbsp;BigSport.vn nhận đặt in ấn t&ecirc;n, số, logo quần &aacute;o thể thao theo y&ecirc;u cầu cho c&aacute;c đơn vị tổ chức, c&aacute;c team, c&aacute;c đội b&oacute;ng...với chất lượng cao, số lượng c&agrave;ng lớn, ưu đ&atilde;i c&agrave;ng cao.</em></strong></p>', '2023-05-16 05:49:55', '2023-05-16 05:49:55', 0, 'ao-bong-da-bayern-munich-san-khach-2023---2024-mau-trang-do');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('WRreus0BGy9t1PUCK0aKJ84wx5S8XDSt2FvkPtvb', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3lEV2UzN2s3bFpqdW1Ua2ZiU3ZGbEswSWJqSDRzdlFNMDBsTmFRbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1678513504);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`, `phone_number`, `address`, `deleted`, `role_id`) VALUES
(1, 'Diep Tran Van', 'tranvandiep.it@gmail.com', NULL, '$2y$10$acQD5nxNZYCsdK.V8DKXAuPgmRZ3KbC9zqbB9ob4rl4kqnKa7QPzG', NULL, NULL, NULL, 'cwhZ95hUzQR8FD9KqVzSkJ5iUQ1ssANU7n4OzlO6hg7RHWI27sSsOHAqGw63', '2022-07-28 00:26:15', '2022-09-08 23:59:21', '3123123123123123', 'Nam Dinh', 0, 1),
(2, 'GokiSoft', 'gokisoft.com@gmail.com', NULL, '$2y$10$owZ6G9vXPRx6N2CCuUT2TOwQwQD0Dht0Gosx2OyJ9KbEXgYzAq7DW', NULL, NULL, NULL, NULL, '2022-09-08 23:48:35', '2022-09-08 23:48:35', '123456789', 'Ha Noi', 0, 2),
(3, 'ABC', 'tranvandiep.i234234t@gmail.com', NULL, '$2y$10$L/OCHXKmc34vHxoHKOXVRuYXPlatetHvui/EBBnF79lQy8BqedTR2', NULL, NULL, NULL, NULL, '2022-09-08 23:48:58', '2022-09-08 23:48:58', '23423423423', '234234234', 1, 2),
(4, 'Test', 'test@gmail.com', NULL, '$2y$10$tb/BE2IhxcG9wLo1FtENq.QCSCBtwgvXBxx3BOwBmJvNF5/fQX1sC', NULL, NULL, NULL, NULL, '2022-09-11 08:59:54', '2022-09-11 08:59:54', NULL, NULL, 0, 2),
(5, 'do trung thanh', 'td33284@gmail.com', NULL, '$2y$10$MCWiIg2cKo1fD2EjsNLOT.d53CFX5vRZr.Vcrbz6RSPLA082fuJXG', NULL, NULL, NULL, NULL, '2023-03-10 08:21:52', '2023-03-10 08:21:52', NULL, NULL, 0, 1),
(6, 'thanh vip', 'thanh@gmail.com', NULL, '$2y$10$Jsci10yd9tSqKdXWLfXgWu6wRQkSIh4kJplySJsoZ4XQTyaQj0Erq', NULL, NULL, NULL, NULL, '2023-05-15 02:35:33', '2023-05-15 02:35:33', NULL, NULL, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_product_id_foreign` (`product_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_category_id_foreign` (`category_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `gallery_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
