-- phpMyAdmin SQL Dump
-- version 5.2.1deb1ubuntu0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 12, 2023 at 03:09 PM
-- Server version: 8.0.34-0ubuntu0.23.04.1
-- PHP Version: 8.1.12-1ubuntu4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_edica`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int UNSIGNED NOT NULL,
  `author_name` varchar(100) DEFAULT NULL,
  `body` text,
  `post_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `author_name`, `body`, `post_id`, `created_at`) VALUES
(1, 'Yura', 'Thanks for writing!', 2, '2023-09-12 06:33:38'),
(3, 'Kila', 'Heverentorio', 1, '2023-09-12 06:50:34');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `author_name` varchar(100) DEFAULT NULL,
  `body` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(60) DEFAULT NULL,
  `image_inside` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `author_name`, `body`, `created_at`, `image`, `image_inside`) VALUES
(1, 'Traveling to the other side of the world on motorcycle', 'Richard Searls', '            <div class=\"row\">\r\n                <div class=\"col-lg-9 mx-auto aos-init aos-animate\" data-aos=\"fade-up\">\r\n                    <p>Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs. The passage is at attributed to an unknown typesetters in 1the 5th century who is thought scrambled with all parts of Cicero’s De. Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs</p>\r\n                    <p>Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs. The passage is at attributed to an unknown typesetters in 1the 5th century who is thought scrambled with all parts of Cicero’s De. Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs</p>\r\n                </div>\r\n            </div>\r\n\r\n            <div class=\"row\">\r\n                <div class=\"col-lg-9 mx-auto\">\r\n                    <p data-aos=\"fade-up\" class=\"aos-init aos-animate\"><a href=\"#\">Lorem ipsum, or lipsum as it is sometimes known,</a> is dummy text used in laying out printed graphic or web designs. The passage is at attributed to an unknown typesetters in 1the 5th century who is thought scrambled with all parts of Cicero’s De. Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs</p>\r\n                    <h2 class=\"mb-4 aos-init aos-animate\" data-aos=\"fade-up\">Blog single page</h2>\r\n                    <ul data-aos=\"fade-up\" class=\"aos-init aos-animate\">\r\n                        <li>What manner of thing was upon me I did not know, but that it was large and heavy and many-legged I could feel.</li>\r\n                        <li>My hands were at its throat before the fangs had a chance to bury themselves in my neck, and slowly</li>\r\n                        <li>I forced the hairy face from me and closed my fingers, vise-like, upon its windpipe.</li>\r\n                    </ul>\r\n\r\n                    <blockquote data-aos=\"fade-up\" class=\"aos-init aos-animate\">\r\n                        <p>You are safe here! I shouted above the sudden noise. She looked away from me downhill. The people were coming out of their houses, astonished.</p>\r\n                        <footer class=\"blockquote-footer\">Oluchi Mazi</footer>\r\n                    </blockquote>\r\n                    <p>Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs. The passage is at attributed to an unknown typesetters in 1the 5th century who is thought scrambled with all parts of Cicero’s De. Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs</p>\r\n                </div>\r\n            </div>       ', '2023-09-11 16:15:09', 'assets/images/post2.jpg', 'assets/images/inpost2.jpg'),
(2, 'Did angels fall asleep in the sunrise', 'Chris Pod', '<div class=\"row\">\r\n                <div class=\"col-lg-9 mx-auto aos-init aos-animate\" data-aos=\"fade-up\">\r\n                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse elementum laoreet nibh, imperdiet porttitor turpis gravida sed. Phasellus varius fringilla nisi non tincidunt. Phasellus et pretium felis. Donec malesuada mauris ac dignissim gravida. Nulla sit amet bibendum magna. Maecenas non ullamcorper ante. Duis aliquam dapibus consequat. Maecenas nisi lacus, finibus mattis enim vel, finibus interdum magna. Donec lacinia lacus id purus ornare faucibus. Etiam in scelerisque magna, vel finibus tortor. Ut in mi feugiat, tincidunt sapien eget, euismod diam.\r\n\r\n\r\nSuspendisse scelerisque blandit eros a placerat. Etiam elementum, libero quis finibus luctus, dui tellus ultricies dolor, in tempus ligula odio aliquet urna. Nam eget consectetur leo. In viverra quam ut justo fermentum, eget molestie diam tempus. Nullam id quam et sapien placerat imperdiet. Fusce tincidunt tortor at elit tempus commodo. Duis laoreet neque id felis placerat. </p>\r\n                    \r\n                </div>\r\n            </div>\r\n\r\n            <div class=\"row\">\r\n                <div class=\"col-lg-9 mx-auto\">\r\n                    \r\n                    \r\n\r\n                    \r\n\r\n                    <blockquote data-aos=\"fade-up\" class=\"aos-init\">\r\n                        <p>You are safe here! I shouted above the sudden noise. She looked away from me downhill. The people were coming out of their houses, astonished.</p>\r\n                        <footer class=\"blockquote-footer\">Oluchi Mazi</footer>\r\n                    </blockquote>\r\n                    <p>Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs. The passage is at attributed to an unknown typesetters in 1the 5th century who is thought scrambled with all parts of Cicero’s De. Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs</p>\r\n                </div>\r\n            </div>', '2023-09-11 17:01:14', 'assets/images/post1.jpg ', 'assets/images/inpost1.jpg'),
(3, 'Latin words, combined with a handful of model sentence structures', 'Green Leo', '\r\n                        <div class=\"row\">\r\n                <div class=\"col-lg-9 mx-auto aos-init aos-animate\" data-aos=\"fade-up\">\r\n                    <p>Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs. The passage is at attributed to an unknown typesetters in 1the 5th century who is thought scrambled with all parts of Cicero’s De. Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs</p>\r\n                    <p>Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs. The passage is at attributed to an unknown typesetters in 1the 5th century who is thought scrambled with all parts of Cicero’s De. Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs</p>\r\n                </div>\r\n            </div>\r\n\r\n            <div class=\"row\">\r\n                <div class=\"col-lg-9 mx-auto\">\r\n                    <p data-aos=\"fade-up\" class=\"aos-init aos-animate\"><a href=\"#\">Lorem ipsum, or lipsum as it is sometimes known,</a> is dummy text used in laying out printed graphic or web designs. The passage is at attributed to an unknown typesetters in 1the 5th century who is thought scrambled with all parts of Cicero’s De. Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs</p>\r\n                    <h2 class=\"mb-4 aos-init aos-animate\" data-aos=\"fade-up\">Blog single page</h2>\r\n                    <ul data-aos=\"fade-up\" class=\"aos-init aos-animate\">\r\n                        <li>What manner of thing was upon me I did not know, but that it was large and heavy and many-legged I could feel.</li>\r\n                        <li>My hands were at its throat before the fangs had a chance to bury themselves in my neck, and slowly</li>\r\n                        <li>I forced the hairy face from me and closed my fingers, vise-like, upon its windpipe.</li>\r\n                    </ul>\r\n\r\n                    <blockquote data-aos=\"fade-up\" class=\"aos-init aos-animate\">\r\n                        <p>You are safe here! I shouted above the sudden noise. She looked away from me downhill. The people were coming out of their houses, astonished.</p>\r\n                        <footer class=\"blockquote-footer\">Oluchi Mazi</footer>\r\n                    </blockquote>\r\n                    <p>Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs. The passage is at attributed to an unknown typesetters in 1the 5th century who is thought scrambled with all parts of Cicero’s De. Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs</p>\r\n                </div>\r\n            </div>         \r\n        ', '2023-09-12 13:13:06', 'assets/images/post6.jpg', 'assets/images/inpost6.jpg'),
(4, 'Donec interdum varius augue vitae fermentum', 'Green Leo', '\r\n                        <div class=\"row\">\r\n                <div class=\"col-lg-9 mx-auto aos-init aos-animate\" data-aos=\"fade-up\">\r\n                    <p>Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs. The passage is at attributed to an unknown typesetters in 1the 5th century who is thought scrambled with all parts of Cicero’s De. Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs</p>\r\n                    <p>Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs. The passage is at attributed to an unknown typesetters in 1the 5th century who is thought scrambled with all parts of Cicero’s De. Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs</p>\r\n                </div>\r\n            </div>\r\n\r\n            <div class=\"row\">\r\n                <div class=\"col-lg-9 mx-auto\">\r\n                    <p data-aos=\"fade-up\" class=\"aos-init aos-animate\"><a href=\"#\">Lorem ipsum, or lipsum as it is sometimes known,</a> is dummy text used in laying out printed graphic or web designs. The passage is at attributed to an unknown typesetters in 1the 5th century who is thought scrambled with all parts of Cicero’s De. Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs</p>\r\n                    <h2 class=\"mb-4 aos-init aos-animate\" data-aos=\"fade-up\">Blog single page</h2>\r\n                    <ul data-aos=\"fade-up\" class=\"aos-init aos-animate\">\r\n                        <li>What manner of thing was upon me I did not know, but that it was large and heavy and many-legged I could feel.</li>\r\n                        <li>My hands were at its throat before the fangs had a chance to bury themselves in my neck, and slowly</li>\r\n                        <li>I forced the hairy face from me and closed my fingers, vise-like, upon its windpipe.</li>\r\n                    </ul>\r\n\r\n                    <blockquote data-aos=\"fade-up\" class=\"aos-init aos-animate\">\r\n                        <p>You are safe here! I shouted above the sudden noise. She looked away from me downhill. The people were coming out of their houses, astonished.</p>\r\n                        <footer class=\"blockquote-footer\">Oluchi Mazi</footer>\r\n                    </blockquote>\r\n                    <p>Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs. The passage is at attributed to an unknown typesetters in 1the 5th century who is thought scrambled with all parts of Cicero’s De. Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs</p>\r\n                </div>\r\n            </div>         \r\n        ', '2023-09-12 13:13:06', 'assets/images/post4.jpg', 'assets/images/inpost4.jpg'),
(5, 'Duis mauris est, gravida sed ullamcorper feugiat, placerat eu augue', 'Kira Bike', '\r\n                        <div class=\"row\">\r\n                <div class=\"col-lg-9 mx-auto aos-init aos-animate\" data-aos=\"fade-up\">\r\n                    <p>Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs. The passage is at attributed to an unknown typesetters in 1the 5th century who is thought scrambled with all parts of Cicero’s De. Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs</p>\r\n                    <p>Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs. The passage is at attributed to an unknown typesetters in 1the 5th century who is thought scrambled with all parts of Cicero’s De. Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs</p>\r\n                </div>\r\n            </div>\r\n\r\n            <div class=\"row\">\r\n                <div class=\"col-lg-9 mx-auto\">\r\n                    <p data-aos=\"fade-up\" class=\"aos-init aos-animate\"><a href=\"#\">Lorem ipsum, or lipsum as it is sometimes known,</a> is dummy text used in laying out printed graphic or web designs. The passage is at attributed to an unknown typesetters in 1the 5th century who is thought scrambled with all parts of Cicero’s De. Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs</p>\r\n                    <h2 class=\"mb-4 aos-init aos-animate\" data-aos=\"fade-up\">Blog single page</h2>\r\n                    <ul data-aos=\"fade-up\" class=\"aos-init aos-animate\">\r\n                        <li>What manner of thing was upon me I did not know, but that it was large and heavy and many-legged I could feel.</li>\r\n                        <li>My hands were at its throat before the fangs had a chance to bury themselves in my neck, and slowly</li>\r\n                        <li>I forced the hairy face from me and closed my fingers, vise-like, upon its windpipe.</li>\r\n                    </ul>\r\n\r\n                    <blockquote data-aos=\"fade-up\" class=\"aos-init aos-animate\">\r\n                        <p>You are safe here! I shouted above the sudden noise. She looked away from me downhill. The people were coming out of their houses, astonished.</p>\r\n                        <footer class=\"blockquote-footer\">Oluchi Mazi</footer>\r\n                    </blockquote>\r\n                    <p>Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs. The passage is at attributed to an unknown typesetters in 1the 5th century who is thought scrambled with all parts of Cicero’s De. Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs</p>\r\n                </div>\r\n            </div>         \r\n        ', '2023-09-12 13:13:06', 'assets/images/post3.jpg', 'assets/images/inpost3.jpg'),
(6, 'Cras vestibulum vel metus et facilisis', 'Opus Amigo', '\r\n                        <div class=\"row\">\r\n                <div class=\"col-lg-9 mx-auto aos-init aos-animate\" data-aos=\"fade-up\">\r\n                    <p>Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs. The passage is at attributed to an unknown typesetters in 1the 5th century who is thought scrambled with all parts of Cicero’s De. Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs</p>\r\n                    <p>Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs. The passage is at attributed to an unknown typesetters in 1the 5th century who is thought scrambled with all parts of Cicero’s De. Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs</p>\r\n                </div>\r\n            </div>\r\n\r\n            <div class=\"row\">\r\n                <div class=\"col-lg-9 mx-auto\">\r\n                    <p data-aos=\"fade-up\" class=\"aos-init aos-animate\"><a href=\"#\">Lorem ipsum, or lipsum as it is sometimes known,</a> is dummy text used in laying out printed graphic or web designs. The passage is at attributed to an unknown typesetters in 1the 5th century who is thought scrambled with all parts of Cicero’s De. Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs</p>\r\n                    <h2 class=\"mb-4 aos-init aos-animate\" data-aos=\"fade-up\">Blog single page</h2>\r\n                    <ul data-aos=\"fade-up\" class=\"aos-init aos-animate\">\r\n                        <li>What manner of thing was upon me I did not know, but that it was large and heavy and many-legged I could feel.</li>\r\n                        <li>My hands were at its throat before the fangs had a chance to bury themselves in my neck, and slowly</li>\r\n                        <li>I forced the hairy face from me and closed my fingers, vise-like, upon its windpipe.</li>\r\n                    </ul>\r\n\r\n                    <blockquote data-aos=\"fade-up\" class=\"aos-init aos-animate\">\r\n                        <p>You are safe here! I shouted above the sudden noise. She looked away from me downhill. The people were coming out of their houses, astonished.</p>\r\n                        <footer class=\"blockquote-footer\">Oluchi Mazi</footer>\r\n                    </blockquote>\r\n                    <p>Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs. The passage is at attributed to an unknown typesetters in 1the 5th century who is thought scrambled with all parts of Cicero’s De. Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out printed graphic or web designs</p>\r\n                </div>\r\n            </div>         \r\n        ', '2023-09-12 13:13:06', 'assets/images/post7.jpg', 'assets/images/inpost7.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
