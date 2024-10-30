-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2024 at 07:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `faith`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `admin_full_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `admin_full_name`, `admin_email`, `contact_no`, `password`, `created_at`, `updated_at`) VALUES
(1, 'supadmin', 'Admin', 'admin@admin.com', '', '$2y$10$5DV1BSeNnG6R994AHQ8NvuDKD/mTU9UL4Tg3zy3ZSp/BQ0DqfrZRK', NULL, '2021-05-19 14:30:24');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_title` varchar(255) DEFAULT NULL,
  `second_title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `first_title`, `second_title`, `content`, `banner_image`, `created_at`, `updated_at`) VALUES
(1, 'Welcome to Faith HMO Management', NULL, 'Let us take the hassle out of property management so you can enjoy the benefits of your investment!', '1720370585_1.jpg', NULL, '2024-05-26 00:59:17');

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE `cms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cms_title` varchar(255) DEFAULT NULL,
  `cms_content` text DEFAULT NULL,
  `cms_image` varchar(255) DEFAULT NULL,
  `cms_cover_image` varchar(255) DEFAULT NULL,
  `youtube_video_link` text DEFAULT NULL,
  `cms_file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`id`, `cms_title`, `cms_content`, `cms_image`, `cms_cover_image`, `youtube_video_link`, `cms_file`, `created_at`, `updated_at`) VALUES
