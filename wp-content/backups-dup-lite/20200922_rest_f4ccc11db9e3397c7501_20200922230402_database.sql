/* DUPLICATOR-LITE (PHP BUILD MODE) MYSQL SCRIPT CREATED ON : 2020-09-22 23:04:15 */

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_duplicator_packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=335 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=1183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


/* INSERT TABLE DATA: wp_duplicator_packages */
INSERT INTO `wp_duplicator_packages` VALUES("1", "20200922_rest", "f4ccc11db9e3397c7501_20200922230402", "22", "2020-09-22 23:04:14", "unknown", "O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2020-09-22 23:04:02\";s:7:\"Version\";s:6:\"1.3.38\";s:9:\"VersionWP\";s:3:\"5.5\";s:9:\"VersionDB\";s:6:\"5.7.24\";s:10:\"VersionPHP\";s:5:\"7.4.1\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";i:1;s:4:\"Name\";s:13:\"20200922_rest\";s:4:\"Hash\";s:35:\"f4ccc11db9e3397c7501_20200922230402\";s:8:\"NameHash\";s:49:\"20200922_rest_f4ccc11db9e3397c7501_20200922230402\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:59:\"20200922_rest_f4ccc11db9e3397c7501_20200922230402_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";s:4:\"21.5\";s:6:\"WPUser\";s:7:\"unknown\";s:7:\"Archive\";O:11:\"DUP_Archive\":21:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";s:61:\"20200922_rest_f4ccc11db9e3397c7501_20200922230402_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:32:\"C:/Users/User/Desktop/sites/Rest\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":5:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":6:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:-1;s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2020-09-22 23:04:02\";s:7:\"Version\";s:6:\"1.3.38\";s:9:\"VersionWP\";s:3:\"5.5\";s:9:\"VersionDB\";s:6:\"5.7.24\";s:10:\"VersionPHP\";s:5:\"7.4.1\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:13:\"20200922_rest\";s:4:\"Hash\";s:35:\"f4ccc11db9e3397c7501_20200922230402\";s:8:\"NameHash\";s:49:\"20200922_rest_f4ccc11db9e3397c7501_20200922230402\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";O:13:\"DUP_Installer\":11:{s:4:\"File\";s:63:\"20200922_rest_f4ccc11db9e3397c7501_20200922230402_installer.php\";s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:61;}s:8:\"Database\";O:12:\"DUP_Database\":15:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";s:62:\"20200922_rest_f4ccc11db9e3397c7501_20200922230402_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server (GPL)\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":15:{s:9:\"buildMode\";N;s:13:\"collationList\";a:0:{}s:17:\"isTablesUpperCase\";N;s:15:\"isNameUpperCase\";N;s:4:\"name\";N;s:15:\"tablesBaseCount\";N;s:16:\"tablesFinalCount\";N;s:14:\"tablesRowCount\";N;s:16:\"tablesSizeOnDisk\";N;s:18:\"varLowerCaseTables\";i:1;s:7:\"version\";N;s:14:\"versionComment\";N;s:18:\"tableWiseRowCounts\";a:1:{s:14:\"wp_commentmeta\";s:1:\"0\";}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:1;s:24:\"\0DUP_Database\0tempDbPath\";s:127:\"C:/Users/User/Desktop/sites/Rest/wp-content/backups-dup-lite/tmp/20200922_rest_f4ccc11db9e3397c7501_20200922230402_database.sql\";s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;s:19:\"sameNameTableExists\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:0;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";r:61;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:41:\"C:/Users/User/Desktop/sites/Rest/wp-admin\";i:1;s:51:\"C:/Users/User/Desktop/sites/Rest/wp-content/uploads\";i:2;s:53:\"C:/Users/User/Desktop/sites/Rest/wp-content/languages\";i:3;s:50:\"C:/Users/User/Desktop/sites/Rest/wp-content/themes\";i:4;s:44:\"C:/Users/User/Desktop/sites/Rest/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:32:\"C:/Users/User/Desktop/sites/Rest\";i:1;s:43:\"C:/Users/User/Desktop/sites/Rest/wp-content\";}}s:9:\"Installer\";r:82;s:8:\"Database\";r:94;s:13:\"BuildProgress\";r:126;}");

/* INSERT TABLE DATA: wp_options */
INSERT INTO `wp_options` VALUES("1", "siteurl", "http://localhost:8888/Rest", "yes");
INSERT INTO `wp_options` VALUES("2", "home", "http://localhost:8888/Rest", "yes");
INSERT INTO `wp_options` VALUES("3", "blogname", "Rest", "yes");
INSERT INTO `wp_options` VALUES("4", "blogdescription", "TAGLINE", "yes");
INSERT INTO `wp_options` VALUES("5", "users_can_register", "0", "yes");
INSERT INTO `wp_options` VALUES("6", "admin_email", "gsdias22@gmail.com", "yes");
INSERT INTO `wp_options` VALUES("7", "start_of_week", "1", "yes");
INSERT INTO `wp_options` VALUES("8", "use_balanceTags", "0", "yes");
INSERT INTO `wp_options` VALUES("9", "use_smilies", "1", "yes");
INSERT INTO `wp_options` VALUES("10", "require_name_email", "1", "yes");
INSERT INTO `wp_options` VALUES("11", "comments_notify", "1", "yes");
INSERT INTO `wp_options` VALUES("12", "posts_per_rss", "10", "yes");
INSERT INTO `wp_options` VALUES("13", "rss_use_excerpt", "0", "yes");
INSERT INTO `wp_options` VALUES("14", "mailserver_url", "mail.example.com", "yes");
INSERT INTO `wp_options` VALUES("15", "mailserver_login", "login@example.com", "yes");
INSERT INTO `wp_options` VALUES("16", "mailserver_pass", "password", "yes");
INSERT INTO `wp_options` VALUES("17", "mailserver_port", "110", "yes");
INSERT INTO `wp_options` VALUES("18", "default_category", "1", "yes");
INSERT INTO `wp_options` VALUES("19", "default_comment_status", "open", "yes");
INSERT INTO `wp_options` VALUES("20", "default_ping_status", "open", "yes");
INSERT INTO `wp_options` VALUES("21", "default_pingback_flag", "0", "yes");
INSERT INTO `wp_options` VALUES("22", "posts_per_page", "10", "yes");
INSERT INTO `wp_options` VALUES("23", "date_format", "F j, Y", "yes");
INSERT INTO `wp_options` VALUES("24", "time_format", "g:i a", "yes");
INSERT INTO `wp_options` VALUES("25", "links_updated_date_format", "F j, Y g:i a", "yes");
INSERT INTO `wp_options` VALUES("26", "comment_moderation", "0", "yes");
INSERT INTO `wp_options` VALUES("27", "moderation_notify", "1", "yes");
INSERT INTO `wp_options` VALUES("28", "permalink_structure", "/%year%/%monthnum%/%day%/%postname%/", "yes");
INSERT INTO `wp_options` VALUES("29", "rewrite_rules", "a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}", "yes");
INSERT INTO `wp_options` VALUES("30", "hack_file", "0", "yes");
INSERT INTO `wp_options` VALUES("31", "blog_charset", "UTF-8", "yes");
INSERT INTO `wp_options` VALUES("32", "moderation_keys", "", "no");
INSERT INTO `wp_options` VALUES("33", "active_plugins", "a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:25:\"duplicator/duplicator.php\";}", "yes");
INSERT INTO `wp_options` VALUES("34", "category_base", "", "yes");
INSERT INTO `wp_options` VALUES("35", "ping_sites", "http://rpc.pingomatic.com/", "yes");
INSERT INTO `wp_options` VALUES("36", "comment_max_links", "2", "yes");
INSERT INTO `wp_options` VALUES("37", "gmt_offset", "0", "yes");
INSERT INTO `wp_options` VALUES("38", "default_email_category", "1", "yes");
INSERT INTO `wp_options` VALUES("39", "recently_edited", "", "no");
INSERT INTO `wp_options` VALUES("40", "template", "rest-inicio", "yes");
INSERT INTO `wp_options` VALUES("41", "stylesheet", "rest-inicio", "yes");
INSERT INTO `wp_options` VALUES("42", "comment_registration", "0", "yes");
INSERT INTO `wp_options` VALUES("43", "html_type", "text/html", "yes");
INSERT INTO `wp_options` VALUES("44", "use_trackback", "0", "yes");
INSERT INTO `wp_options` VALUES("45", "default_role", "subscriber", "yes");
INSERT INTO `wp_options` VALUES("46", "db_version", "48748", "yes");
INSERT INTO `wp_options` VALUES("47", "uploads_use_yearmonth_folders", "1", "yes");
INSERT INTO `wp_options` VALUES("48", "upload_path", "", "yes");
INSERT INTO `wp_options` VALUES("49", "blog_public", "0", "yes");
INSERT INTO `wp_options` VALUES("50", "default_link_category", "2", "yes");
INSERT INTO `wp_options` VALUES("51", "show_on_front", "page", "yes");
INSERT INTO `wp_options` VALUES("52", "tag_base", "", "yes");
INSERT INTO `wp_options` VALUES("53", "show_avatars", "1", "yes");
INSERT INTO `wp_options` VALUES("54", "avatar_rating", "G", "yes");
INSERT INTO `wp_options` VALUES("55", "upload_url_path", "", "yes");
INSERT INTO `wp_options` VALUES("56", "thumbnail_size_w", "150", "yes");
INSERT INTO `wp_options` VALUES("57", "thumbnail_size_h", "150", "yes");
INSERT INTO `wp_options` VALUES("58", "thumbnail_crop", "1", "yes");
INSERT INTO `wp_options` VALUES("59", "medium_size_w", "300", "yes");
INSERT INTO `wp_options` VALUES("60", "medium_size_h", "300", "yes");
INSERT INTO `wp_options` VALUES("61", "avatar_default", "mystery", "yes");
INSERT INTO `wp_options` VALUES("62", "large_size_w", "1024", "yes");
INSERT INTO `wp_options` VALUES("63", "large_size_h", "1024", "yes");
INSERT INTO `wp_options` VALUES("64", "image_default_link_type", "none", "yes");
INSERT INTO `wp_options` VALUES("65", "image_default_size", "", "yes");
INSERT INTO `wp_options` VALUES("66", "image_default_align", "", "yes");
INSERT INTO `wp_options` VALUES("67", "close_comments_for_old_posts", "0", "yes");
INSERT INTO `wp_options` VALUES("68", "close_comments_days_old", "14", "yes");
INSERT INTO `wp_options` VALUES("69", "thread_comments", "1", "yes");
INSERT INTO `wp_options` VALUES("70", "thread_comments_depth", "5", "yes");
INSERT INTO `wp_options` VALUES("71", "page_comments", "0", "yes");
INSERT INTO `wp_options` VALUES("72", "comments_per_page", "50", "yes");
INSERT INTO `wp_options` VALUES("73", "default_comments_page", "newest", "yes");
INSERT INTO `wp_options` VALUES("74", "comment_order", "asc", "yes");
INSERT INTO `wp_options` VALUES("75", "sticky_posts", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("76", "widget_categories", "a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("77", "widget_text", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("78", "widget_rss", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("79", "uninstall_plugins", "a:0:{}", "no");
INSERT INTO `wp_options` VALUES("80", "timezone_string", "", "yes");
INSERT INTO `wp_options` VALUES("81", "page_for_posts", "0", "yes");
INSERT INTO `wp_options` VALUES("82", "page_on_front", "7", "yes");
INSERT INTO `wp_options` VALUES("83", "default_post_format", "0", "yes");
INSERT INTO `wp_options` VALUES("84", "link_manager_enabled", "0", "yes");
INSERT INTO `wp_options` VALUES("85", "finished_splitting_shared_terms", "1", "yes");
INSERT INTO `wp_options` VALUES("86", "site_icon", "0", "yes");
INSERT INTO `wp_options` VALUES("87", "medium_large_size_w", "768", "yes");
INSERT INTO `wp_options` VALUES("88", "medium_large_size_h", "0", "yes");
INSERT INTO `wp_options` VALUES("89", "wp_page_for_privacy_policy", "3", "yes");
INSERT INTO `wp_options` VALUES("90", "show_comments_cookies_opt_in", "1", "yes");
INSERT INTO `wp_options` VALUES("91", "admin_email_lifespan", "1614221717", "yes");
INSERT INTO `wp_options` VALUES("92", "disallowed_keys", "", "no");
INSERT INTO `wp_options` VALUES("93", "comment_previously_approved", "1", "yes");
INSERT INTO `wp_options` VALUES("94", "auto_plugin_theme_update_emails", "a:0:{}", "no");
INSERT INTO `wp_options` VALUES("95", "initial_db_version", "48748", "yes");
INSERT INTO `wp_options` VALUES("96", "wp_user_roles", "a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}", "yes");
INSERT INTO `wp_options` VALUES("97", "fresh_site", "0", "yes");
INSERT INTO `wp_options` VALUES("98", "widget_search", "a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("99", "widget_recent-posts", "a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("100", "widget_recent-comments", "a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("101", "widget_archives", "a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("102", "widget_meta", "a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("103", "sidebars_widgets", "a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}", "yes");
INSERT INTO `wp_options` VALUES("104", "cron", "a:6:{i:1600818918;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1600829718;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1600829735;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600829736;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1601175318;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}", "yes");
INSERT INTO `wp_options` VALUES("105", "widget_pages", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("106", "widget_calendar", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("107", "widget_media_audio", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("108", "widget_media_image", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("109", "widget_media_gallery", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("110", "widget_media_video", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("111", "widget_tag_cloud", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("112", "widget_nav_menu", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("113", "widget_custom_html", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("115", "recovery_keys", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("116", "_site_transient_update_core", "O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.1-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.5.1-partial-0.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:3:\"5.5\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.1-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.5.1-partial-0.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.1-rollback-0.zip\";}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:3:\"5.5\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1600815788;s:15:\"version_checked\";s:3:\"5.5\";s:12:\"translations\";a:0:{}}", "no");
INSERT INTO `wp_options` VALUES("117", "theme_mods_twentytwenty", "a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1598671065;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}", "yes");
INSERT INTO `wp_options` VALUES("122", "_site_transient_update_themes", "O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1600815789;s:7:\"checked\";a:4:{s:11:\"rest-inicio\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}", "no");
INSERT INTO `wp_options` VALUES("130", "can_compress_scripts", "0", "no");
INSERT INTO `wp_options` VALUES("143", "finished_updating_comment_type", "1", "yes");
INSERT INTO `wp_options` VALUES("144", "current_theme", "Rest", "yes");
INSERT INTO `wp_options` VALUES("145", "theme_mods_rest-inicio", "a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}", "yes");
INSERT INTO `wp_options` VALUES("146", "theme_switched", "", "yes");
INSERT INTO `wp_options` VALUES("151", "WPLANG", "", "yes");
INSERT INTO `wp_options` VALUES("152", "new_admin_email", "gsdias22@gmail.com", "yes");
INSERT INTO `wp_options` VALUES("162", "_transient_health-check-site-status-result", "{\"good\":9,\"recommended\":9,\"critical\":2}", "yes");
INSERT INTO `wp_options` VALUES("188", "recently_activated", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("195", "acf_version", "5.8.2", "yes");
INSERT INTO `wp_options` VALUES("252", "nav_menu_options", "a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}", "yes");
INSERT INTO `wp_options` VALUES("317", "_site_transient_timeout_php_check_12edeb5890095749089987982a1404ce", "1601151275", "no");
INSERT INTO `wp_options` VALUES("318", "_site_transient_php_check_12edeb5890095749089987982a1404ce", "a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}", "no");
INSERT INTO `wp_options` VALUES("321", "_transient_timeout_acf_plugin_updates", "1600987476", "no");
INSERT INTO `wp_options` VALUES("322", "_transient_acf_plugin_updates", "a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.5.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.2\";}}", "no");
INSERT INTO `wp_options` VALUES("323", "_site_transient_timeout_theme_roots", "1600816476", "no");
INSERT INTO `wp_options` VALUES("324", "_site_transient_theme_roots", "a:4:{s:11:\"rest-inicio\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}", "no");
INSERT INTO `wp_options` VALUES("327", "_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a", "1600826209", "no");
INSERT INTO `wp_options` VALUES("328", "_site_transient_poptags_40cd750bba9870f18aada2478b24840a", "O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4721;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:4361;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2683;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2563;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1975;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1823;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1804;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1490;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1488;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1483;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1458;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1455;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1442;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1306;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1222;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1204;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1158;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1134;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1104;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1012;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:901;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:898;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:884;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:881;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:810;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:801;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:793;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:782;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:774;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:753;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:749;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:726;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:719;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:703;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:701;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:686;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:663;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:663;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:656;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:650;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:636;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:635;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:612;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:601;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:589;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:583;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:581;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:578;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:563;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:558;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:557;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:556;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:551;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:551;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:542;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:533;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:532;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:524;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:522;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:520;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:518;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:505;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:496;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:491;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:482;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:479;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:477;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:463;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:455;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:441;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:440;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:439;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:438;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:432;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:430;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:424;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:423;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:423;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:417;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:414;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:414;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:412;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:402;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:398;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:398;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:392;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:386;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:384;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:379;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:379;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:377;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:375;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:372;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:366;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:360;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:356;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:348;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:344;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:343;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:341;}}", "no");
INSERT INTO `wp_options` VALUES("330", "_site_transient_update_plugins", "O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1600815795;s:7:\"checked\";a:2:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.2\";s:25:\"duplicator/duplicator.php\";s:6:\"1.3.38\";}s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.5.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:25:\"duplicator/duplicator.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/duplicator\";s:4:\"slug\";s:10:\"duplicator\";s:6:\"plugin\";s:25:\"duplicator/duplicator.php\";s:11:\"new_version\";s:6:\"1.3.38\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/duplicator/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/duplicator.1.3.38.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=2083921\";s:2:\"1x\";s:63:\"https://ps.w.org/duplicator/assets/icon-128x128.png?rev=2083921\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=2085472\";}s:11:\"banners_rtl\";a:0:{}}}}", "no");
INSERT INTO `wp_options` VALUES("331", "duplicator_settings", "a:17:{s:7:\"version\";s:6:\"1.3.38\";s:18:\"uninstall_settings\";b:1;s:15:\"uninstall_files\";b:1;s:16:\"uninstall_tables\";b:1;s:13:\"package_debug\";b:0;s:17:\"package_mysqldump\";b:1;s:22:\"package_mysqldump_path\";s:0:\"\";s:24:\"package_phpdump_qrylimit\";s:3:\"100\";s:17:\"package_zip_flush\";b:0;s:19:\"installer_name_mode\";s:6:\"simple\";s:16:\"storage_position\";s:6:\"wpcont\";s:20:\"storage_htaccess_off\";b:0;s:18:\"archive_build_mode\";i:2;s:17:\"skip_archive_scan\";b:0;s:21:\"unhook_third_party_js\";b:0;s:22:\"unhook_third_party_css\";b:0;s:17:\"active_package_id\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("332", "duplicator_lite_inst_hash_notice", "1", "yes");
INSERT INTO `wp_options` VALUES("333", "duplicator_version_plugin", "1.3.38", "yes");
INSERT INTO `wp_options` VALUES("334", "duplicator_package_active", "O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2020-09-22 23:04:02\";s:7:\"Version\";s:6:\"1.3.38\";s:9:\"VersionWP\";s:3:\"5.5\";s:9:\"VersionDB\";s:6:\"5.7.24\";s:10:\"VersionPHP\";s:5:\"7.4.1\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:13:\"20200922_rest\";s:4:\"Hash\";s:35:\"f4ccc11db9e3397c7501_20200922230402\";s:8:\"NameHash\";s:49:\"20200922_rest_f4ccc11db9e3397c7501_20200922230402\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:59:\"20200922_rest_f4ccc11db9e3397c7501_20200922230402_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";O:11:\"DUP_Archive\":21:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";N;s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:32:\"C:/Users/User/Desktop/sites/Rest\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":5:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":6:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:-1;s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2020-09-22 23:04:02\";s:7:\"Version\";s:6:\"1.3.38\";s:9:\"VersionWP\";s:3:\"5.5\";s:9:\"VersionDB\";s:6:\"5.7.24\";s:10:\"VersionPHP\";s:5:\"7.4.1\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:13:\"20200922_rest\";s:4:\"Hash\";s:35:\"f4ccc11db9e3397c7501_20200922230402\";s:8:\"NameHash\";s:49:\"20200922_rest_f4ccc11db9e3397c7501_20200922230402\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";O:13:\"DUP_Installer\":11:{s:4:\"File\";N;s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:61;}s:8:\"Database\";O:12:\"DUP_Database\":14:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";N;s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server (GPL)\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":15:{s:9:\"buildMode\";N;s:13:\"collationList\";a:0:{}s:17:\"isTablesUpperCase\";N;s:15:\"isNameUpperCase\";N;s:4:\"name\";N;s:15:\"tablesBaseCount\";N;s:16:\"tablesFinalCount\";N;s:14:\"tablesRowCount\";N;s:16:\"tablesSizeOnDisk\";N;s:18:\"varLowerCaseTables\";i:1;s:7:\"version\";N;s:14:\"versionComment\";N;s:18:\"tableWiseRowCounts\";a:0:{}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:61;s:24:\"\0DUP_Database\0tempDbPath\";N;s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:0;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";r:61;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:41:\"C:/Users/User/Desktop/sites/Rest/wp-admin\";i:1;s:51:\"C:/Users/User/Desktop/sites/Rest/wp-content/uploads\";i:2;s:53:\"C:/Users/User/Desktop/sites/Rest/wp-content/languages\";i:3;s:50:\"C:/Users/User/Desktop/sites/Rest/wp-content/themes\";i:4;s:44:\"C:/Users/User/Desktop/sites/Rest/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:32:\"C:/Users/User/Desktop/sites/Rest\";i:1;s:43:\"C:/Users/User/Desktop/sites/Rest/wp-content\";}}s:9:\"Installer\";r:82;s:8:\"Database\";r:94;s:13:\"BuildProgress\";r:124;}", "yes");

/* INSERT TABLE DATA: wp_postmeta */
INSERT INTO `wp_postmeta` VALUES("9", "7", "_edit_lock", "1598903148:1");
INSERT INTO `wp_postmeta` VALUES("10", "9", "_edit_lock", "1600815229:1");
INSERT INTO `wp_postmeta` VALUES("11", "11", "_edit_lock", "1598905722:1");
INSERT INTO `wp_postmeta` VALUES("12", "7", "_wp_page_template", "page-home.php");
INSERT INTO `wp_postmeta` VALUES("13", "9", "_wp_page_template", "page-about.php");
INSERT INTO `wp_postmeta` VALUES("14", "11", "_wp_page_template", "page-contact.php");
INSERT INTO `wp_postmeta` VALUES("19", "17", "_edit_lock", "1598769844:1");
INSERT INTO `wp_postmeta` VALUES("24", "25", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("25", "25", "_edit_lock", "1598845291:1");
INSERT INTO `wp_postmeta` VALUES("26", "9", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("27", "9", "history_title", "New Title");
INSERT INTO `wp_postmeta` VALUES("28", "9", "_history_title", "field_5f4b5cbd07b11");
INSERT INTO `wp_postmeta` VALUES("29", "9", "history_info", "lorem new title new element custom field");
INSERT INTO `wp_postmeta` VALUES("30", "9", "_history_info", "field_5f4b5b6e07b10");
INSERT INTO `wp_postmeta` VALUES("31", "28", "history_title", "New Title");
INSERT INTO `wp_postmeta` VALUES("32", "28", "_history_title", "field_5f4b5cbd07b11");
INSERT INTO `wp_postmeta` VALUES("33", "28", "history_info", "lorem new title new element custom field");
INSERT INTO `wp_postmeta` VALUES("34", "28", "_history_info", "field_5f4b5b6e07b10");
INSERT INTO `wp_postmeta` VALUES("37", "9", "photo_rest", "36");
INSERT INTO `wp_postmeta` VALUES("38", "9", "_photo_rest", "field_5f4b61d0cccee");
INSERT INTO `wp_postmeta` VALUES("39", "9", "photo_rest_description", "Photo Rest About");
INSERT INTO `wp_postmeta` VALUES("40", "9", "_photo_rest_description", "field_5f4b62bdcccef");
INSERT INTO `wp_postmeta` VALUES("41", "34", "history_title", "New Title");
INSERT INTO `wp_postmeta` VALUES("42", "34", "_history_title", "field_5f4b5cbd07b11");
INSERT INTO `wp_postmeta` VALUES("43", "34", "history_info", "lorem new title new element custom field");
INSERT INTO `wp_postmeta` VALUES("44", "34", "_history_info", "field_5f4b5b6e07b10");
INSERT INTO `wp_postmeta` VALUES("45", "34", "photo_rest", "33");
INSERT INTO `wp_postmeta` VALUES("46", "34", "_photo_rest", "field_5f4b61d0cccee");
INSERT INTO `wp_postmeta` VALUES("47", "34", "photo_rest_description", "");
INSERT INTO `wp_postmeta` VALUES("48", "34", "_photo_rest_description", "field_5f4b62bdcccef");
INSERT INTO `wp_postmeta` VALUES("49", "35", "history_title", "New Title");
INSERT INTO `wp_postmeta` VALUES("50", "35", "_history_title", "field_5f4b5cbd07b11");
INSERT INTO `wp_postmeta` VALUES("51", "35", "history_info", "lorem new title new element custom field");
INSERT INTO `wp_postmeta` VALUES("52", "35", "_history_info", "field_5f4b5b6e07b10");
INSERT INTO `wp_postmeta` VALUES("53", "35", "photo_rest", "33");
INSERT INTO `wp_postmeta` VALUES("54", "35", "_photo_rest", "field_5f4b61d0cccee");
INSERT INTO `wp_postmeta` VALUES("55", "35", "photo_rest_description", "");
INSERT INTO `wp_postmeta` VALUES("56", "35", "_photo_rest_description", "field_5f4b62bdcccef");
INSERT INTO `wp_postmeta` VALUES("57", "36", "_wp_attached_file", "2020/08/rest-fachada.jpg");
INSERT INTO `wp_postmeta` VALUES("58", "36", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:690;s:6:\"height\";i:940;s:4:\"file\";s:24:\"2020/08/rest-fachada.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"rest-fachada-220x300.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"rest-fachada-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("59", "37", "history_title", "New Title");
INSERT INTO `wp_postmeta` VALUES("60", "37", "_history_title", "field_5f4b5cbd07b11");
INSERT INTO `wp_postmeta` VALUES("61", "37", "history_info", "lorem new title new element custom field");
INSERT INTO `wp_postmeta` VALUES("62", "37", "_history_info", "field_5f4b5b6e07b10");
INSERT INTO `wp_postmeta` VALUES("63", "37", "photo_rest", "36");
INSERT INTO `wp_postmeta` VALUES("64", "37", "_photo_rest", "field_5f4b61d0cccee");
INSERT INTO `wp_postmeta` VALUES("65", "37", "photo_rest_description", "");
INSERT INTO `wp_postmeta` VALUES("66", "37", "_photo_rest_description", "field_5f4b62bdcccef");
INSERT INTO `wp_postmeta` VALUES("67", "38", "history_title", "New Title");
INSERT INTO `wp_postmeta` VALUES("68", "38", "_history_title", "field_5f4b5cbd07b11");
INSERT INTO `wp_postmeta` VALUES("69", "38", "history_info", "lorem new title new element custom field");
INSERT INTO `wp_postmeta` VALUES("70", "38", "_history_info", "field_5f4b5b6e07b10");
INSERT INTO `wp_postmeta` VALUES("71", "38", "photo_rest", "36");
INSERT INTO `wp_postmeta` VALUES("72", "38", "_photo_rest", "field_5f4b61d0cccee");
INSERT INTO `wp_postmeta` VALUES("73", "38", "photo_rest_description", "");
INSERT INTO `wp_postmeta` VALUES("74", "38", "_photo_rest_description", "field_5f4b62bdcccef");
INSERT INTO `wp_postmeta` VALUES("75", "39", "history_title", "New Title");
INSERT INTO `wp_postmeta` VALUES("76", "39", "_history_title", "field_5f4b5cbd07b11");
INSERT INTO `wp_postmeta` VALUES("77", "39", "history_info", "lorem new title new element custom field");
INSERT INTO `wp_postmeta` VALUES("78", "39", "_history_info", "field_5f4b5b6e07b10");
INSERT INTO `wp_postmeta` VALUES("79", "39", "photo_rest", "36");
INSERT INTO `wp_postmeta` VALUES("80", "39", "_photo_rest", "field_5f4b61d0cccee");
INSERT INTO `wp_postmeta` VALUES("81", "39", "photo_rest_description", "Photo Rest About");
INSERT INTO `wp_postmeta` VALUES("82", "39", "_photo_rest_description", "field_5f4b62bdcccef");
INSERT INTO `wp_postmeta` VALUES("83", "9", "about_content_0_history_title", "History");
INSERT INTO `wp_postmeta` VALUES("84", "9", "_about_content_0_history_title", "field_5f4c70f5514a1");
INSERT INTO `wp_postmeta` VALUES("85", "9", "about_content_0_history_info", "LoremIpsum360 ° is a free online generator false text. It provides a complete text simulator to generate replacement text or alternative text for your models. It features different random texts in Latin and Cyrillic to generate examples of texts in different languages.");
INSERT INTO `wp_postmeta` VALUES("86", "9", "_about_content_0_history_info", "field_5f4c711d514a2");
INSERT INTO `wp_postmeta` VALUES("87", "9", "about_content_1_history_title", "Vision");
INSERT INTO `wp_postmeta` VALUES("88", "9", "_about_content_1_history_title", "field_5f4c70f5514a1");
INSERT INTO `wp_postmeta` VALUES("89", "9", "about_content_1_history_info", "LoremIpsum360 ° is a free online generator false text. It provides a complete text simulator to generate replacement text or alternative text for your models. It features different random texts in Latin and Cyrillic to generate examples of texts in different languages.");
INSERT INTO `wp_postmeta` VALUES("90", "9", "_about_content_1_history_info", "field_5f4c711d514a2");
INSERT INTO `wp_postmeta` VALUES("91", "9", "about_content_2_history_title", "Values");
INSERT INTO `wp_postmeta` VALUES("92", "9", "_about_content_2_history_title", "field_5f4c70f5514a1");
INSERT INTO `wp_postmeta` VALUES("93", "9", "about_content_2_history_info", "LoremIpsum360 ° is a free online generator false text. It provides a complete text simulator to generate replacement text or alternative text for your models. It features different random texts in Latin and Cyrillic to generate examples of texts in different languages.");
INSERT INTO `wp_postmeta` VALUES("94", "9", "_about_content_2_history_info", "field_5f4c711d514a2");
INSERT INTO `wp_postmeta` VALUES("95", "9", "about_content", "3");
INSERT INTO `wp_postmeta` VALUES("96", "9", "_about_content", "field_5f4c70b4514a0");
INSERT INTO `wp_postmeta` VALUES("97", "43", "history_title", "New Title");
INSERT INTO `wp_postmeta` VALUES("98", "43", "_history_title", "field_5f4b5cbd07b11");
INSERT INTO `wp_postmeta` VALUES("99", "43", "history_info", "lorem new title new element custom field");
INSERT INTO `wp_postmeta` VALUES("100", "43", "_history_info", "field_5f4b5b6e07b10");
INSERT INTO `wp_postmeta` VALUES("101", "43", "photo_rest", "36");
INSERT INTO `wp_postmeta` VALUES("102", "43", "_photo_rest", "field_5f4b61d0cccee");
INSERT INTO `wp_postmeta` VALUES("103", "43", "photo_rest_description", "Photo Rest About");
INSERT INTO `wp_postmeta` VALUES("104", "43", "_photo_rest_description", "field_5f4b62bdcccef");
INSERT INTO `wp_postmeta` VALUES("105", "43", "about_content_0_history_title", "History");
INSERT INTO `wp_postmeta` VALUES("106", "43", "_about_content_0_history_title", "field_5f4c70f5514a1");
INSERT INTO `wp_postmeta` VALUES("107", "43", "about_content_0_history_info", " vdasasasasasasasasasasasvdasasasasasavdasasasasasasasasasasasvdasasasasasasasasasasa");
INSERT INTO `wp_postmeta` VALUES("108", "43", "_about_content_0_history_info", "field_5f4c711d514a2");
INSERT INTO `wp_postmeta` VALUES("109", "43", "about_content_1_history_title", "Vision");
INSERT INTO `wp_postmeta` VALUES("110", "43", "_about_content_1_history_title", "field_5f4c70f5514a1");
INSERT INTO `wp_postmeta` VALUES("111", "43", "about_content_1_history_info", "dksvd;vsd;lvsdlvsd\'vds\'vdvsd;\'vbs\'/\'/sb\'/sbd\'sbd");
INSERT INTO `wp_postmeta` VALUES("112", "43", "_about_content_1_history_info", "field_5f4c711d514a2");
INSERT INTO `wp_postmeta` VALUES("113", "43", "about_content_2_history_title", "Values");
INSERT INTO `wp_postmeta` VALUES("114", "43", "_about_content_2_history_title", "field_5f4c70f5514a1");
INSERT INTO `wp_postmeta` VALUES("115", "43", "about_content_2_history_info", "dndngrmnrgmngnggbgdsdfsfgjmngmuhtytttttttsytjrryjm");
INSERT INTO `wp_postmeta` VALUES("116", "43", "_about_content_2_history_info", "field_5f4c711d514a2");
INSERT INTO `wp_postmeta` VALUES("117", "43", "about_content", "3");
INSERT INTO `wp_postmeta` VALUES("118", "43", "_about_content", "field_5f4c70b4514a0");
INSERT INTO `wp_postmeta` VALUES("119", "45", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("120", "45", "_edit_lock", "1598847913:1");
INSERT INTO `wp_postmeta` VALUES("121", "45", "_wp_trash_meta_status", "publish");
INSERT INTO `wp_postmeta` VALUES("122", "45", "_wp_trash_meta_time", "1598848061");
INSERT INTO `wp_postmeta` VALUES("123", "45", "_wp_desired_post_slug", "group_5f4c7768b32e6");
INSERT INTO `wp_postmeta` VALUES("124", "46", "_wp_trash_meta_status", "publish");
INSERT INTO `wp_postmeta` VALUES("125", "46", "_wp_trash_meta_time", "1598848061");
INSERT INTO `wp_postmeta` VALUES("126", "46", "_wp_desired_post_slug", "field_5f4c777cf6efb");
INSERT INTO `wp_postmeta` VALUES("127", "51", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("128", "51", "_edit_lock", "1598848554:1");
INSERT INTO `wp_postmeta` VALUES("129", "7", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("130", "7", "category_menu_0_category_name", "Meat ");
INSERT INTO `wp_postmeta` VALUES("131", "7", "_category_menu_0_category_name", "field_5f4c7c6fcf9fb");
INSERT INTO `wp_postmeta` VALUES("132", "7", "category_menu_0_menu_plates_0_menu_price", "23");
INSERT INTO `wp_postmeta` VALUES("133", "7", "_category_menu_0_menu_plates_0_menu_price", "field_5f4c7c95cf9fd");
INSERT INTO `wp_postmeta` VALUES("134", "7", "category_menu_0_menu_plates_0_plate_name", "Picanha French Fries");
INSERT INTO `wp_postmeta` VALUES("135", "7", "_category_menu_0_menu_plates_0_plate_name", "field_5f4c7cf7cf9fe");
INSERT INTO `wp_postmeta` VALUES("136", "7", "category_menu_0_menu_plates_0_description_plate", "name_name_name_name_name_name_name_name_name_name_name_name_name_name_");
INSERT INTO `wp_postmeta` VALUES("137", "7", "_category_menu_0_menu_plates_0_description_plate", "field_5f4c7d5bcf9ff");
INSERT INTO `wp_postmeta` VALUES("138", "7", "category_menu_0_menu_plates", "1");
INSERT INTO `wp_postmeta` VALUES("139", "7", "_category_menu_0_menu_plates", "field_5f4c7c83cf9fc");
INSERT INTO `wp_postmeta` VALUES("140", "7", "category_menu_1_category_name", "Chicken");
INSERT INTO `wp_postmeta` VALUES("141", "7", "_category_menu_1_category_name", "field_5f4c7c6fcf9fb");
INSERT INTO `wp_postmeta` VALUES("142", "7", "category_menu_1_menu_plates_0_menu_price", "20");
INSERT INTO `wp_postmeta` VALUES("143", "7", "_category_menu_1_menu_plates_0_menu_price", "field_5f4c7c95cf9fd");
INSERT INTO `wp_postmeta` VALUES("144", "7", "category_menu_1_menu_plates_0_plate_name", "Brazilian Chicken Style");
INSERT INTO `wp_postmeta` VALUES("145", "7", "_category_menu_1_menu_plates_0_plate_name", "field_5f4c7cf7cf9fe");
INSERT INTO `wp_postmeta` VALUES("146", "7", "category_menu_1_menu_plates_0_description_plate", "loremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("147", "7", "_category_menu_1_menu_plates_0_description_plate", "field_5f4c7d5bcf9ff");
INSERT INTO `wp_postmeta` VALUES("148", "7", "category_menu_1_menu_plates", "1");
INSERT INTO `wp_postmeta` VALUES("149", "7", "_category_menu_1_menu_plates", "field_5f4c7c83cf9fc");
INSERT INTO `wp_postmeta` VALUES("150", "7", "category_menu_2_category_name", "Pasta");
INSERT INTO `wp_postmeta` VALUES("151", "7", "_category_menu_2_category_name", "field_5f4c7c6fcf9fb");
INSERT INTO `wp_postmeta` VALUES("152", "7", "category_menu_2_menu_plates_0_menu_price", "22");
INSERT INTO `wp_postmeta` VALUES("153", "7", "_category_menu_2_menu_plates_0_menu_price", "field_5f4c7c95cf9fd");
INSERT INTO `wp_postmeta` VALUES("154", "7", "category_menu_2_menu_plates_0_plate_name", "Chicken Alfredo Royce pasta");
INSERT INTO `wp_postmeta` VALUES("155", "7", "_category_menu_2_menu_plates_0_plate_name", "field_5f4c7cf7cf9fe");
INSERT INTO `wp_postmeta` VALUES("156", "7", "category_menu_2_menu_plates_0_description_plate", "loremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("157", "7", "_category_menu_2_menu_plates_0_description_plate", "field_5f4c7d5bcf9ff");
INSERT INTO `wp_postmeta` VALUES("158", "7", "category_menu_2_menu_plates", "1");
INSERT INTO `wp_postmeta` VALUES("159", "7", "_category_menu_2_menu_plates", "field_5f4c7c83cf9fc");
INSERT INTO `wp_postmeta` VALUES("160", "7", "category_menu", "3");
INSERT INTO `wp_postmeta` VALUES("161", "7", "_category_menu", "field_5f4c7c4bcf9fa");
INSERT INTO `wp_postmeta` VALUES("162", "58", "category_menu_0_category_name", "Meat ");
INSERT INTO `wp_postmeta` VALUES("163", "58", "_category_menu_0_category_name", "field_5f4c7c6fcf9fb");
INSERT INTO `wp_postmeta` VALUES("164", "58", "category_menu_0_menu_plates_0_menu_price", "23");
INSERT INTO `wp_postmeta` VALUES("165", "58", "_category_menu_0_menu_plates_0_menu_price", "field_5f4c7c95cf9fd");
INSERT INTO `wp_postmeta` VALUES("166", "58", "category_menu_0_menu_plates_0_plate_name", "Picanha French Fries");
INSERT INTO `wp_postmeta` VALUES("167", "58", "_category_menu_0_menu_plates_0_plate_name", "field_5f4c7cf7cf9fe");
INSERT INTO `wp_postmeta` VALUES("168", "58", "category_menu_0_menu_plates_0_description_plate", "name_name_name_name_name_name_name_name_name_name_name_name_name_name_");
INSERT INTO `wp_postmeta` VALUES("169", "58", "_category_menu_0_menu_plates_0_description_plate", "field_5f4c7d5bcf9ff");
INSERT INTO `wp_postmeta` VALUES("170", "58", "category_menu_0_menu_plates", "1");
INSERT INTO `wp_postmeta` VALUES("171", "58", "_category_menu_0_menu_plates", "field_5f4c7c83cf9fc");
INSERT INTO `wp_postmeta` VALUES("172", "58", "category_menu_1_category_name", "Chicken");
INSERT INTO `wp_postmeta` VALUES("173", "58", "_category_menu_1_category_name", "field_5f4c7c6fcf9fb");
INSERT INTO `wp_postmeta` VALUES("174", "58", "category_menu_1_menu_plates_0_menu_price", "20");
INSERT INTO `wp_postmeta` VALUES("175", "58", "_category_menu_1_menu_plates_0_menu_price", "field_5f4c7c95cf9fd");
INSERT INTO `wp_postmeta` VALUES("176", "58", "category_menu_1_menu_plates_0_plate_name", "Brazilian Chicken Style");
INSERT INTO `wp_postmeta` VALUES("177", "58", "_category_menu_1_menu_plates_0_plate_name", "field_5f4c7cf7cf9fe");
INSERT INTO `wp_postmeta` VALUES("178", "58", "category_menu_1_menu_plates_0_description_plate", "loremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("179", "58", "_category_menu_1_menu_plates_0_description_plate", "field_5f4c7d5bcf9ff");
INSERT INTO `wp_postmeta` VALUES("180", "58", "category_menu_1_menu_plates", "1");
INSERT INTO `wp_postmeta` VALUES("181", "58", "_category_menu_1_menu_plates", "field_5f4c7c83cf9fc");
INSERT INTO `wp_postmeta` VALUES("182", "58", "category_menu_2_category_name", "Pasta");
INSERT INTO `wp_postmeta` VALUES("183", "58", "_category_menu_2_category_name", "field_5f4c7c6fcf9fb");
INSERT INTO `wp_postmeta` VALUES("184", "58", "category_menu_2_menu_plates_0_menu_price", "22");
INSERT INTO `wp_postmeta` VALUES("185", "58", "_category_menu_2_menu_plates_0_menu_price", "field_5f4c7c95cf9fd");
INSERT INTO `wp_postmeta` VALUES("186", "58", "category_menu_2_menu_plates_0_plate_name", "Chicken Alfredo Royce pasta");
INSERT INTO `wp_postmeta` VALUES("187", "58", "_category_menu_2_menu_plates_0_plate_name", "field_5f4c7cf7cf9fe");
INSERT INTO `wp_postmeta` VALUES("188", "58", "category_menu_2_menu_plates_0_description_plate", "loremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("189", "58", "_category_menu_2_menu_plates_0_description_plate", "field_5f4c7d5bcf9ff");
INSERT INTO `wp_postmeta` VALUES("190", "58", "category_menu_2_menu_plates", "1");
INSERT INTO `wp_postmeta` VALUES("191", "58", "_category_menu_2_menu_plates", "field_5f4c7c83cf9fc");
INSERT INTO `wp_postmeta` VALUES("192", "58", "category_menu", "3");
INSERT INTO `wp_postmeta` VALUES("193", "58", "_category_menu", "field_5f4c7c4bcf9fa");
INSERT INTO `wp_postmeta` VALUES("194", "51", "_wp_trash_meta_status", "publish");
INSERT INTO `wp_postmeta` VALUES("195", "51", "_wp_trash_meta_time", "1598849187");
INSERT INTO `wp_postmeta` VALUES("196", "51", "_wp_desired_post_slug", "group_5f4c7c3fc0421");
INSERT INTO `wp_postmeta` VALUES("197", "52", "_wp_trash_meta_status", "publish");
INSERT INTO `wp_postmeta` VALUES("198", "52", "_wp_trash_meta_time", "1598849187");
INSERT INTO `wp_postmeta` VALUES("199", "52", "_wp_desired_post_slug", "field_5f4c7c4bcf9fa");
INSERT INTO `wp_postmeta` VALUES("200", "59", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("201", "59", "_edit_lock", "1598851336:1");
INSERT INTO `wp_postmeta` VALUES("202", "7", "categoria_menu_0_nome_categoria", "Meat");
INSERT INTO `wp_postmeta` VALUES("203", "7", "_categoria_menu_0_nome_categoria", "field_5f4c80dbe3c82");
INSERT INTO `wp_postmeta` VALUES("204", "7", "categoria_menu_0_prato_menu_0_preco_prato", "45");
INSERT INTO `wp_postmeta` VALUES("205", "7", "_categoria_menu_0_prato_menu_0_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("206", "7", "categoria_menu_0_prato_menu_0_nome_prato", "Picanha French Fries");
INSERT INTO `wp_postmeta` VALUES("207", "7", "_categoria_menu_0_prato_menu_0_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("208", "7", "categoria_menu_0_prato_menu_0_descricao_prato", "loremloremloremloremloremloremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("209", "7", "_categoria_menu_0_prato_menu_0_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("210", "7", "categoria_menu_0_prato_menu_1_preco_prato", "36");
INSERT INTO `wp_postmeta` VALUES("211", "7", "_categoria_menu_0_prato_menu_1_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("212", "7", "categoria_menu_0_prato_menu_1_nome_prato", "Maminha Braziliana");
INSERT INTO `wp_postmeta` VALUES("213", "7", "_categoria_menu_0_prato_menu_1_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("214", "7", "categoria_menu_0_prato_menu_1_descricao_prato", "loremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("215", "7", "_categoria_menu_0_prato_menu_1_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("216", "7", "categoria_menu_0_prato_menu", "2");
INSERT INTO `wp_postmeta` VALUES("217", "7", "_categoria_menu_0_prato_menu", "field_5f4c80f2e3c83");
INSERT INTO `wp_postmeta` VALUES("218", "7", "categoria_menu_1_nome_categoria", "Fish");
INSERT INTO `wp_postmeta` VALUES("219", "7", "_categoria_menu_1_nome_categoria", "field_5f4c80dbe3c82");
INSERT INTO `wp_postmeta` VALUES("220", "7", "categoria_menu_1_prato_menu_0_preco_prato", "45");
INSERT INTO `wp_postmeta` VALUES("221", "7", "_categoria_menu_1_prato_menu_0_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("222", "7", "categoria_menu_1_prato_menu_0_nome_prato", "Tilapia Rice Salad +");
INSERT INTO `wp_postmeta` VALUES("223", "7", "_categoria_menu_1_prato_menu_0_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("224", "7", "categoria_menu_1_prato_menu_0_descricao_prato", "loremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("225", "7", "_categoria_menu_1_prato_menu_0_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("226", "7", "categoria_menu_1_prato_menu", "2");
INSERT INTO `wp_postmeta` VALUES("227", "7", "_categoria_menu_1_prato_menu", "field_5f4c80f2e3c83");
INSERT INTO `wp_postmeta` VALUES("228", "7", "categoria_menu", "4");
INSERT INTO `wp_postmeta` VALUES("229", "7", "_categoria_menu", "field_5f4c80bfe3c81");
INSERT INTO `wp_postmeta` VALUES("230", "66", "category_menu_0_category_name", "Meat ");
INSERT INTO `wp_postmeta` VALUES("231", "66", "_category_menu_0_category_name", "field_5f4c7c6fcf9fb");
INSERT INTO `wp_postmeta` VALUES("232", "66", "category_menu_0_menu_plates_0_menu_price", "23");
INSERT INTO `wp_postmeta` VALUES("233", "66", "_category_menu_0_menu_plates_0_menu_price", "field_5f4c7c95cf9fd");
INSERT INTO `wp_postmeta` VALUES("234", "66", "category_menu_0_menu_plates_0_plate_name", "Picanha French Fries");
INSERT INTO `wp_postmeta` VALUES("235", "66", "_category_menu_0_menu_plates_0_plate_name", "field_5f4c7cf7cf9fe");
INSERT INTO `wp_postmeta` VALUES("236", "66", "category_menu_0_menu_plates_0_description_plate", "name_name_name_name_name_name_name_name_name_name_name_name_name_name_");
INSERT INTO `wp_postmeta` VALUES("237", "66", "_category_menu_0_menu_plates_0_description_plate", "field_5f4c7d5bcf9ff");
INSERT INTO `wp_postmeta` VALUES("238", "66", "category_menu_0_menu_plates", "1");
INSERT INTO `wp_postmeta` VALUES("239", "66", "_category_menu_0_menu_plates", "field_5f4c7c83cf9fc");
INSERT INTO `wp_postmeta` VALUES("240", "66", "category_menu_1_category_name", "Chicken");
INSERT INTO `wp_postmeta` VALUES("241", "66", "_category_menu_1_category_name", "field_5f4c7c6fcf9fb");
INSERT INTO `wp_postmeta` VALUES("242", "66", "category_menu_1_menu_plates_0_menu_price", "20");
INSERT INTO `wp_postmeta` VALUES("243", "66", "_category_menu_1_menu_plates_0_menu_price", "field_5f4c7c95cf9fd");
INSERT INTO `wp_postmeta` VALUES("244", "66", "category_menu_1_menu_plates_0_plate_name", "Brazilian Chicken Style");
INSERT INTO `wp_postmeta` VALUES("245", "66", "_category_menu_1_menu_plates_0_plate_name", "field_5f4c7cf7cf9fe");
INSERT INTO `wp_postmeta` VALUES("246", "66", "category_menu_1_menu_plates_0_description_plate", "loremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("247", "66", "_category_menu_1_menu_plates_0_description_plate", "field_5f4c7d5bcf9ff");
INSERT INTO `wp_postmeta` VALUES("248", "66", "category_menu_1_menu_plates", "1");
INSERT INTO `wp_postmeta` VALUES("249", "66", "_category_menu_1_menu_plates", "field_5f4c7c83cf9fc");
INSERT INTO `wp_postmeta` VALUES("250", "66", "category_menu_2_category_name", "Pasta");
INSERT INTO `wp_postmeta` VALUES("251", "66", "_category_menu_2_category_name", "field_5f4c7c6fcf9fb");
INSERT INTO `wp_postmeta` VALUES("252", "66", "category_menu_2_menu_plates_0_menu_price", "22");
INSERT INTO `wp_postmeta` VALUES("253", "66", "_category_menu_2_menu_plates_0_menu_price", "field_5f4c7c95cf9fd");
INSERT INTO `wp_postmeta` VALUES("254", "66", "category_menu_2_menu_plates_0_plate_name", "Chicken Alfredo Royce pasta");
INSERT INTO `wp_postmeta` VALUES("255", "66", "_category_menu_2_menu_plates_0_plate_name", "field_5f4c7cf7cf9fe");
INSERT INTO `wp_postmeta` VALUES("256", "66", "category_menu_2_menu_plates_0_description_plate", "loremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("257", "66", "_category_menu_2_menu_plates_0_description_plate", "field_5f4c7d5bcf9ff");
INSERT INTO `wp_postmeta` VALUES("258", "66", "category_menu_2_menu_plates", "1");
INSERT INTO `wp_postmeta` VALUES("259", "66", "_category_menu_2_menu_plates", "field_5f4c7c83cf9fc");
INSERT INTO `wp_postmeta` VALUES("260", "66", "category_menu", "3");
INSERT INTO `wp_postmeta` VALUES("261", "66", "_category_menu", "field_5f4c7c4bcf9fa");
INSERT INTO `wp_postmeta` VALUES("262", "66", "categoria_menu_0_nome_categoria", "Meat");
INSERT INTO `wp_postmeta` VALUES("263", "66", "_categoria_menu_0_nome_categoria", "field_5f4c80dbe3c82");
INSERT INTO `wp_postmeta` VALUES("264", "66", "categoria_menu_0_prato_menu_0_preco_prato", "Picanha French Fries");
INSERT INTO `wp_postmeta` VALUES("265", "66", "_categoria_menu_0_prato_menu_0_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("266", "66", "categoria_menu_0_prato_menu_0_nome_prato", "45");
INSERT INTO `wp_postmeta` VALUES("267", "66", "_categoria_menu_0_prato_menu_0_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("268", "66", "categoria_menu_0_prato_menu_0_descricao_prato", "loremloremloremloremloremloremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("269", "66", "_categoria_menu_0_prato_menu_0_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("270", "66", "categoria_menu_0_prato_menu_1_preco_prato", "Maminha Braziliana");
INSERT INTO `wp_postmeta` VALUES("271", "66", "_categoria_menu_0_prato_menu_1_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("272", "66", "categoria_menu_0_prato_menu_1_nome_prato", "36");
INSERT INTO `wp_postmeta` VALUES("273", "66", "_categoria_menu_0_prato_menu_1_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("274", "66", "categoria_menu_0_prato_menu_1_descricao_prato", "loremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("275", "66", "_categoria_menu_0_prato_menu_1_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("276", "66", "categoria_menu_0_prato_menu", "2");
INSERT INTO `wp_postmeta` VALUES("277", "66", "_categoria_menu_0_prato_menu", "field_5f4c80f2e3c83");
INSERT INTO `wp_postmeta` VALUES("278", "66", "categoria_menu_1_nome_categoria", "Fish");
INSERT INTO `wp_postmeta` VALUES("279", "66", "_categoria_menu_1_nome_categoria", "field_5f4c80dbe3c82");
INSERT INTO `wp_postmeta` VALUES("280", "66", "categoria_menu_1_prato_menu_0_preco_prato", "40");
INSERT INTO `wp_postmeta` VALUES("281", "66", "_categoria_menu_1_prato_menu_0_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("282", "66", "categoria_menu_1_prato_menu_0_nome_prato", "Tilapia Rice Salad +");
INSERT INTO `wp_postmeta` VALUES("283", "66", "_categoria_menu_1_prato_menu_0_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("284", "66", "categoria_menu_1_prato_menu_0_descricao_prato", "loremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("285", "66", "_categoria_menu_1_prato_menu_0_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("286", "66", "categoria_menu_1_prato_menu", "1");
INSERT INTO `wp_postmeta` VALUES("287", "66", "_categoria_menu_1_prato_menu", "field_5f4c80f2e3c83");
INSERT INTO `wp_postmeta` VALUES("288", "66", "categoria_menu", "2");
INSERT INTO `wp_postmeta` VALUES("289", "66", "_categoria_menu", "field_5f4c80bfe3c81");
INSERT INTO `wp_postmeta` VALUES("290", "7", "categoria_menu_2_nome_categoria", "Chicken");
INSERT INTO `wp_postmeta` VALUES("291", "7", "_categoria_menu_2_nome_categoria", "field_5f4c80dbe3c82");
INSERT INTO `wp_postmeta` VALUES("292", "7", "categoria_menu_2_prato_menu_0_preco_prato", "42");
INSERT INTO `wp_postmeta` VALUES("293", "7", "_categoria_menu_2_prato_menu_0_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("294", "7", "categoria_menu_2_prato_menu_0_nome_prato", "Chicken Wing Master Plus");
INSERT INTO `wp_postmeta` VALUES("295", "7", "_categoria_menu_2_prato_menu_0_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("296", "7", "categoria_menu_2_prato_menu_0_descricao_prato", "loremloremloremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("297", "7", "_categoria_menu_2_prato_menu_0_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("298", "7", "categoria_menu_2_prato_menu", "2");
INSERT INTO `wp_postmeta` VALUES("299", "7", "_categoria_menu_2_prato_menu", "field_5f4c80f2e3c83");
INSERT INTO `wp_postmeta` VALUES("300", "7", "categoria_menu_3_nome_categoria", "Pasta");
INSERT INTO `wp_postmeta` VALUES("301", "7", "_categoria_menu_3_nome_categoria", "field_5f4c80dbe3c82");
INSERT INTO `wp_postmeta` VALUES("302", "7", "categoria_menu_3_prato_menu_0_preco_prato", "40");
INSERT INTO `wp_postmeta` VALUES("303", "7", "_categoria_menu_3_prato_menu_0_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("304", "7", "categoria_menu_3_prato_menu_0_nome_prato", "Chicken Alfredo");
INSERT INTO `wp_postmeta` VALUES("305", "7", "_categoria_menu_3_prato_menu_0_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("306", "7", "categoria_menu_3_prato_menu_0_descricao_prato", "loremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("307", "7", "_categoria_menu_3_prato_menu_0_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("308", "7", "categoria_menu_3_prato_menu", "2");
INSERT INTO `wp_postmeta` VALUES("309", "7", "_categoria_menu_3_prato_menu", "field_5f4c80f2e3c83");
INSERT INTO `wp_postmeta` VALUES("310", "67", "category_menu_0_category_name", "Meat ");
INSERT INTO `wp_postmeta` VALUES("311", "67", "_category_menu_0_category_name", "field_5f4c7c6fcf9fb");
INSERT INTO `wp_postmeta` VALUES("312", "67", "category_menu_0_menu_plates_0_menu_price", "23");
INSERT INTO `wp_postmeta` VALUES("313", "67", "_category_menu_0_menu_plates_0_menu_price", "field_5f4c7c95cf9fd");
INSERT INTO `wp_postmeta` VALUES("314", "67", "category_menu_0_menu_plates_0_plate_name", "Picanha French Fries");
INSERT INTO `wp_postmeta` VALUES("315", "67", "_category_menu_0_menu_plates_0_plate_name", "field_5f4c7cf7cf9fe");
INSERT INTO `wp_postmeta` VALUES("316", "67", "category_menu_0_menu_plates_0_description_plate", "name_name_name_name_name_name_name_name_name_name_name_name_name_name_");
INSERT INTO `wp_postmeta` VALUES("317", "67", "_category_menu_0_menu_plates_0_description_plate", "field_5f4c7d5bcf9ff");
INSERT INTO `wp_postmeta` VALUES("318", "67", "category_menu_0_menu_plates", "1");
INSERT INTO `wp_postmeta` VALUES("319", "67", "_category_menu_0_menu_plates", "field_5f4c7c83cf9fc");
INSERT INTO `wp_postmeta` VALUES("320", "67", "category_menu_1_category_name", "Chicken");
INSERT INTO `wp_postmeta` VALUES("321", "67", "_category_menu_1_category_name", "field_5f4c7c6fcf9fb");
INSERT INTO `wp_postmeta` VALUES("322", "67", "category_menu_1_menu_plates_0_menu_price", "20");
INSERT INTO `wp_postmeta` VALUES("323", "67", "_category_menu_1_menu_plates_0_menu_price", "field_5f4c7c95cf9fd");
INSERT INTO `wp_postmeta` VALUES("324", "67", "category_menu_1_menu_plates_0_plate_name", "Brazilian Chicken Style");
INSERT INTO `wp_postmeta` VALUES("325", "67", "_category_menu_1_menu_plates_0_plate_name", "field_5f4c7cf7cf9fe");
INSERT INTO `wp_postmeta` VALUES("326", "67", "category_menu_1_menu_plates_0_description_plate", "loremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("327", "67", "_category_menu_1_menu_plates_0_description_plate", "field_5f4c7d5bcf9ff");
INSERT INTO `wp_postmeta` VALUES("328", "67", "category_menu_1_menu_plates", "1");
INSERT INTO `wp_postmeta` VALUES("329", "67", "_category_menu_1_menu_plates", "field_5f4c7c83cf9fc");
INSERT INTO `wp_postmeta` VALUES("330", "67", "category_menu_2_category_name", "Pasta");
INSERT INTO `wp_postmeta` VALUES("331", "67", "_category_menu_2_category_name", "field_5f4c7c6fcf9fb");
INSERT INTO `wp_postmeta` VALUES("332", "67", "category_menu_2_menu_plates_0_menu_price", "22");
INSERT INTO `wp_postmeta` VALUES("333", "67", "_category_menu_2_menu_plates_0_menu_price", "field_5f4c7c95cf9fd");
INSERT INTO `wp_postmeta` VALUES("334", "67", "category_menu_2_menu_plates_0_plate_name", "Chicken Alfredo Royce pasta");
INSERT INTO `wp_postmeta` VALUES("335", "67", "_category_menu_2_menu_plates_0_plate_name", "field_5f4c7cf7cf9fe");
INSERT INTO `wp_postmeta` VALUES("336", "67", "category_menu_2_menu_plates_0_description_plate", "loremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("337", "67", "_category_menu_2_menu_plates_0_description_plate", "field_5f4c7d5bcf9ff");
INSERT INTO `wp_postmeta` VALUES("338", "67", "category_menu_2_menu_plates", "1");
INSERT INTO `wp_postmeta` VALUES("339", "67", "_category_menu_2_menu_plates", "field_5f4c7c83cf9fc");
INSERT INTO `wp_postmeta` VALUES("340", "67", "category_menu", "3");
INSERT INTO `wp_postmeta` VALUES("341", "67", "_category_menu", "field_5f4c7c4bcf9fa");
INSERT INTO `wp_postmeta` VALUES("342", "67", "categoria_menu_0_nome_categoria", "Meat");
INSERT INTO `wp_postmeta` VALUES("343", "67", "_categoria_menu_0_nome_categoria", "field_5f4c80dbe3c82");
INSERT INTO `wp_postmeta` VALUES("344", "67", "categoria_menu_0_prato_menu_0_preco_prato", "45");
INSERT INTO `wp_postmeta` VALUES("345", "67", "_categoria_menu_0_prato_menu_0_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("346", "67", "categoria_menu_0_prato_menu_0_nome_prato", "Picanha French Fries");
INSERT INTO `wp_postmeta` VALUES("347", "67", "_categoria_menu_0_prato_menu_0_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("348", "67", "categoria_menu_0_prato_menu_0_descricao_prato", "loremloremloremloremloremloremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("349", "67", "_categoria_menu_0_prato_menu_0_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("350", "67", "categoria_menu_0_prato_menu_1_preco_prato", "36");
INSERT INTO `wp_postmeta` VALUES("351", "67", "_categoria_menu_0_prato_menu_1_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("352", "67", "categoria_menu_0_prato_menu_1_nome_prato", "Maminha Braziliana");
INSERT INTO `wp_postmeta` VALUES("353", "67", "_categoria_menu_0_prato_menu_1_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("354", "67", "categoria_menu_0_prato_menu_1_descricao_prato", "loremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("355", "67", "_categoria_menu_0_prato_menu_1_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("356", "67", "categoria_menu_0_prato_menu", "2");
INSERT INTO `wp_postmeta` VALUES("357", "67", "_categoria_menu_0_prato_menu", "field_5f4c80f2e3c83");
INSERT INTO `wp_postmeta` VALUES("358", "67", "categoria_menu_1_nome_categoria", "Fish");
INSERT INTO `wp_postmeta` VALUES("359", "67", "_categoria_menu_1_nome_categoria", "field_5f4c80dbe3c82");
INSERT INTO `wp_postmeta` VALUES("360", "67", "categoria_menu_1_prato_menu_0_preco_prato", "Tilapia Rice Salad +");
INSERT INTO `wp_postmeta` VALUES("361", "67", "_categoria_menu_1_prato_menu_0_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("362", "67", "categoria_menu_1_prato_menu_0_nome_prato", "45");
INSERT INTO `wp_postmeta` VALUES("363", "67", "_categoria_menu_1_prato_menu_0_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("364", "67", "categoria_menu_1_prato_menu_0_descricao_prato", "loremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("365", "67", "_categoria_menu_1_prato_menu_0_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("366", "67", "categoria_menu_1_prato_menu", "1");
INSERT INTO `wp_postmeta` VALUES("367", "67", "_categoria_menu_1_prato_menu", "field_5f4c80f2e3c83");
INSERT INTO `wp_postmeta` VALUES("368", "67", "categoria_menu", "4");
INSERT INTO `wp_postmeta` VALUES("369", "67", "_categoria_menu", "field_5f4c80bfe3c81");
INSERT INTO `wp_postmeta` VALUES("370", "67", "categoria_menu_2_nome_categoria", "Chicken");
INSERT INTO `wp_postmeta` VALUES("371", "67", "_categoria_menu_2_nome_categoria", "field_5f4c80dbe3c82");
INSERT INTO `wp_postmeta` VALUES("372", "67", "categoria_menu_2_prato_menu_0_preco_prato", "42");
INSERT INTO `wp_postmeta` VALUES("373", "67", "_categoria_menu_2_prato_menu_0_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("374", "67", "categoria_menu_2_prato_menu_0_nome_prato", "Chicken Wing Master Plus");
INSERT INTO `wp_postmeta` VALUES("375", "67", "_categoria_menu_2_prato_menu_0_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("376", "67", "categoria_menu_2_prato_menu_0_descricao_prato", "loremloremloremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("377", "67", "_categoria_menu_2_prato_menu_0_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("378", "67", "categoria_menu_2_prato_menu", "1");
INSERT INTO `wp_postmeta` VALUES("379", "67", "_categoria_menu_2_prato_menu", "field_5f4c80f2e3c83");
INSERT INTO `wp_postmeta` VALUES("380", "67", "categoria_menu_3_nome_categoria", "Pasta");
INSERT INTO `wp_postmeta` VALUES("381", "67", "_categoria_menu_3_nome_categoria", "field_5f4c80dbe3c82");
INSERT INTO `wp_postmeta` VALUES("382", "67", "categoria_menu_3_prato_menu_0_preco_prato", "40");
INSERT INTO `wp_postmeta` VALUES("383", "67", "_categoria_menu_3_prato_menu_0_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("384", "67", "categoria_menu_3_prato_menu_0_nome_prato", "Chicken Alfredo");
INSERT INTO `wp_postmeta` VALUES("385", "67", "_categoria_menu_3_prato_menu_0_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("386", "67", "categoria_menu_3_prato_menu_0_descricao_prato", "loremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("387", "67", "_categoria_menu_3_prato_menu_0_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("388", "67", "categoria_menu_3_prato_menu", "1");
INSERT INTO `wp_postmeta` VALUES("389", "67", "_categoria_menu_3_prato_menu", "field_5f4c80f2e3c83");
INSERT INTO `wp_postmeta` VALUES("390", "69", "category_menu_0_category_name", "Meat ");
INSERT INTO `wp_postmeta` VALUES("391", "69", "_category_menu_0_category_name", "field_5f4c7c6fcf9fb");
INSERT INTO `wp_postmeta` VALUES("392", "69", "category_menu_0_menu_plates_0_menu_price", "23");
INSERT INTO `wp_postmeta` VALUES("393", "69", "_category_menu_0_menu_plates_0_menu_price", "field_5f4c7c95cf9fd");
INSERT INTO `wp_postmeta` VALUES("394", "69", "category_menu_0_menu_plates_0_plate_name", "Picanha French Fries");
INSERT INTO `wp_postmeta` VALUES("395", "69", "_category_menu_0_menu_plates_0_plate_name", "field_5f4c7cf7cf9fe");
INSERT INTO `wp_postmeta` VALUES("396", "69", "category_menu_0_menu_plates_0_description_plate", "name_name_name_name_name_name_name_name_name_name_name_name_name_name_");
INSERT INTO `wp_postmeta` VALUES("397", "69", "_category_menu_0_menu_plates_0_description_plate", "field_5f4c7d5bcf9ff");
INSERT INTO `wp_postmeta` VALUES("398", "69", "category_menu_0_menu_plates", "1");
INSERT INTO `wp_postmeta` VALUES("399", "69", "_category_menu_0_menu_plates", "field_5f4c7c83cf9fc");
INSERT INTO `wp_postmeta` VALUES("400", "69", "category_menu_1_category_name", "Chicken");
INSERT INTO `wp_postmeta` VALUES("401", "69", "_category_menu_1_category_name", "field_5f4c7c6fcf9fb");
INSERT INTO `wp_postmeta` VALUES("402", "69", "category_menu_1_menu_plates_0_menu_price", "20");
INSERT INTO `wp_postmeta` VALUES("403", "69", "_category_menu_1_menu_plates_0_menu_price", "field_5f4c7c95cf9fd");
INSERT INTO `wp_postmeta` VALUES("404", "69", "category_menu_1_menu_plates_0_plate_name", "Brazilian Chicken Style");
INSERT INTO `wp_postmeta` VALUES("405", "69", "_category_menu_1_menu_plates_0_plate_name", "field_5f4c7cf7cf9fe");
INSERT INTO `wp_postmeta` VALUES("406", "69", "category_menu_1_menu_plates_0_description_plate", "loremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("407", "69", "_category_menu_1_menu_plates_0_description_plate", "field_5f4c7d5bcf9ff");
INSERT INTO `wp_postmeta` VALUES("408", "69", "category_menu_1_menu_plates", "1");
INSERT INTO `wp_postmeta` VALUES("409", "69", "_category_menu_1_menu_plates", "field_5f4c7c83cf9fc");
INSERT INTO `wp_postmeta` VALUES("410", "69", "category_menu_2_category_name", "Pasta");
INSERT INTO `wp_postmeta` VALUES("411", "69", "_category_menu_2_category_name", "field_5f4c7c6fcf9fb");
INSERT INTO `wp_postmeta` VALUES("412", "69", "category_menu_2_menu_plates_0_menu_price", "22");
INSERT INTO `wp_postmeta` VALUES("413", "69", "_category_menu_2_menu_plates_0_menu_price", "field_5f4c7c95cf9fd");
INSERT INTO `wp_postmeta` VALUES("414", "69", "category_menu_2_menu_plates_0_plate_name", "Chicken Alfredo Royce pasta");
INSERT INTO `wp_postmeta` VALUES("415", "69", "_category_menu_2_menu_plates_0_plate_name", "field_5f4c7cf7cf9fe");
INSERT INTO `wp_postmeta` VALUES("416", "69", "category_menu_2_menu_plates_0_description_plate", "loremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("417", "69", "_category_menu_2_menu_plates_0_description_plate", "field_5f4c7d5bcf9ff");
INSERT INTO `wp_postmeta` VALUES("418", "69", "category_menu_2_menu_plates", "1");
INSERT INTO `wp_postmeta` VALUES("419", "69", "_category_menu_2_menu_plates", "field_5f4c7c83cf9fc");
INSERT INTO `wp_postmeta` VALUES("420", "69", "category_menu", "3");
INSERT INTO `wp_postmeta` VALUES("421", "69", "_category_menu", "field_5f4c7c4bcf9fa");
INSERT INTO `wp_postmeta` VALUES("422", "69", "categoria_menu_0_nome_categoria", "Meat");
INSERT INTO `wp_postmeta` VALUES("423", "69", "_categoria_menu_0_nome_categoria", "field_5f4c80dbe3c82");
INSERT INTO `wp_postmeta` VALUES("424", "69", "categoria_menu_0_prato_menu_0_preco_prato", "45");
INSERT INTO `wp_postmeta` VALUES("425", "69", "_categoria_menu_0_prato_menu_0_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("426", "69", "categoria_menu_0_prato_menu_0_nome_prato", "Picanha French Fries");
INSERT INTO `wp_postmeta` VALUES("427", "69", "_categoria_menu_0_prato_menu_0_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("428", "69", "categoria_menu_0_prato_menu_0_descricao_prato", "loremloremloremloremloremloremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("429", "69", "_categoria_menu_0_prato_menu_0_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("430", "69", "categoria_menu_0_prato_menu_1_preco_prato", "36");
INSERT INTO `wp_postmeta` VALUES("431", "69", "_categoria_menu_0_prato_menu_1_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("432", "69", "categoria_menu_0_prato_menu_1_nome_prato", "Maminha Braziliana");
INSERT INTO `wp_postmeta` VALUES("433", "69", "_categoria_menu_0_prato_menu_1_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("434", "69", "categoria_menu_0_prato_menu_1_descricao_prato", "loremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("435", "69", "_categoria_menu_0_prato_menu_1_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("436", "69", "categoria_menu_0_prato_menu", "2");
INSERT INTO `wp_postmeta` VALUES("437", "69", "_categoria_menu_0_prato_menu", "field_5f4c80f2e3c83");
INSERT INTO `wp_postmeta` VALUES("438", "69", "categoria_menu_1_nome_categoria", "Fish");
INSERT INTO `wp_postmeta` VALUES("439", "69", "_categoria_menu_1_nome_categoria", "field_5f4c80dbe3c82");
INSERT INTO `wp_postmeta` VALUES("440", "69", "categoria_menu_1_prato_menu_0_preco_prato", "45");
INSERT INTO `wp_postmeta` VALUES("441", "69", "_categoria_menu_1_prato_menu_0_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("442", "69", "categoria_menu_1_prato_menu_0_nome_prato", "Tilapia Rice Salad +");
INSERT INTO `wp_postmeta` VALUES("443", "69", "_categoria_menu_1_prato_menu_0_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("444", "69", "categoria_menu_1_prato_menu_0_descricao_prato", "loremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("445", "69", "_categoria_menu_1_prato_menu_0_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("446", "69", "categoria_menu_1_prato_menu", "1");
INSERT INTO `wp_postmeta` VALUES("447", "69", "_categoria_menu_1_prato_menu", "field_5f4c80f2e3c83");
INSERT INTO `wp_postmeta` VALUES("448", "69", "categoria_menu", "4");
INSERT INTO `wp_postmeta` VALUES("449", "69", "_categoria_menu", "field_5f4c80bfe3c81");
INSERT INTO `wp_postmeta` VALUES("450", "69", "categoria_menu_2_nome_categoria", "Chicken");
INSERT INTO `wp_postmeta` VALUES("451", "69", "_categoria_menu_2_nome_categoria", "field_5f4c80dbe3c82");
INSERT INTO `wp_postmeta` VALUES("452", "69", "categoria_menu_2_prato_menu_0_preco_prato", "42");
INSERT INTO `wp_postmeta` VALUES("453", "69", "_categoria_menu_2_prato_menu_0_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("454", "69", "categoria_menu_2_prato_menu_0_nome_prato", "Chicken Wing Master Plus");
INSERT INTO `wp_postmeta` VALUES("455", "69", "_categoria_menu_2_prato_menu_0_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("456", "69", "categoria_menu_2_prato_menu_0_descricao_prato", "loremloremloremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("457", "69", "_categoria_menu_2_prato_menu_0_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("458", "69", "categoria_menu_2_prato_menu", "1");
INSERT INTO `wp_postmeta` VALUES("459", "69", "_categoria_menu_2_prato_menu", "field_5f4c80f2e3c83");
INSERT INTO `wp_postmeta` VALUES("460", "69", "categoria_menu_3_nome_categoria", "Pasta");
INSERT INTO `wp_postmeta` VALUES("461", "69", "_categoria_menu_3_nome_categoria", "field_5f4c80dbe3c82");
INSERT INTO `wp_postmeta` VALUES("462", "69", "categoria_menu_3_prato_menu_0_preco_prato", "40");
INSERT INTO `wp_postmeta` VALUES("463", "69", "_categoria_menu_3_prato_menu_0_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("464", "69", "categoria_menu_3_prato_menu_0_nome_prato", "Chicken Alfredo");
INSERT INTO `wp_postmeta` VALUES("465", "69", "_categoria_menu_3_prato_menu_0_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("466", "69", "categoria_menu_3_prato_menu_0_descricao_prato", "loremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("467", "69", "_categoria_menu_3_prato_menu_0_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("468", "69", "categoria_menu_3_prato_menu", "1");
INSERT INTO `wp_postmeta` VALUES("469", "69", "_categoria_menu_3_prato_menu", "field_5f4c80f2e3c83");
INSERT INTO `wp_postmeta` VALUES("470", "7", "categoria_menu_1_prato_menu_1_preco_prato", "40");
INSERT INTO `wp_postmeta` VALUES("471", "7", "_categoria_menu_1_prato_menu_1_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("472", "7", "categoria_menu_1_prato_menu_1_nome_prato", "Rice Shrimp House Special");
INSERT INTO `wp_postmeta` VALUES("473", "7", "_categoria_menu_1_prato_menu_1_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("474", "7", "categoria_menu_1_prato_menu_1_descricao_prato", "loremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("475", "7", "_categoria_menu_1_prato_menu_1_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("476", "7", "categoria_menu_2_prato_menu_1_preco_prato", "35");
INSERT INTO `wp_postmeta` VALUES("477", "7", "_categoria_menu_2_prato_menu_1_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("478", "7", "categoria_menu_2_prato_menu_1_nome_prato", "Chicken Rice Yummy");
INSERT INTO `wp_postmeta` VALUES("479", "7", "_categoria_menu_2_prato_menu_1_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("480", "7", "categoria_menu_2_prato_menu_1_descricao_prato", "loremloremloremloremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("481", "7", "_categoria_menu_2_prato_menu_1_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("482", "7", "categoria_menu_3_prato_menu_1_preco_prato", "45");
INSERT INTO `wp_postmeta` VALUES("483", "7", "_categoria_menu_3_prato_menu_1_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("484", "7", "categoria_menu_3_prato_menu_1_nome_prato", "Macaroni Italian Beef ");
INSERT INTO `wp_postmeta` VALUES("485", "7", "_categoria_menu_3_prato_menu_1_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("486", "7", "categoria_menu_3_prato_menu_1_descricao_prato", "loremloremloremloremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("487", "7", "_categoria_menu_3_prato_menu_1_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("488", "70", "category_menu_0_category_name", "Meat ");
INSERT INTO `wp_postmeta` VALUES("489", "70", "_category_menu_0_category_name", "field_5f4c7c6fcf9fb");
INSERT INTO `wp_postmeta` VALUES("490", "70", "category_menu_0_menu_plates_0_menu_price", "23");
INSERT INTO `wp_postmeta` VALUES("491", "70", "_category_menu_0_menu_plates_0_menu_price", "field_5f4c7c95cf9fd");
INSERT INTO `wp_postmeta` VALUES("492", "70", "category_menu_0_menu_plates_0_plate_name", "Picanha French Fries");
INSERT INTO `wp_postmeta` VALUES("493", "70", "_category_menu_0_menu_plates_0_plate_name", "field_5f4c7cf7cf9fe");
INSERT INTO `wp_postmeta` VALUES("494", "70", "category_menu_0_menu_plates_0_description_plate", "name_name_name_name_name_name_name_name_name_name_name_name_name_name_");
INSERT INTO `wp_postmeta` VALUES("495", "70", "_category_menu_0_menu_plates_0_description_plate", "field_5f4c7d5bcf9ff");
INSERT INTO `wp_postmeta` VALUES("496", "70", "category_menu_0_menu_plates", "1");
INSERT INTO `wp_postmeta` VALUES("497", "70", "_category_menu_0_menu_plates", "field_5f4c7c83cf9fc");
INSERT INTO `wp_postmeta` VALUES("498", "70", "category_menu_1_category_name", "Chicken");
INSERT INTO `wp_postmeta` VALUES("499", "70", "_category_menu_1_category_name", "field_5f4c7c6fcf9fb");
INSERT INTO `wp_postmeta` VALUES("500", "70", "category_menu_1_menu_plates_0_menu_price", "20");
INSERT INTO `wp_postmeta` VALUES("501", "70", "_category_menu_1_menu_plates_0_menu_price", "field_5f4c7c95cf9fd");
INSERT INTO `wp_postmeta` VALUES("502", "70", "category_menu_1_menu_plates_0_plate_name", "Brazilian Chicken Style");
INSERT INTO `wp_postmeta` VALUES("503", "70", "_category_menu_1_menu_plates_0_plate_name", "field_5f4c7cf7cf9fe");
INSERT INTO `wp_postmeta` VALUES("504", "70", "category_menu_1_menu_plates_0_description_plate", "loremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("505", "70", "_category_menu_1_menu_plates_0_description_plate", "field_5f4c7d5bcf9ff");
INSERT INTO `wp_postmeta` VALUES("506", "70", "category_menu_1_menu_plates", "1");
INSERT INTO `wp_postmeta` VALUES("507", "70", "_category_menu_1_menu_plates", "field_5f4c7c83cf9fc");
INSERT INTO `wp_postmeta` VALUES("508", "70", "category_menu_2_category_name", "Pasta");
INSERT INTO `wp_postmeta` VALUES("509", "70", "_category_menu_2_category_name", "field_5f4c7c6fcf9fb");
INSERT INTO `wp_postmeta` VALUES("510", "70", "category_menu_2_menu_plates_0_menu_price", "22");
INSERT INTO `wp_postmeta` VALUES("511", "70", "_category_menu_2_menu_plates_0_menu_price", "field_5f4c7c95cf9fd");
INSERT INTO `wp_postmeta` VALUES("512", "70", "category_menu_2_menu_plates_0_plate_name", "Chicken Alfredo Royce pasta");
INSERT INTO `wp_postmeta` VALUES("513", "70", "_category_menu_2_menu_plates_0_plate_name", "field_5f4c7cf7cf9fe");
INSERT INTO `wp_postmeta` VALUES("514", "70", "category_menu_2_menu_plates_0_description_plate", "loremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("515", "70", "_category_menu_2_menu_plates_0_description_plate", "field_5f4c7d5bcf9ff");
INSERT INTO `wp_postmeta` VALUES("516", "70", "category_menu_2_menu_plates", "1");
INSERT INTO `wp_postmeta` VALUES("517", "70", "_category_menu_2_menu_plates", "field_5f4c7c83cf9fc");
INSERT INTO `wp_postmeta` VALUES("518", "70", "category_menu", "3");
INSERT INTO `wp_postmeta` VALUES("519", "70", "_category_menu", "field_5f4c7c4bcf9fa");
INSERT INTO `wp_postmeta` VALUES("520", "70", "categoria_menu_0_nome_categoria", "Meat");
INSERT INTO `wp_postmeta` VALUES("521", "70", "_categoria_menu_0_nome_categoria", "field_5f4c80dbe3c82");
INSERT INTO `wp_postmeta` VALUES("522", "70", "categoria_menu_0_prato_menu_0_preco_prato", "45");
INSERT INTO `wp_postmeta` VALUES("523", "70", "_categoria_menu_0_prato_menu_0_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("524", "70", "categoria_menu_0_prato_menu_0_nome_prato", "Picanha French Fries");
INSERT INTO `wp_postmeta` VALUES("525", "70", "_categoria_menu_0_prato_menu_0_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("526", "70", "categoria_menu_0_prato_menu_0_descricao_prato", "loremloremloremloremloremloremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("527", "70", "_categoria_menu_0_prato_menu_0_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("528", "70", "categoria_menu_0_prato_menu_1_preco_prato", "36");
INSERT INTO `wp_postmeta` VALUES("529", "70", "_categoria_menu_0_prato_menu_1_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("530", "70", "categoria_menu_0_prato_menu_1_nome_prato", "Maminha Braziliana");
INSERT INTO `wp_postmeta` VALUES("531", "70", "_categoria_menu_0_prato_menu_1_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("532", "70", "categoria_menu_0_prato_menu_1_descricao_prato", "loremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("533", "70", "_categoria_menu_0_prato_menu_1_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("534", "70", "categoria_menu_0_prato_menu", "2");
INSERT INTO `wp_postmeta` VALUES("535", "70", "_categoria_menu_0_prato_menu", "field_5f4c80f2e3c83");
INSERT INTO `wp_postmeta` VALUES("536", "70", "categoria_menu_1_nome_categoria", "Fish");
INSERT INTO `wp_postmeta` VALUES("537", "70", "_categoria_menu_1_nome_categoria", "field_5f4c80dbe3c82");
INSERT INTO `wp_postmeta` VALUES("538", "70", "categoria_menu_1_prato_menu_0_preco_prato", "45");
INSERT INTO `wp_postmeta` VALUES("539", "70", "_categoria_menu_1_prato_menu_0_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("540", "70", "categoria_menu_1_prato_menu_0_nome_prato", "Tilapia Rice Salad +");
INSERT INTO `wp_postmeta` VALUES("541", "70", "_categoria_menu_1_prato_menu_0_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("542", "70", "categoria_menu_1_prato_menu_0_descricao_prato", "loremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("543", "70", "_categoria_menu_1_prato_menu_0_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("544", "70", "categoria_menu_1_prato_menu", "2");
INSERT INTO `wp_postmeta` VALUES("545", "70", "_categoria_menu_1_prato_menu", "field_5f4c80f2e3c83");
INSERT INTO `wp_postmeta` VALUES("546", "70", "categoria_menu", "4");
INSERT INTO `wp_postmeta` VALUES("547", "70", "_categoria_menu", "field_5f4c80bfe3c81");
INSERT INTO `wp_postmeta` VALUES("548", "70", "categoria_menu_2_nome_categoria", "Chicken");
INSERT INTO `wp_postmeta` VALUES("549", "70", "_categoria_menu_2_nome_categoria", "field_5f4c80dbe3c82");
INSERT INTO `wp_postmeta` VALUES("550", "70", "categoria_menu_2_prato_menu_0_preco_prato", "42");
INSERT INTO `wp_postmeta` VALUES("551", "70", "_categoria_menu_2_prato_menu_0_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("552", "70", "categoria_menu_2_prato_menu_0_nome_prato", "Chicken Wing Master Plus");
INSERT INTO `wp_postmeta` VALUES("553", "70", "_categoria_menu_2_prato_menu_0_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("554", "70", "categoria_menu_2_prato_menu_0_descricao_prato", "loremloremloremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("555", "70", "_categoria_menu_2_prato_menu_0_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("556", "70", "categoria_menu_2_prato_menu", "2");
INSERT INTO `wp_postmeta` VALUES("557", "70", "_categoria_menu_2_prato_menu", "field_5f4c80f2e3c83");
INSERT INTO `wp_postmeta` VALUES("558", "70", "categoria_menu_3_nome_categoria", "Pasta");
INSERT INTO `wp_postmeta` VALUES("559", "70", "_categoria_menu_3_nome_categoria", "field_5f4c80dbe3c82");
INSERT INTO `wp_postmeta` VALUES("560", "70", "categoria_menu_3_prato_menu_0_preco_prato", "40");
INSERT INTO `wp_postmeta` VALUES("561", "70", "_categoria_menu_3_prato_menu_0_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("562", "70", "categoria_menu_3_prato_menu_0_nome_prato", "Chicken Alfredo");
INSERT INTO `wp_postmeta` VALUES("563", "70", "_categoria_menu_3_prato_menu_0_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("564", "70", "categoria_menu_3_prato_menu_0_descricao_prato", "loremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("565", "70", "_categoria_menu_3_prato_menu_0_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("566", "70", "categoria_menu_3_prato_menu", "2");
INSERT INTO `wp_postmeta` VALUES("567", "70", "_categoria_menu_3_prato_menu", "field_5f4c80f2e3c83");
INSERT INTO `wp_postmeta` VALUES("568", "70", "categoria_menu_1_prato_menu_1_preco_prato", "40");
INSERT INTO `wp_postmeta` VALUES("569", "70", "_categoria_menu_1_prato_menu_1_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("570", "70", "categoria_menu_1_prato_menu_1_nome_prato", "Rice Shrimp House Special");
INSERT INTO `wp_postmeta` VALUES("571", "70", "_categoria_menu_1_prato_menu_1_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("572", "70", "categoria_menu_1_prato_menu_1_descricao_prato", "loremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("573", "70", "_categoria_menu_1_prato_menu_1_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("574", "70", "categoria_menu_2_prato_menu_1_preco_prato", "35");
INSERT INTO `wp_postmeta` VALUES("575", "70", "_categoria_menu_2_prato_menu_1_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("576", "70", "categoria_menu_2_prato_menu_1_nome_prato", "Chicken Rice Yummy");
INSERT INTO `wp_postmeta` VALUES("577", "70", "_categoria_menu_2_prato_menu_1_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("578", "70", "categoria_menu_2_prato_menu_1_descricao_prato", "loremloremloremloremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("579", "70", "_categoria_menu_2_prato_menu_1_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("580", "70", "categoria_menu_3_prato_menu_1_preco_prato", "45");
INSERT INTO `wp_postmeta` VALUES("581", "70", "_categoria_menu_3_prato_menu_1_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("582", "70", "categoria_menu_3_prato_menu_1_nome_prato", "Macaroni Italian Beef ");
INSERT INTO `wp_postmeta` VALUES("583", "70", "_categoria_menu_3_prato_menu_1_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("584", "70", "categoria_menu_3_prato_menu_1_descricao_prato", "");
INSERT INTO `wp_postmeta` VALUES("585", "70", "_categoria_menu_3_prato_menu_1_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("586", "71", "category_menu_0_category_name", "Meat ");
INSERT INTO `wp_postmeta` VALUES("587", "71", "_category_menu_0_category_name", "field_5f4c7c6fcf9fb");
INSERT INTO `wp_postmeta` VALUES("588", "71", "category_menu_0_menu_plates_0_menu_price", "23");
INSERT INTO `wp_postmeta` VALUES("589", "71", "_category_menu_0_menu_plates_0_menu_price", "field_5f4c7c95cf9fd");
INSERT INTO `wp_postmeta` VALUES("590", "71", "category_menu_0_menu_plates_0_plate_name", "Picanha French Fries");
INSERT INTO `wp_postmeta` VALUES("591", "71", "_category_menu_0_menu_plates_0_plate_name", "field_5f4c7cf7cf9fe");
INSERT INTO `wp_postmeta` VALUES("592", "71", "category_menu_0_menu_plates_0_description_plate", "name_name_name_name_name_name_name_name_name_name_name_name_name_name_");
INSERT INTO `wp_postmeta` VALUES("593", "71", "_category_menu_0_menu_plates_0_description_plate", "field_5f4c7d5bcf9ff");
INSERT INTO `wp_postmeta` VALUES("594", "71", "category_menu_0_menu_plates", "1");
INSERT INTO `wp_postmeta` VALUES("595", "71", "_category_menu_0_menu_plates", "field_5f4c7c83cf9fc");
INSERT INTO `wp_postmeta` VALUES("596", "71", "category_menu_1_category_name", "Chicken");
INSERT INTO `wp_postmeta` VALUES("597", "71", "_category_menu_1_category_name", "field_5f4c7c6fcf9fb");
INSERT INTO `wp_postmeta` VALUES("598", "71", "category_menu_1_menu_plates_0_menu_price", "20");
INSERT INTO `wp_postmeta` VALUES("599", "71", "_category_menu_1_menu_plates_0_menu_price", "field_5f4c7c95cf9fd");
INSERT INTO `wp_postmeta` VALUES("600", "71", "category_menu_1_menu_plates_0_plate_name", "Brazilian Chicken Style");
INSERT INTO `wp_postmeta` VALUES("601", "71", "_category_menu_1_menu_plates_0_plate_name", "field_5f4c7cf7cf9fe");
INSERT INTO `wp_postmeta` VALUES("602", "71", "category_menu_1_menu_plates_0_description_plate", "loremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("603", "71", "_category_menu_1_menu_plates_0_description_plate", "field_5f4c7d5bcf9ff");
INSERT INTO `wp_postmeta` VALUES("604", "71", "category_menu_1_menu_plates", "1");
INSERT INTO `wp_postmeta` VALUES("605", "71", "_category_menu_1_menu_plates", "field_5f4c7c83cf9fc");
INSERT INTO `wp_postmeta` VALUES("606", "71", "category_menu_2_category_name", "Pasta");
INSERT INTO `wp_postmeta` VALUES("607", "71", "_category_menu_2_category_name", "field_5f4c7c6fcf9fb");
INSERT INTO `wp_postmeta` VALUES("608", "71", "category_menu_2_menu_plates_0_menu_price", "22");
INSERT INTO `wp_postmeta` VALUES("609", "71", "_category_menu_2_menu_plates_0_menu_price", "field_5f4c7c95cf9fd");
INSERT INTO `wp_postmeta` VALUES("610", "71", "category_menu_2_menu_plates_0_plate_name", "Chicken Alfredo Royce pasta");
INSERT INTO `wp_postmeta` VALUES("611", "71", "_category_menu_2_menu_plates_0_plate_name", "field_5f4c7cf7cf9fe");
INSERT INTO `wp_postmeta` VALUES("612", "71", "category_menu_2_menu_plates_0_description_plate", "loremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("613", "71", "_category_menu_2_menu_plates_0_description_plate", "field_5f4c7d5bcf9ff");
INSERT INTO `wp_postmeta` VALUES("614", "71", "category_menu_2_menu_plates", "1");
INSERT INTO `wp_postmeta` VALUES("615", "71", "_category_menu_2_menu_plates", "field_5f4c7c83cf9fc");
INSERT INTO `wp_postmeta` VALUES("616", "71", "category_menu", "3");
INSERT INTO `wp_postmeta` VALUES("617", "71", "_category_menu", "field_5f4c7c4bcf9fa");
INSERT INTO `wp_postmeta` VALUES("618", "71", "categoria_menu_0_nome_categoria", "Meat");
INSERT INTO `wp_postmeta` VALUES("619", "71", "_categoria_menu_0_nome_categoria", "field_5f4c80dbe3c82");
INSERT INTO `wp_postmeta` VALUES("620", "71", "categoria_menu_0_prato_menu_0_preco_prato", "45");
INSERT INTO `wp_postmeta` VALUES("621", "71", "_categoria_menu_0_prato_menu_0_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("622", "71", "categoria_menu_0_prato_menu_0_nome_prato", "Picanha French Fries");
INSERT INTO `wp_postmeta` VALUES("623", "71", "_categoria_menu_0_prato_menu_0_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("624", "71", "categoria_menu_0_prato_menu_0_descricao_prato", "loremloremloremloremloremloremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("625", "71", "_categoria_menu_0_prato_menu_0_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("626", "71", "categoria_menu_0_prato_menu_1_preco_prato", "36");
INSERT INTO `wp_postmeta` VALUES("627", "71", "_categoria_menu_0_prato_menu_1_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("628", "71", "categoria_menu_0_prato_menu_1_nome_prato", "Maminha Braziliana");
INSERT INTO `wp_postmeta` VALUES("629", "71", "_categoria_menu_0_prato_menu_1_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("630", "71", "categoria_menu_0_prato_menu_1_descricao_prato", "loremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("631", "71", "_categoria_menu_0_prato_menu_1_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("632", "71", "categoria_menu_0_prato_menu", "2");
INSERT INTO `wp_postmeta` VALUES("633", "71", "_categoria_menu_0_prato_menu", "field_5f4c80f2e3c83");
INSERT INTO `wp_postmeta` VALUES("634", "71", "categoria_menu_1_nome_categoria", "Fish");
INSERT INTO `wp_postmeta` VALUES("635", "71", "_categoria_menu_1_nome_categoria", "field_5f4c80dbe3c82");
INSERT INTO `wp_postmeta` VALUES("636", "71", "categoria_menu_1_prato_menu_0_preco_prato", "45");
INSERT INTO `wp_postmeta` VALUES("637", "71", "_categoria_menu_1_prato_menu_0_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("638", "71", "categoria_menu_1_prato_menu_0_nome_prato", "Tilapia Rice Salad +");
INSERT INTO `wp_postmeta` VALUES("639", "71", "_categoria_menu_1_prato_menu_0_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("640", "71", "categoria_menu_1_prato_menu_0_descricao_prato", "loremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("641", "71", "_categoria_menu_1_prato_menu_0_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("642", "71", "categoria_menu_1_prato_menu", "2");
INSERT INTO `wp_postmeta` VALUES("643", "71", "_categoria_menu_1_prato_menu", "field_5f4c80f2e3c83");
INSERT INTO `wp_postmeta` VALUES("644", "71", "categoria_menu", "4");
INSERT INTO `wp_postmeta` VALUES("645", "71", "_categoria_menu", "field_5f4c80bfe3c81");
INSERT INTO `wp_postmeta` VALUES("646", "71", "categoria_menu_2_nome_categoria", "Chicken");
INSERT INTO `wp_postmeta` VALUES("647", "71", "_categoria_menu_2_nome_categoria", "field_5f4c80dbe3c82");
INSERT INTO `wp_postmeta` VALUES("648", "71", "categoria_menu_2_prato_menu_0_preco_prato", "42");
INSERT INTO `wp_postmeta` VALUES("649", "71", "_categoria_menu_2_prato_menu_0_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("650", "71", "categoria_menu_2_prato_menu_0_nome_prato", "Chicken Wing Master Plus");
INSERT INTO `wp_postmeta` VALUES("651", "71", "_categoria_menu_2_prato_menu_0_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("652", "71", "categoria_menu_2_prato_menu_0_descricao_prato", "loremloremloremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("653", "71", "_categoria_menu_2_prato_menu_0_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("654", "71", "categoria_menu_2_prato_menu", "2");
INSERT INTO `wp_postmeta` VALUES("655", "71", "_categoria_menu_2_prato_menu", "field_5f4c80f2e3c83");
INSERT INTO `wp_postmeta` VALUES("656", "71", "categoria_menu_3_nome_categoria", "Pasta");
INSERT INTO `wp_postmeta` VALUES("657", "71", "_categoria_menu_3_nome_categoria", "field_5f4c80dbe3c82");
INSERT INTO `wp_postmeta` VALUES("658", "71", "categoria_menu_3_prato_menu_0_preco_prato", "40");
INSERT INTO `wp_postmeta` VALUES("659", "71", "_categoria_menu_3_prato_menu_0_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("660", "71", "categoria_menu_3_prato_menu_0_nome_prato", "Chicken Alfredo");
INSERT INTO `wp_postmeta` VALUES("661", "71", "_categoria_menu_3_prato_menu_0_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("662", "71", "categoria_menu_3_prato_menu_0_descricao_prato", "loremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("663", "71", "_categoria_menu_3_prato_menu_0_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("664", "71", "categoria_menu_3_prato_menu", "2");
INSERT INTO `wp_postmeta` VALUES("665", "71", "_categoria_menu_3_prato_menu", "field_5f4c80f2e3c83");
INSERT INTO `wp_postmeta` VALUES("666", "71", "categoria_menu_1_prato_menu_1_preco_prato", "40");
INSERT INTO `wp_postmeta` VALUES("667", "71", "_categoria_menu_1_prato_menu_1_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("668", "71", "categoria_menu_1_prato_menu_1_nome_prato", "Rice Shrimp House Special");
INSERT INTO `wp_postmeta` VALUES("669", "71", "_categoria_menu_1_prato_menu_1_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("670", "71", "categoria_menu_1_prato_menu_1_descricao_prato", "loremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("671", "71", "_categoria_menu_1_prato_menu_1_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("672", "71", "categoria_menu_2_prato_menu_1_preco_prato", "35");
INSERT INTO `wp_postmeta` VALUES("673", "71", "_categoria_menu_2_prato_menu_1_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("674", "71", "categoria_menu_2_prato_menu_1_nome_prato", "Chicken Rice Yummy");
INSERT INTO `wp_postmeta` VALUES("675", "71", "_categoria_menu_2_prato_menu_1_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("676", "71", "categoria_menu_2_prato_menu_1_descricao_prato", "loremloremloremloremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("677", "71", "_categoria_menu_2_prato_menu_1_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("678", "71", "categoria_menu_3_prato_menu_1_preco_prato", "45");
INSERT INTO `wp_postmeta` VALUES("679", "71", "_categoria_menu_3_prato_menu_1_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("680", "71", "categoria_menu_3_prato_menu_1_nome_prato", "Macaroni Italian Beef ");
INSERT INTO `wp_postmeta` VALUES("681", "71", "_categoria_menu_3_prato_menu_1_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("682", "71", "categoria_menu_3_prato_menu_1_descricao_prato", "loremloremloremloremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("683", "71", "_categoria_menu_3_prato_menu_1_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("684", "72", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("685", "72", "_edit_lock", "1598899694:1");
INSERT INTO `wp_postmeta` VALUES("686", "11", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("687", "11", "address_header", "--33 Realand World Street --Vancouver, BC");
INSERT INTO `wp_postmeta` VALUES("688", "11", "_address_header", "field_5f4c8b22aba4b");
INSERT INTO `wp_postmeta` VALUES("689", "11", "phone_header", "123-333-3333");
INSERT INTO `wp_postmeta` VALUES("690", "11", "_phone_header", "field_5f4c8bacaba4c");
INSERT INTO `wp_postmeta` VALUES("691", "75", "address_header", "3333 Realand World Street - Vancouver - BC");
INSERT INTO `wp_postmeta` VALUES("692", "75", "_address_header", "field_5f4c8b22aba4b");
INSERT INTO `wp_postmeta` VALUES("693", "75", "phone_header", "778 - 333 - 3333");
INSERT INTO `wp_postmeta` VALUES("694", "75", "_phone_header", "field_5f4c8bacaba4c");
INSERT INTO `wp_postmeta` VALUES("695", "76", "address_header", "33 Realand World Street-Vancouver-BC");
INSERT INTO `wp_postmeta` VALUES("696", "76", "_address_header", "field_5f4c8b22aba4b");
INSERT INTO `wp_postmeta` VALUES("697", "76", "phone_header", "778 - 333 - 3333");
INSERT INTO `wp_postmeta` VALUES("698", "76", "_phone_header", "field_5f4c8bacaba4c");
INSERT INTO `wp_postmeta` VALUES("699", "77", "address_header", "33 Realand World Street-Vancouver-BC");
INSERT INTO `wp_postmeta` VALUES("700", "77", "_address_header", "field_5f4c8b22aba4b");
INSERT INTO `wp_postmeta` VALUES("701", "77", "phone_header", "778-333-3333");
INSERT INTO `wp_postmeta` VALUES("702", "77", "_phone_header", "field_5f4c8bacaba4c");
INSERT INTO `wp_postmeta` VALUES("703", "78", "address_header", "33 Realand World Street            Vancouver-BC");
INSERT INTO `wp_postmeta` VALUES("704", "78", "_address_header", "field_5f4c8b22aba4b");
INSERT INTO `wp_postmeta` VALUES("705", "78", "phone_header", "778-333-3333");
INSERT INTO `wp_postmeta` VALUES("706", "78", "_phone_header", "field_5f4c8bacaba4c");
INSERT INTO `wp_postmeta` VALUES("707", "79", "address_header", "33 Realand World Street            Vancouver-BC");
INSERT INTO `wp_postmeta` VALUES("708", "79", "_address_header", "field_5f4c8b22aba4b");
INSERT INTO `wp_postmeta` VALUES("709", "79", "phone_header", "778-333-3333");
INSERT INTO `wp_postmeta` VALUES("710", "79", "_phone_header", "field_5f4c8bacaba4c");
INSERT INTO `wp_postmeta` VALUES("711", "80", "address_header", "33 Realand World Street  ----Vancouver-BC");
INSERT INTO `wp_postmeta` VALUES("712", "80", "_address_header", "field_5f4c8b22aba4b");
INSERT INTO `wp_postmeta` VALUES("713", "80", "phone_header", "778-333-3333");
INSERT INTO `wp_postmeta` VALUES("714", "80", "_phone_header", "field_5f4c8bacaba4c");
INSERT INTO `wp_postmeta` VALUES("715", "81", "address_header", "--33 Realand World Street --Vancouver-BC");
INSERT INTO `wp_postmeta` VALUES("716", "81", "_address_header", "field_5f4c8b22aba4b");
INSERT INTO `wp_postmeta` VALUES("717", "81", "phone_header", "778-333-3333");
INSERT INTO `wp_postmeta` VALUES("718", "81", "_phone_header", "field_5f4c8bacaba4c");
INSERT INTO `wp_postmeta` VALUES("719", "82", "address_header", "--33 Realand World Street --Vancouver, BC");
INSERT INTO `wp_postmeta` VALUES("720", "82", "_address_header", "field_5f4c8b22aba4b");
INSERT INTO `wp_postmeta` VALUES("721", "82", "phone_header", "778-333-3333");
INSERT INTO `wp_postmeta` VALUES("722", "82", "_phone_header", "field_5f4c8bacaba4c");
INSERT INTO `wp_postmeta` VALUES("723", "83", "address_header", "--33 Realand World Street --Vancouver, BC");
INSERT INTO `wp_postmeta` VALUES("724", "83", "_address_header", "field_5f4c8b22aba4b");
INSERT INTO `wp_postmeta` VALUES("725", "83", "phone_header", "000-333-3333");
INSERT INTO `wp_postmeta` VALUES("726", "83", "_phone_header", "field_5f4c8bacaba4c");
INSERT INTO `wp_postmeta` VALUES("727", "84", "address_header", "--33 Realand World Street --Vancouver, BC");
INSERT INTO `wp_postmeta` VALUES("728", "84", "_address_header", "field_5f4c8b22aba4b");
INSERT INTO `wp_postmeta` VALUES("729", "84", "phone_header", "123-333-3333");
INSERT INTO `wp_postmeta` VALUES("730", "84", "_phone_header", "field_5f4c8bacaba4c");
INSERT INTO `wp_postmeta` VALUES("731", "88", "_wp_attached_file", "2020/08/rest-mapa.jpg");
INSERT INTO `wp_postmeta` VALUES("732", "88", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:940;s:6:\"height\";i:260;s:4:\"file\";s:21:\"2020/08/rest-mapa.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"rest-mapa-300x83.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:83;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"rest-mapa-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"rest-mapa-768x212.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("733", "11", "map_link", "https://www.google.com/maps");
INSERT INTO `wp_postmeta` VALUES("734", "11", "_map_link", "field_5f4d3d77a7963");
INSERT INTO `wp_postmeta` VALUES("735", "11", "img_map", "88");
INSERT INTO `wp_postmeta` VALUES("736", "11", "_img_map", "field_5f4d3d9ca7964");
INSERT INTO `wp_postmeta` VALUES("737", "89", "address_header", "--33 Realand World Street --Vancouver, BC");
INSERT INTO `wp_postmeta` VALUES("738", "89", "_address_header", "field_5f4c8b22aba4b");
INSERT INTO `wp_postmeta` VALUES("739", "89", "phone_header", "123-333-3333");
INSERT INTO `wp_postmeta` VALUES("740", "89", "_phone_header", "field_5f4c8bacaba4c");
INSERT INTO `wp_postmeta` VALUES("741", "89", "map_link", "https://www.google.com/maps");
INSERT INTO `wp_postmeta` VALUES("742", "89", "_map_link", "field_5f4d3d77a7963");
INSERT INTO `wp_postmeta` VALUES("743", "89", "img_map", "88");
INSERT INTO `wp_postmeta` VALUES("744", "89", "_img_map", "field_5f4d3d9ca7964");
INSERT INTO `wp_postmeta` VALUES("745", "92", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("746", "92", "_edit_lock", "1598899390:1");
INSERT INTO `wp_postmeta` VALUES("747", "92", "_wp_trash_meta_status", "publish");
INSERT INTO `wp_postmeta` VALUES("748", "92", "_wp_trash_meta_time", "1598899538");
INSERT INTO `wp_postmeta` VALUES("749", "92", "_wp_desired_post_slug", "group_5f4d41819fc81");
INSERT INTO `wp_postmeta` VALUES("750", "96", "_wp_trash_meta_status", "publish");
INSERT INTO `wp_postmeta` VALUES("751", "96", "_wp_trash_meta_time", "1598899538");
INSERT INTO `wp_postmeta` VALUES("752", "96", "_wp_desired_post_slug", "field_5f4d437d9346e");
INSERT INTO `wp_postmeta` VALUES("753", "93", "_wp_trash_meta_status", "publish");
INSERT INTO `wp_postmeta` VALUES("754", "93", "_wp_trash_meta_time", "1598899538");
INSERT INTO `wp_postmeta` VALUES("755", "93", "_wp_desired_post_slug", "field_5f4d4188a5ce5");
INSERT INTO `wp_postmeta` VALUES("756", "95", "_wp_trash_meta_status", "publish");
INSERT INTO `wp_postmeta` VALUES("757", "95", "_wp_trash_meta_time", "1598899538");
INSERT INTO `wp_postmeta` VALUES("758", "95", "_wp_desired_post_slug", "field_5f4d4213a5ce7");
INSERT INTO `wp_postmeta` VALUES("759", "11", "content_contact_0_contact_title", "Data");
INSERT INTO `wp_postmeta` VALUES("760", "11", "_content_contact_0_contact_title", "field_5f4d45d4c4122");
INSERT INTO `wp_postmeta` VALUES("761", "11", "content_contact_0_contact_info", "123-333-3333\r\n\r\ncontact@rest.com\r\n\r\nfacebook.com/rest/");
INSERT INTO `wp_postmeta` VALUES("762", "11", "_content_contact_0_contact_info", "field_5f4d462bc4123");
INSERT INTO `wp_postmeta` VALUES("763", "11", "content_contact_1_contact_title", "Hours");
INSERT INTO `wp_postmeta` VALUES("764", "11", "_content_contact_1_contact_title", "field_5f4d45d4c4122");
INSERT INTO `wp_postmeta` VALUES("765", "11", "content_contact_1_contact_info", "Mon - Fri: 10am - 11pm\r\n\r\nSaturday: 2pm - 11pm\r\n\r\nSunday: 2pm - 10pm");
INSERT INTO `wp_postmeta` VALUES("766", "11", "_content_contact_1_contact_info", "field_5f4d462bc4123");
INSERT INTO `wp_postmeta` VALUES("767", "11", "content_contact_2_contact_title", "Address");
INSERT INTO `wp_postmeta` VALUES("768", "11", "_content_contact_2_contact_title", "field_5f4d45d4c4122");
INSERT INTO `wp_postmeta` VALUES("769", "11", "content_contact_2_contact_info", "33 Realand World Street\r\n\r\nDowntown - Belo Horizonte\r\n\r\nBrazil - SouthAmerica");
INSERT INTO `wp_postmeta` VALUES("770", "11", "_content_contact_2_contact_info", "field_5f4d462bc4123");
INSERT INTO `wp_postmeta` VALUES("771", "11", "content_contact", "3");
INSERT INTO `wp_postmeta` VALUES("772", "11", "_content_contact", "field_5f4d4567c4120");
INSERT INTO `wp_postmeta` VALUES("773", "102", "address_header", "--33 Realand World Street --Vancouver, BC");
INSERT INTO `wp_postmeta` VALUES("774", "102", "_address_header", "field_5f4c8b22aba4b");
INSERT INTO `wp_postmeta` VALUES("775", "102", "phone_header", "123-333-3333");
INSERT INTO `wp_postmeta` VALUES("776", "102", "_phone_header", "field_5f4c8bacaba4c");
INSERT INTO `wp_postmeta` VALUES("777", "102", "map_link", "https://www.google.com/maps");
INSERT INTO `wp_postmeta` VALUES("778", "102", "_map_link", "field_5f4d3d77a7963");
INSERT INTO `wp_postmeta` VALUES("779", "102", "img_map", "88");
INSERT INTO `wp_postmeta` VALUES("780", "102", "_img_map", "field_5f4d3d9ca7964");
INSERT INTO `wp_postmeta` VALUES("781", "102", "content_contact_0_contact_title", "Data");
INSERT INTO `wp_postmeta` VALUES("782", "102", "_content_contact_0_contact_title", "field_5f4d45d4c4122");
INSERT INTO `wp_postmeta` VALUES("783", "102", "content_contact_0_contact_info", "123-333-3333\r\n\r\ncontact@rest.com\r\n\r\nfacebook.com/rest/");
INSERT INTO `wp_postmeta` VALUES("784", "102", "_content_contact_0_contact_info", "field_5f4d462bc4123");
INSERT INTO `wp_postmeta` VALUES("785", "102", "content_contact_1_contact_title", "Hours");
INSERT INTO `wp_postmeta` VALUES("786", "102", "_content_contact_1_contact_title", "field_5f4d45d4c4122");
INSERT INTO `wp_postmeta` VALUES("787", "102", "content_contact_1_contact_info", "Mon - Fri: 10 - 11pm\r\n\r\nSaturday: 2pm - 11pm\r\n\r\nSunday: 2pm - 10pm");
INSERT INTO `wp_postmeta` VALUES("788", "102", "_content_contact_1_contact_info", "field_5f4d462bc4123");
INSERT INTO `wp_postmeta` VALUES("789", "102", "content_contact_2_contact_title", "Address");
INSERT INTO `wp_postmeta` VALUES("790", "102", "_content_contact_2_contact_title", "field_5f4d45d4c4122");
INSERT INTO `wp_postmeta` VALUES("791", "102", "content_contact_2_contact_info", "33 Realand World Street\r\n\r\nDowntown - Vancouver\r\n\r\nCanada");
INSERT INTO `wp_postmeta` VALUES("792", "102", "_content_contact_2_contact_info", "field_5f4d462bc4123");
INSERT INTO `wp_postmeta` VALUES("793", "102", "content_contact", "3");
INSERT INTO `wp_postmeta` VALUES("794", "102", "_content_contact", "field_5f4d4567c4120");
INSERT INTO `wp_postmeta` VALUES("795", "103", "address_header", "--33 Realand World Street --Vancouver, BC");
INSERT INTO `wp_postmeta` VALUES("796", "103", "_address_header", "field_5f4c8b22aba4b");
INSERT INTO `wp_postmeta` VALUES("797", "103", "phone_header", "123-333-3333");
INSERT INTO `wp_postmeta` VALUES("798", "103", "_phone_header", "field_5f4c8bacaba4c");
INSERT INTO `wp_postmeta` VALUES("799", "103", "map_link", "https://www.google.com/maps");
INSERT INTO `wp_postmeta` VALUES("800", "103", "_map_link", "field_5f4d3d77a7963");
INSERT INTO `wp_postmeta` VALUES("801", "103", "img_map", "88");
INSERT INTO `wp_postmeta` VALUES("802", "103", "_img_map", "field_5f4d3d9ca7964");
INSERT INTO `wp_postmeta` VALUES("803", "103", "content_contact_0_contact_title", "Data");
INSERT INTO `wp_postmeta` VALUES("804", "103", "_content_contact_0_contact_title", "field_5f4d45d4c4122");
INSERT INTO `wp_postmeta` VALUES("805", "103", "content_contact_0_contact_info", "123-333-3333\r\n\r\ncontact@rest.com\r\n\r\nfacebook.com/rest/");
INSERT INTO `wp_postmeta` VALUES("806", "103", "_content_contact_0_contact_info", "field_5f4d462bc4123");
INSERT INTO `wp_postmeta` VALUES("807", "103", "content_contact_1_contact_title", "Hours");
INSERT INTO `wp_postmeta` VALUES("808", "103", "_content_contact_1_contact_title", "field_5f4d45d4c4122");
INSERT INTO `wp_postmeta` VALUES("809", "103", "content_contact_1_contact_info", "Mon - Fri: 10 - 11pm\r\n\r\nSaturday: 2pm - 11pm\r\n\r\nSunday: 2pm - 10pm");
INSERT INTO `wp_postmeta` VALUES("810", "103", "_content_contact_1_contact_info", "field_5f4d462bc4123");
INSERT INTO `wp_postmeta` VALUES("811", "103", "content_contact_2_contact_title", "Address");
INSERT INTO `wp_postmeta` VALUES("812", "103", "_content_contact_2_contact_title", "field_5f4d45d4c4122");
INSERT INTO `wp_postmeta` VALUES("813", "103", "content_contact_2_contact_info", "33 Realand World Street\r\n\r\nBelo Horizonte - Brazil");
INSERT INTO `wp_postmeta` VALUES("814", "103", "_content_contact_2_contact_info", "field_5f4d462bc4123");
INSERT INTO `wp_postmeta` VALUES("815", "103", "content_contact", "3");
INSERT INTO `wp_postmeta` VALUES("816", "103", "_content_contact", "field_5f4d4567c4120");
INSERT INTO `wp_postmeta` VALUES("817", "104", "address_header", "--33 Realand World Street --Vancouver, BC");
INSERT INTO `wp_postmeta` VALUES("818", "104", "_address_header", "field_5f4c8b22aba4b");
INSERT INTO `wp_postmeta` VALUES("819", "104", "phone_header", "123-333-3333");
INSERT INTO `wp_postmeta` VALUES("820", "104", "_phone_header", "field_5f4c8bacaba4c");
INSERT INTO `wp_postmeta` VALUES("821", "104", "map_link", "https://www.google.com/maps");
INSERT INTO `wp_postmeta` VALUES("822", "104", "_map_link", "field_5f4d3d77a7963");
INSERT INTO `wp_postmeta` VALUES("823", "104", "img_map", "88");
INSERT INTO `wp_postmeta` VALUES("824", "104", "_img_map", "field_5f4d3d9ca7964");
INSERT INTO `wp_postmeta` VALUES("825", "104", "content_contact_0_contact_title", "Data");
INSERT INTO `wp_postmeta` VALUES("826", "104", "_content_contact_0_contact_title", "field_5f4d45d4c4122");
INSERT INTO `wp_postmeta` VALUES("827", "104", "content_contact_0_contact_info", "123-333-3333\r\n\r\ncontact@rest.com\r\n\r\nfacebook.com/rest/");
INSERT INTO `wp_postmeta` VALUES("828", "104", "_content_contact_0_contact_info", "field_5f4d462bc4123");
INSERT INTO `wp_postmeta` VALUES("829", "104", "content_contact_1_contact_title", "Hours");
INSERT INTO `wp_postmeta` VALUES("830", "104", "_content_contact_1_contact_title", "field_5f4d45d4c4122");
INSERT INTO `wp_postmeta` VALUES("831", "104", "content_contact_1_contact_info", "Mon - Fri: 10 - 11pm\r\n\r\nSaturday: 2pm - 11pm\r\n\r\nSunday: 2pm - 10pm");
INSERT INTO `wp_postmeta` VALUES("832", "104", "_content_contact_1_contact_info", "field_5f4d462bc4123");
INSERT INTO `wp_postmeta` VALUES("833", "104", "content_contact_2_contact_title", "Address");
INSERT INTO `wp_postmeta` VALUES("834", "104", "_content_contact_2_contact_title", "field_5f4d45d4c4122");
INSERT INTO `wp_postmeta` VALUES("835", "104", "content_contact_2_contact_info", "33 Realand World Street\r\n\r\nDowntown - Belo Horizonte\r\n\r\nBrazil - SouthAmerica");
INSERT INTO `wp_postmeta` VALUES("836", "104", "_content_contact_2_contact_info", "field_5f4d462bc4123");
INSERT INTO `wp_postmeta` VALUES("837", "104", "content_contact", "3");
INSERT INTO `wp_postmeta` VALUES("838", "104", "_content_contact", "field_5f4d4567c4120");
INSERT INTO `wp_postmeta` VALUES("839", "105", "address_header", "--33 Realand World Street --Vancouver, BC");
INSERT INTO `wp_postmeta` VALUES("840", "105", "_address_header", "field_5f4c8b22aba4b");
INSERT INTO `wp_postmeta` VALUES("841", "105", "phone_header", "123-333-3333");
INSERT INTO `wp_postmeta` VALUES("842", "105", "_phone_header", "field_5f4c8bacaba4c");
INSERT INTO `wp_postmeta` VALUES("843", "105", "map_link", "https://www.google.com/maps");
INSERT INTO `wp_postmeta` VALUES("844", "105", "_map_link", "field_5f4d3d77a7963");
INSERT INTO `wp_postmeta` VALUES("845", "105", "img_map", "88");
INSERT INTO `wp_postmeta` VALUES("846", "105", "_img_map", "field_5f4d3d9ca7964");
INSERT INTO `wp_postmeta` VALUES("847", "105", "content_contact_0_contact_title", "Data");
INSERT INTO `wp_postmeta` VALUES("848", "105", "_content_contact_0_contact_title", "field_5f4d45d4c4122");
INSERT INTO `wp_postmeta` VALUES("849", "105", "content_contact_0_contact_info", "123-333-3333\r\n\r\ncontact@rest.com\r\n\r\nfacebook.com/rest/");
INSERT INTO `wp_postmeta` VALUES("850", "105", "_content_contact_0_contact_info", "field_5f4d462bc4123");
INSERT INTO `wp_postmeta` VALUES("851", "105", "content_contact_1_contact_title", "Hours");
INSERT INTO `wp_postmeta` VALUES("852", "105", "_content_contact_1_contact_title", "field_5f4d45d4c4122");
INSERT INTO `wp_postmeta` VALUES("853", "105", "content_contact_1_contact_info", "Mon - Fri: 10 - 11pm\r\n\r\nSaturday: 2pm - 11pm\r\n\r\nSunday: 2pm - 10pm");
INSERT INTO `wp_postmeta` VALUES("854", "105", "_content_contact_1_contact_info", "field_5f4d462bc4123");
INSERT INTO `wp_postmeta` VALUES("855", "105", "content_contact_2_contact_title", "Address");
INSERT INTO `wp_postmeta` VALUES("856", "105", "_content_contact_2_contact_title", "field_5f4d45d4c4122");
INSERT INTO `wp_postmeta` VALUES("857", "105", "content_contact_2_contact_info", "33 Realand World Street\r\n\r\nDowntown - Belo Horizonte\r\n\r\nBrazil - SouthAmerica");
INSERT INTO `wp_postmeta` VALUES("858", "105", "_content_contact_2_contact_info", "field_5f4d462bc4123");
INSERT INTO `wp_postmeta` VALUES("859", "105", "content_contact", "3");
INSERT INTO `wp_postmeta` VALUES("860", "105", "_content_contact", "field_5f4d4567c4120");
INSERT INTO `wp_postmeta` VALUES("861", "106", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("862", "106", "_edit_lock", "1598901539:1");
INSERT INTO `wp_postmeta` VALUES("863", "7", "title_seo", "Best Restaurant in Town");
INSERT INTO `wp_postmeta` VALUES("864", "7", "_title_seo", "field_5f4d4c96dcc40");
INSERT INTO `wp_postmeta` VALUES("865", "7", "description_seo", "Best Restaurant in Town. Meat, chicken, pasta, rice.");
INSERT INTO `wp_postmeta` VALUES("866", "7", "_description_seo", "field_5f4d4ca5dcc41");
INSERT INTO `wp_postmeta` VALUES("867", "109", "category_menu_0_category_name", "Meat ");
INSERT INTO `wp_postmeta` VALUES("868", "109", "_category_menu_0_category_name", "field_5f4c7c6fcf9fb");
INSERT INTO `wp_postmeta` VALUES("869", "109", "category_menu_0_menu_plates_0_menu_price", "23");
INSERT INTO `wp_postmeta` VALUES("870", "109", "_category_menu_0_menu_plates_0_menu_price", "field_5f4c7c95cf9fd");
INSERT INTO `wp_postmeta` VALUES("871", "109", "category_menu_0_menu_plates_0_plate_name", "Picanha French Fries");
INSERT INTO `wp_postmeta` VALUES("872", "109", "_category_menu_0_menu_plates_0_plate_name", "field_5f4c7cf7cf9fe");
INSERT INTO `wp_postmeta` VALUES("873", "109", "category_menu_0_menu_plates_0_description_plate", "name_name_name_name_name_name_name_name_name_name_name_name_name_name_");
INSERT INTO `wp_postmeta` VALUES("874", "109", "_category_menu_0_menu_plates_0_description_plate", "field_5f4c7d5bcf9ff");
INSERT INTO `wp_postmeta` VALUES("875", "109", "category_menu_0_menu_plates", "1");
INSERT INTO `wp_postmeta` VALUES("876", "109", "_category_menu_0_menu_plates", "field_5f4c7c83cf9fc");
INSERT INTO `wp_postmeta` VALUES("877", "109", "category_menu_1_category_name", "Chicken");
INSERT INTO `wp_postmeta` VALUES("878", "109", "_category_menu_1_category_name", "field_5f4c7c6fcf9fb");
INSERT INTO `wp_postmeta` VALUES("879", "109", "category_menu_1_menu_plates_0_menu_price", "20");
INSERT INTO `wp_postmeta` VALUES("880", "109", "_category_menu_1_menu_plates_0_menu_price", "field_5f4c7c95cf9fd");
INSERT INTO `wp_postmeta` VALUES("881", "109", "category_menu_1_menu_plates_0_plate_name", "Brazilian Chicken Style");
INSERT INTO `wp_postmeta` VALUES("882", "109", "_category_menu_1_menu_plates_0_plate_name", "field_5f4c7cf7cf9fe");
INSERT INTO `wp_postmeta` VALUES("883", "109", "category_menu_1_menu_plates_0_description_plate", "loremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("884", "109", "_category_menu_1_menu_plates_0_description_plate", "field_5f4c7d5bcf9ff");
INSERT INTO `wp_postmeta` VALUES("885", "109", "category_menu_1_menu_plates", "1");
INSERT INTO `wp_postmeta` VALUES("886", "109", "_category_menu_1_menu_plates", "field_5f4c7c83cf9fc");
INSERT INTO `wp_postmeta` VALUES("887", "109", "category_menu_2_category_name", "Pasta");
INSERT INTO `wp_postmeta` VALUES("888", "109", "_category_menu_2_category_name", "field_5f4c7c6fcf9fb");
INSERT INTO `wp_postmeta` VALUES("889", "109", "category_menu_2_menu_plates_0_menu_price", "22");
INSERT INTO `wp_postmeta` VALUES("890", "109", "_category_menu_2_menu_plates_0_menu_price", "field_5f4c7c95cf9fd");
INSERT INTO `wp_postmeta` VALUES("891", "109", "category_menu_2_menu_plates_0_plate_name", "Chicken Alfredo Royce pasta");
INSERT INTO `wp_postmeta` VALUES("892", "109", "_category_menu_2_menu_plates_0_plate_name", "field_5f4c7cf7cf9fe");
INSERT INTO `wp_postmeta` VALUES("893", "109", "category_menu_2_menu_plates_0_description_plate", "loremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("894", "109", "_category_menu_2_menu_plates_0_description_plate", "field_5f4c7d5bcf9ff");
INSERT INTO `wp_postmeta` VALUES("895", "109", "category_menu_2_menu_plates", "1");
INSERT INTO `wp_postmeta` VALUES("896", "109", "_category_menu_2_menu_plates", "field_5f4c7c83cf9fc");
INSERT INTO `wp_postmeta` VALUES("897", "109", "category_menu", "3");
INSERT INTO `wp_postmeta` VALUES("898", "109", "_category_menu", "field_5f4c7c4bcf9fa");
INSERT INTO `wp_postmeta` VALUES("899", "109", "categoria_menu_0_nome_categoria", "Meat");
INSERT INTO `wp_postmeta` VALUES("900", "109", "_categoria_menu_0_nome_categoria", "field_5f4c80dbe3c82");
INSERT INTO `wp_postmeta` VALUES("901", "109", "categoria_menu_0_prato_menu_0_preco_prato", "45");
INSERT INTO `wp_postmeta` VALUES("902", "109", "_categoria_menu_0_prato_menu_0_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("903", "109", "categoria_menu_0_prato_menu_0_nome_prato", "Picanha French Fries");
INSERT INTO `wp_postmeta` VALUES("904", "109", "_categoria_menu_0_prato_menu_0_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("905", "109", "categoria_menu_0_prato_menu_0_descricao_prato", "loremloremloremloremloremloremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("906", "109", "_categoria_menu_0_prato_menu_0_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("907", "109", "categoria_menu_0_prato_menu_1_preco_prato", "36");
INSERT INTO `wp_postmeta` VALUES("908", "109", "_categoria_menu_0_prato_menu_1_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("909", "109", "categoria_menu_0_prato_menu_1_nome_prato", "Maminha Braziliana");
INSERT INTO `wp_postmeta` VALUES("910", "109", "_categoria_menu_0_prato_menu_1_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("911", "109", "categoria_menu_0_prato_menu_1_descricao_prato", "loremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("912", "109", "_categoria_menu_0_prato_menu_1_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("913", "109", "categoria_menu_0_prato_menu", "2");
INSERT INTO `wp_postmeta` VALUES("914", "109", "_categoria_menu_0_prato_menu", "field_5f4c80f2e3c83");
INSERT INTO `wp_postmeta` VALUES("915", "109", "categoria_menu_1_nome_categoria", "Fish");
INSERT INTO `wp_postmeta` VALUES("916", "109", "_categoria_menu_1_nome_categoria", "field_5f4c80dbe3c82");
INSERT INTO `wp_postmeta` VALUES("917", "109", "categoria_menu_1_prato_menu_0_preco_prato", "45");
INSERT INTO `wp_postmeta` VALUES("918", "109", "_categoria_menu_1_prato_menu_0_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("919", "109", "categoria_menu_1_prato_menu_0_nome_prato", "Tilapia Rice Salad +");
INSERT INTO `wp_postmeta` VALUES("920", "109", "_categoria_menu_1_prato_menu_0_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("921", "109", "categoria_menu_1_prato_menu_0_descricao_prato", "loremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("922", "109", "_categoria_menu_1_prato_menu_0_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("923", "109", "categoria_menu_1_prato_menu", "2");
INSERT INTO `wp_postmeta` VALUES("924", "109", "_categoria_menu_1_prato_menu", "field_5f4c80f2e3c83");
INSERT INTO `wp_postmeta` VALUES("925", "109", "categoria_menu", "4");
INSERT INTO `wp_postmeta` VALUES("926", "109", "_categoria_menu", "field_5f4c80bfe3c81");
INSERT INTO `wp_postmeta` VALUES("927", "109", "categoria_menu_2_nome_categoria", "Chicken");
INSERT INTO `wp_postmeta` VALUES("928", "109", "_categoria_menu_2_nome_categoria", "field_5f4c80dbe3c82");
INSERT INTO `wp_postmeta` VALUES("929", "109", "categoria_menu_2_prato_menu_0_preco_prato", "42");
INSERT INTO `wp_postmeta` VALUES("930", "109", "_categoria_menu_2_prato_menu_0_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("931", "109", "categoria_menu_2_prato_menu_0_nome_prato", "Chicken Wing Master Plus");
INSERT INTO `wp_postmeta` VALUES("932", "109", "_categoria_menu_2_prato_menu_0_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("933", "109", "categoria_menu_2_prato_menu_0_descricao_prato", "loremloremloremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("934", "109", "_categoria_menu_2_prato_menu_0_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("935", "109", "categoria_menu_2_prato_menu", "2");
INSERT INTO `wp_postmeta` VALUES("936", "109", "_categoria_menu_2_prato_menu", "field_5f4c80f2e3c83");
INSERT INTO `wp_postmeta` VALUES("937", "109", "categoria_menu_3_nome_categoria", "Pasta");
INSERT INTO `wp_postmeta` VALUES("938", "109", "_categoria_menu_3_nome_categoria", "field_5f4c80dbe3c82");
INSERT INTO `wp_postmeta` VALUES("939", "109", "categoria_menu_3_prato_menu_0_preco_prato", "40");
INSERT INTO `wp_postmeta` VALUES("940", "109", "_categoria_menu_3_prato_menu_0_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("941", "109", "categoria_menu_3_prato_menu_0_nome_prato", "Chicken Alfredo");
INSERT INTO `wp_postmeta` VALUES("942", "109", "_categoria_menu_3_prato_menu_0_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("943", "109", "categoria_menu_3_prato_menu_0_descricao_prato", "loremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("944", "109", "_categoria_menu_3_prato_menu_0_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("945", "109", "categoria_menu_3_prato_menu", "2");
INSERT INTO `wp_postmeta` VALUES("946", "109", "_categoria_menu_3_prato_menu", "field_5f4c80f2e3c83");
INSERT INTO `wp_postmeta` VALUES("947", "109", "categoria_menu_1_prato_menu_1_preco_prato", "40");
INSERT INTO `wp_postmeta` VALUES("948", "109", "_categoria_menu_1_prato_menu_1_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("949", "109", "categoria_menu_1_prato_menu_1_nome_prato", "Rice Shrimp House Special");
INSERT INTO `wp_postmeta` VALUES("950", "109", "_categoria_menu_1_prato_menu_1_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("951", "109", "categoria_menu_1_prato_menu_1_descricao_prato", "loremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("952", "109", "_categoria_menu_1_prato_menu_1_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("953", "109", "categoria_menu_2_prato_menu_1_preco_prato", "35");
INSERT INTO `wp_postmeta` VALUES("954", "109", "_categoria_menu_2_prato_menu_1_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("955", "109", "categoria_menu_2_prato_menu_1_nome_prato", "Chicken Rice Yummy");
INSERT INTO `wp_postmeta` VALUES("956", "109", "_categoria_menu_2_prato_menu_1_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("957", "109", "categoria_menu_2_prato_menu_1_descricao_prato", "loremloremloremloremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("958", "109", "_categoria_menu_2_prato_menu_1_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("959", "109", "categoria_menu_3_prato_menu_1_preco_prato", "45");
INSERT INTO `wp_postmeta` VALUES("960", "109", "_categoria_menu_3_prato_menu_1_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("961", "109", "categoria_menu_3_prato_menu_1_nome_prato", "Macaroni Italian Beef ");
INSERT INTO `wp_postmeta` VALUES("962", "109", "_categoria_menu_3_prato_menu_1_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("963", "109", "categoria_menu_3_prato_menu_1_descricao_prato", "loremloremloremloremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("964", "109", "_categoria_menu_3_prato_menu_1_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("965", "109", "title_seo", "Best Restaurant in Town");
INSERT INTO `wp_postmeta` VALUES("966", "109", "_title_seo", "field_5f4d4c96dcc40");
INSERT INTO `wp_postmeta` VALUES("967", "109", "description_seo", "Best Restaurant in Town. Meat, chicken, pasta");
INSERT INTO `wp_postmeta` VALUES("968", "109", "_description_seo", "field_5f4d4ca5dcc41");
INSERT INTO `wp_postmeta` VALUES("969", "110", "category_menu_0_category_name", "Meat ");
INSERT INTO `wp_postmeta` VALUES("970", "110", "_category_menu_0_category_name", "field_5f4c7c6fcf9fb");
INSERT INTO `wp_postmeta` VALUES("971", "110", "category_menu_0_menu_plates_0_menu_price", "23");
INSERT INTO `wp_postmeta` VALUES("972", "110", "_category_menu_0_menu_plates_0_menu_price", "field_5f4c7c95cf9fd");
INSERT INTO `wp_postmeta` VALUES("973", "110", "category_menu_0_menu_plates_0_plate_name", "Picanha French Fries");
INSERT INTO `wp_postmeta` VALUES("974", "110", "_category_menu_0_menu_plates_0_plate_name", "field_5f4c7cf7cf9fe");
INSERT INTO `wp_postmeta` VALUES("975", "110", "category_menu_0_menu_plates_0_description_plate", "name_name_name_name_name_name_name_name_name_name_name_name_name_name_");
INSERT INTO `wp_postmeta` VALUES("976", "110", "_category_menu_0_menu_plates_0_description_plate", "field_5f4c7d5bcf9ff");
INSERT INTO `wp_postmeta` VALUES("977", "110", "category_menu_0_menu_plates", "1");
INSERT INTO `wp_postmeta` VALUES("978", "110", "_category_menu_0_menu_plates", "field_5f4c7c83cf9fc");
INSERT INTO `wp_postmeta` VALUES("979", "110", "category_menu_1_category_name", "Chicken");
INSERT INTO `wp_postmeta` VALUES("980", "110", "_category_menu_1_category_name", "field_5f4c7c6fcf9fb");
INSERT INTO `wp_postmeta` VALUES("981", "110", "category_menu_1_menu_plates_0_menu_price", "20");
INSERT INTO `wp_postmeta` VALUES("982", "110", "_category_menu_1_menu_plates_0_menu_price", "field_5f4c7c95cf9fd");
INSERT INTO `wp_postmeta` VALUES("983", "110", "category_menu_1_menu_plates_0_plate_name", "Brazilian Chicken Style");
INSERT INTO `wp_postmeta` VALUES("984", "110", "_category_menu_1_menu_plates_0_plate_name", "field_5f4c7cf7cf9fe");
INSERT INTO `wp_postmeta` VALUES("985", "110", "category_menu_1_menu_plates_0_description_plate", "loremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("986", "110", "_category_menu_1_menu_plates_0_description_plate", "field_5f4c7d5bcf9ff");
INSERT INTO `wp_postmeta` VALUES("987", "110", "category_menu_1_menu_plates", "1");
INSERT INTO `wp_postmeta` VALUES("988", "110", "_category_menu_1_menu_plates", "field_5f4c7c83cf9fc");
INSERT INTO `wp_postmeta` VALUES("989", "110", "category_menu_2_category_name", "Pasta");
INSERT INTO `wp_postmeta` VALUES("990", "110", "_category_menu_2_category_name", "field_5f4c7c6fcf9fb");
INSERT INTO `wp_postmeta` VALUES("991", "110", "category_menu_2_menu_plates_0_menu_price", "22");
INSERT INTO `wp_postmeta` VALUES("992", "110", "_category_menu_2_menu_plates_0_menu_price", "field_5f4c7c95cf9fd");
INSERT INTO `wp_postmeta` VALUES("993", "110", "category_menu_2_menu_plates_0_plate_name", "Chicken Alfredo Royce pasta");
INSERT INTO `wp_postmeta` VALUES("994", "110", "_category_menu_2_menu_plates_0_plate_name", "field_5f4c7cf7cf9fe");
INSERT INTO `wp_postmeta` VALUES("995", "110", "category_menu_2_menu_plates_0_description_plate", "loremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("996", "110", "_category_menu_2_menu_plates_0_description_plate", "field_5f4c7d5bcf9ff");
INSERT INTO `wp_postmeta` VALUES("997", "110", "category_menu_2_menu_plates", "1");
INSERT INTO `wp_postmeta` VALUES("998", "110", "_category_menu_2_menu_plates", "field_5f4c7c83cf9fc");
INSERT INTO `wp_postmeta` VALUES("999", "110", "category_menu", "3");
INSERT INTO `wp_postmeta` VALUES("1000", "110", "_category_menu", "field_5f4c7c4bcf9fa");
INSERT INTO `wp_postmeta` VALUES("1001", "110", "categoria_menu_0_nome_categoria", "Meat");
INSERT INTO `wp_postmeta` VALUES("1002", "110", "_categoria_menu_0_nome_categoria", "field_5f4c80dbe3c82");
INSERT INTO `wp_postmeta` VALUES("1003", "110", "categoria_menu_0_prato_menu_0_preco_prato", "45");
INSERT INTO `wp_postmeta` VALUES("1004", "110", "_categoria_menu_0_prato_menu_0_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("1005", "110", "categoria_menu_0_prato_menu_0_nome_prato", "Picanha French Fries");
INSERT INTO `wp_postmeta` VALUES("1006", "110", "_categoria_menu_0_prato_menu_0_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("1007", "110", "categoria_menu_0_prato_menu_0_descricao_prato", "loremloremloremloremloremloremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("1008", "110", "_categoria_menu_0_prato_menu_0_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("1009", "110", "categoria_menu_0_prato_menu_1_preco_prato", "36");
INSERT INTO `wp_postmeta` VALUES("1010", "110", "_categoria_menu_0_prato_menu_1_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("1011", "110", "categoria_menu_0_prato_menu_1_nome_prato", "Maminha Braziliana");
INSERT INTO `wp_postmeta` VALUES("1012", "110", "_categoria_menu_0_prato_menu_1_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("1013", "110", "categoria_menu_0_prato_menu_1_descricao_prato", "loremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("1014", "110", "_categoria_menu_0_prato_menu_1_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("1015", "110", "categoria_menu_0_prato_menu", "2");
INSERT INTO `wp_postmeta` VALUES("1016", "110", "_categoria_menu_0_prato_menu", "field_5f4c80f2e3c83");
INSERT INTO `wp_postmeta` VALUES("1017", "110", "categoria_menu_1_nome_categoria", "Fish");
INSERT INTO `wp_postmeta` VALUES("1018", "110", "_categoria_menu_1_nome_categoria", "field_5f4c80dbe3c82");
INSERT INTO `wp_postmeta` VALUES("1019", "110", "categoria_menu_1_prato_menu_0_preco_prato", "45");
INSERT INTO `wp_postmeta` VALUES("1020", "110", "_categoria_menu_1_prato_menu_0_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("1021", "110", "categoria_menu_1_prato_menu_0_nome_prato", "Tilapia Rice Salad +");
INSERT INTO `wp_postmeta` VALUES("1022", "110", "_categoria_menu_1_prato_menu_0_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("1023", "110", "categoria_menu_1_prato_menu_0_descricao_prato", "loremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("1024", "110", "_categoria_menu_1_prato_menu_0_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("1025", "110", "categoria_menu_1_prato_menu", "2");
INSERT INTO `wp_postmeta` VALUES("1026", "110", "_categoria_menu_1_prato_menu", "field_5f4c80f2e3c83");
INSERT INTO `wp_postmeta` VALUES("1027", "110", "categoria_menu", "4");
INSERT INTO `wp_postmeta` VALUES("1028", "110", "_categoria_menu", "field_5f4c80bfe3c81");
INSERT INTO `wp_postmeta` VALUES("1029", "110", "categoria_menu_2_nome_categoria", "Chicken");
INSERT INTO `wp_postmeta` VALUES("1030", "110", "_categoria_menu_2_nome_categoria", "field_5f4c80dbe3c82");
INSERT INTO `wp_postmeta` VALUES("1031", "110", "categoria_menu_2_prato_menu_0_preco_prato", "42");
INSERT INTO `wp_postmeta` VALUES("1032", "110", "_categoria_menu_2_prato_menu_0_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("1033", "110", "categoria_menu_2_prato_menu_0_nome_prato", "Chicken Wing Master Plus");
INSERT INTO `wp_postmeta` VALUES("1034", "110", "_categoria_menu_2_prato_menu_0_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("1035", "110", "categoria_menu_2_prato_menu_0_descricao_prato", "loremloremloremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("1036", "110", "_categoria_menu_2_prato_menu_0_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("1037", "110", "categoria_menu_2_prato_menu", "2");
INSERT INTO `wp_postmeta` VALUES("1038", "110", "_categoria_menu_2_prato_menu", "field_5f4c80f2e3c83");
INSERT INTO `wp_postmeta` VALUES("1039", "110", "categoria_menu_3_nome_categoria", "Pasta");
INSERT INTO `wp_postmeta` VALUES("1040", "110", "_categoria_menu_3_nome_categoria", "field_5f4c80dbe3c82");
INSERT INTO `wp_postmeta` VALUES("1041", "110", "categoria_menu_3_prato_menu_0_preco_prato", "40");
INSERT INTO `wp_postmeta` VALUES("1042", "110", "_categoria_menu_3_prato_menu_0_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("1043", "110", "categoria_menu_3_prato_menu_0_nome_prato", "Chicken Alfredo");
INSERT INTO `wp_postmeta` VALUES("1044", "110", "_categoria_menu_3_prato_menu_0_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("1045", "110", "categoria_menu_3_prato_menu_0_descricao_prato", "loremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("1046", "110", "_categoria_menu_3_prato_menu_0_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("1047", "110", "categoria_menu_3_prato_menu", "2");
INSERT INTO `wp_postmeta` VALUES("1048", "110", "_categoria_menu_3_prato_menu", "field_5f4c80f2e3c83");
INSERT INTO `wp_postmeta` VALUES("1049", "110", "categoria_menu_1_prato_menu_1_preco_prato", "40");
INSERT INTO `wp_postmeta` VALUES("1050", "110", "_categoria_menu_1_prato_menu_1_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("1051", "110", "categoria_menu_1_prato_menu_1_nome_prato", "Rice Shrimp House Special");
INSERT INTO `wp_postmeta` VALUES("1052", "110", "_categoria_menu_1_prato_menu_1_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("1053", "110", "categoria_menu_1_prato_menu_1_descricao_prato", "loremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("1054", "110", "_categoria_menu_1_prato_menu_1_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("1055", "110", "categoria_menu_2_prato_menu_1_preco_prato", "35");
INSERT INTO `wp_postmeta` VALUES("1056", "110", "_categoria_menu_2_prato_menu_1_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("1057", "110", "categoria_menu_2_prato_menu_1_nome_prato", "Chicken Rice Yummy");
INSERT INTO `wp_postmeta` VALUES("1058", "110", "_categoria_menu_2_prato_menu_1_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("1059", "110", "categoria_menu_2_prato_menu_1_descricao_prato", "loremloremloremloremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("1060", "110", "_categoria_menu_2_prato_menu_1_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("1061", "110", "categoria_menu_3_prato_menu_1_preco_prato", "45");
INSERT INTO `wp_postmeta` VALUES("1062", "110", "_categoria_menu_3_prato_menu_1_preco_prato", "field_5f4c811ce3c84");
INSERT INTO `wp_postmeta` VALUES("1063", "110", "categoria_menu_3_prato_menu_1_nome_prato", "Macaroni Italian Beef ");
INSERT INTO `wp_postmeta` VALUES("1064", "110", "_categoria_menu_3_prato_menu_1_nome_prato", "field_5f4c8166e3c85");
INSERT INTO `wp_postmeta` VALUES("1065", "110", "categoria_menu_3_prato_menu_1_descricao_prato", "loremloremloremloremloremloremloremloremloremloremloremlorem");
INSERT INTO `wp_postmeta` VALUES("1066", "110", "_categoria_menu_3_prato_menu_1_descricao_prato", "field_5f4c8190e3c86");
INSERT INTO `wp_postmeta` VALUES("1067", "110", "title_seo", "Best Restaurant in Town");
INSERT INTO `wp_postmeta` VALUES("1068", "110", "_title_seo", "field_5f4d4c96dcc40");
INSERT INTO `wp_postmeta` VALUES("1069", "110", "description_seo", "Best Restaurant in Town. Meat, chicken, pasta, rice.");
INSERT INTO `wp_postmeta` VALUES("1070", "110", "_description_seo", "field_5f4d4ca5dcc41");
INSERT INTO `wp_postmeta` VALUES("1071", "111", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("1072", "111", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("1073", "111", "_menu_item_object_id", "7");
INSERT INTO `wp_postmeta` VALUES("1074", "111", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("1075", "111", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("1076", "111", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("1077", "111", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("1078", "111", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("1080", "112", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("1081", "112", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("1082", "112", "_menu_item_object_id", "9");
INSERT INTO `wp_postmeta` VALUES("1083", "112", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("1084", "112", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("1085", "112", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("1086", "112", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("1087", "112", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("1089", "113", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("1090", "113", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("1091", "113", "_menu_item_object_id", "11");
INSERT INTO `wp_postmeta` VALUES("1092", "113", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("1093", "113", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("1094", "113", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("1095", "113", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("1096", "113", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("1097", "11", "title_seo", "");
INSERT INTO `wp_postmeta` VALUES("1098", "11", "_title_seo", "field_5f4d4c96dcc40");
INSERT INTO `wp_postmeta` VALUES("1099", "11", "description_seo", "");
INSERT INTO `wp_postmeta` VALUES("1100", "11", "_description_seo", "field_5f4d4ca5dcc41");
INSERT INTO `wp_postmeta` VALUES("1101", "114", "address_header", "--33 Realand World Street --Vancouver, BC");
INSERT INTO `wp_postmeta` VALUES("1102", "114", "_address_header", "field_5f4c8b22aba4b");
INSERT INTO `wp_postmeta` VALUES("1103", "114", "phone_header", "123-333-3333");
INSERT INTO `wp_postmeta` VALUES("1104", "114", "_phone_header", "field_5f4c8bacaba4c");
INSERT INTO `wp_postmeta` VALUES("1105", "114", "map_link", "https://www.google.com/maps");
INSERT INTO `wp_postmeta` VALUES("1106", "114", "_map_link", "field_5f4d3d77a7963");
INSERT INTO `wp_postmeta` VALUES("1107", "114", "img_map", "88");
INSERT INTO `wp_postmeta` VALUES("1108", "114", "_img_map", "field_5f4d3d9ca7964");
INSERT INTO `wp_postmeta` VALUES("1109", "114", "content_contact_0_contact_title", "Data");
INSERT INTO `wp_postmeta` VALUES("1110", "114", "_content_contact_0_contact_title", "field_5f4d45d4c4122");
INSERT INTO `wp_postmeta` VALUES("1111", "114", "content_contact_0_contact_info", "123-333-3333\r\n\r\ncontact@rest.com\r\n\r\nfacebook.com/rest/");
INSERT INTO `wp_postmeta` VALUES("1112", "114", "_content_contact_0_contact_info", "field_5f4d462bc4123");
INSERT INTO `wp_postmeta` VALUES("1113", "114", "content_contact_1_contact_title", "Hours");
INSERT INTO `wp_postmeta` VALUES("1114", "114", "_content_contact_1_contact_title", "field_5f4d45d4c4122");
INSERT INTO `wp_postmeta` VALUES("1115", "114", "content_contact_1_contact_info", "Mon - Fri: 10am - 11pm\r\n\r\nSaturday: 2pm - 11pm\r\n\r\nSunday: 2pm - 10pm");
INSERT INTO `wp_postmeta` VALUES("1116", "114", "_content_contact_1_contact_info", "field_5f4d462bc4123");
INSERT INTO `wp_postmeta` VALUES("1117", "114", "content_contact_2_contact_title", "Address");
INSERT INTO `wp_postmeta` VALUES("1118", "114", "_content_contact_2_contact_title", "field_5f4d45d4c4122");
INSERT INTO `wp_postmeta` VALUES("1119", "114", "content_contact_2_contact_info", "33 Realand World Street\r\n\r\nDowntown - Belo Horizonte\r\n\r\nBrazil - SouthAmerica");
INSERT INTO `wp_postmeta` VALUES("1120", "114", "_content_contact_2_contact_info", "field_5f4d462bc4123");
INSERT INTO `wp_postmeta` VALUES("1121", "114", "content_contact", "3");
INSERT INTO `wp_postmeta` VALUES("1122", "114", "_content_contact", "field_5f4d4567c4120");
INSERT INTO `wp_postmeta` VALUES("1123", "114", "title_seo", "");
INSERT INTO `wp_postmeta` VALUES("1124", "114", "_title_seo", "field_5f4d4c96dcc40");
INSERT INTO `wp_postmeta` VALUES("1125", "114", "description_seo", "");
INSERT INTO `wp_postmeta` VALUES("1126", "114", "_description_seo", "field_5f4d4ca5dcc41");
INSERT INTO `wp_postmeta` VALUES("1127", "9", "title_seo", "");
INSERT INTO `wp_postmeta` VALUES("1128", "9", "_title_seo", "field_5f4d4c96dcc40");
INSERT INTO `wp_postmeta` VALUES("1129", "9", "description_seo", "");
INSERT INTO `wp_postmeta` VALUES("1130", "9", "_description_seo", "field_5f4d4ca5dcc41");
INSERT INTO `wp_postmeta` VALUES("1131", "115", "history_title", "New Title");
INSERT INTO `wp_postmeta` VALUES("1132", "115", "_history_title", "field_5f4b5cbd07b11");
INSERT INTO `wp_postmeta` VALUES("1133", "115", "history_info", "lorem new title new element custom field");
INSERT INTO `wp_postmeta` VALUES("1134", "115", "_history_info", "field_5f4b5b6e07b10");
INSERT INTO `wp_postmeta` VALUES("1135", "115", "photo_rest", "36");
INSERT INTO `wp_postmeta` VALUES("1136", "115", "_photo_rest", "field_5f4b61d0cccee");
INSERT INTO `wp_postmeta` VALUES("1137", "115", "photo_rest_description", "Photo Rest About");
INSERT INTO `wp_postmeta` VALUES("1138", "115", "_photo_rest_description", "field_5f4b62bdcccef");
INSERT INTO `wp_postmeta` VALUES("1139", "115", "about_content_0_history_title", "History");
INSERT INTO `wp_postmeta` VALUES("1140", "115", "_about_content_0_history_title", "field_5f4c70f5514a1");
INSERT INTO `wp_postmeta` VALUES("1141", "115", "about_content_0_history_info", "LoremIpsum360 ° is a free online generator false text. It provides a complete text simulator to generate replacement text or alternative text for your models. It features different random texts in Latin and Cyrillic to generate examples of texts in different languages.");
INSERT INTO `wp_postmeta` VALUES("1142", "115", "_about_content_0_history_info", "field_5f4c711d514a2");
INSERT INTO `wp_postmeta` VALUES("1143", "115", "about_content_1_history_title", "Vision");
INSERT INTO `wp_postmeta` VALUES("1144", "115", "_about_content_1_history_title", "field_5f4c70f5514a1");
INSERT INTO `wp_postmeta` VALUES("1145", "115", "about_content_1_history_info", "dksvd;vsd;lvsdlvsd\'vds\'vdvsd;\'vbs\'/\'/sb\'/sbd\'sbd");
INSERT INTO `wp_postmeta` VALUES("1146", "115", "_about_content_1_history_info", "field_5f4c711d514a2");
INSERT INTO `wp_postmeta` VALUES("1147", "115", "about_content_2_history_title", "Values");
INSERT INTO `wp_postmeta` VALUES("1148", "115", "_about_content_2_history_title", "field_5f4c70f5514a1");
INSERT INTO `wp_postmeta` VALUES("1149", "115", "about_content_2_history_info", "dndngrmnrgmngnggbgdsdfsfgjmngmuhtytttttttsytjrryjm");
INSERT INTO `wp_postmeta` VALUES("1150", "115", "_about_content_2_history_info", "field_5f4c711d514a2");
INSERT INTO `wp_postmeta` VALUES("1151", "115", "about_content", "3");
INSERT INTO `wp_postmeta` VALUES("1152", "115", "_about_content", "field_5f4c70b4514a0");
INSERT INTO `wp_postmeta` VALUES("1153", "115", "title_seo", "");
INSERT INTO `wp_postmeta` VALUES("1154", "115", "_title_seo", "field_5f4d4c96dcc40");
INSERT INTO `wp_postmeta` VALUES("1155", "115", "description_seo", "");
INSERT INTO `wp_postmeta` VALUES("1156", "115", "_description_seo", "field_5f4d4ca5dcc41");
INSERT INTO `wp_postmeta` VALUES("1157", "116", "history_title", "New Title");
INSERT INTO `wp_postmeta` VALUES("1158", "116", "_history_title", "field_5f4b5cbd07b11");
INSERT INTO `wp_postmeta` VALUES("1159", "116", "history_info", "lorem new title new element custom field");
INSERT INTO `wp_postmeta` VALUES("1160", "116", "_history_info", "field_5f4b5b6e07b10");
INSERT INTO `wp_postmeta` VALUES("1161", "116", "photo_rest", "36");
INSERT INTO `wp_postmeta` VALUES("1162", "116", "_photo_rest", "field_5f4b61d0cccee");
INSERT INTO `wp_postmeta` VALUES("1163", "116", "photo_rest_description", "Photo Rest About");
INSERT INTO `wp_postmeta` VALUES("1164", "116", "_photo_rest_description", "field_5f4b62bdcccef");
INSERT INTO `wp_postmeta` VALUES("1165", "116", "about_content_0_history_title", "History");
INSERT INTO `wp_postmeta` VALUES("1166", "116", "_about_content_0_history_title", "field_5f4c70f5514a1");
INSERT INTO `wp_postmeta` VALUES("1167", "116", "about_content_0_history_info", "LoremIpsum360 ° is a free online generator false text. It provides a complete text simulator to generate replacement text or alternative text for your models. It features different random texts in Latin and Cyrillic to generate examples of texts in different languages.");
INSERT INTO `wp_postmeta` VALUES("1168", "116", "_about_content_0_history_info", "field_5f4c711d514a2");
INSERT INTO `wp_postmeta` VALUES("1169", "116", "about_content_1_history_title", "Vision");
INSERT INTO `wp_postmeta` VALUES("1170", "116", "_about_content_1_history_title", "field_5f4c70f5514a1");
INSERT INTO `wp_postmeta` VALUES("1171", "116", "about_content_1_history_info", "LoremIpsum360 ° is a free online generator false text. It provides a complete text simulator to generate replacement text or alternative text for your models. It features different random texts in Latin and Cyrillic to generate examples of texts in different languages.");
INSERT INTO `wp_postmeta` VALUES("1172", "116", "_about_content_1_history_info", "field_5f4c711d514a2");
INSERT INTO `wp_postmeta` VALUES("1173", "116", "about_content_2_history_title", "Values");
INSERT INTO `wp_postmeta` VALUES("1174", "116", "_about_content_2_history_title", "field_5f4c70f5514a1");
INSERT INTO `wp_postmeta` VALUES("1175", "116", "about_content_2_history_info", "LoremIpsum360 ° is a free online generator false text. It provides a complete text simulator to generate replacement text or alternative text for your models. It features different random texts in Latin and Cyrillic to generate examples of texts in different languages.");
INSERT INTO `wp_postmeta` VALUES("1176", "116", "_about_content_2_history_info", "field_5f4c711d514a2");
INSERT INTO `wp_postmeta` VALUES("1177", "116", "about_content", "3");
INSERT INTO `wp_postmeta` VALUES("1178", "116", "_about_content", "field_5f4c70b4514a0");
INSERT INTO `wp_postmeta` VALUES("1179", "116", "title_seo", "");
INSERT INTO `wp_postmeta` VALUES("1180", "116", "_title_seo", "field_5f4d4c96dcc40");
INSERT INTO `wp_postmeta` VALUES("1181", "116", "description_seo", "");
INSERT INTO `wp_postmeta` VALUES("1182", "116", "_description_seo", "field_5f4d4ca5dcc41");

/* INSERT TABLE DATA: wp_posts */
INSERT INTO `wp_posts` VALUES("7", "1", "2020-08-30 03:28:45", "2020-08-30 03:28:45", "", "Menu", "", "publish", "closed", "closed", "", "menu", "", "", "2020-08-31 19:23:49", "2020-08-31 19:23:49", "", "0", "http://localhost:8888/Rest/?page_id=7", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("8", "1", "2020-08-30 03:28:45", "2020-08-30 03:28:45", "", "Menu", "", "inherit", "closed", "closed", "", "7-revision-v1", "", "", "2020-08-30 03:28:45", "2020-08-30 03:28:45", "", "7", "http://localhost:8888/Rest/2020/08/30/7-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("9", "1", "2020-08-30 03:29:27", "2020-08-30 03:29:27", "", "About", "", "publish", "closed", "closed", "", "about", "", "", "2020-09-22 22:49:15", "2020-09-22 22:49:15", "", "0", "http://localhost:8888/Rest/?page_id=9", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("10", "1", "2020-08-30 03:29:27", "2020-08-30 03:29:27", "", "Sobre", "", "inherit", "closed", "closed", "", "9-revision-v1", "", "", "2020-08-30 03:29:27", "2020-08-30 03:29:27", "", "9", "http://localhost:8888/Rest/2020/08/30/9-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("11", "1", "2020-08-30 03:29:52", "2020-08-30 03:29:52", "", "Contact", "", "publish", "closed", "closed", "", "contact", "", "", "2020-08-31 20:28:42", "2020-08-31 20:28:42", "", "0", "http://localhost:8888/Rest/?page_id=11", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("12", "1", "2020-08-30 03:29:52", "2020-08-30 03:29:52", "", "Contact", "", "inherit", "closed", "closed", "", "11-revision-v1", "", "", "2020-08-30 03:29:52", "2020-08-30 03:29:52", "", "11", "http://localhost:8888/Rest/2020/08/30/11-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("13", "1", "2020-08-30 03:30:08", "2020-08-30 03:30:08", "", "About", "", "inherit", "closed", "closed", "", "9-revision-v1", "", "", "2020-08-30 03:30:08", "2020-08-30 03:30:08", "", "9", "http://localhost:8888/Rest/2020/08/30/9-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("17", "1", "2020-08-30 05:10:21", "2020-08-30 05:10:21", "<!-- wp:paragraph -->\n<p>essa e uma postagem de teste para o site bikcraft</p>\n<!-- /wp:paragraph -->", "Post Test", "", "publish", "open", "open", "", "post-test", "", "", "2020-08-30 05:10:21", "2020-08-30 05:10:21", "", "0", "http://localhost:8888/Rest/?p=17", "0", "post", "", "0");
INSERT INTO `wp_posts` VALUES("18", "1", "2020-08-30 05:10:21", "2020-08-30 05:10:21", "<!-- wp:paragraph -->\n<p>essa e uma postagem de teste para o site bikcraft</p>\n<!-- /wp:paragraph -->", "Post Test", "", "inherit", "closed", "closed", "", "17-revision-v1", "", "", "2020-08-30 05:10:21", "2020-08-30 05:10:21", "", "17", "http://localhost:8888/Rest/2020/08/30/17-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("19", "1", "2020-08-30 06:20:01", "2020-08-30 06:20:01", "", "Menu t", "", "inherit", "closed", "closed", "", "7-revision-v1", "", "", "2020-08-30 06:20:01", "2020-08-30 06:20:01", "", "7", "http://localhost:8888/Rest/2020/08/30/7-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("20", "1", "2020-08-30 06:20:13", "2020-08-30 06:20:13", "", "Menu", "", "inherit", "closed", "closed", "", "7-revision-v1", "", "", "2020-08-30 06:20:13", "2020-08-30 06:20:13", "", "7", "http://localhost:8888/Rest/2020/08/30/7-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("22", "1", "2020-08-30 07:23:18", "2020-08-30 07:23:18", "<!-- wp:paragraph -->\n<p>acsscasccassca</p>\n<!-- /wp:paragraph -->", "About", "", "inherit", "closed", "closed", "", "9-revision-v1", "", "", "2020-08-30 07:23:18", "2020-08-30 07:23:18", "", "9", "http://localhost:8888/Rest/2020/08/30/9-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("23", "1", "2020-08-30 07:35:00", "2020-08-30 07:35:00", "", "About", "", "inherit", "closed", "closed", "", "9-revision-v1", "", "", "2020-08-30 07:35:00", "2020-08-30 07:35:00", "", "9", "http://localhost:8888/Rest/2020/08/30/9-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("25", "1", "2020-08-30 08:07:52", "2020-08-30 08:07:52", "a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"page-about.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:10:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:15:\"page_attributes\";i:8;s:14:\"featured_image\";i:9;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}", "About", "about", "publish", "closed", "closed", "", "group_5f4b5b53d6182", "", "", "2020-08-31 03:43:49", "2020-08-31 03:43:49", "", "0", "http://localhost:8888/Rest/?post_type=acf-field-group&#038;p=25", "0", "acf-field-group", "", "0");
INSERT INTO `wp_posts` VALUES("28", "1", "2020-08-30 08:10:01", "2020-08-30 08:10:01", "", "About", "", "inherit", "closed", "closed", "", "9-revision-v1", "", "", "2020-08-30 08:10:01", "2020-08-30 08:10:01", "", "9", "http://localhost:8888/Rest/2020/08/30/9-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("31", "1", "2020-08-30 08:28:47", "2020-08-30 08:28:47", "a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}", "Photo Rest", "photo_rest", "publish", "closed", "closed", "", "field_5f4b61d0cccee", "", "", "2020-08-31 03:43:49", "2020-08-31 03:43:49", "", "25", "http://localhost:8888/Rest/?post_type=acf-field&#038;p=31", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("32", "1", "2020-08-30 08:28:47", "2020-08-30 08:28:47", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "Photo Rest Description", "photo_rest_description", "publish", "closed", "closed", "", "field_5f4b62bdcccef", "", "", "2020-08-31 03:43:49", "2020-08-31 03:43:49", "", "25", "http://localhost:8888/Rest/?post_type=acf-field&#038;p=32", "1", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("34", "1", "2020-08-30 08:33:45", "2020-08-30 08:33:45", "", "About", "", "inherit", "closed", "closed", "", "9-revision-v1", "", "", "2020-08-30 08:33:45", "2020-08-30 08:33:45", "", "9", "http://localhost:8888/Rest/2020/08/30/9-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("35", "1", "2020-08-30 08:33:54", "2020-08-30 08:33:54", "", "About", "", "inherit", "closed", "closed", "", "9-revision-v1", "", "", "2020-08-30 08:33:54", "2020-08-30 08:33:54", "", "9", "http://localhost:8888/Rest/2020/08/30/9-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("36", "1", "2020-08-30 08:36:01", "2020-08-30 08:36:01", "", "rest-fachada", "", "inherit", "open", "closed", "", "rest-fachada", "", "", "2020-08-30 08:44:37", "2020-08-30 08:44:37", "", "9", "http://localhost:8888/Rest/wp-content/uploads/2020/08/rest-fachada.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("37", "1", "2020-08-30 08:36:33", "2020-08-30 08:36:33", "", "About", "", "inherit", "closed", "closed", "", "9-revision-v1", "", "", "2020-08-30 08:36:33", "2020-08-30 08:36:33", "", "9", "http://localhost:8888/Rest/2020/08/30/9-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("38", "1", "2020-08-30 08:44:46", "2020-08-30 08:44:46", "", "About", "", "inherit", "closed", "closed", "", "9-revision-v1", "", "", "2020-08-30 08:44:46", "2020-08-30 08:44:46", "", "9", "http://localhost:8888/Rest/2020/08/30/9-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("39", "1", "2020-08-30 08:46:29", "2020-08-30 08:46:29", "", "About", "", "inherit", "closed", "closed", "", "9-revision-v1", "", "", "2020-08-30 08:46:29", "2020-08-30 08:46:29", "", "9", "http://localhost:8888/Rest/2020/08/30/9-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("40", "1", "2020-08-31 03:43:49", "2020-08-31 03:43:49", "a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:69:\"this is the part to input the mission, vision, and values about page.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:17:\"Add About Content\";}", "About Content", "about_content", "publish", "closed", "closed", "", "field_5f4c70b4514a0", "", "", "2020-08-31 03:43:49", "2020-08-31 03:43:49", "", "25", "http://localhost:8888/Rest/?post_type=acf-field&p=40", "2", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("41", "1", "2020-08-31 03:43:49", "2020-08-31 03:43:49", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "History Title", "history_title", "publish", "closed", "closed", "", "field_5f4c70f5514a1", "", "", "2020-08-31 03:43:49", "2020-08-31 03:43:49", "", "40", "http://localhost:8888/Rest/?post_type=acf-field&p=41", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("42", "1", "2020-08-31 03:43:49", "2020-08-31 03:43:49", "a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:4;s:9:\"new_lines\";s:7:\"wpautop\";}", "History Info", "history_info", "publish", "closed", "closed", "", "field_5f4c711d514a2", "", "", "2020-08-31 03:43:49", "2020-08-31 03:43:49", "", "40", "http://localhost:8888/Rest/?post_type=acf-field&p=42", "1", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("43", "1", "2020-08-31 03:46:46", "2020-08-31 03:46:46", "", "About", "", "inherit", "closed", "closed", "", "9-revision-v1", "", "", "2020-08-31 03:46:46", "2020-08-31 03:46:46", "", "9", "http://localhost:8888/Rest/2020/08/31/9-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("45", "1", "2020-08-31 04:15:07", "2020-08-31 04:15:07", "a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}", "Menu", "menu", "trash", "closed", "closed", "", "group_5f4c7768b32e6__trashed", "", "", "2020-08-31 04:27:41", "2020-08-31 04:27:41", "", "0", "http://localhost:8888/Rest/?post_type=acf-field-group&#038;p=45", "0", "acf-field-group", "", "0");
INSERT INTO `wp_posts` VALUES("46", "1", "2020-08-31 04:15:07", "2020-08-31 04:15:07", "a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}", "Menu Content", "menu_content", "trash", "closed", "closed", "", "field_5f4c777cf6efb__trashed", "", "", "2020-08-31 04:27:41", "2020-08-31 04:27:41", "", "45", "http://localhost:8888/Rest/?post_type=acf-field&#038;p=46", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("47", "1", "2020-08-31 04:15:07", "2020-08-31 04:15:07", "a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}", "Menu Category", "menu_category", "publish", "closed", "closed", "", "field_5f4c77e3f6efc", "", "", "2020-08-31 04:15:07", "2020-08-31 04:15:07", "", "46", "http://localhost:8888/Rest/?post_type=acf-field&p=47", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("48", "1", "2020-08-31 04:15:07", "2020-08-31 04:15:07", "a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}", "Menu Plate", "menu_plate", "publish", "closed", "closed", "", "field_5f4c785ff6efd", "", "", "2020-08-31 04:15:07", "2020-08-31 04:15:07", "", "47", "http://localhost:8888/Rest/?post_type=acf-field&p=48", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("49", "1", "2020-08-31 04:15:08", "2020-08-31 04:15:08", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "", "", "publish", "closed", "closed", "", "field_5f4c788df6efe", "", "", "2020-08-31 04:15:08", "2020-08-31 04:15:08", "", "47", "http://localhost:8888/Rest/?post_type=acf-field&p=49", "1", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("50", "1", "2020-08-31 04:15:08", "2020-08-31 04:15:08", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "Menu Category", "menu_category", "publish", "closed", "closed", "", "field_5f4c7911f6eff", "", "", "2020-08-31 04:15:08", "2020-08-31 04:15:08", "", "47", "http://localhost:8888/Rest/?post_type=acf-field&p=50", "2", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("51", "1", "2020-08-31 04:38:05", "2020-08-31 04:38:05", "a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"page-home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:10:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:15:\"page_attributes\";i:8;s:14:\"featured_image\";i:9;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}", "Menu", "menu", "trash", "closed", "closed", "", "group_5f4c7c3fc0421__trashed", "", "", "2020-08-31 04:46:27", "2020-08-31 04:46:27", "", "0", "http://localhost:8888/Rest/?post_type=acf-field-group&#038;p=51", "0", "acf-field-group", "", "0");
INSERT INTO `wp_posts` VALUES("52", "1", "2020-08-31 04:38:05", "2020-08-31 04:38:05", "a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:12:\"Add Category\";}", "Category Menu", "category_menu", "trash", "closed", "closed", "", "field_5f4c7c4bcf9fa__trashed", "", "", "2020-08-31 04:46:27", "2020-08-31 04:46:27", "", "51", "http://localhost:8888/Rest/?post_type=acf-field&#038;p=52", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("53", "1", "2020-08-31 04:38:05", "2020-08-31 04:38:05", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "Category Name", "category_name", "publish", "closed", "closed", "", "field_5f4c7c6fcf9fb", "", "", "2020-08-31 04:38:05", "2020-08-31 04:38:05", "", "52", "http://localhost:8888/Rest/?post_type=acf-field&p=53", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("54", "1", "2020-08-31 04:38:05", "2020-08-31 04:38:05", "a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:9:\"Add Plate\";}", "Menu Plates", "menu_plates", "publish", "closed", "closed", "", "field_5f4c7c83cf9fc", "", "", "2020-08-31 04:38:05", "2020-08-31 04:38:05", "", "52", "http://localhost:8888/Rest/?post_type=acf-field&p=54", "1", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("55", "1", "2020-08-31 04:38:05", "2020-08-31 04:38:05", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:12:\"Don\'t need $\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "Menu Price", "menu_price", "publish", "closed", "closed", "", "field_5f4c7c95cf9fd", "", "", "2020-08-31 04:38:05", "2020-08-31 04:38:05", "", "54", "http://localhost:8888/Rest/?post_type=acf-field&p=55", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("56", "1", "2020-08-31 04:38:05", "2020-08-31 04:38:05", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "Plate Name", "plate_name", "publish", "closed", "closed", "", "field_5f4c7cf7cf9fe", "", "", "2020-08-31 04:38:05", "2020-08-31 04:38:05", "", "54", "http://localhost:8888/Rest/?post_type=acf-field&p=56", "1", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("57", "1", "2020-08-31 04:38:05", "2020-08-31 04:38:05", "a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:2;s:9:\"new_lines\";s:0:\"\";}", "Description Plate", "description_plate", "publish", "closed", "closed", "", "field_5f4c7d5bcf9ff", "", "", "2020-08-31 04:38:05", "2020-08-31 04:38:05", "", "54", "http://localhost:8888/Rest/?post_type=acf-field&p=57", "2", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("58", "1", "2020-08-31 04:41:17", "2020-08-31 04:41:17", "", "Menu", "", "inherit", "closed", "closed", "", "7-revision-v1", "", "", "2020-08-31 04:41:17", "2020-08-31 04:41:17", "", "7", "http://localhost:8888/Rest/2020/08/31/7-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("59", "1", "2020-08-31 04:54:04", "2020-08-31 04:54:04", "a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"page-home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}", "Menu", "menu", "publish", "closed", "closed", "", "group_5f4c80a68d1c0", "", "", "2020-08-31 05:07:51", "2020-08-31 05:07:51", "", "0", "http://localhost:8888/Rest/?post_type=acf-field-group&#038;p=59", "0", "acf-field-group", "", "0");
INSERT INTO `wp_posts` VALUES("60", "1", "2020-08-31 04:54:04", "2020-08-31 04:54:04", "a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:12:\"Add Category\";}", "Categoria Menu", "categoria_menu", "publish", "closed", "closed", "", "field_5f4c80bfe3c81", "", "", "2020-08-31 05:03:43", "2020-08-31 05:03:43", "", "59", "http://localhost:8888/Rest/?post_type=acf-field&#038;p=60", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("61", "1", "2020-08-31 04:54:04", "2020-08-31 04:54:04", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "Nome Categoria", "nome_categoria", "publish", "closed", "closed", "", "field_5f4c80dbe3c82", "", "", "2020-08-31 04:54:04", "2020-08-31 04:54:04", "", "60", "http://localhost:8888/Rest/?post_type=acf-field&p=61", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("62", "1", "2020-08-31 04:54:04", "2020-08-31 04:54:04", "a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:9:\"Add Plate\";}", "Prato Menu", "prato_menu", "publish", "closed", "closed", "", "field_5f4c80f2e3c83", "", "", "2020-08-31 04:54:04", "2020-08-31 04:54:04", "", "60", "http://localhost:8888/Rest/?post_type=acf-field&p=62", "1", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("63", "1", "2020-08-31 04:54:04", "2020-08-31 04:54:04", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:16:\"(Don\'t need \"$\")\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "Preco Prato", "preco_prato", "publish", "closed", "closed", "", "field_5f4c811ce3c84", "", "", "2020-08-31 05:07:51", "2020-08-31 05:07:51", "", "62", "http://localhost:8888/Rest/?post_type=acf-field&#038;p=63", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("64", "1", "2020-08-31 04:54:04", "2020-08-31 04:54:04", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "Nome Prato", "nome_prato", "publish", "closed", "closed", "", "field_5f4c8166e3c85", "", "", "2020-08-31 04:54:04", "2020-08-31 04:54:04", "", "62", "http://localhost:8888/Rest/?post_type=acf-field&p=64", "1", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("65", "1", "2020-08-31 04:54:04", "2020-08-31 04:54:04", "a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:2;s:9:\"new_lines\";s:7:\"wpautop\";}", "Descricao Prato", "descricao_prato", "publish", "closed", "closed", "", "field_5f4c8190e3c86", "", "", "2020-08-31 04:54:04", "2020-08-31 04:54:04", "", "62", "http://localhost:8888/Rest/?post_type=acf-field&p=65", "2", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("66", "1", "2020-08-31 04:57:12", "2020-08-31 04:57:12", "", "Menu", "", "inherit", "closed", "closed", "", "7-revision-v1", "", "", "2020-08-31 04:57:12", "2020-08-31 04:57:12", "", "7", "http://localhost:8888/Rest/2020/08/31/7-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("67", "1", "2020-08-31 05:00:52", "2020-08-31 05:00:52", "", "Menu", "", "inherit", "closed", "closed", "", "7-revision-v1", "", "", "2020-08-31 05:00:52", "2020-08-31 05:00:52", "", "7", "http://localhost:8888/Rest/2020/08/31/7-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("69", "1", "2020-08-31 05:01:54", "2020-08-31 05:01:54", "", "Menu", "", "inherit", "closed", "closed", "", "7-revision-v1", "", "", "2020-08-31 05:01:54", "2020-08-31 05:01:54", "", "7", "http://localhost:8888/Rest/2020/08/31/7-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("70", "1", "2020-08-31 05:11:43", "2020-08-31 05:11:43", "", "Menu", "", "inherit", "closed", "closed", "", "7-revision-v1", "", "", "2020-08-31 05:11:43", "2020-08-31 05:11:43", "", "7", "http://localhost:8888/Rest/2020/08/31/7-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("71", "1", "2020-08-31 05:12:36", "2020-08-31 05:12:36", "", "Menu", "", "inherit", "closed", "closed", "", "7-revision-v1", "", "", "2020-08-31 05:12:36", "2020-08-31 05:12:36", "", "7", "http://localhost:8888/Rest/2020/08/31/7-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("72", "1", "2020-08-31 05:34:50", "2020-08-31 05:34:50", "a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"page-contact.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}", "Contact", "contact", "publish", "closed", "closed", "", "group_5f4c8b0736f1b", "", "", "2020-08-31 18:50:36", "2020-08-31 18:50:36", "", "0", "http://localhost:8888/Rest/?post_type=acf-field-group&#038;p=72", "0", "acf-field-group", "", "0");
INSERT INTO `wp_posts` VALUES("73", "1", "2020-08-31 05:34:50", "2020-08-31 05:34:50", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:53:\"the address that repeats in the header of the website\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "Address Header", "address_header", "publish", "closed", "closed", "", "field_5f4c8b22aba4b", "", "", "2020-08-31 18:21:56", "2020-08-31 18:21:56", "", "72", "http://localhost:8888/Rest/?post_type=acf-field&#038;p=73", "1", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("74", "1", "2020-08-31 05:34:50", "2020-08-31 05:34:50", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "Phone Header", "phone_header", "publish", "closed", "closed", "", "field_5f4c8bacaba4c", "", "", "2020-08-31 18:21:56", "2020-08-31 18:21:56", "", "72", "http://localhost:8888/Rest/?post_type=acf-field&#038;p=74", "2", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("75", "1", "2020-08-31 05:37:50", "2020-08-31 05:37:50", "", "Contact", "", "inherit", "closed", "closed", "", "11-revision-v1", "", "", "2020-08-31 05:37:50", "2020-08-31 05:37:50", "", "11", "http://localhost:8888/Rest/2020/08/31/11-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("76", "1", "2020-08-31 05:39:42", "2020-08-31 05:39:42", "", "Contact", "", "inherit", "closed", "closed", "", "11-revision-v1", "", "", "2020-08-31 05:39:42", "2020-08-31 05:39:42", "", "11", "http://localhost:8888/Rest/2020/08/31/11-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("77", "1", "2020-08-31 05:41:39", "2020-08-31 05:41:39", "", "Contact", "", "inherit", "closed", "closed", "", "11-revision-v1", "", "", "2020-08-31 05:41:39", "2020-08-31 05:41:39", "", "11", "http://localhost:8888/Rest/2020/08/31/11-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("78", "1", "2020-08-31 05:44:15", "2020-08-31 05:44:15", "", "Contact", "", "inherit", "closed", "closed", "", "11-revision-v1", "", "", "2020-08-31 05:44:15", "2020-08-31 05:44:15", "", "11", "http://localhost:8888/Rest/2020/08/31/11-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("79", "1", "2020-08-31 05:44:31", "2020-08-31 05:44:31", "", "Contact", "", "inherit", "closed", "closed", "", "11-revision-v1", "", "", "2020-08-31 05:44:31", "2020-08-31 05:44:31", "", "11", "http://localhost:8888/Rest/2020/08/31/11-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("80", "1", "2020-08-31 05:45:07", "2020-08-31 05:45:07", "", "Contact", "", "inherit", "closed", "closed", "", "11-revision-v1", "", "", "2020-08-31 05:45:07", "2020-08-31 05:45:07", "", "11", "http://localhost:8888/Rest/2020/08/31/11-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("81", "1", "2020-08-31 05:46:04", "2020-08-31 05:46:04", "", "Contact", "", "inherit", "closed", "closed", "", "11-revision-v1", "", "", "2020-08-31 05:46:04", "2020-08-31 05:46:04", "", "11", "http://localhost:8888/Rest/2020/08/31/11-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("82", "1", "2020-08-31 05:46:27", "2020-08-31 05:46:27", "", "Contact", "", "inherit", "closed", "closed", "", "11-revision-v1", "", "", "2020-08-31 05:46:27", "2020-08-31 05:46:27", "", "11", "http://localhost:8888/Rest/2020/08/31/11-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("83", "1", "2020-08-31 05:47:11", "2020-08-31 05:47:11", "", "Contact", "", "inherit", "closed", "closed", "", "11-revision-v1", "", "", "2020-08-31 05:47:11", "2020-08-31 05:47:11", "", "11", "http://localhost:8888/Rest/2020/08/31/11-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("84", "1", "2020-08-31 05:47:41", "2020-08-31 05:47:41", "", "Contact", "", "inherit", "closed", "closed", "", "11-revision-v1", "", "", "2020-08-31 05:47:41", "2020-08-31 05:47:41", "", "11", "http://localhost:8888/Rest/2020/08/31/11-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("86", "1", "2020-08-31 18:13:59", "2020-08-31 18:13:59", "a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}", "Map Link", "map_link", "publish", "closed", "closed", "", "field_5f4d3d77a7963", "", "", "2020-08-31 18:21:56", "2020-08-31 18:21:56", "", "72", "http://localhost:8888/Rest/?post_type=acf-field&#038;p=86", "4", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("87", "1", "2020-08-31 18:13:59", "2020-08-31 18:13:59", "a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}", "Img Map", "img_map", "publish", "closed", "closed", "", "field_5f4d3d9ca7964", "", "", "2020-08-31 18:21:56", "2020-08-31 18:21:56", "", "72", "http://localhost:8888/Rest/?post_type=acf-field&#038;p=87", "5", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("88", "1", "2020-08-31 18:17:04", "2020-08-31 18:17:04", "", "rest-mapa", "", "inherit", "open", "closed", "", "rest-mapa", "", "", "2020-08-31 18:17:04", "2020-08-31 18:17:04", "", "11", "http://localhost:8888/Rest/wp-content/uploads/2020/08/rest-mapa.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("89", "1", "2020-08-31 18:17:46", "2020-08-31 18:17:46", "", "Contact", "", "inherit", "closed", "closed", "", "11-revision-v1", "", "", "2020-08-31 18:17:46", "2020-08-31 18:17:46", "", "11", "http://localhost:8888/Rest/2020/08/31/11-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("90", "1", "2020-08-31 18:21:56", "2020-08-31 18:21:56", "a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}", "Header Data", "header_data", "publish", "closed", "closed", "", "field_5f4d3fa9f03ee", "", "", "2020-08-31 18:21:56", "2020-08-31 18:21:56", "", "72", "http://localhost:8888/Rest/?post_type=acf-field&p=90", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("91", "1", "2020-08-31 18:21:56", "2020-08-31 18:21:56", "a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}", "Map", "header_", "publish", "closed", "closed", "", "field_5f4d3f54f03ed", "", "", "2020-08-31 18:21:56", "2020-08-31 18:21:56", "", "72", "http://localhost:8888/Rest/?post_type=acf-field&p=91", "3", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("92", "1", "2020-08-31 18:33:21", "2020-08-31 18:33:21", "a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"page-contact.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}", "Contact Content", "contact-content", "trash", "closed", "closed", "", "group_5f4d41819fc81__trashed", "", "", "2020-08-31 18:45:38", "2020-08-31 18:45:38", "", "0", "http://localhost:8888/Rest/?post_type=acf-field-group&#038;p=92", "0", "acf-field-group", "", "0");
INSERT INTO `wp_posts` VALUES("93", "1", "2020-08-31 18:33:21", "2020-08-31 18:33:21", "a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:26:\"phone, address, hours, etc\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:16:\"Add Data Contact\";}", "Content Contact", "content_contact", "trash", "closed", "closed", "", "field_5f4d4188a5ce5__trashed", "", "", "2020-08-31 18:45:38", "2020-08-31 18:45:38", "", "92", "http://localhost:8888/Rest/?post_type=acf-field&#038;p=93", "1", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("94", "1", "2020-08-31 18:33:21", "2020-08-31 18:33:21", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "Contact Title", "contact_title", "publish", "closed", "closed", "", "field_5f4d41eca5ce6", "", "", "2020-08-31 18:33:21", "2020-08-31 18:33:21", "", "93", "http://localhost:8888/Rest/?post_type=acf-field&p=94", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("95", "1", "2020-08-31 18:33:21", "2020-08-31 18:33:21", "a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:7:\"wpautop\";}", "Contact Info", "contact_info", "trash", "closed", "closed", "", "field_5f4d4213a5ce7__trashed", "", "", "2020-08-31 18:45:38", "2020-08-31 18:45:38", "", "92", "http://localhost:8888/Rest/?post_type=acf-field&#038;p=95", "2", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("96", "1", "2020-08-31 18:38:22", "2020-08-31 18:38:22", "a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}", "Contact Info", "contact_info", "trash", "closed", "closed", "", "field_5f4d437d9346e__trashed", "", "", "2020-08-31 18:45:38", "2020-08-31 18:45:38", "", "92", "http://localhost:8888/Rest/?post_type=acf-field&#038;p=96", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("98", "1", "2020-08-31 18:49:50", "2020-08-31 18:49:50", "a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:42:\"Contact Info (address, phone, hours - etc)\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:16:\"Add Contact Info\";}", "Content Contact", "content_contact", "publish", "closed", "closed", "", "field_5f4d4567c4120", "", "", "2020-08-31 18:50:36", "2020-08-31 18:50:36", "", "72", "http://localhost:8888/Rest/?post_type=acf-field&#038;p=98", "7", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("99", "1", "2020-08-31 18:49:50", "2020-08-31 18:49:50", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "Contact Title", "contact_title", "publish", "closed", "closed", "", "field_5f4d45d4c4122", "", "", "2020-08-31 18:49:50", "2020-08-31 18:49:50", "", "98", "http://localhost:8888/Rest/?post_type=acf-field&p=99", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("100", "1", "2020-08-31 18:49:50", "2020-08-31 18:49:50", "a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:7:\"wpautop\";}", "Contact Info", "contact_info", "publish", "closed", "closed", "", "field_5f4d462bc4123", "", "", "2020-08-31 18:49:50", "2020-08-31 18:49:50", "", "98", "http://localhost:8888/Rest/?post_type=acf-field&p=100", "1", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("101", "1", "2020-08-31 18:50:36", "2020-08-31 18:50:36", "a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}", "Contact Info", "contact_info", "publish", "closed", "closed", "", "field_5f4d4656b0dea", "", "", "2020-08-31 18:50:36", "2020-08-31 18:50:36", "", "72", "http://localhost:8888/Rest/?post_type=acf-field&p=101", "6", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("102", "1", "2020-08-31 18:57:44", "2020-08-31 18:57:44", "", "Contact", "", "inherit", "closed", "closed", "", "11-revision-v1", "", "", "2020-08-31 18:57:44", "2020-08-31 18:57:44", "", "11", "http://localhost:8888/Rest/2020/08/31/11-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("103", "1", "2020-08-31 18:59:10", "2020-08-31 18:59:10", "", "Contact", "", "inherit", "closed", "closed", "", "11-revision-v1", "", "", "2020-08-31 18:59:10", "2020-08-31 18:59:10", "", "11", "http://localhost:8888/Rest/2020/08/31/11-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("104", "1", "2020-08-31 19:00:12", "2020-08-31 19:00:12", "", "Contact", "", "inherit", "closed", "closed", "", "11-revision-v1", "", "", "2020-08-31 19:00:12", "2020-08-31 19:00:12", "", "11", "http://localhost:8888/Rest/2020/08/31/11-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("105", "1", "2020-08-31 19:16:23", "2020-08-31 19:16:23", "", "Contact", "", "inherit", "closed", "closed", "", "11-revision-v1", "", "", "2020-08-31 19:16:23", "2020-08-31 19:16:23", "", "11", "http://localhost:8888/Rest/2020/08/31/11-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("106", "1", "2020-08-31 19:20:54", "2020-08-31 19:20:54", "a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:10:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:15:\"page_attributes\";i:8;s:14:\"featured_image\";i:9;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}", "SEO", "seo", "publish", "closed", "closed", "", "group_5f4d4c9021c7a", "", "", "2020-08-31 19:20:54", "2020-08-31 19:20:54", "", "0", "http://localhost:8888/Rest/?post_type=acf-field-group&#038;p=106", "0", "acf-field-group", "", "0");
INSERT INTO `wp_posts` VALUES("107", "1", "2020-08-31 19:20:54", "2020-08-31 19:20:54", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "Title SEO", "title_seo", "publish", "closed", "closed", "", "field_5f4d4c96dcc40", "", "", "2020-08-31 19:20:54", "2020-08-31 19:20:54", "", "106", "http://localhost:8888/Rest/?post_type=acf-field&p=107", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("108", "1", "2020-08-31 19:20:54", "2020-08-31 19:20:54", "a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:2;s:9:\"new_lines\";s:0:\"\";}", "Description SEO", "description_seo", "publish", "closed", "closed", "", "field_5f4d4ca5dcc41", "", "", "2020-08-31 19:20:54", "2020-08-31 19:20:54", "", "106", "http://localhost:8888/Rest/?post_type=acf-field&p=108", "1", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("109", "1", "2020-08-31 19:22:32", "2020-08-31 19:22:32", "", "Menu", "", "inherit", "closed", "closed", "", "7-revision-v1", "", "", "2020-08-31 19:22:32", "2020-08-31 19:22:32", "", "7", "http://localhost:8888/Rest/2020/08/31/7-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("110", "1", "2020-08-31 19:23:49", "2020-08-31 19:23:49", "", "Menu", "", "inherit", "closed", "closed", "", "7-revision-v1", "", "", "2020-08-31 19:23:49", "2020-08-31 19:23:49", "", "7", "http://localhost:8888/Rest/2020/08/31/7-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("111", "1", "2020-08-31 19:44:14", "2020-08-31 19:44:14", " ", "", "", "publish", "closed", "closed", "", "111", "", "", "2020-08-31 19:44:14", "2020-08-31 19:44:14", "", "0", "http://localhost:8888/Rest/?p=111", "1", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("112", "1", "2020-08-31 19:44:14", "2020-08-31 19:44:14", " ", "", "", "publish", "closed", "closed", "", "112", "", "", "2020-08-31 19:44:14", "2020-08-31 19:44:14", "", "0", "http://localhost:8888/Rest/?p=112", "2", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("113", "1", "2020-08-31 19:44:14", "2020-08-31 19:44:14", " ", "", "", "publish", "closed", "closed", "", "113", "", "", "2020-08-31 19:44:14", "2020-08-31 19:44:14", "", "0", "http://localhost:8888/Rest/?p=113", "3", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("114", "1", "2020-08-31 20:28:42", "2020-08-31 20:28:42", "", "Contact", "", "inherit", "closed", "closed", "", "11-revision-v1", "", "", "2020-08-31 20:28:42", "2020-08-31 20:28:42", "", "11", "http://localhost:8888/Rest/2020/08/31/11-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("115", "1", "2020-09-22 22:48:45", "2020-09-22 22:48:45", "", "About", "", "inherit", "closed", "closed", "", "9-revision-v1", "", "", "2020-09-22 22:48:45", "2020-09-22 22:48:45", "", "9", "http://localhost:8888/Rest/2020/09/22/9-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("116", "1", "2020-09-22 22:49:15", "2020-09-22 22:49:15", "", "About", "", "inherit", "closed", "closed", "", "9-revision-v1", "", "", "2020-09-22 22:49:15", "2020-09-22 22:49:15", "", "9", "http://localhost:8888/Rest/2020/09/22/9-revision-v1/", "0", "revision", "", "0");

/* INSERT TABLE DATA: wp_term_relationships */
INSERT INTO `wp_term_relationships` VALUES("17", "1", "0");
INSERT INTO `wp_term_relationships` VALUES("111", "2", "0");
INSERT INTO `wp_term_relationships` VALUES("112", "2", "0");
INSERT INTO `wp_term_relationships` VALUES("113", "2", "0");

/* INSERT TABLE DATA: wp_term_taxonomy */
INSERT INTO `wp_term_taxonomy` VALUES("1", "1", "category", "", "0", "1");
INSERT INTO `wp_term_taxonomy` VALUES("2", "2", "nav_menu", "", "0", "3");

/* INSERT TABLE DATA: wp_terms */
INSERT INTO `wp_terms` VALUES("1", "Uncategorized", "uncategorized", "0");
INSERT INTO `wp_terms` VALUES("2", "Menu", "menu", "0");

/* INSERT TABLE DATA: wp_usermeta */
INSERT INTO `wp_usermeta` VALUES("1", "1", "nickname", "gsd-init");
INSERT INTO `wp_usermeta` VALUES("2", "1", "first_name", "");
INSERT INTO `wp_usermeta` VALUES("3", "1", "last_name", "");
INSERT INTO `wp_usermeta` VALUES("4", "1", "description", "");
INSERT INTO `wp_usermeta` VALUES("5", "1", "rich_editing", "true");
INSERT INTO `wp_usermeta` VALUES("6", "1", "syntax_highlighting", "true");
INSERT INTO `wp_usermeta` VALUES("7", "1", "comment_shortcuts", "false");
INSERT INTO `wp_usermeta` VALUES("8", "1", "admin_color", "fresh");
INSERT INTO `wp_usermeta` VALUES("9", "1", "use_ssl", "0");
INSERT INTO `wp_usermeta` VALUES("10", "1", "show_admin_bar_front", "true");
INSERT INTO `wp_usermeta` VALUES("11", "1", "locale", "");
INSERT INTO `wp_usermeta` VALUES("12", "1", "wp_capabilities", "a:1:{s:13:\"administrator\";b:1;}");
INSERT INTO `wp_usermeta` VALUES("13", "1", "wp_user_level", "10");
INSERT INTO `wp_usermeta` VALUES("14", "1", "dismissed_wp_pointers", "");
INSERT INTO `wp_usermeta` VALUES("15", "1", "show_welcome_panel", "1");
INSERT INTO `wp_usermeta` VALUES("16", "1", "session_tokens", "a:1:{s:64:\"2fab5c4de4de0f8f37b91d880636d3c88f20a25f755d4bd059c3da761ec3b45a\";a:4:{s:10:\"expiration\";i:1600987623;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\";s:5:\"login\";i:1600814823;}}");
INSERT INTO `wp_usermeta` VALUES("17", "1", "wp_dashboard_quick_press_last_post_id", "4");
INSERT INTO `wp_usermeta` VALUES("18", "1", "community-events-location", "a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}");
INSERT INTO `wp_usermeta` VALUES("19", "1", "meta-box-order_acf-field-group", "a:3:{s:4:\"side\";s:0:\"\";s:6:\"normal\";s:7:\"slugdiv\";s:8:\"advanced\";s:82:\"acf-field-group-locations,submitdiv,acf-field-group-fields,acf-field-group-options\";}");
INSERT INTO `wp_usermeta` VALUES("20", "1", "screen_layout_acf-field-group", "2");
INSERT INTO `wp_usermeta` VALUES("21", "1", "closedpostboxes_acf-field-group", "a:1:{i:0;s:25:\"acf-field-group-locations\";}");
INSERT INTO `wp_usermeta` VALUES("22", "1", "metaboxhidden_acf-field-group", "a:1:{i:0;s:7:\"slugdiv\";}");
INSERT INTO `wp_usermeta` VALUES("23", "1", "wp_user-settings", "libraryContent=browse&mfold=o");
INSERT INTO `wp_usermeta` VALUES("24", "1", "wp_user-settings-time", "1598898871");
INSERT INTO `wp_usermeta` VALUES("25", "1", "meta-box-order_page", "a:4:{s:6:\"normal\";s:47:\"acf-group_5f4d4c9021c7a,acf-group_5f4c80a68d1c0\";s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}");
INSERT INTO `wp_usermeta` VALUES("26", "1", "closedpostboxes_page", "a:0:{}");
INSERT INTO `wp_usermeta` VALUES("27", "1", "metaboxhidden_page", "a:0:{}");
INSERT INTO `wp_usermeta` VALUES("28", "1", "managenav-menuscolumnshidden", "a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}");
INSERT INTO `wp_usermeta` VALUES("29", "1", "metaboxhidden_nav-menus", "a:1:{i:0;s:12:\"add-post_tag\";}");
INSERT INTO `wp_usermeta` VALUES("30", "1", "nav_menu_recently_edited", "2");

/* INSERT TABLE DATA: wp_users */
INSERT INTO `wp_users` VALUES("1", "gsd-init", "$P$BNFGur0rUlrdfN8XEUiMU1JrNsjeZd/", "gsd-init", "gsdias22@gmail.com", "http://localhost:8888/Rest", "2020-08-29 02:55:17", "", "0", "gsd-init");

SET FOREIGN_KEY_CHECKS = 1; 

/* Duplicator WordPress Timestamp: 2020-09-22 23:04:16*/
/* DUPLICATOR_MYSQLDUMP_EOF */
