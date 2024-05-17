-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_actionscheduler_actions`
--

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `priority` tinyint(3) unsigned NOT NULL DEFAULT '10',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook_status_scheduled_date_gmt` (`hook`(163),`status`,`scheduled_date_gmt`),
  KEY `status_scheduled_date_gmt` (`status`,`scheduled_date_gmt`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

LOCK TABLES `wp_actionscheduler_actions` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_actions` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_actions` VALUES (44,'action_scheduler/migration_hook','complete','2024-04-12 04:17:25','2024-04-12 04:17:25',10,'[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1712895445;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1712895445;}',1,1,'2024-04-12 04:17:34','2024-04-12 04:17:34',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (45,'action_scheduler/migration_hook','complete','2024-04-12 22:21:37','2024-04-12 22:21:37',10,'[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1712960497;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1712960497;}',1,1,'2024-04-12 22:21:38','2024-04-12 22:21:38',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (46,'action_scheduler/migration_hook','complete','2024-04-12 23:09:00','2024-04-12 23:09:00',10,'[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1712963340;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1712963340;}',1,1,'2024-04-12 23:09:22','2024-04-12 23:09:22',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (47,'action_scheduler/migration_hook','complete','2024-04-13 00:12:22','2024-04-13 00:12:22',10,'[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1712967142;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1712967142;}',1,1,'2024-04-13 00:12:31','2024-04-13 00:12:31',0,NULL);
/*!40000 ALTER TABLE `wp_actionscheduler_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_claims`
--

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=2766 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_claims`
--

LOCK TABLES `wp_actionscheduler_claims` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_groups`
--

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

LOCK TABLES `wp_actionscheduler_groups` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_groups` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_groups` VALUES (1,'action-scheduler-migration');
/*!40000 ALTER TABLE `wp_actionscheduler_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_logs`
--

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

LOCK TABLES `wp_actionscheduler_logs` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_logs` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_logs` VALUES (1,44,'action created','2024-04-12 04:16:25','2024-04-12 04:16:25');
INSERT INTO `wp_actionscheduler_logs` VALUES (2,44,'action started via Async Request','2024-04-12 04:17:34','2024-04-12 04:17:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (3,44,'action complete via Async Request','2024-04-12 04:17:34','2024-04-12 04:17:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (4,45,'action created','2024-04-12 22:20:37','2024-04-12 22:20:37');
INSERT INTO `wp_actionscheduler_logs` VALUES (5,45,'action started via WP Cron','2024-04-12 22:21:38','2024-04-12 22:21:38');
INSERT INTO `wp_actionscheduler_logs` VALUES (6,45,'action complete via WP Cron','2024-04-12 22:21:38','2024-04-12 22:21:38');
INSERT INTO `wp_actionscheduler_logs` VALUES (7,46,'action created','2024-04-12 23:08:00','2024-04-12 23:08:00');
INSERT INTO `wp_actionscheduler_logs` VALUES (8,46,'action started via WP Cron','2024-04-12 23:09:22','2024-04-12 23:09:22');
INSERT INTO `wp_actionscheduler_logs` VALUES (9,46,'action complete via WP Cron','2024-04-12 23:09:22','2024-04-12 23:09:22');
INSERT INTO `wp_actionscheduler_logs` VALUES (10,47,'action created','2024-04-13 00:11:22','2024-04-13 00:11:22');
INSERT INTO `wp_actionscheduler_logs` VALUES (11,47,'action started via Async Request','2024-04-13 00:12:31','2024-04-13 00:12:31');
INSERT INTO `wp_actionscheduler_logs` VALUES (12,47,'action complete via Async Request','2024-04-13 00:12:31','2024-04-13 00:12:31');
/*!40000 ALTER TABLE `wp_actionscheduler_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2024-03-27 02:38:31','2024-03-27 02:38:31','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'post-trashed','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_em_bookings`
--

DROP TABLE IF EXISTS `wp_em_bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_em_bookings` (
  `booking_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `booking_uuid` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_id` bigint(20) unsigned DEFAULT NULL,
  `person_id` bigint(20) unsigned NOT NULL,
  `booking_spaces` int(5) NOT NULL,
  `booking_comment` mediumtext COLLATE utf8mb4_unicode_ci,
  `booking_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `booking_status` int(2) NOT NULL DEFAULT '1',
  `booking_rsvp_status` int(1) DEFAULT NULL,
  `booking_price` decimal(14,4) unsigned NOT NULL DEFAULT '0.0000',
  `booking_tax_rate` decimal(7,4) DEFAULT NULL,
  `booking_taxes` decimal(14,4) DEFAULT NULL,
  `booking_meta` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`booking_id`),
  KEY `event_id` (`event_id`),
  KEY `person_id` (`person_id`),
  KEY `booking_status` (`booking_status`),
  KEY `booking_rsvp_status` (`booking_rsvp_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_em_bookings`
--

LOCK TABLES `wp_em_bookings` WRITE;
/*!40000 ALTER TABLE `wp_em_bookings` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_em_bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_em_bookings_meta`
--

DROP TABLE IF EXISTS `wp_em_bookings_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_em_bookings_meta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `booking_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `booking_id` (`booking_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_em_bookings_meta`
--

LOCK TABLES `wp_em_bookings_meta` WRITE;
/*!40000 ALTER TABLE `wp_em_bookings_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_em_bookings_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_em_events`
--

DROP TABLE IF EXISTS `wp_em_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_em_events` (
  `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL,
  `event_parent` bigint(20) unsigned DEFAULT NULL,
  `event_slug` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_owner` bigint(20) unsigned DEFAULT NULL,
  `event_status` tinyint(1) DEFAULT NULL,
  `event_active_status` tinyint(2) DEFAULT '1',
  `event_name` mediumtext COLLATE utf8mb4_unicode_ci,
  `event_start_date` date DEFAULT NULL,
  `event_end_date` date DEFAULT NULL,
  `event_start_time` time DEFAULT NULL,
  `event_end_time` time DEFAULT NULL,
  `event_all_day` tinyint(1) unsigned DEFAULT NULL,
  `event_start` datetime DEFAULT NULL,
  `event_end` datetime DEFAULT NULL,
  `event_timezone` text COLLATE utf8mb4_unicode_ci,
  `post_content` longtext COLLATE utf8mb4_unicode_ci,
  `event_rsvp` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `event_rsvp_date` date DEFAULT NULL,
  `event_rsvp_time` time DEFAULT NULL,
  `event_rsvp_spaces` int(5) DEFAULT NULL,
  `event_spaces` int(5) DEFAULT '0',
  `event_private` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `location_id` bigint(20) unsigned DEFAULT NULL,
  `event_location_type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recurrence_id` bigint(20) unsigned DEFAULT NULL,
  `event_date_created` datetime DEFAULT NULL,
  `event_date_modified` datetime DEFAULT NULL,
  `recurrence` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recurrence_interval` int(4) DEFAULT NULL,
  `recurrence_freq` text COLLATE utf8mb4_unicode_ci,
  `recurrence_byday` text COLLATE utf8mb4_unicode_ci,
  `recurrence_byweekno` int(4) DEFAULT NULL,
  `recurrence_days` int(4) DEFAULT NULL,
  `recurrence_rsvp_days` int(3) DEFAULT NULL,
  `blog_id` bigint(20) unsigned DEFAULT NULL,
  `group_id` bigint(20) unsigned DEFAULT NULL,
  `event_language` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_translation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`event_id`),
  KEY `event_status` (`event_status`),
  KEY `event_active_status` (`event_active_status`),
  KEY `post_id` (`post_id`),
  KEY `blog_id` (`blog_id`),
  KEY `group_id` (`group_id`),
  KEY `location_id` (`location_id`),
  KEY `event_start` (`event_start`),
  KEY `event_end` (`event_end`),
  KEY `event_start_date` (`event_start_date`),
  KEY `event_end_date` (`event_end_date`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_em_events`
--

LOCK TABLES `wp_em_events` WRITE;
/*!40000 ALTER TABLE `wp_em_events` DISABLE KEYS */;
INSERT INTO `wp_em_events` VALUES (1,56,NULL,'altoona-pa',1,1,1,'Altoona PA','2024-04-19','2024-04-19','19:30:00','19:30:00',0,'2024-04-19 19:30:00','2024-04-19 19:30:00','UTC','',0,NULL,NULL,NULL,NULL,0,2,NULL,NULL,'2024-04-12 04:38:29','2024-04-12 04:39:54',0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'en_US',0);
/*!40000 ALTER TABLE `wp_em_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_em_locations`
--

DROP TABLE IF EXISTS `wp_em_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_em_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL,
  `blog_id` bigint(20) unsigned DEFAULT NULL,
  `location_parent` bigint(20) unsigned DEFAULT NULL,
  `location_slug` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_name` mediumtext COLLATE utf8mb4_unicode_ci,
  `location_owner` bigint(20) unsigned NOT NULL DEFAULT '0',
  `location_address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_town` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_state` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_region` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_country` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_latitude` decimal(9,6) DEFAULT NULL,
  `location_longitude` decimal(9,6) DEFAULT NULL,
  `post_content` longtext COLLATE utf8mb4_unicode_ci,
  `location_status` int(1) DEFAULT NULL,
  `location_private` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `location_language` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_translation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`location_id`),
  KEY `location_state` (`location_state`(191)),
  KEY `location_region` (`location_region`(191)),
  KEY `location_country` (`location_country`),
  KEY `post_id` (`post_id`),
  KEY `blog_id` (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_em_locations`
--

LOCK TABLES `wp_em_locations` WRITE;
/*!40000 ALTER TABLE `wp_em_locations` DISABLE KEYS */;
INSERT INTO `wp_em_locations` VALUES (1,57,0,NULL,NULL,'The Mishler Theatre',1,'1208 12th Ave #206 ','Altoona','PA','16601',NULL,NULL,NULL,NULL,NULL,NULL,0,'en_US',0);
INSERT INTO `wp_em_locations` VALUES (2,58,0,NULL,'the-mishler-theatre','The Mishler Theatre',1,'1208 12th Ave','Altoona','PA','16601',NULL,'GB',NULL,NULL,NULL,1,0,'en_US',0);
/*!40000 ALTER TABLE `wp_em_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_em_meta`
--

DROP TABLE IF EXISTS `wp_em_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_em_meta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  `meta_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`meta_id`),
  KEY `object_id` (`object_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_em_meta`
--

LOCK TABLES `wp_em_meta` WRITE;
/*!40000 ALTER TABLE `wp_em_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_em_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_em_tickets`
--

DROP TABLE IF EXISTS `wp_em_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_em_tickets` (
  `ticket_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` bigint(20) unsigned NOT NULL,
  `ticket_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `ticket_price` decimal(14,4) DEFAULT NULL,
  `ticket_start` datetime DEFAULT NULL,
  `ticket_end` datetime DEFAULT NULL,
  `ticket_min` int(10) DEFAULT NULL,
  `ticket_max` int(10) DEFAULT NULL,
  `ticket_spaces` int(11) DEFAULT NULL,
  `ticket_members` int(1) DEFAULT NULL,
  `ticket_members_roles` longtext COLLATE utf8mb4_unicode_ci,
  `ticket_guests` int(1) DEFAULT NULL,
  `ticket_required` int(1) DEFAULT NULL,
  `ticket_parent` bigint(20) unsigned DEFAULT NULL,
  `ticket_order` int(2) unsigned DEFAULT NULL,
  `ticket_meta` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ticket_id`),
  KEY `event_id` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_em_tickets`
--

LOCK TABLES `wp_em_tickets` WRITE;
/*!40000 ALTER TABLE `wp_em_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_em_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_em_tickets_bookings`
--

DROP TABLE IF EXISTS `wp_em_tickets_bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_em_tickets_bookings` (
  `ticket_booking_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_uuid` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `booking_id` bigint(20) unsigned NOT NULL,
  `ticket_id` bigint(20) unsigned NOT NULL,
  `ticket_booking_spaces` int(6) NOT NULL,
  `ticket_booking_price` decimal(14,4) NOT NULL,
  `ticket_booking_order` int(2) DEFAULT NULL,
  PRIMARY KEY (`ticket_booking_id`),
  KEY `ticket_uuid` (`ticket_uuid`),
  KEY `booking_id` (`booking_id`),
  KEY `ticket_id` (`ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_em_tickets_bookings`
--

LOCK TABLES `wp_em_tickets_bookings` WRITE;
/*!40000 ALTER TABLE `wp_em_tickets_bookings` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_em_tickets_bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_em_tickets_bookings_meta`
--

DROP TABLE IF EXISTS `wp_em_tickets_bookings_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_em_tickets_bookings_meta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_booking_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `ticket_booking_id` (`ticket_booking_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_em_tickets_bookings_meta`
--

LOCK TABLES `wp_em_tickets_bookings_meta` WRITE;
/*!40000 ALTER TABLE `wp_em_tickets_bookings_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_em_tickets_bookings_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=4149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://motownchristmas.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://motownchristmas.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','MotownChristmas','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','alcantaradevelopment@gmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:3:{i:0;s:47:\"show-current-template/show-current-template.php\";i:1;s:43:\"the-events-calendar/the-events-calendar.php\";i:2;s:48:\"tribe-ext-link-events-to-website-urls/plugin.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','motownchristmas','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','motownchristmas','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','56657','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','9','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1727059111','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'wp_attachment_pages_enabled','0','yes');
INSERT INTO `wp_options` VALUES (100,'initial_db_version','56657','yes');
INSERT INTO `wp_options` VALUES (101,'wp_user_roles','a:6:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:142:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:31:\"read_private_aggregator-records\";b:1;s:23:\"edit_aggregator-records\";b:1;s:30:\"edit_others_aggregator-records\";b:1;s:31:\"edit_private_aggregator-records\";b:1;s:33:\"edit_published_aggregator-records\";b:1;s:25:\"delete_aggregator-records\";b:1;s:32:\"delete_others_aggregator-records\";b:1;s:33:\"delete_private_aggregator-records\";b:1;s:35:\"delete_published_aggregator-records\";b:1;s:26:\"publish_aggregator-records\";b:1;s:21:\"manage_event_listings\";b:1;s:18:\"edit_event_listing\";b:1;s:18:\"read_event_listing\";b:1;s:20:\"delete_event_listing\";b:1;s:19:\"edit_event_listings\";b:1;s:26:\"edit_others_event_listings\";b:1;s:22:\"publish_event_listings\";b:1;s:27:\"read_private_event_listings\";b:1;s:21:\"delete_event_listings\";b:1;s:29:\"delete_private_event_listings\";b:1;s:31:\"delete_published_event_listings\";b:1;s:28:\"delete_others_event_listings\";b:1;s:27:\"edit_private_event_listings\";b:1;s:29:\"edit_published_event_listings\";b:1;s:26:\"manage_event_listing_terms\";b:1;s:24:\"edit_event_listing_terms\";b:1;s:26:\"delete_event_listing_terms\";b:1;s:26:\"assign_event_listing_terms\";b:1;s:14:\"publish_events\";b:1;s:20:\"delete_others_events\";b:1;s:18:\"edit_others_events\";b:1;s:22:\"manage_others_bookings\";b:1;s:24:\"publish_recurring_events\";b:1;s:30:\"delete_others_recurring_events\";b:1;s:28:\"edit_others_recurring_events\";b:1;s:17:\"publish_locations\";b:1;s:23:\"delete_others_locations\";b:1;s:16:\"delete_locations\";b:1;s:21:\"edit_others_locations\";b:1;s:23:\"delete_event_categories\";b:1;s:21:\"edit_event_categories\";b:1;s:15:\"manage_bookings\";b:1;s:19:\"upload_event_images\";b:1;s:13:\"delete_events\";b:1;s:11:\"edit_events\";b:1;s:19:\"read_private_events\";b:1;s:23:\"delete_recurring_events\";b:1;s:21:\"edit_recurring_events\";b:1;s:14:\"edit_locations\";b:1;s:22:\"read_private_locations\";b:1;s:21:\"read_others_locations\";b:1;s:25:\"read_private_tribe_events\";b:1;s:17:\"edit_tribe_events\";b:1;s:24:\"edit_others_tribe_events\";b:1;s:25:\"edit_private_tribe_events\";b:1;s:27:\"edit_published_tribe_events\";b:1;s:19:\"delete_tribe_events\";b:1;s:26:\"delete_others_tribe_events\";b:1;s:27:\"delete_private_tribe_events\";b:1;s:29:\"delete_published_tribe_events\";b:1;s:20:\"publish_tribe_events\";b:1;s:25:\"read_private_tribe_venues\";b:1;s:17:\"edit_tribe_venues\";b:1;s:24:\"edit_others_tribe_venues\";b:1;s:25:\"edit_private_tribe_venues\";b:1;s:27:\"edit_published_tribe_venues\";b:1;s:19:\"delete_tribe_venues\";b:1;s:26:\"delete_others_tribe_venues\";b:1;s:27:\"delete_private_tribe_venues\";b:1;s:29:\"delete_published_tribe_venues\";b:1;s:20:\"publish_tribe_venues\";b:1;s:29:\"read_private_tribe_organizers\";b:1;s:21:\"edit_tribe_organizers\";b:1;s:28:\"edit_others_tribe_organizers\";b:1;s:29:\"edit_private_tribe_organizers\";b:1;s:31:\"edit_published_tribe_organizers\";b:1;s:23:\"delete_tribe_organizers\";b:1;s:30:\"delete_others_tribe_organizers\";b:1;s:31:\"delete_private_tribe_organizers\";b:1;s:33:\"delete_published_tribe_organizers\";b:1;s:24:\"publish_tribe_organizers\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:97:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:31:\"read_private_aggregator-records\";b:1;s:23:\"edit_aggregator-records\";b:1;s:30:\"edit_others_aggregator-records\";b:1;s:31:\"edit_private_aggregator-records\";b:1;s:33:\"edit_published_aggregator-records\";b:1;s:25:\"delete_aggregator-records\";b:1;s:32:\"delete_others_aggregator-records\";b:1;s:33:\"delete_private_aggregator-records\";b:1;s:35:\"delete_published_aggregator-records\";b:1;s:26:\"publish_aggregator-records\";b:1;s:14:\"publish_events\";b:1;s:20:\"delete_others_events\";b:1;s:18:\"edit_others_events\";b:1;s:22:\"manage_others_bookings\";b:1;s:24:\"publish_recurring_events\";b:1;s:30:\"delete_others_recurring_events\";b:1;s:28:\"edit_others_recurring_events\";b:1;s:17:\"publish_locations\";b:1;s:23:\"delete_others_locations\";b:1;s:16:\"delete_locations\";b:1;s:21:\"edit_others_locations\";b:1;s:23:\"delete_event_categories\";b:1;s:21:\"edit_event_categories\";b:1;s:15:\"manage_bookings\";b:1;s:19:\"upload_event_images\";b:1;s:13:\"delete_events\";b:1;s:11:\"edit_events\";b:1;s:19:\"read_private_events\";b:1;s:23:\"delete_recurring_events\";b:1;s:21:\"edit_recurring_events\";b:1;s:14:\"edit_locations\";b:1;s:22:\"read_private_locations\";b:1;s:21:\"read_others_locations\";b:1;s:25:\"read_private_tribe_events\";b:1;s:17:\"edit_tribe_events\";b:1;s:24:\"edit_others_tribe_events\";b:1;s:25:\"edit_private_tribe_events\";b:1;s:27:\"edit_published_tribe_events\";b:1;s:19:\"delete_tribe_events\";b:1;s:26:\"delete_others_tribe_events\";b:1;s:27:\"delete_private_tribe_events\";b:1;s:29:\"delete_published_tribe_events\";b:1;s:20:\"publish_tribe_events\";b:1;s:25:\"read_private_tribe_venues\";b:1;s:17:\"edit_tribe_venues\";b:1;s:24:\"edit_others_tribe_venues\";b:1;s:25:\"edit_private_tribe_venues\";b:1;s:27:\"edit_published_tribe_venues\";b:1;s:19:\"delete_tribe_venues\";b:1;s:26:\"delete_others_tribe_venues\";b:1;s:27:\"delete_private_tribe_venues\";b:1;s:29:\"delete_published_tribe_venues\";b:1;s:20:\"publish_tribe_venues\";b:1;s:29:\"read_private_tribe_organizers\";b:1;s:21:\"edit_tribe_organizers\";b:1;s:28:\"edit_others_tribe_organizers\";b:1;s:29:\"edit_private_tribe_organizers\";b:1;s:31:\"edit_published_tribe_organizers\";b:1;s:23:\"delete_tribe_organizers\";b:1;s:30:\"delete_others_tribe_organizers\";b:1;s:31:\"delete_private_tribe_organizers\";b:1;s:33:\"delete_published_tribe_organizers\";b:1;s:24:\"publish_tribe_organizers\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:40:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:23:\"edit_aggregator-records\";b:1;s:33:\"edit_published_aggregator-records\";b:1;s:25:\"delete_aggregator-records\";b:1;s:35:\"delete_published_aggregator-records\";b:1;s:26:\"publish_aggregator-records\";b:1;s:15:\"manage_bookings\";b:1;s:19:\"upload_event_images\";b:1;s:13:\"delete_events\";b:1;s:11:\"edit_events\";b:1;s:19:\"read_private_events\";b:1;s:23:\"delete_recurring_events\";b:1;s:21:\"edit_recurring_events\";b:1;s:14:\"edit_locations\";b:1;s:22:\"read_private_locations\";b:1;s:21:\"read_others_locations\";b:1;s:17:\"edit_tribe_events\";b:1;s:27:\"edit_published_tribe_events\";b:1;s:19:\"delete_tribe_events\";b:1;s:29:\"delete_published_tribe_events\";b:1;s:20:\"publish_tribe_events\";b:1;s:17:\"edit_tribe_venues\";b:1;s:27:\"edit_published_tribe_venues\";b:1;s:19:\"delete_tribe_venues\";b:1;s:29:\"delete_published_tribe_venues\";b:1;s:20:\"publish_tribe_venues\";b:1;s:21:\"edit_tribe_organizers\";b:1;s:31:\"edit_published_tribe_organizers\";b:1;s:23:\"delete_tribe_organizers\";b:1;s:33:\"delete_published_tribe_organizers\";b:1;s:24:\"publish_tribe_organizers\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:23:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:23:\"edit_aggregator-records\";b:1;s:25:\"delete_aggregator-records\";b:1;s:15:\"manage_bookings\";b:1;s:19:\"upload_event_images\";b:1;s:13:\"delete_events\";b:1;s:11:\"edit_events\";b:1;s:19:\"read_private_events\";b:1;s:23:\"delete_recurring_events\";b:1;s:21:\"edit_recurring_events\";b:1;s:14:\"edit_locations\";b:1;s:22:\"read_private_locations\";b:1;s:21:\"read_others_locations\";b:1;s:17:\"edit_tribe_events\";b:1;s:19:\"delete_tribe_events\";b:1;s:17:\"edit_tribe_venues\";b:1;s:19:\"delete_tribe_venues\";b:1;s:21:\"edit_tribe_organizers\";b:1;s:23:\"delete_tribe_organizers\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:4:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;s:22:\"read_private_locations\";b:1;s:19:\"read_private_events\";b:1;}}s:9:\"organizer\";a:2:{s:4:\"name\";s:9:\"Organizer\";s:12:\"capabilities\";a:3:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:0;s:12:\"delete_posts\";b:0;}}}','yes');
INSERT INTO `wp_options` VALUES (102,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (103,'user_count','1','no');
INSERT INTO `wp_options` VALUES (104,'widget_block','a:24:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}i:7;a:1:{s:7:\"content\";s:393:\"<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">A Motown Christmas is a powerful family-oriented show combining Motown’s greatest hits with everyone’s favorite holiday classics. This show features those famous Motown trademarks: dazzling choreography and unforgettable harmonies all performed in that memorable, soulful Motown style.​</p>\n<!-- /wp:paragraph -->\";}i:9;a:1:{s:7:\"content\";s:1308:\"<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":114,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"home-banner-img\"} -->\n<figure class=\"wp-block-image size-large home-banner-img\"><img src=\"http://motownchristmas.local/wp-content/uploads/2024/04/cid_F13674B2-2-copy-1024x534.png\" alt=\"\" class=\"wp-image-114\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"className\":\"home-banner-text\"} -->\n<div class=\"wp-block-column home-banner-text\"><!-- wp:heading {\"textAlign\":\"center\",\"level\":3,\"className\":\"home-banner-text\"} -->\n<h3 class=\"wp-block-heading has-text-align-center home-banner-text\">Starring</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"className\":\"banner-h2\"} -->\n<h2 class=\"wp-block-heading has-text-align-center banner-h2\">The Motortown All-Stars</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"level\":3} -->\n<h3 class=\"wp-block-heading has-text-align-center\">Featuring Former Members of the</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"className\":\"banner-h2\"} -->\n<h2 class=\"wp-block-heading has-text-align-center banner-h2\">Temptations Contours Miracles</h2>\n<!-- /wp:heading --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:10;a:1:{s:7:\"content\";s:259:\"<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"className\":\"home-button\"} -->\n<div class=\"wp-block-button home-button\"><a class=\"wp-block-button__link wp-element-button\">Tour Schedule</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\";}i:11;a:1:{s:7:\"content\";s:791:\"<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"className\":\"about-header-h2\"} -->\n<h2 class=\"wp-block-heading about-header-h2\">Meet The All-Stars</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"className\":\"about-header-p\"} -->\n<p class=\"about-header-p\">The Motortown All-Stars were assembled from a host of world class vocalists drawn from the ranks of Motown\'s most legendary groups and other classic groups, and features former members of Ali Woodson\'s Temptations, The Miracles, The Contours, and most recently the Dramatics. The show is jam-packed with impeccable harmonies, dazzling choreography, and those many Motown hits everyone loves.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:12;a:1:{s:7:\"content\";s:309:\"<!-- wp:image {\"id\":31,\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"className\":\"about-header-img\"} -->\n<figure class=\"wp-block-image size-full about-header-img\"><img src=\"http://motownchristmas.local/wp-content/uploads/2024/04/motown_christmas_logo.png\" alt=\"\" class=\"wp-image-31\"/></figure>\n<!-- /wp:image -->\";}i:13;a:1:{s:7:\"content\";s:258:\"<!-- wp:image {\"id\":132,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://motownchristmas.local/wp-content/uploads/2024/05/Charles-Franklin.jpg\" alt=\"\" class=\"wp-image-132\"/></figure>\n<!-- /wp:image -->\";}i:14;a:1:{s:7:\"content\";s:208:\"<!-- wp:paragraph {\"align\":\"center\",\"className\":\"about-performer-p\"} -->\n<p class=\"has-text-align-center about-performer-p\">Charles Franklin, formerly with Ali Woodson\'s Temptations</p>\n<!-- /wp:paragraph -->\";}i:15;a:1:{s:7:\"content\";s:256:\"<!-- wp:image {\"id\":133,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://motownchristmas.local/wp-content/uploads/2024/05/Danny-Friendly.jpg\" alt=\"\" class=\"wp-image-133\"/></figure>\n<!-- /wp:image -->\";}i:16;a:1:{s:7:\"content\";s:194:\"<!-- wp:paragraph {\"align\":\"center\",\"className\":\"about-performer-p\"} -->\n<p class=\"has-text-align-center about-performer-p\">Danny Friendly, former member of The Edsels</p>\n<!-- /wp:paragraph -->\";}i:17;a:1:{s:7:\"content\";s:251:\"<!-- wp:image {\"id\":134,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://motownchristmas.local/wp-content/uploads/2024/05/Glen-Raby.jpg\" alt=\"\" class=\"wp-image-134\"/></figure>\n<!-- /wp:image -->\";}i:18;a:1:{s:7:\"content\";s:248:\"<!-- wp:paragraph {\"align\":\"center\",\"className\":\"about-performer-p\"} -->\n<p class=\"has-text-align-center about-performer-p\">Glen Raby, Musical Director and former Musical Director of The Contours among other Motown groups</p>\n<!-- /wp:paragraph -->\";}i:19;a:1:{s:7:\"content\";s:250:\"<!-- wp:paragraph {\"align\":\"center\",\"className\":\"about-performer-p\"} -->\n<p class=\"has-text-align-center about-performer-p\">Leon Franklin - formerly of The Miracles, The Contours, and currently performing with The Dramatics</p>\n<!-- /wp:paragraph -->\";}i:20;a:1:{s:7:\"content\";s:255:\"<!-- wp:image {\"id\":135,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://motownchristmas.local/wp-content/uploads/2024/05/Leon-Franklin.jpg\" alt=\"\" class=\"wp-image-135\"/></figure>\n<!-- /wp:image -->\";}i:21;a:1:{s:7:\"content\";s:259:\"<!-- wp:image {\"id\":136,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://motownchristmas.local/wp-content/uploads/2024/05/Antonio-Dandridge.jpg\" alt=\"\" class=\"wp-image-136\"/></figure>\n<!-- /wp:image -->\";}i:22;a:1:{s:7:\"content\";s:170:\"<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Antonio Dandridge, godson of Martha Reeves and Detroit area performer</p>\n<!-- /wp:paragraph -->\";}i:23;a:1:{s:7:\"content\";s:256:\"<!-- wp:image {\"id\":133,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://motownchristmas.local/wp-content/uploads/2024/05/Danny-Friendly.jpg\" alt=\"\" class=\"wp-image-133\"/></figure>\n<!-- /wp:image -->\";}i:24;a:1:{s:7:\"content\";s:259:\"<!-- wp:image {\"id\":136,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://motownchristmas.local/wp-content/uploads/2024/05/Antonio-Dandridge.jpg\" alt=\"\" class=\"wp-image-136\"/></figure>\n<!-- /wp:image -->\";}i:25;a:1:{s:7:\"content\";s:220:\"<!-- wp:paragraph {\"align\":\"center\",\"className\":\"about-performer-p\"} -->\n<p class=\"has-text-align-center about-performer-p\">Antonio Dandridge, godson of Martha Reeves and Detroit area performer</p>\n<!-- /wp:paragraph -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'sidebars_widgets','a:12:{s:19:\"wp_inactive_widgets\";a:8:{i:0;s:8:\"block-21\";i:1;s:8:\"block-22\";i:2;s:8:\"block-15\";i:3;s:7:\"block-2\";i:4;s:7:\"block-3\";i:5;s:7:\"block-4\";i:6;s:7:\"block-5\";i:7;s:7:\"block-6\";}s:11:\"home-banner\";a:1:{i:0;s:7:\"block-9\";}s:9:\"home-text\";a:1:{i:0;s:7:\"block-7\";}s:18:\"home-below-content\";a:1:{i:0;s:8:\"block-10\";}s:16:\"about-header-img\";a:1:{i:0;s:8:\"block-12\";}s:12:\"about-header\";a:1:{i:0;s:8:\"block-11\";}s:11:\"performer-1\";a:2:{i:0;s:8:\"block-13\";i:1;s:8:\"block-14\";}s:11:\"performer-2\";a:2:{i:0;s:8:\"block-23\";i:1;s:8:\"block-16\";}s:11:\"performer-3\";a:2:{i:0;s:8:\"block-17\";i:1;s:8:\"block-18\";}s:11:\"performer-4\";a:2:{i:0;s:8:\"block-20\";i:1;s:8:\"block-19\";}s:11:\"performer-5\";a:2:{i:0;s:8:\"block-24\";i:1;s:8:\"block-25\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (106,'cron','a:11:{i:1715394793;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1715395111;a:5:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1715398333;a:1:{s:38:\"event_manager_check_for_expired_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1715398889;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1715398890;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1715400985;a:2:{s:24:\"tribe_common_log_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"tribe_daily_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1715401933;a:2:{s:33:\"event_manager_delete_old_previews\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:38:\"event_manager_clear_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1715425679;a:1:{s:30:\"tribe_schedule_transient_purge\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1715827111;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1715914398;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:5:\"6.4.3\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"query/style-rtl.css\";i:357;s:23:\"query/style-rtl.min.css\";i:358;s:15:\"query/style.css\";i:359;s:19:\"query/style.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}','yes');
INSERT INTO `wp_options` VALUES (123,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (124,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.5.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.5.3\";s:7:\"version\";s:5:\"6.5.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.5.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.5.3\";s:7:\"version\";s:5:\"6.5.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.4.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.4.4-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.4.4-partial-3.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.4.4-rollback-3.zip\";}s:7:\"current\";s:5:\"6.4.4\";s:7:\"version\";s:5:\"6.4.4\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:5:\"6.4.3\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1715394725;s:15:\"version_checked\";s:5:\"6.4.3\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (131,'theme_mods_twentytwentyfour','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1711683696;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (137,'_transient_health-check-site-status-result','{\"good\":14,\"recommended\":4,\"critical\":2}','yes');
INSERT INTO `wp_options` VALUES (143,'can_compress_scripts','1','yes');
INSERT INTO `wp_options` VALUES (154,'current_theme','Motown Christmas','yes');
INSERT INTO `wp_options` VALUES (155,'theme_mods_motownchristmas','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:25:\"motownchristmas_main_menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:32;}','yes');
INSERT INTO `wp_options` VALUES (156,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (159,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (199,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (222,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (233,'site_logo','32','yes');
INSERT INTO `wp_options` VALUES (248,'musicidb_options','a:6:{s:16:\"musicidb_api_key\";s:0:\"\";s:22:\"musicidb_api_connected\";i:0;s:28:\"musicidb_default_type_and_id\";s:0:\"\";s:26:\"musicidb_additional_venues\";s:0:\"\";s:27:\"musicidb_additional_artists\";s:0:\"\";s:21:\"musicidb_no_event_msg\";s:38:\"No events listed at the moment&hellip;\";}','yes');
INSERT INTO `wp_options` VALUES (251,'tribe_last_updated_option','1714604460.1036','yes');
INSERT INTO `wp_options` VALUES (255,'tribe_events_calendar_options','a:51:{s:8:\"did_init\";b:1;s:19:\"tribeEventsTemplate\";s:7:\"default\";s:16:\"tribeEnableViews\";a:1:{i:0;s:4:\"list\";}s:10:\"viewOption\";s:4:\"list\";s:14:\"schema-version\";s:5:\"6.3.6\";s:21:\"previous_ecp_versions\";a:1:{i:0;s:1:\"0\";}s:18:\"latest_ecp_version\";s:5:\"6.3.6\";s:18:\"dateWithYearFormat\";s:6:\"F j, Y\";s:24:\"recurrenceMaxMonthsAfter\";i:60;s:22:\"google_maps_js_api_key\";s:39:\"AIzaSyDNsicAsP6-VuGtAb1O9riI3oc_NOb7IOU\";s:39:\"last-update-message-the-events-calendar\";s:5:\"6.3.6\";s:13:\"opt-in-status\";b:1;s:25:\"ticket-enabled-post-types\";a:2:{i:0;s:12:\"tribe_events\";i:1;s:4:\"page\";}s:28:\"event-tickets-schema-version\";s:5:\"5.9.0\";s:31:\"previous_event_tickets_versions\";a:1:{i:0;s:1:\"0\";}s:28:\"latest_event_tickets_version\";s:5:\"5.9.0\";s:33:\"last-update-message-event-tickets\";s:5:\"5.9.0\";s:24:\"front_page_event_archive\";b:0;s:11:\"donate-link\";b:0;s:10:\"eventsSlug\";s:12:\"tourschedule\";s:15:\"singleEventSlug\";s:5:\"event\";s:20:\"showEventsInMainLoop\";b:0;s:23:\"enable_month_view_cache\";b:1;s:20:\"toggle_blocks_editor\";b:0;s:29:\"disable_metabox_custom_fields\";b:1;s:17:\"trash-past-events\";s:0:\"\";s:11:\"debugEvents\";b:0;s:15:\"stylesheet_mode\";s:5:\"tribe\";s:16:\"monthEventAmount\";s:1:\"3\";s:12:\"postsPerPage\";s:2:\"12\";s:12:\"showComments\";b:0;s:20:\"tribeDisableTribeBar\";b:1;s:21:\"dateWithoutYearFormat\";s:3:\"F j\";s:18:\"monthAndYearFormat\";s:3:\"F Y\";s:16:\"datepickerFormat\";s:1:\"1\";s:17:\"dateTimeSeparator\";s:4:\" at \";s:18:\"timeRangeSeparator\";s:3:\" - \";s:14:\"multiDayCutoff\";s:5:\"00:00\";s:32:\"tribe_events_timezones_show_zone\";b:0;s:26:\"tribe_events_timezone_mode\";s:5:\"event\";s:21:\"defaultCurrencySymbol\";s:1:\"$\";s:19:\"defaultCurrencyCode\";s:3:\"USD\";s:23:\"reverseCurrencyPosition\";b:0;s:15:\"embedGoogleMaps\";b:0;s:19:\"embedGoogleMapsZoom\";s:2:\"10\";s:21:\"tribeEventsBeforeHTML\";s:0:\"\";s:20:\"tribeEventsAfterHTML\";s:0:\"\";s:11:\"latest_date\";s:19:\"2024-11-08 23:59:59\";s:13:\"earliest_date\";s:19:\"2024-11-07 00:00:00\";s:21:\"earliest_date_markers\";a:1:{i:0;i:119;}s:19:\"latest_date_markers\";a:1:{i:0;i:121;}}','yes');
INSERT INTO `wp_options` VALUES (256,'action_scheduler_hybrid_store_demarkation','43','yes');
INSERT INTO `wp_options` VALUES (257,'schema-ActionScheduler_StoreSchema','7.0.1712895385','yes');
INSERT INTO `wp_options` VALUES (258,'schema-ActionScheduler_LoggerSchema','3.0.1712895385','yes');
INSERT INTO `wp_options` VALUES (261,'tribe_last_save_post','1714016100.0354','yes');
INSERT INTO `wp_options` VALUES (262,'widget_tribe-widget-events-list','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (263,'tec_timed_tec_custom_tables_v1_initialized','a:3:{s:3:\"key\";s:32:\"tec_custom_tables_v1_initialized\";s:5:\"value\";i:1;s:10:\"expiration\";i:1715481132;}','yes');
INSERT INTO `wp_options` VALUES (264,'tec_ct1_migration_state','a:3:{s:18:\"complete_timestamp\";N;s:5:\"phase\";s:22:\"migration-not-required\";s:19:\"preview_unsupported\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (265,'tec_ct1_events_table_schema_version','1.0.1','yes');
INSERT INTO `wp_options` VALUES (266,'tec_ct1_occurrences_table_schema_version','1.0.2','yes');
INSERT INTO `wp_options` VALUES (267,'stellarwp_telemetry_last_send','2024-05-11 02:32:00','yes');
INSERT INTO `wp_options` VALUES (268,'stellarwp_telemetry','a:2:{s:7:\"plugins\";a:2:{s:19:\"the-events-calendar\";a:2:{s:7:\"wp_slug\";s:43:\"the-events-calendar/the-events-calendar.php\";s:5:\"optin\";b:1;}s:13:\"event-tickets\";a:2:{s:7:\"wp_slug\";s:31:\"event-tickets/event-tickets.php\";s:5:\"optin\";b:1;}}s:5:\"token\";s:64:\"09ee77ec40ffe859c1d5d541c083677e5637202d68e5eebabecf56c5d3fd3c02\";}','yes');
INSERT INTO `wp_options` VALUES (269,'stellarwp_telemetry_the-events-calendar_show_optin','0','yes');
INSERT INTO `wp_options` VALUES (272,'tribe_last_generate_rewrite_rules','1714015392.2988','yes');
INSERT INTO `wp_options` VALUES (274,'action_scheduler_lock_async-request-runner','663ed8a52dd3e4.12179929|1715394785','no');
INSERT INTO `wp_options` VALUES (275,'tec_timed_tribe_supports_async_process','a:3:{s:3:\"key\";s:28:\"tribe_supports_async_process\";s:5:\"value\";N;s:10:\"expiration\";i:1715394744;}','yes');
INSERT INTO `wp_options` VALUES (277,'tec_timed_events_timezone_update_needed','a:3:{s:3:\"key\";s:29:\"events_timezone_update_needed\";s:5:\"value\";b:0;s:10:\"expiration\";i:1714100897;}','yes');
INSERT INTO `wp_options` VALUES (282,'_transient_timeout__tribe_admin_notices','1717200967','no');
INSERT INTO `wp_options` VALUES (283,'_transient__tribe_admin_notices','a:0:{}','no');
INSERT INTO `wp_options` VALUES (284,'stellarwp_telemetry_user_info','a:1:{s:4:\"user\";s:527:\"{\"name\":\"adamjalcantara\",\"email\":\"alcantaradevelopment@gmail.com\",\"plugin_slug\":\"the-events-calendar\",\"opt_in_text\":\"Hi, adamjalcantara! This is an invitation to help our StellarWP community. If you opt-in, some data about your usage of The Events Calendar and future StellarWP Products will be shared with our teams (so they can work their butts off to improve). We will also share some helpful info on WordPress, and our products from time to time. And if you skip this, that\\u2019s okay! Our products still work just fine.\"}\";}','no');
INSERT INTO `wp_options` VALUES (299,'tribe_events_cat_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (307,'stellarwp_telemetry_event-tickets_show_optin','0','yes');
INSERT INTO `wp_options` VALUES (309,'tribe_tickets_migrate_offset_','complete','no');
INSERT INTO `wp_options` VALUES (313,'_transient_em_get_event_listing_type-transient-version','1712896333','yes');
INSERT INTO `wp_options` VALUES (333,'event_listing_type_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (334,'_transient_em_get_event_listing_category-transient-version','1712896333','yes');
INSERT INTO `wp_options` VALUES (346,'event_listing_category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (353,'widget_widget_recent_events','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (354,'widget_widget_featured_events','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (355,'widget_widget_upcoming_events','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (356,'widget_widget_past_events','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (361,'wpem_retain_attachment','1','yes');
INSERT INTO `wp_options` VALUES (363,'wpem_email_from_name','','yes');
INSERT INTO `wp_options` VALUES (364,'wpem_email_from_address','','yes');
INSERT INTO `wp_options` VALUES (373,'event_manager_enable_event_ticket_prices_filter','0','yes');
INSERT INTO `wp_options` VALUES (405,'_transient_get_event_listings-transient-version','1712962269','yes');
INSERT INTO `wp_options` VALUES (420,'dbem_flush_needed','0','yes');
INSERT INTO `wp_options` VALUES (421,'widget_em_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (422,'widget_em_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (423,'dbem_events_page','51','yes');
INSERT INTO `wp_options` VALUES (424,'dbem_locations_page','52','yes');
INSERT INTO `wp_options` VALUES (425,'dbem_categories_page','53','yes');
INSERT INTO `wp_options` VALUES (426,'dbem_tags_page','54','yes');
INSERT INTO `wp_options` VALUES (427,'dbem_my_bookings_page','55','yes');
INSERT INTO `wp_options` VALUES (428,'dbem_hello_to_user','1','yes');
INSERT INTO `wp_options` VALUES (429,'dbem_data','a:2:{s:13:\"admin_notices\";a:1:{s:5:\"hello\";i:0;}s:12:\"admin-modals\";a:1:{s:12:\"review-nudge\";i:1714106170;}}','no');
INSERT INTO `wp_options` VALUES (430,'dbem_admin_notices','a:1:{s:5:\"hello\";a:4:{s:4:\"name\";s:5:\"hello\";s:4:\"what\";s:7:\"success\";s:5:\"where\";s:3:\"all\";s:7:\"message\";s:428:\"<p>Events Manager is ready to go! It is highly recommended you read the <a href=\'https://wp-events-plugin.com/documentation/getting-started-guide/?utm_source=em&utm_medium=plugin&utm_content=installationlink&utm_campaign=plugin_links\'>Getting Started</a> guide on our site, as well as checking out the <a href=\'http://motownchristmas.local/wp-admin/edit.php?post_type=event&amp;page=events-manager-options\'>Settings Page</a></p>\";}}','no');
INSERT INTO `wp_options` VALUES (431,'dbem_time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (432,'dbem_date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (433,'dbem_date_format_js','dd/mm/yy','yes');
INSERT INTO `wp_options` VALUES (434,'dbem_datepicker_format','Y-m-d','yes');
INSERT INTO `wp_options` VALUES (435,'dbem_dates_separator',' - ','yes');
INSERT INTO `wp_options` VALUES (436,'dbem_dates_range_double_inputs','0','yes');
INSERT INTO `wp_options` VALUES (437,'dbem_times_separator',' - ','yes');
INSERT INTO `wp_options` VALUES (438,'dbem_default_category','-1','yes');
INSERT INTO `wp_options` VALUES (439,'dbem_default_location','0','yes');
INSERT INTO `wp_options` VALUES (440,'dbem_events_default_orderby','event_start_date,event_start_time,event_name','yes');
INSERT INTO `wp_options` VALUES (441,'dbem_events_default_order','ASC','yes');
INSERT INTO `wp_options` VALUES (442,'dbem_events_default_limit','10','yes');
INSERT INTO `wp_options` VALUES (443,'dbem_search_form_main','1','yes');
INSERT INTO `wp_options` VALUES (444,'dbem_search_form_responsive','multi-line','yes');
INSERT INTO `wp_options` VALUES (445,'dbem_search_form_sorting','1','yes');
INSERT INTO `wp_options` VALUES (446,'dbem_search_form_cookies','','yes');
INSERT INTO `wp_options` VALUES (447,'dbem_search_form_submit','Search','yes');
INSERT INTO `wp_options` VALUES (448,'dbem_search_form_views','a:5:{i:0;s:4:\"list\";i:1;s:12:\"list-grouped\";i:2;s:4:\"grid\";i:3;s:3:\"map\";i:4;s:8:\"calendar\";}','yes');
INSERT INTO `wp_options` VALUES (449,'dbem_search_form_view','list','yes');
INSERT INTO `wp_options` VALUES (450,'dbem_search_form_saved_searches','1','yes');
INSERT INTO `wp_options` VALUES (451,'dbem_search_form_advanced','1','yes');
INSERT INTO `wp_options` VALUES (452,'dbem_search_form_advanced_mode','modal','yes');
INSERT INTO `wp_options` VALUES (453,'dbem_search_form_advanced_style','headings','yes');
INSERT INTO `wp_options` VALUES (454,'dbem_search_form_advanced_hidden','1','yes');
INSERT INTO `wp_options` VALUES (455,'dbem_search_form_advanced_trigger','1','yes');
INSERT INTO `wp_options` VALUES (456,'dbem_search_form_advanced_show','Show Advanced Search','yes');
INSERT INTO `wp_options` VALUES (457,'dbem_search_form_advanced_hide','Hide Advanced Search','yes');
INSERT INTO `wp_options` VALUES (458,'dbem_search_form_text','1','yes');
INSERT INTO `wp_options` VALUES (459,'dbem_search_form_text_label','Search','yes');
INSERT INTO `wp_options` VALUES (460,'dbem_search_form_text_advanced','1','yes');
INSERT INTO `wp_options` VALUES (461,'dbem_search_form_text_label_advanced','Search','yes');
INSERT INTO `wp_options` VALUES (462,'dbem_search_form_text_hide_s','0','yes');
INSERT INTO `wp_options` VALUES (463,'dbem_search_form_text_hide_m','0','yes');
INSERT INTO `wp_options` VALUES (464,'dbem_search_form_geo','1','yes');
INSERT INTO `wp_options` VALUES (465,'dbem_search_form_geo_label','Near...','yes');
INSERT INTO `wp_options` VALUES (466,'dbem_search_form_geo_hide_s','0','yes');
INSERT INTO `wp_options` VALUES (467,'dbem_search_form_geo_hide_m','0','yes');
INSERT INTO `wp_options` VALUES (468,'dbem_search_form_geo_advanced','1','yes');
INSERT INTO `wp_options` VALUES (469,'dbem_search_form_geo_label_advanced','Near...','yes');
INSERT INTO `wp_options` VALUES (470,'dbem_search_form_geo_units','1','yes');
INSERT INTO `wp_options` VALUES (471,'dbem_search_form_geo_units_label','Within','yes');
INSERT INTO `wp_options` VALUES (472,'dbem_search_form_geo_unit_default','mi','yes');
INSERT INTO `wp_options` VALUES (473,'dbem_search_form_geo_distance_default','25','yes');
INSERT INTO `wp_options` VALUES (474,'dbem_search_form_geo_distance_options','5,10,25,50,100','yes');
INSERT INTO `wp_options` VALUES (475,'dbem_search_form_dates','1','yes');
INSERT INTO `wp_options` VALUES (476,'dbem_search_form_dates_label','Dates','yes');
INSERT INTO `wp_options` VALUES (477,'dbem_search_form_dates_hide_s','0','yes');
INSERT INTO `wp_options` VALUES (478,'dbem_search_form_dates_hide_m','0','yes');
INSERT INTO `wp_options` VALUES (479,'dbem_search_form_dates_separator','and','yes');
INSERT INTO `wp_options` VALUES (480,'dbem_search_form_dates_format','M j','yes');
INSERT INTO `wp_options` VALUES (481,'dbem_search_form_dates_advanced','1','yes');
INSERT INTO `wp_options` VALUES (482,'dbem_search_form_dates_label_advanced','Dates','yes');
INSERT INTO `wp_options` VALUES (483,'dbem_search_form_dates_separator_advanced','and','yes');
INSERT INTO `wp_options` VALUES (484,'dbem_search_form_dates_format_advanced','M j','yes');
INSERT INTO `wp_options` VALUES (485,'dbem_search_form_categories','1','yes');
INSERT INTO `wp_options` VALUES (486,'dbem_search_form_categories_label','All Categories','yes');
INSERT INTO `wp_options` VALUES (487,'dbem_search_form_category_label','Categories','yes');
INSERT INTO `wp_options` VALUES (488,'dbem_search_form_categories_placeholder','Search Categories...','yes');
INSERT INTO `wp_options` VALUES (489,'dbem_search_form_categories_include','','yes');
INSERT INTO `wp_options` VALUES (490,'dbem_search_form_categories_exclude','','yes');
INSERT INTO `wp_options` VALUES (491,'dbem_search_form_tags','1','yes');
INSERT INTO `wp_options` VALUES (492,'dbem_search_form_tags_label','All Tags','yes');
INSERT INTO `wp_options` VALUES (493,'dbem_search_form_tag_label','Tags','yes');
INSERT INTO `wp_options` VALUES (494,'dbem_search_form_tags_placeholder','Search Tags...','yes');
INSERT INTO `wp_options` VALUES (495,'dbem_search_form_tags_include','','yes');
INSERT INTO `wp_options` VALUES (496,'dbem_search_form_tags_exclude','','yes');
INSERT INTO `wp_options` VALUES (497,'dbem_search_form_countries','1','yes');
INSERT INTO `wp_options` VALUES (498,'dbem_search_form_default_country','0','yes');
INSERT INTO `wp_options` VALUES (499,'dbem_search_form_countries_label','All Countries','yes');
INSERT INTO `wp_options` VALUES (500,'dbem_search_form_country_label','Country','yes');
INSERT INTO `wp_options` VALUES (501,'dbem_search_form_regions','1','yes');
INSERT INTO `wp_options` VALUES (502,'dbem_search_form_regions_label','All Regions','yes');
INSERT INTO `wp_options` VALUES (503,'dbem_search_form_region_label','Region','yes');
INSERT INTO `wp_options` VALUES (504,'dbem_search_form_states','1','yes');
INSERT INTO `wp_options` VALUES (505,'dbem_search_form_states_label','All States','yes');
INSERT INTO `wp_options` VALUES (506,'dbem_search_form_state_label','State/County','yes');
INSERT INTO `wp_options` VALUES (507,'dbem_search_form_towns','0','yes');
INSERT INTO `wp_options` VALUES (508,'dbem_search_form_towns_label','All Cities/Towns','yes');
INSERT INTO `wp_options` VALUES (509,'dbem_search_form_town_label','City/Town','yes');
INSERT INTO `wp_options` VALUES (510,'dbem_events_form_editor','1','yes');
INSERT INTO `wp_options` VALUES (511,'dbem_events_form_reshow','1','yes');
INSERT INTO `wp_options` VALUES (512,'dbem_events_form_result_success','You have successfully submitted your event, which will be published pending approval.','yes');
INSERT INTO `wp_options` VALUES (513,'dbem_events_form_result_success_updated','You have successfully updated your event, which will be republished pending approval.','yes');
INSERT INTO `wp_options` VALUES (514,'dbem_events_anonymous_submissions','0','yes');
INSERT INTO `wp_options` VALUES (515,'dbem_events_anonymous_user','1','yes');
INSERT INTO `wp_options` VALUES (516,'dbem_events_anonymous_result_success','You have successfully submitted your event, which will be published pending approval.','yes');
INSERT INTO `wp_options` VALUES (517,'dbem_event_submitted_email_admin','','yes');
INSERT INTO `wp_options` VALUES (518,'dbem_event_submitted_email_subject','Submitted Event Awaiting Approval','yes');
INSERT INTO `wp_options` VALUES (519,'dbem_event_submitted_email_body','A new event has been submitted by #_CONTACTNAME.\r\n\r\nName : #_EVENTNAME \r\n\r\nDate : #_EVENTDATES \r\n\r\nTime : #_EVENTTIMES \r\n\r\nPlease visit http://motownchristmas.local/wp-admin/post.php?action=edit&amp;post=#_EVENTPOSTID to review this event for approval.\r\n\r\n\r\n-------------------------------\r\n\r\nPowered by Events Manager - http://wp-events-plugin.com','yes');
INSERT INTO `wp_options` VALUES (520,'dbem_event_resubmitted_email_subject','Re-Submitted Event Awaiting Approval','yes');
INSERT INTO `wp_options` VALUES (521,'dbem_event_resubmitted_email_body','A previously published event has been modified by #_CONTACTNAME, and this event is now unpublished and pending your approval.\r\n\r\nName : #_EVENTNAME \r\n\r\nDate : #_EVENTDATES \r\n\r\nTime : #_EVENTTIMES \r\n\r\nPlease visit http://motownchristmas.local/wp-admin/post.php?action=edit&amp;post=#_EVENTPOSTID to review this event for approval.\r\n\r\n\r\n-------------------------------\r\n\r\nPowered by Events Manager - http://wp-events-plugin.com','yes');
INSERT INTO `wp_options` VALUES (522,'dbem_event_published_email_subject','Published Event - #_EVENTNAME','yes');
INSERT INTO `wp_options` VALUES (523,'dbem_event_published_email_body','A new event has been published by #_CONTACTNAME.\r\n\r\nName : #_EVENTNAME \r\n\r\nDate : #_EVENTDATES \r\n\r\nTime : #_EVENTTIMES \r\n\r\nEdit this event - http://motownchristmas.local/wp-admin/post.php?action=edit&amp;post=#_EVENTPOSTID \r\n\r\n View this event - #_EVENTURL\r\n\r\n\r\n-------------------------------\r\n\r\nPowered by Events Manager - http://wp-events-plugin.com','yes');
INSERT INTO `wp_options` VALUES (524,'dbem_event_approved_email_subject','Event Approved - #_EVENTNAME','yes');
INSERT INTO `wp_options` VALUES (525,'dbem_event_approved_email_body','Dear #_CONTACTNAME\r\n\r\nYour event #_EVENTNAME on #_EVENTDATES has been approved.\r\n\r\n{not_recurring}You can view your event here: #_EVENTURL{/not_recurring}\r\n\r\n\r\n-------------------------------\r\n\r\nPowered by Events Manager - http://wp-events-plugin.com','yes');
INSERT INTO `wp_options` VALUES (526,'dbem_event_reapproved_email_subject','Event Approved - #_EVENTNAME','yes');
INSERT INTO `wp_options` VALUES (527,'dbem_event_reapproved_email_body','Dear #_CONTACTNAME\r\n\r\nYour event #_EVENTNAME on #_EVENTDATES has been approved.\r\n\r\n{not_recurring}You can view your event here: #_EVENTURL{/not_recurring}\r\n\r\n\r\n-------------------------------\r\n\r\nPowered by Events Manager - http://wp-events-plugin.com','yes');
INSERT INTO `wp_options` VALUES (528,'dbem_events_page_title','Events','yes');
INSERT INTO `wp_options` VALUES (529,'dbem_events_page_scope','future','yes');
INSERT INTO `wp_options` VALUES (530,'dbem_events_page_search_form','1','yes');
INSERT INTO `wp_options` VALUES (531,'dbem_event_list_item_format_header','','no');
INSERT INTO `wp_options` VALUES (532,'dbem_event_list_item_format','<div class=\"em-event em-item {is_cancelled}em-event-cancelled{/is_cancelled}\" style=\"--default-border:#_CATEGORYCOLOR\">\r\n	<div class=\"em-item-image {no_image}has-placeholder{/no_image}\">\r\n		{has_image}\r\n		#_EVENTIMAGE{medium}\r\n		{/has_image}\r\n		{no_image}\r\n		<div class=\"em-item-image-placeholder\">\r\n			<div class=\"date\">\r\n				<span class=\"day\">#d</span>\r\n				<span class=\"month\">#M</span>\r\n			</div>\r\n		</div>\r\n		{/no_image}\r\n	</div>\r\n	<div class=\"em-item-info\">\r\n		<h3 class=\"em-item-title\">#_EVENTLINK</h3>\r\n		{is_cancelled}\r\n		<div class=\"em-event-cancelled em-notice em-notice-error em-notice-thin em-notice-icon\">\r\n			<span class=\"em-icon em-icon-cross-circle\"></span>\r\n			This event has been cancelled.		</div>\r\n		{/is_cancelled}\r\n		<div class=\"em-event-meta em-item-meta\">\r\n			<div class=\"em-item-meta-line em-event-date em-event-meta-datetime\">\r\n				<span class=\"em-icon-calendar em-icon\"></span>\r\n				#_EVENTDATES    \r\n			</div>\r\n			<div class=\"em-item-meta-line em-event-time em-event-meta-datetime\">\r\n				<span class=\"em-icon-clock em-icon\"></span>\r\n				#_EVENTTIMES\r\n			</div>\r\n			{bookings_open}\r\n			<div class=\"em-item-meta-line em-event-prices\">\r\n				<span class=\"em-icon-ticket em-icon\"></span>\r\n				#_EVENTPRICERANGE\r\n			</div>\r\n			{/bookings_open}\r\n			{has_location_venue}\r\n			<div class=\"em-item-meta-line em-event-location\">\r\n				<span class=\"em-icon-location em-icon\"></span>\r\n				#_LOCATIONLINK\r\n			</div>\r\n			{/has_location_venue}\r\n			{has_event_location}\r\n			<div class=\"em-item-meta-line em-event-location\">\r\n				<span class=\"em-icon-at em-icon\"></span>\r\n				#_EVENTLOCATION\r\n			</div>\r\n			{/has_event_location}\r\n			{has_category}\r\n			<div class=\"em-item-meta-line em-item-taxonomy em-event-categories\">\r\n				<span class=\"em-icon-category em-icon\"></span>\r\n				<div>#_EVENTCATEGORIES</div>\r\n			</div>\r\n			{/has_category}\r\n			{has_tag}\r\n			<div class=\"em-item-meta-line em-item-taxonomy em-event-tags\">\r\n				<span class=\"em-icon-tag em-icon\"></span>\r\n				<div>#_EVENTTAGS</div>\r\n			</div>\r\n			{/has_tag}\r\n		</div>\r\n		<div class=\"em-item-desc\">\r\n			#_EVENTEXCERPT{25}\r\n		</div>\r\n		<div class=\"em-item-actions input\">\r\n			<a class=\"em-item-read-more button\" href=\"#_EVENTURL\">More Info</a>\r\n			{bookings_open}\r\n			<a class=\"em-event-book-now button\" href=\"#_EVENTURL#em-event-booking-form\">\r\n				<span class=\"em-icon em-icon-ticket\"></span>\r\n				Book Now!			</a>\r\n			{/bookings_open}\r\n		</div>\r\n	</div>\r\n</div>','no');
INSERT INTO `wp_options` VALUES (533,'dbem_event_list_item_format_footer','','no');
INSERT INTO `wp_options` VALUES (534,'dbem_event_grid_item_format_header','','no');
INSERT INTO `wp_options` VALUES (535,'dbem_event_grid_item_format','<div class=\"em-event em-item\" data-href=\"#_EVENTURL\" style=\"--default-border:#_CATEGORYCOLOR\">\r\n	<div class=\"em-item-image {no_image}has-placeholder{/no_image}\">\r\n		<div class=\"em-item-image-wrapper\">\r\n			{has_image}\r\n			#_EVENTIMAGE{medium}\r\n			{/has_image}\r\n			{no_image}\r\n			<div class=\"em-item-image-placeholder\">\r\n				<div class=\"date\">\r\n					<span class=\"day\">#d</span>\r\n					<span class=\"month\">#M</span>\r\n				</div>\r\n			</div>\r\n			{/no_image}\r\n		</div>\r\n	</div>\r\n	<div class=\"em-item-info\">\r\n		<h3 class=\"em-item-title\">#_EVENTLINK</h3>\r\n		<div class=\"em-event-meta em-item-meta\">\r\n			<div class=\"em-item-meta-line em-event-date em-event-meta-datetime\">\r\n				<span class=\"em-icon-calendar em-icon\"></span>\r\n				#_EVENTDATES\r\n			</div>\r\n			<div class=\"em-item-meta-line em-event-time em-event-meta-datetime\">\r\n				<span class=\"em-icon-clock em-icon\"></span>\r\n				#_EVENTTIMES\r\n			</div>\r\n			{bookings_open}\r\n			<div class=\"em-item-meta-line em-event-prices\">\r\n				<span class=\"em-icon-ticket em-icon\"></span>\r\n				#_EVENTPRICERANGE\r\n			</div>\r\n			{/bookings_open}\r\n			{has_location_venue}\r\n			<div class=\"em-item-meta-line em-event-location\">\r\n				<span class=\"em-icon-location em-icon\"></span>\r\n				#_LOCATIONLINK\r\n			</div>\r\n			{/has_location_venue}\r\n			{has_event_location}\r\n			<div class=\"em-item-meta-line em-event-location\">\r\n				<span class=\"em-icon-at em-icon\"></span>\r\n				#_EVENTLOCATION\r\n			</div>\r\n			{/has_event_location}\r\n		</div>\r\n	</div>\r\n</div>','no');
INSERT INTO `wp_options` VALUES (536,'dbem_event_grid_item_format_footer','','no');
INSERT INTO `wp_options` VALUES (537,'dbem_event_grid_item_width','250','yes');
INSERT INTO `wp_options` VALUES (538,'dbem_event_list_groupby','monthly','yes');
INSERT INTO `wp_options` VALUES (539,'dbem_event_list_groupby_format','F Y','yes');
INSERT INTO `wp_options` VALUES (540,'dbem_event_list_groupby_header_format','<h2>#s</h2>','yes');
INSERT INTO `wp_options` VALUES (541,'dbem_display_calendar_in_events_page','0','yes');
INSERT INTO `wp_options` VALUES (542,'dbem_single_event_format','<section class=\"em-item-header\" style=\"--default-border:#_CATEGORYCOLOR\">\r\n	{has_image}\r\n	<div class=\"em-item-image {no_image}has-placeholder{/no_image}\">\r\n		#_EVENTIMAGE{medium}\r\n	</div>\r\n	{/has_image}\r\n	{is_cancelled}\r\n	<div class=\"em-event-cancelled em-notice em-notice-error em-notice-icon\">\r\n		<span class=\"em-icon em-icon-cross-circle\"></span>\r\n		This event has been cancelled.	</div>\r\n	{/is_cancelled}\r\n	<div class=\"em-item-meta\">\r\n		<section class=\"em-item-meta-column\">\r\n			<section class=\"em-event-when\">\r\n				<h3>When</h3>\r\n				<div class=\"em-item-meta-line em-event-date em-event-meta-datetime\">\r\n					<span class=\"em-icon-calendar em-icon\"></span>\r\n					#_EVENTDATES    \r\n				</div>\r\n				<div class=\"em-item-meta-line em-event-time em-event-meta-datetime\">\r\n					<span class=\"em-icon-clock em-icon\"></span>\r\n					#_EVENTTIMES\r\n				</div>\r\n				#_EVENTADDTOCALENDAR\r\n			</section>\r\n	\r\n			{has_bookings}\r\n			<section class=\"em-event-bookings-meta\">\r\n				<h3>Bookings</h3>\r\n				{bookings_open}\r\n				<div class=\"em-item-meta-line em-event-prices\">\r\n					<span class=\"em-icon-ticket em-icon\"></span>\r\n					#_EVENTPRICERANGE\r\n				</div>\r\n				<a href=\"#em-event-booking-form\" class=\"button input with-icon-right\">\r\n										<span class=\"em-icon-ticket em-icon\"></span>\r\n				</a>\r\n				{/bookings_open}\r\n				{bookings_closed}\r\n				<div class=\"em-item-meta-line em-event-prices\">\r\n					<span class=\"em-icon-ticket em-icon\"></span>\r\n					Bookings closed				</div>\r\n				{/bookings_closed}\r\n			</section>\r\n			{/has_bookings}\r\n		</section>\r\n\r\n		<section class=\"em-item-meta-column\">\r\n			{has_location_venue}\r\n			<section class=\"em-event-where\">\r\n				<h3>Where</h3>\r\n				<div class=\"em-item-meta-line em-event-location\">\r\n					<span class=\"em-icon-location em-icon\"></span>\r\n					<div>\r\n						#_LOCATIONLINK<br>\r\n						#_LOCATIONFULLLINE\r\n					</div>\r\n				</div>\r\n			</section>\r\n			{/has_location_venue}\r\n			{has_event_location}\r\n			<section class=\"em-event-where\">\r\n				<h3>Where</h3>\r\n				<div class=\"em-item-meta-line em-event-location\">\r\n					<span class=\"em-icon-at em-icon\"></span>\r\n					#_EVENTLOCATION\r\n				</div>\r\n			</section>\r\n			{/has_event_location}\r\n			\r\n			{has_taxonomy}\r\n			<section class=\"em-item-taxonomies\">\r\n				<h3>Event Type</h3>\r\n				{has_category}\r\n				<div class=\"em-item-meta-line em-item-taxonomy em-event-categories\">\r\n					<span class=\"em-icon-category em-icon\"></span>\r\n					<div>#_EVENTCATEGORIES</div>\r\n				</div>\r\n				{/has_category}\r\n				{has_tag}\r\n				<div class=\"em-item-meta-line em-item-taxonomy em-event-tags\">\r\n					<span class=\"em-icon-tag em-icon\"></span>\r\n					<div>#_EVENTTAGS</div>\r\n				</div>\r\n				{/has_tag}\r\n			</section>\r\n			{/has_taxonomy}\r\n		</section>\r\n	</div>\r\n</section>\r\n{has_location_venue}\r\n<section class=\"em-event-location\">\r\n	#_LOCATIONMAP{100%,0}\r\n</section>\r\n{/has_location_venue}\r\n<section class=\"em-event-content\">\r\n	#_EVENTNOTES\r\n</section>\r\n{has_bookings}\r\n<section class=\"em-event-bookings\">\r\n	<a name=\"em-event-booking-form\"></a>\r\n	<h2>Bookings</h2>\r\n	#_BOOKINGFORM\r\n</section>\r\n{/has_bookings}','no');
INSERT INTO `wp_options` VALUES (543,'dbem_event_excerpt_format','#_EVENTDATES @ #_EVENTTIMES - #_EVENTEXCERPT','no');
INSERT INTO `wp_options` VALUES (544,'dbem_event_excerpt_alt_format','#_EVENTDATES @ #_EVENTTIMES - #_EVENTEXCERPT{55}','no');
INSERT INTO `wp_options` VALUES (545,'dbem_event_page_title_format','#_EVENTNAME','yes');
INSERT INTO `wp_options` VALUES (546,'dbem_event_all_day_message','All Day','yes');
INSERT INTO `wp_options` VALUES (547,'dbem_no_events_message','No Events','yes');
INSERT INTO `wp_options` VALUES (548,'dbem_locations_default_orderby','location_name','yes');
INSERT INTO `wp_options` VALUES (549,'dbem_locations_default_order','ASC','yes');
INSERT INTO `wp_options` VALUES (550,'dbem_locations_default_limit','10','yes');
INSERT INTO `wp_options` VALUES (551,'dbem_locations_page_title','Event Locations','yes');
INSERT INTO `wp_options` VALUES (552,'dbem_locations_page_search_form','1','yes');
INSERT INTO `wp_options` VALUES (553,'dbem_no_locations_message','No Locations','yes');
INSERT INTO `wp_options` VALUES (554,'dbem_location_default_country','0','yes');
INSERT INTO `wp_options` VALUES (555,'dbem_location_list_item_format_header','','no');
INSERT INTO `wp_options` VALUES (556,'dbem_location_list_item_format','<div class=\"em-location em-item\">\r\n	<div class=\"em-item-image {no_loc_image}has-placeholder{/no_loc_image}\">\r\n		{has_loc_image}\r\n		<a href=\"#_LOCATIONURL\">#_LOCATIONIMAGE{medium}</a>\r\n		{/has_loc_image}\r\n		{no_loc_image}\r\n		<a href=\"#_LOCATIONURL\" class=\"em-item-image-placeholder\"></a>\r\n		{/no_loc_image}\r\n	</div>\r\n	<div class=\"em-item-info\">\r\n		<h3 class=\"em-item-title\">#_LOCATIONLINK</h3>\r\n		<div class=\"em-event-meta em-item-meta\">\r\n			<div class=\"em-item-meta-line em-location-address\">\r\n				<span class=\"em-icon-location em-icon\"></span>\r\n				#_LOCATIONFULLBR\r\n			</div>\r\n			{has_events}\r\n			<div class=\"em-item-meta-line em-location-events\">\r\n				<span class=\"em-icon-calendar em-icon\"></span>\r\n				<div>\r\n					<p>Next Event</p>\r\n					<p>#_LOCATIONNEXTEVENT</p>\r\n					<p><a href=\"#_LOCATIONURL\">See All</a></p>\r\n				</div>\r\n			</div>\r\n			{/has_events}\r\n			{no_events}\r\n			<div class=\"em-item-meta-line em-location-no-events\">\r\n				<span class=\"em-icon-calendar em-icon\"></span>\r\n				<div>No upcoming events</p></div>\r\n			</div>\r\n			{/no_events}\r\n		</div>\r\n		<div class=\"em-item-desc\">\r\n			#_LOCATIONEXCERPT{25}\r\n		</div>\r\n		<div class=\"em-item-actions input\">\r\n			<a class=\"em-item-read-more button\" href=\"#_LOCATIONURL\">More Info</a>\r\n		</div>\r\n	</div>\r\n</div>','no');
INSERT INTO `wp_options` VALUES (557,'dbem_location_list_item_format_footer','','no');
INSERT INTO `wp_options` VALUES (558,'dbem_location_grid_item_format_header','','no');
INSERT INTO `wp_options` VALUES (559,'dbem_location_grid_item_format','<div class=\"em-location em-item\" data-href=\"#_LOCATIONURL\">\r\n	<div class=\"em-item-image {no_loc_image}has-placeholder{/no_loc_image}\">\r\n		<div class=\"em-item-image-wrapper\">\r\n			{has_loc_image}\r\n			#_LOCATIONIMAGE{medium}\r\n			{/has_loc_image}\r\n			{no_loc_image}\r\n			<div class=\"em-item-image-placeholder\"></div>\r\n			{/no_loc_image}\r\n		</div>\r\n	</div>\r\n	<div class=\"em-item-info\">\r\n		<h3 class=\"em-item-title\">#_LOCATIONLINK</h3>\r\n		<div class=\"em-event-meta em-item-meta\">\r\n			<div class=\"em-item-meta-line em-location-address\">\r\n				<span class=\"em-icon-location em-icon\"></span>\r\n				#_LOCATIONFULLBR\r\n			</div>\r\n			{has_events}\r\n			<div class=\"em-item-meta-line em-location-events\">\r\n				<span class=\"em-icon-calendar em-icon\"></span>\r\n				<div>\r\n					<p>Next Event</p>\r\n					<p>#_LOCATIONNEXTEVENT</p>\r\n					<p><a href=\"#_LOCATIONURL\">See All</a></p>\r\n				</div>\r\n			</div>\r\n			{/has_events}\r\n			{no_events}\r\n			<div class=\"em-item-meta-line em-location-no-events\">\r\n				<span class=\"em-icon-calendar em-icon\"></span>\r\n				<div>No upcoming events</p></div>\r\n			</div>\r\n			{/no_events}\r\n		</div>\r\n	</div>\r\n</div>','no');
INSERT INTO `wp_options` VALUES (560,'dbem_location_grid_item_format_footer','','no');
INSERT INTO `wp_options` VALUES (561,'dbem_location_grid_item_width','250','yes');
INSERT INTO `wp_options` VALUES (562,'dbem_location_page_title_format','#_LOCATIONNAME','yes');
INSERT INTO `wp_options` VALUES (563,'dbem_single_location_format','<section class=\"em-item-header\">\r\n	{has_loc_image}\r\n	<div class=\"em-item-image\">\r\n		#_LOCATIONIMAGE{medium}\r\n	</div>\r\n	{/has_loc_image}\r\n	<div class=\"em-item-meta\">\r\n		<section class=\"em-item-meta-column\">\r\n			<section class=\"em-location-where\">\r\n				<h3>Location</h3>\r\n				<div class=\"em-item-meta-line em-location-address\">\r\n					<span class=\"em-icon-location em-icon\"></span>\r\n					#_LOCATIONFULLBR\r\n				</div>\r\n			</section>\r\n			{no_loc_image}\r\n		</section>\r\n		<section class=\"em-item-meta-column\">\r\n			{/no_loc_image}\r\n			<section class=\"em-location-next-event\">\r\n				<h3>Next Event</h3>\r\n				{has_events}\r\n				<div class=\"em-item-meta-line em-location-events\">\r\n					<span class=\"em-icon-calendar em-icon\"></span>\r\n					<div>#_LOCATIONNEXTEVENT</div>\r\n				</div>\r\n				{/has_events}\r\n				{no_events}\r\n				<div class=\"em-item-meta-line em-location-no-events\">\r\n					<span class=\"em-icon-calendar em-icon\"></span>\r\n					<div>No upcoming events</div>\r\n				</div>\r\n				{/no_events}\r\n			</section>\r\n		</section>\r\n	</div>\r\n</section>\r\n<section class=\"em-location-section-map\">\r\n	#_LOCATIONMAP{100%,0}\r\n</section>\r\n<section class=\"em-location-content\">\r\n	#_LOCATIONNOTES\r\n</section>\r\n<section class=\"em-location-events\">\r\n	<a name=\"upcoming-events\"></a>\r\n	<h3>Upcoming Events</h3>\r\n	#_LOCATIONNEXTEVENTS\r\n</section>','no');
INSERT INTO `wp_options` VALUES (564,'dbem_location_excerpt_format','#_LOCATIONEXCERPT','no');
INSERT INTO `wp_options` VALUES (565,'dbem_location_excerpt_alt_format','#_LOCATIONEXCERPT{55}','no');
INSERT INTO `wp_options` VALUES (566,'dbem_location_no_events_message','No events in this location','yes');
INSERT INTO `wp_options` VALUES (567,'dbem_location_event_list_item_header_format','<ul>','no');
INSERT INTO `wp_options` VALUES (568,'dbem_location_event_list_item_format','<li>#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES</li>','no');
INSERT INTO `wp_options` VALUES (569,'dbem_location_event_list_item_footer_format','</ul>','no');
INSERT INTO `wp_options` VALUES (570,'dbem_location_event_list_limit','20','yes');
INSERT INTO `wp_options` VALUES (571,'dbem_location_event_list_orderby','event_start_date,event_start_time,event_name','yes');
INSERT INTO `wp_options` VALUES (572,'dbem_location_event_list_order','ASC','yes');
INSERT INTO `wp_options` VALUES (573,'dbem_location_event_single_format','#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES','yes');
INSERT INTO `wp_options` VALUES (574,'dbem_location_no_event_message','No events in this location','yes');
INSERT INTO `wp_options` VALUES (575,'dbem_categories_default_limit','10','yes');
INSERT INTO `wp_options` VALUES (576,'dbem_categories_default_orderby','name','yes');
INSERT INTO `wp_options` VALUES (577,'dbem_categories_default_order','ASC','yes');
INSERT INTO `wp_options` VALUES (578,'dbem_categories_list_item_format_header','','no');
INSERT INTO `wp_options` VALUES (579,'dbem_categories_list_item_format','<div class=\"em-item em-taxonomy em-category\" style=\"--default-border:#_CATEGORYCOLOR\">\r\n	<div class=\"em-item-image {no_image}has-placeholder{/no_image}\">\r\n		{has_image}\r\n		#_CATEGORYIMAGE{medium}\r\n		{/has_image}\r\n		{no_image}\r\n		<div class=\"em-item-image-placeholder\"></div>\r\n		{/no_image}\r\n	</div>\r\n	<div class=\"em-item-info\">\r\n		<h3 class=\"em-item-title\">#_CATEGORYLINK</h3>\r\n		<div class=\"em-event-meta em-item-meta\">\r\n			{has_events}\r\n			<div class=\"em-item-meta-line em-taxonomy-events em-category-events\">\r\n				<span class=\"em-icon-calendar em-icon\"></span>\r\n				<div>\r\n					<p>Next Event</p>\r\n					<p>#_CATEGORYNEXTEVENT</p>\r\n					<p><a href=\"#_CATEGORYURL\">See All</a></p>\r\n				</div>\r\n			</div>\r\n			{/has_events}\r\n			{no_events}\r\n			<div class=\"em-item-meta-line em-taxonomy-no-events em-category-no-events\">\r\n				<span class=\"em-icon-calendar em-icon\"></span>\r\n				<div>No upcoming events</div>\r\n			</div>\r\n			{/no_events}\r\n		</div>\r\n		<div class=\"em-item-desc\">\r\n			#_CATEGORYEXCERPT{25}\r\n		</div>\r\n		<div class=\"em-item-actions input\">\r\n			<a class=\"em-item-read-more button\" href=\"#_CATEGORYURL\">More Info</a>\r\n		</div>\r\n	</div>\r\n</div>','no');
INSERT INTO `wp_options` VALUES (580,'dbem_categories_list_item_format_footer','','no');
INSERT INTO `wp_options` VALUES (581,'dbem_no_categories_message','No Categories','yes');
INSERT INTO `wp_options` VALUES (582,'dbem_category_page_title_format','#_CATEGORYNAME','yes');
INSERT INTO `wp_options` VALUES (583,'dbem_category_page_format','<section class=\"em-item-header\" style=\"--default-border:#_CATEGORYCOLOR\">\r\n	{has_image}\r\n	<div class=\"em-item-image\">\r\n		#_CATEGORYIMAGE{medium}\r\n	</div>\r\n	{/has_image}\r\n	<div class=\"em-item-meta\">\r\n		<section class=\"em-item-meta-column\">\r\n			<section class=\"em-location-next-event\">\r\n				<h3>Next Event</h3>\r\n				{has_events}\r\n				<div class=\"em-item-meta-line em-taxonomy-events em-category-events\">\r\n					<span class=\"em-icon-calendar em-icon\"></span>\r\n					<div>\r\n						<p>#_CATEGORYNEXTEVENT</p>\r\n						<p><a href=\"#upcoming-events\">See All</a></p>\r\n					</div>\r\n				</div>\r\n				{/has_events}\r\n				{no_events}\r\n				<div class=\"em-item-meta-line em-taxonomy-no-events em-category-no-events\">\r\n					<span class=\"em-icon-calendar em-icon\"></span>\r\n					<div>No upcoming events</p></div>\r\n				</div>\r\n				{/no_events}\r\n			</section>\r\n			{no_loc_image}\r\n		</section>\r\n		<section class=\"em-item-meta-column\">\r\n			{/no_loc_image}\r\n			<section class=\"em-taxonomy-description\">\r\n				<h3>Description</h3>\r\n				#_CATEGORYDESCRIPTION\r\n			</section>\r\n		</section>\r\n	</div>\r\n</section>\r\n<section class=\"em-taxonomy-events\">\r\n	<a name=\"upcoming-events\"></a>\r\n	<h3>Upcoming Events</h3>\r\n	#_CATEGORYNEXTEVENTS\r\n</section>','no');
INSERT INTO `wp_options` VALUES (584,'dbem_category_no_events_message','No events in this category','yes');
INSERT INTO `wp_options` VALUES (585,'dbem_category_event_list_item_header_format','<ul>','no');
INSERT INTO `wp_options` VALUES (586,'dbem_category_event_list_item_format','<li>#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES</li>','no');
INSERT INTO `wp_options` VALUES (587,'dbem_category_event_list_item_footer_format','</ul>','no');
INSERT INTO `wp_options` VALUES (588,'dbem_category_event_list_limit','20','yes');
INSERT INTO `wp_options` VALUES (589,'dbem_category_event_list_orderby','event_start_date,event_start_time,event_name','yes');
INSERT INTO `wp_options` VALUES (590,'dbem_category_event_list_order','ASC','yes');
INSERT INTO `wp_options` VALUES (591,'dbem_category_event_single_format','#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES','yes');
INSERT INTO `wp_options` VALUES (592,'dbem_category_no_event_message','No events in this category','yes');
INSERT INTO `wp_options` VALUES (593,'dbem_category_default_color','#a8d144','yes');
INSERT INTO `wp_options` VALUES (594,'dbem_tags_default_limit','10','yes');
INSERT INTO `wp_options` VALUES (595,'dbem_tags_default_orderby','name','yes');
INSERT INTO `wp_options` VALUES (596,'dbem_tags_default_order','ASC','yes');
INSERT INTO `wp_options` VALUES (597,'dbem_event_cancelled_email','1','yes');
INSERT INTO `wp_options` VALUES (598,'dbem_event_cancelled_email_subject','Cancelled - #_EVENTNAME','yes');
INSERT INTO `wp_options` VALUES (599,'dbem_event_cancelled_email_body','Dear Guest, \r\n\r\nWe regret to inform you that #_EVENTNAME on #_EVENTDATES has been cancelled.\r\n\r\nYours faithfully,\r\n\r\n#_CONTACTNAME\r\n\r\n\r\n-------------------------------\r\n\r\nPowered by Events Manager - http://wp-events-plugin.com','yes');
INSERT INTO `wp_options` VALUES (600,'dbem_event_cancelled_bookings','1','yes');
INSERT INTO `wp_options` VALUES (601,'dbem_event_cancelled_bookings_email','1','yes');
INSERT INTO `wp_options` VALUES (602,'dbem_tags_list_item_format_header','','no');
INSERT INTO `wp_options` VALUES (603,'dbem_tags_list_item_format','<div class=\"em-item em-taxonomy em-tag\" style=\"--default-border:#_TAGCOLOR\">\r\n	<div class=\"em-item-image {no_image}has-placeholder{/no_image}\">\r\n		{has_image}\r\n		#_TAGIMAGE{medium}\r\n		{/has_image}\r\n		{no_image}\r\n		<div class=\"em-item-image-placeholder\"></div>\r\n		{/no_image}\r\n	</div>\r\n	<div class=\"em-item-info\">\r\n		<h3 class=\"em-item-title\">#_TAGLINK</h3>\r\n		<div class=\"em-event-meta em-item-meta\">\r\n			{has_events}\r\n			<div class=\"em-item-meta-line em-taxonomy-events em-tag-events\">\r\n				<span class=\"em-icon-calendar em-icon\"></span>\r\n				<div>\r\n					<p>Next Event</p>\r\n					<p>#_TAGNEXTEVENT</p>\r\n					<p><a href=\"#_TAGURL\">See All</a></p>\r\n				</div>\r\n			</div>\r\n			{/has_events}\r\n			{no_events}\r\n			<div class=\"em-item-meta-line em-taxonomy-no-events em-tag-no-events\">\r\n				<span class=\"em-icon-calendar em-icon\"></span>\r\n				<div>No upcoming events</p></div>\r\n			</div>\r\n			{/no_events}\r\n		</div>\r\n		<div class=\"em-item-desc\">\r\n			#_TAGEXCERPT{25}\r\n		</div>\r\n		<div class=\"em-item-actions input\">\r\n			<a class=\"em-item-read-more button\" href=\"#_TAGURL\">More Info</a>\r\n		</div>\r\n	</div>\r\n</div>','no');
INSERT INTO `wp_options` VALUES (604,'dbem_tags_list_item_format_footer','','no');
INSERT INTO `wp_options` VALUES (605,'dbem_no_tags_message','No Tags','yes');
INSERT INTO `wp_options` VALUES (606,'dbem_tag_page_title_format','#_TAGNAME','yes');
INSERT INTO `wp_options` VALUES (607,'dbem_tag_page_format','<section class=\"em-item-header\" style=\"--default-border:#_TAGCOLOR\">\r\n	{has_image}\r\n	<div class=\"em-item-image\">\r\n		#_TAGIMAGE{medium}\r\n	</div>\r\n	{/has_image}\r\n	<div class=\"em-item-meta\">\r\n		<section class=\"em-item-meta-column\">\r\n			<section class=\"em-location-next-event\">\r\n				<h3>Next Event</h3>\r\n				{has_events}\r\n				<div class=\"em-item-meta-line em-taxonomy-events em-tag-events\">\r\n					<span class=\"em-icon-calendar em-icon\"></span>\r\n					<div>\r\n						<p>#_TAGNEXTEVENT</p>\r\n						<p><a href=\"#upcoming-events\">See All</a></p>\r\n					</div>\r\n				</div>\r\n				{/has_events}\r\n				{no_events}\r\n				<div class=\"em-item-meta-line em-taxonomy-no-events em-tag-no-events\">\r\n					<span class=\"em-icon-calendar em-icon\"></span>\r\n					<div>No upcoming events</p></div>\r\n				</div>\r\n				{/no_events}\r\n			</section>\r\n			{no_loc_image}\r\n		</section>\r\n		<section class=\"em-item-meta-column\">\r\n			{/no_loc_image}\r\n			<section class=\"em-taxonomy-description\">\r\n				<h3>Description</h3>\r\n				#_TAGDESCRIPTION\r\n			</section>\r\n		</section>\r\n	</div>\r\n</section>\r\n<section class=\"em-taxonomy-events\">\r\n	<a name=\"upcoming-events\"></a>\r\n	<h3>Upcoming Events</h3>\r\n	#_TAGNEXTEVENTS\r\n</section>','no');
INSERT INTO `wp_options` VALUES (608,'dbem_tag_no_events_message','No events with this tag','yes');
INSERT INTO `wp_options` VALUES (609,'dbem_tag_event_list_item_header_format','<ul class=\"em-tags-list\">','no');
INSERT INTO `wp_options` VALUES (610,'dbem_tag_event_list_item_format','<li>#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES</li>','no');
INSERT INTO `wp_options` VALUES (611,'dbem_tag_event_list_item_footer_format','</ul>','no');
INSERT INTO `wp_options` VALUES (612,'dbem_tag_event_single_format','#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES','yes');
INSERT INTO `wp_options` VALUES (613,'dbem_tag_no_event_message','No events with this tag','yes');
INSERT INTO `wp_options` VALUES (614,'dbem_tag_event_list_limit','20','yes');
INSERT INTO `wp_options` VALUES (615,'dbem_tag_event_list_orderby','event_start_date,event_start_time,event_name','yes');
INSERT INTO `wp_options` VALUES (616,'dbem_tag_event_list_order','ASC','yes');
INSERT INTO `wp_options` VALUES (617,'dbem_tag_default_color','#a8d145','yes');
INSERT INTO `wp_options` VALUES (618,'dbem_rss_limit','50','yes');
INSERT INTO `wp_options` VALUES (619,'dbem_rss_scope','future','yes');
INSERT INTO `wp_options` VALUES (620,'dbem_rss_main_title','MotownChristmas - Events','yes');
INSERT INTO `wp_options` VALUES (621,'dbem_rss_main_description',' - Events','yes');
INSERT INTO `wp_options` VALUES (622,'dbem_rss_description_format','#_EVENTDATES - #_EVENTTIMES <br />#_LOCATIONNAME <br />#_LOCATIONADDRESS <br />#_LOCATIONTOWN','yes');
INSERT INTO `wp_options` VALUES (623,'dbem_rss_title_format','#_EVENTNAME','yes');
INSERT INTO `wp_options` VALUES (624,'dbem_rss_order','ASC','yes');
INSERT INTO `wp_options` VALUES (625,'dbem_rss_orderby','event_start_date,event_start_time,event_name','yes');
INSERT INTO `wp_options` VALUES (626,'em_rss_pubdate','Fri, 12 Apr 2024 04:36:10 +0000','yes');
INSERT INTO `wp_options` VALUES (627,'dbem_ical_limit','50','yes');
INSERT INTO `wp_options` VALUES (628,'dbem_ical_scope','future','yes');
INSERT INTO `wp_options` VALUES (629,'dbem_ical_description_format','#_EVENTNAME','yes');
INSERT INTO `wp_options` VALUES (630,'dbem_ical_real_description_format','#_EVENTEXCERPT','yes');
INSERT INTO `wp_options` VALUES (631,'dbem_ical_location_format','#_LOCATIONNAME, #_LOCATIONFULLLINE, #_LOCATIONCOUNTRY','yes');
INSERT INTO `wp_options` VALUES (632,'dbem_gmap_is_active','1','yes');
INSERT INTO `wp_options` VALUES (633,'dbem_google_maps_browser_key','','yes');
INSERT INTO `wp_options` VALUES (634,'dbem_map_default_width','400px','yes');
INSERT INTO `wp_options` VALUES (635,'dbem_map_default_height','300px','yes');
INSERT INTO `wp_options` VALUES (636,'dbem_location_baloon_format','<strong>#_LOCATIONNAME</strong><br />#_LOCATIONADDRESS - #_LOCATIONTOWN<br /><a href=\"#_LOCATIONPAGEURL\">Events</a>','no');
INSERT INTO `wp_options` VALUES (637,'dbem_map_text_format','<strong>#_LOCATIONNAME</strong><p>#_LOCATIONADDRESS</p><p>#_LOCATIONTOWN</p>','no');
INSERT INTO `wp_options` VALUES (638,'dbem_email_disable_registration','0','yes');
INSERT INTO `wp_options` VALUES (639,'dbem_rsvp_mail_port','465','yes');
INSERT INTO `wp_options` VALUES (640,'dbem_smtp_host','localhost','yes');
INSERT INTO `wp_options` VALUES (641,'dbem_mail_sender_name','','yes');
INSERT INTO `wp_options` VALUES (642,'dbem_rsvp_mail_send_method','wp_mail','yes');
INSERT INTO `wp_options` VALUES (643,'dbem_rsvp_mail_SMTPAuth','1','yes');
INSERT INTO `wp_options` VALUES (644,'dbem_smtp_html','1','yes');
INSERT INTO `wp_options` VALUES (645,'dbem_smtp_html_br','1','yes');
INSERT INTO `wp_options` VALUES (646,'dbem_smtp_encryption','tls','yes');
INSERT INTO `wp_options` VALUES (647,'dbem_smtp_autotls','1','yes');
INSERT INTO `wp_options` VALUES (648,'dbem_image_max_width','700','yes');
INSERT INTO `wp_options` VALUES (649,'dbem_image_max_height','700','yes');
INSERT INTO `wp_options` VALUES (650,'dbem_image_min_width','50','yes');
INSERT INTO `wp_options` VALUES (651,'dbem_image_min_height','50','yes');
INSERT INTO `wp_options` VALUES (652,'dbem_image_max_size','204800','yes');
INSERT INTO `wp_options` VALUES (653,'dbem_list_date_title','Events - #j #M #y','yes');
INSERT INTO `wp_options` VALUES (654,'dbem_full_calendar_month_format','M Y','yes');
INSERT INTO `wp_options` VALUES (655,'dbem_full_calendar_long_events','0','yes');
INSERT INTO `wp_options` VALUES (656,'dbem_full_calendar_initials_length','0','yes');
INSERT INTO `wp_options` VALUES (657,'dbem_full_calendar_abbreviated_weekdays','1','yes');
INSERT INTO `wp_options` VALUES (658,'dbem_display_calendar_day_single_yes','1','yes');
INSERT INTO `wp_options` VALUES (659,'dbem_small_calendar_initials_length','1','yes');
INSERT INTO `wp_options` VALUES (660,'dbem_small_calendar_abbreviated_weekdays','0','yes');
INSERT INTO `wp_options` VALUES (661,'dbem_small_calendar_long_events','0','yes');
INSERT INTO `wp_options` VALUES (662,'dbem_display_calendar_order','ASC','yes');
INSERT INTO `wp_options` VALUES (663,'dbem_display_calendar_orderby','event_name,event_start_time','yes');
INSERT INTO `wp_options` VALUES (664,'dbem_display_calendar_events_limit','3','yes');
INSERT INTO `wp_options` VALUES (665,'dbem_display_calendar_events_limit_msg','more...','yes');
INSERT INTO `wp_options` VALUES (666,'dbem_calendar_direct_links','1','yes');
INSERT INTO `wp_options` VALUES (667,'dbem_calendar_preview_mode','modal','yes');
INSERT INTO `wp_options` VALUES (668,'dbem_calendar_preview_mode_date','modal','yes');
INSERT INTO `wp_options` VALUES (669,'dbem_calendar_preview_modal_date_format','<div class=\"em-item em-event\" style=\"--default-border:#_CATEGORYCOLOR\">\r\n	<div class=\"em-item-image {no_image}has-placeholder{/no_image}\" style=\"max-width:150px\">\r\n		{has_image}\r\n		#_EVENTIMAGE{150,150}\r\n		{/has_image}\r\n		{no_image}\r\n		<div class=\"em-item-image-placeholder\">\r\n			<div class=\"date\">\r\n				<span class=\"day\">#d</span>\r\n				<span class=\"month\">#M</span>\r\n			</div>\r\n		</div>\r\n		{/no_image}\r\n	</div>\r\n	<div class=\"em-item-info\">\r\n		<div class=\"em-item-name\">#_EVENTLINK</div>\r\n		<div class=\"em-item-meta\">\r\n			<div class=\"em-item-meta-line em-event-date em-event-meta-datetime\">\r\n				<span class=\"em-icon em-icon-calendar\"></span>\r\n				<span>#j #M #y</span>\r\n			</div>\r\n			<div class=\"em-item-meta-line em-event-location em-event-meta-location\">\r\n				<span class=\"em-icon em-icon-location\"></span>\r\n				<span>#_TOWN</span>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>','no');
INSERT INTO `wp_options` VALUES (670,'dbem_calendar_preview_modal_event_format','<div class=\"em pixelbones em-calendar-preview em-list em-events-list\">\r\n	<div class=\"em-event em-item\" style=\"--default-border:#_CATEGORYCOLOR\">\r\n		<div class=\"em-item-image {no_image}has-placeholder{/no_image}\">\r\n			{has_image}\r\n			#_EVENTIMAGE{medium}\r\n			{/has_image}\r\n			{no_image}\r\n			<div class=\"em-item-image-placeholder\">\r\n				<div class=\"date\">\r\n					<span class=\"day\">#d</span>\r\n					<span class=\"month\">#M</span>\r\n				</div>\r\n			</div>\r\n			{/no_image}\r\n		</div>\r\n		<div class=\"em-item-info\">\r\n			<div class=\"em-event-meta em-item-meta\">\r\n				<div class=\"em-item-meta-line em-event-date em-event-meta-datetime\">\r\n					<span class=\"em-icon-calendar em-icon\"></span>\r\n					#_EVENTDATES    \r\n				</div>\r\n				<div class=\"em-item-meta-line em-event-time em-event-meta-datetime\">\r\n					<span class=\"em-icon-clock em-icon\"></span>\r\n					#_EVENTTIMES\r\n				</div>\r\n				{bookings_open}\r\n				<div class=\"em-item-meta-line em-event-prices\">\r\n					<span class=\"em-icon-ticket em-icon\"></span>\r\n					#_EVENTPRICERANGE\r\n				</div>\r\n				{/bookings_open}\r\n				{has_location_venue}\r\n				<div class=\"em-item-meta-line em-event-location\">\r\n					<span class=\"em-icon-location em-icon\"></span>\r\n					#_LOCATIONLINK\r\n				</div>\r\n				{/has_location_venue}\r\n				{has_event_location}\r\n				<div class=\"em-item-meta-line em-event-location\">\r\n					<span class=\"em-icon-at em-icon\"></span>\r\n					#_EVENTLOCATION\r\n				</div>\r\n				{/has_event_location}\r\n				{has_category}\r\n				<div class=\"em-item-meta-line em-item-taxonomy em-event-categories\">\r\n					<span class=\"em-icon-category em-icon\"></span>\r\n					<div>#_EVENTCATEGORIES</div>\r\n				</div>\r\n				{/has_category}\r\n				{has_tag}\r\n				<div class=\"em-item-meta-line em-item-taxonomy em-event-tags\">\r\n					<span class=\"em-icon-tag em-icon\"></span>\r\n					<div>#_EVENTTAGS</div>\r\n				</div>\r\n				{/has_tag}\r\n			</div>\r\n			<div class=\"em-item-desc\">\r\n				#_EVENTEXCERPT{25}\r\n			</div>\r\n			<div class=\"em-item-actions input\">\r\n				<a class=\"em-item-read-more button\" href=\"#_EVENTURL\">More Info</a>\r\n				{bookings_open}\r\n				<a class=\"em-event-book-now button\" href=\"#_EVENTURL#em-event-booking-form\">\r\n					<span class=\"em-icon em-icon-ticket\"></span>\r\n					Book Now!				</a>\r\n				{/bookings_open}\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>','no');
INSERT INTO `wp_options` VALUES (671,'dbem_calendar_preview_tooltip_event_format','{has_image}\r\n<div class=\"em-item-meta em-event-image\">\r\n	#_EVENTIMAGE{300}\r\n</div>\r\n{/has_image}\r\n<div class=\"em-item-info\">\r\n	<div class=\"em-item-title em-event-title\">#_EVENTLINK</div>\r\n	<div class=\"em-event-meta em-item-meta\">\r\n		<div class=\"em-item-meta-line em-event-date em-event-meta-datetime\">\r\n			<span class=\"em-icon-calendar em-icon\"></span>\r\n			#_EVENTDATES    \r\n		</div>\r\n		<div class=\"em-item-meta-line em-event-time em-event-meta-datetime\">\r\n			<span class=\"em-icon-clock em-icon\"></span>\r\n			#_EVENTTIMES\r\n		</div>\r\n		{bookings_open}\r\n		<div class=\"em-item-meta-line em-event-prices\">\r\n			<span class=\"em-icon-ticket em-icon\"></span>\r\n			#_EVENTPRICERANGE\r\n		</div>\r\n		{/bookings_open}\r\n		{has_location_venue}\r\n		<div class=\"em-item-meta-line em-event-location\">\r\n			<span class=\"em-icon-location em-icon\"></span>\r\n			#_LOCATIONLINK\r\n		</div>\r\n		{/has_location_venue}\r\n		{has_event_location}\r\n		<div class=\"em-item-meta-line em-event-location\">\r\n			<span class=\"em-icon-at em-icon\"></span>\r\n			#_EVENTLOCATION\r\n		</div>\r\n		{/has_event_location}\r\n		{has_category}\r\n		<div class=\"em-item-meta-line em-item-taxonomy em-event-categories\">\r\n			<span class=\"em-icon-category em-icon\"></span>\r\n			#_EVENTCATEGORIES\r\n		</div>\r\n		{/has_category}\r\n		{has_tag}\r\n		<div class=\"em-item-meta-line em-item-taxonomy em-event-tags\">\r\n			<span class=\"em-icon-tag em-icon\"></span>\r\n			<div>#_EVENTTAGS</div>\r\n		</div>\r\n		{/has_tag}\r\n	</div>\r\n</div>\r\n<div class=\"em-item-desc\">#_EVENTEXCERPT{25,...}</div>\r\n<div class=\"em-item-actions input\">\r\n	<a class=\"em-event-read-more button\" href=\"#_EVENTURL\">More Info</a>\r\n	{bookings_open}\r\n	<a class=\"em-event-book-now button\" href=\"#_EVENTURL#em-booking\">Book Now!</a>\r\n	{/bookings_open}\r\n</div>','no');
INSERT INTO `wp_options` VALUES (672,'dbem_calendar_large_pill_format','#_12HSTARTTIME - #_EVENTLINK','yes');
INSERT INTO `wp_options` VALUES (673,'dbem_timezone_enabled','1','yes');
INSERT INTO `wp_options` VALUES (674,'dbem_timezone_default','UTC','yes');
INSERT INTO `wp_options` VALUES (675,'dbem_require_location','0','yes');
INSERT INTO `wp_options` VALUES (676,'dbem_locations_enabled','1','yes');
INSERT INTO `wp_options` VALUES (677,'dbem_location_types','a:2:{s:8:\"location\";s:1:\"1\";s:3:\"url\";s:1:\"1\";}','yes');
INSERT INTO `wp_options` VALUES (678,'dbem_use_select_for_locations','0','yes');
INSERT INTO `wp_options` VALUES (679,'dbem_attributes_enabled','1','yes');
INSERT INTO `wp_options` VALUES (680,'dbem_recurrence_enabled','1','yes');
INSERT INTO `wp_options` VALUES (681,'dbem_rsvp_enabled','1','yes');
INSERT INTO `wp_options` VALUES (682,'dbem_categories_enabled','1','yes');
INSERT INTO `wp_options` VALUES (683,'dbem_tags_enabled','1','yes');
INSERT INTO `wp_options` VALUES (684,'dbem_placeholders_custom','','yes');
INSERT INTO `wp_options` VALUES (685,'dbem_location_attributes_enabled','1','yes');
INSERT INTO `wp_options` VALUES (686,'dbem_location_placeholders_custom','','yes');
INSERT INTO `wp_options` VALUES (687,'dbem_bookings_registration_disable','0','yes');
INSERT INTO `wp_options` VALUES (688,'dbem_bookings_registration_disable_user_emails','0','yes');
INSERT INTO `wp_options` VALUES (689,'dbem_bookings_approval','1','yes');
INSERT INTO `wp_options` VALUES (690,'dbem_bookings_approval_reserved','0','yes');
INSERT INTO `wp_options` VALUES (691,'dbem_bookings_approval_overbooking','0','yes');
INSERT INTO `wp_options` VALUES (692,'dbem_bookings_double','0','yes');
INSERT INTO `wp_options` VALUES (693,'dbem_bookings_user_cancellation','1','yes');
INSERT INTO `wp_options` VALUES (694,'dbem_bookings_user_cancellation_time','','yes');
INSERT INTO `wp_options` VALUES (695,'dbem_bookings_currency','USD','yes');
INSERT INTO `wp_options` VALUES (696,'dbem_bookings_currency_decimal_point','.','yes');
INSERT INTO `wp_options` VALUES (697,'dbem_bookings_currency_thousands_sep',',','yes');
INSERT INTO `wp_options` VALUES (698,'dbem_bookings_currency_format','@#','yes');
INSERT INTO `wp_options` VALUES (699,'dbem_bookings_tax','0','yes');
INSERT INTO `wp_options` VALUES (700,'dbem_bookings_tax_auto_add','0','yes');
INSERT INTO `wp_options` VALUES (701,'dbem_bookings_submit_button','Submit Booking','yes');
INSERT INTO `wp_options` VALUES (702,'dbem_bookings_submit_button_paid','Submit Booking - %s','yes');
INSERT INTO `wp_options` VALUES (703,'dbem_bookings_submit_button_processing','Processing ...','yes');
INSERT INTO `wp_options` VALUES (704,'dbem_bookings_login_form','1','yes');
INSERT INTO `wp_options` VALUES (705,'dbem_bookings_form_hide_dynamic','1','yes');
INSERT INTO `wp_options` VALUES (706,'dbem_bookings_summary','1','yes');
INSERT INTO `wp_options` VALUES (707,'dbem_bookings_summary_taxes_itemized','1','yes');
INSERT INTO `wp_options` VALUES (708,'dbem_bookings_summary_free','1','yes');
INSERT INTO `wp_options` VALUES (709,'dbem_bookings_summary_message','Please select at least one space to proceed with your booking.','yes');
INSERT INTO `wp_options` VALUES (710,'dbem_bookings_anonymous','1','yes');
INSERT INTO `wp_options` VALUES (711,'dbem_bookings_form_max','20','yes');
INSERT INTO `wp_options` VALUES (712,'dbem_bookings_header_tickets','Tickets','yes');
INSERT INTO `wp_options` VALUES (713,'dbem_bookings_header_reg_info','Registration Information','yes');
INSERT INTO `wp_options` VALUES (714,'dbem_bookings_header_summary','Booking Summary','yes');
INSERT INTO `wp_options` VALUES (715,'dbem_bookings_header_confirm','','yes');
INSERT INTO `wp_options` VALUES (716,'dbem_bookings_header_confirm_free','','yes');
INSERT INTO `wp_options` VALUES (717,'dbem_bookings_form_msg_disabled','Online bookings are not available for this event.','yes');
INSERT INTO `wp_options` VALUES (718,'dbem_bookings_form_msg_closed','Bookings are closed for this event.','yes');
INSERT INTO `wp_options` VALUES (719,'dbem_bookings_form_msg_cancelled','This event has been cancelled. Bookings are closed for this event.','yes');
INSERT INTO `wp_options` VALUES (720,'dbem_bookings_form_msg_full','This event is fully booked.','yes');
INSERT INTO `wp_options` VALUES (721,'dbem_bookings_form_msg_attending','You are currently attending this event.','yes');
INSERT INTO `wp_options` VALUES (722,'dbem_bookings_form_msg_bookings_link','Manage my bookings','yes');
INSERT INTO `wp_options` VALUES (723,'dbem_booking_warning_cancel','Are you sure you want to cancel your booking?','yes');
INSERT INTO `wp_options` VALUES (724,'dbem_booking_feedback_cancelled','Booking Cancelled','yes');
INSERT INTO `wp_options` VALUES (725,'dbem_booking_feedback_pending','Booking successful, pending confirmation (you will also receive an email once confirmed).','yes');
INSERT INTO `wp_options` VALUES (726,'dbem_booking_feedback','Booking successful.','yes');
INSERT INTO `wp_options` VALUES (727,'dbem_booking_feedback_full','Booking cannot be made, not enough spaces available!','yes');
INSERT INTO `wp_options` VALUES (728,'dbem_booking_feedback_log_in','You must log in or register to make a booking.','yes');
INSERT INTO `wp_options` VALUES (729,'dbem_booking_feedback_nomail','However, there were some problems whilst sending confirmation emails to you and/or the event contact person. You may want to contact them directly and letting them know of this error.','yes');
INSERT INTO `wp_options` VALUES (730,'dbem_booking_feedback_error','Booking could not be created:','yes');
INSERT INTO `wp_options` VALUES (731,'dbem_booking_feedback_email_exists','This email already exists in our system, please log in to register to proceed with your booking.','yes');
INSERT INTO `wp_options` VALUES (732,'dbem_booking_feedback_new_user','A new user account has been created for you. Please check your email for access details.','yes');
INSERT INTO `wp_options` VALUES (733,'dbem_booking_feedback_reg_error','There was a problem creating a user account, please contact a website administrator.','yes');
INSERT INTO `wp_options` VALUES (734,'dbem_booking_feedback_already_booked','You already have booked a seat at this event.','yes');
INSERT INTO `wp_options` VALUES (735,'dbem_booking_feedback_min_space','You must request at least one space to book an event.','yes');
INSERT INTO `wp_options` VALUES (736,'dbem_booking_feedback_spaces_limit','You cannot book more than %d spaces for this event.','yes');
INSERT INTO `wp_options` VALUES (737,'dbem_booking_button_msg_book','Book Now','yes');
INSERT INTO `wp_options` VALUES (738,'dbem_booking_button_msg_booking','Booking...','yes');
INSERT INTO `wp_options` VALUES (739,'dbem_booking_button_msg_booked','Booking Submitted','yes');
INSERT INTO `wp_options` VALUES (740,'dbem_booking_button_msg_already_booked','Already Booked','yes');
INSERT INTO `wp_options` VALUES (741,'dbem_booking_button_msg_error','Booking Error. Try again?','yes');
INSERT INTO `wp_options` VALUES (742,'dbem_booking_button_msg_full','Sold Out','yes');
INSERT INTO `wp_options` VALUES (743,'dbem_booking_button_msg_closed','Bookings Closed','yes');
INSERT INTO `wp_options` VALUES (744,'dbem_booking_button_msg_event_cancelled','Event Cancelled','yes');
INSERT INTO `wp_options` VALUES (745,'dbem_booking_button_msg_cancel','Cancel','yes');
INSERT INTO `wp_options` VALUES (746,'dbem_booking_button_msg_canceling','Canceling...','yes');
INSERT INTO `wp_options` VALUES (747,'dbem_booking_button_msg_cancelled','Cancelled','yes');
INSERT INTO `wp_options` VALUES (748,'dbem_booking_button_msg_cancel_error','Cancellation Error. Try again?','yes');
INSERT INTO `wp_options` VALUES (749,'dbem_bookings_notify_admin','0','yes');
INSERT INTO `wp_options` VALUES (750,'dbem_bookings_contact_email','1','yes');
INSERT INTO `wp_options` VALUES (751,'dbem_bookings_replyto_owner_admins','0','yes');
INSERT INTO `wp_options` VALUES (752,'dbem_bookings_replyto_owner','0','yes');
INSERT INTO `wp_options` VALUES (753,'dbem_bookings_contact_email_pending_subject','Booking Pending','yes');
INSERT INTO `wp_options` VALUES (754,'dbem_bookings_contact_email_pending_body','The following booking is pending :\r\n\r\n#_EVENTNAME - #_EVENTDATES @ #_EVENTTIMES\r\n\r\nNow there are #_BOOKEDSPACES spaces reserved, #_AVAILABLESPACES are still available.\r\n\r\nBOOKING DETAILS\r\n\r\nName : #_BOOKINGNAME\r\n\r\nEmail : #_BOOKINGEMAIL\r\n\r\n#_BOOKINGSUMMARY\r\n\r\n\r\nPowered by Events Manager - http://wp-events-plugin.com','yes');
INSERT INTO `wp_options` VALUES (755,'dbem_bookings_contact_email_confirmed_subject','Booking Confirmed','yes');
INSERT INTO `wp_options` VALUES (756,'dbem_bookings_contact_email_confirmed_body','The following booking is confirmed :\r\n\r\n#_EVENTNAME - #_EVENTDATES @ #_EVENTTIMES\r\n\r\nNow there are #_BOOKEDSPACES spaces reserved, #_AVAILABLESPACES are still available.\r\n\r\nBOOKING DETAILS\r\n\r\nName : #_BOOKINGNAME\r\n\r\nEmail : #_BOOKINGEMAIL\r\n\r\n#_BOOKINGSUMMARY\r\n\r\n\r\nPowered by Events Manager - http://wp-events-plugin.com','yes');
INSERT INTO `wp_options` VALUES (757,'dbem_bookings_contact_email_rejected_subject','Booking Rejected','yes');
INSERT INTO `wp_options` VALUES (758,'dbem_bookings_contact_email_rejected_body','The following booking is rejected :\r\n\r\n#_EVENTNAME - #_EVENTDATES @ #_EVENTTIMES\r\n\r\nNow there are #_BOOKEDSPACES spaces reserved, #_AVAILABLESPACES are still available.\r\n\r\nBOOKING DETAILS\r\n\r\nName : #_BOOKINGNAME\r\n\r\nEmail : #_BOOKINGEMAIL\r\n\r\n#_BOOKINGSUMMARY\r\n\r\n\r\nPowered by Events Manager - http://wp-events-plugin.com','yes');
INSERT INTO `wp_options` VALUES (759,'dbem_bookings_contact_email_cancelled_subject','Booking Cancelled','yes');
INSERT INTO `wp_options` VALUES (760,'dbem_bookings_contact_email_cancelled_body','The following booking is cancelled :\r\n\r\n#_EVENTNAME - #_EVENTDATES @ #_EVENTTIMES\r\n\r\nNow there are #_BOOKEDSPACES spaces reserved, #_AVAILABLESPACES are still available.\r\n\r\nBOOKING DETAILS\r\n\r\nName : #_BOOKINGNAME\r\n\r\nEmail : #_BOOKINGEMAIL\r\n\r\n#_BOOKINGSUMMARY\r\n\r\n\r\nPowered by Events Manager - http://wp-events-plugin.com','yes');
INSERT INTO `wp_options` VALUES (761,'dbem_bookings_email_pending_subject','Booking Pending','yes');
INSERT INTO `wp_options` VALUES (762,'dbem_bookings_email_pending_body','Dear #_BOOKINGNAME, \r\n\r\nYou have requested #_BOOKINGSPACES space/spaces for #_EVENTNAME.\r\n\r\nWhen : #_EVENTDATES @ #_EVENTTIMES\r\n\r\nWhere : #_LOCATIONNAME - #_LOCATIONFULLLINE\r\n\r\nYour booking is currently pending approval by our administrators. Once approved you will receive an automatic confirmation.\r\n\r\nYours faithfully,\r\n\r\n#_CONTACTNAME\r\n\r\n\r\n-------------------------------\r\n\r\nPowered by Events Manager - http://wp-events-plugin.com','yes');
INSERT INTO `wp_options` VALUES (763,'dbem_bookings_email_rejected_subject','Booking Rejected','yes');
INSERT INTO `wp_options` VALUES (764,'dbem_bookings_email_rejected_body','Dear #_BOOKINGNAME, \r\n\r\nYour requested booking for #_BOOKINGSPACES spaces at #_EVENTNAME on #_EVENTDATES has been rejected.\r\n\r\nYours faithfully,\r\n\r\n#_CONTACTNAME\r\n\r\n\r\n-------------------------------\r\n\r\nPowered by Events Manager - http://wp-events-plugin.com','yes');
INSERT INTO `wp_options` VALUES (765,'dbem_bookings_email_confirmed_subject','Booking Confirmed','yes');
INSERT INTO `wp_options` VALUES (766,'dbem_bookings_email_confirmed_body','Dear #_BOOKINGNAME, \r\n\r\nYou have successfully reserved #_BOOKINGSPACES space/spaces for #_EVENTNAME.\r\n\r\nWhen : #_EVENTDATES @ #_EVENTTIMES\r\n\r\nWhere : #_LOCATIONNAME - #_LOCATIONFULLLINE\r\n\r\nYours faithfully,\r\n\r\n#_CONTACTNAME\r\n\r\n\r\n-------------------------------\r\n\r\nPowered by Events Manager - http://wp-events-plugin.com','yes');
INSERT INTO `wp_options` VALUES (767,'dbem_bookings_email_cancelled_subject','Booking Cancelled','yes');
INSERT INTO `wp_options` VALUES (768,'dbem_bookings_email_cancelled_body','Dear #_BOOKINGNAME, \r\n\r\nYour requested booking for #_BOOKINGSPACES spaces at #_EVENTNAME on #_EVENTDATES has been cancelled.\r\n\r\nYours faithfully,\r\n\r\n#_CONTACTNAME\r\n\r\n\r\n-------------------------------\r\n\r\nPowered by Events Manager - http://wp-events-plugin.com','yes');
INSERT INTO `wp_options` VALUES (769,'dbem_bookings_email_registration_subject','[MotownChristmas] Your username and password','yes');
INSERT INTO `wp_options` VALUES (770,'dbem_bookings_email_registration_body','You have successfully created an account at MotownChristmas\r\n\r\nYou can log into our site here : http://motownchristmas.local/wp-login.php\r\n\r\nUsername : %username%\r\n\r\nPassword : %password%\r\n\r\nTo view your bookings, please visit http://motownchristmas.local/events-2/my-bookings/ after logging in.','yes');
INSERT INTO `wp_options` VALUES (771,'dbem_bookings_tickets_ordering','1','yes');
INSERT INTO `wp_options` VALUES (772,'dbem_bookings_tickets_orderby','ticket_price DESC, ticket_name ASC','yes');
INSERT INTO `wp_options` VALUES (773,'dbem_bookings_tickets_priority','0','yes');
INSERT INTO `wp_options` VALUES (774,'dbem_bookings_tickets_show_unavailable','0','yes');
INSERT INTO `wp_options` VALUES (775,'dbem_bookings_tickets_show_loggedout','1','yes');
INSERT INTO `wp_options` VALUES (776,'dbem_bookings_tickets_single','0','yes');
INSERT INTO `wp_options` VALUES (777,'dbem_bookings_tickets_single_form','0','yes');
INSERT INTO `wp_options` VALUES (778,'dbem_bookings_my_title_format','My Bookings','yes');
INSERT INTO `wp_options` VALUES (779,'dbem_booking_charts_wpdashboard','1','yes');
INSERT INTO `wp_options` VALUES (780,'dbem_booking_charts_dashboard','1','yes');
INSERT INTO `wp_options` VALUES (781,'dbem_booking_charts_event','1','yes');
INSERT INTO `wp_options` VALUES (782,'dbem_bp_events_list_format_header','<ul class=\"em-events-list\">','yes');
INSERT INTO `wp_options` VALUES (783,'dbem_bp_events_list_format','<li>#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES<ul><li>#_LOCATIONLINK - #_LOCATIONADDRESS, #_LOCATIONTOWN</li></ul></li>','yes');
INSERT INTO `wp_options` VALUES (784,'dbem_bp_events_list_format_footer','</ul>','yes');
INSERT INTO `wp_options` VALUES (785,'dbem_bp_events_list_none_format','<p class=\"em-events-list\">No Events</p>','yes');
INSERT INTO `wp_options` VALUES (786,'dbem_css','1','yes');
INSERT INTO `wp_options` VALUES (787,'dbem_css_theme','1','yes');
INSERT INTO `wp_options` VALUES (788,'dbem_css_theme_font_family','0','yes');
INSERT INTO `wp_options` VALUES (789,'dbem_css_theme_font_size','0','yes');
INSERT INTO `wp_options` VALUES (790,'dbem_css_theme_font_weight','0','yes');
INSERT INTO `wp_options` VALUES (791,'dbem_css_theme_line_height','0','yes');
INSERT INTO `wp_options` VALUES (792,'dbem_css_calendar','1','yes');
INSERT INTO `wp_options` VALUES (793,'dbem_css_editors','1','yes');
INSERT INTO `wp_options` VALUES (794,'dbem_css_rsvp','1','yes');
INSERT INTO `wp_options` VALUES (795,'dbem_css_rsvpadmin','1','yes');
INSERT INTO `wp_options` VALUES (796,'dbem_css_evlist','1','yes');
INSERT INTO `wp_options` VALUES (797,'dbem_css_search','1','yes');
INSERT INTO `wp_options` VALUES (798,'dbem_css_loclist','1','yes');
INSERT INTO `wp_options` VALUES (799,'dbem_css_catlist','1','yes');
INSERT INTO `wp_options` VALUES (800,'dbem_css_taglist','1','yes');
INSERT INTO `wp_options` VALUES (801,'dbem_css_events','1','yes');
INSERT INTO `wp_options` VALUES (802,'dbem_css_locations','1','yes');
INSERT INTO `wp_options` VALUES (803,'dbem_css_categories','1','yes');
INSERT INTO `wp_options` VALUES (804,'dbem_css_tags','1','yes');
INSERT INTO `wp_options` VALUES (805,'dbem_css_myrsvp','1','yes');
INSERT INTO `wp_options` VALUES (806,'dbem_cp_events_slug','events','yes');
INSERT INTO `wp_options` VALUES (807,'dbem_cp_locations_slug','locations','yes');
INSERT INTO `wp_options` VALUES (808,'dbem_taxonomy_category_slug','events/categories','yes');
INSERT INTO `wp_options` VALUES (809,'dbem_taxonomy_tag_slug','events/tags','yes');
INSERT INTO `wp_options` VALUES (810,'dbem_cp_events_template','general-template.php','yes');
INSERT INTO `wp_options` VALUES (811,'dbem_cp_events_body_class','','yes');
INSERT INTO `wp_options` VALUES (812,'dbem_cp_events_post_class','','yes');
INSERT INTO `wp_options` VALUES (813,'dbem_cp_events_formats','1','yes');
INSERT INTO `wp_options` VALUES (814,'dbem_cp_events_has_archive','1','yes');
INSERT INTO `wp_options` VALUES (815,'dbem_events_default_archive_orderby','_event_start','yes');
INSERT INTO `wp_options` VALUES (816,'dbem_events_default_archive_order','ASC','yes');
INSERT INTO `wp_options` VALUES (817,'dbem_events_archive_scope','past','yes');
INSERT INTO `wp_options` VALUES (818,'dbem_cp_events_archive_formats','1','yes');
INSERT INTO `wp_options` VALUES (819,'dbem_cp_events_excerpt_formats','1','yes');
INSERT INTO `wp_options` VALUES (820,'dbem_cp_events_search_results','0','yes');
INSERT INTO `wp_options` VALUES (821,'dbem_cp_events_custom_fields','0','yes');
INSERT INTO `wp_options` VALUES (822,'dbem_cp_events_comments','1','yes');
INSERT INTO `wp_options` VALUES (823,'dbem_cp_locations_template','','yes');
INSERT INTO `wp_options` VALUES (824,'dbem_cp_locations_body_class','','yes');
INSERT INTO `wp_options` VALUES (825,'dbem_cp_locations_post_class','','yes');
INSERT INTO `wp_options` VALUES (826,'dbem_cp_locations_formats','1','yes');
INSERT INTO `wp_options` VALUES (827,'dbem_cp_locations_has_archive','1','yes');
INSERT INTO `wp_options` VALUES (828,'dbem_locations_default_archive_orderby','title','yes');
INSERT INTO `wp_options` VALUES (829,'dbem_locations_default_archive_order','ASC','yes');
INSERT INTO `wp_options` VALUES (830,'dbem_cp_locations_archive_formats','1','yes');
INSERT INTO `wp_options` VALUES (831,'dbem_cp_locations_excerpt_formats','1','yes');
INSERT INTO `wp_options` VALUES (832,'dbem_cp_locations_search_results','0','yes');
INSERT INTO `wp_options` VALUES (833,'dbem_cp_locations_custom_fields','0','yes');
INSERT INTO `wp_options` VALUES (834,'dbem_cp_locations_comments','1','yes');
INSERT INTO `wp_options` VALUES (835,'dbem_cp_categories_formats','1','yes');
INSERT INTO `wp_options` VALUES (836,'dbem_categories_default_archive_orderby','_event_start','yes');
INSERT INTO `wp_options` VALUES (837,'dbem_categories_default_archive_order','ASC','yes');
INSERT INTO `wp_options` VALUES (838,'dbem_cp_tags_formats','1','yes');
INSERT INTO `wp_options` VALUES (839,'dbem_tags_default_archive_orderby','_event_start','yes');
INSERT INTO `wp_options` VALUES (840,'dbem_tags_default_archive_order','ASC','yes');
INSERT INTO `wp_options` VALUES (841,'dbem_disable_thumbnails','0','yes');
INSERT INTO `wp_options` VALUES (842,'dbem_feedback_reminder','1712896570','yes');
INSERT INTO `wp_options` VALUES (843,'dbem_events_page_ajax','0','yes');
INSERT INTO `wp_options` VALUES (844,'dbem_conditional_recursions','2','yes');
INSERT INTO `wp_options` VALUES (845,'dbem_data_privacy_consent_text','I consent to my submitted data being collected and stored as outlined by the site %s.','yes');
INSERT INTO `wp_options` VALUES (846,'dbem_data_privacy_consent_remember','1','yes');
INSERT INTO `wp_options` VALUES (847,'dbem_data_privacy_consent_events','1','yes');
INSERT INTO `wp_options` VALUES (848,'dbem_data_privacy_consent_locations','1','yes');
INSERT INTO `wp_options` VALUES (849,'dbem_data_privacy_consent_bookings','1','yes');
INSERT INTO `wp_options` VALUES (850,'dbem_data_privacy_export_events','1','yes');
INSERT INTO `wp_options` VALUES (851,'dbem_data_privacy_export_locations','1','yes');
INSERT INTO `wp_options` VALUES (852,'dbem_data_privacy_export_bookings','1','yes');
INSERT INTO `wp_options` VALUES (853,'dbem_data_privacy_erase_events','1','yes');
INSERT INTO `wp_options` VALUES (854,'dbem_data_privacy_erase_locations','1','yes');
INSERT INTO `wp_options` VALUES (855,'dbem_data_privacy_erase_bookings','1','yes');
INSERT INTO `wp_options` VALUES (856,'dbem_advanced_formatting','0','yes');
INSERT INTO `wp_options` VALUES (857,'dbem_version','6.4.7.3','yes');
INSERT INTO `wp_options` VALUES (858,'widget_em_locations_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (860,'em_last_modified','1712896794','yes');
INSERT INTO `wp_options` VALUES (861,'event-categories_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (862,'dbem_thumbnails_enabled','0','yes');
INSERT INTO `wp_options` VALUES (863,'dbem_event_status_enabled','0','yes');
INSERT INTO `wp_options` VALUES (864,'dbem_credits','0','yes');
INSERT INTO `wp_options` VALUES (865,'dbem_gmap_type','dynamic','yes');
INSERT INTO `wp_options` VALUES (866,'dbem_gmap_embed_type','place','yes');
INSERT INTO `wp_options` VALUES (867,'dbem_google_maps_styles','','yes');
INSERT INTO `wp_options` VALUES (868,'dbem_js_limit','0','yes');
INSERT INTO `wp_options` VALUES (869,'dbem_js_limit_general','0','yes');
INSERT INTO `wp_options` VALUES (870,'dbem_js_limit_search','','yes');
INSERT INTO `wp_options` VALUES (871,'dbem_js_limit_events_form','','yes');
INSERT INTO `wp_options` VALUES (872,'dbem_js_limit_edit_bookings','','yes');
INSERT INTO `wp_options` VALUES (873,'dbem_css_limit','0','yes');
INSERT INTO `wp_options` VALUES (874,'dbem_css_limit_include','0','yes');
INSERT INTO `wp_options` VALUES (875,'dbem_css_limit_exclude','0','yes');
INSERT INTO `wp_options` VALUES (876,'dbem_css_event','1','yes');
INSERT INTO `wp_options` VALUES (877,'dbem_css_location','1','yes');
INSERT INTO `wp_options` VALUES (878,'dbem_css_category','1','yes');
INSERT INTO `wp_options` VALUES (879,'dbem_css_tag','1','yes');
INSERT INTO `wp_options` VALUES (880,'dbem_pro_dev_updates','0','yes');
INSERT INTO `wp_options` VALUES (881,'dbem_disable_title_rewrites','0','yes');
INSERT INTO `wp_options` VALUES (882,'dbem_title_html','','yes');
INSERT INTO `wp_options` VALUES (883,'dbem_events_current_are_past','0','yes');
INSERT INTO `wp_options` VALUES (884,'dbem_events_include_status_cancelled','0','yes');
INSERT INTO `wp_options` VALUES (885,'dbem_bookings_default_orderby','event_name','yes');
INSERT INTO `wp_options` VALUES (886,'dbem_bookings_default_order','ASC','yes');
INSERT INTO `wp_options` VALUES (887,'dbem_edit_events_page','','yes');
INSERT INTO `wp_options` VALUES (888,'dbem_edit_locations_page','','yes');
INSERT INTO `wp_options` VALUES (889,'dbem_edit_bookings_page','','yes');
INSERT INTO `wp_options` VALUES (890,'dbem_advanced_formatting_modes','a:17:{s:11:\"events-list\";s:1:\"0\";s:11:\"events-grid\";s:1:\"0\";s:12:\"event-single\";s:1:\"0\";s:13:\"event-excerpt\";s:1:\"0\";s:17:\"calendar-previews\";s:1:\"0\";s:14:\"locations-list\";s:1:\"0\";s:14:\"locations-grid\";s:1:\"0\";s:15:\"location-single\";s:1:\"0\";s:16:\"location-excerpt\";s:1:\"0\";s:20:\"location-event-lists\";s:1:\"0\";s:15:\"categories-list\";s:1:\"0\";s:15:\"category-single\";s:1:\"0\";s:20:\"category-events-list\";s:1:\"0\";s:9:\"tags-list\";s:1:\"0\";s:10:\"tag-single\";s:1:\"0\";s:15:\"tag-events-list\";s:1:\"0\";s:4:\"maps\";s:1:\"0\";}','no');
INSERT INTO `wp_options` VALUES (891,'dbem_time_24h','0','yes');
INSERT INTO `wp_options` VALUES (892,'dbem_display_calendar_day_single','0','yes');
INSERT INTO `wp_options` VALUES (893,'dbem_bookings_user_uncancellation','0','yes');
INSERT INTO `wp_options` VALUES (894,'dbem_bookings_summary_subsections','0','yes');
INSERT INTO `wp_options` VALUES (895,'dbem_bookings_tickets_show_member_tickets','0','yes');
INSERT INTO `wp_options` VALUES (896,'dbem_bookings_rsvp','0','yes');
INSERT INTO `wp_options` VALUES (897,'dbem_bookings_rsvp_maybe','0','yes');
INSERT INTO `wp_options` VALUES (898,'dbem_bookings_rsvp_my_bookings','0','yes');
INSERT INTO `wp_options` VALUES (899,'dbem_bookings_rsvp_my_bookings_buttons','0','yes');
INSERT INTO `wp_options` VALUES (900,'dbem_bookings_rsvp_can_change','0','yes');
INSERT INTO `wp_options` VALUES (901,'dbem_bookings_rsvp_sync_cancel','0','yes');
INSERT INTO `wp_options` VALUES (902,'dbem_bookings_rsvp_sync_confirm','0','yes');
INSERT INTO `wp_options` VALUES (903,'dbem_mail_sender_address','','yes');
INSERT INTO `wp_options` VALUES (904,'dbem_smtp_username','','yes');
INSERT INTO `wp_options` VALUES (905,'dbem_smtp_password','','yes');
INSERT INTO `wp_options` VALUES (915,'wp_calendar_block_has_published_posts','1','yes');
INSERT INTO `wp_options` VALUES (920,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (1002,'rewrite_rules','a:249:{s:28:\"tribe/events/kitchen-sink/?$\";s:69:\"index.php?post_type=tribe_events&tribe_events_views_kitchen_sink=page\";s:93:\"tribe/events/kitchen-sink/(page|grid|typographical|elements|events-bar|navigation|manager)/?$\";s:76:\"index.php?post_type=tribe_events&tribe_events_views_kitchen_sink=$matches[1]\";s:28:\"event-aggregator/(insert)/?$\";s:53:\"index.php?tribe-aggregator=1&tribe-action=$matches[1]\";s:25:\"(?:event)/([^/]+)/ical/?$\";s:56:\"index.php?ical=1&name=$matches[1]&post_type=tribe_events\";s:34:\"(?:tourschedule)/(?:page)/(\\d+)/?$\";s:71:\"index.php?post_type=tribe_events&eventDisplay=default&paged=$matches[1]\";s:47:\"(?:tourschedule)/(?:featured)/(?:page)/(\\d+)/?$\";s:79:\"index.php?post_type=tribe_events&featured=1&eventDisplay=list&paged=$matches[1]\";s:44:\"(?:tourschedule)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?post_type=tribe_events&eventDisplay=list&feed=$matches[1]\";s:57:\"(?:tourschedule)/(?:featured)/(feed|rdf|rss|rss2|atom)/?$\";s:78:\"index.php?post_type=tribe_events&featured=1&eventDisplay=list&feed=$matches[1]\";s:29:\"(?:tourschedule)/(?:month)/?$\";s:51:\"index.php?post_type=tribe_events&eventDisplay=month\";s:42:\"(?:tourschedule)/(?:month)/(?:featured)/?$\";s:62:\"index.php?post_type=tribe_events&eventDisplay=month&featured=1\";s:43:\"(?:tourschedule)/(?:month)/(\\d{4}-\\d{2})/?$\";s:73:\"index.php?post_type=tribe_events&eventDisplay=month&eventDate=$matches[1]\";s:43:\"(?:tourschedule)/(?:list)/(?:page)/(\\d+)/?$\";s:68:\"index.php?post_type=tribe_events&eventDisplay=list&paged=$matches[1]\";s:56:\"(?:tourschedule)/(?:list)/(?:featured)/(?:page)/(\\d+)/?$\";s:79:\"index.php?post_type=tribe_events&eventDisplay=list&featured=1&paged=$matches[1]\";s:28:\"(?:tourschedule)/(?:list)/?$\";s:50:\"index.php?post_type=tribe_events&eventDisplay=list\";s:41:\"(?:tourschedule)/(?:list)/(?:featured)/?$\";s:61:\"index.php?post_type=tribe_events&eventDisplay=list&featured=1\";s:29:\"(?:tourschedule)/(?:today)/?$\";s:49:\"index.php?post_type=tribe_events&eventDisplay=day\";s:42:\"(?:tourschedule)/(?:today)/(?:featured)/?$\";s:60:\"index.php?post_type=tribe_events&eventDisplay=day&featured=1\";s:33:\"(?:tourschedule)/(\\d{4}-\\d{2})/?$\";s:73:\"index.php?post_type=tribe_events&eventDisplay=month&eventDate=$matches[1]\";s:46:\"(?:tourschedule)/(\\d{4}-\\d{2})/(?:featured)/?$\";s:84:\"index.php?post_type=tribe_events&eventDisplay=month&eventDate=$matches[1]&featured=1\";s:39:\"(?:tourschedule)/(\\d{4}-\\d{2}-\\d{2})/?$\";s:71:\"index.php?post_type=tribe_events&eventDisplay=day&eventDate=$matches[1]\";s:52:\"(?:tourschedule)/(\\d{4}-\\d{2}-\\d{2})/(?:featured)/?$\";s:82:\"index.php?post_type=tribe_events&eventDisplay=day&eventDate=$matches[1]&featured=1\";s:32:\"(?:tourschedule)/(?:featured)/?$\";s:43:\"index.php?post_type=tribe_events&featured=1\";s:19:\"(?:tourschedule)/?$\";s:53:\"index.php?post_type=tribe_events&eventDisplay=default\";s:24:\"(?:tourschedule)/ical/?$\";s:39:\"index.php?post_type=tribe_events&ical=1\";s:37:\"(?:tourschedule)/(?:featured)/ical/?$\";s:50:\"index.php?post_type=tribe_events&ical=1&featured=1\";s:44:\"(?:tourschedule)/(\\d{4}-\\d{2}-\\d{2})/ical/?$\";s:78:\"index.php?post_type=tribe_events&ical=1&eventDisplay=day&eventDate=$matches[1]\";s:57:\"(?:tourschedule)/(\\d{4}-\\d{2}-\\d{2})/ical/(?:featured)/?$\";s:89:\"index.php?post_type=tribe_events&ical=1&eventDisplay=day&eventDate=$matches[1]&featured=1\";s:66:\"(?:tourschedule)/(?:category)/(?:[^/]+/)*([^/]+)/(?:page)/(\\d+)/?$\";s:97:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&paged=$matches[2]\";s:79:\"(?:tourschedule)/(?:category)/(?:[^/]+/)*([^/]+)/(?:featured)/(?:page)/(\\d+)/?$\";s:108:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&featured=1&eventDisplay=list&paged=$matches[2]\";s:61:\"(?:tourschedule)/(?:category)/(?:[^/]+/)*([^/]+)/(?:month)/?$\";s:80:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month\";s:74:\"(?:tourschedule)/(?:category)/(?:[^/]+/)*([^/]+)/(?:month)/(?:featured)/?$\";s:91:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month&featured=1\";s:75:\"(?:tourschedule)/(?:category)/(?:[^/]+/)*([^/]+)/(?:list)/(?:page)/(\\d+)/?$\";s:97:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&paged=$matches[2]\";s:88:\"(?:tourschedule)/(?:category)/(?:[^/]+/)*([^/]+)/(?:list)/(?:featured)/(?:page)/(\\d+)/?$\";s:108:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&featured=1&paged=$matches[2]\";s:60:\"(?:tourschedule)/(?:category)/(?:[^/]+/)*([^/]+)/(?:list)/?$\";s:79:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list\";s:73:\"(?:tourschedule)/(?:category)/(?:[^/]+/)*([^/]+)/(?:list)/(?:featured)/?$\";s:90:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&featured=1\";s:61:\"(?:tourschedule)/(?:category)/(?:[^/]+/)*([^/]+)/(?:today)/?$\";s:78:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day\";s:74:\"(?:tourschedule)/(?:category)/(?:[^/]+/)*([^/]+)/(?:today)/(?:featured)/?$\";s:89:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&featured=1\";s:79:\"(?:tourschedule)/(?:category)/(?:[^/]+/)*([^/]+)/(?:day)/(\\d{4}-\\d{2}-\\d{2})/?$\";s:100:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&eventDate=$matches[2]\";s:92:\"(?:tourschedule)/(?:category)/(?:[^/]+/)*([^/]+)/(?:day)/(\\d{4}-\\d{2}-\\d{2})/(?:featured)/?$\";s:111:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&eventDate=$matches[2]&featured=1\";s:65:\"(?:tourschedule)/(?:category)/(?:[^/]+/)*([^/]+)/(\\d{4}-\\d{2})/?$\";s:102:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month&eventDate=$matches[2]\";s:78:\"(?:tourschedule)/(?:category)/(?:[^/]+/)*([^/]+)/(\\d{4}-\\d{2})/(?:featured)/?$\";s:113:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month&eventDate=$matches[2]&featured=1\";s:71:\"(?:tourschedule)/(?:category)/(?:[^/]+/)*([^/]+)/(\\d{4}-\\d{2}-\\d{2})/?$\";s:100:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&eventDate=$matches[2]\";s:84:\"(?:tourschedule)/(?:category)/(?:[^/]+/)*([^/]+)/(\\d{4}-\\d{2}-\\d{2})/(?:featured)/?$\";s:111:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&eventDate=$matches[2]&featured=1\";s:56:\"(?:tourschedule)/(?:category)/(?:[^/]+/)*([^/]+)/feed/?$\";s:89:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&feed=rss2\";s:69:\"(?:tourschedule)/(?:category)/(?:[^/]+/)*([^/]+)/(?:featured)/feed/?$\";s:100:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&featured=1&eventDisplay=list&feed=rss2\";s:56:\"(?:tourschedule)/(?:category)/(?:[^/]+/)*([^/]+)/ical/?$\";s:68:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&ical=1\";s:69:\"(?:tourschedule)/(?:category)/(?:[^/]+/)*([^/]+)/(?:featured)/ical/?$\";s:79:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&featured=1&ical=1\";s:81:\"(?:tourschedule)/(?:category)/(?:[^/]+/)*([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:78:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&feed=$matches[2]\";s:94:\"(?:tourschedule)/(?:category)/(?:[^/]+/)*([^/]+)/(?:featured)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:89:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&featured=1&feed=$matches[2]\";s:64:\"(?:tourschedule)/(?:category)/(?:[^/]+/)*([^/]+)/(?:featured)/?$\";s:93:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&featured=1&eventDisplay=default\";s:51:\"(?:tourschedule)/(?:category)/(?:[^/]+/)*([^/]+)/?$\";s:82:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=default\";s:50:\"(?:tourschedule)/(?:tag)/([^/]+)/(?:page)/(\\d+)/?$\";s:84:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&paged=$matches[2]\";s:63:\"(?:tourschedule)/(?:tag)/([^/]+)/(?:featured)/(?:page)/(\\d+)/?$\";s:95:\"index.php?post_type=tribe_events&tag=$matches[1]&featured=1&eventDisplay=list&paged=$matches[2]\";s:45:\"(?:tourschedule)/(?:tag)/([^/]+)/(?:month)/?$\";s:67:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month\";s:58:\"(?:tourschedule)/(?:tag)/([^/]+)/(?:month)/(?:featured)/?$\";s:78:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month&featured=1\";s:59:\"(?:tourschedule)/(?:tag)/([^/]+)/(?:list)/(?:page)/(\\d+)/?$\";s:84:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&paged=$matches[2]\";s:72:\"(?:tourschedule)/(?:tag)/([^/]+)/(?:list)/(?:featured)/(?:page)/(\\d+)/?$\";s:95:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&featured=1&paged=$matches[2]\";s:44:\"(?:tourschedule)/(?:tag)/([^/]+)/(?:list)/?$\";s:66:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list\";s:57:\"(?:tourschedule)/(?:tag)/([^/]+)/(?:list)/(?:featured)/?$\";s:77:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&featured=1\";s:45:\"(?:tourschedule)/(?:tag)/([^/]+)/(?:today)/?$\";s:65:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day\";s:58:\"(?:tourschedule)/(?:tag)/([^/]+)/(?:today)/(?:featured)/?$\";s:76:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&featured=1\";s:63:\"(?:tourschedule)/(?:tag)/([^/]+)/(?:day)/(\\d{4}-\\d{2}-\\d{2})/?$\";s:87:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&eventDate=$matches[2]\";s:76:\"(?:tourschedule)/(?:tag)/([^/]+)/(?:day)/(\\d{4}-\\d{2}-\\d{2})/(?:featured)/?$\";s:98:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&eventDate=$matches[2]&featured=1\";s:49:\"(?:tourschedule)/(?:tag)/([^/]+)/(\\d{4}-\\d{2})/?$\";s:89:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month&eventDate=$matches[2]\";s:62:\"(?:tourschedule)/(?:tag)/([^/]+)/(\\d{4}-\\d{2})/(?:featured)/?$\";s:100:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month&eventDate=$matches[2]&featured=1\";s:55:\"(?:tourschedule)/(?:tag)/([^/]+)/(\\d{4}-\\d{2}-\\d{2})/?$\";s:87:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&eventDate=$matches[2]\";s:68:\"(?:tourschedule)/(?:tag)/([^/]+)/(\\d{4}-\\d{2}-\\d{2})/(?:featured)/?$\";s:98:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&eventDate=$matches[2]&featured=1\";s:40:\"(?:tourschedule)/(?:tag)/([^/]+)/feed/?$\";s:76:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&feed=rss2\";s:53:\"(?:tourschedule)/(?:tag)/([^/]+)/(?:featured)/feed/?$\";s:87:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&feed=rss2&featured=1\";s:40:\"(?:tourschedule)/(?:tag)/([^/]+)/ical/?$\";s:55:\"index.php?post_type=tribe_events&tag=$matches[1]&ical=1\";s:53:\"(?:tourschedule)/(?:tag)/([^/]+)/(?:featured)/ical/?$\";s:66:\"index.php?post_type=tribe_events&tag=$matches[1]&featured=1&ical=1\";s:65:\"(?:tourschedule)/(?:tag)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:65:\"index.php?post_type=tribe_events&tag=$matches[1]&feed=$matches[2]\";s:78:\"(?:tourschedule)/(?:tag)/([^/]+)/(?:featured)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:76:\"index.php?post_type=tribe_events&tag=$matches[1]&featured=1&feed=$matches[2]\";s:48:\"(?:tourschedule)/(?:tag)/([^/]+)/(?:featured)/?$\";s:59:\"index.php?post_type=tribe_events&tag=$matches[1]&featured=1\";s:35:\"(?:tourschedule)/(?:tag)/([^/]+)/?$\";s:69:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=default\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:22:\"tribe-promoter-auth/?$\";s:37:\"index.php?tribe-promoter-auth-check=1\";s:8:\"event/?$\";s:32:\"index.php?post_type=tribe_events\";s:38:\"event/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=tribe_events&feed=$matches[1]\";s:33:\"event/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=tribe_events&feed=$matches[1]\";s:25:\"event/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=tribe_events&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"venue/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"venue/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"venue/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"venue/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"venue/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"venue/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"venue/([^/]+)/embed/?$\";s:44:\"index.php?tribe_venue=$matches[1]&embed=true\";s:26:\"venue/([^/]+)/trackback/?$\";s:38:\"index.php?tribe_venue=$matches[1]&tb=1\";s:34:\"venue/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?tribe_venue=$matches[1]&paged=$matches[2]\";s:41:\"venue/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?tribe_venue=$matches[1]&cpage=$matches[2]\";s:30:\"venue/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?tribe_venue=$matches[1]&page=$matches[2]\";s:22:\"venue/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"venue/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"venue/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"venue/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"venue/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"venue/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"organizer/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"organizer/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"organizer/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"organizer/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"organizer/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"organizer/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"organizer/([^/]+)/embed/?$\";s:48:\"index.php?tribe_organizer=$matches[1]&embed=true\";s:30:\"organizer/([^/]+)/trackback/?$\";s:42:\"index.php?tribe_organizer=$matches[1]&tb=1\";s:38:\"organizer/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?tribe_organizer=$matches[1]&paged=$matches[2]\";s:45:\"organizer/([^/]+)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?tribe_organizer=$matches[1]&cpage=$matches[2]\";s:34:\"organizer/([^/]+)(?:/([0-9]+))?/?$\";s:54:\"index.php?tribe_organizer=$matches[1]&page=$matches[2]\";s:26:\"organizer/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"organizer/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"organizer/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"organizer/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"organizer/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"organizer/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"event/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"event/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"event/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"event/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"event/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"event/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"event/([^/]+)/embed/?$\";s:45:\"index.php?tribe_events=$matches[1]&embed=true\";s:26:\"event/([^/]+)/trackback/?$\";s:39:\"index.php?tribe_events=$matches[1]&tb=1\";s:46:\"event/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?tribe_events=$matches[1]&feed=$matches[2]\";s:41:\"event/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?tribe_events=$matches[1]&feed=$matches[2]\";s:34:\"event/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?tribe_events=$matches[1]&paged=$matches[2]\";s:41:\"event/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?tribe_events=$matches[1]&cpage=$matches[2]\";s:30:\"event/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?tribe_events=$matches[1]&page=$matches[2]\";s:22:\"event/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"event/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"event/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"event/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"event/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"event/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:54:\"events/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?tribe_events_cat=$matches[1]&feed=$matches[2]\";s:49:\"events/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?tribe_events_cat=$matches[1]&feed=$matches[2]\";s:30:\"events/category/(.+?)/embed/?$\";s:49:\"index.php?tribe_events_cat=$matches[1]&embed=true\";s:42:\"events/category/(.+?)/page/?([0-9]{1,})/?$\";s:56:\"index.php?tribe_events_cat=$matches[1]&paged=$matches[2]\";s:24:\"events/category/(.+?)/?$\";s:38:\"index.php?tribe_events_cat=$matches[1]\";s:41:\"deleted_event/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"deleted_event/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"deleted_event/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"deleted_event/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"deleted_event/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"deleted_event/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"deleted_event/([^/]+)/embed/?$\";s:46:\"index.php?deleted_event=$matches[1]&embed=true\";s:34:\"deleted_event/([^/]+)/trackback/?$\";s:40:\"index.php?deleted_event=$matches[1]&tb=1\";s:42:\"deleted_event/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?deleted_event=$matches[1]&paged=$matches[2]\";s:49:\"deleted_event/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?deleted_event=$matches[1]&cpage=$matches[2]\";s:38:\"deleted_event/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?deleted_event=$matches[1]&page=$matches[2]\";s:30:\"deleted_event/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"deleted_event/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"deleted_event/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"deleted_event/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"deleted_event/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"deleted_event/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=9&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (1074,'external_updates-event-aggregator','O:8:\"stdClass\":3:{s:9:\"lastCheck\";i:1712963418;s:14:\"checkedVersion\";N;s:6:\"update\";O:19:\"Tribe__PUE__Utility\":16:{s:2:\"id\";i:0;s:6:\"plugin\";N;s:4:\"slug\";N;s:7:\"version\";s:3:\"1.0\";s:8:\"homepage\";N;s:12:\"download_url\";N;s:8:\"sections\";O:8:\"stdClass\":1:{s:9:\"changelog\";s:0:\"\";}s:14:\"upgrade_notice\";N;s:13:\"custom_update\";N;s:13:\"license_error\";s:197:\"<p>You are using Event Aggregator but your license key is invalid. Visit <a href=\"https://theeventscalendar.com/?utm_medium=pue&amp;utm_campaign=in-app\">your account</a> to check your licenses.</p>\";s:8:\"auth_url\";N;s:11:\"api_expired\";N;s:11:\"api_upgrade\";N;s:11:\"api_invalid\";b:1;s:19:\"api_invalid_message\";s:190:\"<p>You are using %plugin_name% but your license key is invalid. Visit <a href=\"https://theeventscalendar.com/?utm_medium=pue&utm_campaign=in-app\">your account</a> to check your licenses.</p>\";s:26:\"api_inline_invalid_message\";s:190:\"<p>You are using %plugin_name% but your license key is invalid. Visit <a href=\"https://theeventscalendar.com/?utm_medium=pue&utm_campaign=in-app\">your account</a> to check your licenses.</p>\";}}','no');
INSERT INTO `wp_options` VALUES (1075,'tribe_pue_key_notices','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (1162,'tribe_customizer','a:3:{s:15:\"global_elements\";a:9:{s:9:\"font_size\";s:1:\"1\";s:14:\"font_size_base\";s:2:\"18\";s:11:\"font_family\";s:5:\"theme\";s:17:\"event_title_color\";s:7:\"#c51a1a\";s:21:\"event_date_time_color\";s:7:\"#c51a1a\";s:23:\"background_color_choice\";s:6:\"custom\";s:12:\"accent_color\";s:7:\"#c51a1a\";s:10:\"link_color\";s:7:\"#c51a1a\";s:16:\"background_color\";s:7:\"#ffffff\";}s:14:\"tec_events_bar\";a:2:{s:28:\"events_bar_icon_color_choice\";s:7:\"default\";s:21:\"events_bar_text_color\";s:7:\"#141827\";}s:12:\"single_event\";a:1:{s:23:\"post_title_color_choice\";s:6:\"custom\";}}','yes');
INSERT INTO `wp_options` VALUES (1184,'ects_options','a:15:{s:15:\"main_skin_color\";s:7:\"#d10000\";s:25:\"main_skin_alternate_color\";s:7:\"#ffffff\";s:25:\"featured_event_skin_color\";s:7:\"#008cff\";s:25:\"featured_event_font_color\";s:7:\"#ffffff\";s:19:\"event_desc_bg_color\";s:7:\"#ffffff\";s:16:\"ect_title_styles\";a:12:{s:11:\"font-family\";s:6:\"Roboto\";s:11:\"font-weight\";s:3:\"900\";s:10:\"font-style\";s:0:\"\";s:6:\"subset\";s:0:\"\";s:10:\"text-align\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:2:\"20\";s:11:\"line-height\";s:1:\"2\";s:14:\"letter-spacing\";s:0:\"\";s:5:\"color\";s:7:\"#383838\";s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:15:\"ect_desc_styles\";a:12:{s:11:\"font-family\";s:9:\"Open Sans\";s:11:\"font-weight\";s:6:\"normal\";s:10:\"font-style\";s:0:\"\";s:6:\"subset\";s:0:\"\";s:10:\"text-align\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:2:\"15\";s:11:\"line-height\";s:3:\"1.5\";s:14:\"letter-spacing\";s:0:\"\";s:5:\"color\";s:7:\"#a5a5a5\";s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:14:\"ect_desc_venue\";a:12:{s:11:\"font-family\";s:9:\"Open Sans\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:6:\"italic\";s:6:\"subset\";s:0:\"\";s:10:\"text-align\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:2:\"15\";s:11:\"line-height\";s:3:\"1.5\";s:14:\"letter-spacing\";s:0:\"\";s:5:\"color\";s:7:\"#a5a5a5\";s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:16:\"ect_dates_styles\";a:12:{s:11:\"font-family\";s:5:\"Monda\";s:11:\"font-weight\";s:3:\"700\";s:10:\"font-style\";s:0:\"\";s:6:\"subset\";s:0:\"\";s:10:\"text-align\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:2:\"30\";s:11:\"line-height\";s:1:\"1\";s:14:\"letter-spacing\";s:0:\"\";s:5:\"color\";s:7:\"#ffffff\";s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:10:\"custom_css\";s:0:\"\";s:16:\"events_not_found\";s:41:\"There are no upcoming events at this time\";s:16:\"events_more_info\";s:13:\"Find out more\";s:19:\"ect_no_featured_img\";a:8:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:21:\"ect_display_categoery\";s:0:\"\";s:20:\"ect_load_google_font\";s:3:\"yes\";}','yes');
INSERT INTO `wp_options` VALUES (1204,'cool-plugins-events-addon-the-events-calendar','a:6:{s:50:\"event-page-templates-addon-for-the-events-calendar\";a:7:{s:4:\"name\";s:49:\"Event Single Page Builder For The Events Calendar\";s:4:\"logo\";s:103:\"https://ps.w.org/event-page-templates-addon-for-the-events-calendar/assets/icon-128x128.png?rev=2691917\";s:4:\"slug\";s:50:\"event-page-templates-addon-for-the-events-calendar\";s:4:\"desc\";s:111:\"The Events Calendar addon to design and modify single event page template. Event details page template builder.\";s:7:\"version\";s:5:\"1.7.0\";s:4:\"tags\";s:19:\"the-events-calendar\";s:13:\"download_link\";s:99:\"https://downloads.wordpress.org/plugin/event-page-templates-addon-for-the-events-calendar.1.6.5.zip\";}s:36:\"events-block-for-the-events-calendar\";a:7:{s:4:\"name\";s:36:\"Events Block For The Events Calendar\";s:4:\"logo\";s:89:\"https://ps.w.org/events-block-for-the-events-calendar/assets/icon-128x128.png?rev=2694091\";s:4:\"slug\";s:36:\"events-block-for-the-events-calendar\";s:4:\"desc\";s:108:\"This Addon provides the missing events Block functionality of The Events Calendar with the Gutenberg&hellip;\";s:7:\"version\";s:5:\"1.3.0\";s:4:\"tags\";s:19:\"the-events-calendar\";s:13:\"download_link\";s:83:\"https://downloads.wordpress.org/plugin/events-block-for-the-events-calendar.1.1.zip\";}s:43:\"events-search-addon-for-the-events-calendar\";a:7:{s:4:\"name\";s:37:\"Events Search For The Events Calendar\";s:4:\"logo\";s:96:\"https://ps.w.org/events-search-addon-for-the-events-calendar/assets/icon-128x128.png?rev=2691915\";s:4:\"slug\";s:43:\"events-search-addon-for-the-events-calendar\";s:4:\"desc\";s:139:\"Events Search addon provides a simple ajax based search box to find any event quickly for The Events Calendar Free Plugin (by MODERN TRIBE)\";s:7:\"version\";s:5:\"1.2.8\";s:4:\"tags\";s:19:\"the-events-calendar\";s:13:\"download_link\";s:86:\"https://downloads.wordpress.org/plugin/events-search-addon-for-the-events-calendar.zip\";}s:24:\"template-events-calendar\";a:7:{s:4:\"name\";s:41:\"Events Shortcodes For The Events Calendar\";s:4:\"logo\";s:77:\"https://ps.w.org/template-events-calendar/assets/icon-128x128.png?rev=2691914\";s:4:\"slug\";s:24:\"template-events-calendar\";s:4:\"desc\";s:130:\"The Events Calendar shortcodes addon provides event shortcode builder &amp; Gutenberg blocks to show events list in any page/post.\";s:7:\"version\";s:5:\"2.4.0\";s:4:\"tags\";s:19:\"the-events-calendar\";s:13:\"download_link\";s:67:\"https://downloads.wordpress.org/plugin/template-events-calendar.zip\";}s:52:\"events-widgets-for-elementor-and-the-events-calendar\";a:7:{s:4:\"name\";s:52:\"Events Widgets For Elementor And The Events Calendar\";s:4:\"logo\";s:105:\"https://ps.w.org/events-widgets-for-elementor-and-the-events-calendar/assets/icon-128x128.png?rev=2691918\";s:4:\"slug\";s:52:\"events-widgets-for-elementor-and-the-events-calendar\";s:4:\"desc\";s:159:\"This Addon solves the major compatibility problem of The Events Calendar with the Elementor Website Builder plugin.It provides stunning events lists,  &hellip;\";s:7:\"version\";s:5:\"1.6.7\";s:4:\"tags\";s:19:\"the-events-calendar\";s:13:\"download_link\";s:95:\"https://downloads.wordpress.org/plugin/events-widgets-for-elementor-and-the-events-calendar.zip\";}s:33:\"countdown-for-the-events-calendar\";a:7:{s:4:\"name\";s:35:\"The Events Calendar Countdown Addon\";s:4:\"logo\";s:86:\"https://ps.w.org/countdown-for-the-events-calendar/assets/icon-128x128.png?rev=2259819\";s:4:\"slug\";s:33:\"countdown-for-the-events-calendar\";s:4:\"desc\";s:159:\"The Events Calendar Countdown Addon provides the ability to create a Beautiful Countdown for The Events Calendar(by Modern Tribe) events with just a f &hellip;\";s:7:\"version\";s:5:\"1.4.8\";s:4:\"tags\";s:19:\"the-events-calendar\";s:13:\"download_link\";s:76:\"https://downloads.wordpress.org/plugin/countdown-for-the-events-calendar.zip\";}}','yes');
INSERT INTO `wp_options` VALUES (1207,'cool-plugins-events-addon-the-events-calendar-pro','a:3:{s:43:\"the-events-calendar-templates-and-shortcode\";a:8:{s:4:\"name\";s:21:\"Events Shortcodes Pro\";s:4:\"logo\";s:60:\"https://plugins.coolplugins.net/proimages/20230321084058.svg\";s:4:\"desc\";s:117:\"Improve your events list. Use shortcodes to display events list, grid, carousel or slider layout on any page or post.\";s:4:\"slug\";s:43:\"the-events-calendar-templates-and-shortcode\";s:7:\"buyLink\";s:148:\"https://eventscalendaraddons.com/plugin/events-shortcodes-pro/?utm_source=events_dashboard&utm_medium=inside&utm_campaign=get_pro&utm_content=button\";s:7:\"version\";s:3:\"3.0\";s:13:\"download_link\";N;s:12:\"incompatible\";s:24:\"template-events-calendar\";}s:18:\"events-widgets-pro\";a:8:{s:4:\"name\";s:36:\"Events Widgets Pro (Elementor Addon)\";s:4:\"logo\";s:60:\"https://plugins.coolplugins.net/proimages/20230321071549.svg\";s:4:\"desc\";s:115:\"The Events Calendar widgets for Elementor page builder. Display events in list, grid and more layouts in Elementor.\";s:4:\"slug\";s:18:\"events-widgets-pro\";s:7:\"buyLink\";s:145:\"https://eventscalendaraddons.com/plugin/events-widgets-pro/?utm_source=events_dashboard&utm_medium=inside&utm_campaign=get_pro&utm_content=button\";s:7:\"version\";s:5:\"2.3.1\";s:13:\"download_link\";N;s:12:\"incompatible\";s:52:\"events-widgets-for-elementor-and-the-events-calendar\";}s:29:\"event-single-page-builder-pro\";a:8:{s:4:\"name\";s:29:\"Event Single Page Builder Pro\";s:4:\"logo\";s:60:\"https://plugins.coolplugins.net/proimages/20230321090049.svg\";s:4:\"desc\";s:113:\"Design single event page template in awesome layout. You can also design event single page template in Elementor.\";s:4:\"slug\";s:29:\"event-single-page-builder-pro\";s:7:\"buyLink\";s:156:\"https://eventscalendaraddons.com/plugin/event-single-page-builder-pro/?utm_source=events_dashboard&utm_medium=inside&utm_campaign=get_pro&utm_content=button\";s:7:\"version\";s:5:\"1.4.0\";s:13:\"download_link\";N;s:12:\"incompatible\";s:50:\"event-page-templates-addon-for-the-events-calendar\";}}','yes');
INSERT INTO `wp_options` VALUES (1216,'action_scheduler_migration_status','complete','yes');
INSERT INTO `wp_options` VALUES (4126,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1715394725;s:7:\"checked\";a:1:{s:15:\"motownchristmas\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (4143,'_site_transient_timeout_theme_roots','1715396525','no');
INSERT INTO `wp_options` VALUES (4144,'_site_transient_theme_roots','a:1:{s:15:\"motownchristmas\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (4145,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1715394726;s:8:\"response\";a:1:{s:43:\"the-events-calendar/the-events-calendar.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:33:\"w.org/plugins/the-events-calendar\";s:4:\"slug\";s:19:\"the-events-calendar\";s:6:\"plugin\";s:43:\"the-events-calendar/the-events-calendar.php\";s:11:\"new_version\";s:7:\"6.4.0.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/the-events-calendar/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/the-events-calendar.6.4.0.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/the-events-calendar/assets/icon-256x256.gif?rev=2516440\";s:2:\"1x\";s:72:\"https://ps.w.org/the-events-calendar/assets/icon-128x128.gif?rev=2516440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/the-events-calendar/assets/banner-1544x500.png?rev=2257622\";s:2:\"1x\";s:74:\"https://ps.w.org/the-events-calendar/assets/banner-772x250.png?rev=2257622\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.3\";s:6:\"tested\";s:5:\"6.5.3\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:47:\"show-current-template/show-current-template.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/show-current-template\";s:4:\"slug\";s:21:\"show-current-template\";s:6:\"plugin\";s:47:\"show-current-template/show-current-template.php\";s:11:\"new_version\";s:5:\"0.5.2\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/show-current-template/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/show-current-template.0.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:66:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=2955632\";s:3:\"svg\";s:66:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=2955632\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";}}s:7:\"checked\";a:3:{s:47:\"show-current-template/show-current-template.php\";s:5:\"0.5.2\";s:43:\"the-events-calendar/the-events-calendar.php\";s:5:\"6.3.6\";s:48:\"tribe-ext-link-events-to-website-urls/plugin.php\";s:5:\"1.3.0\";}}','no');
INSERT INTO `wp_options` VALUES (4146,'_site_transient_timeout_php_check_18f908370f4cb169b20964c7203d6110','1715999526','no');
INSERT INTO `wp_options` VALUES (4147,'_site_transient_php_check_18f908370f4cb169b20964c7203d6110','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=500 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (9,9,'_edit_lock','1713321414:1');
INSERT INTO `wp_postmeta` VALUES (10,11,'_edit_lock','1712890363:1');
INSERT INTO `wp_postmeta` VALUES (11,13,'_edit_lock','1712890359:1');
INSERT INTO `wp_postmeta` VALUES (12,15,'_edit_lock','1714532026:1');
INSERT INTO `wp_postmeta` VALUES (13,17,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (14,17,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (15,17,'_menu_item_object_id','17');
INSERT INTO `wp_postmeta` VALUES (16,17,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (17,17,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (18,17,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (19,17,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (20,17,'_menu_item_url','http://motownchristmas.local/');
INSERT INTO `wp_postmeta` VALUES (21,17,'_menu_item_orphaned','1712801488');
INSERT INTO `wp_postmeta` VALUES (22,18,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (23,18,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (24,18,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (25,18,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (26,18,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (27,18,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (28,18,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (29,18,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (30,18,'_menu_item_orphaned','1712801488');
INSERT INTO `wp_postmeta` VALUES (31,19,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (32,19,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (33,19,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (34,19,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (35,19,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (36,19,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (37,19,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (38,19,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (39,19,'_menu_item_orphaned','1712801488');
INSERT INTO `wp_postmeta` VALUES (40,20,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (41,20,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (42,20,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (43,20,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (44,20,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (45,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (46,20,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (47,20,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (48,20,'_menu_item_orphaned','1712801488');
INSERT INTO `wp_postmeta` VALUES (49,21,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (50,21,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (51,21,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (52,21,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (53,21,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (54,21,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (55,21,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (56,21,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (57,21,'_menu_item_orphaned','1712801488');
INSERT INTO `wp_postmeta` VALUES (58,22,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (59,22,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (60,22,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (61,22,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (62,22,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (63,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (64,22,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (65,22,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (66,22,'_menu_item_orphaned','1712801506');
INSERT INTO `wp_postmeta` VALUES (67,23,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (68,23,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (69,23,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (70,23,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (71,23,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (72,23,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (73,23,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (74,23,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (75,23,'_menu_item_orphaned','1712801506');
INSERT INTO `wp_postmeta` VALUES (76,24,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (77,24,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (78,24,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (79,24,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (80,24,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (81,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (82,24,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (83,24,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (84,24,'_menu_item_orphaned','1712801506');
INSERT INTO `wp_postmeta` VALUES (85,25,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (86,25,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (87,25,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (88,25,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (89,25,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (90,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (91,25,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (92,25,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (93,25,'_menu_item_orphaned','1712801506');
INSERT INTO `wp_postmeta` VALUES (94,26,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (95,26,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (96,26,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (97,26,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (98,26,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (99,26,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (100,26,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (101,26,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (103,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (104,27,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (105,27,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (106,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (107,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (108,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (109,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (110,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (121,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (122,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (123,29,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (124,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (125,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (126,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (127,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (128,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (130,30,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (131,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (132,30,'_menu_item_object_id','30');
INSERT INTO `wp_postmeta` VALUES (133,30,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (134,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (135,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (136,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (137,30,'_menu_item_url','https://www.facebook.com/TheMotortownAllStars/');
INSERT INTO `wp_postmeta` VALUES (139,29,'_wp_old_date','2024-04-11');
INSERT INTO `wp_postmeta` VALUES (140,26,'_wp_old_date','2024-04-11');
INSERT INTO `wp_postmeta` VALUES (141,27,'_wp_old_date','2024-04-11');
INSERT INTO `wp_postmeta` VALUES (143,15,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (144,15,'_wp_page_template','');
INSERT INTO `wp_postmeta` VALUES (145,13,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (146,13,'_wp_page_template','general-template.php');
INSERT INTO `wp_postmeta` VALUES (147,11,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (148,11,'_wp_page_template','general-template.php');
INSERT INTO `wp_postmeta` VALUES (149,31,'_wp_attached_file','2024/04/motown_christmas_logo.png');
INSERT INTO `wp_postmeta` VALUES (150,31,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:487;s:6:\"height\";i:458;s:4:\"file\";s:33:\"2024/04/motown_christmas_logo.png\";s:8:\"filesize\";i:172348;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:33:\"motown_christmas_logo-300x282.png\";s:5:\"width\";i:300;s:6:\"height\";i:282;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:99608;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:33:\"motown_christmas_logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:38061;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (151,32,'_wp_attached_file','2024/04/cropped-motown_christmas_logo.png');
INSERT INTO `wp_postmeta` VALUES (152,32,'_wp_attachment_context','custom-logo');
INSERT INTO `wp_postmeta` VALUES (153,32,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:487;s:6:\"height\";i:458;s:4:\"file\";s:41:\"2024/04/cropped-motown_christmas_logo.png\";s:8:\"filesize\";i:195394;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:41:\"cropped-motown_christmas_logo-300x282.png\";s:5:\"width\";i:300;s:6:\"height\";i:282;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:99608;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:41:\"cropped-motown_christmas_logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:38061;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (154,33,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (155,33,'_wp_trash_meta_time','1712891870');
INSERT INTO `wp_postmeta` VALUES (156,32,'_oembed_092438a30b262ef821c4701ba8b30da2','{{unknown}}');
INSERT INTO `wp_postmeta` VALUES (157,9,'_oembed_b6ebb0ad88e9d306cd01414936758f21','<iframe title=\"A Motown Christmas  25 City Announced\" width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/v5WI_M-I9qk?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>');
INSERT INTO `wp_postmeta` VALUES (158,9,'_oembed_time_b6ebb0ad88e9d306cd01414936758f21','1712893555');
INSERT INTO `wp_postmeta` VALUES (160,9,'_oembed_c2ed3b3bed6da5bd8e5fcc5b4ed35af1','<iframe title=\"A Motown Christmas  25 City Announced\" width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/v5WI_M-I9qk?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>');
INSERT INTO `wp_postmeta` VALUES (161,9,'_oembed_time_c2ed3b3bed6da5bd8e5fcc5b4ed35af1','1713141951');
INSERT INTO `wp_postmeta` VALUES (162,1,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (163,1,'_wp_trash_meta_time','1712895101');
INSERT INTO `wp_postmeta` VALUES (164,1,'_wp_desired_post_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (165,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES (166,43,'_EventOrigin','events-calendar');
INSERT INTO `wp_postmeta` VALUES (167,43,'_tribe_modified_fields','a:23:{s:12:\"_EventOrigin\";i:1712895498;s:10:\"_edit_last\";i:1712895552;s:10:\"post_title\";i:1712895552;s:11:\"post_status\";i:1712960648;s:17:\"_EventShowMapLink\";i:1712895594;s:13:\"_EventShowMap\";i:1712895594;s:13:\"_EventVenueID\";i:1712895594;s:15:\"_EventStartDate\";i:1712895594;s:13:\"_EventEndDate\";i:1712895594;s:18:\"_EventStartDateUTC\";i:1712895594;s:16:\"_EventEndDateUTC\";i:1712895594;s:14:\"_EventDuration\";i:1712895594;s:20:\"_EventCurrencySymbol\";i:1712895594;s:18:\"_EventCurrencyCode\";i:1712895594;s:22:\"_EventCurrencyPosition\";i:1712895594;s:10:\"_EventCost\";i:1712895594;s:9:\"_EventURL\";i:1712895594;s:14:\"_EventTimezone\";i:1712895594;s:18:\"_EventTimezoneAbbr\";i:1712895594;s:36:\"_tribe_ignored_event_previous_status\";i:1712960648;s:21:\"_wp_trash_meta_status\";i:1712960648;s:19:\"_wp_trash_meta_time\";i:1712960648;s:21:\"_wp_desired_post_slug\";i:1712960648;}');
INSERT INTO `wp_postmeta` VALUES (168,43,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (169,43,'_edit_lock','1712960501:1');
INSERT INTO `wp_postmeta` VALUES (170,43,'_EventShowMapLink','');
INSERT INTO `wp_postmeta` VALUES (171,43,'_EventShowMap','');
INSERT INTO `wp_postmeta` VALUES (172,44,'_VenueOrigin','events-calendar');
INSERT INTO `wp_postmeta` VALUES (173,44,'_tribe_modified_fields','a:14:{s:12:\"_VenueOrigin\";i:1712895594;s:17:\"_EventShowMapLink\";i:1712895594;s:13:\"_EventShowMap\";i:1712895594;s:17:\"_VenueShowMapLink\";i:1712895594;s:13:\"_VenueShowMap\";i:1712895594;s:13:\"_VenueAddress\";i:1712895594;s:10:\"_VenueCity\";i:1712895594;s:13:\"_VenueCountry\";i:1712895594;s:14:\"_VenueProvince\";i:1712895594;s:11:\"_VenueState\";i:1712895594;s:9:\"_VenueZip\";i:1712895594;s:11:\"_VenuePhone\";i:1712895594;s:9:\"_VenueURL\";i:1712895594;s:19:\"_VenueStateProvince\";i:1712895594;}');
INSERT INTO `wp_postmeta` VALUES (174,44,'_EventShowMapLink','1');
INSERT INTO `wp_postmeta` VALUES (175,44,'_EventShowMap','1');
INSERT INTO `wp_postmeta` VALUES (176,44,'_VenueShowMapLink','1');
INSERT INTO `wp_postmeta` VALUES (177,44,'_VenueShowMap','1');
INSERT INTO `wp_postmeta` VALUES (178,44,'_VenueAddress','');
INSERT INTO `wp_postmeta` VALUES (179,44,'_VenueCity','');
INSERT INTO `wp_postmeta` VALUES (180,44,'_VenueCountry','');
INSERT INTO `wp_postmeta` VALUES (181,44,'_VenueProvince','');
INSERT INTO `wp_postmeta` VALUES (182,44,'_VenueState','');
INSERT INTO `wp_postmeta` VALUES (183,44,'_VenueZip','');
INSERT INTO `wp_postmeta` VALUES (184,44,'_VenuePhone','');
INSERT INTO `wp_postmeta` VALUES (185,44,'_VenueURL','');
INSERT INTO `wp_postmeta` VALUES (186,44,'_VenueStateProvince','');
INSERT INTO `wp_postmeta` VALUES (187,43,'_EventVenueID','44');
INSERT INTO `wp_postmeta` VALUES (188,43,'_EventStartDate','2024-04-19 19:30:00');
INSERT INTO `wp_postmeta` VALUES (189,43,'_EventEndDate','2024-04-19 19:30:00');
INSERT INTO `wp_postmeta` VALUES (190,43,'_EventStartDateUTC','2024-04-19 19:30:00');
INSERT INTO `wp_postmeta` VALUES (191,43,'_EventEndDateUTC','2024-04-19 19:30:00');
INSERT INTO `wp_postmeta` VALUES (192,43,'_EventDuration','0');
INSERT INTO `wp_postmeta` VALUES (193,43,'_EventCurrencySymbol','');
INSERT INTO `wp_postmeta` VALUES (194,43,'_EventCurrencyCode','');
INSERT INTO `wp_postmeta` VALUES (195,43,'_EventCurrencyPosition','prefix');
INSERT INTO `wp_postmeta` VALUES (196,43,'_EventCost','');
INSERT INTO `wp_postmeta` VALUES (197,43,'_EventURL','1964thetribute.com');
INSERT INTO `wp_postmeta` VALUES (198,43,'_EventTimezone','UTC+0');
INSERT INTO `wp_postmeta` VALUES (199,43,'_EventTimezoneAbbr','UTC+0');
INSERT INTO `wp_postmeta` VALUES (200,46,'_EventOrigin','events-calendar');
INSERT INTO `wp_postmeta` VALUES (201,46,'_tribe_modified_fields','a:24:{s:12:\"_EventOrigin\";i:1712895671;s:10:\"_edit_last\";i:1712895686;s:10:\"post_title\";i:1712895717;s:11:\"post_status\";i:1714015751;s:17:\"_EventShowMapLink\";i:1712895707;s:13:\"_EventShowMap\";i:1712895707;s:15:\"_EventStartDate\";i:1714010765;s:13:\"_EventEndDate\";i:1714010765;s:18:\"_EventStartDateUTC\";i:1714010765;s:16:\"_EventEndDateUTC\";i:1714010765;s:14:\"_EventDuration\";i:1712895707;s:20:\"_EventCurrencySymbol\";i:1712895707;s:18:\"_EventCurrencyCode\";i:1712895707;s:22:\"_EventCurrencyPosition\";i:1712895707;s:10:\"_EventCost\";i:1712895707;s:9:\"_EventURL\";i:1712967548;s:14:\"_EventTimezone\";i:1712895707;s:18:\"_EventTimezoneAbbr\";i:1712895707;s:13:\"_EventVenueID\";i:1712967548;s:12:\"_EventAllDay\";i:1714010765;s:36:\"_tribe_ignored_event_previous_status\";i:1714015751;s:21:\"_wp_trash_meta_status\";i:1714015751;s:19:\"_wp_trash_meta_time\";i:1714015751;s:21:\"_wp_desired_post_slug\";i:1714015751;}');
INSERT INTO `wp_postmeta` VALUES (202,46,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (203,46,'_edit_lock','1714011373:1');
INSERT INTO `wp_postmeta` VALUES (204,46,'_EventShowMapLink','');
INSERT INTO `wp_postmeta` VALUES (205,46,'_EventShowMap','');
INSERT INTO `wp_postmeta` VALUES (206,46,'_EventStartDate','2024-05-17 00:00:00');
INSERT INTO `wp_postmeta` VALUES (207,46,'_EventEndDate','2024-05-17 23:59:59');
INSERT INTO `wp_postmeta` VALUES (208,46,'_EventStartDateUTC','2024-05-17 00:00:00');
INSERT INTO `wp_postmeta` VALUES (209,46,'_EventEndDateUTC','2024-05-17 23:59:59');
INSERT INTO `wp_postmeta` VALUES (210,46,'_EventDuration','0');
INSERT INTO `wp_postmeta` VALUES (211,46,'_EventCurrencySymbol','');
INSERT INTO `wp_postmeta` VALUES (212,46,'_EventCurrencyCode','');
INSERT INTO `wp_postmeta` VALUES (213,46,'_EventCurrencyPosition','prefix');
INSERT INTO `wp_postmeta` VALUES (214,46,'_EventCost','');
INSERT INTO `wp_postmeta` VALUES (215,46,'_EventURL','https://pullocenter.york.psu.edu/events/event_details/1964-the-tribute');
INSERT INTO `wp_postmeta` VALUES (216,46,'_EventTimezone','UTC+0');
INSERT INTO `wp_postmeta` VALUES (217,46,'_EventTimezoneAbbr','UTC+0');
INSERT INTO `wp_postmeta` VALUES (218,50,'_cancelled','0');
INSERT INTO `wp_postmeta` VALUES (219,50,'_featured','0');
INSERT INTO `wp_postmeta` VALUES (220,50,'_edit_lock','1712896513:1');
INSERT INTO `wp_postmeta` VALUES (221,50,'_event_expiry_date','');
INSERT INTO `wp_postmeta` VALUES (222,50,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (223,50,'_event_title','Altoona PA');
INSERT INTO `wp_postmeta` VALUES (224,50,'_event_pincode','');
INSERT INTO `wp_postmeta` VALUES (225,50,'_event_location','');
INSERT INTO `wp_postmeta` VALUES (226,50,'_event_country','');
INSERT INTO `wp_postmeta` VALUES (227,50,'_event_banner','');
INSERT INTO `wp_postmeta` VALUES (228,50,'_registration','1964thetribute.com');
INSERT INTO `wp_postmeta` VALUES (229,50,'_event_video_url','');
INSERT INTO `wp_postmeta` VALUES (230,50,'_event_start_date','');
INSERT INTO `wp_postmeta` VALUES (231,50,'_event_start_time','');
INSERT INTO `wp_postmeta` VALUES (232,50,'_event_end_date','');
INSERT INTO `wp_postmeta` VALUES (233,50,'_event_end_time','');
INSERT INTO `wp_postmeta` VALUES (234,50,'_event_registration_deadline','');
INSERT INTO `wp_postmeta` VALUES (235,50,'_event_organizer_ids','');
INSERT INTO `wp_postmeta` VALUES (236,50,'_event_venue_ids','');
INSERT INTO `wp_postmeta` VALUES (237,50,'_view_count','0');
INSERT INTO `wp_postmeta` VALUES (238,50,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (239,50,'_wp_trash_meta_time','1712896513');
INSERT INTO `wp_postmeta` VALUES (240,50,'_wp_desired_post_slug','altoona-pa');
INSERT INTO `wp_postmeta` VALUES (241,56,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (242,56,'_edit_lock','1712961915:1');
INSERT INTO `wp_postmeta` VALUES (243,57,'_location_address','1208 12th Ave #206 ');
INSERT INTO `wp_postmeta` VALUES (244,57,'_location_town','Altoona');
INSERT INTO `wp_postmeta` VALUES (245,57,'_location_state','PA');
INSERT INTO `wp_postmeta` VALUES (246,57,'_location_postcode','16601');
INSERT INTO `wp_postmeta` VALUES (247,57,'_location_id','1');
INSERT INTO `wp_postmeta` VALUES (248,56,'_event_id','1');
INSERT INTO `wp_postmeta` VALUES (249,56,'_event_timezone','UTC');
INSERT INTO `wp_postmeta` VALUES (250,56,'_event_start_time','19:30:00');
INSERT INTO `wp_postmeta` VALUES (251,56,'_event_end_time','19:30:00');
INSERT INTO `wp_postmeta` VALUES (252,56,'_event_start','2024-04-19 19:30:00');
INSERT INTO `wp_postmeta` VALUES (253,56,'_event_end','2024-04-19 19:30:00');
INSERT INTO `wp_postmeta` VALUES (254,56,'_event_start_date','2024-04-19');
INSERT INTO `wp_postmeta` VALUES (255,56,'_event_end_date','2024-04-19');
INSERT INTO `wp_postmeta` VALUES (256,56,'_event_location_type',NULL);
INSERT INTO `wp_postmeta` VALUES (257,56,'_event_active_status','1');
INSERT INTO `wp_postmeta` VALUES (258,56,'_event_start_local','2024-04-19 19:30:00');
INSERT INTO `wp_postmeta` VALUES (259,56,'_event_end_local','2024-04-19 19:30:00');
INSERT INTO `wp_postmeta` VALUES (260,58,'_location_address','1208 12th Ave');
INSERT INTO `wp_postmeta` VALUES (261,58,'_location_town','Altoona');
INSERT INTO `wp_postmeta` VALUES (262,58,'_location_state','PA');
INSERT INTO `wp_postmeta` VALUES (263,58,'_location_postcode','16601');
INSERT INTO `wp_postmeta` VALUES (264,58,'_location_country','GB');
INSERT INTO `wp_postmeta` VALUES (265,58,'_location_id','2');
INSERT INTO `wp_postmeta` VALUES (266,56,'_location_id','2');
INSERT INTO `wp_postmeta` VALUES (267,60,'_edit_lock','1712960261:1');
INSERT INTO `wp_postmeta` VALUES (270,60,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (271,60,'_wp_trash_meta_time','1712960408');
INSERT INTO `wp_postmeta` VALUES (272,60,'_wp_desired_post_slug','april-19th-altoona-pa');
INSERT INTO `wp_postmeta` VALUES (273,49,'_edit_lock','1714015367:1');
INSERT INTO `wp_postmeta` VALUES (274,51,'_edit_lock','1712960367:1');
INSERT INTO `wp_postmeta` VALUES (275,11,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (276,11,'_wp_trash_meta_time','1712960544');
INSERT INTO `wp_postmeta` VALUES (277,11,'_wp_desired_post_slug','tour-schedule');
INSERT INTO `wp_postmeta` VALUES (287,43,'_tribe_ignored_event_previous_status','publish');
INSERT INTO `wp_postmeta` VALUES (288,43,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (289,43,'_wp_trash_meta_time','1712960648');
INSERT INTO `wp_postmeta` VALUES (290,43,'_wp_desired_post_slug','altoona-pa');
INSERT INTO `wp_postmeta` VALUES (291,64,'_EventOrigin','events-calendar');
INSERT INTO `wp_postmeta` VALUES (292,64,'_tribe_modified_fields','a:26:{s:12:\"_EventOrigin\";i:1712960649;s:10:\"_edit_last\";i:1712960654;s:10:\"post_title\";i:1712960654;s:11:\"post_status\";i:1714015753;s:17:\"_EventShowMapLink\";i:1712961186;s:13:\"_EventShowMap\";i:1712961186;s:15:\"_EventStartDate\";i:1714010720;s:13:\"_EventEndDate\";i:1714010720;s:18:\"_EventStartDateUTC\";i:1714010720;s:16:\"_EventEndDateUTC\";i:1714010720;s:14:\"_EventDuration\";i:1712960673;s:20:\"_EventCurrencySymbol\";i:1712960673;s:18:\"_EventCurrencyCode\";i:1712960673;s:22:\"_EventCurrencyPosition\";i:1712960673;s:10:\"_EventCost\";i:1712960673;s:9:\"_EventURL\";i:1712960673;s:14:\"_EventTimezone\";i:1712960673;s:18:\"_EventTimezoneAbbr\";i:1712960673;s:11:\"Buy Tickets\";i:1712963372;s:12:\"post_content\";i:1712963335;s:13:\"_EventVenueID\";i:1712966305;s:12:\"_EventAllDay\";i:1714010720;s:36:\"_tribe_ignored_event_previous_status\";i:1714015753;s:21:\"_wp_trash_meta_status\";i:1714015753;s:19:\"_wp_trash_meta_time\";i:1714015753;s:21:\"_wp_desired_post_slug\";i:1714015753;}');
INSERT INTO `wp_postmeta` VALUES (293,64,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (294,64,'_edit_lock','1714010608:1');
INSERT INTO `wp_postmeta` VALUES (295,64,'_EventShowMapLink','');
INSERT INTO `wp_postmeta` VALUES (296,64,'_EventShowMap','');
INSERT INTO `wp_postmeta` VALUES (297,64,'_EventStartDate','2024-05-16 00:00:00');
INSERT INTO `wp_postmeta` VALUES (298,64,'_EventEndDate','2024-05-16 23:59:59');
INSERT INTO `wp_postmeta` VALUES (299,64,'_EventStartDateUTC','2024-05-16 00:00:00');
INSERT INTO `wp_postmeta` VALUES (300,64,'_EventEndDateUTC','2024-05-16 23:59:59');
INSERT INTO `wp_postmeta` VALUES (301,64,'_EventDuration','0');
INSERT INTO `wp_postmeta` VALUES (302,64,'_EventCurrencySymbol','');
INSERT INTO `wp_postmeta` VALUES (303,64,'_EventCurrencyCode','');
INSERT INTO `wp_postmeta` VALUES (304,64,'_EventCurrencyPosition','prefix');
INSERT INTO `wp_postmeta` VALUES (305,64,'_EventCost','');
INSERT INTO `wp_postmeta` VALUES (306,64,'_EventURL','1964thetribute.com');
INSERT INTO `wp_postmeta` VALUES (307,64,'_EventTimezone','UTC+0');
INSERT INTO `wp_postmeta` VALUES (308,64,'_EventTimezoneAbbr','UTC+0');
INSERT INTO `wp_postmeta` VALUES (339,74,'_edit_lock','1712961414:1');
INSERT INTO `wp_postmeta` VALUES (342,51,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (343,51,'_wp_trash_meta_time','1712961556');
INSERT INTO `wp_postmeta` VALUES (344,51,'_wp_desired_post_slug','events-2');
INSERT INTO `wp_postmeta` VALUES (345,53,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (346,53,'_wp_trash_meta_time','1712961556');
INSERT INTO `wp_postmeta` VALUES (347,53,'_wp_desired_post_slug','categories');
INSERT INTO `wp_postmeta` VALUES (348,52,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (349,52,'_wp_trash_meta_time','1712961556');
INSERT INTO `wp_postmeta` VALUES (350,52,'_wp_desired_post_slug','locations');
INSERT INTO `wp_postmeta` VALUES (351,55,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (352,55,'_wp_trash_meta_time','1712961556');
INSERT INTO `wp_postmeta` VALUES (353,55,'_wp_desired_post_slug','my-bookings');
INSERT INTO `wp_postmeta` VALUES (354,54,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (355,54,'_wp_trash_meta_time','1712961556');
INSERT INTO `wp_postmeta` VALUES (356,54,'_wp_desired_post_slug','tags');
INSERT INTO `wp_postmeta` VALUES (357,82,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (358,82,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (359,82,'_menu_item_object_id','49');
INSERT INTO `wp_postmeta` VALUES (360,82,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (361,82,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (362,82,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (363,82,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (364,82,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (366,83,'_edit_lock','1712963142:1');
INSERT INTO `wp_postmeta` VALUES (369,86,'_cancelled','0');
INSERT INTO `wp_postmeta` VALUES (370,86,'_featured','0');
INSERT INTO `wp_postmeta` VALUES (371,86,'_edit_lock','1712962188:1');
INSERT INTO `wp_postmeta` VALUES (372,86,'_event_expiry_date','');
INSERT INTO `wp_postmeta` VALUES (373,86,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (374,86,'_event_title','Altoona PA');
INSERT INTO `wp_postmeta` VALUES (375,86,'_event_online','no');
INSERT INTO `wp_postmeta` VALUES (376,86,'_event_pincode','');
INSERT INTO `wp_postmeta` VALUES (377,86,'_event_location','');
INSERT INTO `wp_postmeta` VALUES (378,86,'_event_country','');
INSERT INTO `wp_postmeta` VALUES (379,86,'_event_banner','');
INSERT INTO `wp_postmeta` VALUES (380,86,'_registration','alcantaradevelopment@gmail.com');
INSERT INTO `wp_postmeta` VALUES (381,86,'_event_video_url','');
INSERT INTO `wp_postmeta` VALUES (382,86,'_event_start_date','2024-04-19 19:30:00');
INSERT INTO `wp_postmeta` VALUES (383,86,'_event_start_time','19:30:00');
INSERT INTO `wp_postmeta` VALUES (384,86,'_event_end_date','2024-04-19 22:49:48');
INSERT INTO `wp_postmeta` VALUES (385,86,'_event_end_time','');
INSERT INTO `wp_postmeta` VALUES (386,86,'_event_registration_deadline','');
INSERT INTO `wp_postmeta` VALUES (387,86,'_event_organizer_ids','');
INSERT INTO `wp_postmeta` VALUES (388,86,'_event_venue_ids','');
INSERT INTO `wp_postmeta` VALUES (389,86,'_view_count','0');
INSERT INTO `wp_postmeta` VALUES (390,86,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (391,86,'_wp_trash_meta_time','1712962262');
INSERT INTO `wp_postmeta` VALUES (392,86,'_wp_desired_post_slug','altoona-pa');
INSERT INTO `wp_postmeta` VALUES (396,85,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (397,85,'_wp_trash_meta_time','1712962412');
INSERT INTO `wp_postmeta` VALUES (398,85,'_wp_desired_post_slug','events');
INSERT INTO `wp_postmeta` VALUES (404,93,'_edit_lock','1712964940:1');
INSERT INTO `wp_postmeta` VALUES (405,93,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (406,93,'_wp_trash_meta_time','1712964942');
INSERT INTO `wp_postmeta` VALUES (407,94,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (408,94,'_wp_trash_meta_time','1712965969');
INSERT INTO `wp_postmeta` VALUES (411,64,'_EventVenueID','44');
INSERT INTO `wp_postmeta` VALUES (415,107,'_VenueOrigin','events-calendar');
INSERT INTO `wp_postmeta` VALUES (416,107,'_tribe_modified_fields','a:15:{s:12:\"_VenueOrigin\";i:1712967548;s:17:\"_EventShowMapLink\";i:1712967548;s:13:\"_EventShowMap\";i:1712967548;s:17:\"_VenueShowMapLink\";i:1712967548;s:13:\"_VenueShowMap\";i:1712967548;s:13:\"_VenueVenueID\";i:1712967548;s:13:\"_VenueAddress\";i:1712967548;s:10:\"_VenueCity\";i:1712967548;s:13:\"_VenueCountry\";i:1712967548;s:14:\"_VenueProvince\";i:1712967548;s:11:\"_VenueState\";i:1712967548;s:9:\"_VenueZip\";i:1712967548;s:11:\"_VenuePhone\";i:1712967548;s:9:\"_VenueURL\";i:1712967548;s:19:\"_VenueStateProvince\";i:1712967548;}');
INSERT INTO `wp_postmeta` VALUES (417,107,'_EventShowMapLink','1');
INSERT INTO `wp_postmeta` VALUES (418,107,'_EventShowMap','1');
INSERT INTO `wp_postmeta` VALUES (419,107,'_VenueShowMapLink','1');
INSERT INTO `wp_postmeta` VALUES (420,107,'_VenueShowMap','1');
INSERT INTO `wp_postmeta` VALUES (421,107,'_VenueVenueID','');
INSERT INTO `wp_postmeta` VALUES (422,107,'_VenueAddress','');
INSERT INTO `wp_postmeta` VALUES (423,107,'_VenueCity','');
INSERT INTO `wp_postmeta` VALUES (424,107,'_VenueCountry','');
INSERT INTO `wp_postmeta` VALUES (425,107,'_VenueProvince','');
INSERT INTO `wp_postmeta` VALUES (426,107,'_VenueState','');
INSERT INTO `wp_postmeta` VALUES (427,107,'_VenueZip','');
INSERT INTO `wp_postmeta` VALUES (428,107,'_VenuePhone','');
INSERT INTO `wp_postmeta` VALUES (429,107,'_VenueURL','');
INSERT INTO `wp_postmeta` VALUES (430,107,'_VenueStateProvince','');
INSERT INTO `wp_postmeta` VALUES (431,46,'_EventVenueID','107');
INSERT INTO `wp_postmeta` VALUES (434,112,'_wp_attached_file','2024/04/cid_F13674B2-2.png');
INSERT INTO `wp_postmeta` VALUES (435,112,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:3178;s:6:\"height\";i:1656;s:4:\"file\";s:26:\"2024/04/cid_F13674B2-2.png\";s:8:\"filesize\";i:253106;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"cid_F13674B2-2-300x156.png\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:33637;}s:5:\"large\";a:5:{s:4:\"file\";s:27:\"cid_F13674B2-2-1024x534.png\";s:5:\"width\";i:1024;s:6:\"height\";i:534;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:145939;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"cid_F13674B2-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:21045;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"cid_F13674B2-2-768x400.png\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:104416;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:27:\"cid_F13674B2-2-1536x800.png\";s:5:\"width\";i:1536;s:6:\"height\";i:800;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:228450;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:28:\"cid_F13674B2-2-2048x1067.png\";s:5:\"width\";i:2048;s:6:\"height\";i:1067;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:315078;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (436,114,'_wp_attached_file','2024/04/cid_F13674B2-2-copy.png');
INSERT INTO `wp_postmeta` VALUES (437,114,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:3178;s:6:\"height\";i:1656;s:4:\"file\";s:31:\"2024/04/cid_F13674B2-2-copy.png\";s:8:\"filesize\";i:878735;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:31:\"cid_F13674B2-2-copy-300x156.png\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:47893;}s:5:\"large\";a:5:{s:4:\"file\";s:32:\"cid_F13674B2-2-copy-1024x534.png\";s:5:\"width\";i:1024;s:6:\"height\";i:534;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:224860;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"cid_F13674B2-2-copy-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:30520;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:31:\"cid_F13674B2-2-copy-768x400.png\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:157936;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:32:\"cid_F13674B2-2-copy-1536x800.png\";s:5:\"width\";i:1536;s:6:\"height\";i:800;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:372820;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:33:\"cid_F13674B2-2-copy-2048x1067.png\";s:5:\"width\";i:2048;s:6:\"height\";i:1067;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:549045;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (438,64,'_EventAllDay','yes');
INSERT INTO `wp_postmeta` VALUES (439,46,'_EventAllDay','yes');
INSERT INTO `wp_postmeta` VALUES (440,116,'_edit_lock','1714014973:1');
INSERT INTO `wp_postmeta` VALUES (441,116,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (442,116,'_wp_trash_meta_time','1714014974');
INSERT INTO `wp_postmeta` VALUES (443,46,'_tribe_ignored_event_previous_status','publish');
INSERT INTO `wp_postmeta` VALUES (444,46,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (445,46,'_wp_trash_meta_time','1714015751');
INSERT INTO `wp_postmeta` VALUES (446,46,'_wp_desired_post_slug','york-mi');
INSERT INTO `wp_postmeta` VALUES (447,64,'_tribe_ignored_event_previous_status','publish');
INSERT INTO `wp_postmeta` VALUES (448,64,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (449,64,'_wp_trash_meta_time','1714015753');
INSERT INTO `wp_postmeta` VALUES (450,64,'_wp_desired_post_slug','altoona-pa');
INSERT INTO `wp_postmeta` VALUES (451,119,'_EventOrigin','events-calendar');
INSERT INTO `wp_postmeta` VALUES (452,119,'_tribe_modified_fields','a:18:{s:12:\"_EventOrigin\";i:1714015755;s:10:\"_edit_last\";i:1714015771;s:10:\"post_title\";i:1714015771;s:11:\"post_status\";i:1714015785;s:17:\"_EventShowMapLink\";i:1714016100;s:13:\"_EventShowMap\";i:1714015785;s:12:\"_EventAllDay\";i:1714015785;s:15:\"_EventStartDate\";i:1714015785;s:13:\"_EventEndDate\";i:1714015785;s:18:\"_EventStartDateUTC\";i:1714015785;s:16:\"_EventEndDateUTC\";i:1714015785;s:20:\"_EventCurrencySymbol\";i:1714015785;s:18:\"_EventCurrencyCode\";i:1714015785;s:22:\"_EventCurrencyPosition\";i:1714015785;s:10:\"_EventCost\";i:1714015785;s:9:\"_EventURL\";i:1714016100;s:14:\"_EventTimezone\";i:1714015785;s:18:\"_EventTimezoneAbbr\";i:1714015785;}');
INSERT INTO `wp_postmeta` VALUES (453,119,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (454,119,'_edit_lock','1714119633:1');
INSERT INTO `wp_postmeta` VALUES (455,119,'_EventShowMapLink','1');
INSERT INTO `wp_postmeta` VALUES (456,119,'_EventShowMap','');
INSERT INTO `wp_postmeta` VALUES (457,119,'_EventAllDay','yes');
INSERT INTO `wp_postmeta` VALUES (458,119,'_EventStartDate','2024-11-07 00:00:00');
INSERT INTO `wp_postmeta` VALUES (459,119,'_EventEndDate','2024-11-07 23:59:59');
INSERT INTO `wp_postmeta` VALUES (460,119,'_EventStartDateUTC','2024-11-07 00:00:00');
INSERT INTO `wp_postmeta` VALUES (461,119,'_EventEndDateUTC','2024-11-07 23:59:59');
INSERT INTO `wp_postmeta` VALUES (462,119,'_EventCurrencySymbol','');
INSERT INTO `wp_postmeta` VALUES (463,119,'_EventCurrencyCode','');
INSERT INTO `wp_postmeta` VALUES (464,119,'_EventCurrencyPosition','prefix');
INSERT INTO `wp_postmeta` VALUES (465,119,'_EventCost','');
INSERT INTO `wp_postmeta` VALUES (466,119,'_EventURL','http://motownchristmas.local/comingsoon/');
INSERT INTO `wp_postmeta` VALUES (467,119,'_EventTimezone','UTC+0');
INSERT INTO `wp_postmeta` VALUES (468,119,'_EventTimezoneAbbr','UTC+0');
INSERT INTO `wp_postmeta` VALUES (469,121,'_EventOrigin','events-calendar');
INSERT INTO `wp_postmeta` VALUES (470,121,'_tribe_modified_fields','a:18:{s:12:\"_EventOrigin\";i:1714015802;s:10:\"_edit_last\";i:1714015816;s:10:\"post_title\";i:1714015816;s:11:\"post_status\";i:1714015838;s:17:\"_EventShowMapLink\";i:1714016093;s:13:\"_EventShowMap\";i:1714015838;s:12:\"_EventAllDay\";i:1714015838;s:15:\"_EventStartDate\";i:1714015838;s:13:\"_EventEndDate\";i:1714015838;s:18:\"_EventStartDateUTC\";i:1714015838;s:16:\"_EventEndDateUTC\";i:1714015838;s:20:\"_EventCurrencySymbol\";i:1714015838;s:18:\"_EventCurrencyCode\";i:1714015838;s:22:\"_EventCurrencyPosition\";i:1714015838;s:10:\"_EventCost\";i:1714015838;s:9:\"_EventURL\";i:1714016093;s:14:\"_EventTimezone\";i:1714015838;s:18:\"_EventTimezoneAbbr\";i:1714015838;}');
INSERT INTO `wp_postmeta` VALUES (471,121,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (472,121,'_edit_lock','1714015950:1');
INSERT INTO `wp_postmeta` VALUES (473,121,'_EventShowMapLink','1');
INSERT INTO `wp_postmeta` VALUES (474,121,'_EventShowMap','');
INSERT INTO `wp_postmeta` VALUES (475,121,'_EventAllDay','yes');
INSERT INTO `wp_postmeta` VALUES (476,121,'_EventStartDate','2024-11-08 00:00:00');
INSERT INTO `wp_postmeta` VALUES (477,121,'_EventEndDate','2024-11-08 23:59:59');
INSERT INTO `wp_postmeta` VALUES (478,121,'_EventStartDateUTC','2024-11-08 00:00:00');
INSERT INTO `wp_postmeta` VALUES (479,121,'_EventEndDateUTC','2024-11-08 23:59:59');
INSERT INTO `wp_postmeta` VALUES (480,121,'_EventCurrencySymbol','');
INSERT INTO `wp_postmeta` VALUES (481,121,'_EventCurrencyCode','');
INSERT INTO `wp_postmeta` VALUES (482,121,'_EventCurrencyPosition','prefix');
INSERT INTO `wp_postmeta` VALUES (483,121,'_EventCost','');
INSERT INTO `wp_postmeta` VALUES (484,121,'_EventURL','http://motownchristmas.local/comingsoon/');
INSERT INTO `wp_postmeta` VALUES (485,121,'_EventTimezone','UTC+0');
INSERT INTO `wp_postmeta` VALUES (486,121,'_EventTimezoneAbbr','UTC+0');
INSERT INTO `wp_postmeta` VALUES (487,123,'_edit_lock','1714016068:1');
INSERT INTO `wp_postmeta` VALUES (488,124,'_wp_attached_file','2024/04/TMA-Silver_2_-No-Logo-2022.jpg');
INSERT INTO `wp_postmeta` VALUES (489,124,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:902;s:6:\"height\";i:852;s:4:\"file\";s:38:\"2024/04/TMA-Silver_2_-No-Logo-2022.jpg\";s:8:\"filesize\";i:76012;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:38:\"TMA-Silver_2_-No-Logo-2022-300x283.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:283;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17824;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:38:\"TMA-Silver_2_-No-Logo-2022-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6771;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:38:\"TMA-Silver_2_-No-Logo-2022-768x725.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:725;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:71990;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (490,132,'_wp_attached_file','2024/05/Charles-Franklin.jpg');
INSERT INTO `wp_postmeta` VALUES (491,132,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:28:\"2024/05/Charles-Franklin.jpg\";s:8:\"filesize\";i:314982;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:28:\"Charles-Franklin-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12358;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"Charles-Franklin-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8182;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:28:\"Charles-Franklin-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:44764;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:62:\"© Marcy Royce, Royce Images Photography - All Rights Reserved\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (492,133,'_wp_attached_file','2024/05/Danny-Friendly.jpg');
INSERT INTO `wp_postmeta` VALUES (493,133,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:26:\"2024/05/Danny-Friendly.jpg\";s:8:\"filesize\";i:339037;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"Danny-Friendly-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13772;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"Danny-Friendly-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8018;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"Danny-Friendly-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:48144;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:62:\"© Marcy Royce, Royce Images Photography - All Rights Reserved\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (494,134,'_wp_attached_file','2024/05/Glen-Raby.jpg');
INSERT INTO `wp_postmeta` VALUES (495,134,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:21:\"2024/05/Glen-Raby.jpg\";s:8:\"filesize\";i:468892;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"Glen-Raby-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18664;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"Glen-Raby-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9270;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"Glen-Raby-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:78619;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (496,135,'_wp_attached_file','2024/05/Leon-Franklin.jpg');
INSERT INTO `wp_postmeta` VALUES (497,135,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:25:\"2024/05/Leon-Franklin.jpg\";s:8:\"filesize\";i:359879;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"Leon-Franklin-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16270;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"Leon-Franklin-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9208;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"Leon-Franklin-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:59100;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:62:\"© Marcy Royce, Royce Images Photography - All Rights Reserved\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (498,136,'_wp_attached_file','2024/05/Antonio-Dandridge.jpg');
INSERT INTO `wp_postmeta` VALUES (499,136,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:29:\"2024/05/Antonio-Dandridge.jpg\";s:8:\"filesize\";i:322942;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:29:\"Antonio-Dandridge-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11871;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"Antonio-Dandridge-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7689;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:29:\"Antonio-Dandridge-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:43638;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:62:\"© Marcy Royce, Royce Images Photography - All Rights Reserved\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2024-03-27 02:38:31','2024-03-27 02:38:31','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','trash','open','open','','hello-world__trashed','','','2024-04-12 04:11:41','2024-04-12 04:11:41','',0,'http://motownchristmas.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (4,0,'2024-03-29 03:40:50','2024-03-29 03:40:50','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2024-03-29 03:40:50','2024-03-29 03:40:50','',0,'http://motownchristmas.local/navigation/',0,'wp_navigation','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2024-04-11 02:06:11','2024-04-11 02:06:11','<!-- wp:embed {\"url\":\"https://www.youtube.com/watch?v=v5WI_M-I9qk\\u0026t\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"responsive\":true,\"className\":\"home-video wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube home-video wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=v5WI_M-I9qk&amp;t\n</div></figure>\n<!-- /wp:embed -->','Home','','publish','closed','closed','','home','','','2024-04-17 02:35:01','2024-04-17 02:35:01','',0,'http://motownchristmas.local/?page_id=9',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2024-04-11 02:06:11','2024-04-11 02:06:11','<!-- wp:paragraph -->\n<p>Home page</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','9-revision-v1','','','2024-04-11 02:06:11','2024-04-11 02:06:11','',9,'http://motownchristmas.local/?p=10',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2024-04-11 02:07:04','2024-04-11 02:07:04','<!-- wp:paragraph -->\n<p>Concert Schedule</p>\n<!-- /wp:paragraph -->','Tour Schedule','','trash','closed','closed','','tour-schedule__trashed','','','2024-04-12 22:22:24','2024-04-12 22:22:24','',0,'http://motownchristmas.local/?page_id=11',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2024-04-11 02:07:04','2024-04-11 02:07:04','<!-- wp:paragraph -->\n<p>Concert Schedule</p>\n<!-- /wp:paragraph -->','Tour Schedule','','inherit','closed','closed','','11-revision-v1','','','2024-04-11 02:07:04','2024-04-11 02:07:04','',11,'http://motownchristmas.local/?p=12',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2024-04-11 02:08:15','2024-04-11 02:08:15','<!-- wp:paragraph -->\n<p>Media gallery goes here</p>\n<!-- /wp:paragraph -->','Media Gallery','','publish','closed','closed','','media-gallery','','','2024-04-12 02:52:39','2024-04-12 02:52:39','',0,'http://motownchristmas.local/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2024-04-11 02:08:15','2024-04-11 02:08:15','<!-- wp:paragraph -->\n<p>Media gallery goes here</p>\n<!-- /wp:paragraph -->','Media Gallery','','inherit','closed','closed','','13-revision-v1','','','2024-04-11 02:08:15','2024-04-11 02:08:15','',13,'http://motownchristmas.local/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2024-04-11 02:08:29','2024-04-11 02:08:29','<!-- wp:paragraph -->\n<p>About page goes here</p>\n<!-- /wp:paragraph -->','About','','publish','closed','closed','','about','','','2024-05-01 02:26:21','2024-05-01 02:26:21','',0,'http://motownchristmas.local/?page_id=15',0,'page','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2024-04-11 02:08:29','2024-04-11 02:08:29','<!-- wp:paragraph -->\n<p>About page goes here</p>\n<!-- /wp:paragraph -->','About','','inherit','closed','closed','','15-revision-v1','','','2024-04-11 02:08:29','2024-04-11 02:08:29','',15,'http://motownchristmas.local/?p=16',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2024-04-11 02:11:28','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2024-04-11 02:11:28','0000-00-00 00:00:00','',0,'http://motownchristmas.local/?p=17',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2024-04-11 02:11:28','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-04-11 02:11:28','0000-00-00 00:00:00','',0,'http://motownchristmas.local/?p=18',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2024-04-11 02:11:28','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-04-11 02:11:28','0000-00-00 00:00:00','',0,'http://motownchristmas.local/?p=19',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2024-04-11 02:11:28','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-04-11 02:11:28','0000-00-00 00:00:00','',0,'http://motownchristmas.local/?p=20',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2024-04-11 02:11:28','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-04-11 02:11:28','0000-00-00 00:00:00','',0,'http://motownchristmas.local/?p=21',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2024-04-11 02:11:46','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-04-11 02:11:46','0000-00-00 00:00:00','',0,'http://motownchristmas.local/?p=22',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2024-04-11 02:11:46','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-04-11 02:11:46','0000-00-00 00:00:00','',0,'http://motownchristmas.local/?p=23',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2024-04-11 02:11:46','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-04-11 02:11:46','0000-00-00 00:00:00','',0,'http://motownchristmas.local/?p=24',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2024-04-11 02:11:46','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-04-11 02:11:46','0000-00-00 00:00:00','',0,'http://motownchristmas.local/?p=25',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2024-04-12 22:39:46','2024-04-11 02:12:11',' ','','','publish','closed','closed','','26','','','2024-04-12 22:39:46','2024-04-12 22:39:46','',0,'http://motownchristmas.local/?p=26',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2024-04-12 22:39:46','2024-04-11 02:12:11',' ','','','publish','closed','closed','','27','','','2024-04-12 22:39:46','2024-04-12 22:39:46','',0,'http://motownchristmas.local/?p=27',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2024-04-12 22:39:46','2024-04-11 02:12:11',' ','','','publish','closed','closed','','29','','','2024-04-12 22:39:46','2024-04-12 22:39:46','',0,'http://motownchristmas.local/?p=29',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2024-04-12 22:39:46','2024-04-12 01:31:03','','Merchandise','','publish','closed','closed','','merchandise','','','2024-04-12 22:39:46','2024-04-12 22:39:46','',0,'http://motownchristmas.local/?p=30',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2024-04-12 03:17:29','2024-04-12 03:17:29','','motown_christmas_logo','','inherit','open','closed','','motown_christmas_logo','','','2024-04-12 03:17:29','2024-04-12 03:17:29','',0,'http://motownchristmas.local/wp-content/uploads/2024/04/motown_christmas_logo.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (32,1,'2024-04-12 03:17:38','2024-04-12 03:17:38','http://motownchristmas.local/wp-content/uploads/2024/04/cropped-motown_christmas_logo.png','cropped-motown_christmas_logo.png','','inherit','open','closed','','cropped-motown_christmas_logo-png','','','2024-04-12 03:17:38','2024-04-12 03:17:38','',0,'http://motownchristmas.local/wp-content/uploads/2024/04/cropped-motown_christmas_logo.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (33,1,'2024-04-12 03:17:50','2024-04-12 03:17:50','{\n    \"motownchristmas::custom_logo\": {\n        \"value\": 32,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-04-12 03:17:50\"\n    }\n}','','','trash','closed','closed','','3609ed03-9df6-4e3a-8955-40dbd5b93fad','','','2024-04-12 03:17:50','2024-04-12 03:17:50','',0,'http://motownchristmas.local/3609ed03-9df6-4e3a-8955-40dbd5b93fad/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2024-04-12 03:36:00','2024-04-12 03:36:00','<!-- wp:heading {\"level\":1} -->\n<h1 class=\"wp-block-heading\">A Motown Christmas</h1>\n<!-- /wp:heading -->','Home','','inherit','closed','closed','','9-revision-v1','','','2024-04-12 03:36:00','2024-04-12 03:36:00','',9,'http://motownchristmas.local/?p=34',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2024-04-12 03:36:18','2024-04-12 03:36:18','<!-- wp:heading {\"textAlign\":\"center\",\"level\":1} -->\n<h1 class=\"wp-block-heading has-text-align-center\">A Motown Christmas</h1>\n<!-- /wp:heading -->','Home','','inherit','closed','closed','','9-revision-v1','','','2024-04-12 03:36:18','2024-04-12 03:36:18','',9,'http://motownchristmas.local/?p=35',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2024-04-12 03:37:06','2024-04-12 03:37:06','<!-- wp:heading {\"textAlign\":\"center\",\"level\":1} -->\n<h1 class=\"wp-block-heading has-text-align-center\">A Motown Christmas</h1>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Featuring The Motortown All-Stars</h2>\n<!-- /wp:heading -->','Home','','inherit','closed','closed','','9-revision-v1','','','2024-04-12 03:37:06','2024-04-12 03:37:06','',9,'http://motownchristmas.local/?p=36',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2024-04-12 03:38:24','2024-04-12 03:38:24','<!-- wp:heading {\"textAlign\":\"center\",\"level\":1} -->\n<h1 class=\"wp-block-heading has-text-align-center\">A Motown Christmas</h1>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Featuring The Motortown All-Stars</h2>\n<!-- /wp:heading -->\n\n<!-- wp:embed {\"url\":\"https://www.youtube.com/watch?v=v5WI_M-I9qk\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"responsive\":true,\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=v5WI_M-I9qk\n</div></figure>\n<!-- /wp:embed -->','Home','','inherit','closed','closed','','9-revision-v1','','','2024-04-12 03:38:24','2024-04-12 03:38:24','',9,'http://motownchristmas.local/?p=37',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2024-04-12 03:42:56','2024-04-12 03:42:56','<!-- wp:heading {\"textAlign\":\"center\",\"level\":1} -->\n<h1 class=\"wp-block-heading has-text-align-center\">A Motown Christmas</h1>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Featuring The Motortown All-Stars</h2>\n<!-- /wp:heading -->\n\n<!-- wp:embed {\"url\":\"https://www.youtube.com/watch?v=v5WI_M-I9qk\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"responsive\":true,\"align\":\"center\",\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio video\"} -->\n<figure class=\"wp-block-embed aligncenter is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio video\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=v5WI_M-I9qk\n</div></figure>\n<!-- /wp:embed -->','Home','','inherit','closed','closed','','9-revision-v1','','','2024-04-12 03:42:56','2024-04-12 03:42:56','',9,'http://motownchristmas.local/?p=39',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2024-04-12 03:55:53','2024-04-12 03:55:53','<!-- wp:heading {\"textAlign\":\"center\",\"level\":1} -->\n<h1 class=\"wp-block-heading has-text-align-center\">A Motown Christmas</h1>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Featuring The Motortown All-Stars</h2>\n<!-- /wp:heading -->','Home','','inherit','closed','closed','','9-revision-v1','','','2024-04-12 03:55:53','2024-04-12 03:55:53','',9,'http://motownchristmas.local/?p=40',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2024-04-12 04:03:38','2024-04-12 04:03:38','<!-- wp:heading {\"textAlign\":\"center\",\"level\":1} -->\n<h1 class=\"wp-block-heading has-text-align-center\">A Motown Christmas</h1>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Featuring The Motortown All-Stars</h2>\n<!-- /wp:heading -->\n\n<!-- wp:embed {\"url\":\"https://www.youtube.com/watch?v=v5WI_M-I9qk\\u0026t\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"responsive\":true,\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=v5WI_M-I9qk&amp;t\n</div></figure>\n<!-- /wp:embed -->','Home','','inherit','closed','closed','','9-revision-v1','','','2024-04-12 04:03:38','2024-04-12 04:03:38','',9,'http://motownchristmas.local/?p=41',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2024-04-12 04:11:41','2024-04-12 04:11:41','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2024-04-12 04:11:41','2024-04-12 04:11:41','',1,'http://motownchristmas.local/?p=42',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2024-04-12 04:19:54','2024-04-12 04:19:54','','Altoona PA','','trash','open','closed','','altoona-pa__trashed','','','2024-04-12 22:24:08','2024-04-12 22:24:08','',0,'http://motownchristmas.local/?post_type=tribe_events&#038;p=43',0,'tribe_events','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2024-04-12 04:19:54','2024-04-12 04:19:54','','The Mishler Theatre','','publish','closed','closed','','the-mishler-theatre','','','2024-04-12 04:19:54','2024-04-12 04:19:54','',0,'http://motownchristmas.local/venue/the-mishler-theatre/',0,'tribe_venue','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2024-04-12 04:19:54','2024-04-12 04:19:54','','Altoona PA','','inherit','closed','closed','','43-revision-v1','','','2024-04-12 04:19:54','2024-04-12 04:19:54','',43,'http://motownchristmas.local/?p=45',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2024-04-12 04:21:47','2024-04-12 04:21:47','','York PA','','trash','open','closed','','york-mi__trashed','','','2024-04-25 03:29:11','2024-04-25 03:29:11','',0,'http://motownchristmas.local/?post_type=tribe_events&#038;p=46',0,'tribe_events','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2024-04-12 04:21:47','2024-04-12 04:21:47','','York MI','','inherit','closed','closed','','46-revision-v1','','','2024-04-12 04:21:47','2024-04-12 04:21:47','',46,'http://motownchristmas.local/?p=47',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2024-04-12 04:21:57','2024-04-12 04:21:57','','York PA','','inherit','closed','closed','','46-revision-v1','','','2024-04-12 04:21:57','2024-04-12 04:21:57','',46,'http://motownchristmas.local/?p=48',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2024-04-12 04:32:46','2024-04-12 04:32:46','<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:tribe/events-list -->\n<!-- wp:legacy-widget {\"idBase\":\"tribe-widget-events-list\",\"instance\":{\"encoded\":\"YTo2OntzOjU6InRpdGxlIjtzOjEzOiJUb3VyIFNjaGVkdWxlIjtzOjU6ImxpbWl0IjtzOjI6IjIwIjtzOjE4OiJub191cGNvbWluZ19ldmVudHMiO2I6MDtzOjIwOiJmZWF0dXJlZF9ldmVudHNfb25seSI7YjowO3M6MTM6Impzb25sZF9lbmFibGUiO2I6MTtzOjIwOiJ0cmliZV9pc19saXN0X3dpZGdldCI7YjowO30=\",\"hash\":\"8519e659b6865de0025f3a1adc3d740f\"},\"className\":\"tour-schedule\"} /-->\n<!-- /wp:tribe/events-list --></div>\n<!-- /wp:group -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->','Tour Schedule','','publish','closed','closed','','tourschedule','','','2024-04-25 03:21:04','2024-04-25 03:21:04','',0,'http://motownchristmas.local/events/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2024-04-12 04:33:39','2024-04-12 04:33:39','','Altoona PA','','trash','closed','closed','','altoona-pa__trashed','','','2024-04-12 04:35:13','2024-04-12 04:35:13','',0,'http://motownchristmas.local/?post_type=event_listing&#038;p=50',0,'event_listing','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2024-04-12 04:36:10','2024-04-12 04:36:10','CONTENTS','Events','CONTENTS','trash','closed','open','','events-2__trashed','','','2024-04-12 22:39:16','2024-04-12 22:39:16','',0,'http://motownchristmas.local/events-2/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2024-04-12 04:36:10','2024-04-12 04:36:10','CONTENTS','Locations','','trash','closed','open','','locations__trashed','','','2024-04-12 22:39:16','2024-04-12 22:39:16','',51,'http://motownchristmas.local/events-2/locations/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2024-04-12 04:36:10','2024-04-12 04:36:10','CONTENTS','Categories','','trash','closed','open','','categories__trashed','','','2024-04-12 22:39:16','2024-04-12 22:39:16','',51,'http://motownchristmas.local/events-2/categories/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2024-04-12 04:36:10','2024-04-12 04:36:10','CONTENTS','Tags','','trash','closed','open','','tags__trashed','','','2024-04-12 22:39:16','2024-04-12 22:39:16','',51,'http://motownchristmas.local/events-2/tags/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2024-04-12 04:36:10','2024-04-12 04:36:10','CONTENTS','My Bookings','','trash','closed','open','','my-bookings__trashed','','','2024-04-12 22:39:16','2024-04-12 22:39:16','',51,'http://motownchristmas.local/events-2/my-bookings/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2024-04-12 04:38:29','2024-04-12 04:38:29','','Altoona PA','','publish','open','closed','','altoona-pa','','','2024-04-12 04:39:54','2024-04-12 04:39:54','',0,'http://motownchristmas.local/?post_type=event&#038;p=56',0,'event','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2024-04-12 04:38:29','0000-00-00 00:00:00','','The Mishler Theatre','','draft','open','closed','','','','','2024-04-12 04:38:29','0000-00-00 00:00:00','',0,'http://motownchristmas.local/?post_type=location&p=57',0,'location','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2024-04-12 04:39:54','2024-04-12 04:39:54','','The Mishler Theatre','','publish','open','closed','','the-mishler-theatre','','','2024-04-12 04:39:54','2024-04-12 04:39:54','',0,'http://motownchristmas.local/locations/the-mishler-theatre/',0,'location','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2024-04-12 22:15:28','2024-04-12 22:15:28','<!-- wp:paragraph -->\n<p><a href=\"https://mishlertheatre.vbotickets.com/events\">https://mishlertheatre.vbotickets.com/events</a></p>\n<!-- /wp:paragraph -->','April 19th - Altoona PA','','trash','open','open','','april-19th-altoona-pa__trashed','','','2024-04-12 22:20:08','2024-04-12 22:20:08','',0,'http://motownchristmas.local/?p=60',0,'post','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2024-04-12 22:15:28','2024-04-12 22:15:28','<!-- wp:paragraph -->\n<p><a href=\"https://mishlertheatre.vbotickets.com/events\">https://mishlertheatre.vbotickets.com/events</a></p>\n<!-- /wp:paragraph -->','April 19th - Altoona PA','','inherit','closed','closed','','60-revision-v1','','','2024-04-12 22:15:28','2024-04-12 22:15:28','',60,'http://motownchristmas.local/?p=61',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2024-04-12 22:22:11','2024-04-12 22:22:11','[events]','Tour Schedule','','inherit','closed','closed','','49-revision-v1','','','2024-04-12 22:22:11','2024-04-12 22:22:11','',49,'http://motownchristmas.local/?p=62',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2024-04-12 22:24:33','2024-04-12 22:24:33','','Altoona PA','','trash','closed','closed','','altoona-pa__trashed-2','','','2024-04-25 03:29:13','2024-04-25 03:29:13','',0,'http://motownchristmas.local/?post_type=tribe_events&#038;p=64',0,'tribe_events','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2024-04-12 22:24:33','2024-04-12 22:24:33','','Altoona PA','','inherit','closed','closed','','64-revision-v1','','','2024-04-12 22:24:33','2024-04-12 22:24:33','',64,'http://motownchristmas.local/?p=65',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2024-04-12 22:26:17','2024-04-12 22:26:17','<!-- wp:tribe/events-list -->\n<!-- wp:legacy-widget {\"idBase\":\"tribe-widget-events-list\",\"instance\":{\"encoded\":\"YTo2OntzOjU6InRpdGxlIjtzOjE1OiJVcGNvbWluZyBFdmVudHMiO3M6NToibGltaXQiO3M6MjoiMTAiO3M6MTg6Im5vX3VwY29taW5nX2V2ZW50cyI7YjowO3M6MjA6ImZlYXR1cmVkX2V2ZW50c19vbmx5IjtiOjA7czoxMzoianNvbmxkX2VuYWJsZSI7YjoxO3M6MjA6InRyaWJlX2lzX2xpc3Rfd2lkZ2V0IjtiOjA7fQ==\",\"hash\":\"2beccc381bfb8a77ab4de986454fc0d9\"}} /-->\n<!-- /wp:tribe/events-list -->','Tour Schedule','','inherit','closed','closed','','49-revision-v1','','','2024-04-12 22:26:17','2024-04-12 22:26:17','',49,'http://motownchristmas.local/?p=67',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2024-04-12 22:27:36','2024-04-12 22:27:36','<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:tribe/events-list -->\n<!-- wp:legacy-widget {\"idBase\":\"tribe-widget-events-list\",\"instance\":{\"encoded\":\"YTo2OntzOjU6InRpdGxlIjtzOjE1OiJVcGNvbWluZyBFdmVudHMiO3M6NToibGltaXQiO3M6MjoiMTAiO3M6MTg6Im5vX3VwY29taW5nX2V2ZW50cyI7YjowO3M6MjA6ImZlYXR1cmVkX2V2ZW50c19vbmx5IjtiOjA7czoxMzoianNvbmxkX2VuYWJsZSI7YjoxO3M6MjA6InRyaWJlX2lzX2xpc3Rfd2lkZ2V0IjtiOjA7fQ==\",\"hash\":\"2beccc381bfb8a77ab4de986454fc0d9\"}} /-->\n<!-- /wp:tribe/events-list --></div>\n<!-- /wp:group -->','Tour Schedule','','inherit','closed','closed','','49-revision-v1','','','2024-04-12 22:27:36','2024-04-12 22:27:36','',49,'http://motownchristmas.local/?p=69',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2024-04-12 22:28:15','2024-04-12 22:28:15','<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:tribe/events-list /--></div>\n<!-- /wp:group -->','Tour Schedule','','inherit','closed','closed','','49-revision-v1','','','2024-04-12 22:28:15','2024-04-12 22:28:15','',49,'http://motownchristmas.local/?p=70',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2024-04-12 22:37:04','2024-04-12 22:37:04','<!-- wp:paragraph -->\n<p><a href=\"https://mishlertheatre.vbotickets.com/events\">https://mishlertheatre.vbotickets.com/events</a></p>\n<!-- /wp:paragraph -->','April 19th - Altoona PA','','publish','open','open','','april-19th-altoona-pa','','','2024-04-12 22:37:04','2024-04-12 22:37:04','',0,'http://motownchristmas.local/?p=74',0,'post','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2024-04-12 22:37:04','2024-04-12 22:37:04','<!-- wp:paragraph -->\n<p><a href=\"https://mishlertheatre.vbotickets.com/events\">https://mishlertheatre.vbotickets.com/events</a></p>\n<!-- /wp:paragraph -->','April 19th - Altoona PA','','inherit','closed','closed','','74-revision-v1','','','2024-04-12 22:37:04','2024-04-12 22:37:04','',74,'http://motownchristmas.local/?p=75',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2024-04-12 22:37:56','2024-04-12 22:37:56','klsedfjlksdjflksjmdf','Altoona PA','','inherit','closed','closed','','64-revision-v1','','','2024-04-12 22:37:56','2024-04-12 22:37:56','',64,'http://motownchristmas.local/?p=76',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2024-04-12 22:39:16','2024-04-12 22:39:16','CONTENTS','Events','CONTENTS','inherit','closed','closed','','51-revision-v1','','','2024-04-12 22:39:16','2024-04-12 22:39:16','',51,'http://motownchristmas.local/?p=77',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2024-04-12 22:39:16','2024-04-12 22:39:16','CONTENTS','Categories','','inherit','closed','closed','','53-revision-v1','','','2024-04-12 22:39:16','2024-04-12 22:39:16','',53,'http://motownchristmas.local/?p=78',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2024-04-12 22:39:16','2024-04-12 22:39:16','CONTENTS','Locations','','inherit','closed','closed','','52-revision-v1','','','2024-04-12 22:39:16','2024-04-12 22:39:16','',52,'http://motownchristmas.local/?p=79',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2024-04-12 22:39:16','2024-04-12 22:39:16','CONTENTS','My Bookings','','inherit','closed','closed','','55-revision-v1','','','2024-04-12 22:39:16','2024-04-12 22:39:16','',55,'http://motownchristmas.local/?p=80',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2024-04-12 22:39:16','2024-04-12 22:39:16','CONTENTS','Tags','','inherit','closed','closed','','54-revision-v1','','','2024-04-12 22:39:16','2024-04-12 22:39:16','',54,'http://motownchristmas.local/?p=81',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2024-04-12 22:39:46','2024-04-12 22:39:46',' ','','','publish','closed','closed','','82','','','2024-04-12 22:39:46','2024-04-12 22:39:46','',0,'http://motownchristmas.local/?p=82',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2024-04-12 22:40:55','2024-04-12 22:40:55','<!-- wp:paragraph -->\n<p><a href=\"https://pullocenter.york.psu.edu/events/event_details/1964-the-tribute\">https://pullocenter.york.psu.edu/events/event_details/1964-the-tribute</a></p>\n<!-- /wp:paragraph -->','April 18th - York PA','https://pullocenter.york.psu.edu/events/event_details/1964-the-tribute','publish','open','open','','april-18th-york-pa','','','2024-04-12 22:54:05','2024-04-12 22:54:05','',0,'http://motownchristmas.local/?p=83',0,'post','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2024-04-12 22:40:55','2024-04-12 22:40:55','<!-- wp:paragraph -->\n<p><a href=\"https://pullocenter.york.psu.edu/events/event_details/1964-the-tribute\">https://pullocenter.york.psu.edu/events/event_details/1964-the-tribute</a></p>\n<!-- /wp:paragraph -->','April 18th - York PA','','inherit','closed','closed','','83-revision-v1','','','2024-04-12 22:40:55','2024-04-12 22:40:55','',83,'http://motownchristmas.local/?p=84',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2024-04-12 22:49:02','2024-04-12 22:49:02','[events]','Events','','trash','closed','closed','','events__trashed','','','2024-04-12 22:53:32','2024-04-12 22:53:32','',0,'http://motownchristmas.local/events/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2024-04-12 22:49:48','2024-04-12 22:49:48','','Altoona PA','','trash','closed','closed','','altoona-pa__trashed-2','','','2024-04-12 22:51:02','2024-04-12 22:51:02','',0,'http://motownchristmas.local/?post_type=event_listing&#038;p=86',0,'event_listing','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2024-04-12 22:53:32','2024-04-12 22:53:32','[events]','Events','','inherit','closed','closed','','85-revision-v1','','','2024-04-12 22:53:32','2024-04-12 22:53:32','',85,'http://motownchristmas.local/?p=88',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2024-04-12 22:54:05','2024-04-12 22:54:05','<!-- wp:paragraph -->\n<p><a href=\"https://pullocenter.york.psu.edu/events/event_details/1964-the-tribute\">https://pullocenter.york.psu.edu/events/event_details/1964-the-tribute</a></p>\n<!-- /wp:paragraph -->','April 18th - York PA','https://pullocenter.york.psu.edu/events/event_details/1964-the-tribute','inherit','closed','closed','','83-revision-v1','','','2024-04-12 22:54:05','2024-04-12 22:54:05','',83,'http://motownchristmas.local/?p=89',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2024-04-12 23:08:55','2024-04-12 23:08:55','','Altoona PA','','inherit','closed','closed','','64-revision-v1','','','2024-04-12 23:08:55','2024-04-12 23:08:55','',64,'http://motownchristmas.local/?p=91',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2024-04-12 23:35:42','2024-04-12 23:35:42','{\n    \"tribe_customizer[global_elements][font_size]\": {\n        \"value\": 1,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-04-12 23:35:14\"\n    },\n    \"tribe_customizer[global_elements][font_size_base]\": {\n        \"value\": \"20\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-04-12 23:35:14\"\n    },\n    \"tribe_customizer[global_elements][font_family]\": {\n        \"value\": \"theme\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-04-12 23:35:14\"\n    },\n    \"tribe_customizer[global_elements][event_title_color]\": {\n        \"value\": \"#f22e2e\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-04-12 23:35:14\"\n    },\n    \"tribe_customizer[global_elements][event_date_time_color]\": {\n        \"value\": \"#bf0303\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-04-12 23:35:14\"\n    },\n    \"tribe_customizer[global_elements][background_color_choice]\": {\n        \"value\": \"transparent\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-04-12 23:35:14\"\n    },\n    \"tribe_customizer[global_elements][accent_color]\": {\n        \"value\": \"#d82b2b\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-04-12 23:35:14\"\n    },\n    \"tribe_customizer[tec_events_bar][events_bar_icon_color_choice]\": {\n        \"value\": \"default\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-04-12 23:35:42\"\n    },\n    \"tribe_customizer[tec_events_bar][events_bar_text_color]\": {\n        \"value\": \"#141827\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-04-12 23:35:42\"\n    }\n}','','','trash','closed','closed','','98b67f95-d4d0-4516-acb6-c01b9cf5be86','','','2024-04-12 23:35:42','2024-04-12 23:35:42','',0,'http://motownchristmas.local/?p=93',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2024-04-12 23:52:49','2024-04-12 23:52:49','{\n    \"tribe_customizer[global_elements][font_size]\": {\n        \"value\": 1,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-04-12 23:52:49\"\n    },\n    \"tribe_customizer[global_elements][font_size_base]\": {\n        \"value\": 18,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-04-12 23:52:49\"\n    },\n    \"tribe_customizer[global_elements][event_title_color]\": {\n        \"value\": \"#141827\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-04-12 23:52:49\"\n    },\n    \"tribe_customizer[global_elements][event_date_time_color]\": {\n        \"value\": \"#141827\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-04-12 23:52:49\"\n    },\n    \"tribe_customizer[single_event][post_title_color_choice]\": {\n        \"value\": \"custom\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-04-12 23:52:49\"\n    }\n}','','','trash','closed','closed','','225b3300-5ec0-4c60-8b16-1a5a406dd5a8','','','2024-04-12 23:52:49','2024-04-12 23:52:49','',0,'http://motownchristmas.local/225b3300-5ec0-4c60-8b16-1a5a406dd5a8/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2024-04-12 23:56:51','2024-04-12 23:56:51','<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:tribe/events-list /--></div>\n<!-- /wp:group -->\n\n<!-- wp:ect/shortcode /-->','Tour Schedule','','inherit','closed','closed','','49-revision-v1','','','2024-04-12 23:56:51','2024-04-12 23:56:51','',49,'http://motownchristmas.local/?p=96',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2024-04-12 23:57:39','2024-04-12 23:57:39','<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:tribe/events-list -->\n<!-- wp:legacy-widget {\"idBase\":\"tribe-widget-events-list\",\"instance\":{\"encoded\":\"YTo2OntzOjU6InRpdGxlIjtzOjE1OiJVcGNvbWluZyBFdmVudHMiO3M6NToibGltaXQiO3M6MToiNSI7czoxODoibm9fdXBjb21pbmdfZXZlbnRzIjtiOjA7czoyMDoiZmVhdHVyZWRfZXZlbnRzX29ubHkiO2I6MDtzOjEzOiJqc29ubGRfZW5hYmxlIjtiOjE7czoyMDoidHJpYmVfaXNfbGlzdF93aWRnZXQiO2I6MDt9\",\"hash\":\"d06ac76e336b8dd6346abfd274567f3a\"}} /-->\n<!-- /wp:tribe/events-list --></div>\n<!-- /wp:group -->\n\n<!-- wp:ect/shortcode /-->','Tour Schedule','','inherit','closed','closed','','49-revision-v1','','','2024-04-12 23:57:39','2024-04-12 23:57:39','',49,'http://motownchristmas.local/?p=97',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2024-04-12 23:57:53','2024-04-12 23:57:53','<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:tribe/events-list /--></div>\n<!-- /wp:group -->\n\n<!-- wp:ect/shortcode /-->','Tour Schedule','','inherit','closed','closed','','49-revision-v1','','','2024-04-12 23:57:53','2024-04-12 23:57:53','',49,'http://motownchristmas.local/?p=98',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2024-04-12 23:59:19','2024-04-12 23:59:19','<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:tribe/events-list /--></div>\n<!-- /wp:group -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:ect/shortcode {\"template\":\"minimal-list\"} /--></div>\n<!-- /wp:group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->','Tour Schedule','','inherit','closed','closed','','49-revision-v1','','','2024-04-12 23:59:19','2024-04-12 23:59:19','',49,'http://motownchristmas.local/?p=99',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2024-04-13 00:00:04','2024-04-13 00:00:04','<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:tribe/events-list /--></div>\n<!-- /wp:group -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:ect/shortcode {\"template\":\"minimal-list\",\"limit\":\"59\",\"hideVenue\":\"yes\"} /--></div>\n<!-- /wp:group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->','Tour Schedule','','inherit','closed','closed','','49-revision-v1','','','2024-04-13 00:00:04','2024-04-13 00:00:04','',49,'http://motownchristmas.local/?p=101',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2024-04-13 00:00:30','2024-04-13 00:00:30','<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:tribe/events-list /--></div>\n<!-- /wp:group -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:ect/shortcode {\"template\":\"minimal-list\",\"style\":\"style-2\",\"limit\":\"59\",\"hideVenue\":\"yes\"} /--></div>\n<!-- /wp:group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->','Tour Schedule','','inherit','closed','closed','','49-revision-v1','','','2024-04-13 00:00:30','2024-04-13 00:00:30','',49,'http://motownchristmas.local/?p=102',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2024-04-13 00:00:34','2024-04-13 00:00:34','<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:tribe/events-list /--></div>\n<!-- /wp:group -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:ect/shortcode {\"template\":\"minimal-list\",\"style\":\"style-3\",\"limit\":\"59\",\"hideVenue\":\"yes\"} /--></div>\n<!-- /wp:group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->','Tour Schedule','','inherit','closed','closed','','49-revision-v1','','','2024-04-13 00:00:34','2024-04-13 00:00:34','',49,'http://motownchristmas.local/?p=103',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2024-04-13 00:00:40','2024-04-13 00:00:40','<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:tribe/events-list /--></div>\n<!-- /wp:group -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:ect/shortcode {\"template\":\"minimal-list\",\"style\":\"style-2\",\"limit\":\"59\",\"hideVenue\":\"yes\"} /--></div>\n<!-- /wp:group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->','Tour Schedule','','inherit','closed','closed','','49-revision-v1','','','2024-04-13 00:00:40','2024-04-13 00:00:40','',49,'http://motownchristmas.local/?p=104',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2024-04-13 00:05:31','2024-04-13 00:05:31','<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:tribe/events-list /--></div>\n<!-- /wp:group -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:ect/shortcode {\"template\":\"minimal-list\",\"limit\":\"59\",\"hideVenue\":\"yes\"} /--></div>\n<!-- /wp:group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->','Tour Schedule','','inherit','closed','closed','','49-revision-v1','','','2024-04-13 00:05:31','2024-04-13 00:05:31','',49,'http://motownchristmas.local/?p=105',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2024-04-13 00:19:08','2024-04-13 00:19:08','','The Pullo Center','','publish','closed','closed','','the-pullo-center','','','2024-04-13 00:19:08','2024-04-13 00:19:08','',0,'http://motownchristmas.local/venue/the-pullo-center/',0,'tribe_venue','',0);
INSERT INTO `wp_posts` VALUES (108,1,'2024-04-13 00:20:27','2024-04-13 00:20:27','<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:tribe/events-list -->\n<!-- wp:legacy-widget {\"idBase\":\"tribe-widget-events-list\",\"instance\":{\"encoded\":\"YTo2OntzOjU6InRpdGxlIjtzOjE1OiJVcGNvbWluZyBFdmVudHMiO3M6NToibGltaXQiO3M6MToiNSI7czoxODoibm9fdXBjb21pbmdfZXZlbnRzIjtiOjA7czoyMDoiZmVhdHVyZWRfZXZlbnRzX29ubHkiO2I6MDtzOjEzOiJqc29ubGRfZW5hYmxlIjtiOjE7czoyMDoidHJpYmVfaXNfbGlzdF93aWRnZXQiO2I6MDt9\",\"hash\":\"d06ac76e336b8dd6346abfd274567f3a\"}} /-->\n<!-- /wp:tribe/events-list --></div>\n<!-- /wp:group -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"></div>\n<!-- /wp:group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->','Tour Schedule','','inherit','closed','closed','','49-revision-v1','','','2024-04-13 00:20:27','2024-04-13 00:20:27','',49,'http://motownchristmas.local/?p=108',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (110,1,'2024-04-13 00:26:37','2024-04-13 00:26:37','<!-- wp:heading {\"textAlign\":\"center\",\"level\":1} -->\n<h1 class=\"wp-block-heading has-text-align-center\">A Motown Christmas</h1>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Featuring The Motortown All-Stars</h2>\n<!-- /wp:heading -->\n\n<!-- wp:embed {\"url\":\"https://www.youtube.com/watch?v=v5WI_M-I9qk\\u0026t\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"responsive\":true,\"className\":\"home-video wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube home-video wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=v5WI_M-I9qk&amp;t\n</div></figure>\n<!-- /wp:embed -->','Home','','inherit','closed','closed','','9-revision-v1','','','2024-04-13 00:26:37','2024-04-13 00:26:37','',9,'http://motownchristmas.local/?p=110',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (112,1,'2024-04-17 02:31:46','2024-04-17 02:31:46','','!cid_F13674B2 #2','','inherit','open','closed','','cid_f13674b2-2','','','2024-04-17 02:31:46','2024-04-17 02:31:46','',0,'http://motownchristmas.local/wp-content/uploads/2024/04/cid_F13674B2-2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (113,1,'2024-04-17 02:35:01','2024-04-17 02:35:01','<!-- wp:embed {\"url\":\"https://www.youtube.com/watch?v=v5WI_M-I9qk\\u0026t\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"responsive\":true,\"className\":\"home-video wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube home-video wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=v5WI_M-I9qk&amp;t\n</div></figure>\n<!-- /wp:embed -->','Home','','inherit','closed','closed','','9-revision-v1','','','2024-04-17 02:35:01','2024-04-17 02:35:01','',9,'http://motownchristmas.local/?p=113',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (114,1,'2024-04-22 04:00:09','2024-04-22 04:00:09','','!cid_F13674B2 #2 copy','','inherit','open','closed','','cid_f13674b2-2-copy','','','2024-04-22 04:00:09','2024-04-22 04:00:09','',0,'http://motownchristmas.local/wp-content/uploads/2024/04/cid_F13674B2-2-copy.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (115,1,'2024-04-25 02:28:24','2024-04-25 02:28:24','<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:tribe/events-list -->\n<!-- wp:legacy-widget {\"idBase\":\"tribe-widget-events-list\",\"instance\":{\"encoded\":\"YTo2OntzOjU6InRpdGxlIjtzOjE1OiJVcGNvbWluZyBFdmVudHMiO3M6NToibGltaXQiO3M6MToiNSI7czoxODoibm9fdXBjb21pbmdfZXZlbnRzIjtiOjA7czoyMDoiZmVhdHVyZWRfZXZlbnRzX29ubHkiO2I6MDtzOjEzOiJqc29ubGRfZW5hYmxlIjtiOjE7czoyMDoidHJpYmVfaXNfbGlzdF93aWRnZXQiO2I6MDt9\",\"hash\":\"d06ac76e336b8dd6346abfd274567f3a\"},\"className\":\"tour-schedule\"} /-->\n<!-- /wp:tribe/events-list --></div>\n<!-- /wp:group -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"></div>\n<!-- /wp:group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->','Tour Schedule','','inherit','closed','closed','','49-revision-v1','','','2024-04-25 02:28:24','2024-04-25 02:28:24','',49,'http://motownchristmas.local/?p=115',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (116,1,'2024-04-25 03:16:14','2024-04-25 03:16:14','{\n    \"tribe_customizer[global_elements][font_size]\": {\n        \"value\": 1,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-04-25 03:16:13\"\n    },\n    \"tribe_customizer[global_elements][font_size_base]\": {\n        \"value\": 18,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-04-25 03:16:13\"\n    },\n    \"tribe_customizer[global_elements][event_title_color]\": {\n        \"value\": \"#c51a1a\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-04-25 03:16:13\"\n    },\n    \"tribe_customizer[global_elements][event_date_time_color]\": {\n        \"value\": \"#c51a1a\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-04-25 03:16:13\"\n    },\n    \"tribe_customizer[global_elements][link_color]\": {\n        \"value\": \"#c51a1a\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-04-25 03:16:13\"\n    },\n    \"tribe_customizer[global_elements][background_color_choice]\": {\n        \"value\": \"custom\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-04-25 03:16:13\"\n    },\n    \"tribe_customizer[global_elements][background_color]\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-04-25 03:16:13\"\n    },\n    \"tribe_customizer[global_elements][accent_color]\": {\n        \"value\": \"#c51a1a\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-04-25 03:16:13\"\n    }\n}','','','trash','closed','closed','','b23fae1c-318d-426e-94b7-b09361e0919f','','','2024-04-25 03:16:14','2024-04-25 03:16:14','',0,'http://motownchristmas.local/?p=116',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (117,1,'2024-04-25 03:20:56','2024-04-25 03:20:56','<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:tribe/events-list -->\n<!-- wp:legacy-widget {\"idBase\":\"tribe-widget-events-list\",\"instance\":{\"encoded\":\"YTo2OntzOjU6InRpdGxlIjtzOjEzOiJUb3VyIFNjaGVkdWxlIjtzOjU6ImxpbWl0IjtzOjI6IjIwIjtzOjE4OiJub191cGNvbWluZ19ldmVudHMiO2I6MDtzOjIwOiJmZWF0dXJlZF9ldmVudHNfb25seSI7YjowO3M6MTM6Impzb25sZF9lbmFibGUiO2I6MTtzOjIwOiJ0cmliZV9pc19saXN0X3dpZGdldCI7YjowO30=\",\"hash\":\"8519e659b6865de0025f3a1adc3d740f\"},\"className\":\"tour-schedule\"} /-->\n<!-- /wp:tribe/events-list --></div>\n<!-- /wp:group -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"></div>\n<!-- /wp:group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->','Tour Schedule','','inherit','closed','closed','','49-revision-v1','','','2024-04-25 03:20:56','2024-04-25 03:20:56','',49,'http://motownchristmas.local/?p=117',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (118,1,'2024-04-25 03:21:04','2024-04-25 03:21:04','<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:tribe/events-list -->\n<!-- wp:legacy-widget {\"idBase\":\"tribe-widget-events-list\",\"instance\":{\"encoded\":\"YTo2OntzOjU6InRpdGxlIjtzOjEzOiJUb3VyIFNjaGVkdWxlIjtzOjU6ImxpbWl0IjtzOjI6IjIwIjtzOjE4OiJub191cGNvbWluZ19ldmVudHMiO2I6MDtzOjIwOiJmZWF0dXJlZF9ldmVudHNfb25seSI7YjowO3M6MTM6Impzb25sZF9lbmFibGUiO2I6MTtzOjIwOiJ0cmliZV9pc19saXN0X3dpZGdldCI7YjowO30=\",\"hash\":\"8519e659b6865de0025f3a1adc3d740f\"},\"className\":\"tour-schedule\"} /-->\n<!-- /wp:tribe/events-list --></div>\n<!-- /wp:group -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->','Tour Schedule','','inherit','closed','closed','','49-revision-v1','','','2024-04-25 03:21:04','2024-04-25 03:21:04','',49,'http://motownchristmas.local/?p=118',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (119,1,'2024-04-25 03:29:45','2024-04-25 03:29:45','','Burnsville MN - Ames Center','','publish','open','closed','','burnsville-mn-ames-center','','','2024-04-25 03:35:00','2024-04-25 03:35:00','',0,'http://motownchristmas.local/?post_type=tribe_events&#038;p=119',0,'tribe_events','',0);
INSERT INTO `wp_posts` VALUES (120,1,'2024-04-25 03:29:45','2024-04-25 03:29:45','','Burnsville MN - Ames Center','','inherit','closed','closed','','119-revision-v1','','','2024-04-25 03:29:45','2024-04-25 03:29:45','',119,'http://motownchristmas.local/?p=120',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (121,1,'2024-04-25 03:30:38','2024-04-25 03:30:38','','Sioux Falls SD - Washington Pavilion','','publish','open','closed','','sioux-falls-sd-washington-pavilion','','','2024-04-25 03:34:53','2024-04-25 03:34:53','',0,'http://motownchristmas.local/?post_type=tribe_events&#038;p=121',0,'tribe_events','',0);
INSERT INTO `wp_posts` VALUES (122,1,'2024-04-25 03:30:38','2024-04-25 03:30:38','','Sioux Falls SD - Washington Pavilion','','inherit','closed','closed','','121-revision-v1','','','2024-04-25 03:30:38','2024-04-25 03:30:38','',121,'http://motownchristmas.local/?p=122',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (123,1,'2024-04-25 03:33:20','2024-04-25 03:33:20','<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Thank you for your interest, tickets will be on sale July 7th</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":124,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image aligncenter size-full\"><img src=\"http://motownchristmas.local/wp-content/uploads/2024/04/TMA-Silver_2_-No-Logo-2022.jpg\" alt=\"\" class=\"wp-image-124\"/></figure>\n<!-- /wp:image -->','','','publish','closed','closed','','comingsoon','','','2024-04-25 03:34:45','2024-04-25 03:34:45','',0,'http://motownchristmas.local/?page_id=123',0,'page','',0);
INSERT INTO `wp_posts` VALUES (124,1,'2024-04-25 03:32:19','2024-04-25 03:32:19','','TMA Silver_2_ No Logo 2022','','inherit','open','closed','','tma-silver_2_-no-logo-2022','','','2024-04-25 03:32:19','2024-04-25 03:32:19','',123,'http://motownchristmas.local/wp-content/uploads/2024/04/TMA-Silver_2_-No-Logo-2022.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (125,1,'2024-04-25 03:33:20','2024-04-25 03:33:20','<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Thank you for your interest, tickets will be on sale July 7th</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":124,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://motownchristmas.local/wp-content/uploads/2024/04/TMA-Silver_2_-No-Logo-2022.jpg\" alt=\"\" class=\"wp-image-124\"/></figure>\n<!-- /wp:image -->','','','inherit','closed','closed','','123-revision-v1','','','2024-04-25 03:33:20','2024-04-25 03:33:20','',123,'http://motownchristmas.local/?p=125',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (126,1,'2024-04-25 03:33:40','2024-04-25 03:33:40','<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Thank you for your interest, tickets will be on sale July 7th</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":124,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image aligncenter size-full\"><img src=\"http://motownchristmas.local/wp-content/uploads/2024/04/TMA-Silver_2_-No-Logo-2022.jpg\" alt=\"\" class=\"wp-image-124\"/></figure>\n<!-- /wp:image -->','','','inherit','closed','closed','','123-revision-v1','','','2024-04-25 03:33:40','2024-04-25 03:33:40','',123,'http://motownchristmas.local/?p=126',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (127,1,'2024-04-25 03:34:02','2024-04-25 03:34:02','<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Thank you for your interest, tickets will be on sale July 7th</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":124,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image aligncenter size-full\"><img src=\"http://motownchristmas.local/wp-content/uploads/2024/04/TMA-Silver_2_-No-Logo-2022.jpg\" alt=\"\" class=\"wp-image-124\"/></figure>\n<!-- /wp:image -->','','','inherit','closed','closed','','123-revision-v1','','','2024-04-25 03:34:02','2024-04-25 03:34:02','',123,'http://motownchristmas.local/?p=127',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (128,1,'2024-04-25 03:34:17','2024-04-25 03:34:17','<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Thank you for your interest, tickets will be on sale July 7th</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":124,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image aligncenter size-full\"><img src=\"http://motownchristmas.local/wp-content/uploads/2024/04/TMA-Silver_2_-No-Logo-2022.jpg\" alt=\"\" class=\"wp-image-124\"/></figure>\n<!-- /wp:image -->','','','inherit','closed','closed','','123-revision-v1','','','2024-04-25 03:34:17','2024-04-25 03:34:17','',123,'http://motownchristmas.local/?p=128',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (129,1,'2024-04-25 03:34:23','2024-04-25 03:34:23','<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Thank you for your interest, tickets will be on sale July 7th</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":124,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image aligncenter size-full\"><img src=\"http://motownchristmas.local/wp-content/uploads/2024/04/TMA-Silver_2_-No-Logo-2022.jpg\" alt=\"\" class=\"wp-image-124\"/></figure>\n<!-- /wp:image -->','','','inherit','closed','closed','','123-revision-v1','','','2024-04-25 03:34:23','2024-04-25 03:34:23','',123,'http://motownchristmas.local/?p=129',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (130,1,'2024-04-25 03:34:45','2024-04-25 03:34:45','<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Thank you for your interest, tickets will be on sale July 7th</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":124,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image aligncenter size-full\"><img src=\"http://motownchristmas.local/wp-content/uploads/2024/04/TMA-Silver_2_-No-Logo-2022.jpg\" alt=\"\" class=\"wp-image-124\"/></figure>\n<!-- /wp:image -->','','','inherit','closed','closed','','123-revision-v1','','','2024-04-25 03:34:45','2024-04-25 03:34:45','',123,'http://motownchristmas.local/?p=130',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (132,1,'2024-05-01 22:54:27','2024-05-01 22:54:27','','Charles-Franklin','','inherit','open','closed','','charles-franklin','','','2024-05-01 22:54:27','2024-05-01 22:54:27','',0,'http://motownchristmas.local/wp-content/uploads/2024/05/Charles-Franklin.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (133,1,'2024-05-01 22:55:05','2024-05-01 22:55:05','','Danny-Friendly','','inherit','open','closed','','danny-friendly','','','2024-05-01 22:55:05','2024-05-01 22:55:05','',0,'http://motownchristmas.local/wp-content/uploads/2024/05/Danny-Friendly.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (134,1,'2024-05-01 22:55:29','2024-05-01 22:55:29','','Glen-Raby','','inherit','open','closed','','glen-raby','','','2024-05-01 22:55:29','2024-05-01 22:55:29','',0,'http://motownchristmas.local/wp-content/uploads/2024/05/Glen-Raby.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (135,1,'2024-05-01 22:56:08','2024-05-01 22:56:08','','Leon-Franklin','','inherit','open','closed','','leon-franklin','','','2024-05-01 22:56:08','2024-05-01 22:56:08','',0,'http://motownchristmas.local/wp-content/uploads/2024/05/Leon-Franklin.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (136,1,'2024-05-01 22:56:43','2024-05-01 22:56:43','','Antonio-Dandridge','','inherit','open','closed','','antonio-dandridge','','','2024-05-01 22:56:43','2024-05-01 22:56:43','',0,'http://motownchristmas.local/wp-content/uploads/2024/05/Antonio-Dandridge.jpg',0,'attachment','image/jpeg',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_tec_events`
--

DROP TABLE IF EXISTS `wp_tec_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_tec_events` (
  `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL,
  `start_date` varchar(19) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `end_date` varchar(19) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `timezone` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'UTC',
  `start_date_utc` varchar(19) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `end_date_utc` varchar(19) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `duration` mediumint(30) DEFAULT '7200',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hash` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`event_id`),
  UNIQUE KEY `post_id` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_tec_events`
--

LOCK TABLES `wp_tec_events` WRITE;
/*!40000 ALTER TABLE `wp_tec_events` DISABLE KEYS */;
INSERT INTO `wp_tec_events` VALUES (1,43,'2024-04-19 19:30:00','2024-04-19 19:30:00','UTC+0','2024-04-19 19:30:00','2024-04-19 19:30:00',0,'2024-04-12 04:19:54','');
INSERT INTO `wp_tec_events` VALUES (2,46,'2024-05-17 00:00:00','2024-05-17 23:59:59','UTC+0','2024-05-17 00:00:00','2024-05-17 23:59:59',86399,'2024-04-25 02:06:05','');
INSERT INTO `wp_tec_events` VALUES (3,64,'2024-05-16 00:00:00','2024-05-16 23:59:59','UTC+0','2024-05-16 00:00:00','2024-05-16 23:59:59',86399,'2024-04-25 02:05:20','');
INSERT INTO `wp_tec_events` VALUES (6,119,'2024-11-07 00:00:00','2024-11-07 23:59:59','UTC+0','2024-11-07 00:00:00','2024-11-07 23:59:59',86399,'2024-04-25 03:29:45','');
INSERT INTO `wp_tec_events` VALUES (7,121,'2024-11-08 00:00:00','2024-11-08 23:59:59','UTC+0','2024-11-08 00:00:00','2024-11-08 23:59:59',86399,'2024-04-25 03:30:38','');
/*!40000 ALTER TABLE `wp_tec_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_tec_occurrences`
--

DROP TABLE IF EXISTS `wp_tec_occurrences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_tec_occurrences` (
  `occurrence_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `start_date` varchar(19) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `start_date_utc` varchar(19) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `end_date` varchar(19) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `end_date_utc` varchar(19) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `duration` mediumint(30) DEFAULT '7200',
  `hash` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`occurrence_id`),
  UNIQUE KEY `hash` (`hash`),
  KEY `event_id` (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_tec_occurrences`
--

LOCK TABLES `wp_tec_occurrences` WRITE;
/*!40000 ALTER TABLE `wp_tec_occurrences` DISABLE KEYS */;
INSERT INTO `wp_tec_occurrences` VALUES (1,1,43,'2024-04-19 19:30:00','2024-04-19 19:30:00','2024-04-19 19:30:00','2024-04-19 19:30:00',0,'2b885d6189f9d0dfd780dc986b518f3ab135123f','2024-04-12 08:19:54');
INSERT INTO `wp_tec_occurrences` VALUES (2,2,46,'2024-05-17 00:00:00','2024-05-17 00:00:00','2024-05-17 23:59:59','2024-05-17 23:59:59',86399,'2c29b7d79d50d07e507a998fc01ab1cd6af6e915','2024-04-25 06:06:05');
INSERT INTO `wp_tec_occurrences` VALUES (3,3,64,'2024-05-16 00:00:00','2024-05-16 00:00:00','2024-05-16 23:59:59','2024-05-16 23:59:59',86399,'03e94638da42d95fea46b1991359061083641268','2024-04-25 06:05:20');
INSERT INTO `wp_tec_occurrences` VALUES (4,6,119,'2024-11-07 00:00:00','2024-11-07 00:00:00','2024-11-07 23:59:59','2024-11-07 23:59:59',86399,'6496e1fe8856cf453e4aefbc4868310f19712229','2024-04-25 07:29:45');
INSERT INTO `wp_tec_occurrences` VALUES (5,7,121,'2024-11-08 00:00:00','2024-11-08 00:00:00','2024-11-08 23:59:59','2024-11-08 23:59:59',86399,'f30a531bb6da78e8dee8673e503130d2f0dd6e76','2024-04-25 07:30:38');
/*!40000 ALTER TABLE `wp_tec_occurrences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (26,2,0);
INSERT INTO `wp_term_relationships` VALUES (27,2,0);
INSERT INTO `wp_term_relationships` VALUES (29,2,0);
INSERT INTO `wp_term_relationships` VALUES (30,2,0);
INSERT INTO `wp_term_relationships` VALUES (60,1,0);
INSERT INTO `wp_term_relationships` VALUES (74,1,0);
INSERT INTO `wp_term_relationships` VALUES (82,2,0);
INSERT INTO `wp_term_relationships` VALUES (83,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'event_listing_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'event_listing_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'event_listing_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'event_listing_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'event_listing_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'event_listing_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'event_listing_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'event_listing_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (11,11,'event_listing_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (12,12,'event_listing_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (13,13,'event_listing_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (14,14,'event_listing_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (15,15,'event_listing_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (16,16,'event_listing_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (17,17,'event_listing_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (18,18,'event_listing_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (19,19,'event_listing_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (20,20,'event_listing_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (21,21,'event_listing_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (22,22,'event_listing_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (23,23,'event_listing_category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (24,24,'event_listing_category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (25,25,'event_listing_category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (26,26,'event_listing_category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (27,27,'event_listing_category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (28,28,'event_listing_category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (29,29,'event_listing_category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (30,30,'event_listing_category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (31,31,'event_listing_category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (32,32,'event_listing_category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (33,33,'event_listing_category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (34,34,'event_listing_category','',0,0);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Main Menu','main-menu',0);
INSERT INTO `wp_terms` VALUES (3,'Appearance or Signing','appearance-or-signing',0);
INSERT INTO `wp_terms` VALUES (4,'Attraction','attraction',0);
INSERT INTO `wp_terms` VALUES (5,'Camp, Trip, or Retreat','camp-trip-or-retreat',0);
INSERT INTO `wp_terms` VALUES (6,'Class, Training, or Workshop','class-training-or-workshop',0);
INSERT INTO `wp_terms` VALUES (7,'Concert or Performance','concert-or-performance',0);
INSERT INTO `wp_terms` VALUES (8,'Conference','conference',0);
INSERT INTO `wp_terms` VALUES (9,'Convention','convention',0);
INSERT INTO `wp_terms` VALUES (10,'Dinner or Gala','dinner-or-gala',0);
INSERT INTO `wp_terms` VALUES (11,'Festival or Fair','festival-or-fair',0);
INSERT INTO `wp_terms` VALUES (12,'Game or Competition','game-or-competition',0);
INSERT INTO `wp_terms` VALUES (13,'Meeting or Networking Event','meeting-or-networking-event',0);
INSERT INTO `wp_terms` VALUES (14,'Other','other',0);
INSERT INTO `wp_terms` VALUES (15,'Party or Social Gathering','party-or-social-gathering',0);
INSERT INTO `wp_terms` VALUES (16,'Race or Endurance Event','race-or-endurance-event',0);
INSERT INTO `wp_terms` VALUES (17,'Rally','rally',0);
INSERT INTO `wp_terms` VALUES (18,'Screening','screening',0);
INSERT INTO `wp_terms` VALUES (19,'Seminar or Talk','seminar-or-talk',0);
INSERT INTO `wp_terms` VALUES (20,'Tour','tour',0);
INSERT INTO `wp_terms` VALUES (21,'Tournament','tournament',0);
INSERT INTO `wp_terms` VALUES (22,'Tradeshow, Consumer Show or Expo','tradeshow-consumer-show-or-expo',0);
INSERT INTO `wp_terms` VALUES (23,'Business &amp; Professional','business-professional',0);
INSERT INTO `wp_terms` VALUES (24,'Charity &amp; Causes','charity-causes',0);
INSERT INTO `wp_terms` VALUES (25,'Community &amp; Culture','community-culture',0);
INSERT INTO `wp_terms` VALUES (26,'Family &amp; Education','family-education',0);
INSERT INTO `wp_terms` VALUES (27,'Fashion &amp; Beauty','fashion-beauty',0);
INSERT INTO `wp_terms` VALUES (28,'Film, Media &amp; Entertainment','film-media-entertainment',0);
INSERT INTO `wp_terms` VALUES (29,'Food &amp; Drink','food-drink',0);
INSERT INTO `wp_terms` VALUES (30,'Game or Competition','game-or-competition',0);
INSERT INTO `wp_terms` VALUES (31,'Other','other',0);
INSERT INTO `wp_terms` VALUES (32,'Performing &amp; Visual Arts','performing-visual-arts',0);
INSERT INTO `wp_terms` VALUES (33,'Science &amp; Technology','science-technology',0);
INSERT INTO `wp_terms` VALUES (34,'Sports &amp; Fitness','sports-fitness',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','adamjalcantara');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"c05246365e85be16213cae043e00ab1fdecdcc05fb3047ec976919061d9ec8ac\";a:4:{s:10:\"expiration\";i:1714702867;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36\";s:5:\"login\";i:1714530067;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','131');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_persisted_preferences','a:3:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:4:{i:0;s:11:\"post-status\";i:1;s:16:\"discussion-panel\";i:2;s:12:\"post-excerpt\";i:3;s:15:\"page-attributes\";}}s:9:\"_modified\";s:24:\"2024-04-25T02:29:23.467Z\";s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}}');
INSERT INTO `wp_usermeta` VALUES (19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (22,1,'wp_user-settings-time','1712891869');
INSERT INTO `wp_usermeta` VALUES (23,1,'nav_menu_recently_edited','2');
INSERT INTO `wp_usermeta` VALUES (24,1,'tribe_setDefaultNavMenuBoxes','1');
INSERT INTO `wp_usermeta` VALUES (25,1,'manageedit-eventcolumnshidden','a:1:{i:0;s:8:\"event-id\";}');
INSERT INTO `wp_usermeta` VALUES (26,1,'dbem_phone','');
INSERT INTO `wp_usermeta` VALUES (27,1,'meta-box-order_tribe_events','a:3:{s:4:\"side\";s:106:\"submitdiv,tagsdiv-post_tag,tribe_events_catdiv,tribe_events_event_options,tribe-events-status,revisionsdiv\";s:6:\"normal\";s:96:\"tribe_events_event_details,postexcerpt,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (28,1,'screen_layout_tribe_events','2');
INSERT INTO `wp_usermeta` VALUES (29,1,'closedpostboxes_tribe_events','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (30,1,'metaboxhidden_tribe_events','a:1:{i:0;s:7:\"slugdiv\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'adamjalcantara','$P$BhPQM.LmEeAIMPu2eQqMSajc5yOBCk0','adamjalcantara','alcantaradevelopment@gmail.com','http://motownchristmas.local','2024-03-27 02:38:31','',0,'adamjalcantara');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-16 23:08:09
