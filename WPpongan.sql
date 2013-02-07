-- phpMyAdmin SQL Dump
-- version 3.5.3
-- http://www.phpmyadmin.net
--
-- Client: smysql
-- Généré le: Jeu 07 Février 2013 à 17:18
-- Version du serveur: 5.5.24-4-log
-- Version de PHP: 5.3.10-1ubuntu3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `WPpongan`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Monsieur WordPress', '', 'http://wordpress.org/', '', '2012-11-27 15:55:03', '2012-11-27 15:55:03', 'Bonjour, ceci est un commentaire.<br /> Pour supprimer un commentaire, connectez-vous, et affichez les commentaires de cet article. Vous pourrez alors les modifier ou les supprimer.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_comments`
--

CREATE TABLE IF NOT EXISTS `wp_festival_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_festival_comments`
--

INSERT INTO `wp_festival_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Monsieur WordPress', '', 'http://wordpress.org/', '', '2013-01-15 15:54:40', '2013-01-15 15:54:40', 'Bonjour, ceci est un commentaire.\nPour supprimer un commentaire, connectez-vous et affichez les commentaires de cet article. Vous pourrez alors les modifier ou les supprimer.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_links`
--

CREATE TABLE IF NOT EXISTS `wp_festival_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_options`
--

CREATE TABLE IF NOT EXISTS `wp_festival_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=401 ;

--
-- Contenu de la table `wp_festival_options`
--

INSERT INTO `wp_festival_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/~pongan/festival_cinema/wordpress', 'yes'),
(2, 'blogname', 'festival de films gays et lesbiens', 'yes'),
(3, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'philippe.pongan@cegetel.net', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '1', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'j F Y', 'yes'),
(23, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(24, 'links_updated_date_format', 'j F Y, G \\h i \\m\\i\\n', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:2:{i:0;s:19:"akismet/akismet.php";i:2;s:38:"meteor-slides/meteor-slides-plugin.php";}', 'yes'),
(36, 'home', 'http://localhost/~pongan/festival_cinema/wordpress', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '1', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', 'a:3:{i:0;s:91:"/mnt/home/pongan/public_html/festival_cinema/wordpress/wp-content/themes/Festival/style.css";i:1;s:93:"/mnt/home/pongan/public_html/festival_cinema/wordpress/wp-content/plugins/akismet/akismet.php";i:3;s:0:"";}', 'no'),
(44, 'template', 'twentytwelve', 'yes'),
(45, 'stylesheet', 'Festival', 'yes'),
(46, 'comment_whitelist', '1', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '0', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '22441', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '1', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'page', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '0', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '0', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:2:{i:2;a:3:{s:5:"title";s:9:"Programme";s:4:"text";s:1728:"<div id="programme">\r\n  <div id="prog-list">\r\n    <div class="prog-item">\r\n      <div class="font-orange prog-date">\r\nVENDREDI 24 SEPTEMBRE : 20h00</div>\r\n        <div class="prog-text">\r\nSoirée d’ouverture : <a href="http://localhost/~pongan/festival_cinema/wordpress/?cat=4">séance de courts métrages</a><br />\r\nRencontre-débat avec un réalisateur.\r\n        </div>\r\n      </div>\r\n    <div class="prog-item">\r\n      <div class="font-green prog-date">\r\nSAMEDI 25 SEPTEMBRE : 19h30 </div>\r\n        <div class="prog-text">\r\nDocumentaire :<br />\r\n<a href="http://localhost/~pongan/festival_cinema/wordpress/?p=47">It’s elementary, talking about gays</a> issues in school<br />\r\n(C’est élémentaire - Parler de l’homosexualité à l’école)<br />\r\nRencontre-débat avec le Groupe Action Gay & Lesbien – Loiret<br />\r\nsur les interventions en milieu scolaire.\r\n        </div>\r\n      </div>\r\n    <div class="prog-item">\r\n      <div class="font-green prog-date">\r\nSAMEDI 25 SEPTEMBRE : 21h45 </div>\r\n        <div class="prog-text">\r\nFiction :<a href="http://localhost/~pongan/festival_cinema/wordpress/?p=50"> Ander  </a>\r\n        </div>\r\n      </div>\r\n    <div class="prog-item">\r\n      <div class="font-turquoise prog-date">\r\nDIMANCHE 26 SEPTEMBRE : 16h00 </div>\r\n        <div class="prog-text">\r\nFiction : <a href="http://localhost/~pongan/festival_cinema/wordpress/?p=53">El niño pez</a>\r\n        </div>\r\n      </div>\r\n    <div class="prog-item">\r\n      <div class="font-turquoise prog-date">\r\nDIMANCHE 26 SEPTEMBRE : 18h00 </div>\r\n        <div class="prog-text">\r\nFiction :<a href="http://localhost/~pongan/festival_cinema/wordpress/?p=56 "> I can’t think straight</a>\r\n  \r\n      </div>\r\n    <//div>\r\n</div>\r\n";s:6:"filter";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:1:{s:30:"easing-slider/easingslider.php";s:20:"unset_easing_options";}', 'no'),
(86, 'timezone_string', '', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '7', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '22441', 'yes'),
(92, 'wp_festival_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:1:{i:0;s:6:"text-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:4:{i:1360252496;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1360252568;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1360252771;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:3:"3.5";s:12:"last_checked";i:1360236195;}', 'yes'),
(102, '_transient_random_seed', '913ca9f11c9d0686e18dbc1cb91b64b4', 'yes'),
(103, 'auth_key', '[:}mMO24BK/.NvyT5l5!gx/M&k75|gAl<mQgbWBdp)tDXkz|9AR|`wm)`Z)i^~Xi', 'yes'),
(104, 'auth_salt', 'Y^/B=:ecmr7a&eA3u,*{jc[m@xS|a?ELRP4{stnCdCM6EDv~IW<j))QrN[|*Ih#+', 'yes'),
(105, 'logged_in_key', '.n]O#C2FRa=V1t[m7wW*wBdU:7^MJBc}ng+p6|V96jW5M96R2W%k$&{qW(}{;0Jw', 'yes'),
(106, 'logged_in_salt', 'p,_J(QkhGzy,0.sk@s<u@kE* KknC7z X_?o9jY6?}5w8,_xHbp$E m*@f^&V`zN', 'yes'),
(107, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1360236225;}', 'yes'),
(110, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1360236256;}', 'yes'),
(111, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:50:"http://localhost/~pongan/festival_cinema/wordpress";s:4:"link";s:126:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://localhost/~pongan/festival_cinema/wordpress/";s:3:"url";s:159:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost/~pongan/festival_cinema/wordpress/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:14:"Blog WordPress";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:46:"Autres actualités de WordPress (en français)";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(112, 'nonce_key', '|V##1J/ep{2[8C6.tOb#3>)vkY(R36P1$k_x}EZsj#Oyo<4O>-~eV0W?NQ6jb;k+', 'yes'),
(113, 'nonce_salt', 'hC6?g#Z++`S:pK&edzLHI9vv:([<gbhXiD8>}MU+1%|TwY/L~!BVZo7]<!VIiRt+', 'yes'),
(114, 'can_compress_scripts', '0', 'yes'),
(129, 'theme_mods_twentytwelve', 'a:2:{s:18:"nav_menu_locations";a:1:{s:7:"primary";i:6;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1358786432;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:7:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";i:6;s:6:"text-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(132, 'category_children', 'a:0:{}', 'yes'),
(133, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(179, 'current_theme', 'Festival', 'yes'),
(180, 'theme_mods_Festival', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:6;}}', 'yes'),
(181, 'theme_switched', '', 'yes'),
(244, 'recently_activated', 'a:2:{s:30:"easing-slider/easingslider.php";i:1360075069;s:19:"vslider/vslider.php";i:1360075052;}', 'yes'),
(258, '_site_transient_timeout_wporg_theme_feature_list', '1359487851', 'yes'),
(259, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes'),
(262, 'easingslider_version', '1.2.1', 'yes'),
(264, 'sImg1', 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/American-boy-11-300x200.png', 'yes'),
(265, 'sImg2', 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/37_it_s_still_elementary21-300x171.jpg', 'yes'),
(266, 'sImg3', 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/COWBOY-FOREVER1-300x199.jpg', 'yes'),
(267, 'sImg4', 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/Os-sapatos-de-Aristeu-11-300x199.jpg', 'yes'),
(268, 'sImg5', 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/Odile-1-300x203.jpg', 'yes'),
(269, 'sImg6', 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/OMAR_1-300x199.jpg', 'yes'),
(270, 'sImg7', 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/I_cant_think_straight_001-300x199.jpg', 'yes'),
(271, 'sImg8', 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/EL-NINO-PEZ-11-300x205.jpg', 'yes'),
(272, 'sImg9', 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/PAULINE_11-300x199.jpg', 'yes'),
(273, 'sImg10', 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/EN_COLO1-300x196.jpg', 'yes'),
(274, 'sImglink1', '', 'yes'),
(275, 'sImglink2', '', 'yes'),
(276, 'sImglink3', '', 'yes'),
(277, 'sImglink4', '', 'yes'),
(278, 'sImglink5', '', 'yes'),
(279, 'sImglink6', '', 'yes'),
(280, 'sImglink7', '', 'yes'),
(281, 'sImglink8', '', 'yes'),
(282, 'sImglink9', '', 'yes'),
(283, 'sImglink10', '', 'yes'),
(284, 'sPagination', 'yes', 'yes'),
(285, 'activation', 'disable', 'yes'),
(286, 'width', '480', 'yes'),
(287, 'height', '185', 'yes'),
(288, 'shadow', '', 'yes'),
(289, 'interval', '4000', 'yes'),
(290, 'transition', 'slide', 'yes'),
(291, 'bgcolour', 'fff', 'yes'),
(292, 'transpeed', '1200', 'yes'),
(293, 'bwidth', '3', 'yes'),
(294, 'bcolour', 'ccc', 'yes'),
(295, 'preload', 'indicator', 'yes'),
(296, 'start', '1', 'yes'),
(297, 'buttons', '', 'yes'),
(298, 'source', 'custom', 'yes'),
(299, 'featcat', '4', 'yes'),
(300, 'featpost', '5', 'yes'),
(301, 'padbottom', '0', 'yes'),
(302, 'padleft', '0', 'yes'),
(303, 'padright', '0', 'yes'),
(304, 'paddingtop', '0', 'yes'),
(305, 'shadowstyle', 'arc', 'yes'),
(306, 'paginationon', '', 'yes'),
(307, 'paginationoff', '', 'yes'),
(308, 'next', '', 'yes'),
(309, 'prev', '', 'yes'),
(310, 'pageposition', 'outside', 'yes'),
(311, 'pageside', 'left', 'yes'),
(312, 'permalink', '', 'yes'),
(313, 'jquery', 'true', 'yes'),
(322, 'vslider_support', '0', 'yes'),
(326, 'easingslider_upgrade_message', 'true', 'yes'),
(327, 'meteorslides_options', 'a:7:{s:18:"slideshow_quantity";s:2:"20";s:12:"slide_height";s:3:"150";s:11:"slide_width";s:3:"800";s:16:"transition_style";s:11:"scrollRight";s:16:"transition_speed";s:1:"1";s:14:"slide_duration";s:1:"2";s:20:"slideshow_navigation";s:7:"navboth";}', 'yes'),
(328, '_transient_timeout_settings_errors', '1360076370', 'no'),
(329, '_transient_settings_errors', 'a:1:{i:0;a:4:{s:7:"setting";s:7:"general";s:4:"code";s:16:"settings_updated";s:7:"message";s:22:"Options enregistrées.";s:4:"type";s:7:"updated";}}', 'no'),
(330, 'slideshow_children', 'a:0:{}', 'yes'),
(357, 'my-plugin-options', '', 'yes'),
(389, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1360279439', 'no'),
(390, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p>', 'no'),
(391, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1360279440', 'no'),
(392, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p></div>', 'no'),
(393, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1360279440', 'no'),
(394, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p></div>', 'no'),
(395, '_transient_timeout_plugin_slugs', '1360322651', 'no'),
(396, '_transient_plugin_slugs', 'a:5:{i:0;s:19:"akismet/akismet.php";i:1;s:30:"easing-slider/easingslider.php";i:2;s:9:"hello.php";i:3;s:38:"meteor-slides/meteor-slides-plugin.php";i:4;s:19:"vslider/vslider.php";}', 'no'),
(397, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1360279451', 'no'),
(398, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '', 'no'),
(399, '_site_transient_timeout_theme_roots', '1360238055', 'yes'),
(400, '_site_transient_theme_roots', 'a:4:{s:8:"Festival";s:7:"/themes";s:12:"twentyeleven";s:7:"/themes";s:9:"twentyten";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=454 ;

--
-- Contenu de la table `wp_festival_postmeta`
--

INSERT INTO `wp_festival_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(20, 7, '_edit_last', '1'),
(21, 7, '_edit_lock', '1360075079:1'),
(22, 7, '_wp_page_template', 'default'),
(32, 10, '_edit_last', '1'),
(33, 10, '_edit_lock', '1358768844:1'),
(34, 10, '_wp_page_template', 'default'),
(35, 12, '_edit_last', '1'),
(36, 12, '_edit_lock', '1360143227:1'),
(37, 12, '_wp_page_template', 'default'),
(38, 14, '_edit_last', '1'),
(39, 14, '_wp_page_template', 'default'),
(40, 14, '_edit_lock', '1360239407:1'),
(121, 31, '_menu_item_type', 'post_type'),
(122, 31, '_menu_item_menu_item_parent', '0'),
(123, 31, '_menu_item_object_id', '14'),
(124, 31, '_menu_item_object', 'page'),
(125, 31, '_menu_item_target', ''),
(126, 31, '_menu_item_classes', 'a:1:{i:0;s:9:"fg-violet";}'),
(127, 31, '_menu_item_xfn', ''),
(128, 31, '_menu_item_url', ''),
(130, 32, '_menu_item_type', 'post_type'),
(131, 32, '_menu_item_menu_item_parent', '0'),
(132, 32, '_menu_item_object_id', '12'),
(133, 32, '_menu_item_object', 'page'),
(134, 32, '_menu_item_target', ''),
(135, 32, '_menu_item_classes', 'a:1:{i:0;s:12:"fg-bleuFonce";}'),
(136, 32, '_menu_item_xfn', ''),
(137, 32, '_menu_item_url', ''),
(139, 33, '_menu_item_type', 'post_type'),
(140, 33, '_menu_item_menu_item_parent', '0'),
(141, 33, '_menu_item_object_id', '10'),
(142, 33, '_menu_item_object', 'page'),
(143, 33, '_menu_item_target', ''),
(144, 33, '_menu_item_classes', 'a:1:{i:0;s:7:"fg-vert";}'),
(145, 33, '_menu_item_xfn', ''),
(146, 33, '_menu_item_url', ''),
(148, 34, '_menu_item_type', 'post_type'),
(149, 34, '_menu_item_menu_item_parent', '0'),
(150, 34, '_menu_item_object_id', '7'),
(151, 34, '_menu_item_object', 'page'),
(152, 34, '_menu_item_target', ''),
(153, 34, '_menu_item_classes', 'a:1:{i:0;s:8:"fg-rouge";}'),
(154, 34, '_menu_item_xfn', ''),
(155, 34, '_menu_item_url', ''),
(157, 35, '_menu_item_type', 'taxonomy'),
(158, 35, '_menu_item_menu_item_parent', '0'),
(159, 35, '_menu_item_object_id', '4'),
(160, 35, '_menu_item_object', 'category'),
(161, 35, '_menu_item_target', ''),
(162, 35, '_menu_item_classes', 'a:1:{i:0;s:8:"fg-jaune";}'),
(163, 35, '_menu_item_xfn', ''),
(164, 35, '_menu_item_url', ''),
(166, 36, '_menu_item_type', 'taxonomy'),
(167, 36, '_menu_item_menu_item_parent', '0'),
(168, 36, '_menu_item_object_id', '3'),
(169, 36, '_menu_item_object', 'category'),
(170, 36, '_menu_item_target', ''),
(171, 36, '_menu_item_classes', 'a:1:{i:0;s:9:"fg-orange";}'),
(172, 36, '_menu_item_xfn', ''),
(173, 36, '_menu_item_url', ''),
(175, 37, '_edit_last', '1'),
(176, 37, '_edit_lock', '1358769295:1'),
(179, 39, '_edit_last', '1'),
(180, 39, '_edit_lock', '1358870035:1'),
(183, 42, '_wp_attached_file', '2013/01/EN_COLO1.jpg'),
(184, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:327;s:4:"file";s:20:"2013/01/EN_COLO1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"EN_COLO1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"EN_COLO1-300x196.jpg";s:5:"width";i:300;s:6:"height";i:196;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:2.7999999999999998;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1243723185;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"48";s:3:"iso";s:4:"4000";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";}}'),
(185, 39, '_thumbnail_id', '42'),
(186, 39, 'annee', '2009'),
(187, 39, 'pays', 'France'),
(188, 39, 'duree', '8 minutes'),
(189, 39, 'interprete', 'Mathieu, Maxime'),
(190, 39, 'réalisateur', 'Pascal-Alex Vincent'),
(191, 39, 'prix', 'Lauréat du concours "Jeune et homo sous le regard des autres"'),
(194, 44, '_edit_last', '1'),
(195, 44, '_edit_lock', '1358870068:1'),
(196, 45, '_wp_attached_file', '2013/01/PAULINE_11.jpg'),
(197, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:333;s:4:"file";s:22:"2013/01/PAULINE_11.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"PAULINE_11-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"PAULINE_11-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:3.5;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1242468669;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"500";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:0:"";}}'),
(198, 44, '_thumbnail_id', '45'),
(199, 44, 'annee', '2009'),
(200, 44, 'duree', '7 minutes'),
(201, 44, 'interprete', 'Pauline'),
(202, 44, 'pays', 'France'),
(203, 44, 'prix', 'Lauréat du concours "Jeune et homo sous le regard des autres"'),
(204, 44, 'réalisateur', 'Céline Sciama'),
(207, 47, '_edit_last', '1'),
(208, 47, '_edit_lock', '1359390675:1'),
(209, 48, '_wp_attached_file', '2013/01/37_it_s_still_elementary1.jpg'),
(210, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:285;s:4:"file";s:37:"2013/01/37_it_s_still_elementary1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"37_it_s_still_elementary1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"37_it_s_still_elementary1-300x171.jpg";s:5:"width";i:300;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(211, 47, '_thumbnail_id', '48'),
(212, 47, 'annee', '1996'),
(213, 47, 'duree', '01h20'),
(214, 47, 'pays', 'Etats-Unis'),
(215, 47, 'réalisateur', 'Debra chasnoff'),
(216, 47, 'genre', 'Documentaire'),
(219, 50, '_edit_last', '1'),
(220, 50, '_edit_lock', '1359390926:1'),
(221, 51, '_wp_attached_file', '2013/01/ANDER11.jpg'),
(222, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:281;s:4:"file";s:19:"2013/01/ANDER11.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"ANDER11-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"ANDER11-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(223, 50, '_thumbnail_id', '51'),
(224, 50, 'annee', '2009'),
(225, 50, 'duree', '02h08 - VOSTF'),
(226, 50, 'interprete', 'Josean Bengoetxea, Eriz Alberdi,Christian Esquive'),
(227, 50, 'pays', 'Espagne'),
(228, 50, 'prix', 'Prix C.I.C.A.E – Festival International de Berlin (2009)\r\nViolette d’or du meilleur film – Festival Cinespaña - Toulouse (2009)\r\nGrand prix du jury – Festival Cinehorizontes (2009)'),
(229, 50, 'réalisateur', 'Roberto Caston'),
(232, 53, '_edit_last', '1'),
(233, 53, '_edit_lock', '1359391097:1'),
(234, 54, '_wp_attached_file', '2013/01/EL-NINO-PEZ-11.jpg'),
(235, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:342;s:4:"file";s:26:"2013/01/EL-NINO-PEZ-11.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"EL-NINO-PEZ-11-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"EL-NINO-PEZ-11-300x205.jpg";s:5:"width";i:300;s:6:"height";i:205;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(236, 53, '_thumbnail_id', '54'),
(237, 53, 'annee', '2008'),
(238, 53, 'duree', '01h36 - VOSTF'),
(239, 53, 'interprete', 'Inés Efron, Mariela Vitale, Pep Munne'),
(240, 53, 'pays', 'Argentine'),
(241, 53, 'réalisateur', 'Lucía Puenzo'),
(244, 56, '_edit_last', '1'),
(245, 56, '_edit_lock', '1359391192:1'),
(246, 57, '_wp_attached_file', '2013/01/I_cant_think_straight_001.jpg'),
(247, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:333;s:4:"file";s:37:"2013/01/I_cant_think_straight_001.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"I_cant_think_straight_001-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"I_cant_think_straight_001-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(248, 56, '_thumbnail_id', '57'),
(249, 56, 'annee', '2007'),
(250, 56, 'duree', '01h20 - VOSTF'),
(251, 56, 'genre', 'Comédie romantique'),
(252, 56, 'interprete', 'Lisa Ray, Sheetal Sheth, Antonia Frering'),
(253, 56, 'pays', 'Grande Bretagne'),
(254, 56, 'prix', 'Meilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)'),
(255, 56, 'réalisateur', 'Shamim Sarif'),
(258, 59, '_edit_last', '1'),
(259, 59, '_edit_lock', '1358869868:1'),
(260, 60, '_wp_attached_file', '2013/01/OMAR_1.jpg'),
(261, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:333;s:4:"file";s:18:"2013/01/OMAR_1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"OMAR_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"OMAR_1-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:4;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1243445020;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"180";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";}}'),
(262, 59, '_thumbnail_id', '60'),
(263, 59, 'annee', '2009'),
(264, 59, 'duree', '9 minutes'),
(265, 59, 'pays', 'France'),
(266, 59, 'prix', 'Lauréat du concours "jeune et homo sous le regard des autres"'),
(267, 59, 'réalisateur', 'Sébastien Gabriel'),
(274, 64, '_edit_last', '1'),
(275, 64, '_edit_lock', '1358869857:1'),
(276, 65, '_wp_attached_file', '2013/01/Odile-1.jpg'),
(277, 65, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:339;s:4:"file";s:19:"2013/01/Odile-1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"Odile-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"Odile-1-300x203.jpg";s:5:"width";i:300;s:6:"height";i:203;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(278, 64, '_thumbnail_id', '65'),
(279, 64, 'annee', '206'),
(280, 64, 'duree', '10 minutes'),
(281, 64, 'pays', 'France'),
(282, 64, 'réalisateur', 'Bénédicte Delgéhier'),
(285, 67, '_edit_last', '1'),
(286, 67, '_edit_lock', '1358869847:1'),
(287, 68, '_wp_attached_file', '2013/01/Os-sapatos-de-Aristeu1.jpg'),
(288, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:120;s:6:"height";i:80;s:4:"file";s:34:"2013/01/Os-sapatos-de-Aristeu1.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";d:4;s:6:"credit";s:0:"";s:6:"camera";s:26:"Canon EOS DIGITAL REBEL XT";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1161573055;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"75";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";}}'),
(289, 69, '_wp_attached_file', '2013/01/Os-sapatos-de-Aristeu-11.jpg'),
(290, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:333;s:4:"file";s:36:"2013/01/Os-sapatos-de-Aristeu-11.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"Os-sapatos-de-Aristeu-11-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"Os-sapatos-de-Aristeu-11-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:4;s:6:"credit";s:0:"";s:6:"camera";s:26:"Canon EOS DIGITAL REBEL XT";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1161573055;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"75";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";}}'),
(291, 67, '_thumbnail_id', '69'),
(292, 67, 'duree', '17 minutes - VOSTF'),
(293, 67, 'annee', '2008'),
(294, 67, 'pays', 'Brésil'),
(295, 67, 'réalisateur', 'René Guerra Luiz'),
(298, 71, '_edit_last', '1'),
(299, 71, '_edit_lock', '1358869672:1'),
(300, 72, '_wp_attached_file', '2013/01/COWBOY-FOREVER1.jpg'),
(301, 72, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:333;s:4:"file";s:27:"2013/01/COWBOY-FOREVER1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"COWBOY-FOREVER1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"COWBOY-FOREVER1-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:5.5999999999999996;s:6:"credit";s:0:"";s:6:"camera";s:13:"Canon EOS 30D";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1153563697;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"110";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";}}'),
(302, 71, '_thumbnail_id', '72'),
(303, 71, 'annee', '2006'),
(304, 71, 'duree', '26 minutes'),
(305, 71, 'pays', 'France'),
(306, 71, 'réalisateur', 'Jean Baptiste Erreca'),
(309, 74, '_edit_last', '1'),
(310, 74, '_edit_lock', '1359476859:1'),
(311, 75, '_wp_attached_file', '2013/01/American-boy-11.png'),
(312, 75, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:334;s:4:"file";s:27:"2013/01/American-boy-11.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"American-boy-11-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"American-boy-11-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(313, 74, '_thumbnail_id', '75'),
(314, 74, 'annee', '2008'),
(315, 74, 'duree', '4 minutes'),
(316, 74, 'pays', 'France'),
(317, 74, 'realisateur', 'Patricia & Colette'),
(320, 2, '_wp_trash_meta_status', 'publish'),
(321, 2, '_wp_trash_meta_time', '1358786550'),
(322, 92, '_wp_attached_file', '2013/01/37_it_s_still_elementary11.jpg'),
(323, 92, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:285;s:4:"file";s:38:"2013/01/37_it_s_still_elementary11.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"37_it_s_still_elementary11-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:38:"37_it_s_still_elementary11-300x171.jpg";s:5:"width";i:300;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(324, 93, '_wp_attached_file', '2013/01/37_it_s_still_elementary2.jpg'),
(325, 93, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:285;s:4:"file";s:37:"2013/01/37_it_s_still_elementary2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"37_it_s_still_elementary2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"37_it_s_still_elementary2-300x171.jpg";s:5:"width";i:300;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(326, 94, '_wp_attached_file', '2013/01/37_it_s_still_elementary21.jpg'),
(327, 94, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:285;s:4:"file";s:38:"2013/01/37_it_s_still_elementary21.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"37_it_s_still_elementary21-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:38:"37_it_s_still_elementary21-300x171.jpg";s:5:"width";i:300;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(328, 95, '_wp_attached_file', '2013/01/37_it_s_still_elementary22.jpg'),
(329, 95, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:285;s:4:"file";s:38:"2013/01/37_it_s_still_elementary22.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"37_it_s_still_elementary22-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:38:"37_it_s_still_elementary22-300x171.jpg";s:5:"width";i:300;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(330, 96, '_wp_attached_file', '2013/01/ANDER12.jpg'),
(331, 96, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:281;s:4:"file";s:19:"2013/01/ANDER12.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"ANDER12-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"ANDER12-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(336, 99, '_thumbnail_id', '95'),
(337, 99, '_edit_last', '1'),
(338, 99, '_edit_lock', '1359477214:1'),
(339, 100, '_thumbnail_id', '75'),
(340, 100, '_edit_last', '1'),
(341, 100, '_edit_lock', '1359477227:1'),
(342, 101, '_thumbnail_id', '96'),
(343, 101, '_edit_last', '1'),
(344, 101, '_edit_lock', '1359477241:1'),
(345, 102, '_thumbnail_id', '72'),
(346, 102, '_edit_last', '1'),
(347, 102, '_edit_lock', '1359477254:1'),
(348, 103, '_thumbnail_id', '69'),
(349, 103, '_edit_last', '1'),
(350, 103, '_edit_lock', '1359477285:1'),
(351, 103, '_wp_trash_meta_status', 'publish'),
(352, 103, '_wp_trash_meta_time', '1359478220'),
(353, 102, '_wp_trash_meta_status', 'publish'),
(354, 102, '_wp_trash_meta_time', '1359478222'),
(355, 100, '_wp_trash_meta_status', 'publish'),
(356, 100, '_wp_trash_meta_time', '1359478225'),
(357, 101, '_wp_trash_meta_status', 'publish'),
(358, 101, '_wp_trash_meta_time', '1359478227'),
(359, 99, '_wp_trash_meta_status', 'publish'),
(360, 99, '_wp_trash_meta_time', '1359478229'),
(361, 107, '_wp_attached_file', '2013/01/37_it_s_still_elementary3.jpg'),
(362, 107, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:228;s:4:"file";s:37:"2013/01/37_it_s_still_elementary3.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"37_it_s_still_elementary3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"37_it_s_still_elementary3-300x171.jpg";s:5:"width";i:300;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-slide";a:4:{s:4:"file";s:37:"37_it_s_still_elementary3-200x228.jpg";s:5:"width";i:200;s:6:"height";i:228;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-slide-thumb";a:4:{s:4:"file";s:37:"37_it_s_still_elementary3-250x142.jpg";s:5:"width";i:250;s:6:"height";i:142;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(363, 108, '_wp_attached_file', '2013/01/37_it_s_still_elementary4.jpg'),
(364, 108, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:228;s:4:"file";s:37:"2013/01/37_it_s_still_elementary4.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"37_it_s_still_elementary4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"37_it_s_still_elementary4-300x171.jpg";s:5:"width";i:300;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-slide";a:4:{s:4:"file";s:37:"37_it_s_still_elementary4-200x228.jpg";s:5:"width";i:200;s:6:"height";i:228;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-slide-thumb";a:4:{s:4:"file";s:37:"37_it_s_still_elementary4-250x142.jpg";s:5:"width";i:250;s:6:"height";i:142;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(366, 106, '_edit_last', '1'),
(367, 106, '_edit_lock', '1359478337:1'),
(368, 106, '_thumbnail_id', '108'),
(369, 106, '_wp_trash_meta_status', 'publish'),
(370, 106, '_wp_trash_meta_time', '1359478485'),
(371, 110, '_wp_attached_file', '2013/01/37_it_s_still_elementary5.jpg'),
(372, 110, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:228;s:4:"file";s:37:"2013/01/37_it_s_still_elementary5.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"37_it_s_still_elementary5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"37_it_s_still_elementary5-300x171.jpg";s:5:"width";i:300;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-slide-thumb";a:4:{s:4:"file";s:37:"37_it_s_still_elementary5-250x142.jpg";s:5:"width";i:250;s:6:"height";i:142;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(373, 111, '_wp_attached_file', '2013/01/American-boy1.png'),
(374, 111, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:901;s:6:"height";i:601;s:4:"file";s:25:"2013/01/American-boy1.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"American-boy1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:25:"American-boy1-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"featured-slide";a:4:{s:4:"file";s:25:"American-boy1-901x500.png";s:5:"width";i:901;s:6:"height";i:500;s:9:"mime-type";s:9:"image/png";}s:20:"featured-slide-thumb";a:4:{s:4:"file";s:25:"American-boy1-250x166.png";s:5:"width";i:250;s:6:"height";i:166;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"American-boy1-624x416.png";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(375, 112, '_wp_attached_file', '2013/01/ANDER13.jpg'),
(376, 112, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:19:"2013/01/ANDER13.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"ANDER13-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"ANDER13-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"ANDER13-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-slide";a:4:{s:4:"file";s:19:"ANDER13-940x500.jpg";s:5:"width";i:940;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-slide-thumb";a:4:{s:4:"file";s:19:"ANDER13-250x140.jpg";s:5:"width";i:250;s:6:"height";i:140;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:19:"ANDER13-624x351.jpg";s:5:"width";i:624;s:6:"height";i:351;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(377, 113, '_wp_attached_file', '2013/01/ANDER21.jpg'),
(378, 113, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:19:"2013/01/ANDER21.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"ANDER21-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"ANDER21-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"ANDER21-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-slide";a:4:{s:4:"file";s:19:"ANDER21-940x500.jpg";s:5:"width";i:940;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-slide-thumb";a:4:{s:4:"file";s:19:"ANDER21-250x140.jpg";s:5:"width";i:250;s:6:"height";i:140;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:19:"ANDER21-624x351.jpg";s:5:"width";i:624;s:6:"height";i:351;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(379, 114, '_wp_attached_file', '2013/01/COWBOY-FOREVER2.jpg'),
(380, 114, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2544;s:6:"height";i:1696;s:4:"file";s:27:"2013/01/COWBOY-FOREVER2.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"COWBOY-FOREVER2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"COWBOY-FOREVER2-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"COWBOY-FOREVER2-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-slide";a:4:{s:4:"file";s:27:"COWBOY-FOREVER2-940x500.jpg";s:5:"width";i:940;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-slide-thumb";a:4:{s:4:"file";s:27:"COWBOY-FOREVER2-250x166.jpg";s:5:"width";i:250;s:6:"height";i:166;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:27:"COWBOY-FOREVER2-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:5.5999999999999996;s:6:"credit";s:0:"";s:6:"camera";s:13:"Canon EOS 30D";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1153563697;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"110";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";}}'),
(381, 115, '_wp_attached_file', '2013/01/EL-NINO-PEZ-12.jpg'),
(382, 115, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4405;s:6:"height";i:3010;s:4:"file";s:26:"2013/01/EL-NINO-PEZ-12.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"EL-NINO-PEZ-12-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"EL-NINO-PEZ-12-300x204.jpg";s:5:"width";i:300;s:6:"height";i:204;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"EL-NINO-PEZ-12-1024x699.jpg";s:5:"width";i:1024;s:6:"height";i:699;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-slide";a:4:{s:4:"file";s:26:"EL-NINO-PEZ-12-940x500.jpg";s:5:"width";i:940;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-slide-thumb";a:4:{s:4:"file";s:26:"EL-NINO-PEZ-12-250x170.jpg";s:5:"width";i:250;s:6:"height";i:170;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:26:"EL-NINO-PEZ-12-624x426.jpg";s:5:"width";i:624;s:6:"height";i:426;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(383, 116, '_wp_attached_file', '2013/01/EL-NINO-PEZ-2.jpg'),
(384, 116, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2953;s:6:"height";i:4370;s:4:"file";s:25:"2013/01/EL-NINO-PEZ-2.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-2-202x300.jpg";s:5:"width";i:202;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"EL-NINO-PEZ-2-691x1024.jpg";s:5:"width";i:691;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-slide";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-2-940x500.jpg";s:5:"width";i:940;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-slide-thumb";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-2-250x369.jpg";s:5:"width";i:250;s:6:"height";i:369;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-2-624x923.jpg";s:5:"width";i:624;s:6:"height";i:923;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(385, 117, '_wp_attached_file', '2013/01/EN_COLOricco.jpg'),
(386, 117, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1337;s:6:"height";i:875;s:4:"file";s:24:"2013/01/EN_COLOricco.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"EN_COLOricco-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"EN_COLOricco-300x196.jpg";s:5:"width";i:300;s:6:"height";i:196;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"EN_COLOricco-1024x670.jpg";s:5:"width";i:1024;s:6:"height";i:670;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-slide";a:4:{s:4:"file";s:24:"EN_COLOricco-940x500.jpg";s:5:"width";i:940;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-slide-thumb";a:4:{s:4:"file";s:24:"EN_COLOricco-250x163.jpg";s:5:"width";i:250;s:6:"height";i:163;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"EN_COLOricco-624x408.jpg";s:5:"width";i:624;s:6:"height";i:408;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:2.7999999999999998;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1243723185;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"48";s:3:"iso";s:4:"4000";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";}}'),
(387, 118, '_wp_attached_file', '2013/01/I_cant_think_straight_0011.jpg'),
(388, 118, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2400;s:6:"height";i:1600;s:4:"file";s:38:"2013/01/I_cant_think_straight_0011.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"I_cant_think_straight_0011-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:38:"I_cant_think_straight_0011-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:39:"I_cant_think_straight_0011-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-slide";a:4:{s:4:"file";s:38:"I_cant_think_straight_0011-940x500.jpg";s:5:"width";i:940;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-slide-thumb";a:4:{s:4:"file";s:38:"I_cant_think_straight_0011-250x166.jpg";s:5:"width";i:250;s:6:"height";i:166;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:38:"I_cant_think_straight_0011-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(389, 119, '_wp_attached_file', '2013/01/ItsElementaryGBan.jpg'),
(390, 119, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:259;s:6:"height";i:221;s:4:"file";s:29:"2013/01/ItsElementaryGBan.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"ItsElementaryGBan-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-slide-thumb";a:4:{s:4:"file";s:29:"ItsElementaryGBan-250x213.jpg";s:5:"width";i:250;s:6:"height";i:213;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(391, 120, '_wp_attached_file', '2013/01/Odile-2.jpg'),
(392, 120, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3704;s:6:"height";i:2508;s:4:"file";s:19:"2013/01/Odile-2.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"Odile-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"Odile-2-300x203.jpg";s:5:"width";i:300;s:6:"height";i:203;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"Odile-2-1024x693.jpg";s:5:"width";i:1024;s:6:"height";i:693;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-slide";a:4:{s:4:"file";s:19:"Odile-2-940x500.jpg";s:5:"width";i:940;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-slide-thumb";a:4:{s:4:"file";s:19:"Odile-2-250x169.jpg";s:5:"width";i:250;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:19:"Odile-2-624x422.jpg";s:5:"width";i:624;s:6:"height";i:422;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(393, 121, '_wp_attached_file', '2013/01/OMAR_2.jpg'),
(394, 121, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1890;s:6:"height";i:1260;s:4:"file";s:18:"2013/01/OMAR_2.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"OMAR_2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"OMAR_2-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"OMAR_2-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-slide";a:4:{s:4:"file";s:18:"OMAR_2-940x500.jpg";s:5:"width";i:940;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-slide-thumb";a:4:{s:4:"file";s:18:"OMAR_2-250x166.jpg";s:5:"width";i:250;s:6:"height";i:166;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"OMAR_2-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:4;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1243445020;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"180";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";}}'),
(395, 122, '_wp_attached_file', '2013/01/PAULINE_12.jpg'),
(396, 122, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2362;s:6:"height";i:1575;s:4:"file";s:22:"2013/01/PAULINE_12.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"PAULINE_12-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"PAULINE_12-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"PAULINE_12-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-slide";a:4:{s:4:"file";s:22:"PAULINE_12-940x500.jpg";s:5:"width";i:940;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-slide-thumb";a:4:{s:4:"file";s:22:"PAULINE_12-250x166.jpg";s:5:"width";i:250;s:6:"height";i:166;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:22:"PAULINE_12-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:3.5;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1242468669;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"500";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:0:"";}}'),
(397, 123, '_thumbnail_id', '114'),
(398, 123, '_edit_last', '1'),
(399, 123, '_edit_lock', '1359478473:1'),
(400, 124, '_thumbnail_id', '118'),
(401, 124, '_edit_last', '1'),
(402, 124, '_edit_lock', '1360075774:1'),
(403, 126, '_wp_attached_file', '2013/01/region_centre.jpeg'),
(404, 126, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:211;s:6:"height";i:239;s:4:"file";s:26:"2013/01/region_centre.jpeg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"region_centre-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-slide";a:4:{s:4:"file";s:26:"region_centre-211x200.jpeg";s:5:"width";i:211;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(405, 127, '_wp_attached_file', '2013/01/orleans.jpeg'),
(406, 127, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:218;s:6:"height";i:231;s:4:"file";s:20:"2013/01/orleans.jpeg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"orleans-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-slide";a:4:{s:4:"file";s:20:"orleans-218x200.jpeg";s:5:"width";i:218;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(407, 128, '_wp_attached_file', '2013/01/france_bleu.jpeg'),
(408, 128, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:225;s:6:"height";i:225;s:4:"file";s:24:"2013/01/france_bleu.jpeg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"france_bleu-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-slide";a:4:{s:4:"file";s:24:"france_bleu-225x200.jpeg";s:5:"width";i:225;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(409, 129, '_wp_attached_file', '2013/01/icinema_des_carmes.jpeg'),
(410, 129, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:139;s:6:"height";i:109;s:4:"file";s:31:"2013/01/icinema_des_carmes.jpeg";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(411, 130, '_wp_attached_file', '2013/01/GAGL45.jpeg'),
(412, 130, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:160;s:6:"height";i:145;s:4:"file";s:19:"2013/01/GAGL45.jpeg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"GAGL45-150x145.jpeg";s:5:"width";i:150;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(413, 131, '_wp_attached_file', '2013/01/tetu.jpeg'),
(414, 131, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:364;s:6:"height";i:138;s:4:"file";s:17:"2013/01/tetu.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"tetu-150x138.jpeg";s:5:"width";i:150;s:6:"height";i:138;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"tetu-300x113.jpeg";s:5:"width";i:300;s:6:"height";i:113;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-slide-thumb";a:4:{s:4:"file";s:16:"tetu-250x94.jpeg";s:5:"width";i:250;s:6:"height";i:94;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(415, 132, '_wp_attached_file', '2013/01/muse.jpeg'),
(416, 132, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:184;s:6:"height";i:274;s:4:"file";s:17:"2013/01/muse.jpeg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"muse-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-slide";a:4:{s:4:"file";s:17:"muse-184x200.jpeg";s:5:"width";i:184;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(417, 133, '_wp_attached_file', '2013/01/logo-yagg.jpg'),
(418, 133, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:415;s:6:"height";i:415;s:4:"file";s:21:"2013/01/logo-yagg.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"logo-yagg-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"logo-yagg-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-slide";a:4:{s:4:"file";s:21:"logo-yagg-415x200.jpg";s:5:"width";i:415;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-slide-thumb";a:4:{s:4:"file";s:21:"logo-yagg-250x250.jpg";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(419, 134, '_wp_attached_file', '2013/01/Cite-Gay.com_.jpg'),
(420, 134, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:56;s:4:"file";s:25:"2013/01/Cite-Gay.com_.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(421, 140, '_thumbnail_id', '121'),
(422, 140, '_edit_last', '1'),
(423, 140, '_edit_lock', '1359718507:1'),
(424, 141, '_thumbnail_id', '122'),
(425, 141, '_edit_last', '1'),
(426, 141, '_edit_lock', '1360075853:1'),
(427, 142, '_thumbnail_id', '117'),
(428, 142, '_edit_last', '1'),
(429, 142, '_edit_lock', '1360075874:1'),
(430, 143, '_thumbnail_id', '116'),
(431, 143, '_edit_last', '1'),
(432, 143, '_edit_lock', '1360075896:1'),
(433, 144, '_thumbnail_id', '115'),
(434, 144, '_edit_last', '1'),
(435, 144, '_edit_lock', '1360075917:1'),
(436, 145, '_thumbnail_id', '112'),
(437, 145, '_edit_last', '1'),
(438, 145, '_edit_lock', '1360075937:1'),
(439, 146, '_thumbnail_id', '111'),
(440, 146, '_edit_last', '1'),
(441, 146, '_edit_lock', '1360075957:1'),
(442, 147, '_thumbnail_id', '92'),
(443, 147, '_edit_last', '1'),
(444, 147, '_edit_lock', '1360076058:1'),
(445, 148, '_thumbnail_id', '120'),
(446, 148, '_edit_last', '1'),
(447, 148, '_edit_lock', '1360076078:1'),
(448, 149, '_thumbnail_id', '119'),
(449, 149, '_edit_last', '1'),
(450, 149, '_edit_lock', '1360076152:1'),
(451, 126, '_edit_lock', '1360142705:1'),
(452, 150, '_wp_attached_file', '2013/01/Cite-Gay.com_1.jpg'),
(453, 150, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:56;s:4:"file";s:26:"2013/01/Cite-Gay.com_1.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_posts`
--

CREATE TABLE IF NOT EXISTS `wp_festival_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=161 ;

--
-- Contenu de la table `wp_festival_posts`
--

INSERT INTO `wp_festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2013-01-15 15:54:40', '2013-01-15 15:54:40', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2013-01-15 15:54:40', '2013-01-15 15:54:40', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2013-01-15 15:54:40', '2013-01-15 15:54:40', 'Voici un exemple de page. Elle est différente d&rsquo;un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/~pongan/festival_cinema/wordpress/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien&nbsp;!', 'Page d&rsquo;exemple', '', 'trash', 'open', 'open', '', 'page-d-exemple', '', '', '2013-01-21 17:42:30', '2013-01-21 16:42:30', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?page_id=2', 0, 'page', '', 0),
(7, 1, '2013-01-15 17:11:54', '2013-01-15 16:11:54', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien -Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT\r\n\r\nD’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous  : 5  séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en  2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', 'Edito', '', 'publish', 'open', 'open', '', 'edito', '', '', '2013-01-16 14:39:16', '2013-01-16 13:39:16', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?page_id=7', 0, 'page', '', 0),
(8, 1, '2013-01-15 17:11:37', '2013-01-15 16:11:37', '', 'Edito', '', 'inherit', 'open', 'open', '', '7-revision', '', '', '2013-01-15 17:11:37', '2013-01-15 16:11:37', '', 7, 'http://localhost/~pongan/festival_cinema/wordpress/?p=8', 0, 'revision', '', 0),
(10, 1, '2013-01-15 17:13:13', '2013-01-15 16:13:13', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\r\nTarifs : Plein tarif : 7,50 €\r\nPass Festival : 25 € (5 séances)\r\nSoirée courts métrages : 6 € (vendredi)\r\n2 séances consécutives le samedi ou le dimanche : 12 €\r\n\r\nCartes &amp; réductions acceptées :\r\nCartes DECOUVERTE &amp; PASSION,\r\ntitulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi.\r\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\r\n\r\nEquipe :\r\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi)\r\nProgrammation : Christel Guillard en collaboration avec\r\nFrançoise Dahmane (Cinéma Les Carmes)\r\nCommunication &amp; partenariats : Christel Guillard\r\nConception graphique : Yannis Bellair\r\nConception du site internet : rccc\r\nImpression : Prevost Offset\r\n\r\nContacts :\r\nfestival.dunbordalautre@gmail.com\r\nwww.festivaldunbordalautre.com', 'info pratiques', '', 'publish', 'open', 'open', '', 'info-pratiques', '', '', '2013-01-21 12:38:04', '2013-01-21 11:38:04', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?page_id=10', 0, 'page', '', 0),
(11, 1, '2013-01-15 17:13:01', '2013-01-15 16:13:01', '', 'info', '', 'inherit', 'open', 'open', '', '10-revision', '', '', '2013-01-15 17:13:01', '2013-01-15 16:13:01', '', 10, 'http://localhost/~pongan/festival_cinema/wordpress/?p=11', 0, 'revision', '', 0),
(12, 1, '2013-01-15 17:13:32', '2013-01-15 16:13:32', '[gallery link="post" ids="126,127,129,128,131,132,133,134,130"]', 'Partenaires', '', 'publish', 'open', 'open', '', 'partenaires', '', '', '2013-02-06 10:35:36', '2013-02-06 09:35:36', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?page_id=12', 0, 'page', '', 0),
(13, 1, '2013-01-15 17:13:26', '2013-01-15 16:13:26', '', 'Partenaires', '', 'inherit', 'open', 'open', '', '12-revision', '', '', '2013-01-15 17:13:26', '2013-01-15 16:13:26', '', 12, 'http://localhost/~pongan/festival_cinema/wordpress/?p=13', 0, 'revision', '', 0),
(14, 1, '2013-01-15 17:13:50', '2013-01-15 16:13:50', '<p><a href="http://www.regioncentre.fr" target="_blank" title="La Région Centre">- La Région Centre</a></p>\r\n<p><a href="http://www.orleans.fr/" title="La mairiie d''Orléans" target="_blank">- La Mairie d''Orléans</a></p>\r\n<p><a href="http://www.cinemalescarmes.com/" title="Le cinéma des carmes" target="_blank">- Le cinéma des Carmes</a></p>\r\n<p><a href="http://www.centrelgbtorleans.org/" title="Le Groupe Action Gay et Lesbien 45" target="_blank">- Le Groupe Action Gay &amp; Lesbien - Loiret</a></p>\r\n<p><a href="http://www.citegay.fr/" title="Citégay" target="_blank">- Citégay</a></p>\r\n<p><a href="http://www.muse-out.com/" title="Magazine la Dixième Muse" target="_blank">- La dixième Muse</a></p>\r\n<p><a href="http://www.tetu.com/" title="Le magazine Têtu" target="_blank">- Têtu</a></p>\r\n<p><a href="http://yagg.com/" title="Le média Yagg" target="_blank">- Yagg.com</a></p>\r\n<p><a href="http://www.francebleu.fr/station/france-bleu-orleans" title="France Bleu Orléans" target="_blank">- France Bleu Orléans</a></p>\r\n<p><a href="http://www.bagdam.org/" title="Bagdam Espace Lesbien (Toulouse)" target="_blank">- Bagdam Espace Lesbien ( Toulouse )</a></p>\r\n<p><a href="http://www.cineffable.fr/" title="Cineffable" target="_blank">- Cineffable\r\n<p><a href="http://www.aixenprovencetourism.com/aix-news-festivaltouscourts.htm" title="Le Festival Tous Cours (Aix en Provence)" target="_blank">- Le Festival Tous Courts ( Aix en Provence )</a></p>\r\n<p><a href="http://www.lesvideobstinees.org/" title="Les Videobstinees télé web lesbiennes" target="_blank">- Les VidéObstinées</a></p>', 'Remerciements', '', 'publish', 'open', 'open', '', 'remerciements', '', '', '2013-02-07 12:44:45', '2013-02-07 11:44:45', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?page_id=14', 0, 'page', '', 0),
(18, 1, '2013-01-15 17:29:28', '2013-01-15 16:29:28', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien -Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous  : 5  séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en  2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'open', 'open', '', '7-autosave', '', '', '2013-01-15 17:29:28', '2013-01-15 16:29:28', '', 7, 'http://localhost/~pongan/festival_cinema/wordpress/?p=18', 0, 'revision', '', 0),
(19, 1, '2013-01-15 17:11:54', '2013-01-15 16:11:54', '', 'Edito', '', 'inherit', 'open', 'open', '', '7-revision-2', '', '', '2013-01-15 17:11:54', '2013-01-15 16:11:54', '', 7, 'http://localhost/~pongan/festival_cinema/wordpress/?p=19', 0, 'revision', '', 0),
(20, 1, '2013-01-15 17:28:26', '2013-01-15 16:28:26', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien -Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous  : 5  séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en  2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'open', 'open', '', '7-revision-3', '', '', '2013-01-15 17:28:26', '2013-01-15 16:28:26', '', 7, 'http://localhost/~pongan/festival_cinema/wordpress/?p=20', 0, 'revision', '', 0),
(21, 1, '2013-01-21 12:37:22', '2013-01-21 11:37:22', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\nTarifs : Plein tarif : 7,50 €\nPass Festival : 25 € (5 séances)\nSoirée courts métrages : 6 € (vendredi)\n2 séances consécutives le samedi ou le dimanche : 12 €\n\nCartes &amp; réductions acceptées :\nCartes DECOUVERTE &amp; PASSION,\ntitulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\n\nLe festival D’un bord à l’autre est organisé par Ciné Mundi.\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\n\nEquipe :\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi)\n\nProgrammation : Christel Guillard en collaboration avec\n\nFrançoise Dahmane (Cinéma Les Carmes)\n\nCommunication &amp; partenariats : Christel Guillard\n\nConception graphique : Yannis Bellair\n\nConception du site internet : rccc\n\nImpression : Prevost Offset\n\nContacts :\n\nfestival.dunbordalautre@gmail.com\n\nwww.festivaldunbordalautre.com', 'info pratiques', '', 'inherit', 'open', 'open', '', '10-autosave', '', '', '2013-01-21 12:37:22', '2013-01-21 11:37:22', '', 10, 'http://localhost/~pongan/festival_cinema/wordpress/?p=21', 0, 'revision', '', 0),
(22, 1, '2013-01-15 17:13:13', '2013-01-15 16:13:13', '', 'info pratiques', '', 'inherit', 'open', 'open', '', '10-revision-2', '', '', '2013-01-15 17:13:13', '2013-01-15 16:13:13', '', 10, 'http://localhost/~pongan/festival_cinema/wordpress/?p=22', 0, 'revision', '', 0),
(23, 1, '2013-01-15 17:13:32', '2013-01-15 16:13:32', '', 'Partenaires', '', 'inherit', 'open', 'open', '', '12-revision-2', '', '', '2013-01-15 17:13:32', '2013-01-15 16:13:32', '', 12, 'http://localhost/~pongan/festival_cinema/wordpress/?p=23', 0, 'revision', '', 0),
(24, 1, '2013-01-15 17:13:50', '2013-01-15 16:13:50', '', 'Remerciements', '', 'inherit', 'open', 'open', '', '14-revision', '', '', '2013-01-15 17:13:50', '2013-01-15 16:13:50', '', 14, 'http://localhost/~pongan/festival_cinema/wordpress/?p=24', 0, 'revision', '', 0),
(31, 1, '2013-01-21 12:47:58', '2013-01-21 11:47:58', ' ', '', '', 'publish', 'open', 'open', '', '31', '', '', '2013-01-29 14:12:59', '2013-01-29 13:12:59', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?p=31', 6, 'nav_menu_item', '', 0),
(32, 1, '2013-01-21 12:47:58', '2013-01-21 11:47:58', ' ', '', '', 'publish', 'open', 'open', '', '32', '', '', '2013-01-29 14:12:59', '2013-01-29 13:12:59', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?p=32', 5, 'nav_menu_item', '', 0),
(33, 1, '2013-01-21 12:47:58', '2013-01-21 11:47:58', ' ', '', '', 'publish', 'open', 'open', '', '33', '', '', '2013-01-29 14:12:59', '2013-01-29 13:12:59', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?p=33', 4, 'nav_menu_item', '', 0),
(34, 1, '2013-01-21 12:47:58', '2013-01-21 11:47:58', ' ', '', '', 'publish', 'open', 'open', '', '34', '', '', '2013-01-29 14:12:59', '2013-01-29 13:12:59', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2013-01-21 12:54:30', '2013-01-21 11:54:30', ' ', '', '', 'publish', 'open', 'open', '', '35', '', '', '2013-01-29 14:12:59', '2013-01-29 13:12:59', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?p=35', 3, 'nav_menu_item', '', 0),
(36, 1, '2013-01-21 12:54:29', '2013-01-21 11:54:29', ' ', '', '', 'publish', 'open', 'open', '', '36', '', '', '2013-01-29 14:12:59', '2013-01-29 13:12:59', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?p=36', 2, 'nav_menu_item', '', 0),
(37, 1, '2013-01-21 12:56:43', '2013-01-21 11:56:43', 'Les 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.', 'Intro', '', 'publish', 'open', 'open', '', 'intro', '', '', '2013-01-21 12:56:43', '2013-01-21 11:56:43', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?p=37', 0, 'post', '', 0),
(38, 1, '2013-01-21 12:56:05', '2013-01-21 11:56:05', '', 'Intro', '', 'inherit', 'open', 'open', '', '37-revision', '', '', '2013-01-21 12:56:05', '2013-01-21 11:56:05', '', 37, 'http://localhost/~pongan/festival_cinema/wordpress/?p=38', 0, 'revision', '', 0),
(39, 1, '2013-01-21 13:00:51', '2013-01-21 12:00:51', 'Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser.\r\n\r\nLe baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En Colo - Pascal-Alex Vincent ', '', 'publish', 'open', 'open', '', 'en-colo-pascal-alex-vincent', '', '', '2013-01-22 16:55:45', '2013-01-22 15:55:45', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?p=39', 0, 'post', '', 0),
(40, 1, '2013-01-21 12:58:51', '2013-01-21 11:58:51', '2009 - 8 minutes\nLors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser.\n\nLe baiser va provoquer chez eux un certain émoi.\n\nA partir de ce moment, les ados, témoins de cette scène, font des\n\nallusions plus ou moins directes à l’éventuelle homosexualité\n\nde Maxime. Une révélation surprenante va alors déstabiliser\n\nle groupe, mais surtout le faire réfléchir.', 'En Colo - Pascal-Alex Vincent ', '', 'inherit', 'open', 'open', '', '39-revision', '', '', '2013-01-21 12:58:51', '2013-01-21 11:58:51', '', 39, 'http://localhost/~pongan/festival_cinema/wordpress/?p=40', 0, 'revision', '', 0),
(41, 1, '2013-01-21 13:04:05', '2013-01-21 12:04:05', '2009 - 8 minutes\nLors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser.\n\nLe baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En Colo - Pascal-Alex Vincent ', '', 'inherit', 'open', 'open', '', '39-autosave', '', '', '2013-01-21 13:04:05', '2013-01-21 12:04:05', '', 39, 'http://localhost/~pongan/festival_cinema/wordpress/?p=41', 0, 'revision', '', 0),
(42, 1, '2013-01-21 13:04:24', '2013-01-21 12:04:24', '', 'EN_COLO', '', 'inherit', 'open', 'open', '', 'en_colo', '', '', '2013-01-21 13:04:24', '2013-01-21 12:04:24', '', 39, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/EN_COLO1.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2013-01-21 13:00:51', '2013-01-21 12:00:51', '2009 - 8 minutes\r\nLors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser.\r\n\r\nLe baiser va provoquer chez eux un certain émoi.\r\n\r\nA partir de ce moment, les ados, témoins de cette scène, font des\r\n\r\nallusions plus ou moins directes à l’éventuelle homosexualité\r\n\r\nde Maxime. Une révélation surprenante va alors déstabiliser\r\n\r\nle groupe, mais surtout le faire réfléchir.', 'En Colo - Pascal-Alex Vincent ', '', 'inherit', 'open', 'open', '', '39-revision-2', '', '', '2013-01-21 13:00:51', '2013-01-21 12:00:51', '', 39, 'http://localhost/~pongan/festival_cinema/wordpress/?p=43', 0, 'revision', '', 0),
(44, 1, '2013-01-21 13:11:39', '2013-01-21 12:11:39', 'C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline - Céline Sciamma', '', 'publish', 'open', 'open', '', 'pauline-celine-sciamma', '', '', '2013-01-22 16:56:04', '2013-01-22 15:56:04', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?p=44', 0, 'post', '', 0),
(45, 1, '2013-01-21 13:09:33', '2013-01-21 12:09:33', '', 'PAULINE_1', '', 'inherit', 'open', 'open', '', 'pauline_1', '', '', '2013-01-21 13:09:33', '2013-01-21 12:09:33', '', 44, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/PAULINE_11.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2013-01-21 13:09:44', '2013-01-21 12:09:44', '7 minutes\n\nC’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline - Céline Sciamma', '', 'inherit', 'open', 'open', '', '44-revision', '', '', '2013-01-21 13:09:44', '2013-01-21 12:09:44', '', 44, 'http://localhost/~pongan/festival_cinema/wordpress/?p=46', 0, 'revision', '', 0),
(47, 1, '2013-01-21 13:18:22', '2013-01-21 12:18:22', '(C’est élémentaire - Parler de l’homosexualité à l’école)\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix.\r\n\r\nUn excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'publish', 'open', 'open', '', 'its-elementary-talking-about-gays-issues-in-school', '', '', '2013-01-22 16:56:53', '2013-01-22 15:56:53', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?p=47', 0, 'post', '', 0),
(48, 1, '2013-01-21 13:14:18', '2013-01-21 12:14:18', '', '37_it_s_still_elementary', '', 'inherit', 'open', 'open', '', '37_it_s_still_elementary', '', '', '2013-01-21 13:14:18', '2013-01-21 12:14:18', '', 47, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/37_it_s_still_elementary1.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2013-01-21 13:14:46', '2013-01-21 12:14:46', '(C’est élémentaire - Parler de l’homosexualité à l’école)\nEtats-Unis - 1996 - Documentaire\nDurée 01h20 - Réalisation : Debra Chasnoff\n\nPremier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix.\n\nUn excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\n\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\n\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '47-revision', '', '', '2013-01-21 13:14:46', '2013-01-21 12:14:46', '', 47, 'http://localhost/~pongan/festival_cinema/wordpress/?p=49', 0, 'revision', '', 0),
(50, 1, '2013-01-21 13:24:12', '2013-01-21 12:24:12', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe.\r\n\r\nPour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien.\r\n\r\nLe nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...\r\n\r\nConsidéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...\r\n\r\nCe premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.', 'Ander - Roberto Caston', '', 'publish', 'open', 'open', '', 'ander-roberto-caston', '', '', '2013-01-22 16:54:34', '2013-01-22 15:54:34', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?p=50', 0, 'post', '', 0),
(51, 1, '2013-01-21 13:21:55', '2013-01-21 12:21:55', '', 'ANDER1', '', 'inherit', 'open', 'open', '', 'ander1', '', '', '2013-01-21 13:21:55', '2013-01-21 12:21:55', '', 50, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/ANDER11.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2013-01-21 13:22:07', '2013-01-21 12:22:07', 'Espagne - 2009 - 02h08 - VOSTF\nInterprétation : Josean Bengoetxea, Eriz Alberdi,Christian Esquive\n\nAu fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe.\n\nPour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien.\n\nLe nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...\n\nConsidéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...\n\nCe premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\n\nPrix C.I.C.A.E – Festival International de Berlin (2009)\nViolette d’or du meilleur film – Festival Cinespaña - Toulouse (2009)\nGrand prix du jury – Festival Cinehorizontes (2009)', 'Ander - Roberto Caston', '', 'inherit', 'open', 'open', '', '50-revision', '', '', '2013-01-21 13:22:07', '2013-01-21 12:22:07', '', 50, 'http://localhost/~pongan/festival_cinema/wordpress/?p=52', 0, 'revision', '', 0),
(53, 1, '2013-01-21 13:28:00', '2013-01-21 12:28:00', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer...\r\n\r\nLucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ - Lucía Puenzo', '', 'publish', 'open', 'open', '', 'el-nino-pez-lucia-puenzo', '', '', '2013-01-22 16:54:00', '2013-01-22 15:54:00', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?p=53', 0, 'post', '', 0),
(54, 1, '2013-01-21 13:26:11', '2013-01-21 12:26:11', '', 'EL NINO PEZ 1', '', 'inherit', 'open', 'open', '', 'el-nino-pez-1', '', '', '2013-01-21 13:26:11', '2013-01-21 12:26:11', '', 53, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/EL-NINO-PEZ-11.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2013-01-21 13:26:19', '2013-01-21 12:26:19', 'Argentine - 2008 - 01h36 - VOSTF\nInterprétation : Inés Efron, Mariela Vitale, Pep Munne\n\nDans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer...\n\nLucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ - Lucía Puenzo', '', 'inherit', 'open', 'open', '', '53-revision', '', '', '2013-01-21 13:26:19', '2013-01-21 12:26:19', '', 53, 'http://localhost/~pongan/festival_cinema/wordpress/?p=55', 0, 'revision', '', 0),
(56, 1, '2013-01-21 13:32:53', '2013-01-21 12:32:53', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne.\r\n\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide.\r\n\r\nEt pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\r\n\r\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'publish', 'open', 'open', '', 'cant-think-straight-realise-par-shamim-sarif', '', '', '2013-01-22 16:53:28', '2013-01-22 15:53:28', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?p=56', 0, 'post', '', 0),
(57, 1, '2013-01-21 13:30:30', '2013-01-21 12:30:30', '', 'I_cant_think_straight_001', '', 'inherit', 'open', 'open', '', 'i_cant_think_straight_001', '', '', '2013-01-21 13:30:30', '2013-01-21 12:30:30', '', 56, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/I_cant_think_straight_001.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2013-01-21 13:30:08', '2013-01-21 12:30:08', 'Grande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF\nInterprétation : Lisa Ray, Sheetal Sheth, Antonia Frering\n\nAlors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne.\n\nTout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide.\n\nEt pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\n\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\n\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'open', 'open', '', '56-revision', '', '', '2013-01-21 13:30:08', '2013-01-21 12:30:08', '', 56, 'http://localhost/~pongan/festival_cinema/wordpress/?p=58', 0, 'revision', '', 0),
(59, 1, '2013-01-21 13:56:25', '2013-01-21 12:56:25', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar - Sébastien Gabriel', '', 'publish', 'open', 'open', '', 'omar-sebastien-gabriel-france-2009-9-minutes', '', '', '2013-01-21 13:57:39', '2013-01-21 12:57:39', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?p=59', 0, 'post', '', 0),
(60, 1, '2013-01-21 13:54:19', '2013-01-21 12:54:19', '', 'OMAR_', '', 'inherit', 'open', 'open', '', 'omar_', '', '', '2013-01-21 13:54:19', '2013-01-21 12:54:19', '', 59, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/OMAR_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2013-01-21 13:54:25', '2013-01-21 12:54:25', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar - Sébastien Gabriel - France - 2009 - 9 minutes', '', 'inherit', 'open', 'open', '', '59-revision', '', '', '2013-01-21 13:54:25', '2013-01-21 12:54:25', '', 59, 'http://localhost/~pongan/festival_cinema/wordpress/?p=61', 0, 'revision', '', 0),
(62, 1, '2013-01-21 13:56:25', '2013-01-21 12:56:25', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar - Sébastien Gabriel - France - 2009 - 9 minutes', '', 'inherit', 'open', 'open', '', '59-revision-2', '', '', '2013-01-21 13:56:25', '2013-01-21 12:56:25', '', 59, 'http://localhost/~pongan/festival_cinema/wordpress/?p=62', 0, 'revision', '', 0),
(63, 1, '2013-01-21 13:56:42', '2013-01-21 12:56:42', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar - Sébastien Gabriel', '', 'inherit', 'open', 'open', '', '59-revision-3', '', '', '2013-01-21 13:56:42', '2013-01-21 12:56:42', '', 59, 'http://localhost/~pongan/festival_cinema/wordpress/?p=63', 0, 'revision', '', 0),
(64, 1, '2013-01-21 17:20:17', '2013-01-21 16:20:17', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie.\r\nUn jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile  - Bénédicte Delgéhier', '', 'publish', 'open', 'open', '', 'odile-benedicte-delgehier', '', '', '2013-01-21 17:20:17', '2013-01-21 16:20:17', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?p=64', 0, 'post', '', 0),
(65, 1, '2013-01-21 17:18:57', '2013-01-21 16:18:57', '', 'Odile', '', 'inherit', 'open', 'open', '', 'odile', '', '', '2013-01-21 17:18:57', '2013-01-21 16:18:57', '', 64, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/Odile-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2013-01-21 17:18:57', '2013-01-21 16:18:57', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie.\nUn jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile  - Bénédicte Delgéhier', '', 'inherit', 'open', 'open', '', '64-revision', '', '', '2013-01-21 17:18:57', '2013-01-21 16:18:57', '', 64, 'http://localhost/~pongan/festival_cinema/wordpress/?p=66', 0, 'revision', '', 0),
(67, 1, '2013-01-21 17:23:56', '2013-01-21 16:23:56', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis.\r\n\r\nSon corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme.\r\n\r\nUne procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu - René Guerra Luiz', '', 'publish', 'open', 'open', '', 'os-sapatos-de-aristeu-rene-guerra-luiz', '', '', '2013-01-22 16:52:32', '2013-01-22 15:52:32', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?p=67', 0, 'post', '', 0),
(68, 1, '2013-01-21 17:22:21', '2013-01-21 16:22:21', '', 'Os sapatos de Aristeu', '', 'inherit', 'open', 'open', '', 'os-sapatos-de-aristeu', '', '', '2013-01-21 17:22:21', '2013-01-21 16:22:21', '', 67, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/Os-sapatos-de-Aristeu1.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2013-01-21 17:22:35', '2013-01-21 16:22:35', '', 'Os sapatos de Aristeu-1', '', 'inherit', 'open', 'open', '', 'os-sapatos-de-aristeu-1', '', '', '2013-01-21 17:22:35', '2013-01-21 16:22:35', '', 67, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/Os-sapatos-de-Aristeu-11.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2013-01-21 17:22:24', '2013-01-21 16:22:24', '17 minutes - VOSTF\nLe corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis.\n\nSon corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme.\n\nUne procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu - René Guerra Luiz', '', 'inherit', 'open', 'open', '', '67-revision', '', '', '2013-01-21 17:22:24', '2013-01-21 16:22:24', '', 67, 'http://localhost/~pongan/festival_cinema/wordpress/?p=70', 0, 'revision', '', 0),
(71, 1, '2013-01-21 17:26:22', '2013-01-21 16:26:22', 'Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever - Jean Baptiste Erreca - France', '', 'publish', 'open', 'open', '', 'cowboy-forever-jean-baptiste-erreca-france', '', '', '2013-01-22 16:49:42', '2013-01-22 15:49:42', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?p=71', 0, 'post', '', 0),
(72, 1, '2013-01-21 17:25:09', '2013-01-21 16:25:09', '', 'COWBOY FOREVER', '', 'inherit', 'open', 'open', '', 'cowboy-forever', '', '', '2013-01-21 17:25:09', '2013-01-21 16:25:09', '', 71, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/COWBOY-FOREVER1.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2013-01-21 17:25:02', '2013-01-21 16:25:02', '2006 - 26 minutes\n\nAu cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever - Jean Baptiste Erreca - France', '', 'inherit', 'open', 'open', '', '71-revision', '', '', '2013-01-21 17:25:02', '2013-01-21 16:25:02', '', 71, 'http://localhost/~pongan/festival_cinema/wordpress/?p=73', 0, 'revision', '', 0),
(74, 1, '2013-01-21 17:30:50', '2013-01-21 16:30:50', 'Comment jouer du genre en chanson ?\r\nProjection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy - Patricia & Colette', '', 'publish', 'open', 'open', '', 'american-boy-patricia-colette', '', '', '2013-01-29 17:28:36', '2013-01-29 16:28:36', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?p=74', 0, 'post', '', 0),
(75, 1, '2013-01-21 17:28:00', '2013-01-21 16:28:00', '', 'American boy-1', '', 'inherit', 'open', 'open', '', 'american-boy-1', '', '', '2013-01-21 17:28:00', '2013-01-21 16:28:00', '', 74, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/American-boy-11.png', 0, 'attachment', 'image/png', 0),
(76, 1, '2013-01-21 17:27:30', '2013-01-21 16:27:30', '2008 - 4 minutes\n\nComment jouer du genre en chanson ?\nProjection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy - Patricia & Colette', '', 'inherit', 'open', 'open', '', '74-revision', '', '', '2013-01-21 17:27:30', '2013-01-21 16:27:30', '', 74, 'http://localhost/~pongan/festival_cinema/wordpress/?p=76', 0, 'revision', '', 0),
(77, 1, '2013-01-29 17:01:40', '2013-01-29 16:01:40', 'Comment jouer du genre en chanson ?\nProjection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy - Patricia & Colette', '', 'inherit', 'open', 'open', '', '74-autosave', '', '', '2013-01-29 17:01:40', '2013-01-29 16:01:40', '', 74, 'http://localhost/~pongan/festival_cinema/wordpress/?p=77', 0, 'revision', '', 0),
(78, 1, '2013-01-15 15:54:40', '2013-01-15 15:54:40', 'Voici un exemple de page. Elle est différente d&rsquo;un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/~pongan/festival_cinema/wordpress/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien&nbsp;!', 'Page d&rsquo;exemple', '', 'inherit', 'open', 'open', '', '2-revision', '', '', '2013-01-15 15:54:40', '2013-01-15 15:54:40', '', 2, 'http://localhost/~pongan/festival_cinema/wordpress/?p=78', 0, 'revision', '', 0),
(79, 1, '2013-01-21 17:30:50', '2013-01-21 16:30:50', '2008 - 4 minutes\r\n\r\nComment jouer du genre en chanson ?\r\nProjection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy - Patricia & Colette', '', 'inherit', 'open', 'open', '', '74-revision-2', '', '', '2013-01-21 17:30:50', '2013-01-21 16:30:50', '', 74, 'http://localhost/~pongan/festival_cinema/wordpress/?p=79', 0, 'revision', '', 0),
(80, 1, '2013-01-22 16:49:36', '2013-01-22 15:49:36', 'Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever - Jean Baptiste Erreca - France', '', 'inherit', 'open', 'open', '', '71-autosave', '', '', '2013-01-22 16:49:36', '2013-01-22 15:49:36', '', 71, 'http://localhost/~pongan/festival_cinema/wordpress/?p=80', 0, 'revision', '', 0),
(81, 1, '2013-01-21 17:26:22', '2013-01-21 16:26:22', '2006 - 26 minutes\r\n\r\nAu cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever - Jean Baptiste Erreca - France', '', 'inherit', 'open', 'open', '', '71-revision-2', '', '', '2013-01-21 17:26:22', '2013-01-21 16:26:22', '', 71, 'http://localhost/~pongan/festival_cinema/wordpress/?p=81', 0, 'revision', '', 0),
(82, 1, '2013-01-21 17:23:56', '2013-01-21 16:23:56', '17 minutes - VOSTF\r\nLe corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis.\r\n\r\nSon corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme.\r\n\r\nUne procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu - René Guerra Luiz', '', 'inherit', 'open', 'open', '', '67-revision-2', '', '', '2013-01-21 17:23:56', '2013-01-21 16:23:56', '', 67, 'http://localhost/~pongan/festival_cinema/wordpress/?p=82', 0, 'revision', '', 0),
(83, 1, '2013-01-22 16:51:08', '2013-01-22 15:51:08', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis.\n\nSon corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme.\n\nUne procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu - René Guerra Luiz', '', 'inherit', 'open', 'open', '', '67-autosave', '', '', '2013-01-22 16:51:08', '2013-01-22 15:51:08', '', 67, 'http://localhost/~pongan/festival_cinema/wordpress/?p=83', 0, 'revision', '', 0),
(84, 1, '2013-01-22 16:50:05', '2013-01-22 15:50:05', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis.\r\n\r\nSon corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme.\r\n\r\nUne procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu - René Guerra Luiz', '', 'inherit', 'open', 'open', '', '67-revision-3', '', '', '2013-01-22 16:50:05', '2013-01-22 15:50:05', '', 67, 'http://localhost/~pongan/festival_cinema/wordpress/?p=84', 0, 'revision', '', 0),
(85, 1, '2013-01-21 13:32:53', '2013-01-21 12:32:53', 'Grande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF\r\nInterprétation : Lisa Ray, Sheetal Sheth, Antonia Frering\r\n\r\nAlors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne.\r\n\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide.\r\n\r\nEt pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\r\n\r\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'open', 'open', '', '56-revision-2', '', '', '2013-01-21 13:32:53', '2013-01-21 12:32:53', '', 56, 'http://localhost/~pongan/festival_cinema/wordpress/?p=85', 0, 'revision', '', 0);
INSERT INTO `wp_festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(86, 1, '2013-01-21 13:28:00', '2013-01-21 12:28:00', 'Argentine - 2008 - 01h36 - VOSTF\r\nInterprétation : Inés Efron, Mariela Vitale, Pep Munne\r\n\r\nDans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer...\r\n\r\nLucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ - Lucía Puenzo', '', 'inherit', 'open', 'open', '', '53-revision-2', '', '', '2013-01-21 13:28:00', '2013-01-21 12:28:00', '', 53, 'http://localhost/~pongan/festival_cinema/wordpress/?p=86', 0, 'revision', '', 0),
(87, 1, '2013-01-21 13:24:12', '2013-01-21 12:24:12', 'Espagne - 2009 - 02h08 - VOSTF\r\nInterprétation : Josean Bengoetxea, Eriz Alberdi,Christian Esquive\r\n\r\nAu fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe.\r\n\r\nPour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien.\r\n\r\nLe nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...\r\n\r\nConsidéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...\r\n\r\nCe premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009)\r\nViolette d’or du meilleur film – Festival Cinespaña - Toulouse (2009)\r\nGrand prix du jury – Festival Cinehorizontes (2009)', 'Ander - Roberto Caston', '', 'inherit', 'open', 'open', '', '50-revision-2', '', '', '2013-01-21 13:24:12', '2013-01-21 12:24:12', '', 50, 'http://localhost/~pongan/festival_cinema/wordpress/?p=87', 0, 'revision', '', 0),
(88, 1, '2013-01-21 13:07:34', '2013-01-21 12:07:34', '2009 - 8 minutes\r\nLors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser.\r\n\r\nLe baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En Colo - Pascal-Alex Vincent ', '', 'inherit', 'open', 'open', '', '39-revision-3', '', '', '2013-01-21 13:07:34', '2013-01-21 12:07:34', '', 39, 'http://localhost/~pongan/festival_cinema/wordpress/?p=88', 0, 'revision', '', 0),
(89, 1, '2013-01-21 13:11:39', '2013-01-21 12:11:39', '7 minutes\r\n\r\nC’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline - Céline Sciamma', '', 'inherit', 'open', 'open', '', '44-revision-2', '', '', '2013-01-21 13:11:39', '2013-01-21 12:11:39', '', 44, 'http://localhost/~pongan/festival_cinema/wordpress/?p=89', 0, 'revision', '', 0),
(90, 1, '2013-01-21 13:18:22', '2013-01-21 12:18:22', '(C’est élémentaire - Parler de l’homosexualité à l’école)\r\nEtats-Unis - 1996 - Documentaire\r\nDurée 01h20 - Réalisation : Debra Chasnoff\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix.\r\n\r\nUn excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '47-revision-2', '', '', '2013-01-21 13:18:22', '2013-01-21 12:18:22', '', 47, 'http://localhost/~pongan/festival_cinema/wordpress/?p=90', 0, 'revision', '', 0),
(92, 1, '2013-01-29 14:54:32', '2013-01-29 13:54:32', '', '37_it_s_still_elementary1', '', 'inherit', 'open', 'open', '', '37_it_s_still_elementary1', '', '', '2013-01-29 14:54:32', '2013-01-29 13:54:32', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/37_it_s_still_elementary11.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2013-01-29 14:56:01', '2013-01-29 13:56:01', '', '37_it_s_still_elementary', '', 'inherit', 'open', 'open', '', '37_it_s_still_elementary-2', '', '', '2013-01-29 14:56:01', '2013-01-29 13:56:01', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/37_it_s_still_elementary2.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2013-01-29 16:56:58', '2013-01-29 15:56:58', '', '37_it_s_still_elementary2', '', 'inherit', 'open', 'open', '', '37_it_s_still_elementary2', '', '', '2013-01-29 16:56:58', '2013-01-29 15:56:58', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/37_it_s_still_elementary21.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2013-01-29 16:58:13', '2013-01-29 15:58:13', '', '37_it_s_still_elementary2', '', 'inherit', 'open', 'open', '', '37_it_s_still_elementary2-2', '', '', '2013-01-29 16:58:13', '2013-01-29 15:58:13', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/37_it_s_still_elementary22.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2013-01-29 16:58:33', '2013-01-29 15:58:33', '', 'ANDER1', '', 'inherit', 'open', 'open', '', 'ander1-2', '', '', '2013-01-29 16:58:33', '2013-01-29 15:58:33', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/ANDER12.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2013-01-22 16:46:52', '2013-01-22 15:46:52', 'Comment jouer du genre en chanson ?\r\nProjection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy - Patricia & Colette', '', 'inherit', 'open', 'open', '', '74-revision-3', '', '', '2013-01-22 16:46:52', '2013-01-22 15:46:52', '', 74, 'http://localhost/~pongan/festival_cinema/wordpress/?p=97', 0, 'revision', '', 0),
(98, 1, '2013-01-29 17:02:07', '2013-01-29 16:02:07', 'Comment jouer du genre en chanson ?\r\nProjection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.\r\n<ul id="adminmenu" role="navigation">\r\n	<li class="wp-not-current-submenu menu-top menu-icon-generic toplevel_page_easing-slider/easingslider menu-top-first menu-top-last" id="toplevel_page_easing-slider-easingslider"><a class="wp-not-current-submenu menu-top menu-icon-generic toplevel_page_easing-slider/easingslider menu-top-first menu-top-last" href="../../../../%7Epongan/festival_cinema/wordpress/wp-admin/admin.php?page=easing-slider/easingslider.php">\r\n<div class="wp-menu-image"></div>\r\n<div class="wp-menu-name">Easing Slider</div>\r\n</a></li>\r\n</ul>', 'American Boy - Patricia & Colette', '', 'inherit', 'open', 'open', '', '74-revision-4', '', '', '2013-01-29 17:02:07', '2013-01-29 16:02:07', '', 74, 'http://localhost/~pongan/festival_cinema/wordpress/?p=98', 0, 'revision', '', 0),
(99, 1, '2013-01-29 17:35:24', '2013-01-29 16:35:24', '', '', '', 'trash', 'closed', 'closed', '', '99', '', '', '2013-01-29 17:50:29', '2013-01-29 16:50:29', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?post_type=slide&#038;p=99', 0, 'slide', '', 0),
(100, 1, '2013-01-29 17:35:38', '2013-01-29 16:35:38', '', '', '', 'trash', 'closed', 'closed', '', '100', '', '', '2013-01-29 17:50:25', '2013-01-29 16:50:25', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?post_type=slide&#038;p=100', 0, 'slide', '', 0),
(101, 1, '2013-01-29 17:35:50', '2013-01-29 16:35:50', '', '', '', 'trash', 'closed', 'closed', '', '101', '', '', '2013-01-29 17:50:27', '2013-01-29 16:50:27', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?post_type=slide&#038;p=101', 0, 'slide', '', 0),
(102, 1, '2013-01-29 17:36:06', '2013-01-29 16:36:06', '', '', '', 'trash', 'closed', 'closed', '', '102', '', '', '2013-01-29 17:50:22', '2013-01-29 16:50:22', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?post_type=slide&#038;p=102', 0, 'slide', '', 0),
(103, 1, '2013-01-29 17:36:31', '2013-01-29 16:36:31', '', '', '', 'trash', 'closed', 'closed', '', '103', '', '', '2013-01-29 17:50:20', '2013-01-29 16:50:20', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?post_type=slide&#038;p=103', 0, 'slide', '', 0),
(106, 1, '2013-01-29 17:53:11', '2013-01-29 16:53:11', '', '', '', 'trash', 'closed', 'closed', '', '106', '', '', '2013-01-29 17:54:45', '2013-01-29 16:54:45', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?post_type=slide&#038;p=106', 0, 'slide', '', 0),
(107, 1, '2013-01-29 17:51:36', '2013-01-29 16:51:36', '', '37_it_s_still_elementary', '', 'inherit', 'open', 'open', '', '37_it_s_still_elementary-3', '', '', '2013-01-29 17:51:36', '2013-01-29 16:51:36', '', 106, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/37_it_s_still_elementary3.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2013-01-29 17:52:52', '2013-01-29 16:52:52', '', '37_it_s_still_elementary', '', 'inherit', 'open', 'open', '', '37_it_s_still_elementary-4', '', '', '2013-01-29 17:52:52', '2013-01-29 16:52:52', '', 106, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/37_it_s_still_elementary4.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2013-01-29 17:55:46', '2013-01-29 16:55:46', '', '37_it_s_still_elementary', '', 'inherit', 'open', 'open', '', '37_it_s_still_elementary-5', '', '', '2013-01-29 17:55:46', '2013-01-29 16:55:46', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/37_it_s_still_elementary5.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2013-01-29 17:55:46', '2013-01-29 16:55:46', '', 'American boy', '', 'inherit', 'open', 'open', '', 'american-boy', '', '', '2013-01-29 17:55:46', '2013-01-29 16:55:46', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/American-boy1.png', 0, 'attachment', 'image/png', 0),
(112, 1, '2013-01-29 17:55:47', '2013-01-29 16:55:47', '', 'ANDER1', '', 'inherit', 'open', 'open', '', 'ander1-3', '', '', '2013-01-29 17:55:47', '2013-01-29 16:55:47', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/ANDER13.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2013-01-29 17:55:48', '2013-01-29 16:55:48', '', 'ANDER2', '', 'inherit', 'open', 'open', '', 'ander2', '', '', '2013-01-29 17:55:48', '2013-01-29 16:55:48', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/ANDER21.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2013-01-29 17:55:49', '2013-01-29 16:55:49', '', 'COWBOY FOREVER', '', 'inherit', 'open', 'open', '', 'cowboy-forever-2', '', '', '2013-01-29 17:55:49', '2013-01-29 16:55:49', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/COWBOY-FOREVER2.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2013-01-29 17:55:50', '2013-01-29 16:55:50', '', 'EL NINO PEZ 1', '', 'inherit', 'open', 'open', '', 'el-nino-pez-1-2', '', '', '2013-01-29 17:55:50', '2013-01-29 16:55:50', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/EL-NINO-PEZ-12.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2013-01-29 17:55:52', '2013-01-29 16:55:52', '', 'EL NINO PEZ  2', '', 'inherit', 'open', 'open', '', 'el-nino-pez-2', '', '', '2013-01-29 17:55:52', '2013-01-29 16:55:52', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/EL-NINO-PEZ-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2013-01-29 17:55:54', '2013-01-29 16:55:54', '', 'EN_COLOricco', '', 'inherit', 'open', 'open', '', 'en_coloricco', '', '', '2013-01-29 17:55:54', '2013-01-29 16:55:54', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/EN_COLOricco.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2013-01-29 17:55:55', '2013-01-29 16:55:55', '', 'I_cant_think_straight_001', '', 'inherit', 'open', 'open', '', 'i_cant_think_straight_001-2', '', '', '2013-01-29 17:55:55', '2013-01-29 16:55:55', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/I_cant_think_straight_0011.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2013-01-29 17:55:55', '2013-01-29 16:55:55', '', 'ItsElementaryGBan', '', 'inherit', 'open', 'open', '', 'itselementarygban', '', '', '2013-01-29 17:55:55', '2013-01-29 16:55:55', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/ItsElementaryGBan.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2013-01-29 17:55:56', '2013-01-29 16:55:56', '', 'Odile', '', 'inherit', 'open', 'open', '', 'odile-2', '', '', '2013-01-29 17:55:56', '2013-01-29 16:55:56', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/Odile-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2013-01-29 17:55:57', '2013-01-29 16:55:57', '', 'OMAR_', '', 'inherit', 'open', 'open', '', 'omar_-2', '', '', '2013-01-29 17:55:57', '2013-01-29 16:55:57', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/OMAR_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2013-01-29 17:55:58', '2013-01-29 16:55:58', '', 'PAULINE_1', '', 'inherit', 'open', 'open', '', 'pauline_1-2', '', '', '2013-01-29 17:55:58', '2013-01-29 16:55:58', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/PAULINE_12.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2013-01-29 17:56:20', '2013-01-29 16:56:20', '', '', '', 'publish', 'closed', 'closed', '', '123', '', '', '2013-01-29 17:56:20', '2013-01-29 16:56:20', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?post_type=slide&#038;p=123', 0, 'slide', '', 0),
(124, 1, '2013-01-29 17:59:22', '2013-01-29 16:59:22', '', 'Can''t think straight', '', 'publish', 'closed', 'closed', '', '124', '', '', '2013-02-05 15:49:52', '2013-02-05 14:49:52', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?post_type=slide&#038;p=124', 0, 'slide', '', 0),
(125, 1, '2013-02-06 10:35:31', '2013-02-06 09:35:31', '[gallery link="post" ids="126,127,129,128,131,132,133,134,130"]', 'Partenaires', '', 'inherit', 'open', 'open', '', '12-autosave', '', '', '2013-02-06 10:35:31', '2013-02-06 09:35:31', '', 12, 'http://localhost/~pongan/festival_cinema/wordpress/?p=125', 0, 'revision', '', 0),
(126, 1, '2013-01-31 15:17:33', '2013-01-31 14:17:33', '', 'region_centre', '', 'inherit', 'open', 'open', '', 'region_centre', '', '', '2013-01-31 15:17:33', '2013-01-31 14:17:33', '', 12, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/region_centre.jpeg', 0, 'attachment', 'image/jpeg', 0),
(127, 1, '2013-01-31 15:18:14', '2013-01-31 14:18:14', '', 'orleans', '', 'inherit', 'open', 'open', '', 'orleans', '', '', '2013-01-31 15:18:14', '2013-01-31 14:18:14', '', 12, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/orleans.jpeg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2013-01-31 15:18:38', '2013-01-31 14:18:38', '', 'france_bleu', '', 'inherit', 'open', 'open', '', 'france_bleu', '', '', '2013-01-31 15:18:38', '2013-01-31 14:18:38', '', 12, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/france_bleu.jpeg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2013-01-31 15:19:04', '2013-01-31 14:19:04', '', 'icinema_des_carmes', '', 'inherit', 'open', 'open', '', 'icinema_des_carmes', '', '', '2013-01-31 15:19:04', '2013-01-31 14:19:04', '', 12, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/icinema_des_carmes.jpeg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2013-01-31 15:19:50', '2013-01-31 14:19:50', '', 'GAGL45', '', 'inherit', 'open', 'open', '', 'gagl45', '', '', '2013-01-31 15:19:50', '2013-01-31 14:19:50', '', 12, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/GAGL45.jpeg', 0, 'attachment', 'image/jpeg', 0),
(131, 1, '2013-01-31 15:20:12', '2013-01-31 14:20:12', '', 'tetu', '', 'inherit', 'open', 'open', '', 'tetu', '', '', '2013-01-31 15:20:12', '2013-01-31 14:20:12', '', 12, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/tetu.jpeg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2013-01-31 15:20:32', '2013-01-31 14:20:32', '', 'muse', '', 'inherit', 'open', 'open', '', 'muse', '', '', '2013-01-31 15:20:32', '2013-01-31 14:20:32', '', 12, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/muse.jpeg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2013-01-31 15:20:46', '2013-01-31 14:20:46', '', 'logo-yagg', '', 'inherit', 'open', 'open', '', 'logo-yagg', '', '', '2013-01-31 15:20:46', '2013-01-31 14:20:46', '', 12, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/logo-yagg.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2013-01-31 15:21:05', '2013-01-31 14:21:05', '', 'Cite Gay.com', '', 'inherit', 'open', 'open', '', 'cite-gay-com', '', '', '2013-01-31 15:21:05', '2013-01-31 14:21:05', '', 12, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/Cite-Gay.com_.jpg', 0, 'attachment', 'image/jpeg', 0),
(135, 1, '2013-01-21 12:39:07', '2013-01-21 11:39:07', '- Région Centre\r\n- Orléans\r\n- Cinéma des Carmes\r\n- GAGL\r\n- Têtu\r\n- La dixième MUSE\r\n- CiteGay\r\n- Yagg.com\r\n- France Bleu', 'Partenaires', '', 'inherit', 'open', 'open', '', '12-revision-3', '', '', '2013-01-21 12:39:07', '2013-01-21 11:39:07', '', 12, 'http://localhost/~pongan/festival_cinema/wordpress/?p=135', 0, 'revision', '', 0),
(136, 1, '2013-01-31 15:22:05', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-01-31 15:22:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?p=136', 0, 'post', '', 0),
(137, 1, '2013-01-31 15:21:17', '2013-01-31 14:21:17', '- Région Centre\r\n- Orléans\r\n- Cinéma des Carmes\r\n- GAGL\r\n- Têtu\r\n- La dixième MUSE\r\n- CiteGay\r\n- Yagg.com\r\n- France Bleu', 'Partenaires', '', 'inherit', 'open', 'open', '', '12-revision-4', '', '', '2013-01-31 15:21:17', '2013-01-31 14:21:17', '', 12, 'http://localhost/~pongan/festival_cinema/wordpress/?p=137', 0, 'revision', '', 0),
(138, 1, '2013-01-31 15:24:09', '2013-01-31 14:24:09', '- Région Centre\r\n- Orléans\r\n- Cinéma des Carmes\r\n- GAGL\r\n- Têtu\r\n- La dixième MUSE\r\n- CiteGay\r\n- Yagg.com\r\n- France Bleu', 'Partenaires', '', 'inherit', 'open', 'open', '', '12-revision-5', '', '', '2013-01-31 15:24:09', '2013-01-31 14:24:09', '', 12, 'http://localhost/~pongan/festival_cinema/wordpress/?p=138', 0, 'revision', '', 0),
(139, 1, '2013-01-31 15:27:20', '2013-01-31 14:27:20', '- Région Centre[gallery link="file" ids="126,127,129,128,130,131,132,133,134"]\r\n- Orléans\r\n- Cinéma des Carmes\r\n- GAGL\r\n- Têtu\r\n- La dixième MUSE\r\n- CiteGay\r\n- Yagg.com\r\n- France Bleu', 'Partenaires', '', 'inherit', 'open', 'open', '', '12-revision-6', '', '', '2013-01-31 15:27:20', '2013-01-31 14:27:20', '', 12, 'http://localhost/~pongan/festival_cinema/wordpress/?p=139', 0, 'revision', '', 0),
(140, 1, '2013-02-01 12:31:23', '2013-02-01 11:31:23', '', '', '', 'publish', 'closed', 'closed', '', '140', '', '', '2013-02-01 12:31:23', '2013-02-01 11:31:23', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?post_type=slide&#038;p=140', 0, 'slide', '', 0),
(141, 1, '2013-02-05 15:52:15', '2013-02-05 14:52:15', '', '', '', 'publish', 'closed', 'closed', '', '141', '', '', '2013-02-05 15:52:15', '2013-02-05 14:52:15', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?post_type=slide&#038;p=141', 0, 'slide', '', 0),
(142, 1, '2013-02-05 15:53:06', '2013-02-05 14:53:06', '', '', '', 'publish', 'closed', 'closed', '', '142', '', '', '2013-02-05 15:53:06', '2013-02-05 14:53:06', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?post_type=slide&#038;p=142', 0, 'slide', '', 0),
(143, 1, '2013-02-05 15:53:26', '2013-02-05 14:53:26', '', '', '', 'publish', 'closed', 'closed', '', '143', '', '', '2013-02-05 15:53:26', '2013-02-05 14:53:26', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?post_type=slide&#038;p=143', 0, 'slide', '', 0),
(144, 1, '2013-02-05 15:53:48', '2013-02-05 14:53:48', '', '', '', 'publish', 'closed', 'closed', '', '144', '', '', '2013-02-05 15:53:48', '2013-02-05 14:53:48', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?post_type=slide&#038;p=144', 0, 'slide', '', 0),
(145, 1, '2013-02-05 15:54:09', '2013-02-05 14:54:09', '', '', '', 'publish', 'closed', 'closed', '', '145', '', '', '2013-02-05 15:54:09', '2013-02-05 14:54:09', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?post_type=slide&#038;p=145', 0, 'slide', '', 0),
(146, 1, '2013-02-05 15:54:25', '2013-02-05 14:54:25', '', '', '', 'publish', 'closed', 'closed', '', '146', '', '', '2013-02-05 15:54:25', '2013-02-05 14:54:25', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?post_type=slide&#038;p=146', 0, 'slide', '', 0),
(147, 1, '2013-02-05 15:55:18', '2013-02-05 14:55:18', '', '', '', 'publish', 'closed', 'closed', '', '147', '', '', '2013-02-05 15:55:18', '2013-02-05 14:55:18', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?post_type=slide&#038;p=147', 0, 'slide', '', 0),
(148, 1, '2013-02-05 15:56:27', '2013-02-05 14:56:27', '', '', '', 'publish', 'closed', 'closed', '', '148', '', '', '2013-02-05 15:56:27', '2013-02-05 14:56:27', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?post_type=slide&#038;p=148', 0, 'slide', '', 0),
(149, 1, '2013-02-05 15:57:01', '2013-02-05 14:57:01', '', '', '', 'publish', 'closed', 'closed', '', '149', '', '', '2013-02-05 15:57:01', '2013-02-05 14:57:01', '', 0, 'http://localhost/~pongan/festival_cinema/wordpress/?post_type=slide&#038;p=149', 0, 'slide', '', 0),
(150, 1, '2013-02-06 10:33:46', '2013-02-06 09:33:46', '', 'Cite Gay.com', '', 'inherit', 'open', 'open', '', 'cite-gay-com-2', '', '', '2013-02-06 10:33:46', '2013-02-06 09:33:46', '', 12, 'http://localhost/~pongan/festival_cinema/wordpress/wp-content/uploads/2013/01/Cite-Gay.com_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(151, 1, '2013-02-01 12:24:51', '2013-02-01 11:24:51', '[gallery link="file" ids="126,127,129,128,130,131,132,133,134"]\r\n\r\n- Région Centre\r\n- Orléans\r\n- Cinéma des Carmes\r\n- GAGL\r\n- Têtu\r\n- La dixième MUSE\r\n- CiteGay\r\n- Yagg.com\r\n- France Bleu', 'Partenaires', '', 'inherit', 'open', 'open', '', '12-revision-7', '', '', '2013-02-01 12:24:51', '2013-02-01 11:24:51', '', 12, 'http://localhost/~pongan/festival_cinema/wordpress/?p=151', 0, 'revision', '', 0),
(152, 1, '2013-02-07 12:43:14', '2013-02-07 11:43:14', '<p><a href="http://www.regioncentre.fr" target="_blank" title="La Région Centre">- La Région Centre</a></p>\n<p><a href="http://www.orleans.fr/" title="La mairiie d''Orléans" target="_blank">- La Mairie d''Orléans</a></p>\n<p><a href="http://www.cinemalescarmes.com/" title="Le cinéma des carmes" target="_blank">- Le cinéma des Carmes</a></p>\n<p><a href="http://www.centrelgbtorleans.org/" title="Le Groupe Action Gay et Lesbien 45" target="_blank">- Le Groupe Action Gay &amp; Lesbien - Loiret</a></p>\n<p><a href="http://www.citegay.fr/" title="Citégay" target="_blank">- Citégay</a></p>\n<p><a href="http://www.muse-out.com/" title="Magazine la Dixième Muse" target="_blank">- La dixième Muse</a></p>\n<p><a href="http://www.tetu.com/" title="Le magazine Têtu" target="_blank">- Têtu</a></p>\n<p><a href="http://yagg.com/" title="Le média Yagg" target="_blank">- Yagg.com</a></p>\n<p><a href="http://www.francebleu.fr/station/france-bleu-orleans" title="France Bleu Orléans" target="_blank">- France Bleu Orléans</a></p>\n<p><a href="http://www.bagdam.org/" title="Bagdam Espace Lesbien (Toulouse)" target="_blank">- Bagdam Espace Lesbien ( Toulouse )</a></p>\n<p><a href="http://www.cineffable.fr/" title="Cineffable" target="_blank">- Cineffable\n<p><a href="http://www.aixenprovencetourism.com/aix-news-festivaltouscourts.htm" title="Le Festival Tous Cours (Aix en Provence)" target="_blank">- Le Festival Tous Courts ( Aix en Provence )</a></p>\n<p>- Les VidéObstinées</a></p>', 'Remerciements', '', 'inherit', 'open', 'open', '', '14-autosave', '', '', '2013-02-07 12:43:14', '2013-02-07 11:43:14', '', 14, 'http://localhost/~pongan/festival_cinema/wordpress/?p=152', 0, 'revision', '', 0),
(153, 1, '2013-01-21 12:40:14', '2013-01-21 11:40:14', '- La Région Centre\r\n- La Mairie d''Orléans\r\n- Le cinéma des Carmes\r\n- Le Groupe Action Gay &amp; Lesbien - Loiret\r\n- Citégay\r\n- La dixième Muse\r\n- Têtu\r\n- Yagg.com\r\n- France Bleu Orléans\r\n- Bagdam Espace Lesbien ( Toulouse )\r\n- Cineffable\r\n- Le Festival Tous Courts ( Aix en Provence )\r\n- Les VidéObstinées', 'Remerciements', '', 'inherit', 'open', 'open', '', '14-revision-2', '', '', '2013-01-21 12:40:14', '2013-01-21 11:40:14', '', 14, 'http://localhost/~pongan/festival_cinema/wordpress/?p=153', 0, 'revision', '', 0),
(154, 1, '2013-02-06 10:47:05', '2013-02-06 09:47:05', '<a href="http://www.region.centre.fr" title="La Région Centre"></a>- La Région Centre\r\n- La Mairie d''Orléans\r\n- Le cinéma des Carmes\r\n- Le Groupe Action Gay &amp; Lesbien - Loiret\r\n- Citégay\r\n- La dixième Muse\r\n- Têtu\r\n- Yagg.com\r\n- France Bleu Orléans\r\n- Bagdam Espace Lesbien ( Toulouse )\r\n- Cineffable\r\n- Le Festival Tous Courts ( Aix en Provence )\r\n- Les VidéObstinées', 'Remerciements', '', 'inherit', 'open', 'open', '', '14-revision-3', '', '', '2013-02-06 10:47:05', '2013-02-06 09:47:05', '', 14, 'http://localhost/~pongan/festival_cinema/wordpress/?p=154', 0, 'revision', '', 0),
(155, 1, '2013-02-06 10:48:03', '2013-02-06 09:48:03', '<a href="http://www.region.centre.fr" title="La Région Centre">- La Région Centre</a>\r\n- La Mairie d''Orléans\r\n- Le cinéma des Carmes\r\n- Le Groupe Action Gay &amp; Lesbien - Loiret\r\n- Citégay\r\n- La dixième Muse\r\n- Têtu\r\n- Yagg.com\r\n- France Bleu Orléans\r\n- Bagdam Espace Lesbien ( Toulouse )\r\n- Cineffable\r\n- Le Festival Tous Courts ( Aix en Provence )\r\n- Les VidéObstinées', 'Remerciements', '', 'inherit', 'open', 'open', '', '14-revision-4', '', '', '2013-02-06 10:48:03', '2013-02-06 09:48:03', '', 14, 'http://localhost/~pongan/festival_cinema/wordpress/?p=155', 0, 'revision', '', 0),
(156, 1, '2013-02-06 10:48:57', '2013-02-06 09:48:57', '<a href="http://www.regioncentre.fr" title="La Région Centre">- La Région Centre</a>\r\n- La Mairie d''Orléans\r\n- Le cinéma des Carmes\r\n- Le Groupe Action Gay &amp; Lesbien - Loiret\r\n- Citégay\r\n- La dixième Muse\r\n- Têtu\r\n- Yagg.com\r\n- France Bleu Orléans\r\n- Bagdam Espace Lesbien ( Toulouse )\r\n- Cineffable\r\n- Le Festival Tous Courts ( Aix en Provence )\r\n- Les VidéObstinées', 'Remerciements', '', 'inherit', 'open', 'open', '', '14-revision-5', '', '', '2013-02-06 10:48:57', '2013-02-06 09:48:57', '', 14, 'http://localhost/~pongan/festival_cinema/wordpress/?p=156', 0, 'revision', '', 0),
(157, 1, '2013-02-06 10:49:51', '2013-02-06 09:49:51', '<p><a href="http://www.regioncentre.fr" title="La Région Centre">- La Région Centre</a></p>\r\n- La Mairie d''Orléans\r\n- Le cinéma des Carmes\r\n- Le Groupe Action Gay &amp; Lesbien - Loiret\r\n- Citégay\r\n- La dixième Muse\r\n- Têtu\r\n- Yagg.com\r\n- France Bleu Orléans\r\n- Bagdam Espace Lesbien ( Toulouse )\r\n- Cineffable\r\n- Le Festival Tous Courts ( Aix en Provence )\r\n- Les VidéObstinées', 'Remerciements', '', 'inherit', 'open', 'open', '', '14-revision-6', '', '', '2013-02-06 10:49:51', '2013-02-06 09:49:51', '', 14, 'http://localhost/~pongan/festival_cinema/wordpress/?p=157', 0, 'revision', '', 0),
(158, 1, '2013-02-06 10:51:40', '2013-02-06 09:51:40', '<p><a href="http://www.regioncentre.fr" target="_blank" title="La Région Centre">- La Région Centre</a></p>\r\n- La Mairie d''Orléans\r\n- Le cinéma des Carmes\r\n- Le Groupe Action Gay &amp; Lesbien - Loiret\r\n- Citégay\r\n- La dixième Muse\r\n- Têtu\r\n- Yagg.com\r\n- France Bleu Orléans\r\n- Bagdam Espace Lesbien ( Toulouse )\r\n- Cineffable\r\n- Le Festival Tous Courts ( Aix en Provence )\r\n- Les VidéObstinées', 'Remerciements', '', 'inherit', 'open', 'open', '', '14-revision-7', '', '', '2013-02-06 10:51:40', '2013-02-06 09:51:40', '', 14, 'http://localhost/~pongan/festival_cinema/wordpress/?p=158', 0, 'revision', '', 0),
(159, 1, '2013-02-06 10:58:00', '2013-02-06 09:58:00', '<p><a href="http://www.regioncentre.fr" target="_blank" title="La Région Centre">- La Région Centre</a></p>www.orleans.fr/\r\n<p><a href="http://www.orleans.fr/" title="La mairiie d''Orléans" target="_blank">- La Mairie d''Orléans</a></p>\r\n<p><a href="http://www.cinemalescarmes.com/" title="Le cinéma des carmes" target="_blank">- Le cinéma des Carmes</a></p>\r\n<p>- Le Groupe Action Gay &amp; Lesbien - Loiret</a></p>\r\n<p>- Citégay</a></p>\r\n<p>- La dixième Muse</a></p>\r\n<p>- Têtu</a></p>\r\n<p>- Yagg.com</a></p>\r\n<p>- France Bleu Orléans</a></p>\r\n<p>- Bagdam Espace Lesbien ( Toulouse )</a></p>\r\n<p>- Cineffable\r\n<p>- Le Festival Tous Courts ( Aix en Provence )</a></p>\r\n<p>- Les VidéObstinées</a></p>', 'Remerciements', '', 'inherit', 'open', 'open', '', '14-revision-8', '', '', '2013-02-06 10:58:00', '2013-02-06 09:58:00', '', 14, 'http://localhost/~pongan/festival_cinema/wordpress/?p=159', 0, 'revision', '', 0),
(160, 1, '2013-02-06 10:58:41', '2013-02-06 09:58:41', '<p><a href="http://www.regioncentre.fr" target="_blank" title="La Région Centre">- La Région Centre</a></p>\r\n<p><a href="http://www.orleans.fr/" title="La mairiie d''Orléans" target="_blank">- La Mairie d''Orléans</a></p>\r\n<p><a href="http://www.cinemalescarmes.com/" title="Le cinéma des carmes" target="_blank">- Le cinéma des Carmes</a></p>\r\n<p>- Le Groupe Action Gay &amp; Lesbien - Loiret</a></p>\r\n<p>- Citégay</a></p>\r\n<p>- La dixième Muse</a></p>\r\n<p>- Têtu</a></p>\r\n<p>- Yagg.com</a></p>\r\n<p>- France Bleu Orléans</a></p>\r\n<p>- Bagdam Espace Lesbien ( Toulouse )</a></p>\r\n<p>- Cineffable\r\n<p>- Le Festival Tous Courts ( Aix en Provence )</a></p>\r\n<p>- Les VidéObstinées</a></p>', 'Remerciements', '', 'inherit', 'open', 'open', '', '14-revision-9', '', '', '2013-02-06 10:58:41', '2013-02-06 09:58:41', '', 14, 'http://localhost/~pongan/festival_cinema/wordpress/?p=160', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_terms`
--

CREATE TABLE IF NOT EXISTS `wp_festival_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `wp_festival_terms`
--

INSERT INTO `wp_festival_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(3, 'Films', 'films', 0),
(4, 'Courts metrages', 'courts-metrages', 0),
(6, 'Menu', 'menu', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_festival_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_festival_term_relationships`
--

INSERT INTO `wp_festival_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(31, 6, 0),
(32, 6, 0),
(33, 6, 0),
(34, 6, 0),
(35, 6, 0),
(36, 6, 0),
(37, 1, 0),
(39, 4, 0),
(44, 4, 0),
(47, 3, 0),
(50, 3, 0),
(53, 3, 0),
(56, 3, 0),
(59, 4, 0),
(64, 4, 0),
(67, 4, 0),
(71, 4, 0),
(74, 4, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_festival_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `wp_festival_term_taxonomy`
--

INSERT INTO `wp_festival_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(3, 3, 'category', '', 0, 4),
(4, 4, 'category', '', 0, 7),
(6, 6, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Contenu de la table `wp_festival_usermeta`
--

INSERT INTO `wp_festival_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'admin'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_festival_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_festival_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_festival_dashboard_quick_press_last_post_id', '136'),
(15, 1, 'managenav-menuscolumnshidden', 'a:3:{i:0;s:11:"link-target";i:1;s:3:"xfn";i:2;s:11:"description";}'),
(16, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(17, 1, 'nav_menu_recently_edited', '6'),
(18, 1, 'wp_festival_user-settings', 'editor=html&libraryContent=browse&unfold=1&hidetb=0'),
(19, 1, 'wp_festival_user-settings-time', '1360144021'),
(20, 1, 'closedpostboxes_post', 'a:0:{}'),
(21, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";i:6;s:12:"revisionsdiv";}'),
(22, 1, 'edit_slideshow_per_page', '20'),
(23, 1, 'closedpostboxes_slide', 'a:0:{}'),
(24, 1, 'metaboxhidden_slide', 'a:0:{}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_users`
--

CREATE TABLE IF NOT EXISTS `wp_festival_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_festival_users`
--

INSERT INTO `wp_festival_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BzaNEMTGXG20YmIkUEFEcLBCOIjS0c0', 'admin', 'philippe.pongan@cegetel.net', '', '2013-01-15 15:54:38', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `wp_links`
--

INSERT INTO `wp_links` (`link_id`, `link_url`, `link_name`, `link_image`, `link_target`, `link_description`, `link_visible`, `link_owner`, `link_rating`, `link_updated`, `link_rel`, `link_notes`, `link_rss`) VALUES
(1, 'http://codex.wordpress.org', 'Documentation', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(2, 'http://www.wordpress-fr.net/planet/', 'Blog WordPress', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', 'http://feeds2.feedburner.com/WordpressFrancophonePlanet'),
(3, 'http://www.wordpress-fr.net/support/', 'Forums d&rsquo;entraide en français', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(4, 'http://wordpress.org/extend/plugins/', 'Extensions', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(5, 'http://wordpress.org/extend/themes/', 'Thèmes', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(6, '<a href="http://www.wordpress-fr.net/support/">Forums d&rsquo;entraide</a>', 'Remarque', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(7, 'http://www.wordpress-fr.net/planet/', 'La planète WordPress', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=187 ;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/~pongan/wordpress', 'yes'),
(2, 'blogname', 'Site Essai Wordpress', 'yes'),
(3, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'philippe.pongan@cegetel.net', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '1', 'yes'),
(21, 'default_post_edit_rows', '20', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y, G \\h i \\m\\i\\n', 'yes'),
(26, 'links_recently_updated_prepend', '<em>', 'yes'),
(27, 'links_recently_updated_append', '</em>', 'yes'),
(28, 'links_recently_updated_time', '120', 'yes'),
(29, 'comment_moderation', '0', 'yes'),
(30, 'moderation_notify', '1', 'yes'),
(31, 'permalink_structure', '/%postname%’', 'yes'),
(32, 'gzipcompression', '0', 'yes'),
(33, 'hack_file', '0', 'yes'),
(34, 'blog_charset', 'UTF-8', 'yes'),
(35, 'moderation_keys', '', 'no'),
(36, 'active_plugins', 'a:0:{}', 'yes'),
(37, 'home', 'http://localhost/~pongan/wordpress', 'yes'),
(38, 'category_base', '', 'yes'),
(39, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(40, 'advanced_edit', '0', 'yes'),
(41, 'comment_max_links', '2', 'yes'),
(42, 'gmt_offset', '1', 'yes'),
(43, 'default_email_category', '1', 'yes'),
(44, 'recently_edited', '', 'no'),
(45, 'template', 'wordpress-bootstrap', 'yes'),
(46, 'stylesheet', 'wordpress-bootstrap', 'yes'),
(47, 'comment_whitelist', '1', 'yes'),
(48, 'blacklist_keys', '', 'no'),
(49, 'comment_registration', '0', 'yes'),
(50, 'html_type', 'text/html', 'yes'),
(51, 'use_trackback', '0', 'yes'),
(52, 'default_role', 'subscriber', 'yes'),
(53, 'db_version', '21707', 'yes'),
(54, 'uploads_use_yearmonth_folders', '1', 'yes'),
(55, 'upload_path', '', 'yes'),
(56, 'blog_public', '1', 'yes'),
(57, 'default_link_category', '2', 'yes'),
(58, 'show_on_front', 'posts', 'yes'),
(59, 'tag_base', '', 'yes'),
(60, 'show_avatars', '1', 'yes'),
(61, 'avatar_rating', 'G', 'yes'),
(62, 'upload_url_path', '', 'yes'),
(63, 'thumbnail_size_w', '150', 'yes'),
(64, 'thumbnail_size_h', '150', 'yes'),
(65, 'thumbnail_crop', '1', 'yes'),
(66, 'medium_size_w', '300', 'yes'),
(67, 'medium_size_h', '300', 'yes'),
(68, 'avatar_default', 'mystery', 'yes'),
(69, 'enable_app', '0', 'yes'),
(70, 'enable_xmlrpc', '0', 'yes'),
(71, 'large_size_w', '1024', 'yes'),
(72, 'large_size_h', '1024', 'yes'),
(73, 'image_default_link_type', 'file', 'yes'),
(74, 'image_default_size', '', 'yes'),
(75, 'image_default_align', '', 'yes'),
(76, 'close_comments_for_old_posts', '0', 'yes'),
(77, 'close_comments_days_old', '14', 'yes'),
(78, 'thread_comments', '1', 'yes'),
(79, 'thread_comments_depth', '5', 'yes'),
(80, 'page_comments', '0', 'yes'),
(81, 'comments_per_page', '50', 'yes'),
(82, 'default_comments_page', 'newest', 'yes'),
(83, 'comment_order', 'asc', 'yes'),
(84, 'sticky_posts', 'a:0:{}', 'yes'),
(85, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(86, 'widget_text', 'a:0:{}', 'yes'),
(87, 'widget_rss', 'a:0:{}', 'yes'),
(88, 'uninstall_plugins', 'a:0:{}', 'no'),
(89, 'timezone_string', '', 'yes'),
(90, 'embed_autourls', '1', 'yes'),
(91, 'embed_size_w', '', 'yes'),
(92, 'embed_size_h', '600', 'yes'),
(93, 'page_for_posts', '0', 'yes'),
(94, 'page_on_front', '0', 'yes'),
(95, 'default_post_format', '0', 'yes'),
(96, 'initial_db_version', '21707', 'yes'),
(97, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:7:{s:19:"wp_inactive_widgets";a:0:{}s:8:"sidebar1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"sidebar2";a:0:{}s:7:"footer1";a:0:{}s:7:"footer2";a:0:{}s:7:"footer3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(104, 'cron', 'a:5:{i:1358265332;a:2:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1358265333;a:1:{s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1358265444;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1358265711;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(106, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:5:"3.4.2";s:12:"last_checked";i:1358264389;}', 'yes'),
(107, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1358264419;}', 'yes'),
(110, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1358264449;}', 'yes'),
(111, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:34:"http://localhost/~pongan/wordpress";s:4:"link";s:110:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://localhost/~pongan/wordpress/";s:3:"url";s:143:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost/~pongan/wordpress/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:14:"Blog WordPress";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:46:"Autres actualités de WordPress (en français)";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(112, 'can_compress_scripts', '0', 'yes'),
(126, 'recently_activated', 'a:0:{}', 'yes'),
(129, 'category_children', 'a:0:{}', 'yes'),
(130, 'twentyeleven_theme_options', 'a:3:{s:12:"color_scheme";s:4:"dark";s:10:"link_color";s:7:"#1b8be0";s:12:"theme_layout";s:15:"sidebar-content";}', 'yes'),
(136, 'current_theme', 'wp-bootstrap', 'yes'),
(137, 'theme_mods_twentytwelve', 'a:3:{i:0;b:0;s:16:"background_color";s:6:"e6e6e6";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1354635630;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(138, 'theme_switched', '', 'yes'),
(147, '_site_transient_timeout_wporg_theme_feature_list', '1354650860', 'yes'),
(148, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes'),
(160, 'theme_mods_twentyeleven', 'a:9:{s:16:"header_textcolor";s:3:"000";s:16:"background_color";s:6:"1d1d1d";s:12:"header_image";s:95:"http://localhost/~pongan/wordpress/wp-content/themes/twentyeleven/images/headers/chessboard.jpg";s:17:"header_image_data";a:3:{s:3:"url";s:95:"http://localhost/~pongan/wordpress/wp-content/themes/twentyeleven/images/headers/chessboard.jpg";s:13:"thumbnail_url";s:105:"http://localhost/~pongan/wordpress/wp-content/themes/twentyeleven/images/headers/chessboard-thumbnail.jpg";s:11:"description";s:6:"Damier";}s:16:"background_image";s:0:"";s:17:"background_repeat";s:6:"repeat";s:21:"background_position_x";s:4:"left";s:21:"background_attachment";s:5:"fixed";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1354636096;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:9:"sidebar-4";a:0:{}s:9:"sidebar-5";a:0:{}}}}', 'yes'),
(161, 'optionsframework', 'a:2:{s:2:"id";s:11:"wpbootstrap";s:12:"knownoptions";a:1:{i:0;s:11:"wpbootstrap";}}', 'yes'),
(162, 'wpbootstrap', 'a:22:{s:18:"heading_typography";a:3:{s:4:"face";s:7:"Default";s:5:"style";s:6:"Normal";s:5:"color";s:0:"";}s:20:"main_body_typography";a:3:{s:4:"face";s:7:"Default";s:5:"style";s:6:"Normal";s:5:"color";s:0:"";}s:10:"link_color";s:0:"";s:16:"link_hover_color";s:0:"";s:17:"link_active_color";s:0:"";s:12:"nav_position";s:0:"";s:16:"top_nav_bg_color";s:0:"";s:19:"showhidden_gradient";s:1:"0";s:29:"top_nav_bottom_gradient_color";s:0:"";s:18:"top_nav_link_color";s:0:"";s:24:"top_nav_link_hover_color";s:0:"";s:21:"top_nav_dropdown_item";s:0:"";s:25:"top_nav_dropdown_hover_bg";s:0:"";s:10:"search_bar";s:1:"0";s:17:"showhidden_themes";s:1:"0";s:10:"wpbs_theme";s:7:"default";s:24:"showhidden_slideroptions";s:1:"0";s:14:"slider_options";s:1:"5";s:18:"hero_unit_bg_color";s:0:"";s:25:"suppress_comments_message";s:1:"1";s:9:"blog_hero";s:1:"1";s:8:"wpbs_css";s:0:"";}', 'yes'),
(163, 'theme_mods_wordpress-bootstrap', 'a:7:{i:0;b:0;s:16:"background_color";s:6:"b7a7a7";s:16:"background_image";s:0:"";s:17:"background_repeat";s:6:"repeat";s:21:"background_position_x";s:4:"left";s:21:"background_attachment";s:5:"fixed";s:18:"nav_menu_locations";a:2:{s:8:"main_nav";i:3;s:12:"footer_links";i:3;}}', 'yes'),
(165, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(166, 'rewrite_rules', 'a:67:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:29:"comments/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:30:"[^/]+’/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:40:"[^/]+’/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:60:"[^/]+’/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"[^/]+’/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"[^/]+’/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:23:"([^/]+)’/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:43:"([^/]+)’/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:38:"([^/]+)’/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:31:"([^/]+)’/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:38:"([^/]+)’/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:23:"([^/]+)’(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:19:"[^/]+’/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:29:"[^/]+’/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:49:"[^/]+’/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:44:"[^/]+’/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:44:"[^/]+’/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(172, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1358227652', 'no'),
(173, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: couldn''t connect to host</p></div>', 'no'),
(174, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1358227653', 'no'),
(175, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p>', 'no'),
(176, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1358227653', 'no'),
(177, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p></div>', 'no'),
(178, '_transient_timeout_plugin_slugs', '1358270864', 'no'),
(179, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(180, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1358227665', 'no'),
(181, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '', 'no'),
(185, '_site_transient_timeout_theme_roots', '1358266249', 'yes'),
(186, '_site_transient_theme_roots', 'a:4:{s:12:"twentyeleven";s:7:"/themes";s:9:"twentyten";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";s:19:"wordpress-bootstrap";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1354032353:1'),
(4, 1, '_edit_lock', '1354034308:1'),
(5, 9, '_menu_item_type', 'custom'),
(6, 9, '_menu_item_menu_item_parent', '0'),
(7, 9, '_menu_item_object_id', '9'),
(8, 9, '_menu_item_object', 'custom'),
(9, 9, '_menu_item_target', ''),
(10, 9, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(11, 9, '_menu_item_xfn', ''),
(12, 9, '_menu_item_url', 'http://univ-orleans.gr'),
(13, 9, '_menu_item_orphaned', '1354637485'),
(14, 10, '_menu_item_type', 'taxonomy'),
(15, 10, '_menu_item_menu_item_parent', '0'),
(16, 10, '_menu_item_object_id', '1'),
(17, 10, '_menu_item_object', 'category'),
(18, 10, '_menu_item_target', ''),
(19, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(20, 10, '_menu_item_xfn', ''),
(21, 10, '_menu_item_url', ''),
(22, 10, '_menu_item_orphaned', '1354637520'),
(23, 11, '_menu_item_type', 'custom'),
(24, 11, '_menu_item_menu_item_parent', '0'),
(25, 11, '_menu_item_object_id', '11'),
(26, 11, '_menu_item_object', 'custom'),
(27, 11, '_menu_item_target', ''),
(28, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(29, 11, '_menu_item_xfn', ''),
(30, 11, '_menu_item_url', 'http://http://www.flickr.com/groups/creativecommons/'),
(31, 11, '_menu_item_orphaned', '1354637743'),
(32, 12, '_menu_item_type', 'custom'),
(33, 12, '_menu_item_menu_item_parent', '0'),
(34, 12, '_menu_item_object_id', '12'),
(35, 12, '_menu_item_object', 'custom'),
(36, 12, '_menu_item_target', ''),
(37, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(38, 12, '_menu_item_xfn', ''),
(39, 12, '_menu_item_url', 'http://www.univ-orleans.fr'),
(41, 13, '_menu_item_type', 'custom'),
(42, 13, '_menu_item_menu_item_parent', '0'),
(43, 13, '_menu_item_object_id', '13'),
(44, 13, '_menu_item_object', 'custom'),
(45, 13, '_menu_item_target', ''),
(46, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(47, 13, '_menu_item_xfn', ''),
(48, 13, '_menu_item_url', 'http://www.flickr.com/groups/creativecommons/'),
(50, 14, '_menu_item_type', 'custom'),
(51, 14, '_menu_item_menu_item_parent', '0'),
(52, 14, '_menu_item_object_id', '14'),
(53, 14, '_menu_item_object', 'custom'),
(54, 14, '_menu_item_target', ''),
(55, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(56, 14, '_menu_item_xfn', ''),
(57, 14, '_menu_item_url', 'http://localhost/~pongan/wordpress/?p');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2012-11-27 15:55:03', '2012-11-27 15:55:03', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2012-11-27 15:55:03', '2012-11-27 15:55:03', '', 0, 'http://localhost/~pongan/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2012-11-27 15:55:03', '2012-11-27 15:55:03', 'Voici un exemple de page. Elle est différente d&rsquo;un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page &laquo;&nbsp;À Propos&nbsp;&raquo; qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant&nbsp;:\n\n<blockquote>Bonjour&nbsp;! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça&nbsp;:\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2&nbsp;000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nEtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/~pongan/wordpress/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien&nbsp;!', 'Page d&rsquo;exemple', '', 'publish', 'open', 'open', '', 'page-d-exemple', '', '', '2012-11-27 15:55:03', '2012-11-27 15:55:03', '', 0, 'http://localhost/~pongan/wordpress/?page_id=2', 0, 'page', '', 0),
(4, 1, '2012-11-27 17:05:52', '0000-00-00 00:00:00', '<strong>orem Ipsum</strong>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n<div>\n\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\n</div>\n&nbsp;\n<div>\n<div>\n\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\n\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\n\n</div>\n<div>\n\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\n\n</div>\n</div>\n&nbsp;', 'loren ipsum', '', 'draft', 'open', 'open', '', '', '', '', '2012-11-27 17:05:52', '2012-11-27 16:05:52', '', 0, 'http://localhost/~pongan/wordpress/?p=4', 0, 'post', '', 0),
(9, 1, '2012-12-04 17:11:25', '0000-00-00 00:00:00', '', 'université d''orléans', '', 'draft', 'open', 'open', '', '', '', '', '2012-12-04 17:11:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/~pongan/wordpress/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2012-12-04 17:11:59', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2012-12-04 17:11:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/~pongan/wordpress/?p=10', 1, 'nav_menu_item', '', 0),
(11, 1, '2012-12-04 17:15:41', '0000-00-00 00:00:00', '', 'page d''accueil Flickr', '', 'draft', 'open', 'open', '', '', '', '', '2012-12-04 17:15:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/~pongan/wordpress/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2012-12-04 17:18:12', '2012-12-04 16:18:12', '', 'université d''orléans', '', 'publish', 'open', 'open', '', 'universite-dorleans', '', '', '2012-12-04 17:25:16', '2012-12-04 16:25:16', '', 0, 'http://localhost/~pongan/wordpress/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2012-12-04 17:20:15', '2012-12-04 16:20:15', '', 'Flickr', '', 'publish', 'open', 'open', '', 'flickr', '', '', '2012-12-04 17:25:17', '2012-12-04 16:25:17', '', 0, 'http://localhost/~pongan/wordpress/?p=13', 2, 'nav_menu_item', '', 0),
(14, 1, '2012-12-04 17:23:46', '2012-12-04 16:23:46', '', 'page d''accueil', '', 'publish', 'open', 'open', '', 'page-daccueil', '', '', '2012-12-04 17:25:17', '2012-12-04 16:25:17', '', 0, 'http://localhost/~pongan/wordpress/?p=14', 3, 'nav_menu_item', '', 0),
(15, 1, '2013-01-14 18:28:27', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-01-14 18:28:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/~pongan/wordpress/?p=15', 0, 'post', '', 0),
(16, 1, '2013-01-14 18:32:09', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-01-14 18:32:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/~pongan/wordpress/?p=16', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'lorem', 'non-classe', 0),
(2, 'Liens', 'liens', 0),
(3, 'navigation_principale', 'navigation_principale', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 2, 0),
(2, 2, 0),
(3, 2, 0),
(4, 1, 0),
(4, 2, 0),
(5, 2, 0),
(6, 2, 0),
(7, 2, 0),
(12, 3, 0),
(13, 3, 0),
(14, 3, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'link_category', '', 0, 7),
(3, 3, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'pongan'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";s:1:"1";}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_media_uploader,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '15'),
(15, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(16, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(17, 1, 'nav_menu_recently_edited', '3'),
(18, 1, 'closedpostboxes_post', 'a:0:{}'),
(19, 1, 'metaboxhidden_post', 'a:5:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:16:"commentstatusdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'pongan', '$P$B/ehf6yzTIxDA6BBzwQ.uRSWhro/kc/', 'pongan', 'philippe.pongan@cegetel.net', '', '2012-11-27 15:55:01', '', 0, 'pongan');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
