-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2020 at 10:23 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-05-23 11:34:02', '2020-05-23 11:34:02', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:3000/university', 'yes'),
(2, 'home', 'http://localhost:3000/university', 'yes'),
(3, 'blogname', 'Fictional University', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'fadynabil123@outlook.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '3', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:39:\"manual-image-crop/manual-image-crop.php\";i:2;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:3;s:33:\"w3-total-cache/w3-total-cache.php\";i:4;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:78:\"F:\\applications\\xampp\\htdocs\\university/wp-content/plugins/akismet/akismet.php\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'fictional-university-theme', 'yes'),
(41, 'stylesheet', 'fictional-university-theme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '48', 'yes'),
(84, 'page_on_front', '46', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1605785562', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:11:{i:1591468479;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1591476376;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591486479;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1591486480;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1591486548;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1591529672;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591529674;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1591529764;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591529780;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591735505;a:1:{s:16:\"wpseo_ryte_fetch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1590244283;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(117, 'recovery_keys', 'a:0:{}', 'yes'),
(124, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1591443458;s:15:\"version_checked\";s:5:\"5.4.1\";s:12:\"translations\";a:0:{}}', 'no'),
(132, 'can_compress_scripts', '1', 'no'),
(149, 'current_theme', 'Fictional University', 'yes'),
(150, 'theme_mods_fictional-university-theme', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:18:\"headerMenuLocation\";i:2;s:17:\"footerLocationOne\";i:3;s:17:\"footerLocationTwo\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1590503520;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(151, 'theme_switched', '', 'yes'),
(155, 'WPLANG', '', 'yes'),
(156, 'new_admin_email', 'fadynabil123@outlook.com', 'yes'),
(170, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(177, '_transient_health-check-site-status-result', '{\"good\":11,\"recommended\":6,\"critical\":0}', 'yes'),
(209, 'category_children', 'a:0:{}', 'yes'),
(235, 'theme_mods_zen-garden', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:18:\"GardenMenuLocation\";i:6;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1590795910;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(269, 'recently_activated', 'a:1:{s:36:\"google-sitemap-generator/sitemap.php\";i:1590526004;}', 'yes'),
(277, 'w3tc_state', '{\"common.install\":1590525071,\"common.install_version\":\"0.13.3\",\"license.status\":\"no_key\",\"license.next_check\":1591471928,\"license.terms\":\"\"}', 'no'),
(289, 'wpseo', 'a:26:{s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:1;s:25:\"ignore_indexation_warning\";b:0;s:29:\"indexation_warning_hide_until\";b:0;s:18:\"indexation_started\";b:0;s:7:\"version\";s:4:\"14.2\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1590525905;s:13:\"myyoast-oauth\";b:0;}', 'yes'),
(290, 'wpseo_titles', 'a:70:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:14:\"person_logo_id\";i:0;s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:15:\"company_logo_id\";i:0;s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;}', 'yes'),
(291, 'wpseo_social', 'a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(292, 'wpseo_flush_rewrite', '1', 'yes'),
(293, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:4:\"14.2\";}', 'yes'),
(294, '_transient_timeout_wpseo_link_table_inaccessible', '1622061924', 'no'),
(295, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(296, '_transient_timeout_wpseo_meta_table_inaccessible', '1622061925', 'no'),
(297, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(300, 'wpseo_ryte', 'a:2:{s:6:\"status\";i:-1;s:10:\"last_fetch\";i:1591345780;}', 'yes'),
(366, 'recovery_mode_email_last_sent', '1590797140', 'yes'),
(367, 'rewrite_rules', 'a:176:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:9:\"events/?$\";s:25:\"index.php?post_type=event\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:11:\"programs/?$\";s:27:\"index.php?post_type=program\";s:41:\"programs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:36:\"programs/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:28:\"programs/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=program&paged=$matches[1]\";s:11:\"campuses/?$\";s:26:\"index.php?post_type=campus\";s:41:\"campuses/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:36:\"campuses/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:28:\"campuses/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=campus&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"programs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"programs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"programs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"programs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"programs/([^/]+)/embed/?$\";s:40:\"index.php?program=$matches[1]&embed=true\";s:29:\"programs/([^/]+)/trackback/?$\";s:34:\"index.php?program=$matches[1]&tb=1\";s:49:\"programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:44:\"programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:37:\"programs/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&paged=$matches[2]\";s:44:\"programs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&cpage=$matches[2]\";s:33:\"programs/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?program=$matches[1]&page=$matches[2]\";s:25:\"programs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"programs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"programs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"programs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"professor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"professor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"professor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"professor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"professor/([^/]+)/embed/?$\";s:42:\"index.php?professor=$matches[1]&embed=true\";s:30:\"professor/([^/]+)/trackback/?$\";s:36:\"index.php?professor=$matches[1]&tb=1\";s:38:\"professor/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&paged=$matches[2]\";s:45:\"professor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&cpage=$matches[2]\";s:34:\"professor/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?professor=$matches[1]&page=$matches[2]\";s:26:\"professor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"professor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"professor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"professor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"campuses/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"campuses/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"campuses/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"campuses/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"campuses/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"campuses/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"campuses/([^/]+)/embed/?$\";s:39:\"index.php?campus=$matches[1]&embed=true\";s:29:\"campuses/([^/]+)/trackback/?$\";s:33:\"index.php?campus=$matches[1]&tb=1\";s:49:\"campuses/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:44:\"campuses/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:37:\"campuses/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&paged=$matches[2]\";s:44:\"campuses/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&cpage=$matches[2]\";s:33:\"campuses/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?campus=$matches[1]&page=$matches[2]\";s:25:\"campuses/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"campuses/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"campuses/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"campuses/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"campuses/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"campuses/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=46&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(408, 'acf_version', '5.8.11', 'yes'),
(447, '_site_transient_timeout_php_check_78e1776a2900a8656cebe7d7ea2a07cc', '1591477338', 'no'),
(448, '_site_transient_php_check_78e1776a2900a8656cebe7d7ea2a07cc', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(490, 'mic_make2x', 'true', 'yes'),
(491, 'w3tc_extensions_hooks', '{\"actions\":[],\"filters\":{\"w3tc_notes\":[\"w3tc_notes_wordpress_seo\"]},\"next_check_date\":1591480714}', 'yes'),
(492, '_transient_timeout_w3tc.verify_plugins', '1591486846', 'no'),
(493, '_transient_w3tc.verify_plugins', '1', 'no'),
(548, '_site_transient_timeout_theme_roots', '1591445147', 'no'),
(549, '_site_transient_theme_roots', 'a:6:{s:26:\"fictional-university-theme\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:24:\"university-static-master\";s:7:\"/themes\";s:10:\"zen-garden\";s:7:\"/themes\";}', 'no'),
(552, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1591443461;s:7:\"checked\";a:5:{s:26:\"fictional-university-theme\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.5\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:12:\"twentytwenty\";s:3:\"1.2\";s:10:\"zen-garden\";s:3:\"1.0\";}s:8:\"response\";a:2:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.3.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:10:\"zen-garden\";a:6:{s:5:\"theme\";s:10:\"zen-garden\";s:11:\"new_version\";s:5:\"1.0.3\";s:3:\"url\";s:40:\"https://wordpress.org/themes/zen-garden/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/zen-garden.1.0.3.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}}', 'no'),
(553, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1591443462;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:33:\"w3-total-cache/w3-total-cache.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/w3-total-cache\";s:4:\"slug\";s:14:\"w3-total-cache\";s:6:\"plugin\";s:33:\"w3-total-cache/w3-total-cache.php\";s:11:\"new_version\";s:6:\"0.14.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/w3-total-cache/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/w3-total-cache.0.14.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/w3-total-cache/assets/icon-256x256.png?rev=1041806\";s:2:\"1x\";s:67:\"https://ps.w.org/w3-total-cache/assets/icon-128x128.png?rev=1041806\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/w3-total-cache/assets/banner-772x250.jpg?rev=1041806\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.8.11\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.11.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"google-sitemap-generator/sitemap.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/google-sitemap-generator\";s:4:\"slug\";s:24:\"google-sitemap-generator\";s:6:\"plugin\";s:36:\"google-sitemap-generator/sitemap.php\";s:11:\"new_version\";s:5:\"4.1.0\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/google-sitemap-generator/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/google-sitemap-generator.4.1.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/google-sitemap-generator/assets/icon-256x256.png?rev=1701944\";s:2:\"1x\";s:77:\"https://ps.w.org/google-sitemap-generator/assets/icon-128x128.png?rev=1701944\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/google-sitemap-generator/assets/banner-772x250.png?rev=1701944\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"manual-image-crop/manual-image-crop.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/manual-image-crop\";s:4:\"slug\";s:17:\"manual-image-crop\";s:6:\"plugin\";s:39:\"manual-image-crop/manual-image-crop.php\";s:11:\"new_version\";s:4:\"1.12\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/manual-image-crop/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/manual-image-crop.1.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-256x256.png?rev=1154913\";s:2:\"1x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-128x128.png?rev=1154913\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/manual-image-crop/assets/banner-1544x500.jpg?rev=781224\";s:2:\"1x\";s:71:\"https://ps.w.org/manual-image-crop/assets/banner-772x250.jpg?rev=781224\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.3\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.3.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"14.2\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.14.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 1, '_edit_lock', '1590522767:1'),
(4, 5, '_edit_lock', '1590521843:1'),
(8, 8, '_edit_lock', '1590865523:1'),
(11, 10, '_edit_lock', '1590246104:1'),
(12, 3, '_wp_trash_meta_status', 'draft'),
(13, 3, '_wp_trash_meta_time', '1590255386'),
(14, 3, '_wp_desired_post_slug', 'privacy-policy'),
(15, 2, '_wp_trash_meta_status', 'publish'),
(16, 2, '_wp_trash_meta_time', '1590255387'),
(17, 2, '_wp_desired_post_slug', 'sample-page'),
(18, 10, '_wp_trash_meta_status', 'publish'),
(19, 10, '_wp_trash_meta_time', '1590255387'),
(20, 10, '_wp_desired_post_slug', 'test-page'),
(21, 14, '_edit_lock', '1590884489:1'),
(22, 16, '_edit_lock', '1590519887:1'),
(23, 20, '_edit_lock', '1590519858:1'),
(24, 23, '_edit_lock', '1590519876:1'),
(25, 25, '_edit_lock', '1590517180:1'),
(26, 28, '_menu_item_type', 'custom'),
(27, 28, '_menu_item_menu_item_parent', '0'),
(28, 28, '_menu_item_object_id', '28'),
(29, 28, '_menu_item_object', 'custom'),
(30, 28, '_menu_item_target', ''),
(31, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(32, 28, '_menu_item_xfn', ''),
(33, 28, '_menu_item_url', 'http://localhost:3000/university/'),
(89, 35, '_menu_item_type', 'post_type'),
(90, 35, '_menu_item_menu_item_parent', '0'),
(91, 35, '_menu_item_object_id', '14'),
(92, 35, '_menu_item_object', 'page'),
(93, 35, '_menu_item_target', ''),
(94, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(95, 35, '_menu_item_xfn', ''),
(96, 35, '_menu_item_url', ''),
(98, 36, '_menu_item_type', 'post_type'),
(99, 36, '_menu_item_menu_item_parent', '0'),
(100, 36, '_menu_item_object_id', '16'),
(101, 36, '_menu_item_object', 'page'),
(102, 36, '_menu_item_target', ''),
(103, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(104, 36, '_menu_item_xfn', ''),
(105, 36, '_menu_item_url', ''),
(107, 37, '_menu_item_type', 'post_type'),
(108, 37, '_menu_item_menu_item_parent', '0'),
(109, 37, '_menu_item_object_id', '25'),
(110, 37, '_menu_item_object', 'page'),
(111, 37, '_menu_item_target', ''),
(112, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(113, 37, '_menu_item_xfn', ''),
(114, 37, '_menu_item_url', ''),
(116, 38, '_menu_item_type', 'post_type'),
(117, 38, '_menu_item_menu_item_parent', '0'),
(118, 38, '_menu_item_object_id', '14'),
(119, 38, '_menu_item_object', 'page'),
(120, 38, '_menu_item_target', ''),
(121, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(122, 38, '_menu_item_xfn', ''),
(123, 38, '_menu_item_url', ''),
(125, 39, '_menu_item_type', 'post_type'),
(126, 39, '_menu_item_menu_item_parent', '0'),
(127, 39, '_menu_item_object_id', '23'),
(128, 39, '_menu_item_object', 'page'),
(129, 39, '_menu_item_target', ''),
(130, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(131, 39, '_menu_item_xfn', ''),
(132, 39, '_menu_item_url', ''),
(134, 40, '_menu_item_type', 'post_type'),
(135, 40, '_menu_item_menu_item_parent', '0'),
(136, 40, '_menu_item_object_id', '20'),
(137, 40, '_menu_item_object', 'page'),
(138, 40, '_menu_item_target', ''),
(139, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(140, 40, '_menu_item_xfn', ''),
(141, 40, '_menu_item_url', ''),
(143, 41, '_menu_item_type', 'post_type'),
(144, 41, '_menu_item_menu_item_parent', '0'),
(145, 41, '_menu_item_object_id', '16'),
(146, 41, '_menu_item_object', 'page'),
(147, 41, '_menu_item_target', ''),
(148, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(149, 41, '_menu_item_xfn', ''),
(150, 41, '_menu_item_url', ''),
(152, 42, '_menu_item_type', 'post_type'),
(153, 42, '_menu_item_menu_item_parent', '0'),
(154, 42, '_menu_item_object_id', '25'),
(155, 42, '_menu_item_object', 'page'),
(156, 42, '_menu_item_target', ''),
(157, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(158, 42, '_menu_item_xfn', ''),
(159, 42, '_menu_item_url', ''),
(161, 43, '_menu_item_type', 'post_type'),
(162, 43, '_menu_item_menu_item_parent', '0'),
(163, 43, '_menu_item_object_id', '14'),
(164, 43, '_menu_item_object', 'page'),
(165, 43, '_menu_item_target', ''),
(166, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(167, 43, '_menu_item_xfn', ''),
(168, 43, '_menu_item_url', ''),
(170, 44, '_menu_item_type', 'post_type'),
(171, 44, '_menu_item_menu_item_parent', '0'),
(172, 44, '_menu_item_object_id', '23'),
(173, 44, '_menu_item_object', 'page'),
(174, 44, '_menu_item_target', ''),
(175, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(176, 44, '_menu_item_xfn', ''),
(177, 44, '_menu_item_url', ''),
(179, 45, '_menu_item_type', 'post_type'),
(180, 45, '_menu_item_menu_item_parent', '0'),
(181, 45, '_menu_item_object_id', '20'),
(182, 45, '_menu_item_object', 'page'),
(183, 45, '_menu_item_target', ''),
(184, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(185, 45, '_menu_item_xfn', ''),
(186, 45, '_menu_item_url', ''),
(188, 46, '_edit_lock', '1590519327:1'),
(189, 48, '_edit_lock', '1590518248:1'),
(198, 51, '_menu_item_type', 'post_type'),
(199, 51, '_menu_item_menu_item_parent', '0'),
(200, 51, '_menu_item_object_id', '48'),
(201, 51, '_menu_item_object', 'page'),
(202, 51, '_menu_item_target', ''),
(203, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(204, 51, '_menu_item_xfn', ''),
(205, 51, '_menu_item_url', ''),
(207, 52, '_menu_item_type', 'post_type'),
(208, 52, '_menu_item_menu_item_parent', '0'),
(209, 52, '_menu_item_object_id', '16'),
(210, 52, '_menu_item_object', 'page'),
(211, 52, '_menu_item_target', ''),
(212, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(213, 52, '_menu_item_xfn', ''),
(214, 52, '_menu_item_url', ''),
(215, 52, '_menu_item_orphaned', '1590516373'),
(216, 53, '_menu_item_type', 'post_type'),
(217, 53, '_menu_item_menu_item_parent', '0'),
(218, 53, '_menu_item_object_id', '25'),
(219, 53, '_menu_item_object', 'page'),
(220, 53, '_menu_item_target', ''),
(221, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(222, 53, '_menu_item_xfn', ''),
(223, 53, '_menu_item_url', ''),
(224, 53, '_menu_item_orphaned', '1590516374'),
(225, 54, '_menu_item_type', 'post_type'),
(226, 54, '_menu_item_menu_item_parent', '0'),
(227, 54, '_menu_item_object_id', '14'),
(228, 54, '_menu_item_object', 'page'),
(229, 54, '_menu_item_target', ''),
(230, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(231, 54, '_menu_item_xfn', ''),
(232, 54, '_menu_item_url', ''),
(233, 54, '_menu_item_orphaned', '1590516375'),
(234, 55, '_menu_item_type', 'post_type'),
(235, 55, '_menu_item_menu_item_parent', '0'),
(236, 55, '_menu_item_object_id', '23'),
(237, 55, '_menu_item_object', 'page'),
(238, 55, '_menu_item_target', ''),
(239, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(240, 55, '_menu_item_xfn', ''),
(241, 55, '_menu_item_url', ''),
(242, 55, '_menu_item_orphaned', '1590516376'),
(243, 56, '_menu_item_type', 'post_type'),
(244, 56, '_menu_item_menu_item_parent', '0'),
(245, 56, '_menu_item_object_id', '20'),
(246, 56, '_menu_item_object', 'page'),
(247, 56, '_menu_item_target', ''),
(248, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(249, 56, '_menu_item_xfn', ''),
(250, 56, '_menu_item_url', ''),
(251, 56, '_menu_item_orphaned', '1590516377'),
(252, 57, '_menu_item_type', 'post_type'),
(253, 57, '_menu_item_menu_item_parent', '0'),
(254, 57, '_menu_item_object_id', '16'),
(255, 57, '_menu_item_object', 'page'),
(256, 57, '_menu_item_target', ''),
(257, 57, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(258, 57, '_menu_item_xfn', ''),
(259, 57, '_menu_item_url', ''),
(270, 59, '_menu_item_type', 'post_type'),
(271, 59, '_menu_item_menu_item_parent', '0'),
(272, 59, '_menu_item_object_id', '14'),
(273, 59, '_menu_item_object', 'page'),
(274, 59, '_menu_item_target', ''),
(275, 59, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(276, 59, '_menu_item_xfn', ''),
(277, 59, '_menu_item_url', ''),
(279, 60, '_menu_item_type', 'post_type'),
(280, 60, '_menu_item_menu_item_parent', '0'),
(281, 60, '_menu_item_object_id', '23'),
(282, 60, '_menu_item_object', 'page'),
(283, 60, '_menu_item_target', ''),
(284, 60, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(285, 60, '_menu_item_xfn', ''),
(286, 60, '_menu_item_url', ''),
(288, 61, '_menu_item_type', 'post_type'),
(289, 61, '_menu_item_menu_item_parent', '0'),
(290, 61, '_menu_item_object_id', '20'),
(291, 61, '_menu_item_object', 'page'),
(292, 61, '_menu_item_target', ''),
(293, 61, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(294, 61, '_menu_item_xfn', ''),
(295, 61, '_menu_item_url', ''),
(297, 66, '_menu_item_type', 'post_type'),
(298, 66, '_menu_item_menu_item_parent', '0'),
(299, 66, '_menu_item_object_id', '46'),
(300, 66, '_menu_item_object', 'page'),
(301, 66, '_menu_item_target', ''),
(302, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(303, 66, '_menu_item_xfn', ''),
(304, 66, '_menu_item_url', ''),
(306, 67, '_menu_item_type', 'post_type'),
(307, 67, '_menu_item_menu_item_parent', '0'),
(308, 67, '_menu_item_object_id', '48'),
(309, 67, '_menu_item_object', 'page'),
(310, 67, '_menu_item_target', ''),
(311, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(312, 67, '_menu_item_xfn', ''),
(313, 67, '_menu_item_url', ''),
(321, 75, '_edit_lock', '1590591636:1'),
(324, 75, '_edit_last', '1'),
(327, 75, '_yoast_wpseo_content_score', '30'),
(328, 78, '_edit_lock', '1590543215:1'),
(331, 78, '_edit_last', '1'),
(334, 78, '_yoast_wpseo_primary_category', '5'),
(335, 78, '_yoast_wpseo_content_score', '30'),
(348, 75, '_pingme', '1'),
(349, 75, '_encloseme', '1'),
(350, 75, '_yoast_wpseo_primary_category', '5'),
(351, 80, '_edit_last', '1'),
(352, 80, '_edit_lock', '1590868236:1'),
(353, 80, '_yoast_wpseo_content_score', '30'),
(354, 81, '_edit_last', '1'),
(355, 81, '_edit_lock', '1590876168:1'),
(356, 81, '_yoast_wpseo_content_score', '30'),
(357, 82, '_edit_last', '1'),
(358, 82, '_edit_lock', '1590867991:1'),
(359, 82, '_yoast_wpseo_content_score', '30'),
(360, 78, '_wp_trash_meta_status', 'publish'),
(361, 78, '_wp_trash_meta_time', '1590801841'),
(362, 78, '_wp_desired_post_slug', 'using-reusable-block'),
(363, 75, '_wp_trash_meta_status', 'publish'),
(364, 75, '_wp_trash_meta_time', '1590801842'),
(365, 75, '_wp_desired_post_slug', 'reusable-block'),
(368, 8, '_edit_last', '1'),
(371, 8, '_yoast_wpseo_primary_category', '5'),
(372, 8, '_yoast_wpseo_content_score', '30'),
(373, 86, '_edit_lock', '1590803655:1'),
(374, 86, '_edit_last', '1'),
(375, 86, '_yoast_wpseo_content_score', '60'),
(385, 89, '_menu_item_type', 'post_type'),
(386, 89, '_menu_item_menu_item_parent', '0'),
(387, 89, '_menu_item_object_id', '86'),
(388, 89, '_menu_item_object', 'page'),
(389, 89, '_menu_item_target', ''),
(390, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(391, 89, '_menu_item_xfn', ''),
(392, 89, '_menu_item_url', ''),
(393, 89, '_menu_item_orphaned', '1590803819'),
(394, 90, '_menu_item_type', 'custom'),
(395, 90, '_menu_item_menu_item_parent', '0'),
(396, 90, '_menu_item_object_id', '90'),
(397, 90, '_menu_item_object', 'custom'),
(398, 90, '_menu_item_target', ''),
(399, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(400, 90, '_menu_item_xfn', ''),
(401, 90, '_menu_item_url', 'http://localhost:3000/university/events/'),
(403, 86, '_wp_trash_meta_status', 'publish'),
(404, 86, '_wp_trash_meta_time', '1590803869'),
(405, 86, '_wp_desired_post_slug', 'event'),
(407, 91, '_edit_last', '1'),
(408, 91, '_edit_lock', '1590840082:1'),
(409, 82, 'event_date', '20200531'),
(410, 82, '_event_date', 'field_5ed2469ac90bc'),
(411, 81, 'event_date', '20200829'),
(412, 81, '_event_date', 'field_5ed2469ac90bc'),
(413, 80, 'event_date', '20200524'),
(414, 80, '_event_date', 'field_5ed2469ac90bc'),
(421, 95, '_edit_last', '1'),
(422, 95, '_edit_lock', '1590867264:1'),
(423, 95, 'event_date', '20201218'),
(424, 95, '_event_date', 'field_5ed2469ac90bc'),
(425, 95, '_yoast_wpseo_content_score', '30'),
(426, 96, '_edit_lock', '1590867987:1'),
(427, 96, '_edit_last', '1'),
(428, 98, '_edit_last', '1'),
(429, 98, '_edit_lock', '1590875577:1'),
(430, 98, 'event_date', '20180510'),
(431, 98, '_event_date', 'field_5ed2469ac90bc'),
(432, 98, '_yoast_wpseo_content_score', '30'),
(433, 99, '_edit_last', '1'),
(434, 99, '_edit_lock', '1590869727:1'),
(435, 99, '_yoast_wpseo_content_score', '30'),
(436, 100, '_edit_last', '1'),
(437, 100, '_edit_lock', '1590869748:1'),
(438, 100, '_yoast_wpseo_content_score', '30'),
(439, 101, '_edit_last', '1'),
(440, 101, '_edit_lock', '1590869807:1'),
(441, 101, '_yoast_wpseo_content_score', '30'),
(442, 102, '_edit_last', '1'),
(443, 102, '_edit_lock', '1590877657:1'),
(444, 81, 'related_programs', 'a:1:{i:0;s:3:\"100\";}'),
(445, 81, '_related_programs', 'field_5ed2c46300c48'),
(446, 105, '_menu_item_type', 'custom'),
(447, 105, '_menu_item_menu_item_parent', '0'),
(448, 105, '_menu_item_object_id', '105'),
(449, 105, '_menu_item_object', 'custom'),
(450, 105, '_menu_item_target', ''),
(451, 105, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(452, 105, '_menu_item_xfn', ''),
(453, 105, '_menu_item_url', 'http://localhost:3000/university/programs/'),
(455, 107, '_edit_last', '1'),
(456, 107, '_edit_lock', '1590879431:1'),
(457, 107, '_yoast_wpseo_content_score', '30'),
(458, 108, '_edit_last', '1'),
(459, 108, '_edit_lock', '1590880724:1'),
(460, 108, '_yoast_wpseo_content_score', '30'),
(461, 107, 'related_programs', 'a:3:{i:0;s:3:\"100\";i:1;s:3:\"101\";i:2;s:2:\"99\";}'),
(462, 107, '_related_programs', 'field_5ed2c46300c48'),
(465, 110, '_wp_attached_file', '2020/05/img-1.jpg'),
(466, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:17:\"2020/05/img-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(467, 107, '_thumbnail_id', '110'),
(468, 111, '_wp_attached_file', '2020/05/img-2.jpg'),
(469, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:17:\"2020/05/img-2.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(470, 108, '_thumbnail_id', '111'),
(471, 108, 'related_programs', 'a:2:{i:0;s:3:\"100\";i:1;s:3:\"101\";}'),
(472, 108, '_related_programs', 'field_5ed2c46300c48'),
(473, 112, '_edit_last', '1'),
(474, 112, '_edit_lock', '1591113188:1'),
(475, 113, '_wp_attached_file', '2020/05/img-5.jpg'),
(476, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:17:\"2020/05/img-5.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(477, 112, '_thumbnail_id', '113'),
(478, 112, 'related_programs', 'a:1:{i:0;s:2:\"99\";}'),
(479, 112, '_related_programs', 'field_5ed2c46300c48'),
(480, 112, '_yoast_wpseo_content_score', '30'),
(481, 110, '_edit_lock', '1590881085:1'),
(482, 114, '_edit_last', '1'),
(483, 114, '_edit_lock', '1591113150:1'),
(484, 115, '_wp_attached_file', '2020/05/040-frog-bio-scaled.jpg'),
(485, 115, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1999;s:4:\"file\";s:31:\"2020/05/040-frog-bio-scaled.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"040-frog-bio-300x234.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:234;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"040-frog-bio-1024x800.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"040-frog-bio-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"040-frog-bio-768x600.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:26:\"040-frog-bio-1536x1199.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:26:\"040-frog-bio-2048x1599.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:24:\"040-frog-bio-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:24:\"040-frog-bio-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"040-frog-bio.jpg\";}'),
(486, 114, '_thumbnail_id', '115'),
(487, 114, 'related_programs', 'a:3:{i:0;s:2:\"99\";i:1;s:3:\"100\";i:2;s:3:\"101\";}'),
(488, 114, '_related_programs', 'field_5ed2c46300c48'),
(489, 114, '_yoast_wpseo_content_score', '30'),
(490, 116, '_edit_last', '1'),
(491, 116, '_edit_lock', '1590882912:1'),
(492, 119, '_wp_attached_file', '2020/05/042-field-scaled.jpg'),
(493, 119, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:28:\"2020/05/042-field-scaled.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"042-field-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"042-field-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"042-field-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"042-field-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"042-field-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:23:\"042-field-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:21:\"042-field-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:21:\"042-field-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:22:\"042-field-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"042-field.jpg\";}'),
(494, 114, 'page_banner_subtitle', 'The leading Voice in Biology'),
(495, 114, '_page_banner_subtitle', 'field_5ed2f21a35627'),
(496, 114, 'page_banner_background_image', '119'),
(497, 114, '_page_banner_background_image', 'field_5ed2f25535628'),
(498, 120, '_wp_attached_file', '2020/05/043-building-scaled.jpg'),
(499, 120, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1709;s:4:\"file\";s:31:\"2020/05/043-building-scaled.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"043-building-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"043-building-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"043-building-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"043-building-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:26:\"043-building-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:26:\"043-building-2048x1367.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1367;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:24:\"043-building-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:24:\"043-building-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:25:\"043-building-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"043-building.jpg\";}'),
(500, 14, '_edit_last', '1'),
(501, 14, '_yoast_wpseo_content_score', '30'),
(502, 14, 'page_banner_subtitle', 'We Are a great school that has been around.'),
(503, 14, '_page_banner_subtitle', 'field_5ed2f21a35627'),
(504, 14, 'page_banner_background_image', '120'),
(505, 14, '_page_banner_background_image', 'field_5ed2f25535628'),
(506, 122, 'page_banner_subtitle', 'We Are a great school that has been around.'),
(507, 122, '_page_banner_subtitle', 'field_5ed2f21a35627'),
(508, 122, 'page_banner_background_image', '120'),
(509, 122, '_page_banner_background_image', 'field_5ed2f25535628'),
(510, 123, '_edit_last', '1'),
(511, 123, '_edit_lock', '1591395306:1'),
(512, 123, 'page_banner_subtitle', 'a beautiful campus'),
(513, 123, '_page_banner_subtitle', 'field_5ed2f21a35627'),
(514, 123, 'page_banner_background_image', ''),
(515, 123, '_page_banner_background_image', 'field_5ed2f25535628'),
(516, 123, '_yoast_wpseo_content_score', '30'),
(517, 124, '_edit_last', '1'),
(518, 124, '_edit_lock', '1591113323:1'),
(519, 124, 'page_banner_subtitle', ''),
(520, 124, '_page_banner_subtitle', 'field_5ed2f21a35627'),
(521, 124, 'page_banner_background_image', ''),
(522, 124, '_page_banner_background_image', 'field_5ed2f25535628'),
(523, 124, '_yoast_wpseo_content_score', '30'),
(524, 125, '_edit_last', '1'),
(525, 125, '_edit_lock', '1591115771:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-05-23 11:34:02', '2020-05-23 11:34:02', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-05-26 19:39:54', '2020-05-26 19:39:54', '', 0, 'http://localhost:3000/university/?p=1', 0, 'post', '', 1),
(2, 1, '2020-05-23 11:34:02', '2020-05-23 11:34:02', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:3000/university/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2020-05-23 17:36:27', '2020-05-23 17:36:27', '', 0, 'http://localhost:3000/university/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-05-23 11:34:02', '2020-05-23 11:34:02', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost:3000/university.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2020-05-23 17:36:26', '2020-05-23 17:36:26', '', 0, 'http://localhost:3000/university/?page_id=3', 0, 'page', '', 0),
(5, 1, '2020-05-23 14:46:36', '2020-05-23 14:46:36', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Test Post', '', 'publish', 'open', 'open', '', 'test-post', '', '', '2020-05-26 19:39:44', '2020-05-26 19:39:44', '', 0, 'http://localhost:3000/university/?p=5', 0, 'post', '', 0),
(6, 1, '2020-05-23 14:46:36', '2020-05-23 14:46:36', '<!-- wp:paragraph -->\n<p>hello tp new post</p>\n<!-- /wp:paragraph -->', 'Test Post', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-05-23 14:46:36', '2020-05-23 14:46:36', '', 5, 'http://localhost:3000/university/?p=6', 0, 'revision', '', 0),
(8, 1, '2020-05-23 14:53:56', '2020-05-23 14:53:56', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Wordpress', '', 'publish', 'open', 'open', '', 'wordpress', '', '', '2020-05-30 18:17:25', '2020-05-30 18:17:25', '', 0, 'http://localhost:3000/university/?p=8', 0, 'post', '', 0),
(9, 1, '2020-05-23 14:53:56', '2020-05-23 14:53:56', '<!-- wp:paragraph -->\n<p>hellov welocm lorenum birtbgjgh</p>\n<!-- /wp:paragraph -->', 'Wordpress', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-05-23 14:53:56', '2020-05-23 14:53:56', '', 8, 'http://localhost:3000/university/?p=9', 0, 'revision', '', 0),
(10, 1, '2020-05-23 15:01:15', '2020-05-23 15:01:15', '<!-- wp:paragraph -->\n<p>hnbkfrorjhffbnmlp;oioi</p>\n<!-- /wp:paragraph -->', 'Test Page', '', 'trash', 'closed', 'closed', '', 'test-page__trashed', '', '', '2020-05-23 17:36:28', '2020-05-23 17:36:28', '', 0, 'http://localhost:3000/university/?page_id=10', 0, 'page', '', 0),
(11, 1, '2020-05-23 15:01:15', '2020-05-23 15:01:15', '<!-- wp:paragraph -->\n<p>hnbkfrorjhffbnmlp;oioi</p>\n<!-- /wp:paragraph -->', 'Test Page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-05-23 15:01:15', '2020-05-23 15:01:15', '', 10, 'http://localhost:3000/university/?p=11', 0, 'revision', '', 0),
(12, 1, '2020-05-23 17:36:26', '2020-05-23 17:36:26', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost:3000/university.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2020-05-23 17:36:26', '2020-05-23 17:36:26', '', 3, 'http://localhost:3000/university/?p=12', 0, 'revision', '', 0),
(13, 1, '2020-05-23 17:36:27', '2020-05-23 17:36:27', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:3000/university/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-05-23 17:36:27', '2020-05-23 17:36:27', '', 2, 'http://localhost:3000/university/?p=13', 0, 'revision', '', 0),
(14, 1, '2020-05-23 17:38:07', '2020-05-23 17:38:07', '<!-- wp:paragraph -->\n<p>this is about page content. <strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2020-05-31 00:21:25', '2020-05-31 00:21:25', '', 0, 'http://localhost:3000/university/?page_id=14', 0, 'page', '', 0),
(15, 1, '2020-05-23 17:38:07', '2020-05-23 17:38:07', '<!-- wp:paragraph -->\n<p>this is about page content. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-05-23 17:38:07', '2020-05-23 17:38:07', '', 14, 'http://localhost:3000/university/?p=15', 0, 'revision', '', 0),
(16, 1, '2020-05-23 17:38:52', '2020-05-23 17:38:52', '<!-- wp:paragraph -->\n<p>this is the privacy policy page.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2020-05-26 19:07:09', '2020-05-26 19:07:09', '', 0, 'http://localhost:3000/university/?page_id=16', 0, 'page', '', 0),
(17, 1, '2020-05-23 17:38:52', '2020-05-23 17:38:52', '<!-- wp:paragraph -->\n<p>this is the privacy policy page.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Privacy Plicy', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2020-05-23 17:38:52', '2020-05-23 17:38:52', '', 16, 'http://localhost:3000/university/?p=17', 0, 'revision', '', 0),
(19, 1, '2020-05-23 18:41:36', '2020-05-23 18:41:36', '<!-- wp:paragraph -->\n<p>this is the privacy policy page.<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2020-05-23 18:41:36', '2020-05-23 18:41:36', '', 16, 'http://localhost:3000/university/16-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2020-05-23 18:51:59', '2020-05-23 18:51:59', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Our History', '', 'publish', 'closed', 'closed', '', 'our-history', '', '', '2020-05-26 19:06:29', '2020-05-26 19:06:29', '', 14, 'http://localhost:3000/university/?page_id=20', 1, 'page', '', 0),
(21, 1, '2020-05-23 18:51:59', '2020-05-23 18:51:59', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Our History', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2020-05-23 18:51:59', '2020-05-23 18:51:59', '', 20, 'http://localhost:3000/university/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2020-05-23 18:52:44', '2020-05-23 18:52:44', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Our History', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2020-05-23 18:52:44', '2020-05-23 18:52:44', '', 20, 'http://localhost:3000/university/20-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2020-05-23 18:53:13', '2020-05-23 18:53:13', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Our Goals', '', 'publish', 'closed', 'closed', '', 'our-goals', '', '', '2020-05-26 19:06:50', '2020-05-26 19:06:50', '', 14, 'http://localhost:3000/university/?page_id=23', 0, 'page', '', 0),
(24, 1, '2020-05-23 18:53:13', '2020-05-23 18:53:13', '', 'Our Goals', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-05-23 18:53:13', '2020-05-23 18:53:13', '', 23, 'http://localhost:3000/university/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2020-05-23 20:31:29', '2020-05-23 20:31:29', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Cookie Policy', '', 'publish', 'closed', 'closed', '', 'cookie-policy', '', '', '2020-05-23 21:09:17', '2020-05-23 21:09:17', '', 16, 'http://localhost:3000/university/?page_id=25', 0, 'page', '', 0),
(26, 1, '2020-05-23 20:31:29', '2020-05-23 20:31:29', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Cookie Policy', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2020-05-23 20:31:29', '2020-05-23 20:31:29', '', 25, 'http://localhost:3000/university/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2020-05-23 21:09:17', '2020-05-23 21:09:17', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Cookie Policy', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2020-05-23 21:09:17', '2020-05-23 21:09:17', '', 25, 'http://localhost:3000/university/25-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2020-05-23 21:34:19', '2020-05-23 21:34:19', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-05-30 23:51:53', '2020-05-30 23:51:53', '', 0, 'http://localhost:3000/university/?p=28', 1, 'nav_menu_item', '', 0),
(35, 1, '2020-05-23 21:35:04', '2020-05-23 21:35:04', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2020-05-30 23:51:54', '2020-05-30 23:51:54', '', 0, 'http://localhost:3000/university/?p=35', 2, 'nav_menu_item', '', 0),
(36, 1, '2020-05-23 21:52:28', '2020-05-23 21:52:28', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2020-05-23 21:52:28', '2020-05-23 21:52:28', '', 0, 'http://localhost:3000/university/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2020-05-23 21:52:29', '2020-05-23 21:52:29', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2020-05-23 21:52:29', '2020-05-23 21:52:29', '', 16, 'http://localhost:3000/university/?p=37', 2, 'nav_menu_item', '', 0),
(38, 1, '2020-05-23 21:52:30', '2020-05-23 21:52:30', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2020-05-23 21:52:30', '2020-05-23 21:52:30', '', 0, 'http://localhost:3000/university/?p=38', 3, 'nav_menu_item', '', 0),
(39, 1, '2020-05-23 21:52:30', '2020-05-23 21:52:30', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2020-05-23 21:52:30', '2020-05-23 21:52:30', '', 14, 'http://localhost:3000/university/?p=39', 4, 'nav_menu_item', '', 0),
(40, 1, '2020-05-23 21:52:30', '2020-05-23 21:52:30', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2020-05-23 21:52:30', '2020-05-23 21:52:30', '', 14, 'http://localhost:3000/university/?p=40', 5, 'nav_menu_item', '', 0),
(41, 1, '2020-05-23 21:54:38', '2020-05-23 21:54:38', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2020-05-23 21:54:38', '2020-05-23 21:54:38', '', 0, 'http://localhost:3000/university/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2020-05-23 21:54:39', '2020-05-23 21:54:39', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2020-05-23 21:54:39', '2020-05-23 21:54:39', '', 16, 'http://localhost:3000/university/?p=42', 2, 'nav_menu_item', '', 0),
(43, 1, '2020-05-23 21:54:39', '2020-05-23 21:54:39', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2020-05-23 21:54:39', '2020-05-23 21:54:39', '', 0, 'http://localhost:3000/university/?p=43', 3, 'nav_menu_item', '', 0),
(44, 1, '2020-05-23 21:54:40', '2020-05-23 21:54:40', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2020-05-23 21:54:40', '2020-05-23 21:54:40', '', 14, 'http://localhost:3000/university/?p=44', 4, 'nav_menu_item', '', 0),
(45, 1, '2020-05-23 21:54:40', '2020-05-23 21:54:40', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2020-05-23 21:54:40', '2020-05-23 21:54:40', '', 14, 'http://localhost:3000/university/?p=45', 5, 'nav_menu_item', '', 0),
(46, 1, '2020-05-25 20:16:48', '2020-05-25 20:16:48', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\"></pre>\n<!-- /wp:preformatted -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-05-26 18:41:19', '2020-05-26 18:41:19', '', 0, 'http://localhost:3000/university/?page_id=46', 0, 'page', '', 0),
(47, 1, '2020-05-25 20:16:48', '2020-05-25 20:16:48', '', 'Home', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-05-25 20:16:48', '2020-05-25 20:16:48', '', 46, 'http://localhost:3000/university/46-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2020-05-25 20:17:09', '2020-05-25 20:17:09', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-05-26 18:39:47', '2020-05-26 18:39:47', '', 0, 'http://localhost:3000/university/?page_id=48', 0, 'page', '', 0),
(49, 1, '2020-05-25 20:17:09', '2020-05-25 20:17:09', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2020-05-25 20:17:09', '2020-05-25 20:17:09', '', 48, 'http://localhost:3000/university/48-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2020-05-25 21:28:46', '2020-05-25 21:28:46', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-05-25 21:28:46', '2020-05-25 21:28:46', '', 1, 'http://localhost:3000/university/1-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2020-05-25 22:51:29', '2020-05-25 22:51:29', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2020-05-30 23:51:55', '2020-05-30 23:51:55', '', 0, 'http://localhost:3000/university/?p=51', 5, 'nav_menu_item', '', 0),
(52, 1, '2020-05-26 18:06:12', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-26 18:06:12', '0000-00-00 00:00:00', '', 0, 'http://localhost:3000/university/?p=52', 1, 'nav_menu_item', '', 0),
(53, 1, '2020-05-26 18:06:13', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-26 18:06:13', '0000-00-00 00:00:00', '', 16, 'http://localhost:3000/university/?p=53', 1, 'nav_menu_item', '', 0),
(54, 1, '2020-05-26 18:06:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-26 18:06:14', '0000-00-00 00:00:00', '', 0, 'http://localhost:3000/university/?p=54', 1, 'nav_menu_item', '', 0),
(55, 1, '2020-05-26 18:06:15', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-26 18:06:15', '0000-00-00 00:00:00', '', 14, 'http://localhost:3000/university/?p=55', 1, 'nav_menu_item', '', 0),
(56, 1, '2020-05-26 18:06:16', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-26 18:06:16', '0000-00-00 00:00:00', '', 14, 'http://localhost:3000/university/?p=56', 1, 'nav_menu_item', '', 0),
(57, 1, '2020-05-26 18:13:36', '2020-05-26 18:13:36', ' ', '', '', 'publish', 'closed', 'closed', '', '57', '', '', '2020-05-30 00:28:58', '2020-05-30 00:28:58', '', 0, 'http://localhost:3000/university/?p=57', 4, 'nav_menu_item', '', 0),
(59, 1, '2020-05-26 18:13:37', '2020-05-26 18:13:37', ' ', '', '', 'publish', 'closed', 'closed', '', '59', '', '', '2020-05-30 00:28:58', '2020-05-30 00:28:58', '', 0, 'http://localhost:3000/university/?p=59', 2, 'nav_menu_item', '', 0),
(60, 1, '2020-05-26 18:13:38', '2020-05-26 18:13:38', ' ', '', '', 'publish', 'closed', 'closed', '', '60', '', '', '2020-05-30 00:28:58', '2020-05-30 00:28:58', '', 14, 'http://localhost:3000/university/?p=60', 5, 'nav_menu_item', '', 0),
(61, 1, '2020-05-26 18:13:38', '2020-05-26 18:13:38', ' ', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2020-05-30 00:28:59', '2020-05-30 00:28:59', '', 14, 'http://localhost:3000/university/?p=61', 6, 'nav_menu_item', '', 0),
(62, 1, '2020-05-26 18:22:12', '2020-05-26 18:22:12', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.</p>\n<!-- /wp:paragraph -->', 'Our Goals', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-05-26 18:22:12', '2020-05-26 18:22:12', '', 23, 'http://localhost:3000/university/23-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2020-05-26 18:39:37', '2020-05-26 18:39:37', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\"><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</pre>\n<!-- /wp:preformatted -->', 'Home', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-05-26 18:39:37', '2020-05-26 18:39:37', '', 46, 'http://localhost:3000/university/46-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2020-05-26 18:39:47', '2020-05-26 18:39:47', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Blog', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2020-05-26 18:39:47', '2020-05-26 18:39:47', '', 48, 'http://localhost:3000/university/48-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2020-05-26 18:41:19', '2020-05-26 18:41:19', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\"></pre>\n<!-- /wp:preformatted -->', 'Home', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-05-26 18:41:19', '2020-05-26 18:41:19', '', 46, 'http://localhost:3000/university/46-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2020-05-26 19:03:40', '2020-05-26 19:03:40', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2020-05-30 00:28:57', '2020-05-30 00:28:57', '', 0, 'http://localhost:3000/university/?p=66', 1, 'nav_menu_item', '', 0),
(67, 1, '2020-05-26 19:03:42', '2020-05-26 19:03:42', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2020-05-30 00:28:58', '2020-05-30 00:28:58', '', 0, 'http://localhost:3000/university/?p=67', 3, 'nav_menu_item', '', 0),
(68, 1, '2020-05-26 19:06:29', '2020-05-26 19:06:29', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Our History', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2020-05-26 19:06:29', '2020-05-26 19:06:29', '', 20, 'http://localhost:3000/university/20-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2020-05-26 19:06:50', '2020-05-26 19:06:50', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Our Goals', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-05-26 19:06:50', '2020-05-26 19:06:50', '', 23, 'http://localhost:3000/university/23-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2020-05-26 19:07:09', '2020-05-26 19:07:09', '<!-- wp:paragraph -->\n<p>this is the privacy policy page.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2020-05-26 19:07:09', '2020-05-26 19:07:09', '', 16, 'http://localhost:3000/university/16-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(71, 1, '2020-05-26 19:07:31', '2020-05-26 19:07:31', '<!-- wp:paragraph -->\n<p>this is about page content. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-05-26 19:07:31', '2020-05-26 19:07:31', '', 14, 'http://localhost:3000/university/14-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2020-05-26 19:39:35', '2020-05-26 19:39:35', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Wordpress', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-05-26 19:39:35', '2020-05-26 19:39:35', '', 8, 'http://localhost:3000/university/8-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2020-05-26 19:39:44', '2020-05-26 19:39:44', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Test Post', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-05-26 19:39:44', '2020-05-26 19:39:44', '', 5, 'http://localhost:3000/university/5-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2020-05-26 19:39:54', '2020-05-26 19:39:54', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-05-26 19:39:54', '2020-05-26 19:39:54', '', 1, 'http://localhost:3000/university/1-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2020-05-27 01:11:56', '2020-05-27 01:11:56', '<!-- wp:block {\"ref\":76} /-->', 'Reusable Block', '', 'trash', 'open', 'open', '', 'reusable-block__trashed', '', '', '2020-05-30 01:24:02', '2020-05-30 01:24:02', '', 0, 'http://localhost:3000/university/?p=75', 0, 'post', '', 0),
(76, 1, '2020-05-27 01:11:08', '2020-05-27 01:11:08', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Dummy Post', '', 'publish', 'closed', 'closed', '', 'untitled-reusable-block', '', '', '2020-05-27 01:11:46', '2020-05-27 01:11:46', '', 0, 'http://localhost:3000/university/untitled-reusable-block/', 0, 'wp_block', '', 0),
(77, 1, '2020-05-27 01:11:56', '2020-05-27 01:11:56', '<!-- wp:block {\"ref\":76} /-->', 'Reusable Block', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2020-05-27 01:11:56', '2020-05-27 01:11:56', '', 75, 'http://localhost:3000/university/75-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2020-05-27 01:12:48', '2020-05-27 01:12:48', '<!-- wp:block {\"ref\":76} /-->', 'Using Reusable Block', '', 'trash', 'open', 'open', '', 'using-reusable-block__trashed', '', '', '2020-05-30 01:24:01', '2020-05-30 01:24:01', '', 0, 'http://localhost:3000/university/?p=78', 0, 'post', '', 0),
(79, 1, '2020-05-27 01:12:48', '2020-05-27 01:12:48', '<!-- wp:block {\"ref\":76} /-->', 'Using Reusable Block', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-05-27 01:12:48', '2020-05-27 01:12:48', '', 78, 'http://localhost:3000/university/78-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2020-05-30 00:45:33', '2020-05-30 00:45:33', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Math Meetup', '', 'publish', 'closed', 'closed', '', 'math-meetup', '', '', '2020-05-30 19:49:15', '2020-05-30 19:49:15', '', 0, 'http://localhost:3000/university/?post_type=event&#038;p=80', 0, 'event', '', 0),
(81, 1, '2020-05-30 00:45:48', '2020-05-30 00:45:48', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Science of cats', '', 'publish', 'closed', 'closed', '', 'science-of-cats', '', '', '2020-05-30 21:56:53', '2020-05-30 21:56:53', '', 0, 'http://localhost:3000/university/?post_type=event&#038;p=81', 0, 'event', '', 0),
(82, 1, '2020-05-30 00:46:04', '2020-05-30 00:46:04', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Poetry day', '', 'publish', 'closed', 'closed', '', 'poetry-day', '', '', '2020-05-30 19:37:03', '2020-05-30 19:37:03', '', 0, 'http://localhost:3000/university/?post_type=event&#038;p=82', 0, 'event', '', 0),
(84, 1, '2020-05-30 01:38:47', '2020-05-30 01:38:47', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Wordpress', 'wordpress has alot programming php', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-05-30 01:38:47', '2020-05-30 01:38:47', '', 8, 'http://localhost:3000/university/8-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2020-05-30 01:47:58', '2020-05-30 01:47:58', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Poetry day', 'is gonging to pvt Cimabue  noose', 'inherit', 'closed', 'closed', '', '82-autosave-v1', '', '', '2020-05-30 01:47:58', '2020-05-30 01:47:58', '', 82, 'http://localhost:3000/university/82-autosave-v1/', 0, 'revision', '', 0),
(86, 1, '2020-05-30 01:54:10', '2020-05-30 01:54:10', '<!-- wp:paragraph -->\n<p>event page</p>\n<!-- /wp:paragraph -->', 'Event', '', 'trash', 'closed', 'closed', '', 'event__trashed', '', '', '2020-05-30 01:57:49', '2020-05-30 01:57:49', '', 0, 'http://localhost:3000/university/?page_id=86', 0, 'page', '', 0),
(87, 1, '2020-05-30 01:54:10', '2020-05-30 01:54:10', '<!-- wp:paragraph -->\n<p>event page</p>\n<!-- /wp:paragraph -->', 'Event', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2020-05-30 01:54:10', '2020-05-30 01:54:10', '', 86, 'http://localhost:3000/university/86-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2020-05-30 01:56:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-30 01:56:58', '0000-00-00 00:00:00', '', 0, 'http://localhost:3000/university/?p=89', 1, 'nav_menu_item', '', 0),
(90, 1, '2020-05-30 01:57:37', '2020-05-30 01:57:37', '', 'Events', '', 'publish', 'closed', 'closed', '', 'event', '', '', '2020-05-30 23:51:55', '2020-05-30 23:51:55', '', 0, 'http://localhost:3000/university/?p=90', 4, 'nav_menu_item', '', 0),
(91, 1, '2020-05-30 11:44:09', '2020-05-30 11:44:09', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Event Date', 'event-date', 'publish', 'closed', 'closed', '', 'group_5ed2468342768', '', '', '2020-05-30 12:03:28', '2020-05-30 12:03:28', '', 0, 'http://localhost:3000/university/?post_type=acf-field-group&#038;p=91', 0, 'acf-field-group', '', 0),
(92, 1, '2020-05-30 11:44:10', '2020-05-30 11:44:10', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:5:\"d/m/Y\";s:9:\"first_day\";i:1;}', 'Event Date', 'event_date', 'publish', 'closed', 'closed', '', 'field_5ed2469ac90bc', '', '', '2020-05-30 11:44:10', '2020-05-30 11:44:10', '', 91, 'http://localhost:3000/university/?post_type=acf-field&p=92', 0, 'acf-field', '', 0),
(93, 1, '2020-05-30 18:14:10', '2020-05-30 18:14:10', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Wordpress', 'wordpress has alot programming php', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-05-30 18:14:10', '2020-05-30 18:14:10', '', 8, 'http://localhost:3000/university/8-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2020-05-30 18:17:22', '2020-05-30 18:17:22', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Wordpress', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-05-30 18:17:22', '2020-05-30 18:17:22', '', 8, 'http://localhost:3000/university/8-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2020-05-30 19:26:14', '2020-05-30 19:26:14', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>', 'Winter Study Night', '', 'publish', 'closed', 'closed', '', 'winter-study-night', '', '', '2020-05-30 19:26:14', '2020-05-30 19:26:14', '', 0, 'http://localhost:3000/university/?post_type=event&#038;p=95', 0, 'event', '', 0),
(96, 1, '2020-05-30 19:41:43', '2020-05-30 19:41:43', '', 'Past Events', '', 'publish', 'closed', 'closed', '', 'past-events', '', '', '2020-05-30 19:41:46', '2020-05-30 19:41:46', '', 0, 'http://localhost:3000/university/?page_id=96', 0, 'page', '', 0),
(97, 1, '2020-05-30 19:41:43', '2020-05-30 19:41:43', '', 'Past Events', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2020-05-30 19:41:43', '2020-05-30 19:41:43', '', 96, 'http://localhost:3000/university/96-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2020-05-30 19:53:44', '2020-05-30 19:53:44', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>', 'New Year 2020', '', 'publish', 'closed', 'closed', '', 'new-year-2020', '', '', '2020-05-30 19:53:44', '2020-05-30 19:53:44', '', 0, 'http://localhost:3000/university/?post_type=event&#038;p=98', 0, 'event', '', 0),
(99, 1, '2020-05-30 20:17:42', '2020-05-30 20:17:42', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>', 'Math', '', 'publish', 'closed', 'closed', '', 'math', '', '', '2020-05-30 20:17:42', '2020-05-30 20:17:42', '', 0, 'http://localhost:3000/university/?post_type=program&#038;p=99', 0, 'program', '', 0),
(100, 1, '2020-05-30 20:18:07', '2020-05-30 20:18:07', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>', 'Biology', '', 'publish', 'closed', 'closed', '', 'biology', '', '', '2020-05-30 20:18:07', '2020-05-30 20:18:07', '', 0, 'http://localhost:3000/university/?post_type=program&#038;p=100', 0, 'program', '', 0),
(101, 1, '2020-05-30 20:18:29', '2020-05-30 20:18:29', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>', 'English', '', 'publish', 'closed', 'closed', '', 'english', '', '', '2020-05-30 20:18:29', '2020-05-30 20:18:29', '', 0, 'http://localhost:3000/university/?post_type=program&#038;p=101', 0, 'program', '', 0),
(102, 1, '2020-05-30 20:42:29', '2020-05-30 20:42:29', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"professor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Related Program', 'related-program', 'publish', 'closed', 'closed', '', 'group_5ed2c451975b3', '', '', '2020-05-30 22:29:57', '2020-05-30 22:29:57', '', 0, 'http://localhost:3000/university/?post_type=acf-field-group&#038;p=102', 0, 'acf-field-group', '', 0),
(103, 1, '2020-05-30 20:42:29', '2020-05-30 20:42:29', 'a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"program\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:3:{i:0;s:6:\"search\";i:1;s:9:\"post_type\";i:2;s:8:\"taxonomy\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}', 'Related Program(s)', 'related_programs', 'publish', 'closed', 'closed', '', 'field_5ed2c46300c48', '', '', '2020-05-30 20:42:29', '2020-05-30 20:42:29', '', 102, 'http://localhost:3000/university/?post_type=acf-field&p=103', 0, 'acf-field', '', 0),
(104, 1, '2020-05-30 21:02:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-05-30 21:02:19', '0000-00-00 00:00:00', '', 0, 'http://localhost:3000/university/?p=104', 0, 'post', '', 0),
(105, 1, '2020-05-30 22:05:44', '2020-05-30 22:05:44', '', 'Programs', '', 'publish', 'closed', 'closed', '', 'programs', '', '', '2020-05-30 23:51:54', '2020-05-30 23:51:54', '', 0, 'http://localhost:3000/university/?p=105', 3, 'nav_menu_item', '', 0),
(106, 1, '2020-05-30 22:22:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-05-30 22:22:14', '0000-00-00 00:00:00', '', 0, 'http://localhost:3000/university/?post_type=professor&p=106', 0, 'professor', '', 0),
(107, 1, '2020-05-30 22:24:32', '2020-05-30 22:24:32', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>', 'Dr. FadyNabil', '', 'publish', 'closed', 'closed', '', 'dr-fadynabil', '', '', '2020-05-30 22:59:24', '2020-05-30 22:59:24', '', 0, 'http://localhost:3000/university/?post_type=professor&#038;p=107', 0, 'professor', '', 0),
(108, 1, '2020-05-30 22:24:50', '2020-05-30 22:24:50', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>', 'Dr. SandyNabil', '', 'publish', 'closed', 'closed', '', 'dr-sandynabil', '', '', '2020-05-30 23:00:14', '2020-05-30 23:00:14', '', 0, 'http://localhost:3000/university/?post_type=professor&#038;p=108', 0, 'professor', '', 0),
(110, 1, '2020-05-30 22:58:32', '2020-05-30 22:58:32', '', 'img-1', '', 'inherit', 'open', 'closed', '', 'img-1', '', '', '2020-05-30 22:58:32', '2020-05-30 22:58:32', '', 107, 'http://localhost:3000/university/wp-content/uploads/2020/05/img-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2020-05-30 22:59:49', '2020-05-30 22:59:49', '', 'img-2', '', 'inherit', 'open', 'closed', '', 'img-2', '', '', '2020-05-30 22:59:49', '2020-05-30 22:59:49', '', 108, 'http://localhost:3000/university/wp-content/uploads/2020/05/img-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2020-05-30 23:21:43', '2020-05-30 23:21:43', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>', 'Dr.MareezNabil', '', 'publish', 'closed', 'closed', '', 'dr-mareeznabil', '', '', '2020-05-30 23:21:54', '2020-05-30 23:21:54', '', 0, 'http://localhost:3000/university/?post_type=professor&#038;p=112', 0, 'professor', '', 0),
(113, 1, '2020-05-30 23:21:37', '2020-05-30 23:21:37', '', 'img-5', '', 'inherit', 'open', 'closed', '', 'img-5', '', '', '2020-05-30 23:21:37', '2020-05-30 23:21:37', '', 112, 'http://localhost:3000/university/wp-content/uploads/2020/05/img-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2020-05-30 23:33:38', '2020-05-30 23:33:38', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>', 'Dr.Andrew', '', 'publish', 'closed', 'closed', '', 'dr-andrew', '', '', '2020-05-31 00:00:24', '2020-05-31 00:00:24', '', 0, 'http://localhost:3000/university/?post_type=professor&#038;p=114', 0, 'professor', '', 0),
(115, 1, '2020-05-30 23:33:02', '2020-05-30 23:33:02', '', '040 frog-bio', '', 'inherit', 'open', 'closed', '', '040-frog-bio', '', '', '2020-05-30 23:33:02', '2020-05-30 23:33:02', '', 114, 'http://localhost:3000/university/wp-content/uploads/2020/05/040-frog-bio.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2020-05-30 23:57:28', '2020-05-30 23:57:28', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Page Banner', 'page-banner', 'publish', 'closed', 'closed', '', 'group_5ed2f2053ef04', '', '', '2020-05-30 23:57:29', '2020-05-30 23:57:29', '', 0, 'http://localhost:3000/university/?post_type=acf-field-group&#038;p=116', 0, 'acf-field-group', '', 0),
(117, 1, '2020-05-30 23:57:28', '2020-05-30 23:57:28', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Page Banner Subtitle', 'page_banner_subtitle', 'publish', 'closed', 'closed', '', 'field_5ed2f21a35627', '', '', '2020-05-30 23:57:28', '2020-05-30 23:57:28', '', 116, 'http://localhost:3000/university/?post_type=acf-field&p=117', 0, 'acf-field', '', 0),
(118, 1, '2020-05-30 23:57:28', '2020-05-30 23:57:28', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Page Banner Background Image', 'page_banner_background_image', 'publish', 'closed', 'closed', '', 'field_5ed2f25535628', '', '', '2020-05-30 23:57:28', '2020-05-30 23:57:28', '', 116, 'http://localhost:3000/university/?post_type=acf-field&p=118', 1, 'acf-field', '', 0),
(119, 1, '2020-05-30 23:59:57', '2020-05-30 23:59:57', '', '042 field', '', 'inherit', 'open', 'closed', '', '042-field', '', '', '2020-05-30 23:59:57', '2020-05-30 23:59:57', '', 114, 'http://localhost:3000/university/wp-content/uploads/2020/05/042-field.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2020-05-31 00:20:58', '2020-05-31 00:20:58', '', '043 building', '', 'inherit', 'open', 'closed', '', '043-building', '', '', '2020-05-31 00:20:58', '2020-05-31 00:20:58', '', 14, 'http://localhost:3000/university/wp-content/uploads/2020/05/043-building.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2020-05-31 00:21:23', '2020-05-31 00:21:23', '<!-- wp:paragraph -->\n<p>this is about page content. <strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-05-31 00:21:23', '2020-05-31 00:21:23', '', 14, 'http://localhost:3000/university/14-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2020-05-31 00:21:25', '2020-05-31 00:21:25', '<!-- wp:paragraph -->\n<p>this is about page content. <strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-05-31 00:21:25', '2020-05-31 00:21:25', '', 14, 'http://localhost:3000/university/14-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2020-06-02 15:56:26', '2020-06-02 15:56:26', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'DownTown West', '', 'publish', 'closed', 'closed', '', 'downtown-west', '', '', '2020-06-02 16:39:08', '2020-06-02 16:39:08', '', 0, 'http://localhost:3000/university/?post_type=campus&#038;p=123', 0, 'campus', '', 0),
(124, 1, '2020-06-02 15:56:48', '2020-06-02 15:56:48', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'DownTown East', '', 'publish', 'closed', 'closed', '', 'downtown-west-2', '', '', '2020-06-02 15:57:15', '2020-06-02 15:57:15', '', 0, 'http://localhost:3000/university/?post_type=campus&#038;p=124', 0, 'campus', '', 0),
(125, 1, '2020-06-02 15:59:21', '2020-06-02 15:59:21', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"campus\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Map Location', 'map-location', 'acf-disabled', 'closed', 'closed', '', 'group_5ed677052c8fb', '', '', '2020-06-02 16:38:32', '2020-06-02 16:38:32', '', 0, 'http://localhost:3000/university/?post_type=acf-field-group&#038;p=125', 0, 'acf-field-group', '', 0),
(126, 1, '2020-06-02 15:59:21', '2020-06-02 15:59:21', 'a:9:{s:4:\"type\";s:10:\"google_map\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"center_lat\";s:0:\"\";s:10:\"center_lng\";s:0:\"\";s:4:\"zoom\";s:0:\"\";s:6:\"height\";s:0:\"\";}', 'Map Location', 'map_location', 'publish', 'closed', 'closed', '', 'field_5ed677141b010', '', '', '2020-06-02 15:59:21', '2020-06-02 15:59:21', '', 125, 'http://localhost:3000/university/?post_type=acf-field&p=126', 0, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'My Main Header Menu', 'my-main-header-menu', 0),
(3, 'My Magical Menu', 'my-magical-menu', 0),
(4, 'Super Amazing Menu', 'super-amazing-menu', 0),
(5, 'Awards', 'awards', 0),
(6, 'Garden Menu', 'garden-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 5, 0),
(5, 5, 0),
(8, 5, 0),
(28, 2, 0),
(35, 2, 0),
(36, 3, 0),
(37, 3, 0),
(38, 3, 0),
(39, 3, 0),
(40, 3, 0),
(41, 4, 0),
(42, 4, 0),
(43, 4, 0),
(44, 4, 0),
(45, 4, 0),
(51, 2, 0),
(57, 6, 0),
(59, 6, 0),
(60, 6, 0),
(61, 6, 0),
(66, 6, 0),
(67, 6, 0),
(75, 5, 0),
(78, 5, 0),
(90, 2, 0),
(105, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'nav_menu', '', 0, 5),
(4, 4, 'nav_menu', '', 0, 5),
(5, 5, 'category', 'new category to archive posts', 0, 3),
(6, 6, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Fady'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', 'Tesitng heeloo world'),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"2f7b27c508da9c0318efec18f90fb55af5980ae77771e65474e5a622c56dd608\";a:4:{s:10:\"expiration\";i:1591567123;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36\";s:5:\"login\";i:1591394323;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '104'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:0:{}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(22, 1, '_yoast_wpseo_profile_updated', '1590795912'),
(23, 1, 'users_per_page', '20'),
(24, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(27, 1, 'wp_user-settings', 'libraryContent=browse'),
(28, 1, 'wp_user-settings-time', '1590879561');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BXU2iL1T4wmHV03LIrYz0HOueqFroy/', 'admin', 'fadynabil123@outlook.com', 'http://localhost:3000/university', '2020-05-23 11:33:46', '', 0, 'Fady');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_indexable`
--

CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) UNSIGNED NOT NULL,
  `permalink` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permalink_hash` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` int(11) UNSIGNED DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `post_parent` int(11) UNSIGNED DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT 0,
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) UNSIGNED DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT 0,
  `is_robots_noindex` tinyint(1) DEFAULT 0,
  `is_robots_nofollow` tinyint(1) DEFAULT 0,
  `is_robots_noarchive` tinyint(1) DEFAULT 0,
  `is_robots_noimageindex` tinyint(1) DEFAULT 0,
  `is_robots_nosnippet` tinyint(1) DEFAULT 0,
  `twitter_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  `language` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_indexable`
--

INSERT INTO `wp_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`) VALUES
(1, 'http://localhost/university/author/admin/', '41:c02721e403c6d40767662f774de4c071', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://2.gravatar.com/avatar/8989dfa5d1138feeede8e8779f4e912d?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://2.gravatar.com/avatar/8989dfa5d1138feeede8e8779f4e912d?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2020-05-26 20:46:18', '2020-06-06 09:37:46', 1, NULL, NULL, NULL, NULL),
(2, 'http://localhost/university/about-us/', '37:cb13f72df7d9eb379eb4ffdb302b23a0', 14, 'post', 'page', 1, 0, NULL, NULL, 'About Us', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2020-05-26 20:46:18', '2020-05-30 22:21:28', 1, NULL, NULL, NULL, NULL),
(3, 'http://localhost/university/privacy-policy/', '43:2dfc3c28354e3d0788dcbb97e8d2e9a5', 16, 'post', 'page', 1, 0, NULL, NULL, 'Privacy Policy', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-26 20:46:19', '2020-05-26 18:46:19', 1, NULL, NULL, NULL, NULL),
(4, 'http://localhost/university/about-us/our-history/', '49:c5be35b943997a7a0ca2776baae1b510', 20, 'post', 'page', 1, 14, NULL, NULL, 'Our History', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-26 20:46:19', '2020-05-26 18:46:19', 1, NULL, NULL, NULL, NULL),
(5, 'http://localhost/university/about-us/our-goals/', '47:9599cfda1fd9a0dcc17ec0140eab72b5', 23, 'post', 'page', 1, 14, NULL, NULL, 'Our Goals', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-26 20:46:19', '2020-05-26 18:46:19', 1, NULL, NULL, NULL, NULL),
(6, 'http://localhost/university/privacy-policy/cookie-policy/', '57:fe6bfc53e63ce1493d5d5ac366737804', 25, 'post', 'page', 1, 16, NULL, NULL, 'Cookie Policy', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-26 20:46:20', '2020-05-26 18:46:20', 1, NULL, NULL, NULL, NULL),
(7, 'http://localhost/university/', '28:c2b687dd321ab56143a891e8bbf4b825', 46, 'post', 'page', 1, 0, NULL, NULL, 'Home', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-26 20:46:20', '2020-05-26 18:46:20', 1, NULL, NULL, NULL, NULL),
(8, 'http://localhost/university/blog/', '33:898a553755f5dac04c31e0f8d855f589', 48, 'post', 'page', 1, 0, NULL, NULL, 'Blog', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-26 20:46:20', '2020-05-26 18:46:20', 1, NULL, NULL, NULL, NULL),
(9, 'http://localhost/university/sample-page__trashed/', '49:b7c1406b614ac8cdff0fd139b6461720', 2, 'post', 'page', 1, 0, NULL, NULL, 'Sample Page', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-26 20:46:20', '2020-05-26 18:46:20', 1, NULL, NULL, NULL, NULL),
(10, 'http://localhost/university/privacy-policy__trashed/', '52:a40492d610533fb2bd4af4654426b5d6', 3, 'post', 'page', 1, 0, NULL, NULL, 'Privacy Policy', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-26 20:46:21', '2020-05-26 18:46:21', 1, NULL, NULL, NULL, NULL),
(11, 'http://localhost/university/test-page__trashed/', '47:85c030bc14d0457d582df96179b61474', 10, 'post', 'page', 1, 0, NULL, NULL, 'Test Page', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-26 20:46:21', '2020-05-26 18:46:21', 1, NULL, NULL, NULL, NULL),
(14, 'http://localhost/university/hello-world/', '40:3440f8397f8517901a995cab5e3e7110', 1, 'post', 'post', 1, 0, NULL, NULL, 'Hello world!', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-26 20:46:22', '2020-05-26 18:46:22', 1, NULL, NULL, NULL, NULL),
(15, 'http://localhost/university/test-post/', '38:242909036e3475594600902f48da6b2d', 5, 'post', 'post', 1, 0, NULL, NULL, 'Test Post', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-26 20:46:22', '2020-05-26 18:46:22', 1, NULL, NULL, NULL, NULL),
(16, 'http://localhost/university/wordpress/', '38:a1edf299aa4afcfb795a56146094047f', 8, 'post', 'post', 1, 0, NULL, NULL, 'WordPress', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2020-05-26 20:46:22', '2020-05-30 16:17:26', 1, NULL, NULL, NULL, NULL),
(17, 'http://localhost/university/category/uncategorized/', '51:fd306e2de56a51bbb90d973cc3925c58', 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Uncategorized', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-26 20:46:22', '2020-05-26 18:46:22', 1, NULL, NULL, NULL, NULL),
(18, 'http://localhost/university/category/awards/', '44:21f0d8922b9dd520df479eca92489dfe', 5, 'term', 'category', NULL, NULL, NULL, NULL, 'Awards', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-26 20:46:22', '2020-05-26 18:46:22', 1, NULL, NULL, NULL, NULL),
(19, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Page not found %%sep%% %%sitename%%', NULL, 'Error 404: Page not found', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-26 20:46:23', '2020-06-05 20:19:35', 1, NULL, NULL, NULL, NULL),
(20, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-26 20:46:23', '2020-05-30 21:40:45', 1, NULL, NULL, NULL, NULL),
(21, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-26 20:46:23', '2020-05-30 21:40:45', 1, NULL, NULL, NULL, NULL),
(22, 'http://localhost/university/', '28:c2b687dd321ab56143a891e8bbf4b825', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', 'Just another WordPress site', 'Home', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, NULL, NULL, '2020-05-26 20:47:43', '2020-05-26 18:47:44', 1, NULL, NULL, NULL, NULL),
(23, 'http://localhost/university/reusable-block__trashed/', '52:f212c82c614435c998c92731899d78f9', 75, 'post', 'post', 1, 0, NULL, NULL, 'Reusable Block', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2020-05-27 01:09:46', '2020-05-29 23:24:03', 1, NULL, NULL, NULL, NULL),
(24, 'http://localhost/university/untitled-reusable-block/', '52:4126ca7c958751757839decb68402a48', 76, 'post', 'wp_block', 1, 0, NULL, NULL, 'Dummy Post', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-27 01:11:09', '2020-05-26 23:11:46', 1, NULL, NULL, NULL, NULL),
(25, 'http://localhost/university/using-reusable-block__trashed/', '58:16baad7bfe75c2842547fbb2e9bd6725', 78, 'post', 'post', 1, 0, NULL, NULL, 'Using Reusable Block', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2020-05-27 01:12:10', '2020-05-29 23:24:02', 1, NULL, NULL, NULL, NULL),
(26, 'http://localhost/university/66/', '31:737efa1f50693c435e24dd599e3bc7fa', 66, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-30 00:28:58', '2020-05-29 22:28:58', 1, NULL, NULL, NULL, NULL),
(27, 'http://localhost/university/59/', '31:49344294f0578d99e0179b2a7b1a3e8f', 59, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-30 00:28:58', '2020-05-29 22:28:58', 1, NULL, NULL, NULL, NULL),
(28, 'http://localhost/university/67/', '31:63125c20adc05c5ea63f3e0e41cb5189', 67, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-30 00:28:58', '2020-05-29 22:28:58', 1, NULL, NULL, NULL, NULL),
(29, 'http://localhost/university/57/', '31:46ff0cc600cbd7fc435a7d5dca8dd29f', 57, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-30 00:28:58', '2020-05-29 22:28:58', 1, NULL, NULL, NULL, NULL),
(30, 'http://localhost/university/60/', '31:9e91cd7ffa5ea66bf40bbbcadec165df', 60, 'post', 'nav_menu_item', 1, 14, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-30 00:28:59', '2020-05-29 22:28:59', 1, NULL, NULL, NULL, NULL),
(31, 'http://localhost/university/61/', '31:7353830d1e1f92ed6652b451ecee36b7', 61, 'post', 'nav_menu_item', 1, 14, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-30 00:28:59', '2020-05-29 22:28:59', 1, NULL, NULL, NULL, NULL),
(32, 'http://localhost/university/home/', '33:2a773861bae2008ccc7d356e0dddeb64', 28, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'Home', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-30 00:29:52', '2020-05-30 21:51:54', 1, NULL, NULL, NULL, NULL),
(33, 'http://localhost/university/35/', '31:3cf327826b873e893bea3920fc60e832', 35, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-30 00:29:52', '2020-05-30 21:51:54', 1, NULL, NULL, NULL, NULL),
(35, 'http://localhost/university/51/', '31:f2a96f33a6030b25576ca6ce9ef76107', 51, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-30 00:29:53', '2020-05-30 21:51:55', 1, NULL, NULL, NULL, NULL),
(36, 'http://localhost/university/events/math-meetup/', '47:4cac26216d004884016dc491af1ebba2', 80, 'post', 'event', 1, 0, NULL, NULL, 'Math Meetup', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2020-05-30 00:45:12', '2020-05-30 17:49:16', 1, NULL, NULL, NULL, NULL),
(37, 'http://localhost/university/events/science-of-cats/', '51:c23ccd4f4f59f255662bf0dd027994ce', 81, 'post', 'event', 1, 0, NULL, NULL, 'Science of cats', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2020-05-30 00:45:39', '2020-05-30 19:56:54', 1, NULL, NULL, NULL, NULL),
(38, 'http://localhost/university/events/poetry-day/', '46:9e5e08d344bc1323b55675395838e0ae', 82, 'post', 'event', 1, 0, NULL, NULL, 'Poetry day', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2020-05-30 00:45:54', '2020-05-30 17:37:03', 1, NULL, NULL, NULL, NULL),
(40, 'http://localhost/university/event/', '34:2c50558fc2c2affcfc9000f63214cc00', NULL, 'post-type-archive', 'event', NULL, NULL, '%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%', '', 'Events', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-30 01:27:16', '2020-05-29 23:27:16', 1, NULL, NULL, NULL, NULL),
(41, 'http://localhost/university/event__trashed/', '43:52a0380a9eeac4c5db6cbf681741e7c6', 86, 'post', 'page', 1, 0, NULL, NULL, 'Event', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 60, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2020-05-30 01:53:57', '2020-05-29 23:57:50', 1, NULL, NULL, NULL, NULL),
(43, 'http://localhost/university/?p=89', '33:40895c196497dbdab02cef40331024db', 89, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-30 01:56:59', '2020-05-29 23:56:59', 1, NULL, NULL, NULL, NULL),
(44, 'http://localhost/university/event/', '34:2c50558fc2c2affcfc9000f63214cc00', 90, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'Events', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-30 01:57:25', '2020-05-30 21:51:55', 1, NULL, NULL, NULL, NULL),
(45, 'http://localhost/university/?post_type=acf-field-group&p=91', '59:15c52f2b6782ba8875dbca66def16518', 91, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'Event Date', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-30 11:41:54', '2020-05-30 10:03:28', 1, NULL, NULL, NULL, NULL),
(46, 'http://localhost/university/?post_type=acf-field&p=92', '53:54fdfdebbb2e68c9932f018f58247f34', 92, 'post', 'acf-field', 1, 91, NULL, NULL, 'Event Date', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-30 11:44:10', '2020-05-30 09:44:10', 1, NULL, NULL, NULL, NULL),
(47, 'http://localhost/university/events/winter-study-night/', '54:61fb28f3af53b3eab8cd5334a698fba9', 95, 'post', 'event', 1, 0, NULL, NULL, 'Winter Study Night', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2020-05-30 19:25:01', '2020-05-30 17:26:15', 1, NULL, NULL, NULL, NULL),
(48, 'http://localhost/university/past-events/', '40:77c78c58d8e90086e60ee1cf632f2628', 96, 'post', 'page', 1, 0, NULL, NULL, 'Past Events', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2020-05-30 19:41:24', '2020-05-30 17:41:46', 1, NULL, NULL, NULL, NULL),
(49, 'http://localhost/university/events/new-year-2020/', '49:803bd8cd0390f210dd298c485a9d4472', 98, 'post', 'event', 1, 0, NULL, NULL, 'New Year 2020', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2020-05-30 19:53:00', '2020-05-30 17:53:44', 1, NULL, NULL, NULL, NULL),
(50, 'http://localhost/university/programs/math/', '42:d6d1394d9a51659df3d1e093936ec9a3', 99, 'post', 'program', 1, 0, NULL, NULL, 'Math', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2020-05-30 20:17:29', '2020-05-30 18:17:43', 1, NULL, NULL, NULL, NULL),
(51, 'http://localhost/university/programs/biology/', '45:2cc0b45e3dbb4ec282dd1b6a415697d6', 100, 'post', 'program', 1, 0, NULL, NULL, 'Biology', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2020-05-30 20:17:51', '2020-05-30 18:18:08', 1, NULL, NULL, NULL, NULL),
(52, 'http://localhost/university/programs/english/', '45:c434cae9e094651c69c53c7c3d8dd8a7', 101, 'post', 'program', 1, 0, NULL, NULL, 'English', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2020-05-30 20:18:12', '2020-05-30 18:18:30', 1, NULL, NULL, NULL, NULL),
(53, 'http://localhost/university/programs/', '37:0e591e1efdc69d09afabaccee619cf97', NULL, 'post-type-archive', 'program', NULL, NULL, '%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%', '', 'Programs', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-30 20:22:23', '2020-05-30 18:22:23', 1, NULL, NULL, NULL, NULL),
(54, 'http://localhost/university/?post_type=acf-field-group&p=102', '60:4a3c2cbbd751f9b9c1ccbfd6947e9f97', 102, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'Related Program', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-30 20:38:41', '2020-05-30 20:29:57', 1, NULL, NULL, NULL, NULL),
(55, 'http://localhost/university/?post_type=acf-field&p=103', '54:f7de4a7b7b3b8cf64c9f5bbe4447b02d', 103, 'post', 'acf-field', 1, 102, NULL, NULL, 'Related Program(s)', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-30 20:42:29', '2020-05-30 18:42:29', 1, NULL, NULL, NULL, NULL),
(56, 'http://localhost/university/?p=104', '34:249ed5db3e36af846d5a2d21368ffa37', 104, 'post', 'post', 1, 0, NULL, NULL, 'Auto Draft', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-30 21:02:19', '2020-05-30 19:02:19', 1, NULL, NULL, NULL, NULL),
(57, 'http://localhost/university/programs/', '37:0e591e1efdc69d09afabaccee619cf97', 105, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'Programs', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-30 22:05:33', '2020-05-30 21:51:55', 1, NULL, NULL, NULL, NULL),
(58, 'http://localhost/university/?post_type=professor&p=106', '54:4bd5394e8b3e0547e7e5bb908ee4a27d', 106, 'post', 'professor', 1, 0, NULL, NULL, 'Auto Draft', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-30 22:22:14', '2020-05-30 20:22:14', 1, NULL, NULL, NULL, NULL),
(59, 'http://localhost/university/professor/dr-fadynabil/', '51:0eca78a6656533fb318fe58d7c04e2a9', 107, 'post', 'professor', 1, 0, NULL, NULL, 'Dr. FadyNabil', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:3000/university/wp-content/uploads/2020/05/img-1.jpg', NULL, '110', 'featured-image', NULL, NULL, 'http://localhost:3000/university/wp-content/uploads/2020/05/img-1.jpg', '110', 'featured-image', '{\"width\":256,\"height\":256,\"url\":\"http:\\/\\/localhost:3000\\/university\\/wp-content\\/uploads\\/2020\\/05\\/img-1.jpg\",\"path\":\"F:\\\\applications\\\\xampp\\\\htdocs\\\\university\\/wp-content\\/uploads\\/2020\\/05\\/img-1.jpg\",\"size\":\"full\",\"id\":110,\"alt\":\"\",\"pixels\":65536,\"type\":\"image\\/jpeg\"}', 0, 0, NULL, '2020-05-30 22:23:26', '2020-05-30 20:59:25', 1, NULL, NULL, NULL, NULL),
(60, 'http://localhost/university/professor/dr-sandynabil/', '52:0f6ba50d1fdf4009c8c93363fa995b2a', 108, 'post', 'professor', 1, 0, NULL, NULL, 'Dr. SandyNabil', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:3000/university/wp-content/uploads/2020/05/img-2.jpg', NULL, '111', 'featured-image', NULL, NULL, 'http://localhost:3000/university/wp-content/uploads/2020/05/img-2.jpg', '111', 'featured-image', '{\"width\":256,\"height\":256,\"url\":\"http:\\/\\/localhost:3000\\/university\\/wp-content\\/uploads\\/2020\\/05\\/img-2.jpg\",\"path\":\"F:\\\\applications\\\\xampp\\\\htdocs\\\\university\\/wp-content\\/uploads\\/2020\\/05\\/img-2.jpg\",\"size\":\"full\",\"id\":111,\"alt\":\"\",\"pixels\":65536,\"type\":\"image\\/jpeg\"}', 0, 0, NULL, '2020-05-30 22:24:37', '2020-05-30 21:00:14', 1, NULL, NULL, NULL, NULL),
(62, 'http://localhost/university/wp-content/uploads/2020/05/img-1.jpg', '64:67a5b676224d6b5c59893768a96630fd', 110, 'post', 'attachment', 1, 107, NULL, NULL, 'img-1', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:3000/university/wp-content/uploads/2020/05/img-1.jpg', NULL, '110', 'attachment-image', NULL, NULL, NULL, '110', 'attachment-image', NULL, NULL, NULL, NULL, '2020-05-30 22:58:33', '2020-05-30 20:58:33', 1, NULL, NULL, NULL, NULL),
(63, 'http://localhost/university/wp-content/uploads/2020/05/img-2.jpg', '64:82e9e84d412cec8feec250898b54e204', 111, 'post', 'attachment', 1, 108, NULL, NULL, 'img-2', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:3000/university/wp-content/uploads/2020/05/img-2.jpg', NULL, '111', 'attachment-image', NULL, NULL, NULL, '111', 'attachment-image', NULL, NULL, NULL, NULL, '2020-05-30 22:59:49', '2020-05-30 20:59:49', 1, NULL, NULL, NULL, NULL),
(64, 'http://localhost/university/professor/dr-mareeznabil/', '53:dd34f356003a347c7743a7c4d5b6fec5', 112, 'post', 'professor', 1, 0, NULL, NULL, 'Dr.MareezNabil', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:3000/university/wp-content/uploads/2020/05/img-5.jpg', NULL, '113', 'featured-image', NULL, NULL, 'http://localhost:3000/university/wp-content/uploads/2020/05/img-5.jpg', '113', 'featured-image', '{\"width\":256,\"height\":256,\"url\":\"http:\\/\\/localhost:3000\\/university\\/wp-content\\/uploads\\/2020\\/05\\/img-5.jpg\",\"path\":\"F:\\\\applications\\\\xampp\\\\htdocs\\\\university\\/wp-content\\/uploads\\/2020\\/05\\/img-5.jpg\",\"size\":\"full\",\"id\":113,\"alt\":\"\",\"pixels\":65536,\"type\":\"image\\/jpeg\"}', 0, 0, NULL, '2020-05-30 23:21:09', '2020-05-30 21:21:54', 1, NULL, NULL, NULL, NULL),
(65, 'http://localhost/university/wp-content/uploads/2020/05/img-5.jpg', '64:8f54a08735d903b16391d1cd45125440', 113, 'post', 'attachment', 1, 112, NULL, NULL, 'img-5', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:3000/university/wp-content/uploads/2020/05/img-5.jpg', NULL, '113', 'attachment-image', NULL, NULL, NULL, '113', 'attachment-image', NULL, NULL, NULL, NULL, '2020-05-30 23:21:38', '2020-05-30 23:21:43', 1, NULL, NULL, NULL, NULL),
(66, 'http://localhost/university/professor/dr-andrew/', '48:d041b77d6e93dc477633c8a537394582', 114, 'post', 'professor', 1, 0, NULL, NULL, 'Dr.Andrew', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:3000/university/wp-content/uploads/2020/05/040-frog-bio-scaled.jpg', NULL, '115', 'featured-image', NULL, NULL, 'http://localhost:3000/university/wp-content/uploads/2020/05/040-frog-bio-scaled.jpg', '115', 'featured-image', '{\"width\":2560,\"height\":1999,\"url\":\"http:\\/\\/localhost:3000\\/university\\/wp-content\\/uploads\\/2020\\/05\\/040-frog-bio-scaled.jpg\",\"path\":\"F:\\\\applications\\\\xampp\\\\htdocs\\\\university\\/wp-content\\/uploads\\/2020\\/05\\/040-frog-bio-scaled.jpg\",\"size\":\"full\",\"id\":115,\"alt\":\"\",\"pixels\":5117440,\"type\":\"image\\/jpeg\"}', 0, 0, NULL, '2020-05-30 23:32:11', '2020-05-30 22:00:25', 1, NULL, NULL, NULL, NULL),
(67, 'http://localhost/university/wp-content/uploads/2020/05/040-frog-bio.jpg', '71:749e84a3a3b78cd253c529d993aac6c1', 115, 'post', 'attachment', 1, 114, NULL, NULL, '040 frog-bio', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:3000/university/wp-content/uploads/2020/05/040-frog-bio.jpg', NULL, '115', 'attachment-image', NULL, NULL, NULL, '115', 'attachment-image', NULL, NULL, NULL, NULL, '2020-05-30 23:33:03', '2020-05-30 23:33:42', 1, NULL, NULL, NULL, NULL),
(68, 'http://localhost/university/?post_type=acf-field-group&p=116', '60:f4f47b4c9321990a77304fa5eff6bc25', 116, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'Page Banner', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-30 23:53:41', '2020-05-30 21:57:29', 1, NULL, NULL, NULL, NULL),
(69, 'http://localhost/university/?post_type=acf-field&p=117', '54:9e4d9540a4f1c54f2c1ac723406df290', 117, 'post', 'acf-field', 1, 116, NULL, NULL, 'Page Banner Subtitle', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-30 23:57:28', '2020-05-30 21:57:28', 1, NULL, NULL, NULL, NULL),
(70, 'http://localhost/university/?post_type=acf-field&p=118', '54:c430035708d1e75952d9fef0bbb8a71d', 118, 'post', 'acf-field', 1, 116, NULL, NULL, 'Page Banner Background Image', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-30 23:57:29', '2020-05-30 21:57:29', 1, NULL, NULL, NULL, NULL),
(71, 'http://localhost/university/wp-content/uploads/2020/05/042-field.jpg', '68:4d50d71395df7305a69c6ac0c0f57824', 119, 'post', 'attachment', 1, 114, NULL, NULL, '042 field', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:3000/university/wp-content/uploads/2020/05/042-field.jpg', NULL, '119', 'attachment-image', NULL, NULL, NULL, '119', 'attachment-image', NULL, NULL, NULL, NULL, '2020-05-30 23:59:58', '2020-05-30 21:59:58', 1, NULL, NULL, NULL, NULL),
(72, 'http://localhost/university/wp-content/uploads/2020/05/043-building.jpg', '71:875ff105570c3f1ae923324696ca3f33', 120, 'post', 'attachment', 1, 14, NULL, NULL, '043 building', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:3000/university/wp-content/uploads/2020/05/043-building.jpg', NULL, '120', 'attachment-image', NULL, NULL, NULL, '120', 'attachment-image', NULL, NULL, NULL, NULL, '2020-05-31 00:20:58', '2020-05-30 22:20:58', 1, NULL, NULL, NULL, NULL),
(73, 'http://localhost/university/campuses/downtown-west/', '51:f074cfff9697be9fdf679356588ab75f', 123, 'post', 'campus', 1, 0, NULL, NULL, 'DownTown West', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2020-06-02 15:55:35', '2020-06-02 14:39:08', 1, NULL, NULL, NULL, NULL),
(74, 'http://localhost/university/campuses/downtown-west-2/', '53:e0e2fa02a4a177497b8fee305481c80a', 124, 'post', 'campus', 1, 0, NULL, NULL, 'DownTown East', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2020-06-02 15:56:30', '2020-06-02 13:57:15', 1, NULL, NULL, NULL, NULL),
(75, 'http://localhost/university/?post_type=acf-field-group&p=125', '60:e4239ada273579a948888d8acafe2306', 125, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'Map Location', 'acf-disabled', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-02 15:57:56', '2020-06-02 14:38:33', 1, NULL, NULL, NULL, NULL),
(76, 'http://localhost/university/?post_type=acf-field&p=126', '54:3a11551fbd1bdf53f9d72c3252c11f7b', 126, 'post', 'acf-field', 1, 125, NULL, NULL, 'Map Location', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-02 15:59:22', '2020-06-02 13:59:22', 1, NULL, NULL, NULL, NULL),
(77, 'http://localhost/university/campuses/', '37:4ea1cfa565a4bc7dd95cc13c4280a717', NULL, 'post-type-archive', 'campus', NULL, NULL, '%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%', '', 'Campuses', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-05 22:19:52', '2020-06-05 20:19:52', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_indexable_hierarchy`
--

CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) UNSIGNED NOT NULL,
  `ancestor_id` int(11) UNSIGNED NOT NULL,
  `depth` int(11) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_indexable_hierarchy`
--

INSERT INTO `wp_yoast_indexable_hierarchy` (`indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(4, 2, 1, 1),
(5, 2, 1, 1),
(6, 3, 1, 1),
(30, 2, 1, 1),
(31, 2, 1, 1),
(46, 45, 1, 1),
(55, 54, 1, 1),
(62, 59, 1, 1),
(63, 60, 1, 1),
(65, 64, 1, 1),
(67, 66, 1, 1),
(69, 68, 1, 1),
(70, 68, 1, 1),
(71, 66, 1, 1),
(72, 2, 1, 1),
(76, 75, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_migrations`
--

CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) UNSIGNED NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_migrations`
--

INSERT INTO `wp_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_primary_term`
--

CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED NOT NULL,
  `term_id` int(11) UNSIGNED NOT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_primary_term`
--

INSERT INTO `wp_yoast_primary_term` (`id`, `post_id`, `term_id`, `taxonomy`, `created_at`, `updated_at`, `blog_id`) VALUES
(1, 78, 5, 'category', '2020-05-27 01:12:52', '2020-05-29 23:24:01', 1),
(2, 75, 5, 'category', '2020-05-27 01:33:51', '2020-05-29 23:24:03', 1),
(3, 8, 5, 'category', '2020-05-30 01:38:51', '2020-05-30 16:17:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_meta`
--

CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(4, 0, 0),
(7, 0, 0),
(8, 0, 0),
(14, 0, 0),
(34, 0, 0),
(75, 0, 0),
(78, 0, 0),
(80, 0, 0),
(81, 0, 0),
(82, 0, 0),
(83, 0, 0),
(86, 0, 0),
(88, 0, 0),
(95, 0, 0),
(96, 0, 0),
(98, 0, 0),
(99, 0, 0),
(100, 0, 0),
(101, 0, 0),
(107, 0, 0),
(108, 0, 0),
(109, 0, 0),
(112, 0, 0),
(114, 0, 0),
(123, 0, 0),
(124, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `permalink_hash` (`permalink_hash`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`);

--
-- Indexes for table `wp_yoast_indexable_hierarchy`
--
ALTER TABLE `wp_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Indexes for table `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_wp_yoast_migrations_version` (`version`);

--
-- Indexes for table `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Indexes for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Indexes for table `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=561;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=526;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
