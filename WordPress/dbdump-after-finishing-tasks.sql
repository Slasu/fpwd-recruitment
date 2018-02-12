-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 12 Lut 2018, 02:09
-- Wersja serwera: 10.1.28-MariaDB
-- Wersja PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `fpwd_recruitment`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `fpwd_commentmeta`
--

CREATE TABLE `fpwd_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `fpwd_comments`
--

CREATE TABLE `fpwd_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `fpwd_comments`
--

INSERT INTO `fpwd_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-02-09 21:27:22', '2018-02-09 21:27:22', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `fpwd_links`
--

CREATE TABLE `fpwd_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `fpwd_options`
--

CREATE TABLE `fpwd_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `fpwd_options`
--

INSERT INTO `fpwd_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://fpwd2.local', 'yes'),
(2, 'home', 'http://fpwd2.local', 'yes'),
(3, 'blogname', 'FPWD Recruitment', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'slasu92@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:110:{s:11:\"employee/?$\";s:28:\"index.php?post_type=employee\";s:41:\"employee/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=employee&feed=$matches[1]\";s:36:\"employee/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=employee&feed=$matches[1]\";s:28:\"employee/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=employee&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"employee/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"employee/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"employee/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"employee/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"employee/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"employee/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"employee/([^/]+)/embed/?$\";s:41:\"index.php?employee=$matches[1]&embed=true\";s:29:\"employee/([^/]+)/trackback/?$\";s:35:\"index.php?employee=$matches[1]&tb=1\";s:49:\"employee/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?employee=$matches[1]&feed=$matches[2]\";s:44:\"employee/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?employee=$matches[1]&feed=$matches[2]\";s:37:\"employee/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?employee=$matches[1]&paged=$matches[2]\";s:44:\"employee/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?employee=$matches[1]&cpage=$matches[2]\";s:33:\"employee/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?employee=$matches[1]&page=$matches[2]\";s:25:\"employee/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"employee/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"employee/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"employee/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"employee/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"employee/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'fpwd_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:6:{i:1518427645;a:2:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1518427646;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1518470859;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1518470860;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1518472523;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1518211946;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.4\";s:7:\"version\";s:5:\"4.9.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1518390955;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:0:{}}', 'no'),
(119, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1518390957;s:7:\"checked\";a:4:{s:13:\"twentyfifteen\";s:3:\"1.9\";s:21:\"twentyseventeen-child\";s:0:\"\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(120, '_site_transient_timeout_browser_c89882595a0b6fb065599d15013dcdb5', '1518816460', 'no'),
(121, '_site_transient_browser_c89882595a0b6fb065599d15013dcdb5', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"63.0.3239.132\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(125, 'can_compress_scripts', '1', 'no'),
(139, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1518390957;s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.12\";s:19:\"akismet/akismet.php\";s:5:\"4.0.2\";s:9:\"hello.php\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:7:\"default\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:7:\"default\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(140, 'recently_activated', 'a:0:{}', 'yes'),
(141, 'acf_version', '4.4.12', 'yes'),
(145, 'current_theme', 'FPWD Recruitment', 'yes'),
(146, 'theme_mods_twentyseventeen-child', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(147, 'theme_switched', '', 'yes'),
(199, '_transient_is_multi_author', '0', 'yes'),
(200, '_transient_twentyseventeen_categories', '1', 'yes'),
(207, '_site_transient_timeout_theme_roots', '1518392756', 'no'),
(208, '_site_transient_theme_roots', 'a:4:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:21:\"twentyseventeen-child\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `fpwd_postmeta`
--

CREATE TABLE `fpwd_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `fpwd_postmeta`
--

INSERT INTO `fpwd_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1518315757:1'),
(4, 4, '_wp_page_template', 'page-contact.php'),
(5, 5, 'contact_logo', ''),
(6, 5, '_contact_logo', 'field_contact_logo'),
(7, 5, 'contact_address', ''),
(8, 5, '_contact_address', 'field_contact_address'),
(9, 5, 'contact_map', ''),
(10, 5, '_contact_map', 'field_contact_map'),
(11, 4, 'contact_logo', '6'),
(12, 4, '_contact_logo', 'field_contact_logo'),
(13, 4, 'contact_address', '<strong>Company Name</strong>\r\nAddress line 1\r\nAddress line 2\r\nTelephone no\r\nE-mail address'),
(14, 4, '_contact_address', 'field_contact_address'),
(15, 4, 'contact_map', 'a:3:{s:7:\"address\";s:21:\"Zielona Góra, Poland\";s:3:\"lat\";s:10:\"51.9356214\";s:3:\"lng\";s:18:\"15.506186200000002\";}'),
(16, 4, '_contact_map', 'field_contact_map'),
(17, 6, '_wp_attached_file', '2018/02/logo.png'),
(18, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:16:\"2018/02/logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 7, 'contact_logo', '6'),
(20, 7, '_contact_logo', 'field_contact_logo'),
(21, 7, 'contact_address', 'Company Name\r\nAddress line 1\r\nAddress line 2\r\nTelephone no\r\nE-mail address'),
(22, 7, '_contact_address', 'field_contact_address'),
(23, 7, 'contact_map', 'a:3:{s:7:\"address\";s:21:\"Zielona Góra, Polska\";s:3:\"lat\";s:10:\"51.9356214\";s:3:\"lng\";s:18:\"15.506186200000002\";}'),
(24, 7, '_contact_map', 'field_contact_map'),
(25, 8, 'contact_logo', '6'),
(26, 8, '_contact_logo', 'field_contact_logo'),
(27, 8, 'contact_address', '<strong>Company Name</strong>\r\nAddress line 1\r\nAddress line 2\r\nTelephone no\r\nE-mail address'),
(28, 8, '_contact_address', 'field_contact_address'),
(29, 8, 'contact_map', 'a:3:{s:7:\"address\";s:21:\"Zielona Góra, Polska\";s:3:\"lat\";s:10:\"51.9356214\";s:3:\"lng\";s:18:\"15.506186200000002\";}'),
(30, 8, '_contact_map', 'field_contact_map'),
(33, 21, '_edit_last', '1'),
(34, 21, '_edit_lock', '1518300091:1'),
(35, 22, '_wp_attached_file', '2018/02/employee.png'),
(36, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:300;s:4:\"file\";s:20:\"2018/02/employee.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"employee-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"employee-200x300.png\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"employee-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 23, 'employee_image', '22'),
(38, 23, '_employee_image', 'field_employee_image'),
(39, 23, 'employee_name', 'Name Surname'),
(40, 23, '_employee_name', 'field_employee_name'),
(41, 23, 'employee_email', 'mail@domain.com'),
(42, 23, '_employee_email', 'field_employee_email'),
(43, 23, 'employee_www', 'emp1@domain.com'),
(44, 23, '_employee_www', 'field_employee_www'),
(45, 23, 'employee_first_social_link_label', 'Facebook'),
(46, 23, '_employee_first_social_link_label', 'field_employee_first_social_label'),
(47, 23, 'employee_first_social_link_url', 'url'),
(48, 23, '_employee_first_social_link_url', 'field_employee_first_social_url'),
(49, 23, 'employee_second_social_link_label', 'Linkedin'),
(50, 23, '_employee_second_social_link_label', 'field_employee_second_social_label'),
(51, 23, 'employee_second_social_link_url', '#'),
(52, 23, '_employee_second_social_link_url', 'field_employee_second_social_url'),
(53, 23, 'employee_third_social_link_label', 'Twitter'),
(54, 23, '_employee_third_social_link_label', 'field_employee_third_social_label'),
(55, 23, 'employee_third_social_link_url', '#'),
(56, 23, '_employee_third_social_link_url', 'field_employee_third_social_url'),
(57, 23, 'field_employee_posts', 'a:1:{i:0;s:1:\"1\";}'),
(58, 23, '_field_employee_posts', 'field_employee_posts'),
(59, 21, 'employee_image', '22'),
(60, 21, '_employee_image', 'field_employee_image'),
(61, 21, 'employee_name', 'Name Surname'),
(62, 21, '_employee_name', 'field_employee_name'),
(63, 21, 'employee_email', 'mail@domain.com'),
(64, 21, '_employee_email', 'field_employee_email'),
(65, 21, 'employee_www', 'www.employee-domain.com'),
(66, 21, '_employee_www', 'field_employee_www'),
(67, 21, 'employee_first_social_link_label', 'Facebook'),
(68, 21, '_employee_first_social_link_label', 'field_employee_first_social_label'),
(69, 21, 'employee_first_social_link_url', '#'),
(70, 21, '_employee_first_social_link_url', 'field_employee_first_social_url'),
(71, 21, 'employee_second_social_link_label', 'Linkedin'),
(72, 21, '_employee_second_social_link_label', 'field_employee_second_social_label'),
(73, 21, 'employee_second_social_link_url', '#'),
(74, 21, '_employee_second_social_link_url', 'field_employee_second_social_url'),
(75, 21, 'employee_third_social_link_label', 'Twitter'),
(76, 21, '_employee_third_social_link_label', 'field_employee_third_social_label'),
(77, 21, 'employee_third_social_link_url', '#'),
(78, 21, '_employee_third_social_link_url', 'field_employee_third_social_url'),
(79, 21, 'field_employee_posts', 'a:2:{i:0;s:1:\"1\";i:1;s:2:\"26\";}'),
(80, 21, '_field_employee_posts', 'field_employee_posts'),
(81, 1, '_edit_lock', '1518267825:1'),
(85, 26, '_edit_last', '1'),
(86, 26, '_edit_lock', '1518292993:1'),
(87, 27, '_wp_attached_file', '2018/02/postimg.png'),
(88, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:300;s:4:\"file\";s:19:\"2018/02/postimg.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"postimg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"postimg-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:19:\"postimg-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(89, 26, '_thumbnail_id', '27'),
(91, 29, 'employee_image', '22'),
(92, 29, '_employee_image', 'field_employee_image'),
(93, 29, 'employee_name', 'Name Surname'),
(94, 29, '_employee_name', 'field_employee_name'),
(95, 29, 'employee_email', 'mail@domain.com'),
(96, 29, '_employee_email', 'field_employee_email'),
(97, 29, 'employee_www', 'emp1@domain.com'),
(98, 29, '_employee_www', 'field_employee_www'),
(99, 29, 'employee_first_social_link_label', 'Facebook'),
(100, 29, '_employee_first_social_link_label', 'field_employee_first_social_label'),
(101, 29, 'employee_first_social_link_url', 'url'),
(102, 29, '_employee_first_social_link_url', 'field_employee_first_social_url'),
(103, 29, 'employee_second_social_link_label', 'Linkedin'),
(104, 29, '_employee_second_social_link_label', 'field_employee_second_social_label'),
(105, 29, 'employee_second_social_link_url', '#'),
(106, 29, '_employee_second_social_link_url', 'field_employee_second_social_url'),
(107, 29, 'employee_third_social_link_label', 'Twitter'),
(108, 29, '_employee_third_social_link_label', 'field_employee_third_social_label'),
(109, 29, 'employee_third_social_link_url', '#'),
(110, 29, '_employee_third_social_link_url', 'field_employee_third_social_url'),
(111, 29, 'field_employee_posts', 'a:2:{i:0;s:1:\"1\";i:1;s:2:\"26\";}'),
(112, 29, '_field_employee_posts', 'field_employee_posts'),
(113, 30, 'employee_image', '22'),
(114, 30, '_employee_image', 'field_employee_image'),
(115, 30, 'employee_name', 'Name Surname1'),
(116, 30, '_employee_name', 'field_employee_name'),
(117, 30, 'employee_email', 'mail@domain.com'),
(118, 30, '_employee_email', 'field_employee_email'),
(119, 30, 'employee_www', 'emp1@domain.com'),
(120, 30, '_employee_www', 'field_employee_www'),
(121, 30, '_', 'field_employee_first_social_label'),
(122, 30, 'employee_first_social_link_url', 'url'),
(123, 30, '_employee_first_social_link_url', 'field_employee_first_social_url'),
(124, 30, 'employee_second_social_link_label', 'Linkedin'),
(125, 30, '_employee_second_social_link_label', 'field_employee_second_social_label'),
(126, 30, 'employee_second_social_link_url', '#'),
(127, 30, '_employee_second_social_link_url', 'field_employee_second_social_url'),
(128, 30, 'employee_third_social_link_label', 'Twitter'),
(129, 30, '_employee_third_social_link_label', 'field_employee_third_social_label'),
(130, 30, 'employee_third_social_link_url', '#'),
(131, 30, '_employee_third_social_link_url', 'field_employee_third_social_url'),
(132, 30, 'field_employee_posts', 'a:2:{i:0;s:1:\"1\";i:1;s:2:\"26\";}'),
(133, 30, '_field_employee_posts', 'field_employee_posts'),
(134, 21, '_', 'field_employee_first_social_label'),
(135, 31, 'employee_image', '22'),
(136, 31, '_employee_image', 'field_employee_image'),
(137, 31, 'employee_name', 'Name Surname'),
(138, 31, '_employee_name', 'field_employee_name'),
(139, 31, 'employee_email', 'mail@domain.com'),
(140, 31, '_employee_email', 'field_employee_email'),
(141, 31, 'employee_www', 'emp1@domain.com'),
(142, 31, '_employee_www', 'field_employee_www'),
(143, 31, '_', 'field_employee_first_social_label'),
(144, 31, 'employee_first_social_link_url', 'url'),
(145, 31, '_employee_first_social_link_url', 'field_employee_first_social_url'),
(146, 31, 'employee_second_social_link_label', 'Linkedin'),
(147, 31, '_employee_second_social_link_label', 'field_employee_second_social_label'),
(148, 31, 'employee_second_social_link_url', '#'),
(149, 31, '_employee_second_social_link_url', 'field_employee_second_social_url'),
(150, 31, 'employee_third_social_link_label', 'Twitter'),
(151, 31, '_employee_third_social_link_label', 'field_employee_third_social_label'),
(152, 31, 'employee_third_social_link_url', '#'),
(153, 31, '_employee_third_social_link_url', 'field_employee_third_social_url'),
(154, 31, 'field_employee_posts', 'a:2:{i:0;s:1:\"1\";i:1;s:2:\"26\";}'),
(155, 31, '_field_employee_posts', 'field_employee_posts'),
(156, 32, 'employee_image', '22'),
(157, 32, '_employee_image', 'field_employee_image'),
(158, 32, 'employee_name', 'Name Surname'),
(159, 32, '_employee_name', 'field_employee_name'),
(160, 32, 'employee_email', 'mail@domain.com'),
(161, 32, '_employee_email', 'field_employee_email'),
(162, 32, 'employee_www', 'emp1@domain.com'),
(163, 32, '_employee_www', 'field_employee_www'),
(164, 32, 'employee_first_social_link_label', 'Facebook'),
(165, 32, '_employee_first_social_link_label', 'field_employee_first_social_label'),
(166, 32, 'employee_first_social_link_url', '#'),
(167, 32, '_employee_first_social_link_url', 'field_employee_first_social_url'),
(168, 32, 'employee_second_social_link_label', 'Linkedin'),
(169, 32, '_employee_second_social_link_label', 'field_employee_second_social_label'),
(170, 32, 'employee_second_social_link_url', '#'),
(171, 32, '_employee_second_social_link_url', 'field_employee_second_social_url'),
(172, 32, 'employee_third_social_link_label', 'Twitter'),
(173, 32, '_employee_third_social_link_label', 'field_employee_third_social_label'),
(174, 32, 'employee_third_social_link_url', '#'),
(175, 32, '_employee_third_social_link_url', 'field_employee_third_social_url'),
(176, 32, 'field_employee_posts', 'a:2:{i:0;s:1:\"1\";i:1;s:2:\"26\";}'),
(177, 32, '_field_employee_posts', 'field_employee_posts'),
(178, 33, '_edit_last', '1'),
(179, 33, '_edit_lock', '1518303805:1'),
(180, 34, 'employee_image', '22'),
(181, 34, '_employee_image', 'field_employee_image'),
(182, 34, 'employee_name', 'Name Surname'),
(183, 34, '_employee_name', 'field_employee_name'),
(184, 34, 'employee_email', 'mail@domain.com'),
(185, 34, '_employee_email', 'field_employee_email'),
(186, 34, 'employee_www', 'www.employee-domain.com'),
(187, 34, '_employee_www', 'field_employee_www'),
(188, 34, 'employee_first_social_link_label', 'Facebook'),
(189, 34, '_employee_first_social_link_label', 'field_employee_first_social_label'),
(190, 34, 'employee_first_social_link_url', '#'),
(191, 34, '_employee_first_social_link_url', 'field_employee_first_social_url'),
(192, 34, 'employee_second_social_link_label', 'Linkedin'),
(193, 34, '_employee_second_social_link_label', 'field_employee_second_social_label'),
(194, 34, 'employee_second_social_link_url', '#'),
(195, 34, '_employee_second_social_link_url', 'field_employee_second_social_url'),
(196, 34, 'employee_third_social_link_label', 'Twitter'),
(197, 34, '_employee_third_social_link_label', 'field_employee_third_social_label'),
(198, 34, 'employee_third_social_link_url', '#'),
(199, 34, '_employee_third_social_link_url', 'field_employee_third_social_url'),
(200, 34, 'field_employee_posts', 'a:2:{i:0;s:1:\"1\";i:1;s:2:\"26\";}'),
(201, 34, '_field_employee_posts', 'field_employee_posts'),
(202, 35, 'employee_image', '22'),
(203, 35, '_employee_image', 'field_employee_image'),
(204, 35, 'employee_name', 'Doris Hopkins'),
(205, 35, '_employee_name', 'field_employee_name'),
(206, 35, 'employee_email', 'd.hopkins@domain.com'),
(207, 35, '_employee_email', 'field_employee_email'),
(208, 35, 'employee_www', 'www.dhopkins-domain.com'),
(209, 35, '_employee_www', 'field_employee_www'),
(210, 35, 'employee_first_social_link_label', 'Facebook'),
(211, 35, '_employee_first_social_link_label', 'field_employee_first_social_label'),
(212, 35, 'employee_first_social_link_url', '#'),
(213, 35, '_employee_first_social_link_url', 'field_employee_first_social_url'),
(214, 35, 'employee_second_social_link_label', 'Linkedin'),
(215, 35, '_employee_second_social_link_label', 'field_employee_second_social_label'),
(216, 35, 'employee_second_social_link_url', '#'),
(217, 35, '_employee_second_social_link_url', 'field_employee_second_social_url'),
(218, 35, 'employee_third_social_link_label', 'Twitter'),
(219, 35, '_employee_third_social_link_label', 'field_employee_third_social_label'),
(220, 35, 'employee_third_social_link_url', '#'),
(221, 35, '_employee_third_social_link_url', 'field_employee_third_social_url'),
(222, 35, 'field_employee_posts', 'a:1:{i:0;s:2:\"26\";}'),
(223, 35, '_field_employee_posts', 'field_employee_posts'),
(224, 33, 'employee_image', '22'),
(225, 33, '_employee_image', 'field_employee_image'),
(226, 33, 'employee_name', 'Doris Hopkins'),
(227, 33, '_employee_name', 'field_employee_name'),
(228, 33, 'employee_email', 'd.hopkins@domain.com'),
(229, 33, '_employee_email', 'field_employee_email'),
(230, 33, 'employee_www', 'www.dhopkins-domain.com'),
(231, 33, '_employee_www', 'field_employee_www'),
(232, 33, 'employee_first_social_link_label', 'Facebook'),
(233, 33, '_employee_first_social_link_label', 'field_employee_first_social_label'),
(234, 33, 'employee_first_social_link_url', '#'),
(235, 33, '_employee_first_social_link_url', 'field_employee_first_social_url'),
(236, 33, 'employee_second_social_link_label', 'Linkedin'),
(237, 33, '_employee_second_social_link_label', 'field_employee_second_social_label'),
(238, 33, 'employee_second_social_link_url', '#'),
(239, 33, '_employee_second_social_link_url', 'field_employee_second_social_url'),
(240, 33, 'employee_third_social_link_label', 'Twitter'),
(241, 33, '_employee_third_social_link_label', 'field_employee_third_social_label'),
(242, 33, 'employee_third_social_link_url', '#'),
(243, 33, '_employee_third_social_link_url', 'field_employee_third_social_url'),
(244, 33, 'field_employee_posts', 'a:2:{i:0;s:2:\"26\";i:1;s:2:\"36\";}'),
(245, 33, '_field_employee_posts', 'field_employee_posts'),
(246, 36, '_edit_last', '1'),
(247, 36, '_edit_lock', '1518300088:1'),
(248, 36, '_thumbnail_id', '27'),
(250, 38, 'employee_image', '22'),
(251, 38, '_employee_image', 'field_employee_image'),
(252, 38, 'employee_name', 'Doris Hopkins'),
(253, 38, '_employee_name', 'field_employee_name'),
(254, 38, 'employee_email', 'd.hopkins@domain.com'),
(255, 38, '_employee_email', 'field_employee_email'),
(256, 38, 'employee_www', 'www.dhopkins-domain.com'),
(257, 38, '_employee_www', 'field_employee_www'),
(258, 38, 'employee_first_social_link_label', 'Facebook'),
(259, 38, '_employee_first_social_link_label', 'field_employee_first_social_label'),
(260, 38, 'employee_first_social_link_url', '#'),
(261, 38, '_employee_first_social_link_url', 'field_employee_first_social_url'),
(262, 38, 'employee_second_social_link_label', 'Linkedin'),
(263, 38, '_employee_second_social_link_label', 'field_employee_second_social_label'),
(264, 38, 'employee_second_social_link_url', '#'),
(265, 38, '_employee_second_social_link_url', 'field_employee_second_social_url'),
(266, 38, 'employee_third_social_link_label', 'Twitter'),
(267, 38, '_employee_third_social_link_label', 'field_employee_third_social_label'),
(268, 38, 'employee_third_social_link_url', '#'),
(269, 38, '_employee_third_social_link_url', 'field_employee_third_social_url'),
(270, 38, 'field_employee_posts', 'a:2:{i:0;s:2:\"26\";i:1;s:2:\"36\";}'),
(271, 38, '_field_employee_posts', 'field_employee_posts'),
(272, 39, '_edit_last', '1'),
(273, 39, '_edit_lock', '1518300089:1'),
(275, 41, '_edit_last', '1'),
(276, 41, '_edit_lock', '1518300089:1'),
(277, 42, 'employee_image', '22'),
(278, 42, '_employee_image', 'field_employee_image'),
(279, 42, 'employee_name', 'Lester Vierra'),
(280, 42, '_employee_name', 'field_employee_name'),
(281, 42, 'employee_email', 'l.vierra@domain.com'),
(282, 42, '_employee_email', 'field_employee_email'),
(283, 42, 'employee_www', 'www.lvierra-domain.com'),
(284, 42, '_employee_www', 'field_employee_www'),
(285, 42, 'employee_first_social_link_label', 'Facebook'),
(286, 42, '_employee_first_social_link_label', 'field_employee_first_social_label'),
(287, 42, 'employee_first_social_link_url', '#'),
(288, 42, '_employee_first_social_link_url', 'field_employee_first_social_url'),
(289, 42, 'employee_second_social_link_label', 'Linkedin'),
(290, 42, '_employee_second_social_link_label', 'field_employee_second_social_label'),
(291, 42, 'employee_second_social_link_url', '#'),
(292, 42, '_employee_second_social_link_url', 'field_employee_second_social_url'),
(293, 42, 'employee_third_social_link_label', 'Twitter'),
(294, 42, '_employee_third_social_link_label', 'field_employee_third_social_label'),
(295, 42, 'employee_third_social_link_url', '#'),
(296, 42, '_employee_third_social_link_url', 'field_employee_third_social_url'),
(297, 42, 'field_employee_posts', 'a:3:{i:0;s:2:\"26\";i:1;s:2:\"36\";i:2;s:2:\"39\";}'),
(298, 42, '_field_employee_posts', 'field_employee_posts'),
(299, 41, 'employee_image', '22'),
(300, 41, '_employee_image', 'field_employee_image'),
(301, 41, 'employee_name', 'Lester Vierra'),
(302, 41, '_employee_name', 'field_employee_name'),
(303, 41, 'employee_email', 'l.vierra@domain.com'),
(304, 41, '_employee_email', 'field_employee_email'),
(305, 41, 'employee_www', 'www.lvierra-domain.com'),
(306, 41, '_employee_www', 'field_employee_www'),
(307, 41, 'employee_first_social_link_label', 'Facebook'),
(308, 41, '_employee_first_social_link_label', 'field_employee_first_social_label'),
(309, 41, 'employee_first_social_link_url', '#'),
(310, 41, '_employee_first_social_link_url', 'field_employee_first_social_url'),
(311, 41, 'employee_second_social_link_label', 'Linkedin'),
(312, 41, '_employee_second_social_link_label', 'field_employee_second_social_label'),
(313, 41, 'employee_second_social_link_url', '#'),
(314, 41, '_employee_second_social_link_url', 'field_employee_second_social_url'),
(315, 41, 'employee_third_social_link_label', 'Twitter'),
(316, 41, '_employee_third_social_link_label', 'field_employee_third_social_label'),
(317, 41, 'employee_third_social_link_url', '#'),
(318, 41, '_employee_third_social_link_url', 'field_employee_third_social_url'),
(319, 41, 'field_employee_posts', 'a:3:{i:0;s:2:\"26\";i:1;s:2:\"39\";i:2;s:2:\"36\";}'),
(320, 41, '_field_employee_posts', 'field_employee_posts'),
(321, 43, 'employee_image', '22'),
(322, 43, '_employee_image', 'field_employee_image'),
(323, 43, 'employee_name', 'Lester Vierra'),
(324, 43, '_employee_name', 'field_employee_name'),
(325, 43, 'employee_email', 'l.vierra@domain.com'),
(326, 43, '_employee_email', 'field_employee_email'),
(327, 43, 'employee_www', 'www.lvierra-domain.com'),
(328, 43, '_employee_www', 'field_employee_www'),
(329, 43, 'employee_first_social_link_label', 'Facebook'),
(330, 43, '_employee_first_social_link_label', 'field_employee_first_social_label'),
(331, 43, 'employee_first_social_link_url', '#'),
(332, 43, '_employee_first_social_link_url', 'field_employee_first_social_url'),
(333, 43, 'employee_second_social_link_label', 'Linkedin'),
(334, 43, '_employee_second_social_link_label', 'field_employee_second_social_label'),
(335, 43, 'employee_second_social_link_url', '#'),
(336, 43, '_employee_second_social_link_url', 'field_employee_second_social_url'),
(337, 43, 'employee_third_social_link_label', 'Twitter'),
(338, 43, '_employee_third_social_link_label', 'field_employee_third_social_label'),
(339, 43, 'employee_third_social_link_url', '#'),
(340, 43, '_employee_third_social_link_url', 'field_employee_third_social_url'),
(341, 43, 'field_employee_posts', 'a:3:{i:0;s:2:\"26\";i:1;s:2:\"36\";i:2;s:2:\"39\";}'),
(342, 43, '_field_employee_posts', 'field_employee_posts'),
(343, 44, 'employee_image', '22'),
(344, 44, '_employee_image', 'field_employee_image'),
(345, 44, 'employee_name', 'Lester Vierra'),
(346, 44, '_employee_name', 'field_employee_name'),
(347, 44, 'employee_email', 'l.vierra@domain.com'),
(348, 44, '_employee_email', 'field_employee_email'),
(349, 44, 'employee_www', 'www.lvierra-domain.com'),
(350, 44, '_employee_www', 'field_employee_www'),
(351, 44, 'employee_first_social_link_label', 'Facebook'),
(352, 44, '_employee_first_social_link_label', 'field_employee_first_social_label'),
(353, 44, 'employee_first_social_link_url', '#'),
(354, 44, '_employee_first_social_link_url', 'field_employee_first_social_url'),
(355, 44, 'employee_second_social_link_label', 'Linkedin'),
(356, 44, '_employee_second_social_link_label', 'field_employee_second_social_label'),
(357, 44, 'employee_second_social_link_url', '#'),
(358, 44, '_employee_second_social_link_url', 'field_employee_second_social_url'),
(359, 44, 'employee_third_social_link_label', 'Twitter'),
(360, 44, '_employee_third_social_link_label', 'field_employee_third_social_label'),
(361, 44, 'employee_third_social_link_url', '#'),
(362, 44, '_employee_third_social_link_url', 'field_employee_third_social_url'),
(363, 44, 'field_employee_posts', 'a:3:{i:0;s:2:\"39\";i:1;s:2:\"26\";i:2;s:2:\"36\";}'),
(364, 44, '_field_employee_posts', 'field_employee_posts'),
(365, 45, 'employee_image', '22'),
(366, 45, '_employee_image', 'field_employee_image'),
(367, 45, 'employee_name', 'Lester Vierra'),
(368, 45, '_employee_name', 'field_employee_name'),
(369, 45, 'employee_email', 'l.vierra@domain.com'),
(370, 45, '_employee_email', 'field_employee_email'),
(371, 45, 'employee_www', 'www.lvierra-domain.com'),
(372, 45, '_employee_www', 'field_employee_www'),
(373, 45, 'employee_first_social_link_label', 'Facebook'),
(374, 45, '_employee_first_social_link_label', 'field_employee_first_social_label'),
(375, 45, 'employee_first_social_link_url', '#'),
(376, 45, '_employee_first_social_link_url', 'field_employee_first_social_url'),
(377, 45, 'employee_second_social_link_label', 'Linkedin'),
(378, 45, '_employee_second_social_link_label', 'field_employee_second_social_label'),
(379, 45, 'employee_second_social_link_url', '#'),
(380, 45, '_employee_second_social_link_url', 'field_employee_second_social_url'),
(381, 45, 'employee_third_social_link_label', 'Twitter'),
(382, 45, '_employee_third_social_link_label', 'field_employee_third_social_label'),
(383, 45, 'employee_third_social_link_url', '#'),
(384, 45, '_employee_third_social_link_url', 'field_employee_third_social_url'),
(385, 45, 'field_employee_posts', 'a:3:{i:0;s:2:\"26\";i:1;s:2:\"39\";i:2;s:2:\"36\";}'),
(386, 45, '_field_employee_posts', 'field_employee_posts'),
(387, 46, '_edit_last', '1'),
(388, 46, '_edit_lock', '1518315757:1'),
(389, 47, 'employee_image', '22'),
(390, 47, '_employee_image', 'field_employee_image'),
(391, 47, 'employee_name', 'Kermit Simpson'),
(392, 47, '_employee_name', 'field_employee_name'),
(393, 47, 'employee_email', 'ksimpson@domain.com'),
(394, 47, '_employee_email', 'field_employee_email'),
(395, 47, 'employee_www', 'www.ksimpson-domain.com'),
(396, 47, '_employee_www', 'field_employee_www'),
(397, 47, 'employee_first_social_link_label', 'Facebook'),
(398, 47, '_employee_first_social_link_label', 'field_employee_first_social_label'),
(399, 47, 'employee_first_social_link_url', '#'),
(400, 47, '_employee_first_social_link_url', 'field_employee_first_social_url'),
(401, 47, 'employee_second_social_link_label', 'Linkedin'),
(402, 47, '_employee_second_social_link_label', 'field_employee_second_social_label'),
(403, 47, 'employee_second_social_link_url', '#'),
(404, 47, '_employee_second_social_link_url', 'field_employee_second_social_url'),
(405, 47, 'employee_third_social_link_label', 'Twitter'),
(406, 47, '_employee_third_social_link_label', 'field_employee_third_social_label'),
(407, 47, 'employee_third_social_link_url', '#'),
(408, 47, '_employee_third_social_link_url', 'field_employee_third_social_url'),
(409, 47, 'field_employee_posts', 'a:4:{i:0;s:2:\"36\";i:1;s:1:\"1\";i:2;s:2:\"39\";i:3;s:2:\"26\";}'),
(410, 47, '_field_employee_posts', 'field_employee_posts'),
(411, 46, 'employee_image', '22'),
(412, 46, '_employee_image', 'field_employee_image'),
(413, 46, 'employee_name', 'Kermit Simpson'),
(414, 46, '_employee_name', 'field_employee_name'),
(415, 46, 'employee_email', 'ksimpson@domain.com'),
(416, 46, '_employee_email', 'field_employee_email'),
(417, 46, 'employee_www', 'www.ksimpson-domain.com'),
(418, 46, '_employee_www', 'field_employee_www'),
(419, 46, 'employee_first_social_link_label', 'Facebook'),
(420, 46, '_employee_first_social_link_label', 'field_employee_first_social_label'),
(421, 46, 'employee_first_social_link_url', '#'),
(422, 46, '_employee_first_social_link_url', 'field_employee_first_social_url'),
(423, 46, 'employee_second_social_link_label', 'Linkedin'),
(424, 46, '_employee_second_social_link_label', 'field_employee_second_social_label'),
(425, 46, 'employee_second_social_link_url', '#'),
(426, 46, '_employee_second_social_link_url', 'field_employee_second_social_url'),
(427, 46, 'employee_third_social_link_label', 'Twitter'),
(428, 46, '_employee_third_social_link_label', 'field_employee_third_social_label'),
(429, 46, 'employee_third_social_link_url', '#'),
(430, 46, '_employee_third_social_link_url', 'field_employee_third_social_url'),
(431, 46, 'field_employee_posts', 'a:4:{i:0;s:2:\"36\";i:1;s:1:\"1\";i:2;s:2:\"39\";i:3;s:2:\"26\";}'),
(432, 46, '_field_employee_posts', 'field_employee_posts'),
(433, 48, 'employee_image', '22'),
(434, 48, '_employee_image', 'field_employee_image'),
(435, 48, 'employee_name', 'Kermit Simpson'),
(436, 48, '_employee_name', 'field_employee_name'),
(437, 48, 'employee_email', 'ksimpson@domain.com'),
(438, 48, '_employee_email', 'field_employee_email'),
(439, 48, 'employee_www', 'www.ksimpson-domain.com'),
(440, 48, '_employee_www', 'field_employee_www'),
(441, 48, 'employee_first_social_link_label', 'Facebook'),
(442, 48, '_employee_first_social_link_label', 'field_employee_first_social_label'),
(443, 48, 'employee_first_social_link_url', '#'),
(444, 48, '_employee_first_social_link_url', 'field_employee_first_social_url'),
(445, 48, 'employee_second_social_link_label', 'Linkedin'),
(446, 48, '_employee_second_social_link_label', 'field_employee_second_social_label'),
(447, 48, 'employee_second_social_link_url', '#'),
(448, 48, '_employee_second_social_link_url', 'field_employee_second_social_url'),
(449, 48, 'employee_third_social_link_label', 'Twitter'),
(450, 48, '_employee_third_social_link_label', 'field_employee_third_social_label'),
(451, 48, 'employee_third_social_link_url', '#'),
(452, 48, '_employee_third_social_link_url', 'field_employee_third_social_url'),
(453, 48, 'field_employee_posts', 'a:4:{i:0;s:2:\"36\";i:1;s:1:\"1\";i:2;s:2:\"39\";i:3;s:2:\"26\";}'),
(454, 48, '_field_employee_posts', 'field_employee_posts'),
(455, 49, 'contact_logo', '6'),
(456, 49, '_contact_logo', 'field_contact_logo'),
(457, 49, 'contact_address', '<strong>Company Name</strong>\r\nAddress line 1\r\nAddress line 2\r\nTelephone no\r\nE-mail address'),
(458, 49, '_contact_address', 'field_contact_address'),
(459, 49, 'contact_map', 'a:3:{s:7:\"address\";s:21:\"Zielona Góra, Poland\";s:3:\"lat\";s:10:\"51.9356214\";s:3:\"lng\";s:18:\"15.506186200000002\";}'),
(460, 49, '_contact_map', 'field_contact_map');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `fpwd_posts`
--

CREATE TABLE `fpwd_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `fpwd_posts`
--

INSERT INTO `fpwd_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-02-09 21:27:22', '2018-02-09 21:27:22', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-02-09 21:27:22', '2018-02-09 21:27:22', '', 0, 'http://fpwd2.local/?p=1', 0, 'post', '', 1),
(2, 1, '2018-02-09 21:27:22', '2018-02-09 21:27:22', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://fpwd2.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-02-09 21:27:22', '2018-02-09 21:27:22', '', 0, 'http://fpwd2.local/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-02-09 21:27:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-02-09 21:27:40', '0000-00-00 00:00:00', '', 0, 'http://fpwd2.local/?p=3', 0, 'post', '', 0),
(4, 1, '2018-02-09 21:55:41', '2018-02-09 21:55:41', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis magna sit amet magna gravida hendrerit. Donec ac ipsum vitae justo ullamcorper iaculis ut in orci. Maecenas lobortis augue sed ipsum lobortis lacinia. Suspendisse imperdiet ex ligula, faucibus tempor purus dignissim eget. Sed id risus ornare, scelerisque lacus quis, posuere enim. Phasellus ultricies sapien non tellus finibus pharetra. Nunc sagittis aliquet hendrerit.\r\n\r\nPellentesque iaculis tempor neque, mattis tempor velit ullamcorper ac. Integer tincidunt justo facilisis scelerisque egestas. Ut vitae urna a nulla tempus mattis ac at orci. Donec blandit volutpat mauris, nec pretium purus interdum quis. Donec pretium risus rhoncus mauris placerat, quis ullamcorper nunc volutpat. Nunc vel finibus arcu. Maecenas nec orci nunc. Sed ac leo nec nibh scelerisque congue sit amet vitae urna. Suspendisse imperdiet mauris tincidunt ipsum congue dignissim vel a dui.\r\n\r\nPraesent sit amet ex a velit lacinia facilisis. Mauris eu enim dui. Quisque facilisis orci quis arcu tincidunt, sit amet pulvinar dui venenatis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus nec est in mauris vehicula elementum. Nulla accumsan suscipit luctus. Morbi bibendum, ligula non pulvinar feugiat, sem enim dictum nisl, at convallis velit augue vitae odio. Sed ac mauris enim. Etiam eget sollicitudin ante, aliquam placerat ligula. Cras dignissim eleifend tristique. Aenean et libero sed magna gravida suscipit eu ut felis. Nullam eleifend enim tellus, ultrices imperdiet sem condimentum non. Vestibulum eros mi, tempus et metus ac, egestas mollis augue. Suspendisse potenti. Nulla vehicula libero lorem, quis congue nibh mattis eu.', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-02-10 23:35:19', '2018-02-10 23:35:19', '', 0, 'http://fpwd2.local/?page_id=4', 0, 'page', '', 0),
(5, 1, '2018-02-09 21:55:41', '2018-02-09 21:55:41', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis magna sit amet magna gravida hendrerit. Donec ac ipsum vitae justo ullamcorper iaculis ut in orci. Maecenas lobortis augue sed ipsum lobortis lacinia. Suspendisse imperdiet ex ligula, faucibus tempor purus dignissim eget. Sed id risus ornare, scelerisque lacus quis, posuere enim. Phasellus ultricies sapien non tellus finibus pharetra. Nunc sagittis aliquet hendrerit.\r\n\r\nPellentesque iaculis tempor neque, mattis tempor velit ullamcorper ac. Integer tincidunt justo facilisis scelerisque egestas. Ut vitae urna a nulla tempus mattis ac at orci. Donec blandit volutpat mauris, nec pretium purus interdum quis. Donec pretium risus rhoncus mauris placerat, quis ullamcorper nunc volutpat. Nunc vel finibus arcu. Maecenas nec orci nunc. Sed ac leo nec nibh scelerisque congue sit amet vitae urna. Suspendisse imperdiet mauris tincidunt ipsum congue dignissim vel a dui.\r\n\r\nPraesent sit amet ex a velit lacinia facilisis. Mauris eu enim dui. Quisque facilisis orci quis arcu tincidunt, sit amet pulvinar dui venenatis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus nec est in mauris vehicula elementum. Nulla accumsan suscipit luctus. Morbi bibendum, ligula non pulvinar feugiat, sem enim dictum nisl, at convallis velit augue vitae odio. Sed ac mauris enim. Etiam eget sollicitudin ante, aliquam placerat ligula. Cras dignissim eleifend tristique. Aenean et libero sed magna gravida suscipit eu ut felis. Nullam eleifend enim tellus, ultrices imperdiet sem condimentum non. Vestibulum eros mi, tempus et metus ac, egestas mollis augue. Suspendisse potenti. Nulla vehicula libero lorem, quis congue nibh mattis eu.', 'Contact', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-02-09 21:55:41', '2018-02-09 21:55:41', '', 4, 'http://fpwd2.local/2018/02/09/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-02-09 21:55:53', '2018-02-09 21:55:53', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-02-09 21:55:53', '2018-02-09 21:55:53', '', 4, 'http://fpwd2.local/wp-content/uploads/2018/02/logo.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2018-02-09 21:56:08', '2018-02-09 21:56:08', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis magna sit amet magna gravida hendrerit. Donec ac ipsum vitae justo ullamcorper iaculis ut in orci. Maecenas lobortis augue sed ipsum lobortis lacinia. Suspendisse imperdiet ex ligula, faucibus tempor purus dignissim eget. Sed id risus ornare, scelerisque lacus quis, posuere enim. Phasellus ultricies sapien non tellus finibus pharetra. Nunc sagittis aliquet hendrerit.\r\n\r\nPellentesque iaculis tempor neque, mattis tempor velit ullamcorper ac. Integer tincidunt justo facilisis scelerisque egestas. Ut vitae urna a nulla tempus mattis ac at orci. Donec blandit volutpat mauris, nec pretium purus interdum quis. Donec pretium risus rhoncus mauris placerat, quis ullamcorper nunc volutpat. Nunc vel finibus arcu. Maecenas nec orci nunc. Sed ac leo nec nibh scelerisque congue sit amet vitae urna. Suspendisse imperdiet mauris tincidunt ipsum congue dignissim vel a dui.\r\n\r\nPraesent sit amet ex a velit lacinia facilisis. Mauris eu enim dui. Quisque facilisis orci quis arcu tincidunt, sit amet pulvinar dui venenatis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus nec est in mauris vehicula elementum. Nulla accumsan suscipit luctus. Morbi bibendum, ligula non pulvinar feugiat, sem enim dictum nisl, at convallis velit augue vitae odio. Sed ac mauris enim. Etiam eget sollicitudin ante, aliquam placerat ligula. Cras dignissim eleifend tristique. Aenean et libero sed magna gravida suscipit eu ut felis. Nullam eleifend enim tellus, ultrices imperdiet sem condimentum non. Vestibulum eros mi, tempus et metus ac, egestas mollis augue. Suspendisse potenti. Nulla vehicula libero lorem, quis congue nibh mattis eu.', 'Contact', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-02-09 21:56:08', '2018-02-09 21:56:08', '', 4, 'http://fpwd2.local/2018/02/09/4-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-02-09 22:01:56', '2018-02-09 22:01:56', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis magna sit amet magna gravida hendrerit. Donec ac ipsum vitae justo ullamcorper iaculis ut in orci. Maecenas lobortis augue sed ipsum lobortis lacinia. Suspendisse imperdiet ex ligula, faucibus tempor purus dignissim eget. Sed id risus ornare, scelerisque lacus quis, posuere enim. Phasellus ultricies sapien non tellus finibus pharetra. Nunc sagittis aliquet hendrerit.\r\n\r\nPellentesque iaculis tempor neque, mattis tempor velit ullamcorper ac. Integer tincidunt justo facilisis scelerisque egestas. Ut vitae urna a nulla tempus mattis ac at orci. Donec blandit volutpat mauris, nec pretium purus interdum quis. Donec pretium risus rhoncus mauris placerat, quis ullamcorper nunc volutpat. Nunc vel finibus arcu. Maecenas nec orci nunc. Sed ac leo nec nibh scelerisque congue sit amet vitae urna. Suspendisse imperdiet mauris tincidunt ipsum congue dignissim vel a dui.\r\n\r\nPraesent sit amet ex a velit lacinia facilisis. Mauris eu enim dui. Quisque facilisis orci quis arcu tincidunt, sit amet pulvinar dui venenatis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus nec est in mauris vehicula elementum. Nulla accumsan suscipit luctus. Morbi bibendum, ligula non pulvinar feugiat, sem enim dictum nisl, at convallis velit augue vitae odio. Sed ac mauris enim. Etiam eget sollicitudin ante, aliquam placerat ligula. Cras dignissim eleifend tristique. Aenean et libero sed magna gravida suscipit eu ut felis. Nullam eleifend enim tellus, ultrices imperdiet sem condimentum non. Vestibulum eros mi, tempus et metus ac, egestas mollis augue. Suspendisse potenti. Nulla vehicula libero lorem, quis congue nibh mattis eu.', 'Contact', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-02-09 22:01:56', '2018-02-09 22:01:56', '', 4, 'http://fpwd2.local/2018/02/09/4-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-02-09 23:29:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-09 23:29:06', '0000-00-00 00:00:00', '', 0, 'http://fpwd2.local/?post_type=employee&p=9', 0, 'employee', '', 0),
(10, 1, '2018-02-09 23:29:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-09 23:29:21', '0000-00-00 00:00:00', '', 0, 'http://fpwd2.local/?post_type=employee&p=10', 0, 'employee', '', 0),
(11, 1, '2018-02-09 23:30:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-09 23:30:08', '0000-00-00 00:00:00', '', 0, 'http://fpwd2.local/?post_type=employee&p=11', 0, 'employee', '', 0),
(12, 1, '2018-02-09 23:30:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-09 23:30:17', '0000-00-00 00:00:00', '', 0, 'http://fpwd2.local/?post_type=employee&p=12', 0, 'employee', '', 0),
(13, 1, '2018-02-09 23:30:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-09 23:30:57', '0000-00-00 00:00:00', '', 0, 'http://fpwd2.local/?post_type=employee&p=13', 0, 'employee', '', 0),
(14, 1, '2018-02-09 23:31:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-09 23:31:05', '0000-00-00 00:00:00', '', 0, 'http://fpwd2.local/?post_type=employee&p=14', 0, 'employee', '', 0),
(15, 1, '2018-02-09 23:40:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-09 23:40:03', '0000-00-00 00:00:00', '', 0, 'http://fpwd2.local/?post_type=employee&p=15', 0, 'employee', '', 0),
(16, 1, '2018-02-09 23:40:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-09 23:40:48', '0000-00-00 00:00:00', '', 0, 'http://fpwd2.local/?post_type=employee&p=16', 0, 'employee', '', 0),
(17, 1, '2018-02-09 23:49:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-09 23:49:56', '0000-00-00 00:00:00', '', 0, 'http://fpwd2.local/?post_type=employee&p=17', 0, 'employee', '', 0),
(18, 1, '2018-02-09 23:58:52', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-09 23:58:52', '0000-00-00 00:00:00', '', 0, 'http://fpwd2.local/?post_type=employee&p=18', 0, 'employee', '', 0),
(19, 1, '2018-02-09 23:59:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-09 23:59:02', '0000-00-00 00:00:00', '', 0, 'http://fpwd2.local/?post_type=employee&p=19', 0, 'employee', '', 0),
(21, 1, '2018-02-10 02:12:13', '2018-02-10 02:12:13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas porta augue at odio iaculis, eu ullamcorper nibh sollicitudin. Quisque ultrices tellus et vehicula volutpat. Duis consequat nisi vitae eros semper lacinia. Duis malesuada finibus sapien sed facilisis. Suspendisse sit amet diam eget lorem molestie tincidunt. Etiam tempor dapibus ipsum faucibus malesuada. Sed vel malesuada nisl. Mauris consectetur nunc varius ex pretium, non dapibus orci vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam erat volutpat. Donec neque justo, malesuada malesuada lacinia ac, vehicula sit amet est.', 'Employee 1', '', 'publish', 'closed', 'closed', '', 'employee-1', '', '', '2018-02-10 20:37:21', '2018-02-10 20:37:21', '', 0, 'http://fpwd2.local/?post_type=employee&#038;p=21', 0, 'employee', '', 0),
(22, 1, '2018-02-10 02:11:04', '2018-02-10 02:11:04', '', 'employee', '', 'inherit', 'open', 'closed', '', 'employee', '', '', '2018-02-10 02:11:04', '2018-02-10 02:11:04', '', 21, 'http://fpwd2.local/wp-content/uploads/2018/02/employee.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2018-02-10 02:12:13', '2018-02-10 02:12:13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas porta augue at odio iaculis, eu ullamcorper nibh sollicitudin. Quisque ultrices tellus et vehicula volutpat. Duis consequat nisi vitae eros semper lacinia. Duis malesuada finibus sapien sed facilisis. Suspendisse sit amet diam eget lorem molestie tincidunt. Etiam tempor dapibus ipsum faucibus malesuada. Sed vel malesuada nisl. Mauris consectetur nunc varius ex pretium, non dapibus orci vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam erat volutpat. Donec neque justo, malesuada malesuada lacinia ac, vehicula sit amet est.', 'Employee 1', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-02-10 02:12:13', '2018-02-10 02:12:13', '', 21, 'http://fpwd2.local/2018/02/10/21-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-02-10 12:34:28', '2018-02-10 12:34:28', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2018-02-10 12:34:28', '2018-02-10 12:34:28', '', 1, 'http://fpwd2.local/1-autosave-v1/', 0, 'revision', '', 0),
(26, 1, '2018-02-10 13:57:36', '2018-02-10 13:57:36', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ut interdum neque. Phasellus felis eros, dignissim pharetra vehicula et, finibus at dolor. Mauris consectetur varius purus ut luctus. Donec vestibulum sed felis eget porta. Suspendisse consequat, elit vel tincidunt pulvinar, nibh felis ornare massa, a volutpat metus dolor ac risus. Fusce bibendum efficitur purus, faucibus viverra felis lobortis quis. Sed convallis enim id ex pretium commodo. Fusce tempor posuere tortor in molestie. Curabitur vel mi pellentesque, sollicitudin mi id, viverra ex.\r\n\r\nSuspendisse gravida arcu nunc, id maximus justo auctor at. Nunc cursus, magna eu bibendum bibendum, est tortor finibus nisi, et semper eros lorem et ipsum. Morbi iaculis maximus purus id facilisis. Aliquam erat volutpat. Sed dapibus dui ut erat porttitor, egestas varius nulla vulputate. Sed imperdiet lorem vel lacus ullamcorper viverra. Ut placerat libero a auctor iaculis. Fusce eget feugiat arcu, quis sollicitudin nisi. Aenean varius, lacus sit amet auctor consequat, libero sem placerat enim, quis sagittis massa arcu ac nulla. Suspendisse vel ex ut felis vulputate interdum.\r\n\r\nUt a eros a purus interdum vulputate. Praesent urna purus, efficitur tempor nisl eu, interdum tempus dolor. Aliquam consectetur augue ut interdum pharetra. Duis dignissim massa sit amet nulla eleifend semper. Fusce at posuere dui, eu euismod augue. Donec feugiat nisl ante, ut tincidunt orci mollis id. Maecenas augue nibh, consectetur id est vitae, facilisis facilisis lectus. Nam sit amet pulvinar arcu, nec bibendum est. Curabitur nec quam risus. Donec velit libero, mollis non ornare quis, porttitor eu sem.', 'Post 1', '', 'publish', 'open', 'open', '', 'post-1', '', '', '2018-02-10 13:57:36', '2018-02-10 13:57:36', '', 0, 'http://fpwd2.local/?p=26', 0, 'post', '', 0),
(27, 1, '2018-02-10 13:57:24', '2018-02-10 13:57:24', '', 'postimg', '', 'inherit', 'open', 'closed', '', 'postimg', '', '', '2018-02-10 13:57:24', '2018-02-10 13:57:24', '', 26, 'http://fpwd2.local/wp-content/uploads/2018/02/postimg.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2018-02-10 13:57:36', '2018-02-10 13:57:36', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ut interdum neque. Phasellus felis eros, dignissim pharetra vehicula et, finibus at dolor. Mauris consectetur varius purus ut luctus. Donec vestibulum sed felis eget porta. Suspendisse consequat, elit vel tincidunt pulvinar, nibh felis ornare massa, a volutpat metus dolor ac risus. Fusce bibendum efficitur purus, faucibus viverra felis lobortis quis. Sed convallis enim id ex pretium commodo. Fusce tempor posuere tortor in molestie. Curabitur vel mi pellentesque, sollicitudin mi id, viverra ex.\r\n\r\nSuspendisse gravida arcu nunc, id maximus justo auctor at. Nunc cursus, magna eu bibendum bibendum, est tortor finibus nisi, et semper eros lorem et ipsum. Morbi iaculis maximus purus id facilisis. Aliquam erat volutpat. Sed dapibus dui ut erat porttitor, egestas varius nulla vulputate. Sed imperdiet lorem vel lacus ullamcorper viverra. Ut placerat libero a auctor iaculis. Fusce eget feugiat arcu, quis sollicitudin nisi. Aenean varius, lacus sit amet auctor consequat, libero sem placerat enim, quis sagittis massa arcu ac nulla. Suspendisse vel ex ut felis vulputate interdum.\r\n\r\nUt a eros a purus interdum vulputate. Praesent urna purus, efficitur tempor nisl eu, interdum tempus dolor. Aliquam consectetur augue ut interdum pharetra. Duis dignissim massa sit amet nulla eleifend semper. Fusce at posuere dui, eu euismod augue. Donec feugiat nisl ante, ut tincidunt orci mollis id. Maecenas augue nibh, consectetur id est vitae, facilisis facilisis lectus. Nam sit amet pulvinar arcu, nec bibendum est. Curabitur nec quam risus. Donec velit libero, mollis non ornare quis, porttitor eu sem.', 'Post 1', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-02-10 13:57:36', '2018-02-10 13:57:36', '', 26, 'http://fpwd2.local/26-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-02-10 13:57:48', '2018-02-10 13:57:48', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas porta augue at odio iaculis, eu ullamcorper nibh sollicitudin. Quisque ultrices tellus et vehicula volutpat. Duis consequat nisi vitae eros semper lacinia. Duis malesuada finibus sapien sed facilisis. Suspendisse sit amet diam eget lorem molestie tincidunt. Etiam tempor dapibus ipsum faucibus malesuada. Sed vel malesuada nisl. Mauris consectetur nunc varius ex pretium, non dapibus orci vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam erat volutpat. Donec neque justo, malesuada malesuada lacinia ac, vehicula sit amet est.', 'Employee 1', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-02-10 13:57:48', '2018-02-10 13:57:48', '', 21, 'http://fpwd2.local/21-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-02-10 19:22:39', '2018-02-10 19:22:39', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas porta augue at odio iaculis, eu ullamcorper nibh sollicitudin. Quisque ultrices tellus et vehicula volutpat. Duis consequat nisi vitae eros semper lacinia. Duis malesuada finibus sapien sed facilisis. Suspendisse sit amet diam eget lorem molestie tincidunt. Etiam tempor dapibus ipsum faucibus malesuada. Sed vel malesuada nisl. Mauris consectetur nunc varius ex pretium, non dapibus orci vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam erat volutpat. Donec neque justo, malesuada malesuada lacinia ac, vehicula sit amet est.', 'Employee 1', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-02-10 19:22:39', '2018-02-10 19:22:39', '', 21, 'http://fpwd2.local/21-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-02-10 19:22:44', '2018-02-10 19:22:44', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas porta augue at odio iaculis, eu ullamcorper nibh sollicitudin. Quisque ultrices tellus et vehicula volutpat. Duis consequat nisi vitae eros semper lacinia. Duis malesuada finibus sapien sed facilisis. Suspendisse sit amet diam eget lorem molestie tincidunt. Etiam tempor dapibus ipsum faucibus malesuada. Sed vel malesuada nisl. Mauris consectetur nunc varius ex pretium, non dapibus orci vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam erat volutpat. Donec neque justo, malesuada malesuada lacinia ac, vehicula sit amet est.', 'Employee 1', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-02-10 19:22:44', '2018-02-10 19:22:44', '', 21, 'http://fpwd2.local/21-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-02-10 20:05:25', '2018-02-10 20:05:25', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas porta augue at odio iaculis, eu ullamcorper nibh sollicitudin. Quisque ultrices tellus et vehicula volutpat. Duis consequat nisi vitae eros semper lacinia. Duis malesuada finibus sapien sed facilisis. Suspendisse sit amet diam eget lorem molestie tincidunt. Etiam tempor dapibus ipsum faucibus malesuada. Sed vel malesuada nisl. Mauris consectetur nunc varius ex pretium, non dapibus orci vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam erat volutpat. Donec neque justo, malesuada malesuada lacinia ac, vehicula sit amet est.', 'Employee 1', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-02-10 20:05:25', '2018-02-10 20:05:25', '', 21, 'http://fpwd2.local/21-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-02-10 20:39:27', '2018-02-10 20:39:27', 'Praesent in odio placerat, blandit ipsum et, laoreet tellus. Donec dapibus est non nibh semper, nec elementum risus porta. Aenean lobortis ipsum varius neque accumsan, fermentum tincidunt risus sagittis. In hac habitasse platea dictumst. Phasellus eleifend, diam a bibendum aliquet, lacus elit efficitur tellus, sit amet elementum lacus sem at massa. Vivamus at massa eget quam porta efficitur. Quisque vulputate lectus a tellus dignissim, vitae sagittis ipsum malesuada.', 'Doris Hopkins', '', 'publish', 'closed', 'closed', '', 'doris-hopkins', '', '', '2018-02-10 20:40:34', '2018-02-10 20:40:34', '', 0, 'http://fpwd2.local/?post_type=employee&#038;p=33', 0, 'employee', '', 0),
(34, 1, '2018-02-10 20:37:21', '2018-02-10 20:37:21', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas porta augue at odio iaculis, eu ullamcorper nibh sollicitudin. Quisque ultrices tellus et vehicula volutpat. Duis consequat nisi vitae eros semper lacinia. Duis malesuada finibus sapien sed facilisis. Suspendisse sit amet diam eget lorem molestie tincidunt. Etiam tempor dapibus ipsum faucibus malesuada. Sed vel malesuada nisl. Mauris consectetur nunc varius ex pretium, non dapibus orci vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam erat volutpat. Donec neque justo, malesuada malesuada lacinia ac, vehicula sit amet est.', 'Employee 1', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-02-10 20:37:21', '2018-02-10 20:37:21', '', 21, 'http://fpwd2.local/21-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-02-10 20:39:27', '2018-02-10 20:39:27', 'Praesent in odio placerat, blandit ipsum et, laoreet tellus. Donec dapibus est non nibh semper, nec elementum risus porta. Aenean lobortis ipsum varius neque accumsan, fermentum tincidunt risus sagittis. In hac habitasse platea dictumst. Phasellus eleifend, diam a bibendum aliquet, lacus elit efficitur tellus, sit amet elementum lacus sem at massa. Vivamus at massa eget quam porta efficitur. Quisque vulputate lectus a tellus dignissim, vitae sagittis ipsum malesuada.', 'Doris Hopkins', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-02-10 20:39:27', '2018-02-10 20:39:27', '', 33, 'http://fpwd2.local/33-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-02-10 20:40:24', '2018-02-10 20:40:24', 'Curabitur posuere tellus et nibh imperdiet imperdiet vitae vitae mauris. Integer at arcu felis. Vivamus sagittis posuere ligula vitae facilisis. Morbi eleifend augue turpis, sit amet dapibus sapien dictum non. Morbi bibendum feugiat sapien, quis mattis lorem maximus ac. In cursus augue ac ante blandit hendrerit. Ut eget consequat sapien. Praesent condimentum massa eget facilisis aliquet. Phasellus bibendum metus vel imperdiet dictum. Sed tristique egestas elit, et iaculis eros efficitur facilisis. Suspendisse potenti. Duis gravida magna quis sem condimentum, quis mollis nisi faucibus.\r\n\r\nPhasellus cursus nunc sit amet sapien porttitor, vel porttitor orci pretium. Donec eget ex sodales, elementum eros in, malesuada tortor. Praesent egestas ante quam, et pellentesque nulla aliquet in. Aliquam erat volutpat. Vivamus blandit dui id dui aliquam vulputate. Sed laoreet euismod nibh nec venenatis. Pellentesque vestibulum iaculis ipsum sit amet tempor. Nullam tincidunt vulputate ante. Ut imperdiet nisl ipsum, ac vestibulum lectus porta vel. Etiam ut mauris eros. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur egestas justo sed lorem auctor vulputate. Duis ut accumsan justo. Aliquam erat volutpat. Nunc consequat, sem nec semper commodo, orci nisi vehicula lorem, eu efficitur dolor tellus at mi. Vestibulum fermentum tincidunt urna, non tempus massa luctus eget.', 'Post 2', '', 'publish', 'open', 'open', '', 'post-2', '', '', '2018-02-10 20:40:24', '2018-02-10 20:40:24', '', 0, 'http://fpwd2.local/?p=36', 0, 'post', '', 0),
(37, 1, '2018-02-10 20:40:24', '2018-02-10 20:40:24', 'Curabitur posuere tellus et nibh imperdiet imperdiet vitae vitae mauris. Integer at arcu felis. Vivamus sagittis posuere ligula vitae facilisis. Morbi eleifend augue turpis, sit amet dapibus sapien dictum non. Morbi bibendum feugiat sapien, quis mattis lorem maximus ac. In cursus augue ac ante blandit hendrerit. Ut eget consequat sapien. Praesent condimentum massa eget facilisis aliquet. Phasellus bibendum metus vel imperdiet dictum. Sed tristique egestas elit, et iaculis eros efficitur facilisis. Suspendisse potenti. Duis gravida magna quis sem condimentum, quis mollis nisi faucibus.\r\n\r\nPhasellus cursus nunc sit amet sapien porttitor, vel porttitor orci pretium. Donec eget ex sodales, elementum eros in, malesuada tortor. Praesent egestas ante quam, et pellentesque nulla aliquet in. Aliquam erat volutpat. Vivamus blandit dui id dui aliquam vulputate. Sed laoreet euismod nibh nec venenatis. Pellentesque vestibulum iaculis ipsum sit amet tempor. Nullam tincidunt vulputate ante. Ut imperdiet nisl ipsum, ac vestibulum lectus porta vel. Etiam ut mauris eros. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur egestas justo sed lorem auctor vulputate. Duis ut accumsan justo. Aliquam erat volutpat. Nunc consequat, sem nec semper commodo, orci nisi vehicula lorem, eu efficitur dolor tellus at mi. Vestibulum fermentum tincidunt urna, non tempus massa luctus eget.', 'Post 2', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-02-10 20:40:24', '2018-02-10 20:40:24', '', 36, 'http://fpwd2.local/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-02-10 20:40:34', '2018-02-10 20:40:34', 'Praesent in odio placerat, blandit ipsum et, laoreet tellus. Donec dapibus est non nibh semper, nec elementum risus porta. Aenean lobortis ipsum varius neque accumsan, fermentum tincidunt risus sagittis. In hac habitasse platea dictumst. Phasellus eleifend, diam a bibendum aliquet, lacus elit efficitur tellus, sit amet elementum lacus sem at massa. Vivamus at massa eget quam porta efficitur. Quisque vulputate lectus a tellus dignissim, vitae sagittis ipsum malesuada.', 'Doris Hopkins', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-02-10 20:40:34', '2018-02-10 20:40:34', '', 33, 'http://fpwd2.local/33-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-02-10 20:41:41', '2018-02-10 20:41:41', 'Morbi a neque lectus. Aliquam tristique, justo vel accumsan sollicitudin, massa ligula commodo nisi, eu mollis nulla turpis ut dui. Cras ac facilisis metus, vel placerat sem. Sed hendrerit maximus sagittis. Quisque massa mi, blandit sit amet efficitur in, interdum at dui. Mauris arcu arcu, ultrices in laoreet a, blandit nec ligula. Pellentesque vel euismod dui. Phasellus imperdiet in nisi id pellentesque. Proin vel augue volutpat, tincidunt nunc non, ornare ipsum. Aenean vel rhoncus diam. Donec efficitur vestibulum libero ac finibus. Proin a dapibus orci. Integer vehicula, nunc eget posuere semper, metus justo euismod felis, at blandit turpis elit vitae erat. Aliquam erat volutpat. Integer ullamcorper, lacus eget feugiat varius, magna eros porta eros, eget maximus quam lacus id ante. Maecenas blandit neque at eros vehicula congue.', 'Post 3', '', 'publish', 'open', 'open', '', 'post-3', '', '', '2018-02-10 20:41:41', '2018-02-10 20:41:41', '', 0, 'http://fpwd2.local/?p=39', 0, 'post', '', 0),
(40, 1, '2018-02-10 20:41:41', '2018-02-10 20:41:41', 'Morbi a neque lectus. Aliquam tristique, justo vel accumsan sollicitudin, massa ligula commodo nisi, eu mollis nulla turpis ut dui. Cras ac facilisis metus, vel placerat sem. Sed hendrerit maximus sagittis. Quisque massa mi, blandit sit amet efficitur in, interdum at dui. Mauris arcu arcu, ultrices in laoreet a, blandit nec ligula. Pellentesque vel euismod dui. Phasellus imperdiet in nisi id pellentesque. Proin vel augue volutpat, tincidunt nunc non, ornare ipsum. Aenean vel rhoncus diam. Donec efficitur vestibulum libero ac finibus. Proin a dapibus orci. Integer vehicula, nunc eget posuere semper, metus justo euismod felis, at blandit turpis elit vitae erat. Aliquam erat volutpat. Integer ullamcorper, lacus eget feugiat varius, magna eros porta eros, eget maximus quam lacus id ante. Maecenas blandit neque at eros vehicula congue.', 'Post 3', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-02-10 20:41:41', '2018-02-10 20:41:41', '', 39, 'http://fpwd2.local/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-02-10 20:42:35', '2018-02-10 20:42:35', 'Maecenas vulputate nulla nulla, eu semper enim viverra in. Mauris sodales molestie bibendum. Quisque eu vehicula mi. Ut varius maximus nisl, ut pellentesque enim cursus vitae. Nunc sed dui tellus. In pulvinar lacus in finibus sagittis. Nam a interdum tortor, sed porttitor lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque in porta lectus. Nam placerat, urna eget finibus sagittis, risus lorem auctor neque, quis egestas felis est ac orci. Sed a purus lacinia metus lacinia mattis.', 'Lester Vierra', '', 'publish', 'closed', 'closed', '', 'lester-vierra', '', '', '2018-02-10 20:43:30', '2018-02-10 20:43:30', '', 0, 'http://fpwd2.local/?post_type=employee&#038;p=41', 0, 'employee', '', 0),
(42, 1, '2018-02-10 20:42:35', '2018-02-10 20:42:35', '', 'Lester Vierra', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-02-10 20:42:35', '2018-02-10 20:42:35', '', 41, 'http://fpwd2.local/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-02-10 20:42:56', '2018-02-10 20:42:56', 'Maecenas vulputate nulla nulla, eu semper enim viverra in. Mauris sodales molestie bibendum. Quisque eu vehicula mi. Ut varius maximus nisl, ut pellentesque enim cursus vitae. Nunc sed dui tellus. In pulvinar lacus in finibus sagittis. Nam a interdum tortor, sed porttitor lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque in porta lectus. Nam placerat, urna eget finibus sagittis, risus lorem auctor neque, quis egestas felis est ac orci. Sed a purus lacinia metus lacinia mattis.', 'Lester Vierra', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-02-10 20:42:56', '2018-02-10 20:42:56', '', 41, 'http://fpwd2.local/41-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-02-10 20:43:21', '2018-02-10 20:43:21', 'Maecenas vulputate nulla nulla, eu semper enim viverra in. Mauris sodales molestie bibendum. Quisque eu vehicula mi. Ut varius maximus nisl, ut pellentesque enim cursus vitae. Nunc sed dui tellus. In pulvinar lacus in finibus sagittis. Nam a interdum tortor, sed porttitor lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque in porta lectus. Nam placerat, urna eget finibus sagittis, risus lorem auctor neque, quis egestas felis est ac orci. Sed a purus lacinia metus lacinia mattis.', 'Lester Vierra', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-02-10 20:43:21', '2018-02-10 20:43:21', '', 41, 'http://fpwd2.local/41-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-02-10 20:43:30', '2018-02-10 20:43:30', 'Maecenas vulputate nulla nulla, eu semper enim viverra in. Mauris sodales molestie bibendum. Quisque eu vehicula mi. Ut varius maximus nisl, ut pellentesque enim cursus vitae. Nunc sed dui tellus. In pulvinar lacus in finibus sagittis. Nam a interdum tortor, sed porttitor lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque in porta lectus. Nam placerat, urna eget finibus sagittis, risus lorem auctor neque, quis egestas felis est ac orci. Sed a purus lacinia metus lacinia mattis.', 'Lester Vierra', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-02-10 20:43:30', '2018-02-10 20:43:30', '', 41, 'http://fpwd2.local/41-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-02-10 23:06:40', '2018-02-10 23:06:40', 'Ut consequat tincidunt quam, nec facilisis nunc aliquet vitae. Quisque at metus vestibulum, vulputate turpis non, rutrum odio. Phasellus in semper arcu. Duis varius, tellus in vestibulum cursus, tellus orci laoreet enim, in tincidunt nulla magna vel sem. Sed libero ex, laoreet ut mauris non, iaculis mollis orci. Suspendisse id dolor in mi egestas malesuada. Suspendisse potenti. Phasellus hendrerit cursus lacinia. Maecenas et justo nisl. Proin lacinia fermentum tincidunt. Sed iaculis massa at risus accumsan, nec rutrum velit iaculis. Nam id viverra quam, sit amet euismod lacus. Praesent quam justo, viverra at euismod nec, dapibus quis odio. Donec quis scelerisque felis. Aenean vel ex massa.', 'Kermit Simpson', '', 'publish', 'closed', 'closed', '', 'kermit-simpson', '', '', '2018-02-10 23:06:52', '2018-02-10 23:06:52', '', 0, 'http://fpwd2.local/?post_type=employee&#038;p=46', 0, 'employee', '', 0),
(47, 1, '2018-02-10 23:06:40', '2018-02-10 23:06:40', '', 'Kermit Simpson', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-02-10 23:06:40', '2018-02-10 23:06:40', '', 46, 'http://fpwd2.local/46-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-02-10 23:06:52', '2018-02-10 23:06:52', 'Ut consequat tincidunt quam, nec facilisis nunc aliquet vitae. Quisque at metus vestibulum, vulputate turpis non, rutrum odio. Phasellus in semper arcu. Duis varius, tellus in vestibulum cursus, tellus orci laoreet enim, in tincidunt nulla magna vel sem. Sed libero ex, laoreet ut mauris non, iaculis mollis orci. Suspendisse id dolor in mi egestas malesuada. Suspendisse potenti. Phasellus hendrerit cursus lacinia. Maecenas et justo nisl. Proin lacinia fermentum tincidunt. Sed iaculis massa at risus accumsan, nec rutrum velit iaculis. Nam id viverra quam, sit amet euismod lacus. Praesent quam justo, viverra at euismod nec, dapibus quis odio. Donec quis scelerisque felis. Aenean vel ex massa.', 'Kermit Simpson', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-02-10 23:06:52', '2018-02-10 23:06:52', '', 46, 'http://fpwd2.local/46-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-02-10 23:35:19', '2018-02-10 23:35:19', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis magna sit amet magna gravida hendrerit. Donec ac ipsum vitae justo ullamcorper iaculis ut in orci. Maecenas lobortis augue sed ipsum lobortis lacinia. Suspendisse imperdiet ex ligula, faucibus tempor purus dignissim eget. Sed id risus ornare, scelerisque lacus quis, posuere enim. Phasellus ultricies sapien non tellus finibus pharetra. Nunc sagittis aliquet hendrerit.\r\n\r\nPellentesque iaculis tempor neque, mattis tempor velit ullamcorper ac. Integer tincidunt justo facilisis scelerisque egestas. Ut vitae urna a nulla tempus mattis ac at orci. Donec blandit volutpat mauris, nec pretium purus interdum quis. Donec pretium risus rhoncus mauris placerat, quis ullamcorper nunc volutpat. Nunc vel finibus arcu. Maecenas nec orci nunc. Sed ac leo nec nibh scelerisque congue sit amet vitae urna. Suspendisse imperdiet mauris tincidunt ipsum congue dignissim vel a dui.\r\n\r\nPraesent sit amet ex a velit lacinia facilisis. Mauris eu enim dui. Quisque facilisis orci quis arcu tincidunt, sit amet pulvinar dui venenatis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus nec est in mauris vehicula elementum. Nulla accumsan suscipit luctus. Morbi bibendum, ligula non pulvinar feugiat, sem enim dictum nisl, at convallis velit augue vitae odio. Sed ac mauris enim. Etiam eget sollicitudin ante, aliquam placerat ligula. Cras dignissim eleifend tristique. Aenean et libero sed magna gravida suscipit eu ut felis. Nullam eleifend enim tellus, ultrices imperdiet sem condimentum non. Vestibulum eros mi, tempus et metus ac, egestas mollis augue. Suspendisse potenti. Nulla vehicula libero lorem, quis congue nibh mattis eu.', 'Contact', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-02-10 23:35:19', '2018-02-10 23:35:19', '', 4, 'http://fpwd2.local/4-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `fpwd_termmeta`
--

CREATE TABLE `fpwd_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `fpwd_terms`
--

CREATE TABLE `fpwd_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `fpwd_terms`
--

INSERT INTO `fpwd_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `fpwd_term_relationships`
--

CREATE TABLE `fpwd_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `fpwd_term_relationships`
--

INSERT INTO `fpwd_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(26, 1, 0),
(36, 1, 0),
(39, 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `fpwd_term_taxonomy`
--

CREATE TABLE `fpwd_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `fpwd_term_taxonomy`
--

INSERT INTO `fpwd_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `fpwd_usermeta`
--

CREATE TABLE `fpwd_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `fpwd_usermeta`
--

INSERT INTO `fpwd_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'fpwd-admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'fpwd_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'fpwd_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"59e1adf99774287934a1ae9c2d2137f25ac37906324d66f422a5baf39b266968\";a:4:{s:10:\"expiration\";i:1518384459;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1518211659;}s:64:\"e263652dd697d44cb6842c1d0f214036db46689bfbdf1523ee82755151c6e3d8\";a:4:{s:10:\"expiration\";i:1518400853;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1518228053;}s:64:\"7a351f045bd86ff1c46880b729fb563456123a189c4067f628f3b0a53a03e878\";a:4:{s:10:\"expiration\";i:1518438279;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1518265479;}}'),
(17, 1, 'fpwd_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'fpwd_user-settings', 'libraryContent=browse'),
(20, 1, 'fpwd_user-settings-time', '1518213364');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `fpwd_users`
--

CREATE TABLE `fpwd_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `fpwd_users`
--

INSERT INTO `fpwd_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'fpwd-admin', '$P$Bn/fP1lANaa98Kn/Sdiy63fSX5txAr/', 'fpwd-admin', 'slasu92@gmail.com', '', '2018-02-09 21:27:21', '', 0, 'fpwd-admin');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `fpwd_commentmeta`
--
ALTER TABLE `fpwd_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `fpwd_comments`
--
ALTER TABLE `fpwd_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `fpwd_links`
--
ALTER TABLE `fpwd_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `fpwd_options`
--
ALTER TABLE `fpwd_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `fpwd_postmeta`
--
ALTER TABLE `fpwd_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `fpwd_posts`
--
ALTER TABLE `fpwd_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `fpwd_termmeta`
--
ALTER TABLE `fpwd_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `fpwd_terms`
--
ALTER TABLE `fpwd_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `fpwd_term_relationships`
--
ALTER TABLE `fpwd_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `fpwd_term_taxonomy`
--
ALTER TABLE `fpwd_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `fpwd_usermeta`
--
ALTER TABLE `fpwd_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `fpwd_users`
--
ALTER TABLE `fpwd_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `fpwd_commentmeta`
--
ALTER TABLE `fpwd_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `fpwd_comments`
--
ALTER TABLE `fpwd_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `fpwd_links`
--
ALTER TABLE `fpwd_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `fpwd_options`
--
ALTER TABLE `fpwd_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT dla tabeli `fpwd_postmeta`
--
ALTER TABLE `fpwd_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=461;

--
-- AUTO_INCREMENT dla tabeli `fpwd_posts`
--
ALTER TABLE `fpwd_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT dla tabeli `fpwd_termmeta`
--
ALTER TABLE `fpwd_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `fpwd_terms`
--
ALTER TABLE `fpwd_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `fpwd_term_taxonomy`
--
ALTER TABLE `fpwd_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `fpwd_usermeta`
--
ALTER TABLE `fpwd_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT dla tabeli `fpwd_users`
--
ALTER TABLE `fpwd_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