(1, 'Why Rent Your HMO with US?', ' <b>Full-Service Management:</b> We handle everything from tenant screening and rent collection to maintenance and repairs, ensuring your property is well-managed and tenants are satisfied.<br>\r\n\r\n<b>Expert Knowledge:</b> Our team stays updated with the latest HMO regulations and housing laws to ensure your property meets all legal requirements.<br>\r\n\r\n<b>Thorough Screening:</b> We conduct comprehensive background checks, including credit, employment, and reference checks, to ensure reliable and responsible tenants.<br>\r\n\r\n<b>Routine Inspections:</b> Regular property inspections help identify and address issues early, maintaining the property\'s condition and value. <br>', '1720384578.jpg', NULL, NULL, NULL, NULL, '2024-05-26 01:42:07'),
(2, NULL, NULL, '1720392003.png', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(10) NOT NULL,
  `contact_us_ph` varchar(255) NOT NULL,
  `contact_us_email` varchar(255) NOT NULL,
  `contact_us_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manage_contacts`
--

CREATE TABLE `manage_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_us_name` varchar(255) DEFAULT NULL,
  `contact_us_address` varchar(255) DEFAULT NULL,
  `contact_us_email` varchar(255) DEFAULT NULL,
  `contact_us_email1` varchar(255) DEFAULT NULL,
  `contact_us_ph` varchar(255) DEFAULT NULL,
  `contact_us_ph1` varchar(255) DEFAULT NULL,
  `contact_us_whatsapp` varchar(255) DEFAULT NULL,
  `fb_link` varchar(255) DEFAULT NULL,
  `tw_link` varchar(255) DEFAULT NULL,
  `instagram_link` varchar(255) DEFAULT NULL,
  `youtube_link` varchar(255) DEFAULT NULL,
  `linkedin_link` varchar(255) DEFAULT NULL,
  `contact_us_desc` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manage_contacts`
--

INSERT INTO `manage_contacts` (`id`, `contact_us_name`, `contact_us_address`, `contact_us_email`, `contact_us_email1`, `contact_us_ph`, `contact_us_ph1`, `contact_us_whatsapp`, `fb_link`, `tw_link`, `instagram_link`, `youtube_link`, `linkedin_link`, `contact_us_desc`, `created_at`, `updated_at`) VALUES
(1, 'Your One-stop Destination for all your Property Inspection Needs', '86A High Street, Southall, England, UB13DB', 'info@faithhmo.co.uk', NULL, '020 8574 1700', NULL, '07516329435', 'https://www.facebook.com/inspectionexperts?mibextid=LQQJ4d&rdid=hiHhN81dOomxluif&share_url=https%3A%2F%2Fwww.facebook.com%2Fshare%2FLwwotpCu64R8nm6g%2F%3Fmibextid%3DLQQJ4d', 'https://twitter.com/', 'https://www.instagram.com/inspection_experts_uk/?igsh=MWQxaWhtYnlhd2pkNQ%3D%3D', 'https://www.youtube.com/', 'https://www.linkedin.com/company/inspection-experts-uk/', 'From Check-in to Check-out Inventory and Mid-Tenancy Inspections, we ensure smooth transitions for landlords and tenants alike. Our services are available throughout the UK. Connect with us for more information.', NULL, '2024-05-27 11:59:18');

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

CREATE TABLE `offer` (
  `id` int(10) NOT NULL,
  `offer_name` varchar(255) NOT NULL,
  `advirtiseTitle` text DEFAULT NULL,
  `offer_content` text NOT NULL,
  `offer_image` varchar(255) NOT NULL,
  `offer_address` varchar(255) NOT NULL,
  `offer_cost` varchar(255) NOT NULL,
  `noOfBeds` varchar(255) DEFAULT NULL,
  `noOfBath` varchar(255) DEFAULT NULL,
  `noOfReception` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offer`
--

INSERT INTO `offer` (`id`, `offer_name`, `advirtiseTitle`, `offer_content`, `offer_image`, `offer_address`, `offer_cost`, `noOfBeds`, `noOfBath`, `noOfReception`) VALUES
(3, 'Cavendish Avenue, Harrow HA1', 'Faith HMO Management LTD are proud to present this exceptionally beautiful 8 bedroom semi detached Bedroom property in Harrow area.', '<p>Looking for Supported Living Company to take the property</p>\r\n<p>8 bed room property - all Double Bed Rooms</p>\r\n<p>Large Open Plan Kitchen & Reception.</p>\r\n<p>Laminate flooring through out</p>\r\n<p>Free Off Street and On Street parking</p>\r\n<p>Garden at Rear</p>\r\n<p>Unfurnished</p>\r\n<p>Situated in the perfect location in Harrow with good transport links to the surrounding areas, local shops and <p>schools, restaurant, all amenities close by within walking distance to bus stops.</p>', '1720647116_52714fde78af2f9ef36ef0689014944e5bc2f77e.webp', 'Cavendish Avenue, Harrow HA1', '7,200 pcm', '8', '7', ''),
(5, 'Fleetside, West Molesey KT8', 'Faith HMO Management LTD are proud to present this exceptionally beautiful 4 bedroom end terraced in KT8 Area', '<p>Brand New Built Property To-Let</p>\r\n<p>Open Plan Kitchen and Reception</p>\r\n<p>3 Double Bed Room, 1 Single room</p>\r\n<p>2 Full Toilet and Shower - 1 Extra WC (3)</p>\r\n<p>Part Furnished</p>\r\n<p>Garden at Rear</p>\r\n<p>Rent £2750</p>\r\n<p>Laminate flooring</p>\r\n<p>Double Glazing</p>\r\n<p>On Street Parking</p>', '1720675278_e95ff5ae7624d76d5d72cbeebaa72579005e46c0.webp', 'Fleetside, West Molesey KT8', '2750 pcm', '4', '3', '1');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `id` int(10) NOT NULL,
  `property_name` varchar(255) NOT NULL,
  `property_cost` int(10) NOT NULL,
  `property_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `property_name`, `property_cost`, `property_image`) VALUES
(16, 'Grange Road, Egham TW20', 4999, '1720796486_fcadee4a8fce7d5a3f5f792bfed0b827f42cb3ef.webp'),
(17, 'The Coppice, West Drayton UB7', 6000, '1720796424_98268c80ac9955141a445f3792de0aea646c6bca.webp'),
(18, 'Leven Road, London E14', 2400, '1720796372_029c3e002165748ca185679f12c2374e2632387e.webp'),
(19, 'London Street, Reading RG1', 159600, '1720796314_738edd16ce1f907b5c17312bbe9da48e9dcea1f4.webp'),
(20, 'Islip Manor Road, Northolt UB5', 2650, '1720796249_ba3ee06dbdb1efe8f286167055d8c8159026411c.webp'),
(21, 'Clive Green, Bracknell RG12', 1500, '1720796152_51bfad3885c9ffbd558f1e56a683dad5c18f4638.webp');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(10) NOT NULL,
  `review_author_name` varchar(255) NOT NULL,
  `review_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `review_author_name`, `review_content`) VALUES
(1, 'Oliver Williams', 'The HMO property I rented is in fantastic condition. It\'s clear that your company takes great care in maintaining their properties. The communal areas are clean, well-maintained, and furnished to a high standard. '),
(2, 'Sophia Jenkins', 'I recently rented an HMO property managed by Faith HMO LTD, and I must say, the experience has been exceptional from start to finish. The team is incredibly professional and responsive. They were always available to answer any questions I had and made the entire process smooth and stress-free. '),
(3, 'David Browne', 'Living in an HMO can sometimes be challenging, but I appreciate the transparency throughout the rental process. All the terms were clearly explained, and there were no hidden fees. This level of honesty is rare and very much appreciated. ');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(10) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `service_icon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `service_name`, `service_icon`) VALUES
(1, 'HMO Properties', 'icon-property'),
(2, 'Inspection & Reports', 'icon-report'),
(3, 'Compliance Renewal & Support', 'icon-support'),
(4, 'Lettings', 'icon-rent'),
(5, 'Tenant Referencing', 'icon-tenant');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_contacts`
--
ALTER TABLE `manage_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manage_contacts`
--
ALTER TABLE `manage_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `offer`
--
ALTER TABLE `offer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
