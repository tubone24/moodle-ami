-- MySQL dump 10.13  Distrib 5.5.59, for Linux (x86_64)
--
-- Host: localhost    Database: moodle
-- ------------------------------------------------------
-- Server version	5.5.59

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mdl01_analytics_indicator_calc`
--

DROP TABLE IF EXISTS `mdl01_analytics_indicator_calc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_analytics_indicator_calc` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `starttime` bigint(10) NOT NULL,
  `endtime` bigint(10) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `sampleorigin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sampleid` bigint(10) NOT NULL,
  `indicator` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` decimal(10,2) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_analindicalc_staendco_ix` (`starttime`,`endtime`,`contextid`),
  KEY `mdl01_analindicalc_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stored indicator calculations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_analytics_indicator_calc`
--

LOCK TABLES `mdl01_analytics_indicator_calc` WRITE;
/*!40000 ALTER TABLE `mdl01_analytics_indicator_calc` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_analytics_indicator_calc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_analytics_models`
--

DROP TABLE IF EXISTS `mdl01_analytics_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_analytics_models` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `trained` tinyint(1) NOT NULL DEFAULT '0',
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `indicators` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `timesplitting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` bigint(10) NOT NULL,
  `timecreated` bigint(10) DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_analmode_enatra_ix` (`enabled`,`trained`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Analytic models.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_analytics_models`
--

LOCK TABLES `mdl01_analytics_models` WRITE;
/*!40000 ALTER TABLE `mdl01_analytics_models` DISABLE KEYS */;
INSERT INTO `mdl01_analytics_models` VALUES (1,0,0,'\\core\\analytics\\target\\course_dropout','[\"\\\\mod_assign\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_assign\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_book\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_book\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_chat\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_chat\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_choice\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_choice\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_data\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_data\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_feedback\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_feedback\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_folder\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_folder\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_forum\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_forum\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_glossary\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_glossary\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_imscp\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_imscp\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_label\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_label\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_lesson\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_lesson\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_lti\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_lti\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_page\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_page\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_quiz\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_quiz\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_resource\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_resource\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_scorm\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_scorm\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_survey\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_survey\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_url\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_url\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_wiki\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_wiki\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_workshop\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_workshop\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\core_course\\\\analytics\\\\indicator\\\\completion_enabled\",\"\\\\core_course\\\\analytics\\\\indicator\\\\potential_cognitive_depth\",\"\\\\core_course\\\\analytics\\\\indicator\\\\potential_social_breadth\",\"\\\\core\\\\analytics\\\\indicator\\\\any_access_after_end\",\"\\\\core\\\\analytics\\\\indicator\\\\any_access_before_start\",\"\\\\core\\\\analytics\\\\indicator\\\\any_write_action_in_course\",\"\\\\core\\\\analytics\\\\indicator\\\\read_actions\"]',NULL,1525171683,1525171683,1525171683,0),(2,1,1,'\\core\\analytics\\target\\no_teaching','[\"\\\\core_course\\\\analytics\\\\indicator\\\\no_teacher\",\"\\\\core_course\\\\analytics\\\\indicator\\\\no_student\"]','\\core\\analytics\\time_splitting\\single_range',1525171683,1525171683,1525171683,0);
/*!40000 ALTER TABLE `mdl01_analytics_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_analytics_models_log`
--

DROP TABLE IF EXISTS `mdl01_analytics_models_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_analytics_models_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `modelid` bigint(10) NOT NULL,
  `version` bigint(10) NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `indicators` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `timesplitting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `score` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `info` longtext COLLATE utf8mb4_unicode_ci,
  `dir` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_analmodelog_mod_ix` (`modelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Analytic models changes during evaluation.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_analytics_models_log`
--

LOCK TABLES `mdl01_analytics_models_log` WRITE;
/*!40000 ALTER TABLE `mdl01_analytics_models_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_analytics_models_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_analytics_predict_samples`
--

DROP TABLE IF EXISTS `mdl01_analytics_predict_samples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_analytics_predict_samples` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `modelid` bigint(10) NOT NULL,
  `analysableid` bigint(10) NOT NULL,
  `timesplitting` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rangeindex` bigint(10) NOT NULL,
  `sampleids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_analpredsamp_modanati_ix` (`modelid`,`analysableid`,`timesplitting`,`rangeindex`),
  KEY `mdl01_analpredsamp_mod_ix` (`modelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Samples already used for predictions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_analytics_predict_samples`
--

LOCK TABLES `mdl01_analytics_predict_samples` WRITE;
/*!40000 ALTER TABLE `mdl01_analytics_predict_samples` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_analytics_predict_samples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_analytics_prediction_actions`
--

DROP TABLE IF EXISTS `mdl01_analytics_prediction_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_analytics_prediction_actions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `predictionid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `actionname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_analpredacti_preuseac_ix` (`predictionid`,`userid`,`actionname`),
  KEY `mdl01_analpredacti_pre_ix` (`predictionid`),
  KEY `mdl01_analpredacti_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Register of user actions over predictions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_analytics_prediction_actions`
--

LOCK TABLES `mdl01_analytics_prediction_actions` WRITE;
/*!40000 ALTER TABLE `mdl01_analytics_prediction_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_analytics_prediction_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_analytics_predictions`
--

DROP TABLE IF EXISTS `mdl01_analytics_predictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_analytics_predictions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `modelid` bigint(10) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `sampleid` bigint(10) NOT NULL,
  `rangeindex` mediumint(5) NOT NULL,
  `prediction` decimal(10,2) NOT NULL,
  `predictionscore` decimal(10,5) NOT NULL,
  `calculations` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timestart` bigint(10) DEFAULT NULL,
  `timeend` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_analpred_modcon_ix` (`modelid`,`contextid`),
  KEY `mdl01_analpred_mod_ix` (`modelid`),
  KEY `mdl01_analpred_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Predictions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_analytics_predictions`
--

LOCK TABLES `mdl01_analytics_predictions` WRITE;
/*!40000 ALTER TABLE `mdl01_analytics_predictions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_analytics_predictions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_analytics_train_samples`
--

DROP TABLE IF EXISTS `mdl01_analytics_train_samples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_analytics_train_samples` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `modelid` bigint(10) NOT NULL,
  `analysableid` bigint(10) NOT NULL,
  `timesplitting` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fileid` bigint(10) NOT NULL,
  `sampleids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_analtraisamp_modanati_ix` (`modelid`,`analysableid`,`timesplitting`),
  KEY `mdl01_analtraisamp_mod_ix` (`modelid`),
  KEY `mdl01_analtraisamp_fil_ix` (`fileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Samples used for training';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_analytics_train_samples`
--

LOCK TABLES `mdl01_analytics_train_samples` WRITE;
/*!40000 ALTER TABLE `mdl01_analytics_train_samples` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_analytics_train_samples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_analytics_used_analysables`
--

DROP TABLE IF EXISTS `mdl01_analytics_used_analysables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_analytics_used_analysables` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `modelid` bigint(10) NOT NULL,
  `action` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `analysableid` bigint(10) NOT NULL,
  `timeanalysed` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_analusedanal_modact_ix` (`modelid`,`action`),
  KEY `mdl01_analusedanal_mod_ix` (`modelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='List of analysables used by each model';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_analytics_used_analysables`
--

LOCK TABLES `mdl01_analytics_used_analysables` WRITE;
/*!40000 ALTER TABLE `mdl01_analytics_used_analysables` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_analytics_used_analysables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_analytics_used_files`
--

DROP TABLE IF EXISTS `mdl01_analytics_used_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_analytics_used_files` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `modelid` bigint(10) NOT NULL DEFAULT '0',
  `fileid` bigint(10) NOT NULL DEFAULT '0',
  `action` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_analusedfile_modactfi_ix` (`modelid`,`action`,`fileid`),
  KEY `mdl01_analusedfile_mod_ix` (`modelid`),
  KEY `mdl01_analusedfile_fil_ix` (`fileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Files that have already been used for training and predictio';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_analytics_used_files`
--

LOCK TABLES `mdl01_analytics_used_files` WRITE;
/*!40000 ALTER TABLE `mdl01_analytics_used_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_analytics_used_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_assign`
--

DROP TABLE IF EXISTS `mdl01_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_assign` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `alwaysshowdescription` tinyint(2) NOT NULL DEFAULT '0',
  `nosubmissions` tinyint(2) NOT NULL DEFAULT '0',
  `submissiondrafts` tinyint(2) NOT NULL DEFAULT '0',
  `sendnotifications` tinyint(2) NOT NULL DEFAULT '0',
  `sendlatenotifications` tinyint(2) NOT NULL DEFAULT '0',
  `duedate` bigint(10) NOT NULL DEFAULT '0',
  `allowsubmissionsfromdate` bigint(10) NOT NULL DEFAULT '0',
  `grade` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `requiresubmissionstatement` tinyint(2) NOT NULL DEFAULT '0',
  `completionsubmit` tinyint(2) NOT NULL DEFAULT '0',
  `cutoffdate` bigint(10) NOT NULL DEFAULT '0',
  `gradingduedate` bigint(10) NOT NULL DEFAULT '0',
  `teamsubmission` tinyint(2) NOT NULL DEFAULT '0',
  `requireallteammemberssubmit` tinyint(2) NOT NULL DEFAULT '0',
  `teamsubmissiongroupingid` bigint(10) NOT NULL DEFAULT '0',
  `blindmarking` tinyint(2) NOT NULL DEFAULT '0',
  `revealidentities` tinyint(2) NOT NULL DEFAULT '0',
  `attemptreopenmethod` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `maxattempts` mediumint(6) NOT NULL DEFAULT '-1',
  `markingworkflow` tinyint(2) NOT NULL DEFAULT '0',
  `markingallocation` tinyint(2) NOT NULL DEFAULT '0',
  `sendstudentnotifications` tinyint(2) NOT NULL DEFAULT '1',
  `preventsubmissionnotingroup` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_assi_cou_ix` (`course`),
  KEY `mdl01_assi_tea_ix` (`teamsubmissiongroupingid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table saves information about an instance of mod_assign';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_assign`
--

LOCK TABLES `mdl01_assign` WRITE;
/*!40000 ALTER TABLE `mdl01_assign` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_assign_grades`
--

DROP TABLE IF EXISTS `mdl01_assign_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_assign_grades` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `grader` bigint(10) NOT NULL DEFAULT '0',
  `grade` decimal(10,5) DEFAULT '0.00000',
  `attemptnumber` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_assigrad_assuseatt_uix` (`assignment`,`userid`,`attemptnumber`),
  KEY `mdl01_assigrad_use_ix` (`userid`),
  KEY `mdl01_assigrad_att_ix` (`attemptnumber`),
  KEY `mdl01_assigrad_ass_ix` (`assignment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Grading information about a single assignment submission.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_assign_grades`
--

LOCK TABLES `mdl01_assign_grades` WRITE;
/*!40000 ALTER TABLE `mdl01_assign_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_assign_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_assign_overrides`
--

DROP TABLE IF EXISTS `mdl01_assign_overrides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_assign_overrides` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignid` bigint(10) NOT NULL DEFAULT '0',
  `groupid` bigint(10) DEFAULT NULL,
  `userid` bigint(10) DEFAULT NULL,
  `sortorder` bigint(10) DEFAULT NULL,
  `allowsubmissionsfromdate` bigint(10) DEFAULT NULL,
  `duedate` bigint(10) DEFAULT NULL,
  `cutoffdate` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_assiover_ass_ix` (`assignid`),
  KEY `mdl01_assiover_gro_ix` (`groupid`),
  KEY `mdl01_assiover_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='The overrides to assign settings.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_assign_overrides`
--

LOCK TABLES `mdl01_assign_overrides` WRITE;
/*!40000 ALTER TABLE `mdl01_assign_overrides` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_assign_overrides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_assign_plugin_config`
--

DROP TABLE IF EXISTS `mdl01_assign_plugin_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_assign_plugin_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT '0',
  `plugin` varchar(28) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subtype` varchar(28) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(28) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `mdl01_assiplugconf_plu_ix` (`plugin`),
  KEY `mdl01_assiplugconf_sub_ix` (`subtype`),
  KEY `mdl01_assiplugconf_nam_ix` (`name`),
  KEY `mdl01_assiplugconf_ass_ix` (`assignment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Config data for an instance of a plugin in an assignment.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_assign_plugin_config`
--

LOCK TABLES `mdl01_assign_plugin_config` WRITE;
/*!40000 ALTER TABLE `mdl01_assign_plugin_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_assign_plugin_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_assign_submission`
--

DROP TABLE IF EXISTS `mdl01_assign_submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_assign_submission` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groupid` bigint(10) NOT NULL DEFAULT '0',
  `attemptnumber` bigint(10) NOT NULL DEFAULT '0',
  `latest` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_assisubm_assusegroat_uix` (`assignment`,`userid`,`groupid`,`attemptnumber`),
  KEY `mdl01_assisubm_use_ix` (`userid`),
  KEY `mdl01_assisubm_att_ix` (`attemptnumber`),
  KEY `mdl01_assisubm_assusegrolat_ix` (`assignment`,`userid`,`groupid`,`latest`),
  KEY `mdl01_assisubm_ass_ix` (`assignment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table keeps information about student interactions with';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_assign_submission`
--

LOCK TABLES `mdl01_assign_submission` WRITE;
/*!40000 ALTER TABLE `mdl01_assign_submission` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_assign_submission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_assign_user_flags`
--

DROP TABLE IF EXISTS `mdl01_assign_user_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_assign_user_flags` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `assignment` bigint(10) NOT NULL DEFAULT '0',
  `locked` bigint(10) NOT NULL DEFAULT '0',
  `mailed` smallint(4) NOT NULL DEFAULT '0',
  `extensionduedate` bigint(10) NOT NULL DEFAULT '0',
  `workflowstate` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allocatedmarker` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_assiuserflag_mai_ix` (`mailed`),
  KEY `mdl01_assiuserflag_use_ix` (`userid`),
  KEY `mdl01_assiuserflag_ass_ix` (`assignment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='List of flags that can be set for a single user in a single ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_assign_user_flags`
--

LOCK TABLES `mdl01_assign_user_flags` WRITE;
/*!40000 ALTER TABLE `mdl01_assign_user_flags` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_assign_user_flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_assign_user_mapping`
--

DROP TABLE IF EXISTS `mdl01_assign_user_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_assign_user_mapping` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_assiusermapp_ass_ix` (`assignment`),
  KEY `mdl01_assiusermapp_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Map an assignment specific id number to a user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_assign_user_mapping`
--

LOCK TABLES `mdl01_assign_user_mapping` WRITE;
/*!40000 ALTER TABLE `mdl01_assign_user_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_assign_user_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_assignfeedback_comments`
--

DROP TABLE IF EXISTS `mdl01_assignfeedback_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_assignfeedback_comments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT '0',
  `grade` bigint(10) NOT NULL DEFAULT '0',
  `commenttext` longtext COLLATE utf8mb4_unicode_ci,
  `commentformat` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_assicomm_ass_ix` (`assignment`),
  KEY `mdl01_assicomm_gra_ix` (`grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Text feedback for submitted assignments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_assignfeedback_comments`
--

LOCK TABLES `mdl01_assignfeedback_comments` WRITE;
/*!40000 ALTER TABLE `mdl01_assignfeedback_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_assignfeedback_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_assignfeedback_editpdf_annot`
--

DROP TABLE IF EXISTS `mdl01_assignfeedback_editpdf_annot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_assignfeedback_editpdf_annot` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `gradeid` bigint(10) NOT NULL DEFAULT '0',
  `pageno` bigint(10) NOT NULL DEFAULT '0',
  `x` bigint(10) DEFAULT '0',
  `y` bigint(10) DEFAULT '0',
  `endx` bigint(10) DEFAULT '0',
  `endy` bigint(10) DEFAULT '0',
  `path` longtext COLLATE utf8mb4_unicode_ci,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'line',
  `colour` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'black',
  `draft` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mdl01_assieditanno_grapag_ix` (`gradeid`,`pageno`),
  KEY `mdl01_assieditanno_gra_ix` (`gradeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='stores annotations added to pdfs submitted by students';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_assignfeedback_editpdf_annot`
--

LOCK TABLES `mdl01_assignfeedback_editpdf_annot` WRITE;
/*!40000 ALTER TABLE `mdl01_assignfeedback_editpdf_annot` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_assignfeedback_editpdf_annot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_assignfeedback_editpdf_cmnt`
--

DROP TABLE IF EXISTS `mdl01_assignfeedback_editpdf_cmnt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_assignfeedback_editpdf_cmnt` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `gradeid` bigint(10) NOT NULL DEFAULT '0',
  `x` bigint(10) DEFAULT '0',
  `y` bigint(10) DEFAULT '0',
  `width` bigint(10) DEFAULT '120',
  `rawtext` longtext COLLATE utf8mb4_unicode_ci,
  `pageno` bigint(10) NOT NULL DEFAULT '0',
  `colour` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'black',
  `draft` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mdl01_assieditcmnt_grapag_ix` (`gradeid`,`pageno`),
  KEY `mdl01_assieditcmnt_gra_ix` (`gradeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores comments added to pdfs';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_assignfeedback_editpdf_cmnt`
--

LOCK TABLES `mdl01_assignfeedback_editpdf_cmnt` WRITE;
/*!40000 ALTER TABLE `mdl01_assignfeedback_editpdf_cmnt` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_assignfeedback_editpdf_cmnt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_assignfeedback_editpdf_queue`
--

DROP TABLE IF EXISTS `mdl01_assignfeedback_editpdf_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_assignfeedback_editpdf_queue` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `submissionid` bigint(10) NOT NULL,
  `submissionattempt` bigint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Queue for processing.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_assignfeedback_editpdf_queue`
--

LOCK TABLES `mdl01_assignfeedback_editpdf_queue` WRITE;
/*!40000 ALTER TABLE `mdl01_assignfeedback_editpdf_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_assignfeedback_editpdf_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_assignfeedback_editpdf_quick`
--

DROP TABLE IF EXISTS `mdl01_assignfeedback_editpdf_quick`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_assignfeedback_editpdf_quick` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `rawtext` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` bigint(10) NOT NULL DEFAULT '120',
  `colour` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'yellow',
  PRIMARY KEY (`id`),
  KEY `mdl01_assieditquic_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores teacher specified quicklist comments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_assignfeedback_editpdf_quick`
--

LOCK TABLES `mdl01_assignfeedback_editpdf_quick` WRITE;
/*!40000 ALTER TABLE `mdl01_assignfeedback_editpdf_quick` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_assignfeedback_editpdf_quick` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_assignfeedback_file`
--

DROP TABLE IF EXISTS `mdl01_assignfeedback_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_assignfeedback_file` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT '0',
  `grade` bigint(10) NOT NULL DEFAULT '0',
  `numfiles` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_assifile_ass2_ix` (`assignment`),
  KEY `mdl01_assifile_gra_ix` (`grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores info about the number of files submitted by a student';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_assignfeedback_file`
--

LOCK TABLES `mdl01_assignfeedback_file` WRITE;
/*!40000 ALTER TABLE `mdl01_assignfeedback_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_assignfeedback_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_assignment`
--

DROP TABLE IF EXISTS `mdl01_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_assignment` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `assignmenttype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `resubmit` tinyint(2) NOT NULL DEFAULT '0',
  `preventlate` tinyint(2) NOT NULL DEFAULT '0',
  `emailteachers` tinyint(2) NOT NULL DEFAULT '0',
  `var1` bigint(10) DEFAULT '0',
  `var2` bigint(10) DEFAULT '0',
  `var3` bigint(10) DEFAULT '0',
  `var4` bigint(10) DEFAULT '0',
  `var5` bigint(10) DEFAULT '0',
  `maxbytes` bigint(10) NOT NULL DEFAULT '100000',
  `timedue` bigint(10) NOT NULL DEFAULT '0',
  `timeavailable` bigint(10) NOT NULL DEFAULT '0',
  `grade` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_assi_cou2_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines assignments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_assignment`
--

LOCK TABLES `mdl01_assignment` WRITE;
/*!40000 ALTER TABLE `mdl01_assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_assignment_submissions`
--

DROP TABLE IF EXISTS `mdl01_assignment_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_assignment_submissions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `numfiles` bigint(10) NOT NULL DEFAULT '0',
  `data1` longtext COLLATE utf8mb4_unicode_ci,
  `data2` longtext COLLATE utf8mb4_unicode_ci,
  `grade` bigint(11) NOT NULL DEFAULT '0',
  `submissioncomment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `format` smallint(4) NOT NULL DEFAULT '0',
  `teacher` bigint(10) NOT NULL DEFAULT '0',
  `timemarked` bigint(10) NOT NULL DEFAULT '0',
  `mailed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_assisubm_use2_ix` (`userid`),
  KEY `mdl01_assisubm_mai_ix` (`mailed`),
  KEY `mdl01_assisubm_tim_ix` (`timemarked`),
  KEY `mdl01_assisubm_ass2_ix` (`assignment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Info about submitted assignments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_assignment_submissions`
--

LOCK TABLES `mdl01_assignment_submissions` WRITE;
/*!40000 ALTER TABLE `mdl01_assignment_submissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_assignment_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_assignment_upgrade`
--

DROP TABLE IF EXISTS `mdl01_assignment_upgrade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_assignment_upgrade` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `oldcmid` bigint(10) NOT NULL DEFAULT '0',
  `oldinstance` bigint(10) NOT NULL DEFAULT '0',
  `newcmid` bigint(10) NOT NULL DEFAULT '0',
  `newinstance` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_assiupgr_old_ix` (`oldcmid`),
  KEY `mdl01_assiupgr_old2_ix` (`oldinstance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Info about upgraded assignments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_assignment_upgrade`
--

LOCK TABLES `mdl01_assignment_upgrade` WRITE;
/*!40000 ALTER TABLE `mdl01_assignment_upgrade` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_assignment_upgrade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_assignsubmission_file`
--

DROP TABLE IF EXISTS `mdl01_assignsubmission_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_assignsubmission_file` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT '0',
  `submission` bigint(10) NOT NULL DEFAULT '0',
  `numfiles` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_assifile_ass_ix` (`assignment`),
  KEY `mdl01_assifile_sub_ix` (`submission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Info about file submissions for assignments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_assignsubmission_file`
--

LOCK TABLES `mdl01_assignsubmission_file` WRITE;
/*!40000 ALTER TABLE `mdl01_assignsubmission_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_assignsubmission_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_assignsubmission_onlinetext`
--

DROP TABLE IF EXISTS `mdl01_assignsubmission_onlinetext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_assignsubmission_onlinetext` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT '0',
  `submission` bigint(10) NOT NULL DEFAULT '0',
  `onlinetext` longtext COLLATE utf8mb4_unicode_ci,
  `onlineformat` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_assionli_ass_ix` (`assignment`),
  KEY `mdl01_assionli_sub_ix` (`submission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Info about onlinetext submission';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_assignsubmission_onlinetext`
--

LOCK TABLES `mdl01_assignsubmission_onlinetext` WRITE;
/*!40000 ALTER TABLE `mdl01_assignsubmission_onlinetext` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_assignsubmission_onlinetext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_auth_oauth2_linked_login`
--

DROP TABLE IF EXISTS `mdl01_auth_oauth2_linked_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_auth_oauth2_linked_login` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `issuerid` bigint(10) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirmtoken` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirmtokenexpires` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_authoautlinklogi_use_uix` (`userid`,`issuerid`,`username`),
  KEY `mdl01_authoautlinklogi_issu_ix` (`issuerid`,`username`),
  KEY `mdl01_authoautlinklogi_use_ix` (`usermodified`),
  KEY `mdl01_authoautlinklogi_use2_ix` (`userid`),
  KEY `mdl01_authoautlinklogi_iss_ix` (`issuerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Accounts linked to a users Moodle account.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_auth_oauth2_linked_login`
--

LOCK TABLES `mdl01_auth_oauth2_linked_login` WRITE;
/*!40000 ALTER TABLE `mdl01_auth_oauth2_linked_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_auth_oauth2_linked_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_backup_controllers`
--

DROP TABLE IF EXISTS `mdl01_backup_controllers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_backup_controllers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `backupid` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `operation` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'backup',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL,
  `format` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `interactive` smallint(4) NOT NULL,
  `purpose` smallint(4) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `status` smallint(4) NOT NULL,
  `execution` smallint(4) NOT NULL,
  `executiontime` bigint(10) NOT NULL,
  `checksum` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `controller` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_backcont_bac_uix` (`backupid`),
  KEY `mdl01_backcont_typite_ix` (`type`,`itemid`),
  KEY `mdl01_backcont_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='To store the backup_controllers as they are used';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_backup_controllers`
--

LOCK TABLES `mdl01_backup_controllers` WRITE;
/*!40000 ALTER TABLE `mdl01_backup_controllers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_backup_controllers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_backup_courses`
--

DROP TABLE IF EXISTS `mdl01_backup_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_backup_courses` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `laststarttime` bigint(10) NOT NULL DEFAULT '0',
  `lastendtime` bigint(10) NOT NULL DEFAULT '0',
  `laststatus` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `nextstarttime` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_backcour_cou_uix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='To store every course backup status';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_backup_courses`
--

LOCK TABLES `mdl01_backup_courses` WRITE;
/*!40000 ALTER TABLE `mdl01_backup_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_backup_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_backup_logs`
--

DROP TABLE IF EXISTS `mdl01_backup_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_backup_logs` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `backupid` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `loglevel` smallint(4) NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_backlogs_bacid_uix` (`backupid`,`id`),
  KEY `mdl01_backlogs_bac_ix` (`backupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='To store all the logs from backup and restore operations (by';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_backup_logs`
--

LOCK TABLES `mdl01_backup_logs` WRITE;
/*!40000 ALTER TABLE `mdl01_backup_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_backup_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_badge`
--

DROP TABLE IF EXISTS `mdl01_badge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_badge` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `usercreated` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `issuername` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `issuerurl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `issuercontact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiredate` bigint(10) DEFAULT NULL,
  `expireperiod` bigint(10) DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `courseid` bigint(10) DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `messagesubject` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` tinyint(1) NOT NULL DEFAULT '1',
  `notification` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `nextcron` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_badg_typ_ix` (`type`),
  KEY `mdl01_badg_cou_ix` (`courseid`),
  KEY `mdl01_badg_use_ix` (`usermodified`),
  KEY `mdl01_badg_use2_ix` (`usercreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines badge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_badge`
--

LOCK TABLES `mdl01_badge` WRITE;
/*!40000 ALTER TABLE `mdl01_badge` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_badge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_badge_backpack`
--

DROP TABLE IF EXISTS `mdl01_badge_backpack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_badge_backpack` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `backpackurl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `backpackuid` bigint(10) NOT NULL,
  `autosync` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_badgback_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines settings for connecting external backpack';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_badge_backpack`
--

LOCK TABLES `mdl01_badge_backpack` WRITE;
/*!40000 ALTER TABLE `mdl01_badge_backpack` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_badge_backpack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_badge_criteria`
--

DROP TABLE IF EXISTS `mdl01_badge_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_badge_criteria` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `badgeid` bigint(10) NOT NULL DEFAULT '0',
  `criteriatype` bigint(10) DEFAULT NULL,
  `method` tinyint(1) NOT NULL DEFAULT '1',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_badgcrit_badcri_uix` (`badgeid`,`criteriatype`),
  KEY `mdl01_badgcrit_cri_ix` (`criteriatype`),
  KEY `mdl01_badgcrit_bad_ix` (`badgeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines criteria for issuing badges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_badge_criteria`
--

LOCK TABLES `mdl01_badge_criteria` WRITE;
/*!40000 ALTER TABLE `mdl01_badge_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_badge_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_badge_criteria_met`
--

DROP TABLE IF EXISTS `mdl01_badge_criteria_met`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_badge_criteria_met` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `issuedid` bigint(10) DEFAULT NULL,
  `critid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `datemet` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_badgcritmet_cri_ix` (`critid`),
  KEY `mdl01_badgcritmet_use_ix` (`userid`),
  KEY `mdl01_badgcritmet_iss_ix` (`issuedid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines criteria that were met for an issued badge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_badge_criteria_met`
--

LOCK TABLES `mdl01_badge_criteria_met` WRITE;
/*!40000 ALTER TABLE `mdl01_badge_criteria_met` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_badge_criteria_met` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_badge_criteria_param`
--

DROP TABLE IF EXISTS `mdl01_badge_criteria_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_badge_criteria_param` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `critid` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_badgcritpara_cri_ix` (`critid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines parameters for badges criteria';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_badge_criteria_param`
--

LOCK TABLES `mdl01_badge_criteria_param` WRITE;
/*!40000 ALTER TABLE `mdl01_badge_criteria_param` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_badge_criteria_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_badge_external`
--

DROP TABLE IF EXISTS `mdl01_badge_external`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_badge_external` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `backpackid` bigint(10) NOT NULL,
  `collectionid` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_badgexte_bac_ix` (`backpackid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Setting for external badges display';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_badge_external`
--

LOCK TABLES `mdl01_badge_external` WRITE;
/*!40000 ALTER TABLE `mdl01_badge_external` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_badge_external` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_badge_issued`
--

DROP TABLE IF EXISTS `mdl01_badge_issued`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_badge_issued` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `badgeid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `uniquehash` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateissued` bigint(10) NOT NULL DEFAULT '0',
  `dateexpire` bigint(10) DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  `issuernotified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_badgissu_baduse_uix` (`badgeid`,`userid`),
  KEY `mdl01_badgissu_bad_ix` (`badgeid`),
  KEY `mdl01_badgissu_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines issued badges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_badge_issued`
--

LOCK TABLES `mdl01_badge_issued` WRITE;
/*!40000 ALTER TABLE `mdl01_badge_issued` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_badge_issued` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_badge_manual_award`
--

DROP TABLE IF EXISTS `mdl01_badge_manual_award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_badge_manual_award` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `badgeid` bigint(10) NOT NULL,
  `recipientid` bigint(10) NOT NULL,
  `issuerid` bigint(10) NOT NULL,
  `issuerrole` bigint(10) NOT NULL,
  `datemet` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_badgmanuawar_bad_ix` (`badgeid`),
  KEY `mdl01_badgmanuawar_rec_ix` (`recipientid`),
  KEY `mdl01_badgmanuawar_iss_ix` (`issuerid`),
  KEY `mdl01_badgmanuawar_iss2_ix` (`issuerrole`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Track manual award criteria for badges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_badge_manual_award`
--

LOCK TABLES `mdl01_badge_manual_award` WRITE;
/*!40000 ALTER TABLE `mdl01_badge_manual_award` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_badge_manual_award` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_block`
--

DROP TABLE IF EXISTS `mdl01_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_block` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cron` bigint(10) NOT NULL DEFAULT '0',
  `lastcron` bigint(10) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_bloc_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='contains all installed blocks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_block`
--

LOCK TABLES `mdl01_block` WRITE;
/*!40000 ALTER TABLE `mdl01_block` DISABLE KEYS */;
INSERT INTO `mdl01_block` VALUES (1,'activity_modules',0,0,1),(2,'activity_results',0,0,1),(3,'admin_bookmarks',0,0,1),(4,'badges',0,0,1),(5,'blog_menu',0,0,1),(6,'blog_recent',0,0,1),(7,'blog_tags',0,0,1),(8,'calendar_month',0,0,1),(9,'calendar_upcoming',0,0,1),(10,'comments',0,0,1),(11,'community',0,0,1),(12,'completionstatus',0,0,1),(13,'course_list',0,0,1),(14,'course_summary',0,0,1),(15,'feedback',0,0,1),(16,'globalsearch',0,0,1),(17,'glossary_random',0,0,1),(18,'html',0,0,1),(19,'login',0,0,1),(20,'lp',0,0,1),(21,'mentees',0,0,1),(22,'mnet_hosts',0,0,1),(23,'myoverview',0,0,1),(24,'myprofile',0,0,1),(25,'navigation',0,0,1),(26,'news_items',0,0,1),(27,'online_users',0,0,1),(28,'participants',0,0,1),(29,'private_files',0,0,1),(30,'quiz_results',0,0,0),(31,'recent_activity',86400,0,1),(32,'rss_client',300,0,1),(33,'search_forums',0,0,1),(34,'section_links',0,0,1),(35,'selfcompletion',0,0,1),(36,'settings',0,0,1),(37,'site_main_menu',0,0,1),(38,'social_activities',0,0,1),(39,'tag_flickr',0,0,1),(40,'tag_youtube',0,0,0),(41,'tags',0,0,1);
/*!40000 ALTER TABLE `mdl01_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_block_community`
--

DROP TABLE IF EXISTS `mdl01_block_community`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_block_community` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `coursename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `coursedescription` longtext COLLATE utf8mb4_unicode_ci,
  `courseurl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imageurl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Community block';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_block_community`
--

LOCK TABLES `mdl01_block_community` WRITE;
/*!40000 ALTER TABLE `mdl01_block_community` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_block_community` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_block_instances`
--

DROP TABLE IF EXISTS `mdl01_block_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_block_instances` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `blockname` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `parentcontextid` bigint(10) NOT NULL,
  `showinsubcontexts` smallint(4) NOT NULL,
  `requiredbytheme` smallint(4) NOT NULL DEFAULT '0',
  `pagetypepattern` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subpagepattern` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `defaultregion` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `defaultweight` bigint(10) NOT NULL,
  `configdata` longtext COLLATE utf8mb4_unicode_ci,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_blocinst_parshopagsub_ix` (`parentcontextid`,`showinsubcontexts`,`pagetypepattern`,`subpagepattern`),
  KEY `mdl01_blocinst_tim_ix` (`timemodified`),
  KEY `mdl01_blocinst_par_ix` (`parentcontextid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table stores block instances. The type of block this is';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_block_instances`
--

LOCK TABLES `mdl01_block_instances` WRITE;
/*!40000 ALTER TABLE `mdl01_block_instances` DISABLE KEYS */;
INSERT INTO `mdl01_block_instances` VALUES (1,'admin_bookmarks',1,0,0,'admin-*',NULL,'side-pre',2,'',1525171707,1525171707),(2,'private_files',1,0,0,'my-index','2','side-post',0,'',1525171707,1525171707),(3,'online_users',1,0,0,'my-index','2','side-post',1,'',1525171707,1525171707),(4,'badges',1,0,0,'my-index','2','side-post',2,'',1525171707,1525171707),(5,'calendar_month',1,0,0,'my-index','2','side-post',3,'',1525171707,1525171707),(6,'calendar_upcoming',1,0,0,'my-index','2','side-post',4,'',1525171707,1525171707),(7,'lp',1,0,0,'my-index','2','content',0,'',1525171707,1525171707),(8,'myoverview',1,0,0,'my-index','2','content',1,'',1525171707,1525171707);
/*!40000 ALTER TABLE `mdl01_block_instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_block_positions`
--

DROP TABLE IF EXISTS `mdl01_block_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_block_positions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `blockinstanceid` bigint(10) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `pagetype` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subpage` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `visible` smallint(4) NOT NULL,
  `region` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_blocposi_bloconpagsu_uix` (`blockinstanceid`,`contextid`,`pagetype`,`subpage`),
  KEY `mdl01_blocposi_blo_ix` (`blockinstanceid`),
  KEY `mdl01_blocposi_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores the position of a sticky block_instance on a another ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_block_positions`
--

LOCK TABLES `mdl01_block_positions` WRITE;
/*!40000 ALTER TABLE `mdl01_block_positions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_block_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_block_recent_activity`
--

DROP TABLE IF EXISTS `mdl01_block_recent_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_block_recent_activity` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `cmid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `action` tinyint(1) NOT NULL,
  `modname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_blocreceacti_coutim_ix` (`courseid`,`timecreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Recent activity block';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_block_recent_activity`
--

LOCK TABLES `mdl01_block_recent_activity` WRITE;
/*!40000 ALTER TABLE `mdl01_block_recent_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_block_recent_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_block_rss_client`
--

DROP TABLE IF EXISTS `mdl01_block_rss_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_block_rss_client` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `preferredtitle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `shared` tinyint(2) NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `skiptime` bigint(10) NOT NULL DEFAULT '0',
  `skipuntil` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Remote news feed information. Contains the news feed id, the';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_block_rss_client`
--

LOCK TABLES `mdl01_block_rss_client` WRITE;
/*!40000 ALTER TABLE `mdl01_block_rss_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_block_rss_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_blog_association`
--

DROP TABLE IF EXISTS `mdl01_blog_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_blog_association` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `blogid` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_blogasso_con_ix` (`contextid`),
  KEY `mdl01_blogasso_blo_ix` (`blogid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Associations of blog entries with courses and module instanc';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_blog_association`
--

LOCK TABLES `mdl01_blog_association` WRITE;
/*!40000 ALTER TABLE `mdl01_blog_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_blog_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_blog_external`
--

DROP TABLE IF EXISTS `mdl01_blog_external`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_blog_external` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `filtertags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `failedlastsync` tinyint(1) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) DEFAULT NULL,
  `timefetched` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_blogexte_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='External blog links used for RSS copying of blog entries to ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_blog_external`
--

LOCK TABLES `mdl01_blog_external` WRITE;
/*!40000 ALTER TABLE `mdl01_blog_external` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_blog_external` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_book`
--

DROP TABLE IF EXISTS `mdl01_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_book` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_unicode_ci,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `numbering` smallint(4) NOT NULL DEFAULT '0',
  `navstyle` smallint(4) NOT NULL DEFAULT '1',
  `customtitles` tinyint(2) NOT NULL DEFAULT '0',
  `revision` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines book';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_book`
--

LOCK TABLES `mdl01_book` WRITE;
/*!40000 ALTER TABLE `mdl01_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_book_chapters`
--

DROP TABLE IF EXISTS `mdl01_book_chapters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_book_chapters` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `bookid` bigint(10) NOT NULL DEFAULT '0',
  `pagenum` bigint(10) NOT NULL DEFAULT '0',
  `subchapter` bigint(10) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contentformat` smallint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(2) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `importsrc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines book_chapters';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_book_chapters`
--

LOCK TABLES `mdl01_book_chapters` WRITE;
/*!40000 ALTER TABLE `mdl01_book_chapters` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_book_chapters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_cache_filters`
--

DROP TABLE IF EXISTS `mdl01_cache_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_cache_filters` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `filter` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` bigint(10) NOT NULL DEFAULT '0',
  `md5key` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rawtext` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_cachfilt_filmd5_ix` (`filter`,`md5key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='For keeping information about cached data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_cache_filters`
--

LOCK TABLES `mdl01_cache_filters` WRITE;
/*!40000 ALTER TABLE `mdl01_cache_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_cache_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_cache_flags`
--

DROP TABLE IF EXISTS `mdl01_cache_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_cache_flags` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `flagtype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_cachflag_fla_ix` (`flagtype`),
  KEY `mdl01_cachflag_nam_ix` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Cache of time-sensitive flags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_cache_flags`
--

LOCK TABLES `mdl01_cache_flags` WRITE;
/*!40000 ALTER TABLE `mdl01_cache_flags` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_cache_flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_capabilities`
--

DROP TABLE IF EXISTS `mdl01_capabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_capabilities` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `captype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contextlevel` bigint(10) NOT NULL DEFAULT '0',
  `component` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `riskbitmask` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_capa_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=591 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='this defines all capabilities';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_capabilities`
--

LOCK TABLES `mdl01_capabilities` WRITE;
/*!40000 ALTER TABLE `mdl01_capabilities` DISABLE KEYS */;
INSERT INTO `mdl01_capabilities` VALUES (1,'moodle/site:config','write',10,'moodle',62),(2,'moodle/site:configview','read',10,'moodle',0),(3,'moodle/site:readallmessages','read',10,'moodle',8),(4,'moodle/site:manageallmessaging','write',10,'moodle',8),(5,'moodle/site:deleteanymessage','write',10,'moodle',32),(6,'moodle/site:sendmessage','write',10,'moodle',16),(7,'moodle/site:deleteownmessage','write',10,'moodle',0),(8,'moodle/site:approvecourse','write',10,'moodle',4),(9,'moodle/backup:backupcourse','write',50,'moodle',28),(10,'moodle/backup:backupsection','write',50,'moodle',28),(11,'moodle/backup:backupactivity','write',70,'moodle',28),(12,'moodle/backup:backuptargethub','write',50,'moodle',28),(13,'moodle/backup:backuptargetimport','write',50,'moodle',28),(14,'moodle/backup:downloadfile','write',50,'moodle',28),(15,'moodle/backup:configure','write',50,'moodle',28),(16,'moodle/backup:userinfo','read',50,'moodle',8),(17,'moodle/backup:anonymise','read',50,'moodle',8),(18,'moodle/restore:restorecourse','write',50,'moodle',28),(19,'moodle/restore:restoresection','write',50,'moodle',28),(20,'moodle/restore:restoreactivity','write',50,'moodle',28),(21,'moodle/restore:viewautomatedfilearea','write',50,'moodle',28),(22,'moodle/restore:restoretargethub','write',50,'moodle',28),(23,'moodle/restore:restoretargetimport','write',50,'moodle',28),(24,'moodle/restore:uploadfile','write',50,'moodle',28),(25,'moodle/restore:configure','write',50,'moodle',28),(26,'moodle/restore:rolldates','write',50,'moodle',0),(27,'moodle/restore:userinfo','write',50,'moodle',30),(28,'moodle/restore:createuser','write',10,'moodle',24),(29,'moodle/site:manageblocks','write',80,'moodle',20),(30,'moodle/site:accessallgroups','read',50,'moodle',0),(31,'moodle/site:viewfullnames','read',50,'moodle',0),(32,'moodle/site:viewuseridentity','read',50,'moodle',0),(33,'moodle/site:viewreports','read',50,'moodle',8),(34,'moodle/site:trustcontent','write',50,'moodle',4),(35,'moodle/site:uploadusers','write',10,'moodle',24),(36,'moodle/filter:manage','write',50,'moodle',0),(37,'moodle/user:create','write',10,'moodle',24),(38,'moodle/user:delete','write',10,'moodle',40),(39,'moodle/user:update','write',10,'moodle',24),(40,'moodle/user:viewdetails','read',50,'moodle',0),(41,'moodle/user:viewalldetails','read',30,'moodle',8),(42,'moodle/user:viewlastip','read',30,'moodle',8),(43,'moodle/user:viewhiddendetails','read',50,'moodle',8),(44,'moodle/user:loginas','write',50,'moodle',30),(45,'moodle/user:managesyspages','write',10,'moodle',0),(46,'moodle/user:manageblocks','write',30,'moodle',0),(47,'moodle/user:manageownblocks','write',10,'moodle',0),(48,'moodle/user:manageownfiles','write',10,'moodle',0),(49,'moodle/user:ignoreuserquota','write',10,'moodle',0),(50,'moodle/my:configsyspages','write',10,'moodle',0),(51,'moodle/role:assign','write',50,'moodle',28),(52,'moodle/role:review','read',50,'moodle',8),(53,'moodle/role:override','write',50,'moodle',28),(54,'moodle/role:safeoverride','write',50,'moodle',16),(55,'moodle/role:manage','write',10,'moodle',28),(56,'moodle/role:switchroles','read',50,'moodle',12),(57,'moodle/category:manage','write',40,'moodle',4),(58,'moodle/category:viewhiddencategories','read',40,'moodle',0),(59,'moodle/cohort:manage','write',40,'moodle',0),(60,'moodle/cohort:assign','write',40,'moodle',0),(61,'moodle/cohort:view','read',50,'moodle',0),(62,'moodle/course:create','write',40,'moodle',4),(63,'moodle/course:request','write',10,'moodle',0),(64,'moodle/course:delete','write',50,'moodle',32),(65,'moodle/course:update','write',50,'moodle',4),(66,'moodle/course:view','read',50,'moodle',0),(67,'moodle/course:enrolreview','read',50,'moodle',8),(68,'moodle/course:enrolconfig','write',50,'moodle',8),(69,'moodle/course:reviewotherusers','read',50,'moodle',0),(70,'moodle/course:bulkmessaging','write',50,'moodle',16),(71,'moodle/course:viewhiddenuserfields','read',50,'moodle',8),(72,'moodle/course:viewhiddencourses','read',50,'moodle',0),(73,'moodle/course:visibility','write',50,'moodle',0),(74,'moodle/course:managefiles','write',50,'moodle',4),(75,'moodle/course:ignoreavailabilityrestrictions','read',70,'moodle',0),(76,'moodle/course:ignorefilesizelimits','write',50,'moodle',0),(77,'moodle/course:manageactivities','write',70,'moodle',4),(78,'moodle/course:activityvisibility','write',70,'moodle',0),(79,'moodle/course:viewhiddenactivities','write',70,'moodle',0),(80,'moodle/course:viewparticipants','read',50,'moodle',0),(81,'moodle/course:changefullname','write',50,'moodle',4),(82,'moodle/course:changeshortname','write',50,'moodle',4),(83,'moodle/course:renameroles','write',50,'moodle',0),(84,'moodle/course:changeidnumber','write',50,'moodle',4),(85,'moodle/course:changecategory','write',50,'moodle',4),(86,'moodle/course:changesummary','write',50,'moodle',4),(87,'moodle/site:viewparticipants','read',10,'moodle',0),(88,'moodle/course:isincompletionreports','read',50,'moodle',0),(89,'moodle/course:viewscales','read',50,'moodle',0),(90,'moodle/course:managescales','write',50,'moodle',0),(91,'moodle/course:managegroups','write',50,'moodle',0),(92,'moodle/course:reset','write',50,'moodle',32),(93,'moodle/course:viewsuspendedusers','read',10,'moodle',0),(94,'moodle/course:tag','write',50,'moodle',16),(95,'moodle/blog:view','read',10,'moodle',0),(96,'moodle/blog:search','read',10,'moodle',0),(97,'moodle/blog:viewdrafts','read',10,'moodle',8),(98,'moodle/blog:create','write',10,'moodle',16),(99,'moodle/blog:manageentries','write',10,'moodle',16),(100,'moodle/blog:manageexternal','write',10,'moodle',16),(101,'moodle/calendar:manageownentries','write',50,'moodle',16),(102,'moodle/calendar:managegroupentries','write',50,'moodle',16),(103,'moodle/calendar:manageentries','write',50,'moodle',16),(104,'moodle/user:editprofile','write',30,'moodle',24),(105,'moodle/user:editownprofile','write',10,'moodle',16),(106,'moodle/user:changeownpassword','write',10,'moodle',0),(107,'moodle/user:readuserposts','read',30,'moodle',0),(108,'moodle/user:readuserblogs','read',30,'moodle',0),(109,'moodle/user:viewuseractivitiesreport','read',30,'moodle',8),(110,'moodle/user:editmessageprofile','write',30,'moodle',16),(111,'moodle/user:editownmessageprofile','write',10,'moodle',0),(112,'moodle/question:managecategory','write',50,'moodle',20),(113,'moodle/question:add','write',50,'moodle',20),(114,'moodle/question:editmine','write',50,'moodle',20),(115,'moodle/question:editall','write',50,'moodle',20),(116,'moodle/question:viewmine','read',50,'moodle',0),(117,'moodle/question:viewall','read',50,'moodle',0),(118,'moodle/question:usemine','read',50,'moodle',0),(119,'moodle/question:useall','read',50,'moodle',0),(120,'moodle/question:movemine','write',50,'moodle',0),(121,'moodle/question:moveall','write',50,'moodle',0),(122,'moodle/question:config','write',10,'moodle',2),(123,'moodle/question:flag','write',50,'moodle',0),(124,'moodle/site:doclinks','read',10,'moodle',0),(125,'moodle/course:sectionvisibility','write',50,'moodle',0),(126,'moodle/course:useremail','write',50,'moodle',0),(127,'moodle/course:viewhiddensections','write',50,'moodle',0),(128,'moodle/course:setcurrentsection','write',50,'moodle',0),(129,'moodle/course:movesections','write',50,'moodle',0),(130,'moodle/site:mnetlogintoremote','read',10,'moodle',0),(131,'moodle/grade:viewall','read',50,'moodle',8),(132,'moodle/grade:view','read',50,'moodle',0),(133,'moodle/grade:viewhidden','read',50,'moodle',8),(134,'moodle/grade:import','write',50,'moodle',12),(135,'moodle/grade:export','read',50,'moodle',8),(136,'moodle/grade:manage','write',50,'moodle',12),(137,'moodle/grade:edit','write',50,'moodle',12),(138,'moodle/grade:managegradingforms','write',50,'moodle',12),(139,'moodle/grade:sharegradingforms','write',10,'moodle',4),(140,'moodle/grade:managesharedforms','write',10,'moodle',4),(141,'moodle/grade:manageoutcomes','write',50,'moodle',0),(142,'moodle/grade:manageletters','write',50,'moodle',0),(143,'moodle/grade:hide','write',50,'moodle',0),(144,'moodle/grade:lock','write',50,'moodle',0),(145,'moodle/grade:unlock','write',50,'moodle',0),(146,'moodle/my:manageblocks','write',10,'moodle',0),(147,'moodle/notes:view','read',50,'moodle',0),(148,'moodle/notes:manage','write',50,'moodle',16),(149,'moodle/tag:manage','write',10,'moodle',16),(150,'moodle/tag:edit','write',10,'moodle',16),(151,'moodle/tag:flag','write',10,'moodle',16),(152,'moodle/tag:editblocks','write',10,'moodle',0),(153,'moodle/block:view','read',80,'moodle',0),(154,'moodle/block:edit','write',80,'moodle',20),(155,'moodle/portfolio:export','read',10,'moodle',0),(156,'moodle/comment:view','read',50,'moodle',0),(157,'moodle/comment:post','write',50,'moodle',24),(158,'moodle/comment:delete','write',50,'moodle',32),(159,'moodle/webservice:createtoken','write',10,'moodle',62),(160,'moodle/webservice:managealltokens','write',10,'moodle',42),(161,'moodle/webservice:createmobiletoken','write',10,'moodle',24),(162,'moodle/rating:view','read',50,'moodle',0),(163,'moodle/rating:viewany','read',50,'moodle',8),(164,'moodle/rating:viewall','read',50,'moodle',8),(165,'moodle/rating:rate','write',50,'moodle',0),(166,'moodle/course:publish','write',10,'moodle',24),(167,'moodle/course:markcomplete','write',50,'moodle',0),(168,'moodle/course:overridecompletion','write',50,'moodle',0),(169,'moodle/community:add','write',10,'moodle',0),(170,'moodle/community:download','write',10,'moodle',0),(171,'moodle/badges:manageglobalsettings','write',10,'moodle',34),(172,'moodle/badges:viewbadges','read',50,'moodle',0),(173,'moodle/badges:manageownbadges','write',30,'moodle',0),(174,'moodle/badges:viewotherbadges','read',30,'moodle',0),(175,'moodle/badges:earnbadge','write',50,'moodle',0),(176,'moodle/badges:createbadge','write',50,'moodle',16),(177,'moodle/badges:deletebadge','write',50,'moodle',32),(178,'moodle/badges:configuredetails','write',50,'moodle',16),(179,'moodle/badges:configurecriteria','write',50,'moodle',4),(180,'moodle/badges:configuremessages','write',50,'moodle',16),(181,'moodle/badges:awardbadge','write',50,'moodle',16),(182,'moodle/badges:revokebadge','write',50,'moodle',16),(183,'moodle/badges:viewawarded','read',50,'moodle',8),(184,'moodle/site:forcelanguage','read',10,'moodle',0),(185,'moodle/search:query','read',10,'moodle',0),(186,'moodle/competency:competencymanage','write',40,'moodle',0),(187,'moodle/competency:competencyview','read',40,'moodle',0),(188,'moodle/competency:competencygrade','write',50,'moodle',0),(189,'moodle/competency:coursecompetencymanage','write',50,'moodle',0),(190,'moodle/competency:coursecompetencyconfigure','write',70,'moodle',0),(191,'moodle/competency:coursecompetencygradable','read',50,'moodle',0),(192,'moodle/competency:coursecompetencyview','read',50,'moodle',0),(193,'moodle/competency:evidencedelete','write',30,'moodle',0),(194,'moodle/competency:planmanage','write',30,'moodle',0),(195,'moodle/competency:planmanagedraft','write',30,'moodle',0),(196,'moodle/competency:planmanageown','write',30,'moodle',0),(197,'moodle/competency:planmanageowndraft','write',30,'moodle',0),(198,'moodle/competency:planview','read',30,'moodle',0),(199,'moodle/competency:planviewdraft','read',30,'moodle',0),(200,'moodle/competency:planviewown','read',30,'moodle',0),(201,'moodle/competency:planviewowndraft','read',30,'moodle',0),(202,'moodle/competency:planrequestreview','write',30,'moodle',0),(203,'moodle/competency:planrequestreviewown','write',30,'moodle',0),(204,'moodle/competency:planreview','write',30,'moodle',0),(205,'moodle/competency:plancomment','write',30,'moodle',0),(206,'moodle/competency:plancommentown','write',30,'moodle',0),(207,'moodle/competency:usercompetencyview','read',30,'moodle',0),(208,'moodle/competency:usercompetencyrequestreview','write',30,'moodle',0),(209,'moodle/competency:usercompetencyrequestreviewown','write',30,'moodle',0),(210,'moodle/competency:usercompetencyreview','write',30,'moodle',0),(211,'moodle/competency:usercompetencycomment','write',30,'moodle',0),(212,'moodle/competency:usercompetencycommentown','write',30,'moodle',0),(213,'moodle/competency:templatemanage','write',40,'moodle',0),(214,'moodle/analytics:listinsights','read',50,'moodle',8),(215,'moodle/analytics:managemodels','write',10,'moodle',2),(216,'moodle/competency:templateview','read',40,'moodle',0),(217,'moodle/competency:userevidencemanage','write',30,'moodle',0),(218,'moodle/competency:userevidencemanageown','write',30,'moodle',0),(219,'moodle/competency:userevidenceview','read',30,'moodle',0),(220,'moodle/site:maintenanceaccess','write',10,'moodle',0),(221,'mod/assign:view','read',70,'mod_assign',0),(222,'mod/assign:submit','write',70,'mod_assign',0),(223,'mod/assign:grade','write',70,'mod_assign',4),(224,'mod/assign:exportownsubmission','read',70,'mod_assign',0),(225,'mod/assign:addinstance','write',50,'mod_assign',4),(226,'mod/assign:editothersubmission','write',70,'mod_assign',41),(227,'mod/assign:grantextension','write',70,'mod_assign',0),(228,'mod/assign:revealidentities','write',70,'mod_assign',0),(229,'mod/assign:reviewgrades','write',70,'mod_assign',0),(230,'mod/assign:releasegrades','write',70,'mod_assign',0),(231,'mod/assign:managegrades','write',70,'mod_assign',0),(232,'mod/assign:manageallocations','write',70,'mod_assign',0),(233,'mod/assign:viewgrades','read',70,'mod_assign',0),(234,'mod/assign:viewblinddetails','write',70,'mod_assign',8),(235,'mod/assign:receivegradernotifications','read',70,'mod_assign',0),(236,'mod/assign:manageoverrides','write',70,'mod_assign',0),(237,'mod/assignment:view','read',70,'mod_assignment',0),(238,'mod/assignment:addinstance','write',50,'mod_assignment',4),(239,'mod/assignment:submit','write',70,'mod_assignment',0),(240,'mod/assignment:grade','write',70,'mod_assignment',4),(241,'mod/assignment:exportownsubmission','read',70,'mod_assignment',0),(242,'mod/book:addinstance','write',50,'mod_book',4),(243,'mod/book:read','read',70,'mod_book',0),(244,'mod/book:viewhiddenchapters','read',70,'mod_book',0),(245,'mod/book:edit','write',70,'mod_book',4),(246,'mod/chat:addinstance','write',50,'mod_chat',4),(247,'mod/chat:chat','write',70,'mod_chat',16),(248,'mod/chat:readlog','read',70,'mod_chat',0),(249,'mod/chat:deletelog','write',70,'mod_chat',0),(250,'mod/chat:exportparticipatedsession','read',70,'mod_chat',8),(251,'mod/chat:exportsession','read',70,'mod_chat',8),(252,'mod/chat:view','read',70,'mod_chat',0),(253,'mod/choice:addinstance','write',50,'mod_choice',4),(254,'mod/choice:choose','write',70,'mod_choice',0),(255,'mod/choice:readresponses','read',70,'mod_choice',0),(256,'mod/choice:deleteresponses','write',70,'mod_choice',0),(257,'mod/choice:downloadresponses','read',70,'mod_choice',0),(258,'mod/choice:view','read',70,'mod_choice',0),(259,'mod/data:addinstance','write',50,'mod_data',4),(260,'mod/data:viewentry','read',70,'mod_data',0),(261,'mod/data:writeentry','write',70,'mod_data',16),(262,'mod/data:comment','write',70,'mod_data',16),(263,'mod/data:rate','write',70,'mod_data',0),(264,'mod/data:viewrating','read',70,'mod_data',0),(265,'mod/data:viewanyrating','read',70,'mod_data',8),(266,'mod/data:viewallratings','read',70,'mod_data',8),(267,'mod/data:approve','write',70,'mod_data',16),(268,'mod/data:manageentries','write',70,'mod_data',16),(269,'mod/data:managecomments','write',70,'mod_data',16),(270,'mod/data:managetemplates','write',70,'mod_data',20),(271,'mod/data:viewalluserpresets','read',70,'mod_data',0),(272,'mod/data:manageuserpresets','write',70,'mod_data',20),(273,'mod/data:exportentry','read',70,'mod_data',8),(274,'mod/data:exportownentry','read',70,'mod_data',0),(275,'mod/data:exportallentries','read',70,'mod_data',8),(276,'mod/data:exportuserinfo','read',70,'mod_data',8),(277,'mod/data:view','read',70,'mod_data',0),(278,'mod/feedback:addinstance','write',50,'mod_feedback',4),(279,'mod/feedback:view','read',70,'mod_feedback',0),(280,'mod/feedback:complete','write',70,'mod_feedback',16),(281,'mod/feedback:viewanalysepage','read',70,'mod_feedback',8),(282,'mod/feedback:deletesubmissions','write',70,'mod_feedback',0),(283,'mod/feedback:mapcourse','write',70,'mod_feedback',0),(284,'mod/feedback:edititems','write',70,'mod_feedback',20),(285,'mod/feedback:createprivatetemplate','write',70,'mod_feedback',16),(286,'mod/feedback:createpublictemplate','write',70,'mod_feedback',16),(287,'mod/feedback:deletetemplate','write',70,'mod_feedback',0),(288,'mod/feedback:viewreports','read',70,'mod_feedback',8),(289,'mod/feedback:receivemail','read',70,'mod_feedback',8),(290,'mod/folder:addinstance','write',50,'mod_folder',4),(291,'mod/folder:view','read',70,'mod_folder',0),(292,'mod/folder:managefiles','write',70,'mod_folder',16),(293,'mod/forum:addinstance','write',50,'mod_forum',4),(294,'mod/forum:viewdiscussion','read',70,'mod_forum',0),(295,'mod/forum:viewhiddentimedposts','read',70,'mod_forum',0),(296,'mod/forum:startdiscussion','write',70,'mod_forum',16),(297,'mod/forum:replypost','write',70,'mod_forum',16),(298,'mod/forum:addnews','write',70,'mod_forum',16),(299,'mod/forum:replynews','write',70,'mod_forum',16),(300,'mod/forum:viewrating','read',70,'mod_forum',0),(301,'mod/forum:viewanyrating','read',70,'mod_forum',8),(302,'mod/forum:viewallratings','read',70,'mod_forum',8),(303,'mod/forum:rate','write',70,'mod_forum',0),(304,'mod/forum:createattachment','write',70,'mod_forum',16),(305,'mod/forum:deleteownpost','read',70,'mod_forum',0),(306,'mod/forum:deleteanypost','read',70,'mod_forum',0),(307,'mod/forum:splitdiscussions','read',70,'mod_forum',0),(308,'mod/forum:movediscussions','read',70,'mod_forum',0),(309,'mod/forum:pindiscussions','write',70,'mod_forum',0),(310,'mod/forum:editanypost','write',70,'mod_forum',16),(311,'mod/forum:viewqandawithoutposting','read',70,'mod_forum',0),(312,'mod/forum:viewsubscribers','read',70,'mod_forum',0),(313,'mod/forum:managesubscriptions','read',70,'mod_forum',16),(314,'mod/forum:postwithoutthrottling','write',70,'mod_forum',16),(315,'mod/forum:exportdiscussion','read',70,'mod_forum',8),(316,'mod/forum:exportpost','read',70,'mod_forum',8),(317,'mod/forum:exportownpost','read',70,'mod_forum',8),(318,'mod/forum:addquestion','write',70,'mod_forum',16),(319,'mod/forum:allowforcesubscribe','read',70,'mod_forum',0),(320,'mod/forum:canposttomygroups','write',70,'mod_forum',0),(321,'mod/forum:canoverridediscussionlock','write',70,'mod_forum',0),(322,'mod/glossary:addinstance','write',50,'mod_glossary',4),(323,'mod/glossary:view','read',70,'mod_glossary',0),(324,'mod/glossary:write','write',70,'mod_glossary',16),(325,'mod/glossary:manageentries','write',70,'mod_glossary',16),(326,'mod/glossary:managecategories','write',70,'mod_glossary',16),(327,'mod/glossary:comment','write',70,'mod_glossary',16),(328,'mod/glossary:managecomments','write',70,'mod_glossary',16),(329,'mod/glossary:import','write',70,'mod_glossary',16),(330,'mod/glossary:export','read',70,'mod_glossary',0),(331,'mod/glossary:approve','write',70,'mod_glossary',16),(332,'mod/glossary:rate','write',70,'mod_glossary',0),(333,'mod/glossary:viewrating','read',70,'mod_glossary',0),(334,'mod/glossary:viewanyrating','read',70,'mod_glossary',8),(335,'mod/glossary:viewallratings','read',70,'mod_glossary',8),(336,'mod/glossary:exportentry','read',70,'mod_glossary',8),(337,'mod/glossary:exportownentry','read',70,'mod_glossary',0),(338,'mod/imscp:view','read',70,'mod_imscp',0),(339,'mod/imscp:addinstance','write',50,'mod_imscp',4),(340,'mod/label:addinstance','write',50,'mod_label',4),(341,'mod/label:view','read',70,'mod_label',0),(342,'mod/lesson:addinstance','write',50,'mod_lesson',4),(343,'mod/lesson:edit','write',70,'mod_lesson',4),(344,'mod/lesson:grade','write',70,'mod_lesson',20),(345,'mod/lesson:viewreports','read',70,'mod_lesson',8),(346,'mod/lesson:manage','write',70,'mod_lesson',0),(347,'mod/lesson:manageoverrides','write',70,'mod_lesson',0),(348,'mod/lesson:view','read',70,'mod_lesson',0),(349,'mod/lti:view','read',70,'mod_lti',0),(350,'mod/lti:addinstance','write',50,'mod_lti',4),(351,'mod/lti:manage','write',70,'mod_lti',8),(352,'mod/lti:admin','write',70,'mod_lti',8),(353,'mod/lti:addcoursetool','write',50,'mod_lti',0),(354,'mod/lti:requesttooladd','write',50,'mod_lti',0),(355,'mod/page:view','read',70,'mod_page',0),(356,'mod/page:addinstance','write',50,'mod_page',4),(357,'mod/quiz:view','read',70,'mod_quiz',0),(358,'mod/quiz:addinstance','write',50,'mod_quiz',4),(359,'mod/quiz:attempt','write',70,'mod_quiz',16),(360,'mod/quiz:reviewmyattempts','read',70,'mod_quiz',0),(361,'mod/quiz:manage','write',70,'mod_quiz',16),(362,'mod/quiz:manageoverrides','write',70,'mod_quiz',0),(363,'mod/quiz:preview','write',70,'mod_quiz',0),(364,'mod/quiz:grade','write',70,'mod_quiz',20),(365,'mod/quiz:regrade','write',70,'mod_quiz',16),(366,'mod/quiz:viewreports','read',70,'mod_quiz',8),(367,'mod/quiz:deleteattempts','write',70,'mod_quiz',32),(368,'mod/quiz:ignoretimelimits','read',70,'mod_quiz',0),(369,'mod/quiz:emailconfirmsubmission','read',70,'mod_quiz',0),(370,'mod/quiz:emailnotifysubmission','read',70,'mod_quiz',0),(371,'mod/quiz:emailwarnoverdue','read',70,'mod_quiz',0),(372,'mod/resource:view','read',70,'mod_resource',0),(373,'mod/resource:addinstance','write',50,'mod_resource',4),(374,'mod/scorm:addinstance','write',50,'mod_scorm',4),(375,'mod/scorm:viewreport','read',70,'mod_scorm',0),(376,'mod/scorm:skipview','read',70,'mod_scorm',0),(377,'mod/scorm:savetrack','write',70,'mod_scorm',0),(378,'mod/scorm:viewscores','read',70,'mod_scorm',0),(379,'mod/scorm:deleteresponses','write',70,'mod_scorm',0),(380,'mod/scorm:deleteownresponses','write',70,'mod_scorm',0),(381,'mod/survey:addinstance','write',50,'mod_survey',4),(382,'mod/survey:participate','read',70,'mod_survey',0),(383,'mod/survey:readresponses','read',70,'mod_survey',0),(384,'mod/survey:download','read',70,'mod_survey',0),(385,'mod/url:view','read',70,'mod_url',0),(386,'mod/url:addinstance','write',50,'mod_url',4),(387,'mod/wiki:addinstance','write',50,'mod_wiki',4),(388,'mod/wiki:viewpage','read',70,'mod_wiki',0),(389,'mod/wiki:editpage','write',70,'mod_wiki',16),(390,'mod/wiki:createpage','write',70,'mod_wiki',16),(391,'mod/wiki:viewcomment','read',70,'mod_wiki',0),(392,'mod/wiki:editcomment','write',70,'mod_wiki',16),(393,'mod/wiki:managecomment','write',70,'mod_wiki',0),(394,'mod/wiki:managefiles','write',70,'mod_wiki',0),(395,'mod/wiki:overridelock','write',70,'mod_wiki',0),(396,'mod/wiki:managewiki','write',70,'mod_wiki',0),(397,'mod/workshop:view','read',70,'mod_workshop',0),(398,'mod/workshop:addinstance','write',50,'mod_workshop',4),(399,'mod/workshop:switchphase','write',70,'mod_workshop',0),(400,'mod/workshop:editdimensions','write',70,'mod_workshop',4),(401,'mod/workshop:submit','write',70,'mod_workshop',0),(402,'mod/workshop:peerassess','write',70,'mod_workshop',0),(403,'mod/workshop:manageexamples','write',70,'mod_workshop',0),(404,'mod/workshop:allocate','write',70,'mod_workshop',0),(405,'mod/workshop:publishsubmissions','write',70,'mod_workshop',0),(406,'mod/workshop:viewauthornames','read',70,'mod_workshop',0),(407,'mod/workshop:viewreviewernames','read',70,'mod_workshop',0),(408,'mod/workshop:viewallsubmissions','read',70,'mod_workshop',0),(409,'mod/workshop:viewpublishedsubmissions','read',70,'mod_workshop',0),(410,'mod/workshop:viewauthorpublished','read',70,'mod_workshop',0),(411,'mod/workshop:viewallassessments','read',70,'mod_workshop',0),(412,'mod/workshop:overridegrades','write',70,'mod_workshop',0),(413,'mod/workshop:ignoredeadlines','write',70,'mod_workshop',0),(414,'mod/workshop:deletesubmissions','write',70,'mod_workshop',0),(415,'mod/workshop:exportsubmissions','read',70,'mod_workshop',0),(416,'auth/oauth2:managelinkedlogins','write',30,'auth_oauth2',0),(417,'enrol/category:synchronised','write',10,'enrol_category',0),(418,'enrol/category:config','write',50,'enrol_category',0),(419,'enrol/cohort:config','write',50,'enrol_cohort',0),(420,'enrol/cohort:unenrol','write',50,'enrol_cohort',0),(421,'enrol/database:unenrol','write',50,'enrol_database',0),(422,'enrol/database:config','write',50,'enrol_database',0),(423,'enrol/flatfile:manage','write',50,'enrol_flatfile',0),(424,'enrol/flatfile:unenrol','write',50,'enrol_flatfile',0),(425,'enrol/guest:config','write',50,'enrol_guest',0),(426,'enrol/imsenterprise:config','write',50,'enrol_imsenterprise',0),(427,'enrol/ldap:manage','write',50,'enrol_ldap',0),(428,'enrol/lti:config','write',50,'enrol_lti',0),(429,'enrol/lti:unenrol','write',50,'enrol_lti',0),(430,'enrol/manual:config','write',50,'enrol_manual',0),(431,'enrol/manual:enrol','write',50,'enrol_manual',0),(432,'enrol/manual:manage','write',50,'enrol_manual',0),(433,'enrol/manual:unenrol','write',50,'enrol_manual',0),(434,'enrol/manual:unenrolself','write',50,'enrol_manual',0),(435,'enrol/meta:config','write',50,'enrol_meta',0),(436,'enrol/meta:selectaslinked','read',50,'enrol_meta',0),(437,'enrol/meta:unenrol','write',50,'enrol_meta',0),(438,'enrol/mnet:config','write',50,'enrol_mnet',0),(439,'enrol/paypal:config','write',50,'enrol_paypal',0),(440,'enrol/paypal:manage','write',50,'enrol_paypal',0),(441,'enrol/paypal:unenrol','write',50,'enrol_paypal',0),(442,'enrol/paypal:unenrolself','write',50,'enrol_paypal',0),(443,'enrol/self:config','write',50,'enrol_self',0),(444,'enrol/self:manage','write',50,'enrol_self',0),(445,'enrol/self:holdkey','write',50,'enrol_self',0),(446,'enrol/self:unenrolself','write',50,'enrol_self',0),(447,'enrol/self:unenrol','write',50,'enrol_self',0),(448,'message/airnotifier:managedevice','write',10,'message_airnotifier',0),(449,'block/activity_modules:addinstance','write',80,'block_activity_modules',20),(450,'block/activity_results:addinstance','write',80,'block_activity_results',20),(451,'block/admin_bookmarks:myaddinstance','write',10,'block_admin_bookmarks',0),(452,'block/admin_bookmarks:addinstance','write',80,'block_admin_bookmarks',20),(453,'block/badges:addinstance','read',80,'block_badges',0),(454,'block/badges:myaddinstance','read',10,'block_badges',8),(455,'block/blog_menu:addinstance','write',80,'block_blog_menu',20),(456,'block/blog_recent:addinstance','write',80,'block_blog_recent',20),(457,'block/blog_tags:addinstance','write',80,'block_blog_tags',20),(458,'block/calendar_month:myaddinstance','write',10,'block_calendar_month',0),(459,'block/calendar_month:addinstance','write',80,'block_calendar_month',20),(460,'block/calendar_upcoming:myaddinstance','write',10,'block_calendar_upcoming',0),(461,'block/calendar_upcoming:addinstance','write',80,'block_calendar_upcoming',20),(462,'block/comments:myaddinstance','write',10,'block_comments',0),(463,'block/comments:addinstance','write',80,'block_comments',20),(464,'block/community:myaddinstance','write',10,'block_community',0),(465,'block/community:addinstance','write',80,'block_community',20),(466,'block/completionstatus:addinstance','write',80,'block_completionstatus',20),(467,'block/course_list:myaddinstance','write',10,'block_course_list',0),(468,'block/course_list:addinstance','write',80,'block_course_list',20),(469,'block/course_summary:addinstance','write',80,'block_course_summary',20),(470,'block/feedback:addinstance','write',80,'block_feedback',20),(471,'block/globalsearch:myaddinstance','write',10,'block_globalsearch',0),(472,'block/globalsearch:addinstance','write',80,'block_globalsearch',0),(473,'block/glossary_random:myaddinstance','write',10,'block_glossary_random',0),(474,'block/glossary_random:addinstance','write',80,'block_glossary_random',20),(475,'block/html:myaddinstance','write',10,'block_html',0),(476,'block/html:addinstance','write',80,'block_html',20),(477,'block/login:addinstance','write',80,'block_login',20),(478,'block/lp:addinstance','write',10,'block_lp',0),(479,'block/lp:myaddinstance','write',10,'block_lp',0),(480,'block/lp:view','read',10,'block_lp',0),(481,'block/mentees:myaddinstance','write',10,'block_mentees',0),(482,'block/mentees:addinstance','write',80,'block_mentees',20),(483,'block/mnet_hosts:myaddinstance','write',10,'block_mnet_hosts',0),(484,'block/mnet_hosts:addinstance','write',80,'block_mnet_hosts',20),(485,'block/myoverview:myaddinstance','write',10,'block_myoverview',0),(486,'block/myoverview:addinstance','write',80,'block_myoverview',20),(487,'block/myprofile:myaddinstance','write',10,'block_myprofile',0),(488,'block/myprofile:addinstance','write',80,'block_myprofile',20),(489,'block/navigation:myaddinstance','write',10,'block_navigation',0),(490,'block/navigation:addinstance','write',80,'block_navigation',20),(491,'block/news_items:myaddinstance','write',10,'block_news_items',0),(492,'block/news_items:addinstance','write',80,'block_news_items',20),(493,'block/online_users:myaddinstance','write',10,'block_online_users',0),(494,'block/online_users:addinstance','write',80,'block_online_users',20),(495,'block/online_users:viewlist','read',80,'block_online_users',0),(496,'block/participants:addinstance','write',80,'block_participants',20),(497,'block/private_files:myaddinstance','write',10,'block_private_files',0),(498,'block/private_files:addinstance','write',80,'block_private_files',20),(499,'block/quiz_results:addinstance','write',80,'block_quiz_results',20),(500,'block/recent_activity:addinstance','write',80,'block_recent_activity',20),(501,'block/recent_activity:viewaddupdatemodule','read',50,'block_recent_activity',0),(502,'block/recent_activity:viewdeletemodule','read',50,'block_recent_activity',0),(503,'block/rss_client:myaddinstance','write',10,'block_rss_client',0),(504,'block/rss_client:addinstance','write',80,'block_rss_client',20),(505,'block/rss_client:manageownfeeds','write',80,'block_rss_client',0),(506,'block/rss_client:manageanyfeeds','write',80,'block_rss_client',16),(507,'block/search_forums:addinstance','write',80,'block_search_forums',20),(508,'block/section_links:addinstance','write',80,'block_section_links',20),(509,'block/selfcompletion:addinstance','write',80,'block_selfcompletion',20),(510,'block/settings:myaddinstance','write',10,'block_settings',0),(511,'block/settings:addinstance','write',80,'block_settings',20),(512,'block/site_main_menu:addinstance','write',80,'block_site_main_menu',20),(513,'block/social_activities:addinstance','write',80,'block_social_activities',20),(514,'block/tag_flickr:addinstance','write',80,'block_tag_flickr',20),(515,'block/tag_youtube:addinstance','write',80,'block_tag_youtube',20),(516,'block/tags:myaddinstance','write',10,'block_tags',0),(517,'block/tags:addinstance','write',80,'block_tags',20),(518,'report/completion:view','read',50,'report_completion',8),(519,'report/courseoverview:view','read',10,'report_courseoverview',8),(520,'report/log:view','read',50,'report_log',8),(521,'report/log:viewtoday','read',50,'report_log',8),(522,'report/loglive:view','read',50,'report_loglive',8),(523,'report/outline:view','read',50,'report_outline',8),(524,'report/participation:view','read',50,'report_participation',8),(525,'report/performance:view','read',10,'report_performance',2),(526,'report/progress:view','read',50,'report_progress',8),(527,'report/questioninstances:view','read',10,'report_questioninstances',0),(528,'report/security:view','read',10,'report_security',2),(529,'report/stats:view','read',50,'report_stats',8),(530,'report/usersessions:manageownsessions','write',30,'report_usersessions',0),(531,'gradeexport/ods:view','read',50,'gradeexport_ods',8),(532,'gradeexport/ods:publish','read',50,'gradeexport_ods',8),(533,'gradeexport/txt:view','read',50,'gradeexport_txt',8),(534,'gradeexport/txt:publish','read',50,'gradeexport_txt',8),(535,'gradeexport/xls:view','read',50,'gradeexport_xls',8),(536,'gradeexport/xls:publish','read',50,'gradeexport_xls',8),(537,'gradeexport/xml:view','read',50,'gradeexport_xml',8),(538,'gradeexport/xml:publish','read',50,'gradeexport_xml',8),(539,'gradeimport/csv:view','write',50,'gradeimport_csv',0),(540,'gradeimport/direct:view','write',50,'gradeimport_direct',0),(541,'gradeimport/xml:view','write',50,'gradeimport_xml',0),(542,'gradeimport/xml:publish','write',50,'gradeimport_xml',0),(543,'gradereport/grader:view','read',50,'gradereport_grader',8),(544,'gradereport/history:view','read',50,'gradereport_history',8),(545,'gradereport/outcomes:view','read',50,'gradereport_outcomes',8),(546,'gradereport/overview:view','read',50,'gradereport_overview',8),(547,'gradereport/singleview:view','read',50,'gradereport_singleview',8),(548,'gradereport/user:view','read',50,'gradereport_user',8),(549,'webservice/rest:use','read',50,'webservice_rest',0),(550,'webservice/soap:use','read',50,'webservice_soap',0),(551,'webservice/xmlrpc:use','read',50,'webservice_xmlrpc',0),(552,'repository/areafiles:view','read',70,'repository_areafiles',0),(553,'repository/boxnet:view','read',70,'repository_boxnet',0),(554,'repository/coursefiles:view','read',70,'repository_coursefiles',0),(555,'repository/dropbox:view','read',70,'repository_dropbox',0),(556,'repository/equella:view','read',70,'repository_equella',0),(557,'repository/filesystem:view','read',70,'repository_filesystem',0),(558,'repository/flickr:view','read',70,'repository_flickr',0),(559,'repository/flickr_public:view','read',70,'repository_flickr_public',0),(560,'repository/googledocs:view','read',70,'repository_googledocs',0),(561,'repository/local:view','read',70,'repository_local',0),(562,'repository/merlot:view','read',70,'repository_merlot',0),(563,'repository/onedrive:view','read',70,'repository_onedrive',0),(564,'repository/picasa:view','read',70,'repository_picasa',0),(565,'repository/recent:view','read',70,'repository_recent',0),(566,'repository/s3:view','read',70,'repository_s3',0),(567,'repository/skydrive:view','read',70,'repository_skydrive',0),(568,'repository/upload:view','read',70,'repository_upload',0),(569,'repository/url:view','read',70,'repository_url',0),(570,'repository/user:view','read',70,'repository_user',0),(571,'repository/webdav:view','read',70,'repository_webdav',0),(572,'repository/wikimedia:view','read',70,'repository_wikimedia',0),(573,'repository/youtube:view','read',70,'repository_youtube',0),(574,'tool/customlang:view','read',10,'tool_customlang',2),(575,'tool/customlang:edit','write',10,'tool_customlang',6),(576,'tool/lpmigrate:frameworksmigrate','write',10,'tool_lpmigrate',0),(577,'tool/monitor:subscribe','read',50,'tool_monitor',8),(578,'tool/monitor:managerules','write',50,'tool_monitor',4),(579,'tool/monitor:managetool','write',10,'tool_monitor',4),(580,'tool/recyclebin:deleteitems','write',50,'tool_recyclebin',32),(581,'tool/recyclebin:restoreitems','write',50,'tool_recyclebin',0),(582,'tool/recyclebin:viewitems','read',50,'tool_recyclebin',0),(583,'tool/uploaduser:uploaduserpictures','write',10,'tool_uploaduser',16),(584,'tool/usertours:managetours','write',10,'tool_usertours',4),(585,'booktool/exportimscp:export','read',70,'booktool_exportimscp',0),(586,'booktool/importhtml:import','write',70,'booktool_importhtml',4),(587,'booktool/print:print','read',70,'booktool_print',0),(588,'quiz/grading:viewstudentnames','read',70,'quiz_grading',0),(589,'quiz/grading:viewidnumber','read',70,'quiz_grading',0),(590,'quiz/statistics:view','read',70,'quiz_statistics',0);
/*!40000 ALTER TABLE `mdl01_capabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_chat`
--

DROP TABLE IF EXISTS `mdl01_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_chat` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `keepdays` bigint(11) NOT NULL DEFAULT '0',
  `studentlogs` smallint(4) NOT NULL DEFAULT '0',
  `chattime` bigint(10) NOT NULL DEFAULT '0',
  `schedule` smallint(4) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_chat_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Each of these is a chat room';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_chat`
--

LOCK TABLES `mdl01_chat` WRITE;
/*!40000 ALTER TABLE `mdl01_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_chat_messages`
--

DROP TABLE IF EXISTS `mdl01_chat_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_chat_messages` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `chatid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `groupid` bigint(10) NOT NULL DEFAULT '0',
  `issystem` tinyint(1) NOT NULL DEFAULT '0',
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_chatmess_use_ix` (`userid`),
  KEY `mdl01_chatmess_gro_ix` (`groupid`),
  KEY `mdl01_chatmess_timcha_ix` (`timestamp`,`chatid`),
  KEY `mdl01_chatmess_cha_ix` (`chatid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores all the actual chat messages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_chat_messages`
--

LOCK TABLES `mdl01_chat_messages` WRITE;
/*!40000 ALTER TABLE `mdl01_chat_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_chat_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_chat_messages_current`
--

DROP TABLE IF EXISTS `mdl01_chat_messages_current`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_chat_messages_current` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `chatid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `groupid` bigint(10) NOT NULL DEFAULT '0',
  `issystem` tinyint(1) NOT NULL DEFAULT '0',
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_chatmesscurr_use_ix` (`userid`),
  KEY `mdl01_chatmesscurr_gro_ix` (`groupid`),
  KEY `mdl01_chatmesscurr_timcha_ix` (`timestamp`,`chatid`),
  KEY `mdl01_chatmesscurr_cha_ix` (`chatid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores current session';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_chat_messages_current`
--

LOCK TABLES `mdl01_chat_messages_current` WRITE;
/*!40000 ALTER TABLE `mdl01_chat_messages_current` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_chat_messages_current` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_chat_users`
--

DROP TABLE IF EXISTS `mdl01_chat_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_chat_users` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `chatid` bigint(11) NOT NULL DEFAULT '0',
  `userid` bigint(11) NOT NULL DEFAULT '0',
  `groupid` bigint(11) NOT NULL DEFAULT '0',
  `version` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `firstping` bigint(10) NOT NULL DEFAULT '0',
  `lastping` bigint(10) NOT NULL DEFAULT '0',
  `lastmessageping` bigint(10) NOT NULL DEFAULT '0',
  `sid` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `course` bigint(10) NOT NULL DEFAULT '0',
  `lang` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl01_chatuser_use_ix` (`userid`),
  KEY `mdl01_chatuser_las_ix` (`lastping`),
  KEY `mdl01_chatuser_gro_ix` (`groupid`),
  KEY `mdl01_chatuser_cha_ix` (`chatid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Keeps track of which users are in which chat rooms';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_chat_users`
--

LOCK TABLES `mdl01_chat_users` WRITE;
/*!40000 ALTER TABLE `mdl01_chat_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_chat_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_choice`
--

DROP TABLE IF EXISTS `mdl01_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_choice` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `publish` tinyint(2) NOT NULL DEFAULT '0',
  `showresults` tinyint(2) NOT NULL DEFAULT '0',
  `display` smallint(4) NOT NULL DEFAULT '0',
  `allowupdate` tinyint(2) NOT NULL DEFAULT '0',
  `allowmultiple` tinyint(2) NOT NULL DEFAULT '0',
  `showunanswered` tinyint(2) NOT NULL DEFAULT '0',
  `includeinactive` tinyint(2) NOT NULL DEFAULT '1',
  `limitanswers` tinyint(2) NOT NULL DEFAULT '0',
  `timeopen` bigint(10) NOT NULL DEFAULT '0',
  `timeclose` bigint(10) NOT NULL DEFAULT '0',
  `showpreview` tinyint(2) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `completionsubmit` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_choi_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Available choices are stored here';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_choice`
--

LOCK TABLES `mdl01_choice` WRITE;
/*!40000 ALTER TABLE `mdl01_choice` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_choice_answers`
--

DROP TABLE IF EXISTS `mdl01_choice_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_choice_answers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `choiceid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `optionid` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_choiansw_use_ix` (`userid`),
  KEY `mdl01_choiansw_cho_ix` (`choiceid`),
  KEY `mdl01_choiansw_opt_ix` (`optionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='choices performed by users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_choice_answers`
--

LOCK TABLES `mdl01_choice_answers` WRITE;
/*!40000 ALTER TABLE `mdl01_choice_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_choice_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_choice_options`
--

DROP TABLE IF EXISTS `mdl01_choice_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_choice_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `choiceid` bigint(10) NOT NULL DEFAULT '0',
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `maxanswers` bigint(10) DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_choiopti_cho_ix` (`choiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='available options to choice';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_choice_options`
--

LOCK TABLES `mdl01_choice_options` WRITE;
/*!40000 ALTER TABLE `mdl01_choice_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_choice_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_cohort`
--

DROP TABLE IF EXISTS `mdl01_cohort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_cohort` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `idnumber` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `descriptionformat` tinyint(2) NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `component` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_coho_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Each record represents one cohort (aka site-wide group).';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_cohort`
--

LOCK TABLES `mdl01_cohort` WRITE;
/*!40000 ALTER TABLE `mdl01_cohort` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_cohort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_cohort_members`
--

DROP TABLE IF EXISTS `mdl01_cohort_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_cohort_members` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `cohortid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `timeadded` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_cohomemb_cohuse_uix` (`cohortid`,`userid`),
  KEY `mdl01_cohomemb_coh_ix` (`cohortid`),
  KEY `mdl01_cohomemb_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Link a user to a cohort.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_cohort_members`
--

LOCK TABLES `mdl01_cohort_members` WRITE;
/*!40000 ALTER TABLE `mdl01_cohort_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_cohort_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_comments`
--

DROP TABLE IF EXISTS `mdl01_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_comments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `component` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commentarea` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `format` tinyint(2) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='moodle comments module';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_comments`
--

LOCK TABLES `mdl01_comments` WRITE;
/*!40000 ALTER TABLE `mdl01_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_competency`
--

DROP TABLE IF EXISTS `mdl01_competency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_competency` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `shortname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `descriptionformat` smallint(4) NOT NULL DEFAULT '0',
  `idnumber` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `competencyframeworkid` bigint(10) NOT NULL,
  `parentid` bigint(10) NOT NULL DEFAULT '0',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortorder` bigint(10) NOT NULL,
  `ruletype` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ruleoutcome` tinyint(2) NOT NULL DEFAULT '0',
  `ruleconfig` longtext COLLATE utf8mb4_unicode_ci,
  `scaleid` bigint(10) DEFAULT NULL,
  `scaleconfiguration` longtext COLLATE utf8mb4_unicode_ci,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_comp_comidn_uix` (`competencyframeworkid`,`idnumber`),
  KEY `mdl01_comp_rul_ix` (`ruleoutcome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table contains the master record of each competency in ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_competency`
--

LOCK TABLES `mdl01_competency` WRITE;
/*!40000 ALTER TABLE `mdl01_competency` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_competency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_competency_coursecomp`
--

DROP TABLE IF EXISTS `mdl01_competency_coursecomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_competency_coursecomp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `ruleoutcome` tinyint(2) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_compcour_coucom_uix` (`courseid`,`competencyid`),
  KEY `mdl01_compcour_courul_ix` (`courseid`,`ruleoutcome`),
  KEY `mdl01_compcour_cou2_ix` (`courseid`),
  KEY `mdl01_compcour_com_ix` (`competencyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Link a competency to a course.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_competency_coursecomp`
--

LOCK TABLES `mdl01_competency_coursecomp` WRITE;
/*!40000 ALTER TABLE `mdl01_competency_coursecomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_competency_coursecomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_competency_coursecompsetting`
--

DROP TABLE IF EXISTS `mdl01_competency_coursecompsetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_competency_coursecompsetting` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `pushratingstouserplans` tinyint(2) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_compcour_cou_uix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table contains the course specific settings for compete';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_competency_coursecompsetting`
--

LOCK TABLES `mdl01_competency_coursecompsetting` WRITE;
/*!40000 ALTER TABLE `mdl01_competency_coursecompsetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_competency_coursecompsetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_competency_evidence`
--

DROP TABLE IF EXISTS `mdl01_competency_evidence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_competency_evidence` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `usercompetencyid` bigint(10) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `action` tinyint(2) NOT NULL,
  `actionuserid` bigint(10) DEFAULT NULL,
  `descidentifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `desccomponent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `desca` longtext COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade` bigint(10) DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_compevid_use_ix` (`usercompetencyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='The evidence linked to a user competency';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_competency_evidence`
--

LOCK TABLES `mdl01_competency_evidence` WRITE;
/*!40000 ALTER TABLE `mdl01_competency_evidence` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_competency_evidence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_competency_framework`
--

DROP TABLE IF EXISTS `mdl01_competency_framework`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_competency_framework` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `shortname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contextid` bigint(10) NOT NULL,
  `idnumber` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `descriptionformat` smallint(4) NOT NULL DEFAULT '0',
  `scaleid` bigint(11) DEFAULT NULL,
  `scaleconfiguration` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` tinyint(2) NOT NULL DEFAULT '1',
  `taxonomies` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_compfram_idn_uix` (`idnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='List of competency frameworks.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_competency_framework`
--

LOCK TABLES `mdl01_competency_framework` WRITE;
/*!40000 ALTER TABLE `mdl01_competency_framework` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_competency_framework` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_competency_modulecomp`
--

DROP TABLE IF EXISTS `mdl01_competency_modulecomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_competency_modulecomp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `cmid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `ruleoutcome` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_compmodu_cmicom_uix` (`cmid`,`competencyid`),
  KEY `mdl01_compmodu_cmirul_ix` (`cmid`,`ruleoutcome`),
  KEY `mdl01_compmodu_cmi_ix` (`cmid`),
  KEY `mdl01_compmodu_com_ix` (`competencyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Link a competency to a module.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_competency_modulecomp`
--

LOCK TABLES `mdl01_competency_modulecomp` WRITE;
/*!40000 ALTER TABLE `mdl01_competency_modulecomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_competency_modulecomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_competency_plan`
--

DROP TABLE IF EXISTS `mdl01_competency_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_competency_plan` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `descriptionformat` smallint(4) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL,
  `templateid` bigint(10) DEFAULT NULL,
  `origtemplateid` bigint(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `duedate` bigint(10) DEFAULT '0',
  `reviewerid` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_compplan_usesta_ix` (`userid`,`status`),
  KEY `mdl01_compplan_tem_ix` (`templateid`),
  KEY `mdl01_compplan_stadue_ix` (`status`,`duedate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Learning plans';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_competency_plan`
--

LOCK TABLES `mdl01_competency_plan` WRITE;
/*!40000 ALTER TABLE `mdl01_competency_plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_competency_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_competency_plancomp`
--

DROP TABLE IF EXISTS `mdl01_competency_plancomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_competency_plancomp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `planid` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `sortorder` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_compplan_placom_uix` (`planid`,`competencyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Plan competencies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_competency_plancomp`
--

LOCK TABLES `mdl01_competency_plancomp` WRITE;
/*!40000 ALTER TABLE `mdl01_competency_plancomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_competency_plancomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_competency_relatedcomp`
--

DROP TABLE IF EXISTS `mdl01_competency_relatedcomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_competency_relatedcomp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `competencyid` bigint(10) NOT NULL,
  `relatedcompetencyid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Related competencies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_competency_relatedcomp`
--

LOCK TABLES `mdl01_competency_relatedcomp` WRITE;
/*!40000 ALTER TABLE `mdl01_competency_relatedcomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_competency_relatedcomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_competency_template`
--

DROP TABLE IF EXISTS `mdl01_competency_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_competency_template` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `shortname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contextid` bigint(10) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `descriptionformat` smallint(4) NOT NULL DEFAULT '0',
  `visible` tinyint(2) NOT NULL DEFAULT '1',
  `duedate` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Learning plan templates.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_competency_template`
--

LOCK TABLES `mdl01_competency_template` WRITE;
/*!40000 ALTER TABLE `mdl01_competency_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_competency_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_competency_templatecohort`
--

DROP TABLE IF EXISTS `mdl01_competency_templatecohort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_competency_templatecohort` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `templateid` bigint(10) NOT NULL,
  `cohortid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_comptemp_temcoh_uix` (`templateid`,`cohortid`),
  KEY `mdl01_comptemp_tem2_ix` (`templateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Default comment for the table, please edit me';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_competency_templatecohort`
--

LOCK TABLES `mdl01_competency_templatecohort` WRITE;
/*!40000 ALTER TABLE `mdl01_competency_templatecohort` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_competency_templatecohort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_competency_templatecomp`
--

DROP TABLE IF EXISTS `mdl01_competency_templatecomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_competency_templatecomp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `templateid` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `sortorder` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_comptemp_tem_ix` (`templateid`),
  KEY `mdl01_comptemp_com_ix` (`competencyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Link a competency to a learning plan template.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_competency_templatecomp`
--

LOCK TABLES `mdl01_competency_templatecomp` WRITE;
/*!40000 ALTER TABLE `mdl01_competency_templatecomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_competency_templatecomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_competency_usercomp`
--

DROP TABLE IF EXISTS `mdl01_competency_usercomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_competency_usercomp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `reviewerid` bigint(10) DEFAULT NULL,
  `proficiency` tinyint(2) DEFAULT NULL,
  `grade` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_compuser_usecom_uix` (`userid`,`competencyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='User competencies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_competency_usercomp`
--

LOCK TABLES `mdl01_competency_usercomp` WRITE;
/*!40000 ALTER TABLE `mdl01_competency_usercomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_competency_usercomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_competency_usercompcourse`
--

DROP TABLE IF EXISTS `mdl01_competency_usercompcourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_competency_usercompcourse` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `courseid` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `proficiency` tinyint(2) DEFAULT NULL,
  `grade` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_compuser_usecoucom_uix` (`userid`,`courseid`,`competencyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='User competencies in a course';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_competency_usercompcourse`
--

LOCK TABLES `mdl01_competency_usercompcourse` WRITE;
/*!40000 ALTER TABLE `mdl01_competency_usercompcourse` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_competency_usercompcourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_competency_usercompplan`
--

DROP TABLE IF EXISTS `mdl01_competency_usercompplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_competency_usercompplan` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `planid` bigint(10) NOT NULL,
  `proficiency` tinyint(2) DEFAULT NULL,
  `grade` bigint(10) DEFAULT NULL,
  `sortorder` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_compuser_usecompla_uix` (`userid`,`competencyid`,`planid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='User competencies plans';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_competency_usercompplan`
--

LOCK TABLES `mdl01_competency_usercompplan` WRITE;
/*!40000 ALTER TABLE `mdl01_competency_usercompplan` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_competency_usercompplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_competency_userevidence`
--

DROP TABLE IF EXISTS `mdl01_competency_userevidence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_competency_userevidence` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `descriptionformat` tinyint(1) NOT NULL,
  `url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_compuser_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='The evidence of prior learning';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_competency_userevidence`
--

LOCK TABLES `mdl01_competency_userevidence` WRITE;
/*!40000 ALTER TABLE `mdl01_competency_userevidence` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_competency_userevidence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_competency_userevidencecomp`
--

DROP TABLE IF EXISTS `mdl01_competency_userevidencecomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_competency_userevidencecomp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userevidenceid` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_compuser_usecom2_uix` (`userevidenceid`,`competencyid`),
  KEY `mdl01_compuser_use2_ix` (`userevidenceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Relationship between user evidence and competencies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_competency_userevidencecomp`
--

LOCK TABLES `mdl01_competency_userevidencecomp` WRITE;
/*!40000 ALTER TABLE `mdl01_competency_userevidencecomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_competency_userevidencecomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_config`
--

DROP TABLE IF EXISTS `mdl01_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_conf_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=382 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Moodle configuration variables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_config`
--

LOCK TABLES `mdl01_config` WRITE;
/*!40000 ALTER TABLE `mdl01_config` DISABLE KEYS */;
INSERT INTO `mdl01_config` VALUES (2,'rolesactive','1'),(3,'auth','email'),(4,'enrol_plugins_enabled','manual,guest,self,cohort'),(5,'theme','boost'),(6,'filter_multilang_converted','1'),(7,'siteidentifier','cs5mEd0HDDB7Hp6AAbf4lOlbYUHRmgpV127.0.0.1'),(8,'backup_version','2008111700'),(9,'backup_release','2.0 dev'),(10,'mnet_dispatcher_mode','off'),(11,'sessiontimeout','7200'),(12,'stringfilters',''),(13,'filterall','0'),(14,'texteditors','atto,tinymce,textarea'),(15,'antiviruses',''),(16,'media_plugins_sortorder','videojs,youtube,swf'),(17,'upgrade_extracreditweightsstepignored','1'),(18,'upgrade_calculatedgradeitemsignored','1'),(19,'upgrade_letterboundarycourses','1'),(20,'mnet_localhost_id','1'),(21,'mnet_all_hosts_id','2'),(22,'siteguest','1'),(23,'siteadmins','2'),(24,'themerev','1525171732'),(25,'jsrev','1525171732'),(26,'gdversion','2'),(27,'licenses','unknown,allrightsreserved,public,cc,cc-nd,cc-nc-nd,cc-nc,cc-nc-sa,cc-sa'),(28,'version','2017111302'),(29,'enableoutcomes','0'),(30,'usecomments','1'),(31,'usetags','1'),(32,'enablenotes','1'),(33,'enableportfolios','0'),(34,'enablewebservices','0'),(35,'messaging','1'),(36,'messaginghidereadnotifications','0'),(37,'messagingdeletereadnotificationsdelay','604800'),(38,'messagingallowemailoverride','0'),(39,'enablestats','0'),(40,'enablerssfeeds','0'),(41,'enableblogs','1'),(42,'enablecompletion','1'),(43,'completiondefault','1'),(44,'enableavailability','1'),(45,'enableplagiarism','0'),(46,'enablebadges','1'),(47,'enableglobalsearch','0'),(48,'allowstealth','0'),(49,'defaultpreference_maildisplay','2'),(50,'defaultpreference_mailformat','1'),(51,'defaultpreference_maildigest','0'),(52,'defaultpreference_autosubscribe','1'),(53,'defaultpreference_trackforums','0'),(54,'autologinguests','0'),(55,'hiddenuserfields',''),(56,'showuseridentity','email'),(57,'fullnamedisplay','language'),(58,'alternativefullnameformat','language'),(59,'maxusersperpage','100'),(60,'enablegravatar','0'),(61,'gravatardefaulturl','mm'),(62,'enablecourserequests','0'),(63,'defaultrequestcategory','1'),(64,'requestcategoryselection','0'),(65,'courserequestnotify',''),(66,'grade_profilereport','user'),(67,'grade_aggregationposition','1'),(68,'grade_includescalesinaggregation','1'),(69,'grade_hiddenasdate','0'),(70,'gradepublishing','0'),(71,'grade_export_displaytype','1'),(72,'grade_export_decimalpoints','2'),(73,'grade_navmethod','1'),(74,'grade_export_userprofilefields','firstname,lastname,idnumber,institution,department,email'),(75,'grade_export_customprofilefields',''),(76,'recovergradesdefault','0'),(77,'gradeexport',''),(78,'unlimitedgrades','0'),(79,'grade_report_showmin','1'),(80,'gradepointmax','100'),(81,'gradepointdefault','100'),(82,'grade_minmaxtouse','1'),(83,'grade_mygrades_report','overview'),(84,'gradereport_mygradeurl',''),(85,'grade_hideforcedsettings','1'),(86,'grade_aggregation','13'),(87,'grade_aggregation_flag','0'),(88,'grade_aggregations_visible','13'),(89,'grade_aggregateonlygraded','1'),(90,'grade_aggregateonlygraded_flag','2'),(91,'grade_aggregateoutcomes','0'),(92,'grade_aggregateoutcomes_flag','2'),(93,'grade_keephigh','0'),(94,'grade_keephigh_flag','3'),(95,'grade_droplow','0'),(96,'grade_droplow_flag','2'),(97,'grade_overridecat','1'),(98,'grade_displaytype','1'),(99,'grade_decimalpoints','2'),(100,'grade_item_advanced','iteminfo,idnumber,gradepass,plusfactor,multfactor,display,decimals,hiddenuntil,locktime'),(101,'grade_report_studentsperpage','100'),(102,'grade_report_showonlyactiveenrol','1'),(103,'grade_report_quickgrading','1'),(104,'grade_report_showquickfeedback','0'),(105,'grade_report_meanselection','1'),(106,'grade_report_enableajax','0'),(107,'grade_report_showcalculations','1'),(108,'grade_report_showeyecons','0'),(109,'grade_report_showaverages','1'),(110,'grade_report_showlocks','0'),(111,'grade_report_showranges','0'),(112,'grade_report_showanalysisicon','1'),(113,'grade_report_showuserimage','1'),(114,'grade_report_showactivityicons','1'),(115,'grade_report_shownumberofgrades','0'),(116,'grade_report_averagesdisplaytype','inherit'),(117,'grade_report_rangesdisplaytype','inherit'),(118,'grade_report_averagesdecimalpoints','inherit'),(119,'grade_report_rangesdecimalpoints','inherit'),(120,'grade_report_historyperpage','50'),(121,'grade_report_overview_showrank','0'),(122,'grade_report_overview_showtotalsifcontainhidden','0'),(123,'grade_report_user_showrank','0'),(124,'grade_report_user_showpercentage','1'),(125,'grade_report_user_showgrade','1'),(126,'grade_report_user_showfeedback','1'),(127,'grade_report_user_showrange','1'),(128,'grade_report_user_showweight','1'),(129,'grade_report_user_showaverage','0'),(130,'grade_report_user_showlettergrade','0'),(131,'grade_report_user_rangedecimals','0'),(132,'grade_report_user_showhiddenitems','1'),(133,'grade_report_user_showtotalsifcontainhidden','0'),(134,'grade_report_user_showcontributiontocoursetotal','1'),(135,'badges_defaultissuername',''),(136,'badges_defaultissuercontact',''),(137,'badges_badgesalt','badges1525171681'),(138,'badges_allowexternalbackpack','1'),(139,'badges_allowcoursebadges','1'),(140,'timezone','Europe/London'),(141,'forcetimezone','99'),(142,'country','0'),(143,'defaultcity',''),(144,'geoip2file','/var/www/moodledata/geoip/GeoLite2-City.mmdb'),(145,'googlemapkey3',''),(146,'allcountrycodes',''),(147,'autolang','1'),(148,'lang','ja'),(149,'langmenu','1'),(150,'langlist',''),(151,'langrev','1525171732'),(152,'langcache','1'),(153,'langstringcache','1'),(154,'locale',''),(155,'latinexcelexport','0'),(156,'enablewsdocumentation','0'),(157,'filteruploadedfiles','0'),(158,'filtermatchoneperpage','0'),(159,'filtermatchonepertext','0'),(160,'portfolio_moderate_filesize_threshold','1048576'),(161,'portfolio_high_filesize_threshold','5242880'),(162,'portfolio_moderate_db_threshold','20'),(163,'portfolio_high_db_threshold','50'),(164,'media_default_width','400'),(165,'media_default_height','300'),(166,'sitedefaultlicense','allrightsreserved'),(167,'repositorycacheexpire','120'),(168,'repositorygetfiletimeout','30'),(169,'repositorysyncfiletimeout','1'),(170,'repositorysyncimagetimeout','3'),(171,'repositoryallowexternallinks','1'),(172,'legacyfilesinnewcourses','0'),(173,'legacyfilesaddallowed','1'),(174,'requiremodintro','0'),(175,'searchengine','solr'),(176,'searchindexwhendisabled','0'),(177,'searchindextime','600'),(178,'searchallavailablecourses','0'),(179,'registerauth',''),(180,'authloginviaemail','0'),(181,'allowaccountssameemail','0'),(182,'authpreventaccountcreation','0'),(183,'loginpageautofocus','0'),(184,'guestloginbutton','1'),(185,'limitconcurrentlogins','0'),(186,'alternateloginurl',''),(187,'forgottenpasswordurl',''),(188,'auth_instructions',''),(189,'allowemailaddresses',''),(190,'denyemailaddresses',''),(191,'verifychangedemail','1'),(192,'recaptchapublickey',''),(193,'recaptchaprivatekey',''),(194,'agedigitalconsentverification','0'),(195,'agedigitalconsentmap','*, 16\nAT, 14\nCZ, 13\nDE, 14\nDK, 13\nES, 13\nFI, 15\nGB, 13\nHU, 14\nIE, 13\nLT, 16\nLU, 16\nNL, 16\nPL, 13\nSE, 13'),(196,'sitepolicy',''),(197,'sitepolicyguest',''),(198,'allowbeforeblock','0'),(199,'allowedip',''),(200,'blockedip',''),(201,'protectusernames','1'),(202,'forcelogin','0'),(203,'forceloginforprofiles','1'),(204,'forceloginforprofileimage','0'),(205,'opentogoogle','0'),(206,'allowindexing','0'),(207,'maxbytes','0'),(208,'userquota','104857600'),(209,'allowobjectembed','0'),(210,'enabletrusttext','0'),(211,'maxeditingtime','1800'),(212,'extendedusernamechars','0'),(213,'keeptagnamecase','1'),(214,'profilesforenrolledusersonly','1'),(215,'cronclionly','1'),(216,'cronremotepassword',''),(217,'lockoutthreshold','0'),(218,'lockoutwindow','1800'),(219,'lockoutduration','1800'),(220,'passwordpolicy','1'),(221,'minpasswordlength','8'),(222,'minpassworddigits','1'),(223,'minpasswordlower','1'),(224,'minpasswordupper','1'),(225,'minpasswordnonalphanum','1'),(226,'maxconsecutiveidentchars','0'),(227,'passwordreuselimit','0'),(228,'pwresettime','1800'),(229,'passwordchangelogout','0'),(230,'passwordchangetokendeletion','0'),(231,'tokenduration','7257600'),(232,'groupenrolmentkeypolicy','1'),(233,'disableuserimages','0'),(234,'emailchangeconfirmation','1'),(235,'rememberusername','2'),(236,'strictformsrequired','0'),(237,'cookiesecure','1'),(238,'cookiehttponly','0'),(239,'allowframembedding','0'),(240,'curlsecurityblockedhosts',''),(241,'curlsecurityallowedport',''),(242,'displayloginfailures','0'),(243,'notifyloginfailures',''),(244,'notifyloginthreshold','10'),(245,'themelist',''),(246,'themedesignermode','0'),(247,'allowuserthemes','0'),(248,'allowcoursethemes','0'),(249,'allowcategorythemes','0'),(250,'allowthemechangeonurl','0'),(251,'allowuserblockhiding','1'),(252,'allowblockstodock','1'),(253,'custommenuitems',''),(254,'customusermenuitems','grades,grades|/grade/report/mygrades.php|grades\nmessages,message|/message/index.php|message\npreferences,moodle|/user/preferences.php|preferences'),(255,'enabledevicedetection','1'),(256,'devicedetectregex','[]'),(257,'calendartype','gregorian'),(258,'calendar_adminseesall','0'),(259,'calendar_site_timeformat','0'),(260,'calendar_startwday','1'),(261,'calendar_weekend','65'),(262,'calendar_lookahead','21'),(263,'calendar_maxevents','10'),(264,'enablecalendarexport','1'),(265,'calendar_customexport','1'),(266,'calendar_exportlookahead','365'),(267,'calendar_exportlookback','5'),(268,'calendar_exportsalt','HD1Vx2M4QkyegUsyIkmcKUFnwXi5x8J6br6YMHy11CjtcQQ3plcRj4fa4W3w'),(269,'calendar_showicalsource','1'),(270,'useblogassociations','1'),(271,'bloglevel','4'),(272,'useexternalblogs','1'),(273,'externalblogcrontime','86400'),(274,'maxexternalblogsperuser','1'),(275,'blogusecomments','1'),(276,'blogshowcommentscount','1'),(277,'defaulthomepage','1'),(278,'allowguestmymoodle','1'),(279,'navshowfullcoursenames','0'),(280,'navshowcategories','1'),(281,'navshowmycoursecategories','0'),(282,'navshowallcourses','0'),(283,'navsortmycoursessort','sortorder'),(284,'navcourselimit','10'),(285,'usesitenameforsitepages','0'),(286,'linkadmincategories','1'),(287,'linkcoursesections','1'),(288,'navshowfrontpagemods','1'),(289,'navadduserpostslinks','1'),(290,'formatstringstriptags','1'),(291,'emoticons','[{\"text\":\":-)\",\"imagename\":\"s\\/smiley\",\"imagecomponent\":\"core\",\"altidentifier\":\"smiley\",\"altcomponent\":\"core_pix\"},{\"text\":\":)\",\"imagename\":\"s\\/smiley\",\"imagecomponent\":\"core\",\"altidentifier\":\"smiley\",\"altcomponent\":\"core_pix\"},{\"text\":\":-D\",\"imagename\":\"s\\/biggrin\",\"imagecomponent\":\"core\",\"altidentifier\":\"biggrin\",\"altcomponent\":\"core_pix\"},{\"text\":\";-)\",\"imagename\":\"s\\/wink\",\"imagecomponent\":\"core\",\"altidentifier\":\"wink\",\"altcomponent\":\"core_pix\"},{\"text\":\":-\\/\",\"imagename\":\"s\\/mixed\",\"imagecomponent\":\"core\",\"altidentifier\":\"mixed\",\"altcomponent\":\"core_pix\"},{\"text\":\"V-.\",\"imagename\":\"s\\/thoughtful\",\"imagecomponent\":\"core\",\"altidentifier\":\"thoughtful\",\"altcomponent\":\"core_pix\"},{\"text\":\":-P\",\"imagename\":\"s\\/tongueout\",\"imagecomponent\":\"core\",\"altidentifier\":\"tongueout\",\"altcomponent\":\"core_pix\"},{\"text\":\":-p\",\"imagename\":\"s\\/tongueout\",\"imagecomponent\":\"core\",\"altidentifier\":\"tongueout\",\"altcomponent\":\"core_pix\"},{\"text\":\"B-)\",\"imagename\":\"s\\/cool\",\"imagecomponent\":\"core\",\"altidentifier\":\"cool\",\"altcomponent\":\"core_pix\"},{\"text\":\"^-)\",\"imagename\":\"s\\/approve\",\"imagecomponent\":\"core\",\"altidentifier\":\"approve\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-)\",\"imagename\":\"s\\/wideeyes\",\"imagecomponent\":\"core\",\"altidentifier\":\"wideeyes\",\"altcomponent\":\"core_pix\"},{\"text\":\":o)\",\"imagename\":\"s\\/clown\",\"imagecomponent\":\"core\",\"altidentifier\":\"clown\",\"altcomponent\":\"core_pix\"},{\"text\":\":-(\",\"imagename\":\"s\\/sad\",\"imagecomponent\":\"core\",\"altidentifier\":\"sad\",\"altcomponent\":\"core_pix\"},{\"text\":\":(\",\"imagename\":\"s\\/sad\",\"imagecomponent\":\"core\",\"altidentifier\":\"sad\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-.\",\"imagename\":\"s\\/shy\",\"imagecomponent\":\"core\",\"altidentifier\":\"shy\",\"altcomponent\":\"core_pix\"},{\"text\":\":-I\",\"imagename\":\"s\\/blush\",\"imagecomponent\":\"core\",\"altidentifier\":\"blush\",\"altcomponent\":\"core_pix\"},{\"text\":\":-X\",\"imagename\":\"s\\/kiss\",\"imagecomponent\":\"core\",\"altidentifier\":\"kiss\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-o\",\"imagename\":\"s\\/surprise\",\"imagecomponent\":\"core\",\"altidentifier\":\"surprise\",\"altcomponent\":\"core_pix\"},{\"text\":\"P-|\",\"imagename\":\"s\\/blackeye\",\"imagecomponent\":\"core\",\"altidentifier\":\"blackeye\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-[\",\"imagename\":\"s\\/angry\",\"imagecomponent\":\"core\",\"altidentifier\":\"angry\",\"altcomponent\":\"core_pix\"},{\"text\":\"(grr)\",\"imagename\":\"s\\/angry\",\"imagecomponent\":\"core\",\"altidentifier\":\"angry\",\"altcomponent\":\"core_pix\"},{\"text\":\"xx-P\",\"imagename\":\"s\\/dead\",\"imagecomponent\":\"core\",\"altidentifier\":\"dead\",\"altcomponent\":\"core_pix\"},{\"text\":\"|-.\",\"imagename\":\"s\\/sleepy\",\"imagecomponent\":\"core\",\"altidentifier\":\"sleepy\",\"altcomponent\":\"core_pix\"},{\"text\":\"}-]\",\"imagename\":\"s\\/evil\",\"imagecomponent\":\"core\",\"altidentifier\":\"evil\",\"altcomponent\":\"core_pix\"},{\"text\":\"(h)\",\"imagename\":\"s\\/heart\",\"imagecomponent\":\"core\",\"altidentifier\":\"heart\",\"altcomponent\":\"core_pix\"},{\"text\":\"(heart)\",\"imagename\":\"s\\/heart\",\"imagecomponent\":\"core\",\"altidentifier\":\"heart\",\"altcomponent\":\"core_pix\"},{\"text\":\"(y)\",\"imagename\":\"s\\/yes\",\"imagecomponent\":\"core\",\"altidentifier\":\"yes\",\"altcomponent\":\"core\"},{\"text\":\"(n)\",\"imagename\":\"s\\/no\",\"imagecomponent\":\"core\",\"altidentifier\":\"no\",\"altcomponent\":\"core\"},{\"text\":\"(martin)\",\"imagename\":\"s\\/martin\",\"imagecomponent\":\"core\",\"altidentifier\":\"martin\",\"altcomponent\":\"core_pix\"},{\"text\":\"( )\",\"imagename\":\"s\\/egg\",\"imagecomponent\":\"core\",\"altidentifier\":\"egg\",\"altcomponent\":\"core_pix\"}]'),(292,'docroot','http://docs.moodle.org'),(293,'doclang',''),(294,'doctonewwindow','0'),(295,'courselistshortnames','0'),(296,'coursesperpage','20'),(297,'courseswithsummarieslimit','10'),(298,'courseoverviewfileslimit','1'),(299,'courseoverviewfilesext','.jpg,.gif,.png'),(300,'useexternalyui','0'),(301,'yuicomboloading','1'),(302,'cachejs','1'),(303,'modchooserdefault','1'),(304,'additionalhtmlhead',''),(305,'additionalhtmltopofbody',''),(306,'additionalhtmlfooter',''),(307,'pathtodu',''),(308,'aspellpath',''),(309,'pathtodot',''),(310,'pathtogs','/usr/bin/gs'),(311,'pathtopython',''),(312,'supportname','ユーザ 管理'),(313,'supportemail',''),(314,'supportpage',''),(315,'dbsessions','0'),(316,'sessioncookie',''),(317,'sessioncookiepath',''),(318,'sessioncookiedomain',''),(319,'statsfirstrun','none'),(320,'statsmaxruntime','0'),(321,'statsruntimedays','31'),(322,'statsuserthreshold','0'),(323,'slasharguments','1'),(324,'getremoteaddrconf','0'),(325,'proxyhost',''),(326,'proxyport','0'),(327,'proxytype','HTTP'),(328,'proxyuser',''),(329,'proxypassword',''),(330,'proxybypass','localhost, 127.0.0.1'),(331,'maintenance_enabled','0'),(332,'maintenance_message',''),(333,'deleteunconfirmed','168'),(334,'deleteincompleteusers','0'),(335,'disablegradehistory','0'),(336,'gradehistorylifetime','0'),(337,'tempdatafoldercleanup','168'),(338,'extramemorylimit','512M'),(339,'maxtimelimit','0'),(340,'curlcache','120'),(341,'curltimeoutkbitrate','56'),(342,'smtphosts',''),(343,'smtpsecure',''),(344,'smtpauthtype','LOGIN'),(345,'smtpuser',''),(346,'smtppass',''),(347,'smtpmaxbulk','1'),(348,'noreplyaddress','noreply@127.0.0.1'),(349,'allowedemaildomains',''),(350,'sitemailcharset','0'),(351,'allowusermailcharset','0'),(352,'allowattachments','1'),(353,'mailnewline','LF'),(354,'emailfromvia','1'),(355,'updateautocheck','1'),(356,'updateminmaturity','200'),(357,'updatenotifybuilds','0'),(358,'enablesafebrowserintegration','0'),(359,'dndallowtextandlinks','0'),(360,'debug','0'),(361,'debugdisplay','0'),(362,'debugsmtp','0'),(363,'perfdebug','7'),(364,'debugstringids','0'),(365,'debugvalidators','0'),(366,'debugpageinfo','0'),(367,'profilingenabled','0'),(368,'profilingincluded',''),(369,'profilingexcluded',''),(370,'profilingautofrec','0'),(371,'profilingallowme','0'),(372,'profilingallowall','0'),(373,'profilinglifetime','1440'),(374,'profilingimportprefix','(I)'),(375,'release','3.4.2 (Build: 20180319)'),(376,'branch','34'),(377,'localcachedirpurged','1525171732'),(378,'scheduledtaskreset','1525171732'),(379,'allversionshash','e910610e804958651bc8725b6d1dab86be88f070'),(380,'adminsetuppending','1'),(381,'registrationpending','1');
/*!40000 ALTER TABLE `mdl01_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_config_log`
--

DROP TABLE IF EXISTS `mdl01_config_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_config_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `plugin` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `oldvalue` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `mdl01_conflog_tim_ix` (`timemodified`),
  KEY `mdl01_conflog_use_ix` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=538 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Changes done in server configuration through admin UI';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_config_log`
--

LOCK TABLES `mdl01_config_log` WRITE;
/*!40000 ALTER TABLE `mdl01_config_log` DISABLE KEYS */;
INSERT INTO `mdl01_config_log` VALUES (1,0,1525171686,NULL,'enableoutcomes','0',NULL),(2,0,1525171686,NULL,'usecomments','1',NULL),(3,0,1525171686,NULL,'usetags','1',NULL),(4,0,1525171686,NULL,'enablenotes','1',NULL),(5,0,1525171686,NULL,'enableportfolios','0',NULL),(6,0,1525171686,NULL,'enablewebservices','0',NULL),(7,0,1525171686,NULL,'messaging','1',NULL),(8,0,1525171686,NULL,'messaginghidereadnotifications','0',NULL),(9,0,1525171686,NULL,'messagingdeletereadnotificationsdelay','604800',NULL),(10,0,1525171686,NULL,'messagingallowemailoverride','0',NULL),(11,0,1525171686,NULL,'enablestats','0',NULL),(12,0,1525171686,NULL,'enablerssfeeds','0',NULL),(13,0,1525171686,NULL,'enableblogs','1',NULL),(14,0,1525171686,NULL,'enablecompletion','1',NULL),(15,0,1525171686,NULL,'completiondefault','1',NULL),(16,0,1525171686,NULL,'enableavailability','1',NULL),(17,0,1525171686,NULL,'enableplagiarism','0',NULL),(18,0,1525171686,NULL,'enablebadges','1',NULL),(19,0,1525171686,NULL,'enableglobalsearch','0',NULL),(20,0,1525171686,NULL,'allowstealth','0',NULL),(21,0,1525171686,NULL,'defaultpreference_maildisplay','2',NULL),(22,0,1525171686,NULL,'defaultpreference_mailformat','1',NULL),(23,0,1525171686,NULL,'defaultpreference_maildigest','0',NULL),(24,0,1525171686,NULL,'defaultpreference_autosubscribe','1',NULL),(25,0,1525171686,NULL,'defaultpreference_trackforums','0',NULL),(26,0,1525171686,NULL,'autologinguests','0',NULL),(27,0,1525171686,NULL,'hiddenuserfields','',NULL),(28,0,1525171686,NULL,'showuseridentity','email',NULL),(29,0,1525171686,NULL,'fullnamedisplay','language',NULL),(30,0,1525171686,NULL,'alternativefullnameformat','language',NULL),(31,0,1525171686,NULL,'maxusersperpage','100',NULL),(32,0,1525171686,NULL,'enablegravatar','0',NULL),(33,0,1525171686,NULL,'gravatardefaulturl','mm',NULL),(34,0,1525171686,'moodlecourse','visible','1',NULL),(35,0,1525171686,'moodlecourse','format','topics',NULL),(36,0,1525171686,'moodlecourse','maxsections','52',NULL),(37,0,1525171686,'moodlecourse','numsections','4',NULL),(38,0,1525171686,'moodlecourse','hiddensections','0',NULL),(39,0,1525171686,'moodlecourse','coursedisplay','0',NULL),(40,0,1525171686,'moodlecourse','courseenddateenabled','1',NULL),(41,0,1525171686,'moodlecourse','courseduration','31536000',NULL),(42,0,1525171686,'moodlecourse','lang','',NULL),(43,0,1525171686,'moodlecourse','newsitems','5',NULL),(44,0,1525171686,'moodlecourse','showgrades','1',NULL),(45,0,1525171686,'moodlecourse','showreports','0',NULL),(46,0,1525171686,'moodlecourse','maxbytes','0',NULL),(47,0,1525171686,'moodlecourse','enablecompletion','1',NULL),(48,0,1525171686,'moodlecourse','groupmode','0',NULL),(49,0,1525171686,'moodlecourse','groupmodeforce','0',NULL),(50,0,1525171686,NULL,'enablecourserequests','0',NULL),(51,0,1525171686,NULL,'defaultrequestcategory','1',NULL),(52,0,1525171686,NULL,'requestcategoryselection','0',NULL),(53,0,1525171686,NULL,'courserequestnotify','',NULL),(54,0,1525171686,'backup','loglifetime','30',NULL),(55,0,1525171686,'backup','backup_general_users','1',NULL),(56,0,1525171686,'backup','backup_general_users_locked','',NULL),(57,0,1525171686,'backup','backup_general_anonymize','0',NULL),(58,0,1525171686,'backup','backup_general_anonymize_locked','',NULL),(59,0,1525171686,'backup','backup_general_role_assignments','1',NULL),(60,0,1525171686,'backup','backup_general_role_assignments_locked','',NULL),(61,0,1525171686,'backup','backup_general_activities','1',NULL),(62,0,1525171686,'backup','backup_general_activities_locked','',NULL),(63,0,1525171686,'backup','backup_general_blocks','1',NULL),(64,0,1525171686,'backup','backup_general_blocks_locked','',NULL),(65,0,1525171687,'backup','backup_general_filters','1',NULL),(66,0,1525171687,'backup','backup_general_filters_locked','',NULL),(67,0,1525171687,'backup','backup_general_comments','1',NULL),(68,0,1525171687,'backup','backup_general_comments_locked','',NULL),(69,0,1525171687,'backup','backup_general_badges','1',NULL),(70,0,1525171687,'backup','backup_general_badges_locked','',NULL),(71,0,1525171687,'backup','backup_general_calendarevents','1',NULL),(72,0,1525171687,'backup','backup_general_calendarevents_locked','',NULL),(73,0,1525171687,'backup','backup_general_userscompletion','1',NULL),(74,0,1525171687,'backup','backup_general_userscompletion_locked','',NULL),(75,0,1525171687,'backup','backup_general_logs','0',NULL),(76,0,1525171687,'backup','backup_general_logs_locked','',NULL),(77,0,1525171687,'backup','backup_general_histories','0',NULL),(78,0,1525171687,'backup','backup_general_histories_locked','',NULL),(79,0,1525171687,'backup','backup_general_questionbank','1',NULL),(80,0,1525171687,'backup','backup_general_questionbank_locked','',NULL),(81,0,1525171687,'backup','backup_general_groups','1',NULL),(82,0,1525171687,'backup','backup_general_groups_locked','',NULL),(83,0,1525171687,'backup','backup_general_competencies','1',NULL),(84,0,1525171687,'backup','backup_general_competencies_locked','',NULL),(85,0,1525171687,'backup','import_general_maxresults','10',NULL),(86,0,1525171687,'backup','import_general_duplicate_admin_allowed','0',NULL),(87,0,1525171687,'backup','backup_import_activities','1',NULL),(88,0,1525171687,'backup','backup_import_activities_locked','',NULL),(89,0,1525171687,'backup','backup_import_blocks','1',NULL),(90,0,1525171687,'backup','backup_import_blocks_locked','',NULL),(91,0,1525171687,'backup','backup_import_filters','1',NULL),(92,0,1525171687,'backup','backup_import_filters_locked','',NULL),(93,0,1525171687,'backup','backup_import_calendarevents','1',NULL),(94,0,1525171687,'backup','backup_import_calendarevents_locked','',NULL),(95,0,1525171687,'backup','backup_import_questionbank','1',NULL),(96,0,1525171687,'backup','backup_import_questionbank_locked','',NULL),(97,0,1525171687,'backup','backup_import_groups','1',NULL),(98,0,1525171687,'backup','backup_import_groups_locked','',NULL),(99,0,1525171687,'backup','backup_import_competencies','1',NULL),(100,0,1525171687,'backup','backup_import_competencies_locked','',NULL),(101,0,1525171687,'backup','backup_auto_active','0',NULL),(102,0,1525171687,'backup','backup_auto_weekdays','0000000',NULL),(103,0,1525171687,'backup','backup_auto_hour','0',NULL),(104,0,1525171687,'backup','backup_auto_minute','0',NULL),(105,0,1525171687,'backup','backup_auto_storage','0',NULL),(106,0,1525171687,'backup','backup_auto_destination','',NULL),(107,0,1525171687,'backup','backup_auto_max_kept','1',NULL),(108,0,1525171687,'backup','backup_auto_delete_days','0',NULL),(109,0,1525171687,'backup','backup_auto_min_kept','0',NULL),(110,0,1525171687,'backup','backup_shortname','0',NULL),(111,0,1525171687,'backup','backup_auto_skip_hidden','1',NULL),(112,0,1525171687,'backup','backup_auto_skip_modif_days','30',NULL),(113,0,1525171687,'backup','backup_auto_skip_modif_prev','0',NULL),(114,0,1525171687,'backup','backup_auto_users','1',NULL),(115,0,1525171687,'backup','backup_auto_role_assignments','1',NULL),(116,0,1525171687,'backup','backup_auto_activities','1',NULL),(117,0,1525171687,'backup','backup_auto_blocks','1',NULL),(118,0,1525171687,'backup','backup_auto_filters','1',NULL),(119,0,1525171687,'backup','backup_auto_comments','1',NULL),(120,0,1525171687,'backup','backup_auto_badges','1',NULL),(121,0,1525171687,'backup','backup_auto_calendarevents','1',NULL),(122,0,1525171687,'backup','backup_auto_userscompletion','1',NULL),(123,0,1525171687,'backup','backup_auto_logs','0',NULL),(124,0,1525171687,'backup','backup_auto_histories','0',NULL),(125,0,1525171687,'backup','backup_auto_questionbank','1',NULL),(126,0,1525171687,'backup','backup_auto_groups','1',NULL),(127,0,1525171687,'backup','backup_auto_competencies','1',NULL),(128,0,1525171687,'restore','restore_general_users','1',NULL),(129,0,1525171687,'restore','restore_general_users_locked','',NULL),(130,0,1525171687,'restore','restore_general_enrolments','1',NULL),(131,0,1525171687,'restore','restore_general_enrolments_locked','',NULL),(132,0,1525171687,'restore','restore_general_role_assignments','1',NULL),(133,0,1525171687,'restore','restore_general_role_assignments_locked','',NULL),(134,0,1525171687,'restore','restore_general_activities','1',NULL),(135,0,1525171687,'restore','restore_general_activities_locked','',NULL),(136,0,1525171687,'restore','restore_general_blocks','1',NULL),(137,0,1525171687,'restore','restore_general_blocks_locked','',NULL),(138,0,1525171687,'restore','restore_general_filters','1',NULL),(139,0,1525171687,'restore','restore_general_filters_locked','',NULL),(140,0,1525171687,'restore','restore_general_comments','1',NULL),(141,0,1525171687,'restore','restore_general_comments_locked','',NULL),(142,0,1525171687,'restore','restore_general_badges','1',NULL),(143,0,1525171687,'restore','restore_general_badges_locked','',NULL),(144,0,1525171687,'restore','restore_general_calendarevents','1',NULL),(145,0,1525171687,'restore','restore_general_calendarevents_locked','',NULL),(146,0,1525171687,'restore','restore_general_userscompletion','1',NULL),(147,0,1525171687,'restore','restore_general_userscompletion_locked','',NULL),(148,0,1525171687,'restore','restore_general_logs','1',NULL),(149,0,1525171687,'restore','restore_general_logs_locked','',NULL),(150,0,1525171687,'restore','restore_general_histories','1',NULL),(151,0,1525171687,'restore','restore_general_histories_locked','',NULL),(152,0,1525171687,'restore','restore_general_groups','1',NULL),(153,0,1525171687,'restore','restore_general_groups_locked','',NULL),(154,0,1525171687,'restore','restore_general_competencies','1',NULL),(155,0,1525171687,'restore','restore_general_competencies_locked','',NULL),(156,0,1525171687,'restore','restore_merge_overwrite_conf','0',NULL),(157,0,1525171687,'restore','restore_merge_overwrite_conf_locked','',NULL),(158,0,1525171687,'restore','restore_merge_course_fullname','1',NULL),(159,0,1525171687,'restore','restore_merge_course_fullname_locked','',NULL),(160,0,1525171687,'restore','restore_merge_course_shortname','1',NULL),(161,0,1525171687,'restore','restore_merge_course_shortname_locked','',NULL),(162,0,1525171687,'restore','restore_merge_course_startdate','1',NULL),(163,0,1525171687,'restore','restore_merge_course_startdate_locked','',NULL),(164,0,1525171687,'restore','restore_replace_overwrite_conf','0',NULL),(165,0,1525171687,'restore','restore_replace_overwrite_conf_locked','',NULL),(166,0,1525171687,'restore','restore_replace_course_fullname','1',NULL),(167,0,1525171687,'restore','restore_replace_course_fullname_locked','',NULL),(168,0,1525171687,'restore','restore_replace_course_shortname','1',NULL),(169,0,1525171687,'restore','restore_replace_course_shortname_locked','',NULL),(170,0,1525171687,'restore','restore_replace_course_startdate','1',NULL),(171,0,1525171687,'restore','restore_replace_course_startdate_locked','',NULL),(172,0,1525171687,'restore','restore_replace_keep_roles_and_enrolments','0',NULL),(173,0,1525171687,'restore','restore_replace_keep_roles_and_enrolments_locked','',NULL),(174,0,1525171687,'restore','restore_replace_keep_groups_and_groupings','0',NULL),(175,0,1525171687,'restore','restore_replace_keep_groups_and_groupings_locked','',NULL),(176,0,1525171687,NULL,'grade_profilereport','user',NULL),(177,0,1525171687,NULL,'grade_aggregationposition','1',NULL),(178,0,1525171687,NULL,'grade_includescalesinaggregation','1',NULL),(179,0,1525171687,NULL,'grade_hiddenasdate','0',NULL),(180,0,1525171687,NULL,'gradepublishing','0',NULL),(181,0,1525171687,NULL,'grade_export_displaytype','1',NULL),(182,0,1525171687,NULL,'grade_export_decimalpoints','2',NULL),(183,0,1525171687,NULL,'grade_navmethod','1',NULL),(184,0,1525171687,NULL,'grade_export_userprofilefields','firstname,lastname,idnumber,institution,department,email',NULL),(185,0,1525171687,NULL,'grade_export_customprofilefields','',NULL),(186,0,1525171687,NULL,'recovergradesdefault','0',NULL),(187,0,1525171687,NULL,'gradeexport','',NULL),(188,0,1525171687,NULL,'unlimitedgrades','0',NULL),(189,0,1525171687,NULL,'grade_report_showmin','1',NULL),(190,0,1525171687,NULL,'gradepointmax','100',NULL),(191,0,1525171687,NULL,'gradepointdefault','100',NULL),(192,0,1525171687,NULL,'grade_minmaxtouse','1',NULL),(193,0,1525171687,NULL,'grade_mygrades_report','overview',NULL),(194,0,1525171687,NULL,'gradereport_mygradeurl','',NULL),(195,0,1525171687,NULL,'grade_hideforcedsettings','1',NULL),(196,0,1525171687,NULL,'grade_aggregation','13',NULL),(197,0,1525171687,NULL,'grade_aggregation_flag','0',NULL),(198,0,1525171687,NULL,'grade_aggregations_visible','13',NULL),(199,0,1525171687,NULL,'grade_aggregateonlygraded','1',NULL),(200,0,1525171687,NULL,'grade_aggregateonlygraded_flag','2',NULL),(201,0,1525171687,NULL,'grade_aggregateoutcomes','0',NULL),(202,0,1525171687,NULL,'grade_aggregateoutcomes_flag','2',NULL),(203,0,1525171687,NULL,'grade_keephigh','0',NULL),(204,0,1525171687,NULL,'grade_keephigh_flag','3',NULL),(205,0,1525171687,NULL,'grade_droplow','0',NULL),(206,0,1525171687,NULL,'grade_droplow_flag','2',NULL),(207,0,1525171687,NULL,'grade_overridecat','1',NULL),(208,0,1525171687,NULL,'grade_displaytype','1',NULL),(209,0,1525171687,NULL,'grade_decimalpoints','2',NULL),(210,0,1525171687,NULL,'grade_item_advanced','iteminfo,idnumber,gradepass,plusfactor,multfactor,display,decimals,hiddenuntil,locktime',NULL),(211,0,1525171687,NULL,'grade_report_studentsperpage','100',NULL),(212,0,1525171687,NULL,'grade_report_showonlyactiveenrol','1',NULL),(213,0,1525171687,NULL,'grade_report_quickgrading','1',NULL),(214,0,1525171687,NULL,'grade_report_showquickfeedback','0',NULL),(215,0,1525171687,NULL,'grade_report_meanselection','1',NULL),(216,0,1525171687,NULL,'grade_report_enableajax','0',NULL),(217,0,1525171687,NULL,'grade_report_showcalculations','1',NULL),(218,0,1525171687,NULL,'grade_report_showeyecons','0',NULL),(219,0,1525171687,NULL,'grade_report_showaverages','1',NULL),(220,0,1525171687,NULL,'grade_report_showlocks','0',NULL),(221,0,1525171687,NULL,'grade_report_showranges','0',NULL),(222,0,1525171687,NULL,'grade_report_showanalysisicon','1',NULL),(223,0,1525171687,NULL,'grade_report_showuserimage','1',NULL),(224,0,1525171687,NULL,'grade_report_showactivityicons','1',NULL),(225,0,1525171687,NULL,'grade_report_shownumberofgrades','0',NULL),(226,0,1525171687,NULL,'grade_report_averagesdisplaytype','inherit',NULL),(227,0,1525171687,NULL,'grade_report_rangesdisplaytype','inherit',NULL),(228,0,1525171687,NULL,'grade_report_averagesdecimalpoints','inherit',NULL),(229,0,1525171687,NULL,'grade_report_rangesdecimalpoints','inherit',NULL),(230,0,1525171687,NULL,'grade_report_historyperpage','50',NULL),(231,0,1525171687,NULL,'grade_report_overview_showrank','0',NULL),(232,0,1525171687,NULL,'grade_report_overview_showtotalsifcontainhidden','0',NULL),(233,0,1525171687,NULL,'grade_report_user_showrank','0',NULL),(234,0,1525171687,NULL,'grade_report_user_showpercentage','1',NULL),(235,0,1525171687,NULL,'grade_report_user_showgrade','1',NULL),(236,0,1525171687,NULL,'grade_report_user_showfeedback','1',NULL),(237,0,1525171687,NULL,'grade_report_user_showrange','1',NULL),(238,0,1525171687,NULL,'grade_report_user_showweight','1',NULL),(239,0,1525171687,NULL,'grade_report_user_showaverage','0',NULL),(240,0,1525171687,NULL,'grade_report_user_showlettergrade','0',NULL),(241,0,1525171687,NULL,'grade_report_user_rangedecimals','0',NULL),(242,0,1525171687,NULL,'grade_report_user_showhiddenitems','1',NULL),(243,0,1525171687,NULL,'grade_report_user_showtotalsifcontainhidden','0',NULL),(244,0,1525171687,NULL,'grade_report_user_showcontributiontocoursetotal','1',NULL),(245,0,1525171687,'analytics','predictionsprocessor','\\mlbackend_php\\processor',NULL),(246,0,1525171687,'analytics','timesplittings','\\core\\analytics\\time_splitting\\quarters_accum,\\core\\analytics\\time_splitting\\quarters,\\core\\analytics\\time_splitting\\single_range',NULL),(247,0,1525171687,'analytics','modeloutputdir','/var/www/moodledata/models',NULL),(248,0,1525171687,'analytics','onlycli','1',NULL),(249,0,1525171687,'analytics','modeltimelimit','1200',NULL),(250,0,1525171687,'core_competency','enabled','1',NULL),(251,0,1525171687,'core_competency','pushcourseratingstouserplans','1',NULL),(252,0,1525171687,NULL,'badges_defaultissuername','',NULL),(253,0,1525171687,NULL,'badges_defaultissuercontact','',NULL),(254,0,1525171688,NULL,'badges_badgesalt','badges1525171681',NULL),(255,0,1525171688,NULL,'badges_allowexternalbackpack','1',NULL),(256,0,1525171688,NULL,'badges_allowcoursebadges','1',NULL),(257,0,1525171689,NULL,'timezone','Europe/London',NULL),(258,0,1525171690,NULL,'forcetimezone','99',NULL),(259,0,1525171690,NULL,'country','0',NULL),(260,0,1525171690,NULL,'defaultcity','',NULL),(261,0,1525171690,NULL,'geoip2file','/var/www/moodledata/geoip/GeoLite2-City.mmdb',NULL),(262,0,1525171690,NULL,'googlemapkey3','',NULL),(263,0,1525171690,NULL,'allcountrycodes','',NULL),(264,0,1525171690,NULL,'autolang','1',NULL),(265,0,1525171690,NULL,'lang','ja',NULL),(266,0,1525171690,NULL,'langmenu','1',NULL),(267,0,1525171690,NULL,'langlist','',NULL),(268,0,1525171690,NULL,'langcache','1',NULL),(269,0,1525171690,NULL,'langstringcache','1',NULL),(270,0,1525171690,NULL,'locale','',NULL),(271,0,1525171690,NULL,'latinexcelexport','0',NULL),(272,0,1525171690,NULL,'enablewsdocumentation','0',NULL),(273,0,1525171690,'cachestore_apcu','testperformance','0',NULL),(274,0,1525171690,'cachestore_memcache','testservers','',NULL),(275,0,1525171690,'cachestore_memcached','testservers','',NULL),(276,0,1525171690,'cachestore_mongodb','testserver','',NULL),(277,0,1525171690,'cachestore_redis','test_server','',NULL),(278,0,1525171690,'cachestore_redis','test_password','',NULL),(279,0,1525171690,NULL,'filteruploadedfiles','0',NULL),(280,0,1525171690,NULL,'filtermatchoneperpage','0',NULL),(281,0,1525171690,NULL,'filtermatchonepertext','0',NULL),(282,0,1525171690,NULL,'portfolio_moderate_filesize_threshold','1048576',NULL),(283,0,1525171690,NULL,'portfolio_high_filesize_threshold','5242880',NULL),(284,0,1525171690,NULL,'portfolio_moderate_db_threshold','20',NULL),(285,0,1525171690,NULL,'portfolio_high_db_threshold','50',NULL),(286,0,1525171690,NULL,'media_default_width','400',NULL),(287,0,1525171690,NULL,'media_default_height','300',NULL),(288,0,1525171690,NULL,'sitedefaultlicense','allrightsreserved',NULL),(289,0,1525171690,NULL,'repositorycacheexpire','120',NULL),(290,0,1525171690,NULL,'repositorygetfiletimeout','30',NULL),(291,0,1525171690,NULL,'repositorysyncfiletimeout','1',NULL),(292,0,1525171690,NULL,'repositorysyncimagetimeout','3',NULL),(293,0,1525171690,NULL,'repositoryallowexternallinks','1',NULL),(294,0,1525171690,NULL,'legacyfilesinnewcourses','0',NULL),(295,0,1525171690,NULL,'legacyfilesaddallowed','1',NULL),(296,0,1525171690,NULL,'requiremodintro','0',NULL),(297,0,1525171690,NULL,'searchengine','solr',NULL),(298,0,1525171690,NULL,'searchindexwhendisabled','0',NULL),(299,0,1525171690,NULL,'searchindextime','600',NULL),(300,0,1525171690,NULL,'searchallavailablecourses','0',NULL),(301,0,1525171690,NULL,'registerauth','',NULL),(302,0,1525171690,NULL,'authloginviaemail','0',NULL),(303,0,1525171690,NULL,'allowaccountssameemail','0',NULL),(304,0,1525171690,NULL,'authpreventaccountcreation','0',NULL),(305,0,1525171690,NULL,'loginpageautofocus','0',NULL),(306,0,1525171690,NULL,'guestloginbutton','1',NULL),(307,0,1525171690,NULL,'limitconcurrentlogins','0',NULL),(308,0,1525171690,NULL,'alternateloginurl','',NULL),(309,0,1525171690,NULL,'forgottenpasswordurl','',NULL),(310,0,1525171690,NULL,'auth_instructions','',NULL),(311,0,1525171690,NULL,'allowemailaddresses','',NULL),(312,0,1525171690,NULL,'denyemailaddresses','',NULL),(313,0,1525171690,NULL,'verifychangedemail','1',NULL),(314,0,1525171690,NULL,'recaptchapublickey','',NULL),(315,0,1525171690,NULL,'recaptchaprivatekey','',NULL),(316,0,1525171690,'question_preview','behaviour','deferredfeedback',NULL),(317,0,1525171690,'question_preview','correctness','1',NULL),(318,0,1525171690,'question_preview','marks','2',NULL),(319,0,1525171690,'question_preview','markdp','2',NULL),(320,0,1525171690,'question_preview','feedback','1',NULL),(321,0,1525171690,'question_preview','generalfeedback','1',NULL),(322,0,1525171690,'question_preview','rightanswer','1',NULL),(323,0,1525171690,'question_preview','history','0',NULL),(324,0,1525171690,NULL,'agedigitalconsentverification','0',NULL),(325,0,1525171690,NULL,'agedigitalconsentmap','*, 16\nAT, 14\nCZ, 13\nDE, 14\nDK, 13\nES, 13\nFI, 15\nGB, 13\nHU, 14\nIE, 13\nLT, 16\nLU, 16\nNL, 16\nPL, 13\nSE, 13',NULL),(326,0,1525171690,NULL,'sitepolicy','',NULL),(327,0,1525171690,NULL,'sitepolicyguest','',NULL),(328,0,1525171690,NULL,'allowbeforeblock','0',NULL),(329,0,1525171690,NULL,'allowedip','',NULL),(330,0,1525171690,NULL,'blockedip','',NULL),(331,0,1525171690,NULL,'protectusernames','1',NULL),(332,0,1525171690,NULL,'forcelogin','0',NULL),(333,0,1525171690,NULL,'forceloginforprofiles','1',NULL),(334,0,1525171690,NULL,'forceloginforprofileimage','0',NULL),(335,0,1525171690,NULL,'opentogoogle','0',NULL),(336,0,1525171690,NULL,'allowindexing','0',NULL),(337,0,1525171690,NULL,'maxbytes','0',NULL),(338,0,1525171690,NULL,'userquota','104857600',NULL),(339,0,1525171690,NULL,'allowobjectembed','0',NULL),(340,0,1525171690,NULL,'enabletrusttext','0',NULL),(341,0,1525171690,NULL,'maxeditingtime','1800',NULL),(342,0,1525171690,NULL,'extendedusernamechars','0',NULL),(343,0,1525171690,NULL,'keeptagnamecase','1',NULL),(344,0,1525171690,NULL,'profilesforenrolledusersonly','1',NULL),(345,0,1525171690,NULL,'cronclionly','1',NULL),(346,0,1525171690,NULL,'cronremotepassword','',NULL),(347,0,1525171690,'tool_task','enablerunnow','1',NULL),(348,0,1525171690,NULL,'lockoutthreshold','0',NULL),(349,0,1525171690,NULL,'lockoutwindow','1800',NULL),(350,0,1525171690,NULL,'lockoutduration','1800',NULL),(351,0,1525171690,NULL,'passwordpolicy','1',NULL),(352,0,1525171690,NULL,'minpasswordlength','8',NULL),(353,0,1525171690,NULL,'minpassworddigits','1',NULL),(354,0,1525171690,NULL,'minpasswordlower','1',NULL),(355,0,1525171690,NULL,'minpasswordupper','1',NULL),(356,0,1525171690,NULL,'minpasswordnonalphanum','1',NULL),(357,0,1525171690,NULL,'maxconsecutiveidentchars','0',NULL),(358,0,1525171690,NULL,'passwordreuselimit','0',NULL),(359,0,1525171690,NULL,'pwresettime','1800',NULL),(360,0,1525171690,NULL,'passwordchangelogout','0',NULL),(361,0,1525171690,NULL,'passwordchangetokendeletion','0',NULL),(362,0,1525171690,NULL,'tokenduration','7257600',NULL),(363,0,1525171690,NULL,'groupenrolmentkeypolicy','1',NULL),(364,0,1525171690,NULL,'disableuserimages','0',NULL),(365,0,1525171690,NULL,'emailchangeconfirmation','1',NULL),(366,0,1525171690,NULL,'rememberusername','2',NULL),(367,0,1525171690,NULL,'strictformsrequired','0',NULL),(368,0,1525171690,NULL,'cookiesecure','1',NULL),(369,0,1525171690,NULL,'cookiehttponly','0',NULL),(370,0,1525171690,NULL,'allowframembedding','0',NULL),(371,0,1525171690,NULL,'curlsecurityblockedhosts','',NULL),(372,0,1525171690,NULL,'curlsecurityallowedport','',NULL),(373,0,1525171690,NULL,'displayloginfailures','0',NULL),(374,0,1525171690,NULL,'notifyloginfailures','',NULL),(375,0,1525171690,NULL,'notifyloginthreshold','10',NULL),(376,0,1525171690,NULL,'themelist','',NULL),(377,0,1525171690,NULL,'themedesignermode','0',NULL),(378,0,1525171690,NULL,'allowuserthemes','0',NULL),(379,0,1525171690,NULL,'allowcoursethemes','0',NULL),(380,0,1525171690,NULL,'allowcategorythemes','0',NULL),(381,0,1525171690,NULL,'allowthemechangeonurl','0',NULL),(382,0,1525171690,NULL,'allowuserblockhiding','1',NULL),(383,0,1525171690,NULL,'allowblockstodock','1',NULL),(384,0,1525171690,NULL,'custommenuitems','',NULL),(385,0,1525171690,NULL,'customusermenuitems','grades,grades|/grade/report/mygrades.php|grades\nmessages,message|/message/index.php|message\npreferences,moodle|/user/preferences.php|preferences',NULL),(386,0,1525171690,NULL,'enabledevicedetection','1',NULL),(387,0,1525171690,NULL,'devicedetectregex','[]',NULL),(388,0,1525171691,'theme_boost','preset','default.scss',NULL),(389,0,1525171691,'theme_boost','presetfiles','',NULL),(390,0,1525171691,'theme_boost','backgroundimage','',NULL),(391,0,1525171691,'theme_boost','brandcolor','',NULL),(392,0,1525171691,'theme_boost','scsspre','',NULL),(393,0,1525171691,'theme_boost','scss','',NULL),(394,0,1525171691,'theme_clean','invert','0',NULL),(395,0,1525171691,'theme_clean','logo','',NULL),(396,0,1525171691,'theme_clean','smalllogo','',NULL),(397,0,1525171691,'theme_clean','sitename','1',NULL),(398,0,1525171691,'theme_clean','customcss','',NULL),(399,0,1525171691,'theme_clean','footnote','',NULL),(400,0,1525171691,'theme_more','textcolor','#333366',NULL),(401,0,1525171691,'theme_more','linkcolor','#FF6500',NULL),(402,0,1525171691,'theme_more','bodybackground','',NULL),(403,0,1525171691,'theme_more','backgroundimage','',NULL),(404,0,1525171691,'theme_more','backgroundrepeat','repeat',NULL),(405,0,1525171691,'theme_more','backgroundposition','0',NULL),(406,0,1525171691,'theme_more','backgroundfixed','0',NULL),(407,0,1525171691,'theme_more','contentbackground','#FFFFFF',NULL),(408,0,1525171691,'theme_more','secondarybackground','#FFFFFF',NULL),(409,0,1525171691,'theme_more','invert','1',NULL),(410,0,1525171691,'theme_more','logo','',NULL),(411,0,1525171691,'theme_more','smalllogo','',NULL),(412,0,1525171691,'theme_more','sitename','1',NULL),(413,0,1525171691,'theme_more','customcss','',NULL),(414,0,1525171691,'theme_more','footnote','',NULL),(415,0,1525171691,'core_admin','logo','',NULL),(416,0,1525171691,'core_admin','logocompact','',NULL),(417,0,1525171691,NULL,'calendartype','gregorian',NULL),(418,0,1525171691,NULL,'calendar_adminseesall','0',NULL),(419,0,1525171691,NULL,'calendar_site_timeformat','0',NULL),(420,0,1525171691,NULL,'calendar_startwday','1',NULL),(421,0,1525171691,NULL,'calendar_weekend','65',NULL),(422,0,1525171691,NULL,'calendar_lookahead','21',NULL),(423,0,1525171691,NULL,'calendar_maxevents','10',NULL),(424,0,1525171691,NULL,'enablecalendarexport','1',NULL),(425,0,1525171691,NULL,'calendar_customexport','1',NULL),(426,0,1525171691,NULL,'calendar_exportlookahead','365',NULL),(427,0,1525171691,NULL,'calendar_exportlookback','5',NULL),(428,0,1525171691,NULL,'calendar_exportsalt','HD1Vx2M4QkyegUsyIkmcKUFnwXi5x8J6br6YMHy11CjtcQQ3plcRj4fa4W3w',NULL),(429,0,1525171691,NULL,'calendar_showicalsource','1',NULL),(430,0,1525171691,NULL,'useblogassociations','1',NULL),(431,0,1525171691,NULL,'bloglevel','4',NULL),(432,0,1525171691,NULL,'useexternalblogs','1',NULL),(433,0,1525171691,NULL,'externalblogcrontime','86400',NULL),(434,0,1525171691,NULL,'maxexternalblogsperuser','1',NULL),(435,0,1525171691,NULL,'blogusecomments','1',NULL),(436,0,1525171691,NULL,'blogshowcommentscount','1',NULL),(437,0,1525171691,NULL,'defaulthomepage','1',NULL),(438,0,1525171691,NULL,'allowguestmymoodle','1',NULL),(439,0,1525171691,NULL,'navshowfullcoursenames','0',NULL),(440,0,1525171691,NULL,'navshowcategories','1',NULL),(441,0,1525171691,NULL,'navshowmycoursecategories','0',NULL),(442,0,1525171691,NULL,'navshowallcourses','0',NULL),(443,0,1525171691,NULL,'navsortmycoursessort','sortorder',NULL),(444,0,1525171691,NULL,'navcourselimit','10',NULL),(445,0,1525171691,NULL,'usesitenameforsitepages','0',NULL),(446,0,1525171691,NULL,'linkadmincategories','1',NULL),(447,0,1525171691,NULL,'linkcoursesections','1',NULL),(448,0,1525171691,NULL,'navshowfrontpagemods','1',NULL),(449,0,1525171691,NULL,'navadduserpostslinks','1',NULL),(450,0,1525171691,NULL,'formatstringstriptags','1',NULL),(451,0,1525171691,NULL,'emoticons','[{\"text\":\":-)\",\"imagename\":\"s\\/smiley\",\"imagecomponent\":\"core\",\"altidentifier\":\"smiley\",\"altcomponent\":\"core_pix\"},{\"text\":\":)\",\"imagename\":\"s\\/smiley\",\"imagecomponent\":\"core\",\"altidentifier\":\"smiley\",\"altcomponent\":\"core_pix\"},{\"text\":\":-D\",\"imagename\":\"s\\/biggrin\",\"imagecomponent\":\"core\",\"altidentifier\":\"biggrin\",\"altcomponent\":\"core_pix\"},{\"text\":\";-)\",\"imagename\":\"s\\/wink\",\"imagecomponent\":\"core\",\"altidentifier\":\"wink\",\"altcomponent\":\"core_pix\"},{\"text\":\":-\\/\",\"imagename\":\"s\\/mixed\",\"imagecomponent\":\"core\",\"altidentifier\":\"mixed\",\"altcomponent\":\"core_pix\"},{\"text\":\"V-.\",\"imagename\":\"s\\/thoughtful\",\"imagecomponent\":\"core\",\"altidentifier\":\"thoughtful\",\"altcomponent\":\"core_pix\"},{\"text\":\":-P\",\"imagename\":\"s\\/tongueout\",\"imagecomponent\":\"core\",\"altidentifier\":\"tongueout\",\"altcomponent\":\"core_pix\"},{\"text\":\":-p\",\"imagename\":\"s\\/tongueout\",\"imagecomponent\":\"core\",\"altidentifier\":\"tongueout\",\"altcomponent\":\"core_pix\"},{\"text\":\"B-)\",\"imagename\":\"s\\/cool\",\"imagecomponent\":\"core\",\"altidentifier\":\"cool\",\"altcomponent\":\"core_pix\"},{\"text\":\"^-)\",\"imagename\":\"s\\/approve\",\"imagecomponent\":\"core\",\"altidentifier\":\"approve\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-)\",\"imagename\":\"s\\/wideeyes\",\"imagecomponent\":\"core\",\"altidentifier\":\"wideeyes\",\"altcomponent\":\"core_pix\"},{\"text\":\":o)\",\"imagename\":\"s\\/clown\",\"imagecomponent\":\"core\",\"altidentifier\":\"clown\",\"altcomponent\":\"core_pix\"},{\"text\":\":-(\",\"imagename\":\"s\\/sad\",\"imagecomponent\":\"core\",\"altidentifier\":\"sad\",\"altcomponent\":\"core_pix\"},{\"text\":\":(\",\"imagename\":\"s\\/sad\",\"imagecomponent\":\"core\",\"altidentifier\":\"sad\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-.\",\"imagename\":\"s\\/shy\",\"imagecomponent\":\"core\",\"altidentifier\":\"shy\",\"altcomponent\":\"core_pix\"},{\"text\":\":-I\",\"imagename\":\"s\\/blush\",\"imagecomponent\":\"core\",\"altidentifier\":\"blush\",\"altcomponent\":\"core_pix\"},{\"text\":\":-X\",\"imagename\":\"s\\/kiss\",\"imagecomponent\":\"core\",\"altidentifier\":\"kiss\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-o\",\"imagename\":\"s\\/surprise\",\"imagecomponent\":\"core\",\"altidentifier\":\"surprise\",\"altcomponent\":\"core_pix\"},{\"text\":\"P-|\",\"imagename\":\"s\\/blackeye\",\"imagecomponent\":\"core\",\"altidentifier\":\"blackeye\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-[\",\"imagename\":\"s\\/angry\",\"imagecomponent\":\"core\",\"altidentifier\":\"angry\",\"altcomponent\":\"core_pix\"},{\"text\":\"(grr)\",\"imagename\":\"s\\/angry\",\"imagecomponent\":\"core\",\"altidentifier\":\"angry\",\"altcomponent\":\"core_pix\"},{\"text\":\"xx-P\",\"imagename\":\"s\\/dead\",\"imagecomponent\":\"core\",\"altidentifier\":\"dead\",\"altcomponent\":\"core_pix\"},{\"text\":\"|-.\",\"imagename\":\"s\\/sleepy\",\"imagecomponent\":\"core\",\"altidentifier\":\"sleepy\",\"altcomponent\":\"core_pix\"},{\"text\":\"}-]\",\"imagename\":\"s\\/evil\",\"imagecomponent\":\"core\",\"altidentifier\":\"evil\",\"altcomponent\":\"core_pix\"},{\"text\":\"(h)\",\"imagename\":\"s\\/heart\",\"imagecomponent\":\"core\",\"altidentifier\":\"heart\",\"altcomponent\":\"core_pix\"},{\"text\":\"(heart)\",\"imagename\":\"s\\/heart\",\"imagecomponent\":\"core\",\"altidentifier\":\"heart\",\"altcomponent\":\"core_pix\"},{\"text\":\"(y)\",\"imagename\":\"s\\/yes\",\"imagecomponent\":\"core\",\"altidentifier\":\"yes\",\"altcomponent\":\"core\"},{\"text\":\"(n)\",\"imagename\":\"s\\/no\",\"imagecomponent\":\"core\",\"altidentifier\":\"no\",\"altcomponent\":\"core\"},{\"text\":\"(martin)\",\"imagename\":\"s\\/martin\",\"imagecomponent\":\"core\",\"altidentifier\":\"martin\",\"altcomponent\":\"core_pix\"},{\"text\":\"( )\",\"imagename\":\"s\\/egg\",\"imagecomponent\":\"core\",\"altidentifier\":\"egg\",\"altcomponent\":\"core_pix\"}]',NULL),(452,0,1525171691,NULL,'docroot','http://docs.moodle.org',NULL),(453,0,1525171691,NULL,'doclang','',NULL),(454,0,1525171691,NULL,'doctonewwindow','0',NULL),(455,0,1525171691,NULL,'courselistshortnames','0',NULL),(456,0,1525171691,NULL,'coursesperpage','20',NULL),(457,0,1525171691,NULL,'courseswithsummarieslimit','10',NULL),(458,0,1525171691,NULL,'courseoverviewfileslimit','1',NULL),(459,0,1525171691,NULL,'courseoverviewfilesext','.jpg,.gif,.png',NULL),(460,0,1525171691,NULL,'useexternalyui','0',NULL),(461,0,1525171691,NULL,'yuicomboloading','1',NULL),(462,0,1525171691,NULL,'cachejs','1',NULL),(463,0,1525171691,NULL,'modchooserdefault','1',NULL),(464,0,1525171691,NULL,'additionalhtmlhead','',NULL),(465,0,1525171691,NULL,'additionalhtmltopofbody','',NULL),(466,0,1525171691,NULL,'additionalhtmlfooter','',NULL),(467,0,1525171691,NULL,'pathtodu','',NULL),(468,0,1525171691,NULL,'aspellpath','',NULL),(469,0,1525171691,NULL,'pathtodot','',NULL),(470,0,1525171691,NULL,'pathtogs','/usr/bin/gs',NULL),(471,0,1525171691,NULL,'pathtopython','',NULL),(472,0,1525171691,NULL,'supportname','ユーザ 管理',NULL),(473,0,1525171691,NULL,'supportemail','',NULL),(474,0,1525171691,NULL,'supportpage','',NULL),(475,0,1525171691,NULL,'dbsessions','0',NULL),(476,0,1525171691,NULL,'sessioncookie','',NULL),(477,0,1525171691,NULL,'sessioncookiepath','',NULL),(478,0,1525171691,NULL,'sessioncookiedomain','',NULL),(479,0,1525171691,NULL,'statsfirstrun','none',NULL),(480,0,1525171691,NULL,'statsmaxruntime','0',NULL),(481,0,1525171691,NULL,'statsruntimedays','31',NULL),(482,0,1525171691,NULL,'statsuserthreshold','0',NULL),(483,0,1525171691,NULL,'slasharguments','1',NULL),(484,0,1525171691,NULL,'getremoteaddrconf','0',NULL),(485,0,1525171691,NULL,'proxyhost','',NULL),(486,0,1525171691,NULL,'proxyport','0',NULL),(487,0,1525171691,NULL,'proxytype','HTTP',NULL),(488,0,1525171691,NULL,'proxyuser','',NULL),(489,0,1525171691,NULL,'proxypassword','',NULL),(490,0,1525171691,NULL,'proxybypass','localhost, 127.0.0.1',NULL),(491,0,1525171691,NULL,'maintenance_enabled','0',NULL),(492,0,1525171691,NULL,'maintenance_message','',NULL),(493,0,1525171691,NULL,'deleteunconfirmed','168',NULL),(494,0,1525171691,NULL,'deleteincompleteusers','0',NULL),(495,0,1525171691,NULL,'disablegradehistory','0',NULL),(496,0,1525171691,NULL,'gradehistorylifetime','0',NULL),(497,0,1525171691,NULL,'tempdatafoldercleanup','168',NULL),(498,0,1525171691,NULL,'extramemorylimit','512M',NULL),(499,0,1525171691,NULL,'maxtimelimit','0',NULL),(500,0,1525171691,NULL,'curlcache','120',NULL),(501,0,1525171691,NULL,'curltimeoutkbitrate','56',NULL),(502,0,1525171691,NULL,'smtphosts','',NULL),(503,0,1525171691,NULL,'smtpsecure','',NULL),(504,0,1525171691,NULL,'smtpauthtype','LOGIN',NULL),(505,0,1525171691,NULL,'smtpuser','',NULL),(506,0,1525171691,NULL,'smtppass','',NULL),(507,0,1525171691,NULL,'smtpmaxbulk','1',NULL),(508,0,1525171691,NULL,'noreplyaddress','noreply@127.0.0.1',NULL),(509,0,1525171691,NULL,'allowedemaildomains','',NULL),(510,0,1525171691,NULL,'sitemailcharset','0',NULL),(511,0,1525171691,NULL,'allowusermailcharset','0',NULL),(512,0,1525171691,NULL,'allowattachments','1',NULL),(513,0,1525171691,NULL,'mailnewline','LF',NULL),(514,0,1525171691,NULL,'emailfromvia','1',NULL),(515,0,1525171691,NULL,'updateautocheck','1',NULL),(516,0,1525171691,NULL,'updateminmaturity','200',NULL),(517,0,1525171691,NULL,'updatenotifybuilds','0',NULL),(518,0,1525171691,NULL,'enablesafebrowserintegration','0',NULL),(519,0,1525171691,NULL,'dndallowtextandlinks','0',NULL),(520,0,1525171691,NULL,'debug','0',NULL),(521,0,1525171691,NULL,'debugdisplay','0',NULL),(522,0,1525171691,NULL,'debugsmtp','0',NULL),(523,0,1525171691,NULL,'perfdebug','7',NULL),(524,0,1525171691,NULL,'debugstringids','0',NULL),(525,0,1525171691,NULL,'debugvalidators','0',NULL),(526,0,1525171691,NULL,'debugpageinfo','0',NULL),(527,0,1525171691,NULL,'profilingenabled','0',NULL),(528,0,1525171691,NULL,'profilingincluded','',NULL),(529,0,1525171691,NULL,'profilingexcluded','',NULL),(530,0,1525171691,NULL,'profilingautofrec','0',NULL),(531,0,1525171691,NULL,'profilingallowme','0',NULL),(532,0,1525171691,NULL,'profilingallowall','0',NULL),(533,0,1525171691,NULL,'profilinglifetime','1440',NULL),(534,0,1525171691,NULL,'profilingimportprefix','(I)',NULL),(535,0,1525171708,'activitynames','filter_active','1',''),(536,0,1525171708,'mathjaxloader','filter_active','1',''),(537,0,1525171708,'mediaplugin','filter_active','1','');
/*!40000 ALTER TABLE `mdl01_config_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_config_plugins`
--

DROP TABLE IF EXISTS `mdl01_config_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_config_plugins` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `plugin` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'core',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_confplug_plunam_uix` (`plugin`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=877 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Moodle modules and plugins configuration variables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_config_plugins`
--

LOCK TABLES `mdl01_config_plugins` WRITE;
/*!40000 ALTER TABLE `mdl01_config_plugins` DISABLE KEYS */;
INSERT INTO `mdl01_config_plugins` VALUES (1,'question','multichoice_sortorder','1'),(2,'question','truefalse_sortorder','2'),(3,'question','match_sortorder','3'),(4,'question','shortanswer_sortorder','4'),(5,'question','numerical_sortorder','5'),(6,'question','essay_sortorder','6'),(7,'moodlecourse','visible','1'),(8,'moodlecourse','format','topics'),(9,'moodlecourse','maxsections','52'),(10,'moodlecourse','numsections','4'),(11,'moodlecourse','hiddensections','0'),(12,'moodlecourse','coursedisplay','0'),(13,'moodlecourse','courseenddateenabled','1'),(14,'moodlecourse','courseduration','31536000'),(15,'moodlecourse','lang',''),(16,'moodlecourse','newsitems','5'),(17,'moodlecourse','showgrades','1'),(18,'moodlecourse','showreports','0'),(19,'moodlecourse','maxbytes','0'),(20,'moodlecourse','enablecompletion','1'),(21,'moodlecourse','groupmode','0'),(22,'moodlecourse','groupmodeforce','0'),(23,'backup','loglifetime','30'),(24,'backup','backup_general_users','1'),(25,'backup','backup_general_users_locked',''),(26,'backup','backup_general_anonymize','0'),(27,'backup','backup_general_anonymize_locked',''),(28,'backup','backup_general_role_assignments','1'),(29,'backup','backup_general_role_assignments_locked',''),(30,'backup','backup_general_activities','1'),(31,'backup','backup_general_activities_locked',''),(32,'backup','backup_general_blocks','1'),(33,'backup','backup_general_blocks_locked',''),(34,'backup','backup_general_filters','1'),(35,'backup','backup_general_filters_locked',''),(36,'backup','backup_general_comments','1'),(37,'backup','backup_general_comments_locked',''),(38,'backup','backup_general_badges','1'),(39,'backup','backup_general_badges_locked',''),(40,'backup','backup_general_calendarevents','1'),(41,'backup','backup_general_calendarevents_locked',''),(42,'backup','backup_general_userscompletion','1'),(43,'backup','backup_general_userscompletion_locked',''),(44,'backup','backup_general_logs','0'),(45,'backup','backup_general_logs_locked',''),(46,'backup','backup_general_histories','0'),(47,'backup','backup_general_histories_locked',''),(48,'backup','backup_general_questionbank','1'),(49,'backup','backup_general_questionbank_locked',''),(50,'backup','backup_general_groups','1'),(51,'backup','backup_general_groups_locked',''),(52,'backup','backup_general_competencies','1'),(53,'backup','backup_general_competencies_locked',''),(54,'backup','import_general_maxresults','10'),(55,'backup','import_general_duplicate_admin_allowed','0'),(56,'backup','backup_import_activities','1'),(57,'backup','backup_import_activities_locked',''),(58,'backup','backup_import_blocks','1'),(59,'backup','backup_import_blocks_locked',''),(60,'backup','backup_import_filters','1'),(61,'backup','backup_import_filters_locked',''),(62,'backup','backup_import_calendarevents','1'),(63,'backup','backup_import_calendarevents_locked',''),(64,'backup','backup_import_questionbank','1'),(65,'backup','backup_import_questionbank_locked',''),(66,'backup','backup_import_groups','1'),(67,'backup','backup_import_groups_locked',''),(68,'backup','backup_import_competencies','1'),(69,'backup','backup_import_competencies_locked',''),(70,'backup','backup_auto_active','0'),(71,'backup','backup_auto_weekdays','0000000'),(72,'backup','backup_auto_hour','0'),(73,'backup','backup_auto_minute','0'),(74,'backup','backup_auto_storage','0'),(75,'backup','backup_auto_destination',''),(76,'backup','backup_auto_max_kept','1'),(77,'backup','backup_auto_delete_days','0'),(78,'backup','backup_auto_min_kept','0'),(79,'backup','backup_shortname','0'),(80,'backup','backup_auto_skip_hidden','1'),(81,'backup','backup_auto_skip_modif_days','30'),(82,'backup','backup_auto_skip_modif_prev','0'),(83,'backup','backup_auto_users','1'),(84,'backup','backup_auto_role_assignments','1'),(85,'backup','backup_auto_activities','1'),(86,'backup','backup_auto_blocks','1'),(87,'backup','backup_auto_filters','1'),(88,'backup','backup_auto_comments','1'),(89,'backup','backup_auto_badges','1'),(90,'backup','backup_auto_calendarevents','1'),(91,'backup','backup_auto_userscompletion','1'),(92,'backup','backup_auto_logs','0'),(93,'backup','backup_auto_histories','0'),(94,'backup','backup_auto_questionbank','1'),(95,'backup','backup_auto_groups','1'),(96,'backup','backup_auto_competencies','1'),(97,'restore','restore_general_users','1'),(98,'restore','restore_general_users_locked',''),(99,'restore','restore_general_enrolments','1'),(100,'restore','restore_general_enrolments_locked',''),(101,'restore','restore_general_role_assignments','1'),(102,'restore','restore_general_role_assignments_locked',''),(103,'restore','restore_general_activities','1'),(104,'restore','restore_general_activities_locked',''),(105,'restore','restore_general_blocks','1'),(106,'restore','restore_general_blocks_locked',''),(107,'restore','restore_general_filters','1'),(108,'restore','restore_general_filters_locked',''),(109,'restore','restore_general_comments','1'),(110,'restore','restore_general_comments_locked',''),(111,'restore','restore_general_badges','1'),(112,'restore','restore_general_badges_locked',''),(113,'restore','restore_general_calendarevents','1'),(114,'restore','restore_general_calendarevents_locked',''),(115,'restore','restore_general_userscompletion','1'),(116,'restore','restore_general_userscompletion_locked',''),(117,'restore','restore_general_logs','1'),(118,'restore','restore_general_logs_locked',''),(119,'restore','restore_general_histories','1'),(120,'restore','restore_general_histories_locked',''),(121,'restore','restore_general_groups','1'),(122,'restore','restore_general_groups_locked',''),(123,'restore','restore_general_competencies','1'),(124,'restore','restore_general_competencies_locked',''),(125,'restore','restore_merge_overwrite_conf','0'),(126,'restore','restore_merge_overwrite_conf_locked',''),(127,'restore','restore_merge_course_fullname','1'),(128,'restore','restore_merge_course_fullname_locked',''),(129,'restore','restore_merge_course_shortname','1'),(130,'restore','restore_merge_course_shortname_locked',''),(131,'restore','restore_merge_course_startdate','1'),(132,'restore','restore_merge_course_startdate_locked',''),(133,'restore','restore_replace_overwrite_conf','0'),(134,'restore','restore_replace_overwrite_conf_locked',''),(135,'restore','restore_replace_course_fullname','1'),(136,'restore','restore_replace_course_fullname_locked',''),(137,'restore','restore_replace_course_shortname','1'),(138,'restore','restore_replace_course_shortname_locked',''),(139,'restore','restore_replace_course_startdate','1'),(140,'restore','restore_replace_course_startdate_locked',''),(141,'restore','restore_replace_keep_roles_and_enrolments','0'),(142,'restore','restore_replace_keep_roles_and_enrolments_locked',''),(143,'restore','restore_replace_keep_groups_and_groupings','0'),(144,'restore','restore_replace_keep_groups_and_groupings_locked',''),(145,'analytics','predictionsprocessor','\\mlbackend_php\\processor'),(146,'analytics','timesplittings','\\core\\analytics\\time_splitting\\quarters_accum,\\core\\analytics\\time_splitting\\quarters,\\core\\analytics\\time_splitting\\single_range'),(147,'analytics','modeloutputdir','/var/www/moodledata/models'),(148,'analytics','onlycli','1'),(149,'analytics','modeltimelimit','1200'),(150,'core_competency','enabled','1'),(151,'core_competency','pushcourseratingstouserplans','1'),(152,'cachestore_apcu','testperformance','0'),(153,'cachestore_memcache','testservers',''),(154,'cachestore_memcached','testservers',''),(155,'cachestore_mongodb','testserver',''),(156,'cachestore_redis','test_server',''),(157,'cachestore_redis','test_password',''),(158,'question_preview','behaviour','deferredfeedback'),(159,'question_preview','correctness','1'),(160,'question_preview','marks','2'),(161,'question_preview','markdp','2'),(162,'question_preview','feedback','1'),(163,'question_preview','generalfeedback','1'),(164,'question_preview','rightanswer','1'),(165,'question_preview','history','0'),(166,'tool_task','enablerunnow','1'),(167,'theme_boost','preset','default.scss'),(168,'theme_boost','presetfiles',''),(169,'theme_boost','backgroundimage',''),(170,'theme_boost','brandcolor',''),(171,'theme_boost','scsspre',''),(172,'theme_boost','scss',''),(173,'theme_clean','invert','0'),(174,'theme_clean','logo',''),(175,'theme_clean','smalllogo',''),(176,'theme_clean','sitename','1'),(177,'theme_clean','customcss',''),(178,'theme_clean','footnote',''),(179,'theme_more','textcolor','#333366'),(180,'theme_more','linkcolor','#FF6500'),(181,'theme_more','bodybackground',''),(182,'theme_more','backgroundimage',''),(183,'theme_more','backgroundrepeat','repeat'),(184,'theme_more','backgroundposition','0'),(185,'theme_more','backgroundfixed','0'),(186,'theme_more','contentbackground','#FFFFFF'),(187,'theme_more','secondarybackground','#FFFFFF'),(188,'theme_more','invert','1'),(189,'theme_more','logo',''),(190,'theme_more','smalllogo',''),(191,'theme_more','sitename','1'),(192,'theme_more','customcss',''),(193,'theme_more','footnote',''),(194,'core_admin','logo',''),(195,'core_admin','logocompact',''),(196,'antivirus_clamav','version','2017111300'),(197,'availability_completion','version','2017111300'),(198,'availability_date','version','2017111300'),(199,'availability_grade','version','2017111300'),(200,'availability_group','version','2017111300'),(201,'availability_grouping','version','2017111300'),(202,'availability_profile','version','2017111300'),(203,'qtype_calculated','version','2017111300'),(204,'qtype_calculatedmulti','version','2017111300'),(205,'qtype_calculatedsimple','version','2017111300'),(206,'qtype_ddimageortext','version','2017111300'),(207,'qtype_ddmarker','version','2017111300'),(208,'qtype_ddwtos','version','2017111300'),(209,'qtype_description','version','2017111300'),(210,'qtype_essay','version','2017111300'),(211,'qtype_gapselect','version','2017111300'),(212,'qtype_match','version','2017111300'),(213,'qtype_missingtype','version','2017111300'),(214,'qtype_multianswer','version','2017111300'),(215,'qtype_multichoice','version','2017111300'),(216,'qtype_numerical','version','2017111300'),(217,'qtype_random','version','2017111300'),(218,'qtype_randomsamatch','version','2017111300'),(219,'qtype_shortanswer','version','2017111300'),(220,'qtype_truefalse','version','2017111300'),(221,'mod_assign','version','2017111300'),(222,'mod_assignment','version','2017111300'),(224,'mod_book','version','2017111300'),(225,'mod_chat','version','2017111301'),(226,'mod_choice','version','2017111300'),(227,'mod_data','version','2017111300'),(228,'mod_feedback','version','2017111301'),(230,'mod_folder','version','2017111300'),(232,'mod_forum','version','2017111300'),(233,'mod_glossary','version','2017111300'),(234,'mod_imscp','version','2017111300'),(236,'mod_label','version','2017111300'),(237,'mod_lesson','version','2017111300'),(238,'mod_lti','version','2017111301'),(239,'mod_page','version','2017111300'),(241,'mod_quiz','version','2017111300'),(242,'mod_resource','version','2017111300'),(243,'mod_scorm','version','2017111300'),(244,'mod_survey','version','2017111300'),(246,'mod_url','version','2017111300'),(248,'mod_wiki','version','2017111300'),(250,'mod_workshop','version','2017111300'),(251,'auth_cas','version','2017111300'),(253,'auth_db','version','2017111300'),(255,'auth_email','version','2017111300'),(256,'auth_ldap','version','2017111300'),(258,'auth_lti','version','2017111300'),(259,'auth_manual','version','2017111300'),(260,'auth_mnet','version','2017111300'),(262,'auth_nologin','version','2017111300'),(263,'auth_none','version','2017111300'),(264,'auth_oauth2','version','2017111300'),(265,'auth_shibboleth','version','2017111300'),(267,'auth_webservice','version','2017111300'),(268,'calendartype_gregorian','version','2017111300'),(269,'enrol_category','version','2017111300'),(271,'enrol_cohort','version','2017111300'),(272,'enrol_database','version','2017111300'),(274,'enrol_flatfile','version','2017111300'),(276,'enrol_flatfile','map_1','manager'),(277,'enrol_flatfile','map_2','coursecreator'),(278,'enrol_flatfile','map_3','editingteacher'),(279,'enrol_flatfile','map_4','teacher'),(280,'enrol_flatfile','map_5','student'),(281,'enrol_flatfile','map_6','guest'),(282,'enrol_flatfile','map_7','user'),(283,'enrol_flatfile','map_8','frontpage'),(284,'enrol_guest','version','2017111300'),(285,'enrol_imsenterprise','version','2017111300'),(287,'enrol_ldap','version','2017111300'),(289,'enrol_lti','version','2017111300'),(290,'enrol_manual','version','2017111300'),(292,'enrol_meta','version','2017111300'),(294,'enrol_mnet','version','2017111300'),(295,'enrol_paypal','version','2017111300'),(296,'enrol_self','version','2017111300'),(298,'message_airnotifier','version','2017111300'),(300,'message','airnotifier_provider_enrol_flatfile_flatfile_enrolment_permitted','permitted'),(301,'message','airnotifier_provider_enrol_imsenterprise_imsenterprise_enrolment_permitted','permitted'),(302,'message','airnotifier_provider_enrol_manual_expiry_notification_permitted','permitted'),(303,'message','airnotifier_provider_enrol_paypal_paypal_enrolment_permitted','permitted'),(304,'message','airnotifier_provider_enrol_self_expiry_notification_permitted','permitted'),(305,'message','airnotifier_provider_mod_assign_assign_notification_permitted','permitted'),(306,'message','airnotifier_provider_mod_assignment_assignment_updates_permitted','permitted'),(307,'message','airnotifier_provider_mod_feedback_submission_permitted','permitted'),(308,'message','airnotifier_provider_mod_feedback_message_permitted','permitted'),(309,'message','airnotifier_provider_mod_forum_posts_permitted','permitted'),(310,'message','airnotifier_provider_mod_forum_digests_permitted','permitted'),(311,'message','airnotifier_provider_mod_lesson_graded_essay_permitted','permitted'),(312,'message','airnotifier_provider_mod_quiz_submission_permitted','permitted'),(313,'message','airnotifier_provider_mod_quiz_confirmation_permitted','permitted'),(314,'message','airnotifier_provider_mod_quiz_attempt_overdue_permitted','permitted'),(315,'message','airnotifier_provider_moodle_notices_permitted','permitted'),(316,'message','airnotifier_provider_moodle_errors_permitted','permitted'),(317,'message','airnotifier_provider_moodle_availableupdate_permitted','permitted'),(318,'message','airnotifier_provider_moodle_instantmessage_permitted','permitted'),(319,'message','airnotifier_provider_moodle_backup_permitted','permitted'),(320,'message','airnotifier_provider_moodle_courserequested_permitted','permitted'),(321,'message','airnotifier_provider_moodle_courserequestapproved_permitted','permitted'),(322,'message','airnotifier_provider_moodle_courserequestrejected_permitted','permitted'),(323,'message','airnotifier_provider_moodle_badgerecipientnotice_permitted','permitted'),(324,'message','airnotifier_provider_moodle_badgecreatornotice_permitted','permitted'),(325,'message','airnotifier_provider_moodle_competencyplancomment_permitted','permitted'),(326,'message','airnotifier_provider_moodle_competencyusercompcomment_permitted','permitted'),(327,'message','airnotifier_provider_moodle_insights_permitted','permitted'),(328,'message_email','version','2017111300'),(330,'message','email_provider_enrol_flatfile_flatfile_enrolment_permitted','permitted'),(331,'message','message_provider_enrol_flatfile_flatfile_enrolment_loggedin','email'),(332,'message','message_provider_enrol_flatfile_flatfile_enrolment_loggedoff','email'),(333,'message','email_provider_enrol_imsenterprise_imsenterprise_enrolment_permitted','permitted'),(334,'message','message_provider_enrol_imsenterprise_imsenterprise_enrolment_loggedin','email'),(335,'message','message_provider_enrol_imsenterprise_imsenterprise_enrolment_loggedoff','email'),(336,'message','email_provider_enrol_manual_expiry_notification_permitted','permitted'),(337,'message','message_provider_enrol_manual_expiry_notification_loggedin','email'),(338,'message','message_provider_enrol_manual_expiry_notification_loggedoff','email'),(339,'message','email_provider_enrol_paypal_paypal_enrolment_permitted','permitted'),(340,'message','message_provider_enrol_paypal_paypal_enrolment_loggedin','email'),(341,'message','message_provider_enrol_paypal_paypal_enrolment_loggedoff','email'),(342,'message','email_provider_enrol_self_expiry_notification_permitted','permitted'),(343,'message','message_provider_enrol_self_expiry_notification_loggedin','email'),(344,'message','message_provider_enrol_self_expiry_notification_loggedoff','email'),(345,'message','email_provider_mod_assign_assign_notification_permitted','permitted'),(346,'message','message_provider_mod_assign_assign_notification_loggedin','email'),(347,'message','message_provider_mod_assign_assign_notification_loggedoff','email'),(348,'message','email_provider_mod_assignment_assignment_updates_permitted','permitted'),(349,'message','message_provider_mod_assignment_assignment_updates_loggedin','email'),(350,'message','message_provider_mod_assignment_assignment_updates_loggedoff','email'),(351,'message','email_provider_mod_feedback_submission_permitted','permitted'),(352,'message','message_provider_mod_feedback_submission_loggedin','email'),(353,'message','message_provider_mod_feedback_submission_loggedoff','email'),(354,'message','email_provider_mod_feedback_message_permitted','permitted'),(355,'message','message_provider_mod_feedback_message_loggedin','email'),(356,'message','message_provider_mod_feedback_message_loggedoff','email'),(357,'message','email_provider_mod_forum_posts_permitted','permitted'),(358,'message','message_provider_mod_forum_posts_loggedin','email'),(359,'message','message_provider_mod_forum_posts_loggedoff','email'),(360,'message','email_provider_mod_forum_digests_permitted','permitted'),(361,'message','message_provider_mod_forum_digests_loggedin','email'),(362,'message','message_provider_mod_forum_digests_loggedoff','email'),(363,'message','email_provider_mod_lesson_graded_essay_permitted','permitted'),(364,'message','message_provider_mod_lesson_graded_essay_loggedin','email'),(365,'message','message_provider_mod_lesson_graded_essay_loggedoff','email'),(366,'message','email_provider_mod_quiz_submission_permitted','permitted'),(367,'message','message_provider_mod_quiz_submission_loggedin','email'),(368,'message','message_provider_mod_quiz_submission_loggedoff','email'),(369,'message','email_provider_mod_quiz_confirmation_permitted','permitted'),(370,'message','message_provider_mod_quiz_confirmation_loggedin','email'),(371,'message','message_provider_mod_quiz_confirmation_loggedoff','email'),(372,'message','email_provider_mod_quiz_attempt_overdue_permitted','permitted'),(373,'message','message_provider_mod_quiz_attempt_overdue_loggedin','email'),(374,'message','message_provider_mod_quiz_attempt_overdue_loggedoff','email'),(375,'message','email_provider_moodle_notices_permitted','permitted'),(376,'message','message_provider_moodle_notices_loggedin','email'),(377,'message','message_provider_moodle_notices_loggedoff','email'),(378,'message','email_provider_moodle_errors_permitted','permitted'),(379,'message','message_provider_moodle_errors_loggedin','email'),(380,'message','message_provider_moodle_errors_loggedoff','email'),(381,'message','email_provider_moodle_availableupdate_permitted','permitted'),(382,'message','message_provider_moodle_availableupdate_loggedin','email'),(383,'message','message_provider_moodle_availableupdate_loggedoff','email'),(384,'message','email_provider_moodle_instantmessage_permitted','permitted'),(385,'message','message_provider_moodle_instantmessage_loggedoff','popup,email'),(386,'message','email_provider_moodle_backup_permitted','permitted'),(387,'message','message_provider_moodle_backup_loggedin','email'),(388,'message','message_provider_moodle_backup_loggedoff','email'),(389,'message','email_provider_moodle_courserequested_permitted','permitted'),(390,'message','message_provider_moodle_courserequested_loggedin','email'),(391,'message','message_provider_moodle_courserequested_loggedoff','email'),(392,'message','email_provider_moodle_courserequestapproved_permitted','permitted'),(393,'message','message_provider_moodle_courserequestapproved_loggedin','email'),(394,'message','message_provider_moodle_courserequestapproved_loggedoff','email'),(395,'message','email_provider_moodle_courserequestrejected_permitted','permitted'),(396,'message','message_provider_moodle_courserequestrejected_loggedin','email'),(397,'message','message_provider_moodle_courserequestrejected_loggedoff','email'),(398,'message','email_provider_moodle_badgerecipientnotice_permitted','permitted'),(399,'message','message_provider_moodle_badgerecipientnotice_loggedoff','popup,email'),(400,'message','email_provider_moodle_badgecreatornotice_permitted','permitted'),(401,'message','message_provider_moodle_badgecreatornotice_loggedoff','email'),(402,'message','email_provider_moodle_competencyplancomment_permitted','permitted'),(403,'message','message_provider_moodle_competencyplancomment_loggedin','email'),(404,'message','message_provider_moodle_competencyplancomment_loggedoff','email'),(405,'message','email_provider_moodle_competencyusercompcomment_permitted','permitted'),(406,'message','message_provider_moodle_competencyusercompcomment_loggedin','email'),(407,'message','message_provider_moodle_competencyusercompcomment_loggedoff','email'),(408,'message','email_provider_moodle_insights_permitted','permitted'),(409,'message','message_provider_moodle_insights_loggedin','email'),(410,'message','message_provider_moodle_insights_loggedoff','email'),(411,'message_jabber','version','2017111300'),(413,'message','jabber_provider_enrol_flatfile_flatfile_enrolment_permitted','permitted'),(414,'message','jabber_provider_enrol_imsenterprise_imsenterprise_enrolment_permitted','permitted'),(415,'message','jabber_provider_enrol_manual_expiry_notification_permitted','permitted'),(416,'message','jabber_provider_enrol_paypal_paypal_enrolment_permitted','permitted'),(417,'message','jabber_provider_enrol_self_expiry_notification_permitted','permitted'),(418,'message','jabber_provider_mod_assign_assign_notification_permitted','permitted'),(419,'message','jabber_provider_mod_assignment_assignment_updates_permitted','permitted'),(420,'message','jabber_provider_mod_feedback_submission_permitted','permitted'),(421,'message','jabber_provider_mod_feedback_message_permitted','permitted'),(422,'message','jabber_provider_mod_forum_posts_permitted','permitted'),(423,'message','jabber_provider_mod_forum_digests_permitted','permitted'),(424,'message','jabber_provider_mod_lesson_graded_essay_permitted','permitted'),(425,'message','jabber_provider_mod_quiz_submission_permitted','permitted'),(426,'message','jabber_provider_mod_quiz_confirmation_permitted','permitted'),(427,'message','jabber_provider_mod_quiz_attempt_overdue_permitted','permitted'),(428,'message','jabber_provider_moodle_notices_permitted','permitted'),(429,'message','jabber_provider_moodle_errors_permitted','permitted'),(430,'message','jabber_provider_moodle_availableupdate_permitted','permitted'),(431,'message','jabber_provider_moodle_instantmessage_permitted','permitted'),(432,'message','jabber_provider_moodle_backup_permitted','permitted'),(433,'message','jabber_provider_moodle_courserequested_permitted','permitted'),(434,'message','jabber_provider_moodle_courserequestapproved_permitted','permitted'),(435,'message','jabber_provider_moodle_courserequestrejected_permitted','permitted'),(436,'message','jabber_provider_moodle_badgerecipientnotice_permitted','permitted'),(437,'message','jabber_provider_moodle_badgecreatornotice_permitted','permitted'),(438,'message','jabber_provider_moodle_competencyplancomment_permitted','permitted'),(439,'message','jabber_provider_moodle_competencyusercompcomment_permitted','permitted'),(440,'message','jabber_provider_moodle_insights_permitted','permitted'),(441,'message_popup','version','2017111300'),(443,'message','popup_provider_enrol_flatfile_flatfile_enrolment_permitted','permitted'),(444,'message','popup_provider_enrol_imsenterprise_imsenterprise_enrolment_permitted','permitted'),(445,'message','popup_provider_enrol_manual_expiry_notification_permitted','permitted'),(446,'message','popup_provider_enrol_paypal_paypal_enrolment_permitted','permitted'),(447,'message','popup_provider_enrol_self_expiry_notification_permitted','permitted'),(448,'message','popup_provider_mod_assign_assign_notification_permitted','permitted'),(449,'message','popup_provider_mod_assignment_assignment_updates_permitted','permitted'),(450,'message','popup_provider_mod_feedback_submission_permitted','permitted'),(451,'message','popup_provider_mod_feedback_message_permitted','permitted'),(452,'message','popup_provider_mod_forum_posts_permitted','permitted'),(453,'message','popup_provider_mod_forum_digests_permitted','permitted'),(454,'message','popup_provider_mod_lesson_graded_essay_permitted','permitted'),(455,'message','popup_provider_mod_quiz_submission_permitted','permitted'),(456,'message','popup_provider_mod_quiz_confirmation_permitted','permitted'),(457,'message','popup_provider_mod_quiz_attempt_overdue_permitted','permitted'),(458,'message','popup_provider_moodle_notices_permitted','permitted'),(459,'message','popup_provider_moodle_errors_permitted','permitted'),(460,'message','popup_provider_moodle_availableupdate_permitted','permitted'),(461,'message','popup_provider_moodle_instantmessage_permitted','permitted'),(462,'message','message_provider_moodle_instantmessage_loggedin','popup'),(463,'message','popup_provider_moodle_backup_permitted','permitted'),(464,'message','popup_provider_moodle_courserequested_permitted','permitted'),(465,'message','popup_provider_moodle_courserequestapproved_permitted','permitted'),(466,'message','popup_provider_moodle_courserequestrejected_permitted','permitted'),(467,'message','popup_provider_moodle_badgerecipientnotice_permitted','permitted'),(468,'message','message_provider_moodle_badgerecipientnotice_loggedin','popup'),(469,'message','popup_provider_moodle_badgecreatornotice_permitted','permitted'),(470,'message','popup_provider_moodle_competencyplancomment_permitted','permitted'),(471,'message','popup_provider_moodle_competencyusercompcomment_permitted','permitted'),(472,'message','popup_provider_moodle_insights_permitted','permitted'),(473,'block_activity_modules','version','2017111300'),(474,'block_activity_results','version','2017111300'),(475,'block_admin_bookmarks','version','2017111300'),(476,'block_badges','version','2017111300'),(477,'block_blog_menu','version','2017111300'),(478,'block_blog_recent','version','2017111300'),(479,'block_blog_tags','version','2017111300'),(480,'block_calendar_month','version','2017111300'),(481,'block_calendar_upcoming','version','2017111300'),(482,'block_comments','version','2017111300'),(483,'block_community','version','2017111300'),(484,'block_completionstatus','version','2017111300'),(485,'block_course_list','version','2017111300'),(486,'block_course_summary','version','2017111300'),(487,'block_feedback','version','2017111300'),(489,'block_globalsearch','version','2017111300'),(490,'block_glossary_random','version','2017111300'),(491,'block_html','version','2017111300'),(492,'block_login','version','2017111300'),(493,'block_lp','version','2017111300'),(494,'block_mentees','version','2017111300'),(495,'block_mnet_hosts','version','2017111300'),(496,'block_myoverview','version','2017111300'),(497,'block_myprofile','version','2017111300'),(498,'block_navigation','version','2017111300'),(499,'block_news_items','version','2017111300'),(500,'block_online_users','version','2017111300'),(501,'block_participants','version','2017111300'),(502,'block_private_files','version','2017111300'),(503,'block_quiz_results','version','2017111300'),(505,'block_recent_activity','version','2017111300'),(506,'block_rss_client','version','2017111300'),(507,'block_search_forums','version','2017111300'),(508,'block_section_links','version','2017111300'),(509,'block_selfcompletion','version','2017111300'),(510,'block_settings','version','2017111300'),(511,'block_site_main_menu','version','2017111300'),(512,'block_social_activities','version','2017111300'),(513,'block_tag_flickr','version','2017111300'),(514,'block_tag_youtube','version','2017111300'),(516,'block_tags','version','2017111300'),(517,'media_html5audio','version','2017111300'),(518,'media_html5video','version','2017111300'),(519,'media_swf','version','2017111300'),(520,'media_videojs','version','2017111300'),(521,'media_vimeo','version','2017111300'),(522,'media_youtube','version','2017111300'),(523,'filter_activitynames','version','2017111300'),(525,'filter_algebra','version','2017111300'),(526,'filter_censor','version','2017111300'),(527,'filter_data','version','2017111300'),(529,'filter_emailprotect','version','2017111300'),(530,'filter_emoticon','version','2017111300'),(531,'filter_glossary','version','2017111300'),(533,'filter_mathjaxloader','version','2017111300'),(535,'filter_mediaplugin','version','2017111300'),(537,'filter_multilang','version','2017111300'),(538,'filter_tex','version','2017111300'),(540,'filter_tidy','version','2017111300'),(541,'filter_urltolink','version','2017111300'),(542,'editor_atto','version','2017111300'),(544,'editor_textarea','version','2017111300'),(545,'editor_tinymce','version','2017111300'),(546,'format_singleactivity','version','2017111300'),(547,'format_social','version','2017111300'),(548,'format_topics','version','2017111301'),(549,'format_weeks','version','2017111301'),(550,'dataformat_csv','version','2017111300'),(551,'dataformat_excel','version','2017111300'),(552,'dataformat_html','version','2017111300'),(553,'dataformat_json','version','2017111300'),(554,'dataformat_ods','version','2017111300'),(555,'profilefield_checkbox','version','2017111300'),(556,'profilefield_datetime','version','2017111300'),(557,'profilefield_menu','version','2017111300'),(558,'profilefield_text','version','2017111300'),(559,'profilefield_textarea','version','2017111300'),(560,'report_backups','version','2017111300'),(561,'report_competency','version','2017111300'),(562,'report_completion','version','2017111300'),(564,'report_configlog','version','2017111300'),(565,'report_courseoverview','version','2017111300'),(566,'report_eventlist','version','2017111300'),(567,'report_insights','version','2017111300'),(568,'report_log','version','2017111300'),(570,'report_loglive','version','2017111300'),(571,'report_outline','version','2017111300'),(573,'report_participation','version','2017111300'),(575,'report_performance','version','2017111300'),(576,'report_progress','version','2017111300'),(578,'report_questioninstances','version','2017111300'),(579,'report_security','version','2017111300'),(580,'report_stats','version','2017111300'),(582,'report_usersessions','version','2017111300'),(583,'gradeexport_ods','version','2017111300'),(584,'gradeexport_txt','version','2017111300'),(585,'gradeexport_xls','version','2017111300'),(586,'gradeexport_xml','version','2017111300'),(587,'gradeimport_csv','version','2017111300'),(588,'gradeimport_direct','version','2017111300'),(589,'gradeimport_xml','version','2017111300'),(590,'gradereport_grader','version','2017111300'),(591,'gradereport_history','version','2017111300'),(592,'gradereport_outcomes','version','2017111300'),(593,'gradereport_overview','version','2017111300'),(594,'gradereport_singleview','version','2017111300'),(595,'gradereport_user','version','2017111300'),(596,'gradingform_guide','version','2017111300'),(597,'gradingform_rubric','version','2017111300'),(598,'mlbackend_php','version','2017111300'),(599,'mlbackend_python','version','2017111300'),(600,'mnetservice_enrol','version','2017111300'),(601,'webservice_rest','version','2017111300'),(602,'webservice_soap','version','2017111300'),(603,'webservice_xmlrpc','version','2017111300'),(604,'repository_areafiles','version','2017111300'),(606,'areafiles','enablecourseinstances','0'),(607,'areafiles','enableuserinstances','0'),(608,'repository_boxnet','version','2017111300'),(609,'repository_coursefiles','version','2017111300'),(610,'repository_dropbox','version','2017111300'),(611,'repository_equella','version','2017111300'),(612,'repository_filesystem','version','2017111300'),(613,'repository_flickr','version','2017111300'),(614,'repository_flickr_public','version','2017111300'),(615,'repository_googledocs','version','2017111300'),(616,'repository_local','version','2017111300'),(618,'local','enablecourseinstances','0'),(619,'local','enableuserinstances','0'),(620,'repository_merlot','version','2017111300'),(621,'repository_onedrive','version','2017111300'),(622,'repository_picasa','version','2017111300'),(623,'repository_recent','version','2017111300'),(625,'recent','enablecourseinstances','0'),(626,'recent','enableuserinstances','0'),(627,'repository_s3','version','2017111300'),(628,'repository_skydrive','version','2017111300'),(629,'repository_upload','version','2017111300'),(631,'upload','enablecourseinstances','0'),(632,'upload','enableuserinstances','0'),(633,'repository_url','version','2017111300'),(635,'url','enablecourseinstances','0'),(636,'url','enableuserinstances','0'),(637,'repository_user','version','2017111300'),(639,'user','enablecourseinstances','0'),(640,'user','enableuserinstances','0'),(641,'repository_webdav','version','2017111300'),(642,'repository_wikimedia','version','2017111300'),(644,'wikimedia','enablecourseinstances','0'),(645,'wikimedia','enableuserinstances','0'),(646,'repository_youtube','version','2017111300'),(648,'portfolio_boxnet','version','2017111300'),(649,'portfolio_download','version','2017111300'),(650,'portfolio_flickr','version','2017111300'),(651,'portfolio_googledocs','version','2017111300'),(652,'portfolio_mahara','version','2017111300'),(653,'portfolio_picasa','version','2017111300'),(654,'search_solr','version','2017111300'),(655,'qbehaviour_adaptive','version','2017111300'),(656,'qbehaviour_adaptivenopenalty','version','2017111300'),(657,'qbehaviour_deferredcbm','version','2017111300'),(658,'qbehaviour_deferredfeedback','version','2017111300'),(659,'qbehaviour_immediatecbm','version','2017111300'),(660,'qbehaviour_immediatefeedback','version','2017111300'),(661,'qbehaviour_informationitem','version','2017111300'),(662,'qbehaviour_interactive','version','2017111300'),(663,'qbehaviour_interactivecountback','version','2017111300'),(664,'qbehaviour_manualgraded','version','2017111300'),(666,'question','disabledbehaviours','manualgraded'),(667,'qbehaviour_missing','version','2017111300'),(668,'qformat_aiken','version','2017111300'),(669,'qformat_blackboard_six','version','2017111300'),(670,'qformat_examview','version','2017111300'),(671,'qformat_gift','version','2017111300'),(672,'qformat_missingword','version','2017111300'),(673,'qformat_multianswer','version','2017111300'),(674,'qformat_webct','version','2017111300'),(675,'qformat_xhtml','version','2017111300'),(676,'qformat_xml','version','2017111300'),(677,'tool_analytics','version','2017111300'),(678,'tool_assignmentupgrade','version','2017111300'),(679,'tool_availabilityconditions','version','2017111300'),(680,'tool_behat','version','2017111300'),(681,'tool_capability','version','2017111300'),(682,'tool_cohortroles','version','2017111300'),(683,'tool_customlang','version','2017111300'),(685,'tool_dbtransfer','version','2017111300'),(686,'tool_filetypes','version','2017111300'),(687,'tool_generator','version','2017111300'),(688,'tool_health','version','2017111300'),(689,'tool_httpsreplace','version','2017111300'),(690,'tool_innodb','version','2017111300'),(691,'tool_installaddon','version','2017111300'),(692,'tool_langimport','version','2017111300'),(693,'tool_log','version','2017111300'),(695,'tool_log','enabled_stores','logstore_standard'),(696,'tool_lp','version','2017111300'),(697,'tool_lpimportcsv','version','2017111300'),(698,'tool_lpmigrate','version','2017111300'),(699,'tool_messageinbound','version','2017111300'),(700,'message','airnotifier_provider_tool_messageinbound_invalidrecipienthandler_permitted','permitted'),(701,'message','email_provider_tool_messageinbound_invalidrecipienthandler_permitted','permitted'),(702,'message','jabber_provider_tool_messageinbound_invalidrecipienthandler_permitted','permitted'),(703,'message','popup_provider_tool_messageinbound_invalidrecipienthandler_permitted','permitted'),(704,'message','message_provider_tool_messageinbound_invalidrecipienthandler_loggedin','email'),(705,'message','message_provider_tool_messageinbound_invalidrecipienthandler_loggedoff','email'),(706,'message','airnotifier_provider_tool_messageinbound_messageprocessingerror_permitted','permitted'),(707,'message','email_provider_tool_messageinbound_messageprocessingerror_permitted','permitted'),(708,'message','jabber_provider_tool_messageinbound_messageprocessingerror_permitted','permitted'),(709,'message','popup_provider_tool_messageinbound_messageprocessingerror_permitted','permitted'),(710,'message','message_provider_tool_messageinbound_messageprocessingerror_loggedin','email'),(711,'message','message_provider_tool_messageinbound_messageprocessingerror_loggedoff','email'),(712,'message','airnotifier_provider_tool_messageinbound_messageprocessingsuccess_permitted','permitted'),(713,'message','email_provider_tool_messageinbound_messageprocessingsuccess_permitted','permitted'),(714,'message','jabber_provider_tool_messageinbound_messageprocessingsuccess_permitted','permitted'),(715,'message','popup_provider_tool_messageinbound_messageprocessingsuccess_permitted','permitted'),(716,'message','message_provider_tool_messageinbound_messageprocessingsuccess_loggedin','email'),(717,'message','message_provider_tool_messageinbound_messageprocessingsuccess_loggedoff','email'),(718,'tool_mobile','version','2017111300'),(719,'tool_monitor','version','2017111300'),(720,'message','airnotifier_provider_tool_monitor_notification_permitted','permitted'),(721,'message','email_provider_tool_monitor_notification_permitted','permitted'),(722,'message','jabber_provider_tool_monitor_notification_permitted','permitted'),(723,'message','popup_provider_tool_monitor_notification_permitted','permitted'),(724,'message','message_provider_tool_monitor_notification_loggedin','email'),(725,'message','message_provider_tool_monitor_notification_loggedoff','email'),(726,'tool_multilangupgrade','version','2017111300'),(727,'tool_oauth2','version','2017111300'),(728,'tool_phpunit','version','2017111300'),(729,'tool_profiling','version','2017111300'),(730,'tool_recyclebin','version','2017111300'),(731,'tool_replace','version','2017111300'),(732,'tool_spamcleaner','version','2017111300'),(733,'tool_task','version','2017111300'),(734,'tool_templatelibrary','version','2017111300'),(735,'tool_unsuproles','version','2017111300'),(737,'tool_uploadcourse','version','2017111300'),(738,'tool_uploaduser','version','2017111300'),(739,'tool_usertours','version','2017111300'),(741,'tool_xmldb','version','2017111300'),(742,'cachestore_apcu','version','2017111300'),(743,'cachestore_file','version','2017111300'),(744,'cachestore_memcache','version','2017111300'),(745,'cachestore_memcached','version','2017111300'),(746,'cachestore_mongodb','version','2017111300'),(747,'cachestore_redis','version','2017111300'),(748,'cachestore_session','version','2017111300'),(749,'cachestore_static','version','2017111300'),(750,'cachelock_file','version','2017111300'),(751,'fileconverter_googledrive','version','2017111300'),(752,'fileconverter_unoconv','version','2017111300'),(754,'theme_boost','version','2017111300'),(755,'theme_bootstrapbase','version','2017111300'),(756,'theme_clean','version','2017111300'),(757,'theme_more','version','2017111300'),(759,'assignsubmission_comments','version','2017111300'),(761,'assignsubmission_file','sortorder','1'),(762,'assignsubmission_comments','sortorder','2'),(763,'assignsubmission_onlinetext','sortorder','0'),(764,'assignsubmission_file','version','2017111300'),(765,'assignsubmission_onlinetext','version','2017111300'),(767,'assignfeedback_comments','version','2017111300'),(769,'assignfeedback_comments','sortorder','0'),(770,'assignfeedback_editpdf','sortorder','1'),(771,'assignfeedback_file','sortorder','3'),(772,'assignfeedback_offline','sortorder','2'),(773,'assignfeedback_editpdf','version','2017111300'),(775,'assignfeedback_file','version','2017111300'),(777,'assignfeedback_offline','version','2017111300'),(778,'assignment_offline','version','2017111300'),(779,'assignment_online','version','2017111300'),(780,'assignment_upload','version','2017111300'),(781,'assignment_uploadsingle','version','2017111300'),(782,'booktool_exportimscp','version','2017111300'),(783,'booktool_importhtml','version','2017111300'),(784,'booktool_print','version','2017111300'),(785,'datafield_checkbox','version','2017111300'),(786,'datafield_date','version','2017111300'),(787,'datafield_file','version','2017111300'),(788,'datafield_latlong','version','2017111300'),(789,'datafield_menu','version','2017111300'),(790,'datafield_multimenu','version','2017111300'),(791,'datafield_number','version','2017111300'),(792,'datafield_picture','version','2017111300'),(793,'datafield_radiobutton','version','2017111300'),(794,'datafield_text','version','2017111300'),(795,'datafield_textarea','version','2017111300'),(796,'datafield_url','version','2017111300'),(797,'datapreset_imagegallery','version','2017111300'),(798,'ltiservice_memberships','version','2017111300'),(799,'ltiservice_profile','version','2017111300'),(800,'ltiservice_toolproxy','version','2017111300'),(801,'ltiservice_toolsettings','version','2017111300'),(802,'quiz_grading','version','2017111300'),(804,'quiz_overview','version','2017111300'),(806,'quiz_responses','version','2017111300'),(808,'quiz_statistics','version','2017111300'),(810,'quizaccess_delaybetweenattempts','version','2017111300'),(811,'quizaccess_ipaddress','version','2017111300'),(812,'quizaccess_numattempts','version','2017111300'),(813,'quizaccess_offlineattempts','version','2017111300'),(814,'quizaccess_openclosedate','version','2017111300'),(815,'quizaccess_password','version','2017111300'),(816,'quizaccess_safebrowser','version','2017111300'),(817,'quizaccess_securewindow','version','2017111300'),(818,'quizaccess_timelimit','version','2017111300'),(819,'scormreport_basic','version','2017111300'),(820,'scormreport_graphs','version','2017111300'),(821,'scormreport_interactions','version','2017111300'),(822,'scormreport_objectives','version','2017111300'),(823,'workshopform_accumulative','version','2017111300'),(825,'workshopform_comments','version','2017111300'),(827,'workshopform_numerrors','version','2017111300'),(829,'workshopform_rubric','version','2017111300'),(831,'workshopallocation_manual','version','2017111300'),(832,'workshopallocation_random','version','2017111300'),(833,'workshopallocation_scheduled','version','2017111300'),(834,'workshopeval_best','version','2017111300'),(835,'atto_accessibilitychecker','version','2017111300'),(836,'atto_accessibilityhelper','version','2017111300'),(837,'atto_align','version','2017111300'),(838,'atto_backcolor','version','2017111300'),(839,'atto_bold','version','2017111300'),(840,'atto_charmap','version','2017111300'),(841,'atto_clear','version','2017111300'),(842,'atto_collapse','version','2017111300'),(843,'atto_emoticon','version','2017111300'),(844,'atto_equation','version','2017111300'),(845,'atto_fontcolor','version','2017111300'),(846,'atto_html','version','2017111300'),(847,'atto_image','version','2017111300'),(848,'atto_indent','version','2017111300'),(849,'atto_italic','version','2017111300'),(850,'atto_link','version','2017111300'),(851,'atto_managefiles','version','2017111300'),(852,'atto_media','version','2017111300'),(853,'atto_noautolink','version','2017111300'),(854,'atto_orderedlist','version','2017111300'),(855,'atto_rtl','version','2017111300'),(856,'atto_strike','version','2017111300'),(857,'atto_subscript','version','2017111300'),(858,'atto_superscript','version','2017111300'),(859,'atto_table','version','2017111300'),(860,'atto_title','version','2017111300'),(861,'atto_underline','version','2017111300'),(862,'atto_undo','version','2017111300'),(863,'atto_unorderedlist','version','2017111300'),(864,'tinymce_ctrlhelp','version','2017111300'),(865,'tinymce_managefiles','version','2017111300'),(866,'tinymce_moodleemoticon','version','2017111300'),(867,'tinymce_moodleimage','version','2017111300'),(868,'tinymce_moodlemedia','version','2017111300'),(869,'tinymce_moodlenolink','version','2017111300'),(870,'tinymce_pdw','version','2017111300'),(871,'tinymce_spellchecker','version','2017111300'),(873,'tinymce_wrap','version','2017111300'),(874,'logstore_database','version','2017111300'),(875,'logstore_legacy','version','2017111300'),(876,'logstore_standard','version','2017111300');
/*!40000 ALTER TABLE `mdl01_config_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_context`
--

DROP TABLE IF EXISTS `mdl01_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_context` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextlevel` bigint(10) NOT NULL DEFAULT '0',
  `instanceid` bigint(10) NOT NULL DEFAULT '0',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `depth` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_cont_conins_uix` (`contextlevel`,`instanceid`),
  KEY `mdl01_cont_ins_ix` (`instanceid`),
  KEY `mdl01_cont_pat_ix` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='one of these must be set';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_context`
--

LOCK TABLES `mdl01_context` WRITE;
/*!40000 ALTER TABLE `mdl01_context` DISABLE KEYS */;
INSERT INTO `mdl01_context` VALUES (1,10,0,'/1',1),(2,50,1,'/1/2',2),(3,40,1,'/1/3',2),(4,30,1,'/1/4',2),(5,30,2,'/1/5',2),(6,80,1,'/1/6',2),(7,80,2,'/1/7',2),(8,80,3,'/1/8',2),(9,80,4,'/1/9',2),(10,80,5,'/1/10',2),(11,80,6,'/1/11',2),(12,80,7,'/1/12',2),(13,80,8,'/1/13',2);
/*!40000 ALTER TABLE `mdl01_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_context_temp`
--

DROP TABLE IF EXISTS `mdl01_context_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_context_temp` (
  `id` bigint(10) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `depth` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Used by build_context_path() in upgrade and cron to keep con';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_context_temp`
--

LOCK TABLES `mdl01_context_temp` WRITE;
/*!40000 ALTER TABLE `mdl01_context_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_context_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_course`
--

DROP TABLE IF EXISTS `mdl01_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_course` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `category` bigint(10) NOT NULL DEFAULT '0',
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `fullname` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shortname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `idnumber` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `summary` longtext COLLATE utf8mb4_unicode_ci,
  `summaryformat` tinyint(2) NOT NULL DEFAULT '0',
  `format` varchar(21) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'topics',
  `showgrades` tinyint(2) NOT NULL DEFAULT '1',
  `newsitems` mediumint(5) NOT NULL DEFAULT '1',
  `startdate` bigint(10) NOT NULL DEFAULT '0',
  `enddate` bigint(10) NOT NULL DEFAULT '0',
  `marker` bigint(10) NOT NULL DEFAULT '0',
  `maxbytes` bigint(10) NOT NULL DEFAULT '0',
  `legacyfiles` smallint(4) NOT NULL DEFAULT '0',
  `showreports` smallint(4) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `visibleold` tinyint(1) NOT NULL DEFAULT '1',
  `groupmode` smallint(4) NOT NULL DEFAULT '0',
  `groupmodeforce` smallint(4) NOT NULL DEFAULT '0',
  `defaultgroupingid` bigint(10) NOT NULL DEFAULT '0',
  `lang` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `calendartype` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `theme` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `requested` tinyint(1) NOT NULL DEFAULT '0',
  `enablecompletion` tinyint(1) NOT NULL DEFAULT '0',
  `completionnotify` tinyint(1) NOT NULL DEFAULT '0',
  `cacherev` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_cour_cat_ix` (`category`),
  KEY `mdl01_cour_idn_ix` (`idnumber`),
  KEY `mdl01_cour_sho_ix` (`shortname`),
  KEY `mdl01_cour_sor_ix` (`sortorder`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Central course table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_course`
--

LOCK TABLES `mdl01_course` WRITE;
/*!40000 ALTER TABLE `mdl01_course` DISABLE KEYS */;
INSERT INTO `mdl01_course` VALUES (1,0,0,'','','',NULL,0,'site',1,3,0,0,0,0,0,0,1,1,0,0,0,'','','',1525171681,1525171681,0,0,0,1525171732);
/*!40000 ALTER TABLE `mdl01_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_course_categories`
--

DROP TABLE IF EXISTS `mdl01_course_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_course_categories` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `idnumber` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT '0',
  `parent` bigint(10) NOT NULL DEFAULT '0',
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `coursecount` bigint(10) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `visibleold` tinyint(1) NOT NULL DEFAULT '1',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `depth` bigint(10) NOT NULL DEFAULT '0',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `theme` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_courcate_par_ix` (`parent`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Course categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_course_categories`
--

LOCK TABLES `mdl01_course_categories` WRITE;
/*!40000 ALTER TABLE `mdl01_course_categories` DISABLE KEYS */;
INSERT INTO `mdl01_course_categories` VALUES (1,'その他',NULL,NULL,0,0,10000,0,1,1,1525171681,1,'/1',NULL);
/*!40000 ALTER TABLE `mdl01_course_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_course_completion_aggr_methd`
--

DROP TABLE IF EXISTS `mdl01_course_completion_aggr_methd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_course_completion_aggr_methd` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `criteriatype` bigint(10) DEFAULT NULL,
  `method` tinyint(1) NOT NULL DEFAULT '0',
  `value` decimal(10,5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_courcompaggrmeth_cou_uix` (`course`,`criteriatype`),
  KEY `mdl01_courcompaggrmeth_cou_ix` (`course`),
  KEY `mdl01_courcompaggrmeth_cri_ix` (`criteriatype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Course completion aggregation methods for criteria';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_course_completion_aggr_methd`
--

LOCK TABLES `mdl01_course_completion_aggr_methd` WRITE;
/*!40000 ALTER TABLE `mdl01_course_completion_aggr_methd` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_course_completion_aggr_methd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_course_completion_crit_compl`
--

DROP TABLE IF EXISTS `mdl01_course_completion_crit_compl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_course_completion_crit_compl` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `course` bigint(10) NOT NULL DEFAULT '0',
  `criteriaid` bigint(10) NOT NULL DEFAULT '0',
  `gradefinal` decimal(10,5) DEFAULT NULL,
  `unenroled` bigint(10) DEFAULT NULL,
  `timecompleted` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_courcompcritcomp_use_uix` (`userid`,`course`,`criteriaid`),
  KEY `mdl01_courcompcritcomp_use_ix` (`userid`),
  KEY `mdl01_courcompcritcomp_cou_ix` (`course`),
  KEY `mdl01_courcompcritcomp_cri_ix` (`criteriaid`),
  KEY `mdl01_courcompcritcomp_tim_ix` (`timecompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Course completion user records';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_course_completion_crit_compl`
--

LOCK TABLES `mdl01_course_completion_crit_compl` WRITE;
/*!40000 ALTER TABLE `mdl01_course_completion_crit_compl` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_course_completion_crit_compl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_course_completion_criteria`
--

DROP TABLE IF EXISTS `mdl01_course_completion_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_course_completion_criteria` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `criteriatype` bigint(10) NOT NULL DEFAULT '0',
  `module` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moduleinstance` bigint(10) DEFAULT NULL,
  `courseinstance` bigint(10) DEFAULT NULL,
  `enrolperiod` bigint(10) DEFAULT NULL,
  `timeend` bigint(10) DEFAULT NULL,
  `gradepass` decimal(10,5) DEFAULT NULL,
  `role` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_courcompcrit_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Course completion criteria';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_course_completion_criteria`
--

LOCK TABLES `mdl01_course_completion_criteria` WRITE;
/*!40000 ALTER TABLE `mdl01_course_completion_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_course_completion_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_course_completion_defaults`
--

DROP TABLE IF EXISTS `mdl01_course_completion_defaults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_course_completion_defaults` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL,
  `module` bigint(10) NOT NULL,
  `completion` tinyint(1) NOT NULL DEFAULT '0',
  `completionview` tinyint(1) NOT NULL DEFAULT '0',
  `completionusegrade` tinyint(1) NOT NULL DEFAULT '0',
  `completionexpected` bigint(10) NOT NULL DEFAULT '0',
  `customrules` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_courcompdefa_coumod_uix` (`course`,`module`),
  KEY `mdl01_courcompdefa_mod_ix` (`module`),
  KEY `mdl01_courcompdefa_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Default settings for activities completion';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_course_completion_defaults`
--

LOCK TABLES `mdl01_course_completion_defaults` WRITE;
/*!40000 ALTER TABLE `mdl01_course_completion_defaults` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_course_completion_defaults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_course_completions`
--

DROP TABLE IF EXISTS `mdl01_course_completions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_course_completions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `course` bigint(10) NOT NULL DEFAULT '0',
  `timeenrolled` bigint(10) NOT NULL DEFAULT '0',
  `timestarted` bigint(10) NOT NULL DEFAULT '0',
  `timecompleted` bigint(10) DEFAULT NULL,
  `reaggregate` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_courcomp_usecou_uix` (`userid`,`course`),
  KEY `mdl01_courcomp_use_ix` (`userid`),
  KEY `mdl01_courcomp_cou_ix` (`course`),
  KEY `mdl01_courcomp_tim_ix` (`timecompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Course completion records';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_course_completions`
--

LOCK TABLES `mdl01_course_completions` WRITE;
/*!40000 ALTER TABLE `mdl01_course_completions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_course_completions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_course_format_options`
--

DROP TABLE IF EXISTS `mdl01_course_format_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_course_format_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `format` varchar(21) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sectionid` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_courformopti_coufors_uix` (`courseid`,`format`,`sectionid`,`name`),
  KEY `mdl01_courformopti_cou_ix` (`courseid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores format-specific options for the course or course sect';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_course_format_options`
--

LOCK TABLES `mdl01_course_format_options` WRITE;
/*!40000 ALTER TABLE `mdl01_course_format_options` DISABLE KEYS */;
INSERT INTO `mdl01_course_format_options` VALUES (1,1,'site',0,'numsections','1');
/*!40000 ALTER TABLE `mdl01_course_format_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_course_modules`
--

DROP TABLE IF EXISTS `mdl01_course_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_course_modules` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `module` bigint(10) NOT NULL DEFAULT '0',
  `instance` bigint(10) NOT NULL DEFAULT '0',
  `section` bigint(10) NOT NULL DEFAULT '0',
  `idnumber` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added` bigint(10) NOT NULL DEFAULT '0',
  `score` smallint(4) NOT NULL DEFAULT '0',
  `indent` mediumint(5) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `visibleoncoursepage` tinyint(1) NOT NULL DEFAULT '1',
  `visibleold` tinyint(1) NOT NULL DEFAULT '1',
  `groupmode` smallint(4) NOT NULL DEFAULT '0',
  `groupingid` bigint(10) NOT NULL DEFAULT '0',
  `completion` tinyint(1) NOT NULL DEFAULT '0',
  `completiongradeitemnumber` bigint(10) DEFAULT NULL,
  `completionview` tinyint(1) NOT NULL DEFAULT '0',
  `completionexpected` bigint(10) NOT NULL DEFAULT '0',
  `showdescription` tinyint(1) NOT NULL DEFAULT '0',
  `availability` longtext COLLATE utf8mb4_unicode_ci,
  `deletioninprogress` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_courmodu_vis_ix` (`visible`),
  KEY `mdl01_courmodu_cou_ix` (`course`),
  KEY `mdl01_courmodu_mod_ix` (`module`),
  KEY `mdl01_courmodu_ins_ix` (`instance`),
  KEY `mdl01_courmodu_idncou_ix` (`idnumber`,`course`),
  KEY `mdl01_courmodu_gro_ix` (`groupingid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='course_modules table retrofitted from MySQL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_course_modules`
--

LOCK TABLES `mdl01_course_modules` WRITE;
/*!40000 ALTER TABLE `mdl01_course_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_course_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_course_modules_completion`
--

DROP TABLE IF EXISTS `mdl01_course_modules_completion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_course_modules_completion` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `coursemoduleid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `completionstate` tinyint(1) NOT NULL,
  `viewed` tinyint(1) DEFAULT NULL,
  `overrideby` bigint(10) DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_courmoducomp_usecou_uix` (`userid`,`coursemoduleid`),
  KEY `mdl01_courmoducomp_cou_ix` (`coursemoduleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores the completion state (completed or not completed, etc';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_course_modules_completion`
--

LOCK TABLES `mdl01_course_modules_completion` WRITE;
/*!40000 ALTER TABLE `mdl01_course_modules_completion` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_course_modules_completion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_course_published`
--

DROP TABLE IF EXISTS `mdl01_course_published`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_course_published` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `huburl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `courseid` bigint(10) NOT NULL,
  `timepublished` bigint(10) NOT NULL,
  `enrollable` tinyint(1) NOT NULL DEFAULT '1',
  `hubcourseid` bigint(10) NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `timechecked` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Information about how and when an local courses were publish';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_course_published`
--

LOCK TABLES `mdl01_course_published` WRITE;
/*!40000 ALTER TABLE `mdl01_course_published` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_course_published` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_course_request`
--

DROP TABLE IF EXISTS `mdl01_course_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_course_request` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shortname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `summary` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `summaryformat` tinyint(2) NOT NULL DEFAULT '0',
  `category` bigint(10) NOT NULL DEFAULT '0',
  `reason` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `requester` bigint(10) NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl01_courrequ_sho_ix` (`shortname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='course requests';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_course_request`
--

LOCK TABLES `mdl01_course_request` WRITE;
/*!40000 ALTER TABLE `mdl01_course_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_course_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_course_sections`
--

DROP TABLE IF EXISTS `mdl01_course_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_course_sections` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `section` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` longtext COLLATE utf8mb4_unicode_ci,
  `summaryformat` tinyint(2) NOT NULL DEFAULT '0',
  `sequence` longtext COLLATE utf8mb4_unicode_ci,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `availability` longtext COLLATE utf8mb4_unicode_ci,
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_coursect_cousec_uix` (`course`,`section`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='to define the sections for each course';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_course_sections`
--

LOCK TABLES `mdl01_course_sections` WRITE;
/*!40000 ALTER TABLE `mdl01_course_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_course_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_data`
--

DROP TABLE IF EXISTS `mdl01_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_data` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `comments` smallint(4) NOT NULL DEFAULT '0',
  `timeavailablefrom` bigint(10) NOT NULL DEFAULT '0',
  `timeavailableto` bigint(10) NOT NULL DEFAULT '0',
  `timeviewfrom` bigint(10) NOT NULL DEFAULT '0',
  `timeviewto` bigint(10) NOT NULL DEFAULT '0',
  `requiredentries` int(8) NOT NULL DEFAULT '0',
  `requiredentriestoview` int(8) NOT NULL DEFAULT '0',
  `maxentries` int(8) NOT NULL DEFAULT '0',
  `rssarticles` smallint(4) NOT NULL DEFAULT '0',
  `singletemplate` longtext COLLATE utf8mb4_unicode_ci,
  `listtemplate` longtext COLLATE utf8mb4_unicode_ci,
  `listtemplateheader` longtext COLLATE utf8mb4_unicode_ci,
  `listtemplatefooter` longtext COLLATE utf8mb4_unicode_ci,
  `addtemplate` longtext COLLATE utf8mb4_unicode_ci,
  `rsstemplate` longtext COLLATE utf8mb4_unicode_ci,
  `rsstitletemplate` longtext COLLATE utf8mb4_unicode_ci,
  `csstemplate` longtext COLLATE utf8mb4_unicode_ci,
  `jstemplate` longtext COLLATE utf8mb4_unicode_ci,
  `asearchtemplate` longtext COLLATE utf8mb4_unicode_ci,
  `approval` smallint(4) NOT NULL DEFAULT '0',
  `manageapproved` smallint(4) NOT NULL DEFAULT '1',
  `scale` bigint(10) NOT NULL DEFAULT '0',
  `assessed` bigint(10) NOT NULL DEFAULT '0',
  `assesstimestart` bigint(10) NOT NULL DEFAULT '0',
  `assesstimefinish` bigint(10) NOT NULL DEFAULT '0',
  `defaultsort` bigint(10) NOT NULL DEFAULT '0',
  `defaultsortdir` smallint(4) NOT NULL DEFAULT '0',
  `editany` smallint(4) NOT NULL DEFAULT '0',
  `notification` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `completionentries` bigint(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_data_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='all database activities';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_data`
--

LOCK TABLES `mdl01_data` WRITE;
/*!40000 ALTER TABLE `mdl01_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_data_content`
--

DROP TABLE IF EXISTS `mdl01_data_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_data_content` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `fieldid` bigint(10) NOT NULL DEFAULT '0',
  `recordid` bigint(10) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `content1` longtext COLLATE utf8mb4_unicode_ci,
  `content2` longtext COLLATE utf8mb4_unicode_ci,
  `content3` longtext COLLATE utf8mb4_unicode_ci,
  `content4` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `mdl01_datacont_rec_ix` (`recordid`),
  KEY `mdl01_datacont_fie_ix` (`fieldid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='the content introduced in each record/fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_data_content`
--

LOCK TABLES `mdl01_data_content` WRITE;
/*!40000 ALTER TABLE `mdl01_data_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_data_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_data_fields`
--

DROP TABLE IF EXISTS `mdl01_data_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_data_fields` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `dataid` bigint(10) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `param1` longtext COLLATE utf8mb4_unicode_ci,
  `param2` longtext COLLATE utf8mb4_unicode_ci,
  `param3` longtext COLLATE utf8mb4_unicode_ci,
  `param4` longtext COLLATE utf8mb4_unicode_ci,
  `param5` longtext COLLATE utf8mb4_unicode_ci,
  `param6` longtext COLLATE utf8mb4_unicode_ci,
  `param7` longtext COLLATE utf8mb4_unicode_ci,
  `param8` longtext COLLATE utf8mb4_unicode_ci,
  `param9` longtext COLLATE utf8mb4_unicode_ci,
  `param10` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `mdl01_datafiel_typdat_ix` (`type`,`dataid`),
  KEY `mdl01_datafiel_dat_ix` (`dataid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='every field available';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_data_fields`
--

LOCK TABLES `mdl01_data_fields` WRITE;
/*!40000 ALTER TABLE `mdl01_data_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_data_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_data_records`
--

DROP TABLE IF EXISTS `mdl01_data_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_data_records` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `groupid` bigint(10) NOT NULL DEFAULT '0',
  `dataid` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `approved` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_datareco_dat_ix` (`dataid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='every record introduced';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_data_records`
--

LOCK TABLES `mdl01_data_records` WRITE;
/*!40000 ALTER TABLE `mdl01_data_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_data_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_editor_atto_autosave`
--

DROP TABLE IF EXISTS `mdl01_editor_atto_autosave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_editor_atto_autosave` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `elementid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL,
  `pagehash` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userid` bigint(10) NOT NULL,
  `drafttext` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `draftid` bigint(10) DEFAULT NULL,
  `pageinstance` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_editattoauto_eleconu_uix` (`elementid`,`contextid`,`userid`,`pagehash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Draft text that is auto-saved every 5 seconds while an edito';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_editor_atto_autosave`
--

LOCK TABLES `mdl01_editor_atto_autosave` WRITE;
/*!40000 ALTER TABLE `mdl01_editor_atto_autosave` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_editor_atto_autosave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_enrol`
--

DROP TABLE IF EXISTS `mdl01_enrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_enrol` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `enrol` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` bigint(10) NOT NULL DEFAULT '0',
  `courseid` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enrolperiod` bigint(10) DEFAULT '0',
  `enrolstartdate` bigint(10) DEFAULT '0',
  `enrolenddate` bigint(10) DEFAULT '0',
  `expirynotify` tinyint(1) DEFAULT '0',
  `expirythreshold` bigint(10) DEFAULT '0',
  `notifyall` tinyint(1) DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roleid` bigint(10) DEFAULT '0',
  `customint1` bigint(10) DEFAULT NULL,
  `customint2` bigint(10) DEFAULT NULL,
  `customint3` bigint(10) DEFAULT NULL,
  `customint4` bigint(10) DEFAULT NULL,
  `customint5` bigint(10) DEFAULT NULL,
  `customint6` bigint(10) DEFAULT NULL,
  `customint7` bigint(10) DEFAULT NULL,
  `customint8` bigint(10) DEFAULT NULL,
  `customchar1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customchar2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customchar3` varchar(1333) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customdec1` decimal(12,7) DEFAULT NULL,
  `customdec2` decimal(12,7) DEFAULT NULL,
  `customtext1` longtext COLLATE utf8mb4_unicode_ci,
  `customtext2` longtext COLLATE utf8mb4_unicode_ci,
  `customtext3` longtext COLLATE utf8mb4_unicode_ci,
  `customtext4` longtext COLLATE utf8mb4_unicode_ci,
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_enro_enr_ix` (`enrol`),
  KEY `mdl01_enro_cou_ix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Instances of enrolment plugins used in courses, fields marke';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_enrol`
--

LOCK TABLES `mdl01_enrol` WRITE;
/*!40000 ALTER TABLE `mdl01_enrol` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_enrol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_enrol_flatfile`
--

DROP TABLE IF EXISTS `mdl01_enrol_flatfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_enrol_flatfile` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `action` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `roleid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `courseid` bigint(10) NOT NULL,
  `timestart` bigint(10) NOT NULL DEFAULT '0',
  `timeend` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_enroflat_cou_ix` (`courseid`),
  KEY `mdl01_enroflat_use_ix` (`userid`),
  KEY `mdl01_enroflat_rol_ix` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='enrol_flatfile table retrofitted from MySQL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_enrol_flatfile`
--

LOCK TABLES `mdl01_enrol_flatfile` WRITE;
/*!40000 ALTER TABLE `mdl01_enrol_flatfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_enrol_flatfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_enrol_lti_lti2_consumer`
--

DROP TABLE IF EXISTS `mdl01_enrol_lti_lti2_consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_enrol_lti_lti2_consumer` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `consumerkey256` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `consumerkey` longtext COLLATE utf8mb4_unicode_ci,
  `secret` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ltiversion` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consumername` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consumerversion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consumerguid` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile` longtext COLLATE utf8mb4_unicode_ci,
  `toolproxy` longtext COLLATE utf8mb4_unicode_ci,
  `settings` longtext COLLATE utf8mb4_unicode_ci,
  `protected` tinyint(1) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `enablefrom` bigint(10) DEFAULT NULL,
  `enableuntil` bigint(10) DEFAULT NULL,
  `lastaccess` bigint(10) DEFAULT NULL,
  `created` bigint(10) NOT NULL,
  `updated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_enroltilti2cons_con_uix` (`consumerkey256`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='LTI consumers interacting with moodle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_enrol_lti_lti2_consumer`
--

LOCK TABLES `mdl01_enrol_lti_lti2_consumer` WRITE;
/*!40000 ALTER TABLE `mdl01_enrol_lti_lti2_consumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_enrol_lti_lti2_consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_enrol_lti_lti2_context`
--

DROP TABLE IF EXISTS `mdl01_enrol_lti_lti2_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_enrol_lti_lti2_context` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `consumerid` bigint(11) NOT NULL,
  `lticontextkey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` longtext COLLATE utf8mb4_unicode_ci,
  `created` bigint(10) NOT NULL,
  `updated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_enroltilti2cont_con_ix` (`consumerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Information about a specific LTI contexts from the consumers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_enrol_lti_lti2_context`
--

LOCK TABLES `mdl01_enrol_lti_lti2_context` WRITE;
/*!40000 ALTER TABLE `mdl01_enrol_lti_lti2_context` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_enrol_lti_lti2_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_enrol_lti_lti2_nonce`
--

DROP TABLE IF EXISTS `mdl01_enrol_lti_lti2_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_enrol_lti_lti2_nonce` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `consumerid` bigint(11) NOT NULL,
  `value` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_enroltilti2nonc_con_ix` (`consumerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Nonce used for authentication between moodle and a consumer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_enrol_lti_lti2_nonce`
--

LOCK TABLES `mdl01_enrol_lti_lti2_nonce` WRITE;
/*!40000 ALTER TABLE `mdl01_enrol_lti_lti2_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_enrol_lti_lti2_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_enrol_lti_lti2_resource_link`
--

DROP TABLE IF EXISTS `mdl01_enrol_lti_lti2_resource_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_enrol_lti_lti2_resource_link` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(11) DEFAULT NULL,
  `consumerid` bigint(11) DEFAULT NULL,
  `ltiresourcelinkkey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `settings` longtext COLLATE utf8mb4_unicode_ci,
  `primaryresourcelinkid` bigint(11) DEFAULT NULL,
  `shareapproved` tinyint(1) DEFAULT NULL,
  `created` bigint(10) NOT NULL,
  `updated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_enroltilti2resolink_c_ix` (`contextid`),
  KEY `mdl01_enroltilti2resolink_p_ix` (`primaryresourcelinkid`),
  KEY `mdl01_enroltilti2resolink_2_ix` (`consumerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Link from the consumer to the tool';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_enrol_lti_lti2_resource_link`
--

LOCK TABLES `mdl01_enrol_lti_lti2_resource_link` WRITE;
/*!40000 ALTER TABLE `mdl01_enrol_lti_lti2_resource_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_enrol_lti_lti2_resource_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_enrol_lti_lti2_share_key`
--

DROP TABLE IF EXISTS `mdl01_enrol_lti_lti2_share_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_enrol_lti_lti2_share_key` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `sharekey` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `resourcelinkid` bigint(11) NOT NULL,
  `autoapprove` tinyint(1) NOT NULL,
  `expires` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_enroltilti2sharkey_s_uix` (`sharekey`),
  UNIQUE KEY `mdl01_enroltilti2sharkey_r_uix` (`resourcelinkid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Resource link share key';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_enrol_lti_lti2_share_key`
--

LOCK TABLES `mdl01_enrol_lti_lti2_share_key` WRITE;
/*!40000 ALTER TABLE `mdl01_enrol_lti_lti2_share_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_enrol_lti_lti2_share_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_enrol_lti_lti2_tool_proxy`
--

DROP TABLE IF EXISTS `mdl01_enrol_lti_lti2_tool_proxy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_enrol_lti_lti2_tool_proxy` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `toolproxykey` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `consumerid` bigint(11) NOT NULL,
  `toolproxy` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` bigint(10) NOT NULL,
  `updated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_enroltilti2toolprox__uix` (`toolproxykey`),
  KEY `mdl01_enroltilti2toolprox_c_ix` (`consumerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='A tool proxy between moodle and a consumer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_enrol_lti_lti2_tool_proxy`
--

LOCK TABLES `mdl01_enrol_lti_lti2_tool_proxy` WRITE;
/*!40000 ALTER TABLE `mdl01_enrol_lti_lti2_tool_proxy` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_enrol_lti_lti2_tool_proxy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_enrol_lti_lti2_user_result`
--

DROP TABLE IF EXISTS `mdl01_enrol_lti_lti2_user_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_enrol_lti_lti2_user_result` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `resourcelinkid` bigint(11) NOT NULL,
  `ltiuserkey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ltiresultsourcedid` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` bigint(10) NOT NULL,
  `updated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_enroltilti2userresu_r_ix` (`resourcelinkid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Results for each user for each resource link';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_enrol_lti_lti2_user_result`
--

LOCK TABLES `mdl01_enrol_lti_lti2_user_result` WRITE;
/*!40000 ALTER TABLE `mdl01_enrol_lti_lti2_user_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_enrol_lti_lti2_user_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_enrol_lti_tool_consumer_map`
--

DROP TABLE IF EXISTS `mdl01_enrol_lti_tool_consumer_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_enrol_lti_tool_consumer_map` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `toolid` bigint(11) NOT NULL,
  `consumerid` bigint(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_enroltitoolconsmap_to_ix` (`toolid`),
  KEY `mdl01_enroltitoolconsmap_co_ix` (`consumerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Table that maps the published tool to tool consumers.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_enrol_lti_tool_consumer_map`
--

LOCK TABLES `mdl01_enrol_lti_tool_consumer_map` WRITE;
/*!40000 ALTER TABLE `mdl01_enrol_lti_tool_consumer_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_enrol_lti_tool_consumer_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_enrol_lti_tools`
--

DROP TABLE IF EXISTS `mdl01_enrol_lti_tools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_enrol_lti_tools` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `enrolid` bigint(10) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `institution` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `timezone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '99',
  `maxenrolled` bigint(10) NOT NULL DEFAULT '0',
  `maildisplay` tinyint(2) NOT NULL DEFAULT '2',
  `city` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gradesync` tinyint(1) NOT NULL DEFAULT '0',
  `gradesynccompletion` tinyint(1) NOT NULL DEFAULT '0',
  `membersync` tinyint(1) NOT NULL DEFAULT '0',
  `membersyncmode` tinyint(1) NOT NULL DEFAULT '0',
  `roleinstructor` bigint(10) NOT NULL,
  `rolelearner` bigint(10) NOT NULL,
  `secret` longtext COLLATE utf8mb4_unicode_ci,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_enroltitool_enr_ix` (`enrolid`),
  KEY `mdl01_enroltitool_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='List of tools provided to the remote system';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_enrol_lti_tools`
--

LOCK TABLES `mdl01_enrol_lti_tools` WRITE;
/*!40000 ALTER TABLE `mdl01_enrol_lti_tools` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_enrol_lti_tools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_enrol_lti_users`
--

DROP TABLE IF EXISTS `mdl01_enrol_lti_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_enrol_lti_users` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `toolid` bigint(10) NOT NULL,
  `serviceurl` longtext COLLATE utf8mb4_unicode_ci,
  `sourceid` longtext COLLATE utf8mb4_unicode_ci,
  `consumerkey` longtext COLLATE utf8mb4_unicode_ci,
  `consumersecret` longtext COLLATE utf8mb4_unicode_ci,
  `membershipsurl` longtext COLLATE utf8mb4_unicode_ci,
  `membershipsid` longtext COLLATE utf8mb4_unicode_ci,
  `lastgrade` decimal(10,5) DEFAULT NULL,
  `lastaccess` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_enroltiuser_use_ix` (`userid`),
  KEY `mdl01_enroltiuser_too_ix` (`toolid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='User access log and gradeback data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_enrol_lti_users`
--

LOCK TABLES `mdl01_enrol_lti_users` WRITE;
/*!40000 ALTER TABLE `mdl01_enrol_lti_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_enrol_lti_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_enrol_paypal`
--

DROP TABLE IF EXISTS `mdl01_enrol_paypal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_enrol_paypal` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `business` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `receiver_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `receiver_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `instanceid` bigint(10) NOT NULL DEFAULT '0',
  `memo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_name1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_selection1_x` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_name2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_selection2_x` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pending_reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `reason_code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `txn_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `parent_txn_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `payment_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timeupdated` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Holds all known information about PayPal transactions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_enrol_paypal`
--

LOCK TABLES `mdl01_enrol_paypal` WRITE;
/*!40000 ALTER TABLE `mdl01_enrol_paypal` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_enrol_paypal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_event`
--

DROP TABLE IF EXISTS `mdl01_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_event` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `format` smallint(4) NOT NULL DEFAULT '0',
  `categoryid` bigint(10) NOT NULL DEFAULT '0',
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `groupid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `repeatid` bigint(10) NOT NULL DEFAULT '0',
  `modulename` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instance` bigint(10) NOT NULL DEFAULT '0',
  `type` smallint(4) NOT NULL DEFAULT '0',
  `eventtype` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timestart` bigint(10) NOT NULL DEFAULT '0',
  `timeduration` bigint(10) NOT NULL DEFAULT '0',
  `timesort` bigint(10) DEFAULT NULL,
  `visible` smallint(4) NOT NULL DEFAULT '1',
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sequence` bigint(10) NOT NULL DEFAULT '1',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `subscriptionid` bigint(10) DEFAULT NULL,
  `priority` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_even_cou_ix` (`courseid`),
  KEY `mdl01_even_use_ix` (`userid`),
  KEY `mdl01_even_tim_ix` (`timestart`),
  KEY `mdl01_even_tim2_ix` (`timeduration`),
  KEY `mdl01_even_typtim_ix` (`type`,`timesort`),
  KEY `mdl01_even_grocoucatvisuse_ix` (`groupid`,`courseid`,`categoryid`,`visible`,`userid`),
  KEY `mdl01_even_cat_ix` (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='For everything with a time associated to it';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_event`
--

LOCK TABLES `mdl01_event` WRITE;
/*!40000 ALTER TABLE `mdl01_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_event_subscriptions`
--

DROP TABLE IF EXISTS `mdl01_event_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_event_subscriptions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `categoryid` bigint(10) NOT NULL DEFAULT '0',
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `groupid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `eventtype` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pollinterval` bigint(10) NOT NULL DEFAULT '0',
  `lastupdated` bigint(10) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Tracks subscriptions to remote calendars.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_event_subscriptions`
--

LOCK TABLES `mdl01_event_subscriptions` WRITE;
/*!40000 ALTER TABLE `mdl01_event_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_event_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_events_handlers`
--

DROP TABLE IF EXISTS `mdl01_events_handlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_events_handlers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(166) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `component` varchar(166) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `handlerfile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `handlerfunction` longtext COLLATE utf8mb4_unicode_ci,
  `schedule` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` bigint(10) NOT NULL DEFAULT '0',
  `internal` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_evenhand_evecom_uix` (`eventname`,`component`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table is for storing which components requests what typ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_events_handlers`
--

LOCK TABLES `mdl01_events_handlers` WRITE;
/*!40000 ALTER TABLE `mdl01_events_handlers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_events_handlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_events_queue`
--

DROP TABLE IF EXISTS `mdl01_events_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_events_queue` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `eventdata` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `stackdump` longtext COLLATE utf8mb4_unicode_ci,
  `userid` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_evenqueu_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table is for storing queued events. It stores only one ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_events_queue`
--

LOCK TABLES `mdl01_events_queue` WRITE;
/*!40000 ALTER TABLE `mdl01_events_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_events_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_events_queue_handlers`
--

DROP TABLE IF EXISTS `mdl01_events_queue_handlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_events_queue_handlers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `queuedeventid` bigint(10) NOT NULL,
  `handlerid` bigint(10) NOT NULL,
  `status` bigint(10) DEFAULT NULL,
  `errormessage` longtext COLLATE utf8mb4_unicode_ci,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_evenqueuhand_que_ix` (`queuedeventid`),
  KEY `mdl01_evenqueuhand_han_ix` (`handlerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This is the list of queued handlers for processing. The even';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_events_queue_handlers`
--

LOCK TABLES `mdl01_events_queue_handlers` WRITE;
/*!40000 ALTER TABLE `mdl01_events_queue_handlers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_events_queue_handlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_external_functions`
--

DROP TABLE IF EXISTS `mdl01_external_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_external_functions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `classname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `methodname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `classpath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `capabilities` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `services` varchar(1333) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_extefunc_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=472 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='list of all external functions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_external_functions`
--

LOCK TABLES `mdl01_external_functions` WRITE;
/*!40000 ALTER TABLE `mdl01_external_functions` DISABLE KEYS */;
INSERT INTO `mdl01_external_functions` VALUES (1,'core_auth_confirm_user','core_auth_external','confirm_user',NULL,'moodle','',NULL),(2,'core_auth_request_password_reset','core_auth_external','request_password_reset',NULL,'moodle','',NULL),(3,'core_auth_is_minor','core_auth_external','is_minor',NULL,'moodle','',NULL),(4,'core_auth_is_age_digital_consent_verification_enabled','core_auth_external','is_age_digital_consent_verification_enabled',NULL,'moodle','',NULL),(5,'core_badges_get_user_badges','core_badges_external','get_user_badges',NULL,'moodle','moodle/badges:viewotherbadges','moodle_mobile_app'),(6,'core_calendar_get_calendar_monthly_view','core_calendar_external','get_calendar_monthly_view','calendar/externallib.php','moodle','','moodle_mobile_app'),(7,'core_calendar_get_calendar_day_view','core_calendar_external','get_calendar_day_view','calendar/externallib.php','moodle','','moodle_mobile_app'),(8,'core_calendar_get_calendar_upcoming_view','core_calendar_external','get_calendar_upcoming_view','calendar/externallib.php','moodle','','moodle_mobile_app'),(9,'core_calendar_update_event_start_day','core_calendar_external','update_event_start_day','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries',NULL),(10,'core_calendar_create_calendar_events','core_calendar_external','create_calendar_events','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries','moodle_mobile_app'),(11,'core_calendar_delete_calendar_events','core_calendar_external','delete_calendar_events','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries','moodle_mobile_app'),(12,'core_calendar_get_calendar_events','core_calendar_external','get_calendar_events','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries','moodle_mobile_app'),(13,'core_calendar_get_action_events_by_timesort','core_calendar_external','get_calendar_action_events_by_timesort','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries','moodle_mobile_app'),(14,'core_calendar_get_action_events_by_course','core_calendar_external','get_calendar_action_events_by_course','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries','moodle_mobile_app'),(15,'core_calendar_get_action_events_by_courses','core_calendar_external','get_calendar_action_events_by_courses','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries','moodle_mobile_app'),(16,'core_calendar_get_calendar_event_by_id','core_calendar_external','get_calendar_event_by_id','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries','moodle_mobile_app'),(17,'core_calendar_submit_create_update_form','core_calendar_external','submit_create_update_form','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries',NULL),(18,'core_cohort_add_cohort_members','core_cohort_external','add_cohort_members','cohort/externallib.php','moodle','moodle/cohort:assign',NULL),(19,'core_cohort_create_cohorts','core_cohort_external','create_cohorts','cohort/externallib.php','moodle','moodle/cohort:manage',NULL),(20,'core_cohort_delete_cohort_members','core_cohort_external','delete_cohort_members','cohort/externallib.php','moodle','moodle/cohort:assign',NULL),(21,'core_cohort_delete_cohorts','core_cohort_external','delete_cohorts','cohort/externallib.php','moodle','moodle/cohort:manage',NULL),(22,'core_cohort_get_cohort_members','core_cohort_external','get_cohort_members','cohort/externallib.php','moodle','moodle/cohort:view',NULL),(23,'core_cohort_search_cohorts','core_cohort_external','search_cohorts','cohort/externallib.php','moodle','moodle/cohort:view',NULL),(24,'core_cohort_get_cohorts','core_cohort_external','get_cohorts','cohort/externallib.php','moodle','moodle/cohort:view',NULL),(25,'core_cohort_update_cohorts','core_cohort_external','update_cohorts','cohort/externallib.php','moodle','moodle/cohort:manage',NULL),(26,'core_comment_get_comments','core_comment_external','get_comments',NULL,'moodle','moodle/comment:view','moodle_mobile_app'),(27,'core_completion_get_activities_completion_status','core_completion_external','get_activities_completion_status',NULL,'moodle','','moodle_mobile_app'),(28,'core_completion_get_course_completion_status','core_completion_external','get_course_completion_status',NULL,'moodle','report/completion:view','moodle_mobile_app'),(29,'core_completion_mark_course_self_completed','core_completion_external','mark_course_self_completed',NULL,'moodle','','moodle_mobile_app'),(30,'core_completion_update_activity_completion_status_manually','core_completion_external','update_activity_completion_status_manually',NULL,'moodle','','moodle_mobile_app'),(31,'core_completion_override_activity_completion_status','core_completion_external','override_activity_completion_status',NULL,'moodle','moodle/course:overridecompletion',NULL),(32,'core_course_create_categories','core_course_external','create_categories','course/externallib.php','moodle','moodle/category:manage',NULL),(33,'core_course_create_courses','core_course_external','create_courses','course/externallib.php','moodle','moodle/course:create, moodle/course:visibility',NULL),(34,'core_course_delete_categories','core_course_external','delete_categories','course/externallib.php','moodle','moodle/category:manage',NULL),(35,'core_course_delete_courses','core_course_external','delete_courses','course/externallib.php','moodle','moodle/course:delete',NULL),(36,'core_course_delete_modules','core_course_external','delete_modules','course/externallib.php','moodle','moodle/course:manageactivities',NULL),(37,'core_course_duplicate_course','core_course_external','duplicate_course','course/externallib.php','moodle','moodle/backup:backupcourse, moodle/restore:restorecourse, moodle/course:create',NULL),(38,'core_course_get_categories','core_course_external','get_categories','course/externallib.php','moodle','moodle/category:viewhiddencategories','moodle_mobile_app'),(39,'core_course_get_contents','core_course_external','get_course_contents','course/externallib.php','moodle','moodle/course:update, moodle/course:viewhiddencourses','moodle_mobile_app'),(40,'core_course_get_course_module','core_course_external','get_course_module','course/externallib.php','moodle','','moodle_mobile_app'),(41,'core_course_get_course_module_by_instance','core_course_external','get_course_module_by_instance','course/externallib.php','moodle','','moodle_mobile_app'),(42,'core_course_get_module','core_course_external','get_module','course/externallib.php','moodle','',NULL),(43,'core_course_edit_module','core_course_external','edit_module','course/externallib.php','moodle','',NULL),(44,'core_course_edit_section','core_course_external','edit_section','course/externallib.php','moodle','',NULL),(45,'core_course_get_courses','core_course_external','get_courses','course/externallib.php','moodle','moodle/course:view, moodle/course:update, moodle/course:viewhiddencourses','moodle_mobile_app'),(46,'core_course_import_course','core_course_external','import_course','course/externallib.php','moodle','moodle/backup:backuptargetimport, moodle/restore:restoretargetimport',NULL),(47,'core_course_search_courses','core_course_external','search_courses','course/externallib.php','moodle','','moodle_mobile_app'),(48,'core_course_update_categories','core_course_external','update_categories','course/externallib.php','moodle','moodle/category:manage',NULL),(49,'core_course_update_courses','core_course_external','update_courses','course/externallib.php','moodle','moodle/course:update, moodle/course:changecategory, moodle/course:changefullname, moodle/course:changeshortname, moodle/course:changeidnumber, moodle/course:changesummary, moodle/course:visibility',NULL),(50,'core_course_view_course','core_course_external','view_course','course/externallib.php','moodle','','moodle_mobile_app'),(51,'core_course_get_activities_overview','core_course_external','get_activities_overview','course/externallib.php','moodle','','moodle_mobile_app'),(52,'core_course_get_user_navigation_options','core_course_external','get_user_navigation_options','course/externallib.php','moodle','','moodle_mobile_app'),(53,'core_course_get_user_administration_options','core_course_external','get_user_administration_options','course/externallib.php','moodle','','moodle_mobile_app'),(54,'core_course_get_courses_by_field','core_course_external','get_courses_by_field','course/externallib.php','moodle','','moodle_mobile_app'),(55,'core_course_check_updates','core_course_external','check_updates','course/externallib.php','moodle','','moodle_mobile_app'),(56,'core_course_get_updates_since','core_course_external','get_updates_since','course/externallib.php','moodle','','moodle_mobile_app'),(57,'core_enrol_get_course_enrolment_methods','core_enrol_external','get_course_enrolment_methods','enrol/externallib.php','moodle','','moodle_mobile_app'),(58,'core_enrol_get_enrolled_users','core_enrol_external','get_enrolled_users','enrol/externallib.php','moodle','moodle/user:viewdetails, moodle/user:viewhiddendetails, moodle/course:useremail, moodle/user:update, moodle/site:accessallgroups','moodle_mobile_app'),(59,'core_enrol_get_enrolled_users_with_capability','core_enrol_external','get_enrolled_users_with_capability','enrol/externallib.php','moodle','',NULL),(60,'core_enrol_get_potential_users','core_enrol_external','get_potential_users','enrol/externallib.php','moodle','moodle/course:enrolreview',NULL),(61,'core_enrol_get_users_courses','core_enrol_external','get_users_courses','enrol/externallib.php','moodle','moodle/course:viewparticipants','moodle_mobile_app'),(62,'core_enrol_edit_user_enrolment','core_enrol_external','edit_user_enrolment','enrol/externallib.php','moodle','',NULL),(63,'core_enrol_unenrol_user_enrolment','core_enrol_external','unenrol_user_enrolment','enrol/externallib.php','moodle','',NULL),(64,'core_fetch_notifications','core_external','fetch_notifications','lib/external/externallib.php','moodle','',NULL),(65,'core_files_get_files','core_files_external','get_files','files/externallib.php','moodle','','moodle_mobile_app'),(66,'core_files_upload','core_files_external','upload','files/externallib.php','moodle','',NULL),(67,'core_form_get_filetypes_browser_data','core_form\\external','get_filetypes_browser_data',NULL,'moodle','',NULL),(68,'core_get_component_strings','core_external','get_component_strings','lib/external/externallib.php','moodle','','moodle_mobile_app'),(69,'core_get_fragment','core_external','get_fragment','lib/external/externallib.php','moodle','',NULL),(70,'core_get_string','core_external','get_string','lib/external/externallib.php','moodle','',NULL),(71,'core_get_strings','core_external','get_strings','lib/external/externallib.php','moodle','',NULL),(72,'core_get_user_dates','core_external','get_user_dates','lib/external/externallib.php','moodle','',NULL),(73,'core_grades_get_grades','core_grades_external','get_grades',NULL,'moodle','moodle/grade:view, moodle/grade:viewall, moodle/grade:viewhidden',NULL),(74,'core_grades_update_grades','core_grades_external','update_grades',NULL,'moodle','',NULL),(75,'core_grading_get_definitions','core_grading_external','get_definitions',NULL,'moodle','',NULL),(76,'core_grading_get_gradingform_instances','core_grading_external','get_gradingform_instances',NULL,'moodle','',NULL),(77,'core_grading_save_definitions','core_grading_external','save_definitions',NULL,'moodle','',NULL),(78,'core_group_add_group_members','core_group_external','add_group_members','group/externallib.php','moodle','moodle/course:managegroups',NULL),(79,'core_group_assign_grouping','core_group_external','assign_grouping','group/externallib.php','moodle','',NULL),(80,'core_group_create_groupings','core_group_external','create_groupings','group/externallib.php','moodle','',NULL),(81,'core_group_create_groups','core_group_external','create_groups','group/externallib.php','moodle','moodle/course:managegroups',NULL),(82,'core_group_delete_group_members','core_group_external','delete_group_members','group/externallib.php','moodle','moodle/course:managegroups',NULL),(83,'core_group_delete_groupings','core_group_external','delete_groupings','group/externallib.php','moodle','',NULL),(84,'core_group_delete_groups','core_group_external','delete_groups','group/externallib.php','moodle','moodle/course:managegroups',NULL),(85,'core_group_get_activity_allowed_groups','core_group_external','get_activity_allowed_groups','group/externallib.php','moodle','','moodle_mobile_app'),(86,'core_group_get_activity_groupmode','core_group_external','get_activity_groupmode','group/externallib.php','moodle','','moodle_mobile_app'),(87,'core_group_get_course_groupings','core_group_external','get_course_groupings','group/externallib.php','moodle','',NULL),(88,'core_group_get_course_groups','core_group_external','get_course_groups','group/externallib.php','moodle','moodle/course:managegroups',NULL),(89,'core_group_get_course_user_groups','core_group_external','get_course_user_groups','group/externallib.php','moodle','moodle/course:managegroups','moodle_mobile_app'),(90,'core_group_get_group_members','core_group_external','get_group_members','group/externallib.php','moodle','moodle/course:managegroups',NULL),(91,'core_group_get_groupings','core_group_external','get_groupings','group/externallib.php','moodle','',NULL),(92,'core_group_get_groups','core_group_external','get_groups','group/externallib.php','moodle','moodle/course:managegroups',NULL),(93,'core_group_unassign_grouping','core_group_external','unassign_grouping','group/externallib.php','moodle','',NULL),(94,'core_group_update_groupings','core_group_external','update_groupings','group/externallib.php','moodle','',NULL),(95,'core_message_block_contacts','core_message_external','block_contacts','message/externallib.php','moodle','','moodle_mobile_app'),(96,'core_message_create_contacts','core_message_external','create_contacts','message/externallib.php','moodle','','moodle_mobile_app'),(97,'core_message_delete_contacts','core_message_external','delete_contacts','message/externallib.php','moodle','','moodle_mobile_app'),(98,'core_message_delete_conversation','core_message_external','delete_conversation','message/externallib.php','moodle','moodle/site:deleteownmessage','moodle_mobile_app'),(99,'core_message_delete_message','core_message_external','delete_message','message/externallib.php','moodle','moodle/site:deleteownmessage','moodle_mobile_app'),(100,'core_message_get_blocked_users','core_message_external','get_blocked_users','message/externallib.php','moodle','','moodle_mobile_app'),(101,'core_message_data_for_messagearea_search_messages','core_message_external','data_for_messagearea_search_messages','message/externallib.php','moodle','','moodle_mobile_app'),(102,'core_message_data_for_messagearea_search_users','core_message_external','data_for_messagearea_search_users','message/externallib.php','moodle','',NULL),(103,'core_message_data_for_messagearea_search_users_in_course','core_message_external','data_for_messagearea_search_users_in_course','message/externallib.php','moodle','',NULL),(104,'core_message_data_for_messagearea_conversations','core_message_external','data_for_messagearea_conversations','message/externallib.php','moodle','','moodle_mobile_app'),(105,'core_message_data_for_messagearea_contacts','core_message_external','data_for_messagearea_contacts','message/externallib.php','moodle','','moodle_mobile_app'),(106,'core_message_data_for_messagearea_messages','core_message_external','data_for_messagearea_messages','message/externallib.php','moodle','','moodle_mobile_app'),(107,'core_message_data_for_messagearea_get_most_recent_message','core_message_external','data_for_messagearea_get_most_recent_message','message/externallib.php','moodle','',NULL),(108,'core_message_data_for_messagearea_get_profile','core_message_external','data_for_messagearea_get_profile','message/externallib.php','moodle','',NULL),(109,'core_message_get_contacts','core_message_external','get_contacts','message/externallib.php','moodle','','moodle_mobile_app'),(110,'core_message_get_messages','core_message_external','get_messages','message/externallib.php','moodle','','moodle_mobile_app'),(111,'core_message_get_unread_conversations_count','core_message_external','get_unread_conversations_count','message/externallib.php','moodle','','moodle_mobile_app'),(112,'core_message_mark_all_notifications_as_read','core_message_external','mark_all_notifications_as_read','message/externallib.php','moodle','','moodle_mobile_app'),(113,'core_message_mark_all_messages_as_read','core_message_external','mark_all_messages_as_read','message/externallib.php','moodle','','moodle_mobile_app'),(114,'core_message_mark_message_read','core_message_external','mark_message_read','message/externallib.php','moodle','','moodle_mobile_app'),(115,'core_message_message_processor_config_form','core_message_external','message_processor_config_form','message/externallib.php','moodle','','moodle_mobile_app'),(116,'core_message_get_message_processor','core_message_external','get_message_processor','message/externallib.php','moodle','',NULL),(117,'core_message_search_contacts','core_message_external','search_contacts','message/externallib.php','moodle','','moodle_mobile_app'),(118,'core_message_send_instant_messages','core_message_external','send_instant_messages','message/externallib.php','moodle','moodle/site:sendmessage','moodle_mobile_app'),(119,'core_message_unblock_contacts','core_message_external','unblock_contacts','message/externallib.php','moodle','','moodle_mobile_app'),(120,'core_message_get_user_notification_preferences','core_message_external','get_user_notification_preferences','message/externallib.php','moodle','moodle/user:editownmessageprofile','moodle_mobile_app'),(121,'core_message_get_user_message_preferences','core_message_external','get_user_message_preferences','message/externallib.php','moodle','moodle/user:editownmessageprofile','moodle_mobile_app'),(122,'core_notes_create_notes','core_notes_external','create_notes','notes/externallib.php','moodle','moodle/notes:manage','moodle_mobile_app'),(123,'core_notes_delete_notes','core_notes_external','delete_notes','notes/externallib.php','moodle','moodle/notes:manage','moodle_mobile_app'),(124,'core_notes_get_course_notes','core_notes_external','get_course_notes','notes/externallib.php','moodle','moodle/notes:view','moodle_mobile_app'),(125,'core_notes_get_notes','core_notes_external','get_notes','notes/externallib.php','moodle','moodle/notes:view',NULL),(126,'core_notes_update_notes','core_notes_external','update_notes','notes/externallib.php','moodle','moodle/notes:manage',NULL),(127,'core_notes_view_notes','core_notes_external','view_notes','notes/externallib.php','moodle','moodle/notes:view','moodle_mobile_app'),(128,'core_output_load_template','core\\output\\external','load_template',NULL,'moodle','',NULL),(129,'core_output_load_fontawesome_icon_map','core\\output\\external','load_fontawesome_icon_map',NULL,'moodle','',NULL),(130,'core_question_update_flag','core_question_external','update_flag',NULL,'moodle','moodle/question:flag','moodle_mobile_app'),(131,'core_rating_get_item_ratings','core_rating_external','get_item_ratings',NULL,'moodle','moodle/rating:view','moodle_mobile_app'),(132,'core_rating_add_rating','core_rating_external','add_rating',NULL,'moodle','moodle/rating:rate','moodle_mobile_app'),(133,'core_role_assign_roles','core_role_external','assign_roles','enrol/externallib.php','moodle','moodle/role:assign',NULL),(134,'core_role_unassign_roles','core_role_external','unassign_roles','enrol/externallib.php','moodle','moodle/role:assign',NULL),(135,'core_tag_get_tagindex','core_tag_external','get_tagindex',NULL,'moodle','',NULL),(136,'core_tag_get_tags','core_tag_external','get_tags',NULL,'moodle','',NULL),(137,'core_tag_update_tags','core_tag_external','update_tags',NULL,'moodle','',NULL),(138,'core_update_inplace_editable','core_external','update_inplace_editable','lib/external/externallib.php','moodle','',NULL),(139,'core_user_add_user_device','core_user_external','add_user_device','user/externallib.php','moodle','','moodle_mobile_app'),(140,'core_user_add_user_private_files','core_user_external','add_user_private_files','user/externallib.php','moodle','moodle/user:manageownfiles','moodle_mobile_app'),(141,'core_user_create_users','core_user_external','create_users','user/externallib.php','moodle','moodle/user:create',NULL),(142,'core_user_delete_users','core_user_external','delete_users','user/externallib.php','moodle','moodle/user:delete',NULL),(143,'core_user_get_course_user_profiles','core_user_external','get_course_user_profiles','user/externallib.php','moodle','moodle/user:viewdetails, moodle/user:viewhiddendetails, moodle/course:useremail, moodle/user:update, moodle/site:accessallgroups','moodle_mobile_app'),(144,'core_user_get_users','core_user_external','get_users','user/externallib.php','moodle','moodle/user:viewdetails, moodle/user:viewhiddendetails, moodle/course:useremail, moodle/user:update',NULL),(145,'core_user_get_users_by_field','core_user_external','get_users_by_field','user/externallib.php','moodle','moodle/user:viewdetails, moodle/user:viewhiddendetails, moodle/course:useremail, moodle/user:update','moodle_mobile_app'),(146,'core_user_remove_user_device','core_user_external','remove_user_device','user/externallib.php','moodle','','moodle_mobile_app'),(147,'core_user_update_users','core_user_external','update_users','user/externallib.php','moodle','moodle/user:update',NULL),(148,'core_user_update_user_preferences','core_user_external','update_user_preferences','user/externallib.php','moodle','moodle/user:editownmessageprofile, moodle/user:editmessageprofile','moodle_mobile_app'),(149,'core_user_view_user_list','core_user_external','view_user_list','user/externallib.php','moodle','moodle/course:viewparticipants','moodle_mobile_app'),(150,'core_user_view_user_profile','core_user_external','view_user_profile','user/externallib.php','moodle','moodle/user:viewdetails','moodle_mobile_app'),(151,'core_user_get_user_preferences','core_user_external','get_user_preferences','user/externallib.php','moodle','','moodle_mobile_app'),(152,'core_user_update_picture','core_user_external','update_picture','user/externallib.php','moodle','moodle/user:editownprofile, moodle/user:editprofile','moodle_mobile_app'),(153,'core_user_set_user_preferences','core_user_external','set_user_preferences','user/externallib.php','moodle','moodle/site:config',NULL),(154,'core_user_agree_site_policy','core_user_external','agree_site_policy','user/externallib.php','moodle','','moodle_mobile_app'),(155,'core_user_get_private_files_info','core_user_external','get_private_files_info','user/externallib.php','moodle','moodle/user:manageownfiles','moodle_mobile_app'),(156,'core_competency_create_competency_framework','core_competency\\external','create_competency_framework',NULL,'moodle','moodle/competency:competencymanage',NULL),(157,'core_competency_read_competency_framework','core_competency\\external','read_competency_framework',NULL,'moodle','moodle/competency:competencyview',NULL),(158,'core_competency_duplicate_competency_framework','core_competency\\external','duplicate_competency_framework',NULL,'moodle','moodle/competency:competencymanage',NULL),(159,'core_competency_delete_competency_framework','core_competency\\external','delete_competency_framework',NULL,'moodle','moodle/competency:competencymanage',NULL),(160,'core_competency_update_competency_framework','core_competency\\external','update_competency_framework',NULL,'moodle','moodle/competency:competencymanage',NULL),(161,'core_competency_list_competency_frameworks','core_competency\\external','list_competency_frameworks',NULL,'moodle','moodle/competency:competencyview',NULL),(162,'core_competency_count_competency_frameworks','core_competency\\external','count_competency_frameworks',NULL,'moodle','moodle/competency:competencyview',NULL),(163,'core_competency_competency_framework_viewed','core_competency\\external','competency_framework_viewed',NULL,'moodle','moodle/competency:competencyview',NULL),(164,'core_competency_create_competency','core_competency\\external','create_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(165,'core_competency_read_competency','core_competency\\external','read_competency',NULL,'moodle','moodle/competency:competencyview',NULL),(166,'core_competency_competency_viewed','core_competency\\external','competency_viewed',NULL,'moodle','moodle/competency:competencyview','moodle_mobile_app'),(167,'core_competency_delete_competency','core_competency\\external','delete_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(168,'core_competency_update_competency','core_competency\\external','update_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(169,'core_competency_list_competencies','core_competency\\external','list_competencies',NULL,'moodle','moodle/competency:competencyview',NULL),(170,'core_competency_list_competencies_in_template','core_competency\\external','list_competencies_in_template',NULL,'moodle','moodle/competency:competencyview',NULL),(171,'core_competency_count_competencies','core_competency\\external','count_competencies',NULL,'moodle','moodle/competency:competencyview',NULL),(172,'core_competency_count_competencies_in_template','core_competency\\external','count_competencies_in_template',NULL,'moodle','moodle/competency:competencyview',NULL),(173,'core_competency_search_competencies','core_competency\\external','search_competencies',NULL,'moodle','moodle/competency:competencyview',NULL),(174,'core_competency_set_parent_competency','core_competency\\external','set_parent_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(175,'core_competency_move_up_competency','core_competency\\external','move_up_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(176,'core_competency_move_down_competency','core_competency\\external','move_down_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(177,'core_competency_list_course_competencies','core_competency\\external','list_course_competencies',NULL,'moodle','moodle/competency:coursecompetencyview','moodle_mobile_app'),(178,'core_competency_count_competencies_in_course','core_competency\\external','count_competencies_in_course',NULL,'moodle','moodle/competency:coursecompetencyview',NULL),(179,'core_competency_count_courses_using_competency','core_competency\\external','count_courses_using_competency',NULL,'moodle','moodle/competency:coursecompetencyview',NULL),(180,'core_competency_add_competency_to_course','core_competency\\external','add_competency_to_course',NULL,'moodle','moodle/competency:coursecompetencymanage',NULL),(181,'core_competency_add_competency_to_template','core_competency\\external','add_competency_to_template',NULL,'moodle','moodle/competency:templatemanage',NULL),(182,'core_competency_remove_competency_from_course','core_competency\\external','remove_competency_from_course',NULL,'moodle','moodle/competency:coursecompetencymanage',NULL),(183,'core_competency_set_course_competency_ruleoutcome','core_competency\\external','set_course_competency_ruleoutcome',NULL,'moodle','moodle/competency:coursecompetencymanage',NULL),(184,'core_competency_remove_competency_from_template','core_competency\\external','remove_competency_from_template',NULL,'moodle','moodle/competency:templatemanage',NULL),(185,'core_competency_reorder_course_competency','core_competency\\external','reorder_course_competency',NULL,'moodle','moodle/competency:coursecompetencymanage',NULL),(186,'core_competency_reorder_template_competency','core_competency\\external','reorder_template_competency',NULL,'moodle','moodle/competency:templatemanage',NULL),(187,'core_competency_create_template','core_competency\\external','create_template',NULL,'moodle','moodle/competency:templatemanage',NULL),(188,'core_competency_duplicate_template','core_competency\\external','duplicate_template',NULL,'moodle','moodle/competency:templatemanage',NULL),(189,'core_competency_read_template','core_competency\\external','read_template',NULL,'moodle','moodle/competency:templateview',NULL),(190,'core_competency_delete_template','core_competency\\external','delete_template',NULL,'moodle','moodle/competency:templatemanage',NULL),(191,'core_competency_update_template','core_competency\\external','update_template',NULL,'moodle','moodle/competency:templatemanage',NULL),(192,'core_competency_list_templates','core_competency\\external','list_templates',NULL,'moodle','moodle/competency:templateview',NULL),(193,'core_competency_list_templates_using_competency','core_competency\\external','list_templates_using_competency',NULL,'moodle','moodle/competency:templateview',NULL),(194,'core_competency_count_templates','core_competency\\external','count_templates',NULL,'moodle','moodle/competency:templateview',NULL),(195,'core_competency_count_templates_using_competency','core_competency\\external','count_templates_using_competency',NULL,'moodle','moodle/competency:templateview',NULL),(196,'core_competency_create_plan','core_competency\\external','create_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(197,'core_competency_update_plan','core_competency\\external','update_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(198,'core_competency_complete_plan','core_competency\\external','complete_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(199,'core_competency_reopen_plan','core_competency\\external','reopen_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(200,'core_competency_read_plan','core_competency\\external','read_plan',NULL,'moodle','moodle/competency:planviewown',NULL),(201,'core_competency_delete_plan','core_competency\\external','delete_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(202,'core_competency_list_user_plans','core_competency\\external','list_user_plans',NULL,'moodle','moodle/competency:planviewown',NULL),(203,'core_competency_list_plan_competencies','core_competency\\external','list_plan_competencies',NULL,'moodle','moodle/competency:planviewown',NULL),(204,'core_competency_add_competency_to_plan','core_competency\\external','add_competency_to_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(205,'core_competency_remove_competency_from_plan','core_competency\\external','remove_competency_from_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(206,'core_competency_reorder_plan_competency','core_competency\\external','reorder_plan_competency',NULL,'moodle','moodle/competency:planmanage',NULL),(207,'core_competency_plan_request_review','core_competency\\external','plan_request_review',NULL,'moodle','moodle/competency:planmanagedraft',NULL),(208,'core_competency_plan_start_review','core_competency\\external','plan_start_review',NULL,'moodle','moodle/competency:planmanage',NULL),(209,'core_competency_plan_stop_review','core_competency\\external','plan_stop_review',NULL,'moodle','moodle/competency:planmanage',NULL),(210,'core_competency_plan_cancel_review_request','core_competency\\external','plan_cancel_review_request',NULL,'moodle','moodle/competency:planmanagedraft',NULL),(211,'core_competency_approve_plan','core_competency\\external','approve_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(212,'core_competency_unapprove_plan','core_competency\\external','unapprove_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(213,'core_competency_template_has_related_data','core_competency\\external','template_has_related_data',NULL,'moodle','moodle/competency:templateview',NULL),(214,'core_competency_get_scale_values','core_competency\\external','get_scale_values',NULL,'moodle','moodle/competency:competencymanage','moodle_mobile_app'),(215,'core_competency_add_related_competency','core_competency\\external','add_related_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(216,'core_competency_remove_related_competency','core_competency\\external','remove_related_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(217,'core_competency_read_user_evidence','core_competency\\external','read_user_evidence',NULL,'moodle','moodle/competency:userevidenceview',NULL),(218,'core_competency_delete_user_evidence','core_competency\\external','delete_user_evidence',NULL,'moodle','moodle/competency:userevidencemanageown',NULL),(219,'core_competency_create_user_evidence_competency','core_competency\\external','create_user_evidence_competency',NULL,'moodle','moodle/competency:userevidencemanageown, moodle/competency:competencyview',NULL),(220,'core_competency_delete_user_evidence_competency','core_competency\\external','delete_user_evidence_competency',NULL,'moodle','moodle/competency:userevidencemanageown',NULL),(221,'core_competency_user_competency_cancel_review_request','core_competency\\external','user_competency_cancel_review_request',NULL,'moodle','moodle/competency:userevidencemanageown',NULL),(222,'core_competency_user_competency_request_review','core_competency\\external','user_competency_request_review',NULL,'moodle','moodle/competency:userevidencemanageown',NULL),(223,'core_competency_user_competency_start_review','core_competency\\external','user_competency_start_review',NULL,'moodle','moodle/competency:competencygrade',NULL),(224,'core_competency_user_competency_stop_review','core_competency\\external','user_competency_stop_review',NULL,'moodle','moodle/competency:competencygrade',NULL),(225,'core_competency_user_competency_viewed','core_competency\\external','user_competency_viewed',NULL,'moodle','moodle/competency:usercompetencyview','moodle_mobile_app'),(226,'core_competency_user_competency_viewed_in_plan','core_competency\\external','user_competency_viewed_in_plan',NULL,'moodle','moodle/competency:usercompetencyview','moodle_mobile_app'),(227,'core_competency_user_competency_viewed_in_course','core_competency\\external','user_competency_viewed_in_course',NULL,'moodle','moodle/competency:usercompetencyview','moodle_mobile_app'),(228,'core_competency_user_competency_plan_viewed','core_competency\\external','user_competency_plan_viewed',NULL,'moodle','moodle/competency:usercompetencyview','moodle_mobile_app'),(229,'core_competency_grade_competency','core_competency\\external','grade_competency',NULL,'moodle','moodle/competency:competencygrade',NULL),(230,'core_competency_grade_competency_in_plan','core_competency\\external','grade_competency_in_plan',NULL,'moodle','moodle/competency:competencygrade',NULL),(231,'core_competency_grade_competency_in_course','core_competency\\external','grade_competency_in_course',NULL,'moodle','moodle/competency:competencygrade','moodle_mobile_app'),(232,'core_competency_unlink_plan_from_template','core_competency\\external','unlink_plan_from_template',NULL,'moodle','moodle/competency:planmanage',NULL),(233,'core_competency_template_viewed','core_competency\\external','template_viewed',NULL,'moodle','moodle/competency:templateview',NULL),(234,'core_competency_request_review_of_user_evidence_linked_competencies','core_competency\\external','request_review_of_user_evidence_linked_competencies',NULL,'moodle','moodle/competency:userevidencemanageown',NULL),(235,'core_competency_update_course_competency_settings','core_competency\\external','update_course_competency_settings',NULL,'moodle','moodle/competency:coursecompetencyconfigure',NULL),(236,'core_competency_delete_evidence','core_competency\\external','delete_evidence',NULL,'moodle','moodle/competency:evidencedelete','moodle_mobile_app'),(237,'core_webservice_get_site_info','core_webservice_external','get_site_info','webservice/externallib.php','moodle','','moodle_mobile_app'),(238,'core_block_get_course_blocks','core_block_external','get_course_blocks',NULL,'moodle','','moodle_mobile_app'),(239,'core_filters_get_available_in_context','core_filters\\external','get_available_in_context',NULL,'moodle','','moodle_mobile_app'),(240,'mod_assign_copy_previous_attempt','mod_assign_external','copy_previous_attempt','mod/assign/externallib.php','mod_assign','mod/assign:view, mod/assign:submit',NULL),(241,'mod_assign_get_grades','mod_assign_external','get_grades','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(242,'mod_assign_get_assignments','mod_assign_external','get_assignments','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(243,'mod_assign_get_submissions','mod_assign_external','get_submissions','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(244,'mod_assign_get_user_flags','mod_assign_external','get_user_flags','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(245,'mod_assign_set_user_flags','mod_assign_external','set_user_flags','mod/assign/externallib.php','mod_assign','mod/assign:grade','moodle_mobile_app'),(246,'mod_assign_get_user_mappings','mod_assign_external','get_user_mappings','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(247,'mod_assign_revert_submissions_to_draft','mod_assign_external','revert_submissions_to_draft','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(248,'mod_assign_lock_submissions','mod_assign_external','lock_submissions','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(249,'mod_assign_unlock_submissions','mod_assign_external','unlock_submissions','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(250,'mod_assign_save_submission','mod_assign_external','save_submission','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(251,'mod_assign_submit_for_grading','mod_assign_external','submit_for_grading','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(252,'mod_assign_save_grade','mod_assign_external','save_grade','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(253,'mod_assign_save_grades','mod_assign_external','save_grades','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(254,'mod_assign_save_user_extensions','mod_assign_external','save_user_extensions','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(255,'mod_assign_reveal_identities','mod_assign_external','reveal_identities','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(256,'mod_assign_view_grading_table','mod_assign_external','view_grading_table','mod/assign/externallib.php','mod_assign','mod/assign:view, mod/assign:viewgrades','moodle_mobile_app'),(257,'mod_assign_view_submission_status','mod_assign_external','view_submission_status','mod/assign/externallib.php','mod_assign','mod/assign:view','moodle_mobile_app'),(258,'mod_assign_get_submission_status','mod_assign_external','get_submission_status','mod/assign/externallib.php','mod_assign','mod/assign:view','moodle_mobile_app'),(259,'mod_assign_list_participants','mod_assign_external','list_participants','mod/assign/externallib.php','mod_assign','mod/assign:view, mod/assign:viewgrades','moodle_mobile_app'),(260,'mod_assign_submit_grading_form','mod_assign_external','submit_grading_form','mod/assign/externallib.php','mod_assign','mod/assign:grade','moodle_mobile_app'),(261,'mod_assign_get_participant','mod_assign_external','get_participant','mod/assign/externallib.php','mod_assign','mod/assign:view, mod/assign:viewgrades','moodle_mobile_app'),(262,'mod_assign_view_assign','mod_assign_external','view_assign','mod/assign/externallib.php','mod_assign','mod/assign:view','moodle_mobile_app'),(263,'mod_book_view_book','mod_book_external','view_book',NULL,'mod_book','mod/book:read','moodle_mobile_app'),(264,'mod_book_get_books_by_courses','mod_book_external','get_books_by_courses',NULL,'mod_book','','moodle_mobile_app'),(265,'mod_chat_login_user','mod_chat_external','login_user',NULL,'mod_chat','mod/chat:chat','moodle_mobile_app'),(266,'mod_chat_get_chat_users','mod_chat_external','get_chat_users',NULL,'mod_chat','mod/chat:chat','moodle_mobile_app'),(267,'mod_chat_send_chat_message','mod_chat_external','send_chat_message',NULL,'mod_chat','mod/chat:chat','moodle_mobile_app'),(268,'mod_chat_get_chat_latest_messages','mod_chat_external','get_chat_latest_messages',NULL,'mod_chat','mod/chat:chat','moodle_mobile_app'),(269,'mod_chat_view_chat','mod_chat_external','view_chat',NULL,'mod_chat','mod/chat:chat','moodle_mobile_app'),(270,'mod_chat_get_chats_by_courses','mod_chat_external','get_chats_by_courses',NULL,'mod_chat','','moodle_mobile_app'),(271,'mod_choice_get_choice_results','mod_choice_external','get_choice_results',NULL,'mod_choice','','moodle_mobile_app'),(272,'mod_choice_get_choice_options','mod_choice_external','get_choice_options',NULL,'mod_choice','mod/choice:choose','moodle_mobile_app'),(273,'mod_choice_submit_choice_response','mod_choice_external','submit_choice_response',NULL,'mod_choice','mod/choice:choose','moodle_mobile_app'),(274,'mod_choice_view_choice','mod_choice_external','view_choice',NULL,'mod_choice','','moodle_mobile_app'),(275,'mod_choice_get_choices_by_courses','mod_choice_external','get_choices_by_courses',NULL,'mod_choice','','moodle_mobile_app'),(276,'mod_choice_delete_choice_responses','mod_choice_external','delete_choice_responses',NULL,'mod_choice','mod/choice:choose','moodle_mobile_app'),(277,'mod_data_get_databases_by_courses','mod_data_external','get_databases_by_courses',NULL,'mod_data','mod/data:viewentry','moodle_mobile_app'),(278,'mod_data_view_database','mod_data_external','view_database',NULL,'mod_data','mod/data:viewentry','moodle_mobile_app'),(279,'mod_data_get_data_access_information','mod_data_external','get_data_access_information',NULL,'mod_data','mod/data:viewentry','moodle_mobile_app'),(280,'mod_data_get_entries','mod_data_external','get_entries',NULL,'mod_data','mod/data:viewentry','moodle_mobile_app'),(281,'mod_data_get_entry','mod_data_external','get_entry',NULL,'mod_data','mod/data:viewentry','moodle_mobile_app'),(282,'mod_data_get_fields','mod_data_external','get_fields',NULL,'mod_data','mod/data:viewentry','moodle_mobile_app'),(283,'mod_data_search_entries','mod_data_external','search_entries',NULL,'mod_data','mod/data:viewentry','moodle_mobile_app'),(284,'mod_data_approve_entry','mod_data_external','approve_entry',NULL,'mod_data','mod/data:approve','moodle_mobile_app'),(285,'mod_data_delete_entry','mod_data_external','delete_entry',NULL,'mod_data','mod/data:manageentries','moodle_mobile_app'),(286,'mod_data_add_entry','mod_data_external','add_entry',NULL,'mod_data','mod/data:writeentry','moodle_mobile_app'),(287,'mod_data_update_entry','mod_data_external','update_entry',NULL,'mod_data','mod/data:writeentry','moodle_mobile_app'),(288,'mod_feedback_get_feedbacks_by_courses','mod_feedback_external','get_feedbacks_by_courses',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(289,'mod_feedback_get_feedback_access_information','mod_feedback_external','get_feedback_access_information',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(290,'mod_feedback_view_feedback','mod_feedback_external','view_feedback',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(291,'mod_feedback_get_current_completed_tmp','mod_feedback_external','get_current_completed_tmp',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(292,'mod_feedback_get_items','mod_feedback_external','get_items',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(293,'mod_feedback_launch_feedback','mod_feedback_external','launch_feedback',NULL,'mod_feedback','mod/feedback:complete','moodle_mobile_app'),(294,'mod_feedback_get_page_items','mod_feedback_external','get_page_items',NULL,'mod_feedback','mod/feedback:complete','moodle_mobile_app'),(295,'mod_feedback_process_page','mod_feedback_external','process_page',NULL,'mod_feedback','mod/feedback:complete','moodle_mobile_app'),(296,'mod_feedback_get_analysis','mod_feedback_external','get_analysis',NULL,'mod_feedback','mod/feedback:viewanalysepage','moodle_mobile_app'),(297,'mod_feedback_get_unfinished_responses','mod_feedback_external','get_unfinished_responses',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(298,'mod_feedback_get_finished_responses','mod_feedback_external','get_finished_responses',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(299,'mod_feedback_get_non_respondents','mod_feedback_external','get_non_respondents',NULL,'mod_feedback','mod/feedback:viewreports','moodle_mobile_app'),(300,'mod_feedback_get_responses_analysis','mod_feedback_external','get_responses_analysis',NULL,'mod_feedback','mod/feedback:viewreports','moodle_mobile_app'),(301,'mod_feedback_get_last_completed','mod_feedback_external','get_last_completed',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(302,'mod_folder_view_folder','mod_folder_external','view_folder',NULL,'mod_folder','mod/folder:view','moodle_mobile_app'),(303,'mod_folder_get_folders_by_courses','mod_folder_external','get_folders_by_courses',NULL,'mod_folder','mod/folder:view','moodle_mobile_app'),(304,'mod_forum_get_forums_by_courses','mod_forum_external','get_forums_by_courses','mod/forum/externallib.php','mod_forum','mod/forum:viewdiscussion','moodle_mobile_app'),(305,'mod_forum_get_forum_discussion_posts','mod_forum_external','get_forum_discussion_posts','mod/forum/externallib.php','mod_forum','mod/forum:viewdiscussion, mod/forum:viewqandawithoutposting','moodle_mobile_app'),(306,'mod_forum_get_forum_discussions_paginated','mod_forum_external','get_forum_discussions_paginated','mod/forum/externallib.php','mod_forum','mod/forum:viewdiscussion, mod/forum:viewqandawithoutposting','moodle_mobile_app'),(307,'mod_forum_view_forum','mod_forum_external','view_forum','mod/forum/externallib.php','mod_forum','mod/forum:viewdiscussion','moodle_mobile_app'),(308,'mod_forum_view_forum_discussion','mod_forum_external','view_forum_discussion','mod/forum/externallib.php','mod_forum','mod/forum:viewdiscussion','moodle_mobile_app'),(309,'mod_forum_add_discussion_post','mod_forum_external','add_discussion_post','mod/forum/externallib.php','mod_forum','mod/forum:replypost','moodle_mobile_app'),(310,'mod_forum_add_discussion','mod_forum_external','add_discussion','mod/forum/externallib.php','mod_forum','mod/forum:startdiscussion','moodle_mobile_app'),(311,'mod_forum_can_add_discussion','mod_forum_external','can_add_discussion','mod/forum/externallib.php','mod_forum','','moodle_mobile_app'),(312,'mod_glossary_get_glossaries_by_courses','mod_glossary_external','get_glossaries_by_courses',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(313,'mod_glossary_view_glossary','mod_glossary_external','view_glossary',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(314,'mod_glossary_view_entry','mod_glossary_external','view_entry',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(315,'mod_glossary_get_entries_by_letter','mod_glossary_external','get_entries_by_letter',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(316,'mod_glossary_get_entries_by_date','mod_glossary_external','get_entries_by_date',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(317,'mod_glossary_get_categories','mod_glossary_external','get_categories',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(318,'mod_glossary_get_entries_by_category','mod_glossary_external','get_entries_by_category',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(319,'mod_glossary_get_authors','mod_glossary_external','get_authors',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(320,'mod_glossary_get_entries_by_author','mod_glossary_external','get_entries_by_author',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(321,'mod_glossary_get_entries_by_author_id','mod_glossary_external','get_entries_by_author_id',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(322,'mod_glossary_get_entries_by_search','mod_glossary_external','get_entries_by_search',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(323,'mod_glossary_get_entries_by_term','mod_glossary_external','get_entries_by_term',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(324,'mod_glossary_get_entries_to_approve','mod_glossary_external','get_entries_to_approve',NULL,'mod_glossary','mod/glossary:approve','moodle_mobile_app'),(325,'mod_glossary_get_entry_by_id','mod_glossary_external','get_entry_by_id',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(326,'mod_glossary_add_entry','mod_glossary_external','add_entry',NULL,'mod_glossary','mod/glossary:write','moodle_mobile_app'),(327,'mod_imscp_view_imscp','mod_imscp_external','view_imscp',NULL,'mod_imscp','mod/imscp:view','moodle_mobile_app'),(328,'mod_imscp_get_imscps_by_courses','mod_imscp_external','get_imscps_by_courses',NULL,'mod_imscp','mod/imscp:view','moodle_mobile_app'),(329,'mod_label_get_labels_by_courses','mod_label_external','get_labels_by_courses',NULL,'mod_label','mod/label:view','moodle_mobile_app'),(330,'mod_lesson_get_lessons_by_courses','mod_lesson_external','get_lessons_by_courses',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(331,'mod_lesson_get_lesson_access_information','mod_lesson_external','get_lesson_access_information',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(332,'mod_lesson_view_lesson','mod_lesson_external','view_lesson',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(333,'mod_lesson_get_questions_attempts','mod_lesson_external','get_questions_attempts',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(334,'mod_lesson_get_user_grade','mod_lesson_external','get_user_grade',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(335,'mod_lesson_get_user_attempt_grade','mod_lesson_external','get_user_attempt_grade',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(336,'mod_lesson_get_content_pages_viewed','mod_lesson_external','get_content_pages_viewed',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(337,'mod_lesson_get_user_timers','mod_lesson_external','get_user_timers',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(338,'mod_lesson_get_pages','mod_lesson_external','get_pages',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(339,'mod_lesson_launch_attempt','mod_lesson_external','launch_attempt',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(340,'mod_lesson_get_page_data','mod_lesson_external','get_page_data',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(341,'mod_lesson_process_page','mod_lesson_external','process_page',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(342,'mod_lesson_finish_attempt','mod_lesson_external','finish_attempt',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(343,'mod_lesson_get_attempts_overview','mod_lesson_external','get_attempts_overview',NULL,'mod_lesson','mod/lesson:viewreports','moodle_mobile_app'),(344,'mod_lesson_get_user_attempt','mod_lesson_external','get_user_attempt',NULL,'mod_lesson','mod/lesson:viewreports','moodle_mobile_app'),(345,'mod_lesson_get_pages_possible_jumps','mod_lesson_external','get_pages_possible_jumps',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(346,'mod_lesson_get_lesson','mod_lesson_external','get_lesson',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(347,'mod_lti_get_tool_launch_data','mod_lti_external','get_tool_launch_data',NULL,'mod_lti','mod/lti:view','moodle_mobile_app'),(348,'mod_lti_get_ltis_by_courses','mod_lti_external','get_ltis_by_courses',NULL,'mod_lti','mod/lti:view','moodle_mobile_app'),(349,'mod_lti_view_lti','mod_lti_external','view_lti',NULL,'mod_lti','mod/lti:view','moodle_mobile_app'),(350,'mod_lti_get_tool_proxies','mod_lti_external','get_tool_proxies',NULL,'mod_lti','moodle/site:config',NULL),(351,'mod_lti_create_tool_proxy','mod_lti_external','create_tool_proxy',NULL,'mod_lti','moodle/site:config',NULL),(352,'mod_lti_delete_tool_proxy','mod_lti_external','delete_tool_proxy',NULL,'mod_lti','moodle/site:config',NULL),(353,'mod_lti_get_tool_proxy_registration_request','mod_lti_external','get_tool_proxy_registration_request',NULL,'mod_lti','moodle/site:config',NULL),(354,'mod_lti_get_tool_types','mod_lti_external','get_tool_types',NULL,'mod_lti','moodle/site:config',NULL),(355,'mod_lti_create_tool_type','mod_lti_external','create_tool_type',NULL,'mod_lti','moodle/site:config',NULL),(356,'mod_lti_update_tool_type','mod_lti_external','update_tool_type',NULL,'mod_lti','moodle/site:config',NULL),(357,'mod_lti_delete_tool_type','mod_lti_external','delete_tool_type',NULL,'mod_lti','moodle/site:config',NULL),(358,'mod_lti_is_cartridge','mod_lti_external','is_cartridge',NULL,'mod_lti','moodle/site:config',NULL),(359,'mod_page_view_page','mod_page_external','view_page',NULL,'mod_page','mod/page:view','moodle_mobile_app'),(360,'mod_page_get_pages_by_courses','mod_page_external','get_pages_by_courses',NULL,'mod_page','mod/page:view','moodle_mobile_app'),(361,'mod_quiz_get_quizzes_by_courses','mod_quiz_external','get_quizzes_by_courses',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(362,'mod_quiz_view_quiz','mod_quiz_external','view_quiz',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(363,'mod_quiz_get_user_attempts','mod_quiz_external','get_user_attempts',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(364,'mod_quiz_get_user_best_grade','mod_quiz_external','get_user_best_grade',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(365,'mod_quiz_get_combined_review_options','mod_quiz_external','get_combined_review_options',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(366,'mod_quiz_start_attempt','mod_quiz_external','start_attempt',NULL,'mod_quiz','mod/quiz:attempt','moodle_mobile_app'),(367,'mod_quiz_get_attempt_data','mod_quiz_external','get_attempt_data',NULL,'mod_quiz','mod/quiz:attempt','moodle_mobile_app'),(368,'mod_quiz_get_attempt_summary','mod_quiz_external','get_attempt_summary',NULL,'mod_quiz','mod/quiz:attempt','moodle_mobile_app'),(369,'mod_quiz_save_attempt','mod_quiz_external','save_attempt',NULL,'mod_quiz','mod/quiz:attempt','moodle_mobile_app'),(370,'mod_quiz_process_attempt','mod_quiz_external','process_attempt',NULL,'mod_quiz','mod/quiz:attempt','moodle_mobile_app'),(371,'mod_quiz_get_attempt_review','mod_quiz_external','get_attempt_review',NULL,'mod_quiz','mod/quiz:reviewmyattempts','moodle_mobile_app'),(372,'mod_quiz_view_attempt','mod_quiz_external','view_attempt',NULL,'mod_quiz','mod/quiz:attempt','moodle_mobile_app'),(373,'mod_quiz_view_attempt_summary','mod_quiz_external','view_attempt_summary',NULL,'mod_quiz','mod/quiz:attempt','moodle_mobile_app'),(374,'mod_quiz_view_attempt_review','mod_quiz_external','view_attempt_review',NULL,'mod_quiz','mod/quiz:reviewmyattempts','moodle_mobile_app'),(375,'mod_quiz_get_quiz_feedback_for_grade','mod_quiz_external','get_quiz_feedback_for_grade',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(376,'mod_quiz_get_quiz_access_information','mod_quiz_external','get_quiz_access_information',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(377,'mod_quiz_get_attempt_access_information','mod_quiz_external','get_attempt_access_information',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(378,'mod_quiz_get_quiz_required_qtypes','mod_quiz_external','get_quiz_required_qtypes',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(379,'mod_resource_view_resource','mod_resource_external','view_resource',NULL,'mod_resource','mod/resource:view','moodle_mobile_app'),(380,'mod_resource_get_resources_by_courses','mod_resource_external','get_resources_by_courses',NULL,'mod_resource','mod/resource:view','moodle_mobile_app'),(381,'mod_scorm_view_scorm','mod_scorm_external','view_scorm',NULL,'mod_scorm','','moodle_mobile_app'),(382,'mod_scorm_get_scorm_attempt_count','mod_scorm_external','get_scorm_attempt_count',NULL,'mod_scorm','','moodle_mobile_app'),(383,'mod_scorm_get_scorm_scoes','mod_scorm_external','get_scorm_scoes',NULL,'mod_scorm','','moodle_mobile_app'),(384,'mod_scorm_get_scorm_user_data','mod_scorm_external','get_scorm_user_data',NULL,'mod_scorm','','moodle_mobile_app'),(385,'mod_scorm_insert_scorm_tracks','mod_scorm_external','insert_scorm_tracks',NULL,'mod_scorm','mod/scorm:savetrack','moodle_mobile_app'),(386,'mod_scorm_get_scorm_sco_tracks','mod_scorm_external','get_scorm_sco_tracks',NULL,'mod_scorm','','moodle_mobile_app'),(387,'mod_scorm_get_scorms_by_courses','mod_scorm_external','get_scorms_by_courses',NULL,'mod_scorm','','moodle_mobile_app'),(388,'mod_scorm_launch_sco','mod_scorm_external','launch_sco',NULL,'mod_scorm','','moodle_mobile_app'),(389,'mod_survey_get_surveys_by_courses','mod_survey_external','get_surveys_by_courses',NULL,'mod_survey','','moodle_mobile_app'),(390,'mod_survey_view_survey','mod_survey_external','view_survey',NULL,'mod_survey','mod/survey:participate','moodle_mobile_app'),(391,'mod_survey_get_questions','mod_survey_external','get_questions',NULL,'mod_survey','mod/survey:participate','moodle_mobile_app'),(392,'mod_survey_submit_answers','mod_survey_external','submit_answers',NULL,'mod_survey','mod/survey:participate','moodle_mobile_app'),(393,'mod_url_view_url','mod_url_external','view_url',NULL,'mod_url','mod/url:view','moodle_mobile_app'),(394,'mod_url_get_urls_by_courses','mod_url_external','get_urls_by_courses',NULL,'mod_url','mod/url:view','moodle_mobile_app'),(395,'mod_wiki_get_wikis_by_courses','mod_wiki_external','get_wikis_by_courses',NULL,'mod_wiki','mod/wiki:viewpage','moodle_mobile_app'),(396,'mod_wiki_view_wiki','mod_wiki_external','view_wiki',NULL,'mod_wiki','mod/wiki:viewpage','moodle_mobile_app'),(397,'mod_wiki_view_page','mod_wiki_external','view_page',NULL,'mod_wiki','mod/wiki:viewpage','moodle_mobile_app'),(398,'mod_wiki_get_subwikis','mod_wiki_external','get_subwikis',NULL,'mod_wiki','mod/wiki:viewpage','moodle_mobile_app'),(399,'mod_wiki_get_subwiki_pages','mod_wiki_external','get_subwiki_pages',NULL,'mod_wiki','mod/wiki:viewpage','moodle_mobile_app'),(400,'mod_wiki_get_subwiki_files','mod_wiki_external','get_subwiki_files',NULL,'mod_wiki','mod/wiki:viewpage','moodle_mobile_app'),(401,'mod_wiki_get_page_contents','mod_wiki_external','get_page_contents',NULL,'mod_wiki','mod/wiki:viewpage','moodle_mobile_app'),(402,'mod_wiki_get_page_for_editing','mod_wiki_external','get_page_for_editing',NULL,'mod_wiki','mod/wiki:editpage','moodle_mobile_app'),(403,'mod_wiki_new_page','mod_wiki_external','new_page',NULL,'mod_wiki','mod/wiki:editpage','moodle_mobile_app'),(404,'mod_wiki_edit_page','mod_wiki_external','edit_page',NULL,'mod_wiki','mod/wiki:editpage','moodle_mobile_app'),(405,'mod_workshop_get_workshops_by_courses','mod_workshop_external','get_workshops_by_courses',NULL,'mod_workshop','mod/workshop:view','moodle_mobile_app'),(406,'mod_workshop_get_workshop_access_information','mod_workshop_external','get_workshop_access_information',NULL,'mod_workshop','mod/workshop:view','moodle_mobile_app'),(407,'mod_workshop_get_user_plan','mod_workshop_external','get_user_plan',NULL,'mod_workshop','mod/workshop:view','moodle_mobile_app'),(408,'mod_workshop_view_workshop','mod_workshop_external','view_workshop',NULL,'mod_workshop','mod/workshop:view','moodle_mobile_app'),(409,'mod_workshop_add_submission','mod_workshop_external','add_submission',NULL,'mod_workshop','mod/workshop:submit','moodle_mobile_app'),(410,'mod_workshop_update_submission','mod_workshop_external','update_submission',NULL,'mod_workshop','mod/workshop:submit','moodle_mobile_app'),(411,'mod_workshop_delete_submission','mod_workshop_external','delete_submission',NULL,'mod_workshop','mod/workshop:submit','moodle_mobile_app'),(412,'mod_workshop_get_submissions','mod_workshop_external','get_submissions',NULL,'mod_workshop','','moodle_mobile_app'),(413,'mod_workshop_get_submission','mod_workshop_external','get_submission',NULL,'mod_workshop','','moodle_mobile_app'),(414,'mod_workshop_get_submission_assessments','mod_workshop_external','get_submission_assessments',NULL,'mod_workshop','','moodle_mobile_app'),(415,'mod_workshop_get_assessment','mod_workshop_external','get_assessment',NULL,'mod_workshop','','moodle_mobile_app'),(416,'mod_workshop_get_assessment_form_definition','mod_workshop_external','get_assessment_form_definition',NULL,'mod_workshop','','moodle_mobile_app'),(417,'mod_workshop_get_reviewer_assessments','mod_workshop_external','get_reviewer_assessments',NULL,'mod_workshop','','moodle_mobile_app'),(418,'mod_workshop_update_assessment','mod_workshop_external','update_assessment',NULL,'mod_workshop','','moodle_mobile_app'),(419,'mod_workshop_get_grades','mod_workshop_external','get_grades',NULL,'mod_workshop','','moodle_mobile_app'),(420,'mod_workshop_evaluate_assessment','mod_workshop_external','evaluate_assessment',NULL,'mod_workshop','','moodle_mobile_app'),(421,'mod_workshop_get_grades_report','mod_workshop_external','get_grades_report',NULL,'mod_workshop','','moodle_mobile_app'),(422,'mod_workshop_view_submission','mod_workshop_external','view_submission',NULL,'mod_workshop','mod/workshop:view','moodle_mobile_app'),(423,'mod_workshop_evaluate_submission','mod_workshop_external','evaluate_submission',NULL,'mod_workshop','','moodle_mobile_app'),(424,'auth_email_get_signup_settings','auth_email_external','get_signup_settings',NULL,'auth_email','',NULL),(425,'auth_email_signup_user','auth_email_external','signup_user',NULL,'auth_email','',NULL),(426,'enrol_guest_get_instance_info','enrol_guest_external','get_instance_info',NULL,'enrol_guest','','moodle_mobile_app'),(427,'enrol_manual_enrol_users','enrol_manual_external','enrol_users','enrol/manual/externallib.php','enrol_manual','enrol/manual:enrol',NULL),(428,'enrol_manual_unenrol_users','enrol_manual_external','unenrol_users','enrol/manual/externallib.php','enrol_manual','enrol/manual:unenrol',NULL),(429,'enrol_self_get_instance_info','enrol_self_external','get_instance_info','enrol/self/externallib.php','enrol_self','','moodle_mobile_app'),(430,'enrol_self_enrol_user','enrol_self_external','enrol_user','enrol/self/externallib.php','enrol_self','','moodle_mobile_app'),(431,'message_airnotifier_is_system_configured','message_airnotifier_external','is_system_configured','message/output/airnotifier/externallib.php','message_airnotifier','','moodle_mobile_app'),(432,'message_airnotifier_are_notification_preferences_configured','message_airnotifier_external','are_notification_preferences_configured','message/output/airnotifier/externallib.php','message_airnotifier','','moodle_mobile_app'),(433,'message_airnotifier_get_user_devices','message_airnotifier_external','get_user_devices','message/output/airnotifier/externallib.php','message_airnotifier','','moodle_mobile_app'),(434,'message_airnotifier_enable_device','message_airnotifier_external','enable_device','message/output/airnotifier/externallib.php','message_airnotifier','message/airnotifier:managedevice','moodle_mobile_app'),(435,'message_popup_get_popup_notifications','message_popup_external','get_popup_notifications','message/output/popup/externallib.php','message_popup','','moodle_mobile_app'),(436,'message_popup_get_unread_popup_notification_count','message_popup_external','get_unread_popup_notification_count','message/output/popup/externallib.php','message_popup','','moodle_mobile_app'),(437,'report_competency_data_for_report','report_competency\\external','data_for_report',NULL,'report_competency','moodle/competency:coursecompetencyview',NULL),(438,'report_insights_set_notuseful_prediction','report_insights\\external','set_notuseful_prediction',NULL,'report_insights','','moodle_mobile_app'),(439,'report_insights_set_fixed_prediction','report_insights\\external','set_fixed_prediction',NULL,'report_insights','','moodle_mobile_app'),(440,'gradereport_overview_get_course_grades','gradereport_overview_external','get_course_grades',NULL,'gradereport_overview','','moodle_mobile_app'),(441,'gradereport_overview_view_grade_report','gradereport_overview_external','view_grade_report',NULL,'gradereport_overview','gradereport/overview:view','moodle_mobile_app'),(442,'gradereport_user_get_grades_table','gradereport_user_external','get_grades_table','grade/report/user/externallib.php','gradereport_user','gradereport/user:view','moodle_mobile_app'),(443,'gradereport_user_view_grade_report','gradereport_user_external','view_grade_report','grade/report/user/externallib.php','gradereport_user','gradereport/user:view','moodle_mobile_app'),(444,'gradereport_user_get_grade_items','gradereport_user_external','get_grade_items','grade/report/user/externallib.php','gradereport_user','gradereport/user:view','moodle_mobile_app'),(445,'tool_lp_data_for_competency_frameworks_manage_page','tool_lp\\external','data_for_competency_frameworks_manage_page',NULL,'tool_lp','moodle/competency:competencyview',NULL),(446,'tool_lp_data_for_competency_summary','tool_lp\\external','data_for_competency_summary',NULL,'tool_lp','moodle/competency:competencyview',NULL),(447,'tool_lp_data_for_competencies_manage_page','tool_lp\\external','data_for_competencies_manage_page',NULL,'tool_lp','moodle/competency:competencyview',NULL),(448,'tool_lp_list_courses_using_competency','tool_lp\\external','list_courses_using_competency',NULL,'tool_lp','moodle/competency:coursecompetencyview',NULL),(449,'tool_lp_data_for_course_competencies_page','tool_lp\\external','data_for_course_competencies_page',NULL,'tool_lp','moodle/competency:coursecompetencyview','moodle_mobile_app'),(450,'tool_lp_data_for_template_competencies_page','tool_lp\\external','data_for_template_competencies_page',NULL,'tool_lp','moodle/competency:templateview',NULL),(451,'tool_lp_data_for_templates_manage_page','tool_lp\\external','data_for_templates_manage_page',NULL,'tool_lp','moodle/competency:templateview',NULL),(452,'tool_lp_data_for_plans_page','tool_lp\\external','data_for_plans_page',NULL,'tool_lp','moodle/competency:planviewown','moodle_mobile_app'),(453,'tool_lp_data_for_plan_page','tool_lp\\external','data_for_plan_page',NULL,'tool_lp','moodle/competency:planview','moodle_mobile_app'),(454,'tool_lp_data_for_related_competencies_section','tool_lp\\external','data_for_related_competencies_section',NULL,'tool_lp','moodle/competency:competencyview',NULL),(455,'tool_lp_search_users','tool_lp\\external','search_users',NULL,'tool_lp','',NULL),(456,'tool_lp_search_cohorts','core_cohort_external','search_cohorts','cohort/externallib.php','tool_lp','moodle/cohort:view',NULL),(457,'tool_lp_data_for_user_evidence_list_page','tool_lp\\external','data_for_user_evidence_list_page',NULL,'tool_lp','moodle/competency:userevidenceview','moodle_mobile_app'),(458,'tool_lp_data_for_user_evidence_page','tool_lp\\external','data_for_user_evidence_page',NULL,'tool_lp','moodle/competency:userevidenceview','moodle_mobile_app'),(459,'tool_lp_data_for_user_competency_summary','tool_lp\\external','data_for_user_competency_summary',NULL,'tool_lp','moodle/competency:planview','moodle_mobile_app'),(460,'tool_lp_data_for_user_competency_summary_in_plan','tool_lp\\external','data_for_user_competency_summary_in_plan',NULL,'tool_lp','moodle/competency:planview','moodle_mobile_app'),(461,'tool_lp_data_for_user_competency_summary_in_course','tool_lp\\external','data_for_user_competency_summary_in_course',NULL,'tool_lp','moodle/competency:coursecompetencyview','moodle_mobile_app'),(462,'tool_mobile_get_plugins_supporting_mobile','tool_mobile\\external','get_plugins_supporting_mobile',NULL,'tool_mobile','','moodle_mobile_app'),(463,'tool_mobile_get_public_config','tool_mobile\\external','get_public_config',NULL,'tool_mobile','','moodle_mobile_app'),(464,'tool_mobile_get_config','tool_mobile\\external','get_config',NULL,'tool_mobile','','moodle_mobile_app'),(465,'tool_mobile_get_autologin_key','tool_mobile\\external','get_autologin_key',NULL,'tool_mobile','','moodle_mobile_app'),(466,'tool_templatelibrary_list_templates','tool_templatelibrary\\external','list_templates',NULL,'tool_templatelibrary','',NULL),(467,'tool_templatelibrary_load_canonical_template','tool_templatelibrary\\external','load_canonical_template',NULL,'tool_templatelibrary','',NULL),(468,'tool_usertours_fetch_and_start_tour','tool_usertours\\external\\tour','fetch_and_start_tour',NULL,'tool_usertours','',NULL),(469,'tool_usertours_step_shown','tool_usertours\\external\\tour','step_shown',NULL,'tool_usertours','',NULL),(470,'tool_usertours_complete_tour','tool_usertours\\external\\tour','complete_tour',NULL,'tool_usertours','',NULL),(471,'tool_usertours_reset_tour','tool_usertours\\external\\tour','reset_tour',NULL,'tool_usertours','',NULL);
/*!40000 ALTER TABLE `mdl01_external_functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_external_services`
--

DROP TABLE IF EXISTS `mdl01_external_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_external_services` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL,
  `requiredcapability` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restrictedusers` tinyint(1) NOT NULL,
  `component` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `shortname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `downloadfiles` tinyint(1) NOT NULL DEFAULT '0',
  `uploadfiles` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_exteserv_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='built in and custom external services';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_external_services`
--

LOCK TABLES `mdl01_external_services` WRITE;
/*!40000 ALTER TABLE `mdl01_external_services` DISABLE KEYS */;
INSERT INTO `mdl01_external_services` VALUES (1,'Moodle mobile web service',0,NULL,0,'moodle',1525171684,NULL,'moodle_mobile_app',1,1);
/*!40000 ALTER TABLE `mdl01_external_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_external_services_functions`
--

DROP TABLE IF EXISTS `mdl01_external_services_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_external_services_functions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `externalserviceid` bigint(10) NOT NULL,
  `functionname` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl01_exteservfunc_ext_ix` (`externalserviceid`)
) ENGINE=InnoDB AUTO_INCREMENT=293 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='lists functions available in each service group';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_external_services_functions`
--

LOCK TABLES `mdl01_external_services_functions` WRITE;
/*!40000 ALTER TABLE `mdl01_external_services_functions` DISABLE KEYS */;
INSERT INTO `mdl01_external_services_functions` VALUES (1,1,'core_badges_get_user_badges'),(2,1,'core_calendar_get_calendar_monthly_view'),(3,1,'core_calendar_get_calendar_day_view'),(4,1,'core_calendar_get_calendar_upcoming_view'),(5,1,'core_calendar_create_calendar_events'),(6,1,'core_calendar_delete_calendar_events'),(7,1,'core_calendar_get_calendar_events'),(8,1,'core_calendar_get_action_events_by_timesort'),(9,1,'core_calendar_get_action_events_by_course'),(10,1,'core_calendar_get_action_events_by_courses'),(11,1,'core_calendar_get_calendar_event_by_id'),(12,1,'core_comment_get_comments'),(13,1,'core_completion_get_activities_completion_status'),(14,1,'core_completion_get_course_completion_status'),(15,1,'core_completion_mark_course_self_completed'),(16,1,'core_completion_update_activity_completion_status_manually'),(17,1,'core_course_get_categories'),(18,1,'core_course_get_contents'),(19,1,'core_course_get_course_module'),(20,1,'core_course_get_course_module_by_instance'),(21,1,'core_course_get_courses'),(22,1,'core_course_search_courses'),(23,1,'core_course_view_course'),(24,1,'core_course_get_activities_overview'),(25,1,'core_course_get_user_navigation_options'),(26,1,'core_course_get_user_administration_options'),(27,1,'core_course_get_courses_by_field'),(28,1,'core_course_check_updates'),(29,1,'core_course_get_updates_since'),(30,1,'core_enrol_get_course_enrolment_methods'),(31,1,'core_enrol_get_enrolled_users'),(32,1,'core_enrol_get_users_courses'),(33,1,'core_files_get_files'),(34,1,'core_get_component_strings'),(35,1,'core_group_get_activity_allowed_groups'),(36,1,'core_group_get_activity_groupmode'),(37,1,'core_group_get_course_user_groups'),(38,1,'core_message_block_contacts'),(39,1,'core_message_create_contacts'),(40,1,'core_message_delete_contacts'),(41,1,'core_message_delete_conversation'),(42,1,'core_message_delete_message'),(43,1,'core_message_get_blocked_users'),(44,1,'core_message_data_for_messagearea_search_messages'),(45,1,'core_message_data_for_messagearea_conversations'),(46,1,'core_message_data_for_messagearea_contacts'),(47,1,'core_message_data_for_messagearea_messages'),(48,1,'core_message_get_contacts'),(49,1,'core_message_get_messages'),(50,1,'core_message_get_unread_conversations_count'),(51,1,'core_message_mark_all_notifications_as_read'),(52,1,'core_message_mark_all_messages_as_read'),(53,1,'core_message_mark_message_read'),(54,1,'core_message_message_processor_config_form'),(55,1,'core_message_search_contacts'),(56,1,'core_message_send_instant_messages'),(57,1,'core_message_unblock_contacts'),(58,1,'core_message_get_user_notification_preferences'),(59,1,'core_message_get_user_message_preferences'),(60,1,'core_notes_create_notes'),(61,1,'core_notes_delete_notes'),(62,1,'core_notes_get_course_notes'),(63,1,'core_notes_view_notes'),(64,1,'core_question_update_flag'),(65,1,'core_rating_get_item_ratings'),(66,1,'core_rating_add_rating'),(67,1,'core_user_add_user_device'),(68,1,'core_user_add_user_private_files'),(69,1,'core_user_get_course_user_profiles'),(70,1,'core_user_get_users_by_field'),(71,1,'core_user_remove_user_device'),(72,1,'core_user_update_user_preferences'),(73,1,'core_user_view_user_list'),(74,1,'core_user_view_user_profile'),(75,1,'core_user_get_user_preferences'),(76,1,'core_user_update_picture'),(77,1,'core_user_agree_site_policy'),(78,1,'core_user_get_private_files_info'),(79,1,'core_competency_competency_viewed'),(80,1,'core_competency_list_course_competencies'),(81,1,'core_competency_get_scale_values'),(82,1,'core_competency_user_competency_viewed'),(83,1,'core_competency_user_competency_viewed_in_plan'),(84,1,'core_competency_user_competency_viewed_in_course'),(85,1,'core_competency_user_competency_plan_viewed'),(86,1,'core_competency_grade_competency_in_course'),(87,1,'core_competency_delete_evidence'),(88,1,'core_webservice_get_site_info'),(89,1,'core_block_get_course_blocks'),(90,1,'core_filters_get_available_in_context'),(91,1,'mod_assign_get_grades'),(92,1,'mod_assign_get_assignments'),(93,1,'mod_assign_get_submissions'),(94,1,'mod_assign_get_user_flags'),(95,1,'mod_assign_set_user_flags'),(96,1,'mod_assign_get_user_mappings'),(97,1,'mod_assign_revert_submissions_to_draft'),(98,1,'mod_assign_lock_submissions'),(99,1,'mod_assign_unlock_submissions'),(100,1,'mod_assign_save_submission'),(101,1,'mod_assign_submit_for_grading'),(102,1,'mod_assign_save_grade'),(103,1,'mod_assign_save_grades'),(104,1,'mod_assign_save_user_extensions'),(105,1,'mod_assign_reveal_identities'),(106,1,'mod_assign_view_grading_table'),(107,1,'mod_assign_view_submission_status'),(108,1,'mod_assign_get_submission_status'),(109,1,'mod_assign_list_participants'),(110,1,'mod_assign_submit_grading_form'),(111,1,'mod_assign_get_participant'),(112,1,'mod_assign_view_assign'),(113,1,'mod_book_view_book'),(114,1,'mod_book_get_books_by_courses'),(115,1,'mod_chat_login_user'),(116,1,'mod_chat_get_chat_users'),(117,1,'mod_chat_send_chat_message'),(118,1,'mod_chat_get_chat_latest_messages'),(119,1,'mod_chat_view_chat'),(120,1,'mod_chat_get_chats_by_courses'),(121,1,'mod_choice_get_choice_results'),(122,1,'mod_choice_get_choice_options'),(123,1,'mod_choice_submit_choice_response'),(124,1,'mod_choice_view_choice'),(125,1,'mod_choice_get_choices_by_courses'),(126,1,'mod_choice_delete_choice_responses'),(127,1,'mod_data_get_databases_by_courses'),(128,1,'mod_data_view_database'),(129,1,'mod_data_get_data_access_information'),(130,1,'mod_data_get_entries'),(131,1,'mod_data_get_entry'),(132,1,'mod_data_get_fields'),(133,1,'mod_data_search_entries'),(134,1,'mod_data_approve_entry'),(135,1,'mod_data_delete_entry'),(136,1,'mod_data_add_entry'),(137,1,'mod_data_update_entry'),(138,1,'mod_feedback_get_feedbacks_by_courses'),(139,1,'mod_feedback_get_feedback_access_information'),(140,1,'mod_feedback_view_feedback'),(141,1,'mod_feedback_get_current_completed_tmp'),(142,1,'mod_feedback_get_items'),(143,1,'mod_feedback_launch_feedback'),(144,1,'mod_feedback_get_page_items'),(145,1,'mod_feedback_process_page'),(146,1,'mod_feedback_get_analysis'),(147,1,'mod_feedback_get_unfinished_responses'),(148,1,'mod_feedback_get_finished_responses'),(149,1,'mod_feedback_get_non_respondents'),(150,1,'mod_feedback_get_responses_analysis'),(151,1,'mod_feedback_get_last_completed'),(152,1,'mod_folder_view_folder'),(153,1,'mod_folder_get_folders_by_courses'),(154,1,'mod_forum_get_forums_by_courses'),(155,1,'mod_forum_get_forum_discussion_posts'),(156,1,'mod_forum_get_forum_discussions_paginated'),(157,1,'mod_forum_view_forum'),(158,1,'mod_forum_view_forum_discussion'),(159,1,'mod_forum_add_discussion_post'),(160,1,'mod_forum_add_discussion'),(161,1,'mod_forum_can_add_discussion'),(162,1,'mod_glossary_get_glossaries_by_courses'),(163,1,'mod_glossary_view_glossary'),(164,1,'mod_glossary_view_entry'),(165,1,'mod_glossary_get_entries_by_letter'),(166,1,'mod_glossary_get_entries_by_date'),(167,1,'mod_glossary_get_categories'),(168,1,'mod_glossary_get_entries_by_category'),(169,1,'mod_glossary_get_authors'),(170,1,'mod_glossary_get_entries_by_author'),(171,1,'mod_glossary_get_entries_by_author_id'),(172,1,'mod_glossary_get_entries_by_search'),(173,1,'mod_glossary_get_entries_by_term'),(174,1,'mod_glossary_get_entries_to_approve'),(175,1,'mod_glossary_get_entry_by_id'),(176,1,'mod_glossary_add_entry'),(177,1,'mod_imscp_view_imscp'),(178,1,'mod_imscp_get_imscps_by_courses'),(179,1,'mod_label_get_labels_by_courses'),(180,1,'mod_lesson_get_lessons_by_courses'),(181,1,'mod_lesson_get_lesson_access_information'),(182,1,'mod_lesson_view_lesson'),(183,1,'mod_lesson_get_questions_attempts'),(184,1,'mod_lesson_get_user_grade'),(185,1,'mod_lesson_get_user_attempt_grade'),(186,1,'mod_lesson_get_content_pages_viewed'),(187,1,'mod_lesson_get_user_timers'),(188,1,'mod_lesson_get_pages'),(189,1,'mod_lesson_launch_attempt'),(190,1,'mod_lesson_get_page_data'),(191,1,'mod_lesson_process_page'),(192,1,'mod_lesson_finish_attempt'),(193,1,'mod_lesson_get_attempts_overview'),(194,1,'mod_lesson_get_user_attempt'),(195,1,'mod_lesson_get_pages_possible_jumps'),(196,1,'mod_lesson_get_lesson'),(197,1,'mod_lti_get_tool_launch_data'),(198,1,'mod_lti_get_ltis_by_courses'),(199,1,'mod_lti_view_lti'),(200,1,'mod_page_view_page'),(201,1,'mod_page_get_pages_by_courses'),(202,1,'mod_quiz_get_quizzes_by_courses'),(203,1,'mod_quiz_view_quiz'),(204,1,'mod_quiz_get_user_attempts'),(205,1,'mod_quiz_get_user_best_grade'),(206,1,'mod_quiz_get_combined_review_options'),(207,1,'mod_quiz_start_attempt'),(208,1,'mod_quiz_get_attempt_data'),(209,1,'mod_quiz_get_attempt_summary'),(210,1,'mod_quiz_save_attempt'),(211,1,'mod_quiz_process_attempt'),(212,1,'mod_quiz_get_attempt_review'),(213,1,'mod_quiz_view_attempt'),(214,1,'mod_quiz_view_attempt_summary'),(215,1,'mod_quiz_view_attempt_review'),(216,1,'mod_quiz_get_quiz_feedback_for_grade'),(217,1,'mod_quiz_get_quiz_access_information'),(218,1,'mod_quiz_get_attempt_access_information'),(219,1,'mod_quiz_get_quiz_required_qtypes'),(220,1,'mod_resource_view_resource'),(221,1,'mod_resource_get_resources_by_courses'),(222,1,'mod_scorm_view_scorm'),(223,1,'mod_scorm_get_scorm_attempt_count'),(224,1,'mod_scorm_get_scorm_scoes'),(225,1,'mod_scorm_get_scorm_user_data'),(226,1,'mod_scorm_insert_scorm_tracks'),(227,1,'mod_scorm_get_scorm_sco_tracks'),(228,1,'mod_scorm_get_scorms_by_courses'),(229,1,'mod_scorm_launch_sco'),(230,1,'mod_survey_get_surveys_by_courses'),(231,1,'mod_survey_view_survey'),(232,1,'mod_survey_get_questions'),(233,1,'mod_survey_submit_answers'),(234,1,'mod_url_view_url'),(235,1,'mod_url_get_urls_by_courses'),(236,1,'mod_wiki_get_wikis_by_courses'),(237,1,'mod_wiki_view_wiki'),(238,1,'mod_wiki_view_page'),(239,1,'mod_wiki_get_subwikis'),(240,1,'mod_wiki_get_subwiki_pages'),(241,1,'mod_wiki_get_subwiki_files'),(242,1,'mod_wiki_get_page_contents'),(243,1,'mod_wiki_get_page_for_editing'),(244,1,'mod_wiki_new_page'),(245,1,'mod_wiki_edit_page'),(246,1,'mod_workshop_get_workshops_by_courses'),(247,1,'mod_workshop_get_workshop_access_information'),(248,1,'mod_workshop_get_user_plan'),(249,1,'mod_workshop_view_workshop'),(250,1,'mod_workshop_add_submission'),(251,1,'mod_workshop_update_submission'),(252,1,'mod_workshop_delete_submission'),(253,1,'mod_workshop_get_submissions'),(254,1,'mod_workshop_get_submission'),(255,1,'mod_workshop_get_submission_assessments'),(256,1,'mod_workshop_get_assessment'),(257,1,'mod_workshop_get_assessment_form_definition'),(258,1,'mod_workshop_get_reviewer_assessments'),(259,1,'mod_workshop_update_assessment'),(260,1,'mod_workshop_get_grades'),(261,1,'mod_workshop_evaluate_assessment'),(262,1,'mod_workshop_get_grades_report'),(263,1,'mod_workshop_view_submission'),(264,1,'mod_workshop_evaluate_submission'),(265,1,'enrol_guest_get_instance_info'),(266,1,'enrol_self_get_instance_info'),(267,1,'enrol_self_enrol_user'),(268,1,'message_airnotifier_is_system_configured'),(269,1,'message_airnotifier_are_notification_preferences_configured'),(270,1,'message_airnotifier_get_user_devices'),(271,1,'message_airnotifier_enable_device'),(272,1,'message_popup_get_popup_notifications'),(273,1,'message_popup_get_unread_popup_notification_count'),(274,1,'report_insights_set_notuseful_prediction'),(275,1,'report_insights_set_fixed_prediction'),(276,1,'gradereport_overview_get_course_grades'),(277,1,'gradereport_overview_view_grade_report'),(278,1,'gradereport_user_get_grades_table'),(279,1,'gradereport_user_view_grade_report'),(280,1,'gradereport_user_get_grade_items'),(281,1,'tool_lp_data_for_course_competencies_page'),(282,1,'tool_lp_data_for_plans_page'),(283,1,'tool_lp_data_for_plan_page'),(284,1,'tool_lp_data_for_user_evidence_list_page'),(285,1,'tool_lp_data_for_user_evidence_page'),(286,1,'tool_lp_data_for_user_competency_summary'),(287,1,'tool_lp_data_for_user_competency_summary_in_plan'),(288,1,'tool_lp_data_for_user_competency_summary_in_course'),(289,1,'tool_mobile_get_plugins_supporting_mobile'),(290,1,'tool_mobile_get_public_config'),(291,1,'tool_mobile_get_config'),(292,1,'tool_mobile_get_autologin_key');
/*!40000 ALTER TABLE `mdl01_external_services_functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_external_services_users`
--

DROP TABLE IF EXISTS `mdl01_external_services_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_external_services_users` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `externalserviceid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `iprestriction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validuntil` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_exteservuser_ext_ix` (`externalserviceid`),
  KEY `mdl01_exteservuser_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='users allowed to use services with restricted users flag';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_external_services_users`
--

LOCK TABLES `mdl01_external_services_users` WRITE;
/*!40000 ALTER TABLE `mdl01_external_services_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_external_services_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_external_tokens`
--

DROP TABLE IF EXISTS `mdl01_external_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_external_tokens` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `privatetoken` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tokentype` smallint(4) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `externalserviceid` bigint(10) NOT NULL,
  `sid` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contextid` bigint(10) NOT NULL,
  `creatorid` bigint(10) NOT NULL DEFAULT '1',
  `iprestriction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validuntil` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `lastaccess` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_extetoke_use_ix` (`userid`),
  KEY `mdl01_extetoke_ext_ix` (`externalserviceid`),
  KEY `mdl01_extetoke_con_ix` (`contextid`),
  KEY `mdl01_extetoke_cre_ix` (`creatorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Security tokens for accessing of external services';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_external_tokens`
--

LOCK TABLES `mdl01_external_tokens` WRITE;
/*!40000 ALTER TABLE `mdl01_external_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_external_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_feedback`
--

DROP TABLE IF EXISTS `mdl01_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_feedback` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `anonymous` tinyint(1) NOT NULL DEFAULT '1',
  `email_notification` tinyint(1) NOT NULL DEFAULT '1',
  `multiple_submit` tinyint(1) NOT NULL DEFAULT '1',
  `autonumbering` tinyint(1) NOT NULL DEFAULT '1',
  `site_after_submit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `page_after_submit` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_after_submitformat` tinyint(2) NOT NULL DEFAULT '0',
  `publish_stats` tinyint(1) NOT NULL DEFAULT '0',
  `timeopen` bigint(10) NOT NULL DEFAULT '0',
  `timeclose` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `completionsubmit` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_feed_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='all feedbacks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_feedback`
--

LOCK TABLES `mdl01_feedback` WRITE;
/*!40000 ALTER TABLE `mdl01_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_feedback_completed`
--

DROP TABLE IF EXISTS `mdl01_feedback_completed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_feedback_completed` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `feedback` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `random_response` bigint(10) NOT NULL DEFAULT '0',
  `anonymous_response` tinyint(1) NOT NULL DEFAULT '0',
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_feedcomp_use_ix` (`userid`),
  KEY `mdl01_feedcomp_fee_ix` (`feedback`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='filled out feedback';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_feedback_completed`
--

LOCK TABLES `mdl01_feedback_completed` WRITE;
/*!40000 ALTER TABLE `mdl01_feedback_completed` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_feedback_completed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_feedback_completedtmp`
--

DROP TABLE IF EXISTS `mdl01_feedback_completedtmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_feedback_completedtmp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `feedback` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `guestid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `random_response` bigint(10) NOT NULL DEFAULT '0',
  `anonymous_response` tinyint(1) NOT NULL DEFAULT '0',
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_feedcomp_use2_ix` (`userid`),
  KEY `mdl01_feedcomp_fee2_ix` (`feedback`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='filled out feedback';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_feedback_completedtmp`
--

LOCK TABLES `mdl01_feedback_completedtmp` WRITE;
/*!40000 ALTER TABLE `mdl01_feedback_completedtmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_feedback_completedtmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_feedback_item`
--

DROP TABLE IF EXISTS `mdl01_feedback_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_feedback_item` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `feedback` bigint(10) NOT NULL DEFAULT '0',
  `template` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `presentation` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `typ` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hasvalue` tinyint(1) NOT NULL DEFAULT '0',
  `position` smallint(3) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `dependitem` bigint(10) NOT NULL DEFAULT '0',
  `dependvalue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `options` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl01_feeditem_fee_ix` (`feedback`),
  KEY `mdl01_feeditem_tem_ix` (`template`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='feedback_items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_feedback_item`
--

LOCK TABLES `mdl01_feedback_item` WRITE;
/*!40000 ALTER TABLE `mdl01_feedback_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_feedback_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_feedback_sitecourse_map`
--

DROP TABLE IF EXISTS `mdl01_feedback_sitecourse_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_feedback_sitecourse_map` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `feedbackid` bigint(10) NOT NULL DEFAULT '0',
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_feedsitemap_cou_ix` (`courseid`),
  KEY `mdl01_feedsitemap_fee_ix` (`feedbackid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='feedback sitecourse map';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_feedback_sitecourse_map`
--

LOCK TABLES `mdl01_feedback_sitecourse_map` WRITE;
/*!40000 ALTER TABLE `mdl01_feedback_sitecourse_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_feedback_sitecourse_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_feedback_template`
--

DROP TABLE IF EXISTS `mdl01_feedback_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_feedback_template` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `ispublic` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl01_feedtemp_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='templates of feedbackstructures';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_feedback_template`
--

LOCK TABLES `mdl01_feedback_template` WRITE;
/*!40000 ALTER TABLE `mdl01_feedback_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_feedback_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_feedback_value`
--

DROP TABLE IF EXISTS `mdl01_feedback_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_feedback_value` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course_id` bigint(10) NOT NULL DEFAULT '0',
  `item` bigint(10) NOT NULL DEFAULT '0',
  `completed` bigint(10) NOT NULL DEFAULT '0',
  `tmp_completed` bigint(10) NOT NULL DEFAULT '0',
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_feedvalu_comitecou_uix` (`completed`,`item`,`course_id`),
  KEY `mdl01_feedvalu_cou_ix` (`course_id`),
  KEY `mdl01_feedvalu_ite_ix` (`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='values of the completeds';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_feedback_value`
--

LOCK TABLES `mdl01_feedback_value` WRITE;
/*!40000 ALTER TABLE `mdl01_feedback_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_feedback_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_feedback_valuetmp`
--

DROP TABLE IF EXISTS `mdl01_feedback_valuetmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_feedback_valuetmp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course_id` bigint(10) NOT NULL DEFAULT '0',
  `item` bigint(10) NOT NULL DEFAULT '0',
  `completed` bigint(10) NOT NULL DEFAULT '0',
  `tmp_completed` bigint(10) NOT NULL DEFAULT '0',
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_feedvalu_comitecou2_uix` (`completed`,`item`,`course_id`),
  KEY `mdl01_feedvalu_cou2_ix` (`course_id`),
  KEY `mdl01_feedvalu_ite2_ix` (`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='values of the completedstmp';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_feedback_valuetmp`
--

LOCK TABLES `mdl01_feedback_valuetmp` WRITE;
/*!40000 ALTER TABLE `mdl01_feedback_valuetmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_feedback_valuetmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_file_conversion`
--

DROP TABLE IF EXISTS `mdl01_file_conversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_file_conversion` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `usermodified` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `sourcefileid` bigint(10) NOT NULL,
  `targetformat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` bigint(10) DEFAULT '0',
  `statusmessage` longtext COLLATE utf8mb4_unicode_ci,
  `converter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destfileid` bigint(10) DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `mdl01_fileconv_sou_ix` (`sourcefileid`),
  KEY `mdl01_fileconv_des_ix` (`destfileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Table to track file conversions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_file_conversion`
--

LOCK TABLES `mdl01_file_conversion` WRITE;
/*!40000 ALTER TABLE `mdl01_file_conversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_file_conversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_files`
--

DROP TABLE IF EXISTS `mdl01_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_files` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contenthash` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pathnamehash` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL,
  `component` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filearea` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL,
  `filepath` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userid` bigint(10) DEFAULT NULL,
  `filesize` bigint(10) NOT NULL,
  `mimetype` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` bigint(10) NOT NULL DEFAULT '0',
  `source` longtext COLLATE utf8mb4_unicode_ci,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `referencefileid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_file_pat_uix` (`pathnamehash`),
  KEY `mdl01_file_comfilconite_ix` (`component`,`filearea`,`contextid`,`itemid`),
  KEY `mdl01_file_con_ix` (`contenthash`),
  KEY `mdl01_file_con2_ix` (`contextid`),
  KEY `mdl01_file_use_ix` (`userid`),
  KEY `mdl01_file_ref_ix` (`referencefileid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='description of files, content is stored in sha1 file pool';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_files`
--

LOCK TABLES `mdl01_files` WRITE;
/*!40000 ALTER TABLE `mdl01_files` DISABLE KEYS */;
INSERT INTO `mdl01_files` VALUES (1,'41cfeee5884a43a4650a851f4f85e7b28316fcc9','a48e186a2cc853a9e94e9305f4e9bc086391212d',1,'theme_more','backgroundimage',0,'/','background.jpg',2,4451,'image/jpeg',0,NULL,NULL,NULL,1525171722,1525171722,0,NULL),(2,'da39a3ee5e6b4b0d3255bfef95601890afd80709','d1da7ab1bb9c08a926037367bf8ce9a838034ead',1,'theme_more','backgroundimage',0,'/','.',2,0,NULL,0,NULL,NULL,NULL,1525171722,1525171722,0,NULL),(3,'5f8e911d0da441e36f47c5c46f4393269211ca56','508e674d49c30d4fde325fe6c7f6fd3d56b247e1',1,'assignfeedback_editpdf','stamps',0,'/','smile.png',2,1085,'image/png',0,NULL,NULL,NULL,1525171723,1525171723,0,NULL),(4,'da39a3ee5e6b4b0d3255bfef95601890afd80709','70b7cdade7b4e27d4e83f0cdaad10d6a3c0cccb5',1,'assignfeedback_editpdf','stamps',0,'/','.',2,0,NULL,0,NULL,NULL,NULL,1525171723,1525171723,0,NULL),(5,'75c101cb8cb34ea573cd25ac38f8157b1de901b8','68317eab56c67d32aeaee5acf509a0c4aa828b6b',1,'assignfeedback_editpdf','stamps',0,'/','sad.png',2,966,'image/png',0,NULL,NULL,NULL,1525171723,1525171723,0,NULL),(6,'0c5190a24c3943966541401c883eacaa20ca20cb','695a55ff780e61c9e59428aa425430b0d6bde53b',1,'assignfeedback_editpdf','stamps',0,'/','tick.png',2,1039,'image/png',0,NULL,NULL,NULL,1525171723,1525171723,0,NULL),(7,'8c96a486d5801e0f4ab8c411f561f1c687e1f865','373e63af262a9b8466ba8632551520be793c37ff',1,'assignfeedback_editpdf','stamps',0,'/','cross.png',2,861,'image/png',0,NULL,NULL,NULL,1525171723,1525171723,0,NULL);
/*!40000 ALTER TABLE `mdl01_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_files_reference`
--

DROP TABLE IF EXISTS `mdl01_files_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_files_reference` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `repositoryid` bigint(10) NOT NULL,
  `lastsync` bigint(10) DEFAULT NULL,
  `reference` longtext COLLATE utf8mb4_unicode_ci,
  `referencehash` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_filerefe_refrep_uix` (`referencehash`,`repositoryid`),
  KEY `mdl01_filerefe_rep_ix` (`repositoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Store files references';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_files_reference`
--

LOCK TABLES `mdl01_files_reference` WRITE;
/*!40000 ALTER TABLE `mdl01_files_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_files_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_filter_active`
--

DROP TABLE IF EXISTS `mdl01_filter_active`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_filter_active` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `filter` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL,
  `active` smallint(4) NOT NULL,
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_filtacti_confil_uix` (`contextid`,`filter`),
  KEY `mdl01_filtacti_con_ix` (`contextid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores information about which filters are active in which c';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_filter_active`
--

LOCK TABLES `mdl01_filter_active` WRITE;
/*!40000 ALTER TABLE `mdl01_filter_active` DISABLE KEYS */;
INSERT INTO `mdl01_filter_active` VALUES (1,'activitynames',1,1,2),(2,'mathjaxloader',1,1,1),(3,'mediaplugin',1,1,3);
/*!40000 ALTER TABLE `mdl01_filter_active` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_filter_config`
--

DROP TABLE IF EXISTS `mdl01_filter_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_filter_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `filter` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_filtconf_confilnam_uix` (`contextid`,`filter`,`name`),
  KEY `mdl01_filtconf_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores per-context configuration settings for filters which ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_filter_config`
--

LOCK TABLES `mdl01_filter_config` WRITE;
/*!40000 ALTER TABLE `mdl01_filter_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_filter_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_folder`
--

DROP TABLE IF EXISTS `mdl01_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_folder` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_unicode_ci,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `revision` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `display` smallint(4) NOT NULL DEFAULT '0',
  `showexpanded` tinyint(1) NOT NULL DEFAULT '1',
  `showdownloadfolder` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mdl01_fold_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='each record is one folder resource';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_folder`
--

LOCK TABLES `mdl01_folder` WRITE;
/*!40000 ALTER TABLE `mdl01_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_forum`
--

DROP TABLE IF EXISTS `mdl01_forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_forum` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'general',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `assessed` bigint(10) NOT NULL DEFAULT '0',
  `assesstimestart` bigint(10) NOT NULL DEFAULT '0',
  `assesstimefinish` bigint(10) NOT NULL DEFAULT '0',
  `scale` bigint(10) NOT NULL DEFAULT '0',
  `maxbytes` bigint(10) NOT NULL DEFAULT '0',
  `maxattachments` bigint(10) NOT NULL DEFAULT '1',
  `forcesubscribe` tinyint(1) NOT NULL DEFAULT '0',
  `trackingtype` tinyint(2) NOT NULL DEFAULT '1',
  `rsstype` tinyint(2) NOT NULL DEFAULT '0',
  `rssarticles` tinyint(2) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `warnafter` bigint(10) NOT NULL DEFAULT '0',
  `blockafter` bigint(10) NOT NULL DEFAULT '0',
  `blockperiod` bigint(10) NOT NULL DEFAULT '0',
  `completiondiscussions` int(9) NOT NULL DEFAULT '0',
  `completionreplies` int(9) NOT NULL DEFAULT '0',
  `completionposts` int(9) NOT NULL DEFAULT '0',
  `displaywordcount` tinyint(1) NOT NULL DEFAULT '0',
  `lockdiscussionafter` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_foru_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Forums contain and structure discussion';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_forum`
--

LOCK TABLES `mdl01_forum` WRITE;
/*!40000 ALTER TABLE `mdl01_forum` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_forum_digests`
--

DROP TABLE IF EXISTS `mdl01_forum_digests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_forum_digests` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `forum` bigint(10) NOT NULL,
  `maildigest` tinyint(1) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_forudige_forusemai_uix` (`forum`,`userid`,`maildigest`),
  KEY `mdl01_forudige_use_ix` (`userid`),
  KEY `mdl01_forudige_for_ix` (`forum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Keeps track of user mail delivery preferences for each forum';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_forum_digests`
--

LOCK TABLES `mdl01_forum_digests` WRITE;
/*!40000 ALTER TABLE `mdl01_forum_digests` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_forum_digests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_forum_discussion_subs`
--

DROP TABLE IF EXISTS `mdl01_forum_discussion_subs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_forum_discussion_subs` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `forum` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `discussion` bigint(10) NOT NULL,
  `preference` bigint(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_forudiscsubs_usedis_uix` (`userid`,`discussion`),
  KEY `mdl01_forudiscsubs_for_ix` (`forum`),
  KEY `mdl01_forudiscsubs_use_ix` (`userid`),
  KEY `mdl01_forudiscsubs_dis_ix` (`discussion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Users may choose to subscribe and unsubscribe from specific ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_forum_discussion_subs`
--

LOCK TABLES `mdl01_forum_discussion_subs` WRITE;
/*!40000 ALTER TABLE `mdl01_forum_discussion_subs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_forum_discussion_subs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_forum_discussions`
--

DROP TABLE IF EXISTS `mdl01_forum_discussions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_forum_discussions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `forum` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `firstpost` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `groupid` bigint(10) NOT NULL DEFAULT '-1',
  `assessed` tinyint(1) NOT NULL DEFAULT '1',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `usermodified` bigint(10) NOT NULL DEFAULT '0',
  `timestart` bigint(10) NOT NULL DEFAULT '0',
  `timeend` bigint(10) NOT NULL DEFAULT '0',
  `pinned` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_forudisc_use_ix` (`userid`),
  KEY `mdl01_forudisc_cou_ix` (`course`),
  KEY `mdl01_forudisc_for_ix` (`forum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Forums are composed of discussions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_forum_discussions`
--

LOCK TABLES `mdl01_forum_discussions` WRITE;
/*!40000 ALTER TABLE `mdl01_forum_discussions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_forum_discussions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_forum_posts`
--

DROP TABLE IF EXISTS `mdl01_forum_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_forum_posts` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `discussion` bigint(10) NOT NULL DEFAULT '0',
  `parent` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `created` bigint(10) NOT NULL DEFAULT '0',
  `modified` bigint(10) NOT NULL DEFAULT '0',
  `mailed` tinyint(2) NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `messageformat` tinyint(2) NOT NULL DEFAULT '0',
  `messagetrust` tinyint(2) NOT NULL DEFAULT '0',
  `attachment` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `totalscore` smallint(4) NOT NULL DEFAULT '0',
  `mailnow` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_forupost_use_ix` (`userid`),
  KEY `mdl01_forupost_cre_ix` (`created`),
  KEY `mdl01_forupost_mai_ix` (`mailed`),
  KEY `mdl01_forupost_dis_ix` (`discussion`),
  KEY `mdl01_forupost_par_ix` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='All posts are stored in this table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_forum_posts`
--

LOCK TABLES `mdl01_forum_posts` WRITE;
/*!40000 ALTER TABLE `mdl01_forum_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_forum_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_forum_queue`
--

DROP TABLE IF EXISTS `mdl01_forum_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_forum_queue` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `discussionid` bigint(10) NOT NULL DEFAULT '0',
  `postid` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_foruqueu_use_ix` (`userid`),
  KEY `mdl01_foruqueu_dis_ix` (`discussionid`),
  KEY `mdl01_foruqueu_pos_ix` (`postid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='For keeping track of posts that will be mailed in digest for';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_forum_queue`
--

LOCK TABLES `mdl01_forum_queue` WRITE;
/*!40000 ALTER TABLE `mdl01_forum_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_forum_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_forum_read`
--

DROP TABLE IF EXISTS `mdl01_forum_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_forum_read` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `forumid` bigint(10) NOT NULL DEFAULT '0',
  `discussionid` bigint(10) NOT NULL DEFAULT '0',
  `postid` bigint(10) NOT NULL DEFAULT '0',
  `firstread` bigint(10) NOT NULL DEFAULT '0',
  `lastread` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_foruread_usefor_ix` (`userid`,`forumid`),
  KEY `mdl01_foruread_usedis_ix` (`userid`,`discussionid`),
  KEY `mdl01_foruread_posuse_ix` (`postid`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Tracks each users read posts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_forum_read`
--

LOCK TABLES `mdl01_forum_read` WRITE;
/*!40000 ALTER TABLE `mdl01_forum_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_forum_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_forum_subscriptions`
--

DROP TABLE IF EXISTS `mdl01_forum_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_forum_subscriptions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `forum` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_forusubs_usefor_uix` (`userid`,`forum`),
  KEY `mdl01_forusubs_use_ix` (`userid`),
  KEY `mdl01_forusubs_for_ix` (`forum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Keeps track of who is subscribed to what forum';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_forum_subscriptions`
--

LOCK TABLES `mdl01_forum_subscriptions` WRITE;
/*!40000 ALTER TABLE `mdl01_forum_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_forum_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_forum_track_prefs`
--

DROP TABLE IF EXISTS `mdl01_forum_track_prefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_forum_track_prefs` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `forumid` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_forutracpref_usefor_ix` (`userid`,`forumid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Tracks each users untracked forums';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_forum_track_prefs`
--

LOCK TABLES `mdl01_forum_track_prefs` WRITE;
/*!40000 ALTER TABLE `mdl01_forum_track_prefs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_forum_track_prefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_glossary`
--

DROP TABLE IF EXISTS `mdl01_glossary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_glossary` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `allowduplicatedentries` tinyint(2) NOT NULL DEFAULT '0',
  `displayformat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dictionary',
  `mainglossary` tinyint(2) NOT NULL DEFAULT '0',
  `showspecial` tinyint(2) NOT NULL DEFAULT '1',
  `showalphabet` tinyint(2) NOT NULL DEFAULT '1',
  `showall` tinyint(2) NOT NULL DEFAULT '1',
  `allowcomments` tinyint(2) NOT NULL DEFAULT '0',
  `allowprintview` tinyint(2) NOT NULL DEFAULT '1',
  `usedynalink` tinyint(2) NOT NULL DEFAULT '1',
  `defaultapproval` tinyint(2) NOT NULL DEFAULT '1',
  `approvaldisplayformat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `globalglossary` tinyint(2) NOT NULL DEFAULT '0',
  `entbypage` smallint(3) NOT NULL DEFAULT '10',
  `editalways` tinyint(2) NOT NULL DEFAULT '0',
  `rsstype` tinyint(2) NOT NULL DEFAULT '0',
  `rssarticles` tinyint(2) NOT NULL DEFAULT '0',
  `assessed` bigint(10) NOT NULL DEFAULT '0',
  `assesstimestart` bigint(10) NOT NULL DEFAULT '0',
  `assesstimefinish` bigint(10) NOT NULL DEFAULT '0',
  `scale` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `completionentries` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_glos_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='all glossaries';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_glossary`
--

LOCK TABLES `mdl01_glossary` WRITE;
/*!40000 ALTER TABLE `mdl01_glossary` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_glossary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_glossary_alias`
--

DROP TABLE IF EXISTS `mdl01_glossary_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_glossary_alias` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `entryid` bigint(10) NOT NULL DEFAULT '0',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl01_glosalia_ent_ix` (`entryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='entries alias';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_glossary_alias`
--

LOCK TABLES `mdl01_glossary_alias` WRITE;
/*!40000 ALTER TABLE `mdl01_glossary_alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_glossary_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_glossary_categories`
--

DROP TABLE IF EXISTS `mdl01_glossary_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_glossary_categories` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `glossaryid` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `usedynalink` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mdl01_gloscate_glo_ix` (`glossaryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='all categories for glossary entries';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_glossary_categories`
--

LOCK TABLES `mdl01_glossary_categories` WRITE;
/*!40000 ALTER TABLE `mdl01_glossary_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_glossary_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_glossary_entries`
--

DROP TABLE IF EXISTS `mdl01_glossary_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_glossary_entries` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `glossaryid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `concept` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `definition` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `definitionformat` tinyint(2) NOT NULL DEFAULT '0',
  `definitiontrust` tinyint(2) NOT NULL DEFAULT '0',
  `attachment` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `teacherentry` tinyint(2) NOT NULL DEFAULT '0',
  `sourceglossaryid` bigint(10) NOT NULL DEFAULT '0',
  `usedynalink` tinyint(2) NOT NULL DEFAULT '1',
  `casesensitive` tinyint(2) NOT NULL DEFAULT '0',
  `fullmatch` tinyint(2) NOT NULL DEFAULT '1',
  `approved` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mdl01_glosentr_use_ix` (`userid`),
  KEY `mdl01_glosentr_con_ix` (`concept`),
  KEY `mdl01_glosentr_glo_ix` (`glossaryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='all glossary entries';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_glossary_entries`
--

LOCK TABLES `mdl01_glossary_entries` WRITE;
/*!40000 ALTER TABLE `mdl01_glossary_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_glossary_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_glossary_entries_categories`
--

DROP TABLE IF EXISTS `mdl01_glossary_entries_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_glossary_entries_categories` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `categoryid` bigint(10) NOT NULL DEFAULT '0',
  `entryid` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_glosentrcate_cat_ix` (`categoryid`),
  KEY `mdl01_glosentrcate_ent_ix` (`entryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='categories of each glossary entry';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_glossary_entries_categories`
--

LOCK TABLES `mdl01_glossary_entries_categories` WRITE;
/*!40000 ALTER TABLE `mdl01_glossary_entries_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_glossary_entries_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_glossary_formats`
--

DROP TABLE IF EXISTS `mdl01_glossary_formats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_glossary_formats` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `popupformatname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `visible` tinyint(2) NOT NULL DEFAULT '1',
  `showgroup` tinyint(2) NOT NULL DEFAULT '1',
  `showtabs` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `defaultmode` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `defaulthook` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortkey` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortorder` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Setting of the display formats';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_glossary_formats`
--

LOCK TABLES `mdl01_glossary_formats` WRITE;
/*!40000 ALTER TABLE `mdl01_glossary_formats` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_glossary_formats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_grade_categories`
--

DROP TABLE IF EXISTS `mdl01_grade_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_grade_categories` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `parent` bigint(10) DEFAULT NULL,
  `depth` bigint(10) NOT NULL DEFAULT '0',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `aggregation` bigint(10) NOT NULL DEFAULT '0',
  `keephigh` bigint(10) NOT NULL DEFAULT '0',
  `droplow` bigint(10) NOT NULL DEFAULT '0',
  `aggregateonlygraded` tinyint(1) NOT NULL DEFAULT '0',
  `aggregateoutcomes` tinyint(1) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_gradcate_cou_ix` (`courseid`),
  KEY `mdl01_gradcate_par_ix` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table keeps information about categories, used for grou';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_grade_categories`
--

LOCK TABLES `mdl01_grade_categories` WRITE;
/*!40000 ALTER TABLE `mdl01_grade_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_grade_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_grade_categories_history`
--

DROP TABLE IF EXISTS `mdl01_grade_categories_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_grade_categories_history` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `action` bigint(10) NOT NULL DEFAULT '0',
  `oldid` bigint(10) NOT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `loggeduser` bigint(10) DEFAULT NULL,
  `courseid` bigint(10) NOT NULL,
  `parent` bigint(10) DEFAULT NULL,
  `depth` bigint(10) NOT NULL DEFAULT '0',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `aggregation` bigint(10) NOT NULL DEFAULT '0',
  `keephigh` bigint(10) NOT NULL DEFAULT '0',
  `droplow` bigint(10) NOT NULL DEFAULT '0',
  `aggregateonlygraded` tinyint(1) NOT NULL DEFAULT '0',
  `aggregateoutcomes` tinyint(1) NOT NULL DEFAULT '0',
  `aggregatesubcats` tinyint(1) NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_gradcatehist_act_ix` (`action`),
  KEY `mdl01_gradcatehist_tim_ix` (`timemodified`),
  KEY `mdl01_gradcatehist_old_ix` (`oldid`),
  KEY `mdl01_gradcatehist_cou_ix` (`courseid`),
  KEY `mdl01_gradcatehist_par_ix` (`parent`),
  KEY `mdl01_gradcatehist_log_ix` (`loggeduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='History of grade_categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_grade_categories_history`
--

LOCK TABLES `mdl01_grade_categories_history` WRITE;
/*!40000 ALTER TABLE `mdl01_grade_categories_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_grade_categories_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_grade_grades`
--

DROP TABLE IF EXISTS `mdl01_grade_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_grade_grades` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `itemid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `rawgrade` decimal(10,5) DEFAULT NULL,
  `rawgrademax` decimal(10,5) NOT NULL DEFAULT '100.00000',
  `rawgrademin` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `rawscaleid` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  `finalgrade` decimal(10,5) DEFAULT NULL,
  `hidden` bigint(10) NOT NULL DEFAULT '0',
  `locked` bigint(10) NOT NULL DEFAULT '0',
  `locktime` bigint(10) NOT NULL DEFAULT '0',
  `exported` bigint(10) NOT NULL DEFAULT '0',
  `overridden` bigint(10) NOT NULL DEFAULT '0',
  `excluded` bigint(10) NOT NULL DEFAULT '0',
  `feedback` longtext COLLATE utf8mb4_unicode_ci,
  `feedbackformat` bigint(10) NOT NULL DEFAULT '0',
  `information` longtext COLLATE utf8mb4_unicode_ci,
  `informationformat` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `aggregationstatus` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unknown',
  `aggregationweight` decimal(10,5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_gradgrad_useite_uix` (`userid`,`itemid`),
  KEY `mdl01_gradgrad_locloc_ix` (`locked`,`locktime`),
  KEY `mdl01_gradgrad_ite_ix` (`itemid`),
  KEY `mdl01_gradgrad_use_ix` (`userid`),
  KEY `mdl01_gradgrad_raw_ix` (`rawscaleid`),
  KEY `mdl01_gradgrad_use2_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='grade_grades  This table keeps individual grades for each us';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_grade_grades`
--

LOCK TABLES `mdl01_grade_grades` WRITE;
/*!40000 ALTER TABLE `mdl01_grade_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_grade_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_grade_grades_history`
--

DROP TABLE IF EXISTS `mdl01_grade_grades_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_grade_grades_history` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `action` bigint(10) NOT NULL DEFAULT '0',
  `oldid` bigint(10) NOT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `loggeduser` bigint(10) DEFAULT NULL,
  `itemid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `rawgrade` decimal(10,5) DEFAULT NULL,
  `rawgrademax` decimal(10,5) NOT NULL DEFAULT '100.00000',
  `rawgrademin` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `rawscaleid` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  `finalgrade` decimal(10,5) DEFAULT NULL,
  `hidden` bigint(10) NOT NULL DEFAULT '0',
  `locked` bigint(10) NOT NULL DEFAULT '0',
  `locktime` bigint(10) NOT NULL DEFAULT '0',
  `exported` bigint(10) NOT NULL DEFAULT '0',
  `overridden` bigint(10) NOT NULL DEFAULT '0',
  `excluded` bigint(10) NOT NULL DEFAULT '0',
  `feedback` longtext COLLATE utf8mb4_unicode_ci,
  `feedbackformat` bigint(10) NOT NULL DEFAULT '0',
  `information` longtext COLLATE utf8mb4_unicode_ci,
  `informationformat` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_gradgradhist_act_ix` (`action`),
  KEY `mdl01_gradgradhist_tim_ix` (`timemodified`),
  KEY `mdl01_gradgradhist_useiteti_ix` (`userid`,`itemid`,`timemodified`),
  KEY `mdl01_gradgradhist_old_ix` (`oldid`),
  KEY `mdl01_gradgradhist_ite_ix` (`itemid`),
  KEY `mdl01_gradgradhist_use_ix` (`userid`),
  KEY `mdl01_gradgradhist_raw_ix` (`rawscaleid`),
  KEY `mdl01_gradgradhist_use2_ix` (`usermodified`),
  KEY `mdl01_gradgradhist_log_ix` (`loggeduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='History table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_grade_grades_history`
--

LOCK TABLES `mdl01_grade_grades_history` WRITE;
/*!40000 ALTER TABLE `mdl01_grade_grades_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_grade_grades_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_grade_import_newitem`
--

DROP TABLE IF EXISTS `mdl01_grade_import_newitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_grade_import_newitem` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `itemname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `importcode` bigint(10) NOT NULL,
  `importer` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_gradimponewi_imp_ix` (`importer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='temporary table for storing new grade_item names from grade ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_grade_import_newitem`
--

LOCK TABLES `mdl01_grade_import_newitem` WRITE;
/*!40000 ALTER TABLE `mdl01_grade_import_newitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_grade_import_newitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_grade_import_values`
--

DROP TABLE IF EXISTS `mdl01_grade_import_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_grade_import_values` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `itemid` bigint(10) DEFAULT NULL,
  `newgradeitem` bigint(10) DEFAULT NULL,
  `userid` bigint(10) NOT NULL,
  `finalgrade` decimal(10,5) DEFAULT NULL,
  `feedback` longtext COLLATE utf8mb4_unicode_ci,
  `importcode` bigint(10) NOT NULL,
  `importer` bigint(10) DEFAULT NULL,
  `importonlyfeedback` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_gradimpovalu_ite_ix` (`itemid`),
  KEY `mdl01_gradimpovalu_new_ix` (`newgradeitem`),
  KEY `mdl01_gradimpovalu_imp_ix` (`importer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Temporary table for importing grades';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_grade_import_values`
--

LOCK TABLES `mdl01_grade_import_values` WRITE;
/*!40000 ALTER TABLE `mdl01_grade_import_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_grade_import_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_grade_items`
--

DROP TABLE IF EXISTS `mdl01_grade_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_grade_items` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) DEFAULT NULL,
  `categoryid` bigint(10) DEFAULT NULL,
  `itemname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itemtype` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `itemmodule` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iteminstance` bigint(10) DEFAULT NULL,
  `itemnumber` bigint(10) DEFAULT NULL,
  `iteminfo` longtext COLLATE utf8mb4_unicode_ci,
  `idnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calculation` longtext COLLATE utf8mb4_unicode_ci,
  `gradetype` smallint(4) NOT NULL DEFAULT '1',
  `grademax` decimal(10,5) NOT NULL DEFAULT '100.00000',
  `grademin` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `scaleid` bigint(10) DEFAULT NULL,
  `outcomeid` bigint(10) DEFAULT NULL,
  `gradepass` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `multfactor` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `plusfactor` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `aggregationcoef` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `aggregationcoef2` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `display` bigint(10) NOT NULL DEFAULT '0',
  `decimals` tinyint(1) DEFAULT NULL,
  `hidden` bigint(10) NOT NULL DEFAULT '0',
  `locked` bigint(10) NOT NULL DEFAULT '0',
  `locktime` bigint(10) NOT NULL DEFAULT '0',
  `needsupdate` bigint(10) NOT NULL DEFAULT '0',
  `weightoverride` tinyint(1) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_graditem_locloc_ix` (`locked`,`locktime`),
  KEY `mdl01_graditem_itenee_ix` (`itemtype`,`needsupdate`),
  KEY `mdl01_graditem_gra_ix` (`gradetype`),
  KEY `mdl01_graditem_idncou_ix` (`idnumber`,`courseid`),
  KEY `mdl01_graditem_cou_ix` (`courseid`),
  KEY `mdl01_graditem_cat_ix` (`categoryid`),
  KEY `mdl01_graditem_sca_ix` (`scaleid`),
  KEY `mdl01_graditem_out_ix` (`outcomeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table keeps information about gradeable items (ie colum';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_grade_items`
--

LOCK TABLES `mdl01_grade_items` WRITE;
/*!40000 ALTER TABLE `mdl01_grade_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_grade_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_grade_items_history`
--

DROP TABLE IF EXISTS `mdl01_grade_items_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_grade_items_history` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `action` bigint(10) NOT NULL DEFAULT '0',
  `oldid` bigint(10) NOT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `loggeduser` bigint(10) DEFAULT NULL,
  `courseid` bigint(10) DEFAULT NULL,
  `categoryid` bigint(10) DEFAULT NULL,
  `itemname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itemtype` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `itemmodule` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iteminstance` bigint(10) DEFAULT NULL,
  `itemnumber` bigint(10) DEFAULT NULL,
  `iteminfo` longtext COLLATE utf8mb4_unicode_ci,
  `idnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calculation` longtext COLLATE utf8mb4_unicode_ci,
  `gradetype` smallint(4) NOT NULL DEFAULT '1',
  `grademax` decimal(10,5) NOT NULL DEFAULT '100.00000',
  `grademin` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `scaleid` bigint(10) DEFAULT NULL,
  `outcomeid` bigint(10) DEFAULT NULL,
  `gradepass` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `multfactor` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `plusfactor` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `aggregationcoef` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `aggregationcoef2` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `hidden` bigint(10) NOT NULL DEFAULT '0',
  `locked` bigint(10) NOT NULL DEFAULT '0',
  `locktime` bigint(10) NOT NULL DEFAULT '0',
  `needsupdate` bigint(10) NOT NULL DEFAULT '0',
  `display` bigint(10) NOT NULL DEFAULT '0',
  `decimals` tinyint(1) DEFAULT NULL,
  `weightoverride` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_graditemhist_act_ix` (`action`),
  KEY `mdl01_graditemhist_tim_ix` (`timemodified`),
  KEY `mdl01_graditemhist_old_ix` (`oldid`),
  KEY `mdl01_graditemhist_cou_ix` (`courseid`),
  KEY `mdl01_graditemhist_cat_ix` (`categoryid`),
  KEY `mdl01_graditemhist_sca_ix` (`scaleid`),
  KEY `mdl01_graditemhist_out_ix` (`outcomeid`),
  KEY `mdl01_graditemhist_log_ix` (`loggeduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='History of grade_items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_grade_items_history`
--

LOCK TABLES `mdl01_grade_items_history` WRITE;
/*!40000 ALTER TABLE `mdl01_grade_items_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_grade_items_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_grade_letters`
--

DROP TABLE IF EXISTS `mdl01_grade_letters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_grade_letters` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `lowerboundary` decimal(10,5) NOT NULL,
  `letter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_gradlett_conlowlet_uix` (`contextid`,`lowerboundary`,`letter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Repository for grade letters, for courses and other moodle e';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_grade_letters`
--

LOCK TABLES `mdl01_grade_letters` WRITE;
/*!40000 ALTER TABLE `mdl01_grade_letters` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_grade_letters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_grade_outcomes`
--

DROP TABLE IF EXISTS `mdl01_grade_outcomes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_grade_outcomes` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) DEFAULT NULL,
  `shortname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fullname` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `scaleid` bigint(10) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_gradoutc_cousho_uix` (`courseid`,`shortname`),
  KEY `mdl01_gradoutc_cou_ix` (`courseid`),
  KEY `mdl01_gradoutc_sca_ix` (`scaleid`),
  KEY `mdl01_gradoutc_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table describes the outcomes used in the system. An out';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_grade_outcomes`
--

LOCK TABLES `mdl01_grade_outcomes` WRITE;
/*!40000 ALTER TABLE `mdl01_grade_outcomes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_grade_outcomes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_grade_outcomes_courses`
--

DROP TABLE IF EXISTS `mdl01_grade_outcomes_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_grade_outcomes_courses` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `outcomeid` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_gradoutccour_couout_uix` (`courseid`,`outcomeid`),
  KEY `mdl01_gradoutccour_cou_ix` (`courseid`),
  KEY `mdl01_gradoutccour_out_ix` (`outcomeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='stores what outcomes are used in what courses.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_grade_outcomes_courses`
--

LOCK TABLES `mdl01_grade_outcomes_courses` WRITE;
/*!40000 ALTER TABLE `mdl01_grade_outcomes_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_grade_outcomes_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_grade_outcomes_history`
--

DROP TABLE IF EXISTS `mdl01_grade_outcomes_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_grade_outcomes_history` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `action` bigint(10) NOT NULL DEFAULT '0',
  `oldid` bigint(10) NOT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `loggeduser` bigint(10) DEFAULT NULL,
  `courseid` bigint(10) DEFAULT NULL,
  `shortname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fullname` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `scaleid` bigint(10) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_gradoutchist_act_ix` (`action`),
  KEY `mdl01_gradoutchist_tim_ix` (`timemodified`),
  KEY `mdl01_gradoutchist_old_ix` (`oldid`),
  KEY `mdl01_gradoutchist_cou_ix` (`courseid`),
  KEY `mdl01_gradoutchist_sca_ix` (`scaleid`),
  KEY `mdl01_gradoutchist_log_ix` (`loggeduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='History table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_grade_outcomes_history`
--

LOCK TABLES `mdl01_grade_outcomes_history` WRITE;
/*!40000 ALTER TABLE `mdl01_grade_outcomes_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_grade_outcomes_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_grade_settings`
--

DROP TABLE IF EXISTS `mdl01_grade_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_grade_settings` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_gradsett_counam_uix` (`courseid`,`name`),
  KEY `mdl01_gradsett_cou_ix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='gradebook settings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_grade_settings`
--

LOCK TABLES `mdl01_grade_settings` WRITE;
/*!40000 ALTER TABLE `mdl01_grade_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_grade_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_grading_areas`
--

DROP TABLE IF EXISTS `mdl01_grading_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_grading_areas` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `component` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `areaname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `activemethod` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_gradarea_concomare_uix` (`contextid`,`component`,`areaname`),
  KEY `mdl01_gradarea_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Identifies gradable areas where advanced grading can happen.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_grading_areas`
--

LOCK TABLES `mdl01_grading_areas` WRITE;
/*!40000 ALTER TABLE `mdl01_grading_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_grading_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_grading_definitions`
--

DROP TABLE IF EXISTS `mdl01_grading_definitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_grading_definitions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `areaid` bigint(10) NOT NULL,
  `method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `descriptionformat` tinyint(2) DEFAULT NULL,
  `status` bigint(10) NOT NULL DEFAULT '0',
  `copiedfromid` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `usercreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `timecopied` bigint(10) DEFAULT '0',
  `options` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_graddefi_aremet_uix` (`areaid`,`method`),
  KEY `mdl01_graddefi_are_ix` (`areaid`),
  KEY `mdl01_graddefi_use_ix` (`usermodified`),
  KEY `mdl01_graddefi_use2_ix` (`usercreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Contains the basic information about an advanced grading for';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_grading_definitions`
--

LOCK TABLES `mdl01_grading_definitions` WRITE;
/*!40000 ALTER TABLE `mdl01_grading_definitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_grading_definitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_grading_instances`
--

DROP TABLE IF EXISTS `mdl01_grading_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_grading_instances` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `definitionid` bigint(10) NOT NULL,
  `raterid` bigint(10) NOT NULL,
  `itemid` bigint(10) DEFAULT NULL,
  `rawgrade` decimal(10,5) DEFAULT NULL,
  `status` bigint(10) NOT NULL DEFAULT '0',
  `feedback` longtext COLLATE utf8mb4_unicode_ci,
  `feedbackformat` tinyint(2) DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_gradinst_def_ix` (`definitionid`),
  KEY `mdl01_gradinst_rat_ix` (`raterid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Grading form instance is an assessment record for one gradab';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_grading_instances`
--

LOCK TABLES `mdl01_grading_instances` WRITE;
/*!40000 ALTER TABLE `mdl01_grading_instances` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_grading_instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_gradingform_guide_comments`
--

DROP TABLE IF EXISTS `mdl01_gradingform_guide_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_gradingform_guide_comments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `definitionid` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `descriptionformat` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_gradguidcomm_def_ix` (`definitionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='frequently used comments used in marking guide';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_gradingform_guide_comments`
--

LOCK TABLES `mdl01_gradingform_guide_comments` WRITE;
/*!40000 ALTER TABLE `mdl01_gradingform_guide_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_gradingform_guide_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_gradingform_guide_criteria`
--

DROP TABLE IF EXISTS `mdl01_gradingform_guide_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_gradingform_guide_criteria` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `definitionid` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL,
  `shortname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `descriptionformat` tinyint(2) DEFAULT NULL,
  `descriptionmarkers` longtext COLLATE utf8mb4_unicode_ci,
  `descriptionmarkersformat` tinyint(2) DEFAULT NULL,
  `maxscore` decimal(10,5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_gradguidcrit_def_ix` (`definitionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores the rows of the criteria grid.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_gradingform_guide_criteria`
--

LOCK TABLES `mdl01_gradingform_guide_criteria` WRITE;
/*!40000 ALTER TABLE `mdl01_gradingform_guide_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_gradingform_guide_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_gradingform_guide_fillings`
--

DROP TABLE IF EXISTS `mdl01_gradingform_guide_fillings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_gradingform_guide_fillings` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `instanceid` bigint(10) NOT NULL,
  `criterionid` bigint(10) NOT NULL,
  `remark` longtext COLLATE utf8mb4_unicode_ci,
  `remarkformat` tinyint(2) DEFAULT NULL,
  `score` decimal(10,5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_gradguidfill_inscri_uix` (`instanceid`,`criterionid`),
  KEY `mdl01_gradguidfill_ins_ix` (`instanceid`),
  KEY `mdl01_gradguidfill_cri_ix` (`criterionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores the data of how the guide is filled by a particular r';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_gradingform_guide_fillings`
--

LOCK TABLES `mdl01_gradingform_guide_fillings` WRITE;
/*!40000 ALTER TABLE `mdl01_gradingform_guide_fillings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_gradingform_guide_fillings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_gradingform_rubric_criteria`
--

DROP TABLE IF EXISTS `mdl01_gradingform_rubric_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_gradingform_rubric_criteria` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `definitionid` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `descriptionformat` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_gradrubrcrit_def_ix` (`definitionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores the rows of the rubric grid.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_gradingform_rubric_criteria`
--

LOCK TABLES `mdl01_gradingform_rubric_criteria` WRITE;
/*!40000 ALTER TABLE `mdl01_gradingform_rubric_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_gradingform_rubric_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_gradingform_rubric_fillings`
--

DROP TABLE IF EXISTS `mdl01_gradingform_rubric_fillings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_gradingform_rubric_fillings` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `instanceid` bigint(10) NOT NULL,
  `criterionid` bigint(10) NOT NULL,
  `levelid` bigint(10) DEFAULT NULL,
  `remark` longtext COLLATE utf8mb4_unicode_ci,
  `remarkformat` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_gradrubrfill_inscri_uix` (`instanceid`,`criterionid`),
  KEY `mdl01_gradrubrfill_lev_ix` (`levelid`),
  KEY `mdl01_gradrubrfill_ins_ix` (`instanceid`),
  KEY `mdl01_gradrubrfill_cri_ix` (`criterionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores the data of how the rubric is filled by a particular ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_gradingform_rubric_fillings`
--

LOCK TABLES `mdl01_gradingform_rubric_fillings` WRITE;
/*!40000 ALTER TABLE `mdl01_gradingform_rubric_fillings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_gradingform_rubric_fillings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_gradingform_rubric_levels`
--

DROP TABLE IF EXISTS `mdl01_gradingform_rubric_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_gradingform_rubric_levels` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `criterionid` bigint(10) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `definition` longtext COLLATE utf8mb4_unicode_ci,
  `definitionformat` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_gradrubrleve_cri_ix` (`criterionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores the columns of the rubric grid.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_gradingform_rubric_levels`
--

LOCK TABLES `mdl01_gradingform_rubric_levels` WRITE;
/*!40000 ALTER TABLE `mdl01_gradingform_rubric_levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_gradingform_rubric_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_groupings`
--

DROP TABLE IF EXISTS `mdl01_groupings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_groupings` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `idnumber` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT '0',
  `configdata` longtext COLLATE utf8mb4_unicode_ci,
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_grou_idn2_ix` (`idnumber`),
  KEY `mdl01_grou_cou2_ix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='A grouping is a collection of groups. WAS: groups_groupings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_groupings`
--

LOCK TABLES `mdl01_groupings` WRITE;
/*!40000 ALTER TABLE `mdl01_groupings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_groupings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_groupings_groups`
--

DROP TABLE IF EXISTS `mdl01_groupings_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_groupings_groups` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `groupingid` bigint(10) NOT NULL DEFAULT '0',
  `groupid` bigint(10) NOT NULL DEFAULT '0',
  `timeadded` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_grougrou_gro_ix` (`groupingid`),
  KEY `mdl01_grougrou_gro2_ix` (`groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Link a grouping to a group (note, groups can be in multiple ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_groupings_groups`
--

LOCK TABLES `mdl01_groupings_groups` WRITE;
/*!40000 ALTER TABLE `mdl01_groupings_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_groupings_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_groups`
--

DROP TABLE IF EXISTS `mdl01_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_groups` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `idnumber` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT '0',
  `enrolmentkey` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` bigint(10) NOT NULL DEFAULT '0',
  `hidepicture` tinyint(1) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_grou_idn_ix` (`idnumber`),
  KEY `mdl01_grou_cou_ix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Each record represents a group.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_groups`
--

LOCK TABLES `mdl01_groups` WRITE;
/*!40000 ALTER TABLE `mdl01_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_groups_members`
--

DROP TABLE IF EXISTS `mdl01_groups_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_groups_members` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `groupid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `timeadded` bigint(10) NOT NULL DEFAULT '0',
  `component` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_groumemb_gro_ix` (`groupid`),
  KEY `mdl01_groumemb_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Link a user to a group.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_groups_members`
--

LOCK TABLES `mdl01_groups_members` WRITE;
/*!40000 ALTER TABLE `mdl01_groups_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_groups_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_imscp`
--

DROP TABLE IF EXISTS `mdl01_imscp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_imscp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_unicode_ci,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `revision` bigint(10) NOT NULL DEFAULT '0',
  `keepold` bigint(10) NOT NULL DEFAULT '-1',
  `structure` longtext COLLATE utf8mb4_unicode_ci,
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_imsc_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='each record is one imscp resource';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_imscp`
--

LOCK TABLES `mdl01_imscp` WRITE;
/*!40000 ALTER TABLE `mdl01_imscp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_imscp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_label`
--

DROP TABLE IF EXISTS `mdl01_label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_label` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `introformat` smallint(4) DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_labe_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines labels';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_label`
--

LOCK TABLES `mdl01_label` WRITE;
/*!40000 ALTER TABLE `mdl01_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_lesson`
--

DROP TABLE IF EXISTS `mdl01_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_lesson` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_unicode_ci,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `practice` smallint(3) NOT NULL DEFAULT '0',
  `modattempts` smallint(3) NOT NULL DEFAULT '0',
  `usepassword` smallint(3) NOT NULL DEFAULT '0',
  `password` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dependency` bigint(10) NOT NULL DEFAULT '0',
  `conditions` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` bigint(10) NOT NULL DEFAULT '0',
  `custom` smallint(3) NOT NULL DEFAULT '0',
  `ongoing` smallint(3) NOT NULL DEFAULT '0',
  `usemaxgrade` smallint(3) NOT NULL DEFAULT '0',
  `maxanswers` smallint(3) NOT NULL DEFAULT '4',
  `maxattempts` smallint(3) NOT NULL DEFAULT '5',
  `review` smallint(3) NOT NULL DEFAULT '0',
  `nextpagedefault` smallint(3) NOT NULL DEFAULT '0',
  `feedback` smallint(3) NOT NULL DEFAULT '1',
  `minquestions` smallint(3) NOT NULL DEFAULT '0',
  `maxpages` smallint(3) NOT NULL DEFAULT '0',
  `timelimit` bigint(10) NOT NULL DEFAULT '0',
  `retake` smallint(3) NOT NULL DEFAULT '1',
  `activitylink` bigint(10) NOT NULL DEFAULT '0',
  `mediafile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mediaheight` bigint(10) NOT NULL DEFAULT '100',
  `mediawidth` bigint(10) NOT NULL DEFAULT '650',
  `mediaclose` smallint(3) NOT NULL DEFAULT '0',
  `slideshow` smallint(3) NOT NULL DEFAULT '0',
  `width` bigint(10) NOT NULL DEFAULT '640',
  `height` bigint(10) NOT NULL DEFAULT '480',
  `bgcolor` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#FFFFFF',
  `displayleft` smallint(3) NOT NULL DEFAULT '0',
  `displayleftif` smallint(3) NOT NULL DEFAULT '0',
  `progressbar` smallint(3) NOT NULL DEFAULT '0',
  `available` bigint(10) NOT NULL DEFAULT '0',
  `deadline` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `completionendreached` tinyint(1) DEFAULT '0',
  `completiontimespent` bigint(11) DEFAULT '0',
  `allowofflineattempts` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_less_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines lesson';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_lesson`
--

LOCK TABLES `mdl01_lesson` WRITE;
/*!40000 ALTER TABLE `mdl01_lesson` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_lesson_answers`
--

DROP TABLE IF EXISTS `mdl01_lesson_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_lesson_answers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) NOT NULL DEFAULT '0',
  `pageid` bigint(10) NOT NULL DEFAULT '0',
  `jumpto` bigint(11) NOT NULL DEFAULT '0',
  `grade` smallint(4) NOT NULL DEFAULT '0',
  `score` bigint(10) NOT NULL DEFAULT '0',
  `flags` smallint(3) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `answer` longtext COLLATE utf8mb4_unicode_ci,
  `answerformat` tinyint(2) NOT NULL DEFAULT '0',
  `response` longtext COLLATE utf8mb4_unicode_ci,
  `responseformat` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_lessansw_les_ix` (`lessonid`),
  KEY `mdl01_lessansw_pag_ix` (`pageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines lesson_answers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_lesson_answers`
--

LOCK TABLES `mdl01_lesson_answers` WRITE;
/*!40000 ALTER TABLE `mdl01_lesson_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_lesson_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_lesson_attempts`
--

DROP TABLE IF EXISTS `mdl01_lesson_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_lesson_attempts` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) NOT NULL DEFAULT '0',
  `pageid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `answerid` bigint(10) NOT NULL DEFAULT '0',
  `retry` smallint(3) NOT NULL DEFAULT '0',
  `correct` bigint(10) NOT NULL DEFAULT '0',
  `useranswer` longtext COLLATE utf8mb4_unicode_ci,
  `timeseen` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_lessatte_use_ix` (`userid`),
  KEY `mdl01_lessatte_les_ix` (`lessonid`),
  KEY `mdl01_lessatte_pag_ix` (`pageid`),
  KEY `mdl01_lessatte_ans_ix` (`answerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines lesson_attempts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_lesson_attempts`
--

LOCK TABLES `mdl01_lesson_attempts` WRITE;
/*!40000 ALTER TABLE `mdl01_lesson_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_lesson_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_lesson_branch`
--

DROP TABLE IF EXISTS `mdl01_lesson_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_lesson_branch` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `pageid` bigint(10) NOT NULL DEFAULT '0',
  `retry` bigint(10) NOT NULL DEFAULT '0',
  `flag` smallint(3) NOT NULL DEFAULT '0',
  `timeseen` bigint(10) NOT NULL DEFAULT '0',
  `nextpageid` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_lessbran_use_ix` (`userid`),
  KEY `mdl01_lessbran_les_ix` (`lessonid`),
  KEY `mdl01_lessbran_pag_ix` (`pageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='branches for each lesson/user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_lesson_branch`
--

LOCK TABLES `mdl01_lesson_branch` WRITE;
/*!40000 ALTER TABLE `mdl01_lesson_branch` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_lesson_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_lesson_grades`
--

DROP TABLE IF EXISTS `mdl01_lesson_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_lesson_grades` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `grade` double NOT NULL DEFAULT '0',
  `late` smallint(3) NOT NULL DEFAULT '0',
  `completed` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_lessgrad_use_ix` (`userid`),
  KEY `mdl01_lessgrad_les_ix` (`lessonid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines lesson_grades';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_lesson_grades`
--

LOCK TABLES `mdl01_lesson_grades` WRITE;
/*!40000 ALTER TABLE `mdl01_lesson_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_lesson_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_lesson_overrides`
--

DROP TABLE IF EXISTS `mdl01_lesson_overrides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_lesson_overrides` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) NOT NULL DEFAULT '0',
  `groupid` bigint(10) DEFAULT NULL,
  `userid` bigint(10) DEFAULT NULL,
  `available` bigint(10) DEFAULT NULL,
  `deadline` bigint(10) DEFAULT NULL,
  `timelimit` bigint(10) DEFAULT NULL,
  `review` smallint(3) DEFAULT NULL,
  `maxattempts` smallint(3) DEFAULT NULL,
  `retake` smallint(3) DEFAULT NULL,
  `password` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_lessover_les_ix` (`lessonid`),
  KEY `mdl01_lessover_gro_ix` (`groupid`),
  KEY `mdl01_lessover_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='The overrides to lesson settings.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_lesson_overrides`
--

LOCK TABLES `mdl01_lesson_overrides` WRITE;
/*!40000 ALTER TABLE `mdl01_lesson_overrides` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_lesson_overrides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_lesson_pages`
--

DROP TABLE IF EXISTS `mdl01_lesson_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_lesson_pages` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) NOT NULL DEFAULT '0',
  `prevpageid` bigint(10) NOT NULL DEFAULT '0',
  `nextpageid` bigint(10) NOT NULL DEFAULT '0',
  `qtype` smallint(3) NOT NULL DEFAULT '0',
  `qoption` smallint(3) NOT NULL DEFAULT '0',
  `layout` smallint(3) NOT NULL DEFAULT '1',
  `display` smallint(3) NOT NULL DEFAULT '1',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contents` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contentsformat` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_lesspage_les_ix` (`lessonid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines lesson_pages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_lesson_pages`
--

LOCK TABLES `mdl01_lesson_pages` WRITE;
/*!40000 ALTER TABLE `mdl01_lesson_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_lesson_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_lesson_timer`
--

DROP TABLE IF EXISTS `mdl01_lesson_timer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_lesson_timer` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `starttime` bigint(10) NOT NULL DEFAULT '0',
  `lessontime` bigint(10) NOT NULL DEFAULT '0',
  `completed` tinyint(1) DEFAULT '0',
  `timemodifiedoffline` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_lesstime_use_ix` (`userid`),
  KEY `mdl01_lesstime_les_ix` (`lessonid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='lesson timer for each lesson';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_lesson_timer`
--

LOCK TABLES `mdl01_lesson_timer` WRITE;
/*!40000 ALTER TABLE `mdl01_lesson_timer` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_lesson_timer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_license`
--

DROP TABLE IF EXISTS `mdl01_license`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_license` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `shortname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` longtext COLLATE utf8mb4_unicode_ci,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `version` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='store licenses used by moodle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_license`
--

LOCK TABLES `mdl01_license` WRITE;
/*!40000 ALTER TABLE `mdl01_license` DISABLE KEYS */;
INSERT INTO `mdl01_license` VALUES (1,'unknown','Unknown license','',1,2010033100),(2,'allrightsreserved','All rights reserved','http://en.wikipedia.org/wiki/All_rights_reserved',1,2010033100),(3,'public','Public Domain','http://creativecommons.org/licenses/publicdomain/',1,2010033100),(4,'cc','Creative Commons','http://creativecommons.org/licenses/by/3.0/',1,2010033100),(5,'cc-nd','Creative Commons - NoDerivs','http://creativecommons.org/licenses/by-nd/3.0/',1,2010033100),(6,'cc-nc-nd','Creative Commons - No Commercial NoDerivs','http://creativecommons.org/licenses/by-nc-nd/3.0/',1,2010033100),(7,'cc-nc','Creative Commons - No Commercial','http://creativecommons.org/licenses/by-nc/3.0/',1,2013051500),(8,'cc-nc-sa','Creative Commons - No Commercial ShareAlike','http://creativecommons.org/licenses/by-nc-sa/3.0/',1,2010033100),(9,'cc-sa','Creative Commons - ShareAlike','http://creativecommons.org/licenses/by-sa/3.0/',1,2010033100);
/*!40000 ALTER TABLE `mdl01_license` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_lock_db`
--

DROP TABLE IF EXISTS `mdl01_lock_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_lock_db` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `resourcekey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` bigint(10) DEFAULT NULL,
  `owner` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_lockdb_res_uix` (`resourcekey`),
  KEY `mdl01_lockdb_exp_ix` (`expires`),
  KEY `mdl01_lockdb_own_ix` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores active and inactive lock types for db locking method.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_lock_db`
--

LOCK TABLES `mdl01_lock_db` WRITE;
/*!40000 ALTER TABLE `mdl01_lock_db` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_lock_db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_log`
--

DROP TABLE IF EXISTS `mdl01_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `time` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `course` bigint(10) NOT NULL DEFAULT '0',
  `module` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cmid` bigint(10) NOT NULL DEFAULT '0',
  `action` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl01_log_coumodact_ix` (`course`,`module`,`action`),
  KEY `mdl01_log_tim_ix` (`time`),
  KEY `mdl01_log_act_ix` (`action`),
  KEY `mdl01_log_usecou_ix` (`userid`,`course`),
  KEY `mdl01_log_cmi_ix` (`cmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Every action is logged as far as possible';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_log`
--

LOCK TABLES `mdl01_log` WRITE;
/*!40000 ALTER TABLE `mdl01_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_log_display`
--

DROP TABLE IF EXISTS `mdl01_log_display`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_log_display` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `module` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `action` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mtable` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `field` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `component` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_logdisp_modact_uix` (`module`,`action`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='For a particular module/action, specifies a moodle table/fie';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_log_display`
--

LOCK TABLES `mdl01_log_display` WRITE;
/*!40000 ALTER TABLE `mdl01_log_display` DISABLE KEYS */;
INSERT INTO `mdl01_log_display` VALUES (1,'course','user report','user','CONCAT(firstname, \' \', lastname)','moodle'),(2,'course','view','course','fullname','moodle'),(3,'course','view section','course_sections','name','moodle'),(4,'course','update','course','fullname','moodle'),(5,'course','hide','course','fullname','moodle'),(6,'course','show','course','fullname','moodle'),(7,'course','move','course','fullname','moodle'),(8,'course','enrol','course','fullname','moodle'),(9,'course','unenrol','course','fullname','moodle'),(10,'course','report log','course','fullname','moodle'),(11,'course','report live','course','fullname','moodle'),(12,'course','report outline','course','fullname','moodle'),(13,'course','report participation','course','fullname','moodle'),(14,'course','report stats','course','fullname','moodle'),(15,'category','add','course_categories','name','moodle'),(16,'category','hide','course_categories','name','moodle'),(17,'category','move','course_categories','name','moodle'),(18,'category','show','course_categories','name','moodle'),(19,'category','update','course_categories','name','moodle'),(20,'message','write','user','CONCAT(firstname, \' \', lastname)','moodle'),(21,'message','read','user','CONCAT(firstname, \' \', lastname)','moodle'),(22,'message','add contact','user','CONCAT(firstname, \' \', lastname)','moodle'),(23,'message','remove contact','user','CONCAT(firstname, \' \', lastname)','moodle'),(24,'message','block contact','user','CONCAT(firstname, \' \', lastname)','moodle'),(25,'message','unblock contact','user','CONCAT(firstname, \' \', lastname)','moodle'),(26,'group','view','groups','name','moodle'),(27,'tag','update','tag','name','moodle'),(28,'tag','flag','tag','name','moodle'),(29,'user','view','user','CONCAT(firstname, \' \', lastname)','moodle'),(30,'assign','add','assign','name','mod_assign'),(31,'assign','delete mod','assign','name','mod_assign'),(32,'assign','download all submissions','assign','name','mod_assign'),(33,'assign','grade submission','assign','name','mod_assign'),(34,'assign','lock submission','assign','name','mod_assign'),(35,'assign','reveal identities','assign','name','mod_assign'),(36,'assign','revert submission to draft','assign','name','mod_assign'),(37,'assign','set marking workflow state','assign','name','mod_assign'),(38,'assign','submission statement accepted','assign','name','mod_assign'),(39,'assign','submit','assign','name','mod_assign'),(40,'assign','submit for grading','assign','name','mod_assign'),(41,'assign','unlock submission','assign','name','mod_assign'),(42,'assign','update','assign','name','mod_assign'),(43,'assign','upload','assign','name','mod_assign'),(44,'assign','view','assign','name','mod_assign'),(45,'assign','view all','course','fullname','mod_assign'),(46,'assign','view confirm submit assignment form','assign','name','mod_assign'),(47,'assign','view grading form','assign','name','mod_assign'),(48,'assign','view submission','assign','name','mod_assign'),(49,'assign','view submission grading table','assign','name','mod_assign'),(50,'assign','view submit assignment form','assign','name','mod_assign'),(51,'assign','view feedback','assign','name','mod_assign'),(52,'assign','view batch set marking workflow state','assign','name','mod_assign'),(53,'assignment','view','assignment','name','mod_assignment'),(54,'assignment','add','assignment','name','mod_assignment'),(55,'assignment','update','assignment','name','mod_assignment'),(56,'assignment','view submission','assignment','name','mod_assignment'),(57,'assignment','upload','assignment','name','mod_assignment'),(58,'book','add','book','name','mod_book'),(59,'book','update','book','name','mod_book'),(60,'book','view','book','name','mod_book'),(61,'book','add chapter','book_chapters','title','mod_book'),(62,'book','update chapter','book_chapters','title','mod_book'),(63,'book','view chapter','book_chapters','title','mod_book'),(64,'chat','view','chat','name','mod_chat'),(65,'chat','add','chat','name','mod_chat'),(66,'chat','update','chat','name','mod_chat'),(67,'chat','report','chat','name','mod_chat'),(68,'chat','talk','chat','name','mod_chat'),(69,'choice','view','choice','name','mod_choice'),(70,'choice','update','choice','name','mod_choice'),(71,'choice','add','choice','name','mod_choice'),(72,'choice','report','choice','name','mod_choice'),(73,'choice','choose','choice','name','mod_choice'),(74,'choice','choose again','choice','name','mod_choice'),(75,'data','view','data','name','mod_data'),(76,'data','add','data','name','mod_data'),(77,'data','update','data','name','mod_data'),(78,'data','record delete','data','name','mod_data'),(79,'data','fields add','data_fields','name','mod_data'),(80,'data','fields update','data_fields','name','mod_data'),(81,'data','templates saved','data','name','mod_data'),(82,'data','templates def','data','name','mod_data'),(83,'feedback','startcomplete','feedback','name','mod_feedback'),(84,'feedback','submit','feedback','name','mod_feedback'),(85,'feedback','delete','feedback','name','mod_feedback'),(86,'feedback','view','feedback','name','mod_feedback'),(87,'feedback','view all','course','shortname','mod_feedback'),(88,'folder','view','folder','name','mod_folder'),(89,'folder','view all','folder','name','mod_folder'),(90,'folder','update','folder','name','mod_folder'),(91,'folder','add','folder','name','mod_folder'),(92,'forum','add','forum','name','mod_forum'),(93,'forum','update','forum','name','mod_forum'),(94,'forum','add discussion','forum_discussions','name','mod_forum'),(95,'forum','add post','forum_posts','subject','mod_forum'),(96,'forum','update post','forum_posts','subject','mod_forum'),(97,'forum','user report','user','CONCAT(firstname, \' \', lastname)','mod_forum'),(98,'forum','move discussion','forum_discussions','name','mod_forum'),(99,'forum','view subscribers','forum','name','mod_forum'),(100,'forum','view discussion','forum_discussions','name','mod_forum'),(101,'forum','view forum','forum','name','mod_forum'),(102,'forum','subscribe','forum','name','mod_forum'),(103,'forum','unsubscribe','forum','name','mod_forum'),(104,'forum','pin discussion','forum_discussions','name','mod_forum'),(105,'forum','unpin discussion','forum_discussions','name','mod_forum'),(106,'glossary','add','glossary','name','mod_glossary'),(107,'glossary','update','glossary','name','mod_glossary'),(108,'glossary','view','glossary','name','mod_glossary'),(109,'glossary','view all','glossary','name','mod_glossary'),(110,'glossary','add entry','glossary','name','mod_glossary'),(111,'glossary','update entry','glossary','name','mod_glossary'),(112,'glossary','add category','glossary','name','mod_glossary'),(113,'glossary','update category','glossary','name','mod_glossary'),(114,'glossary','delete category','glossary','name','mod_glossary'),(115,'glossary','approve entry','glossary','name','mod_glossary'),(116,'glossary','disapprove entry','glossary','name','mod_glossary'),(117,'glossary','view entry','glossary_entries','concept','mod_glossary'),(118,'imscp','view','imscp','name','mod_imscp'),(119,'imscp','view all','imscp','name','mod_imscp'),(120,'imscp','update','imscp','name','mod_imscp'),(121,'imscp','add','imscp','name','mod_imscp'),(122,'label','add','label','name','mod_label'),(123,'label','update','label','name','mod_label'),(124,'lesson','start','lesson','name','mod_lesson'),(125,'lesson','end','lesson','name','mod_lesson'),(126,'lesson','view','lesson_pages','title','mod_lesson'),(127,'lti','view','lti','name','mod_lti'),(128,'lti','launch','lti','name','mod_lti'),(129,'lti','view all','lti','name','mod_lti'),(130,'page','view','page','name','mod_page'),(131,'page','view all','page','name','mod_page'),(132,'page','update','page','name','mod_page'),(133,'page','add','page','name','mod_page'),(134,'quiz','add','quiz','name','mod_quiz'),(135,'quiz','update','quiz','name','mod_quiz'),(136,'quiz','view','quiz','name','mod_quiz'),(137,'quiz','report','quiz','name','mod_quiz'),(138,'quiz','attempt','quiz','name','mod_quiz'),(139,'quiz','submit','quiz','name','mod_quiz'),(140,'quiz','review','quiz','name','mod_quiz'),(141,'quiz','editquestions','quiz','name','mod_quiz'),(142,'quiz','preview','quiz','name','mod_quiz'),(143,'quiz','start attempt','quiz','name','mod_quiz'),(144,'quiz','close attempt','quiz','name','mod_quiz'),(145,'quiz','continue attempt','quiz','name','mod_quiz'),(146,'quiz','edit override','quiz','name','mod_quiz'),(147,'quiz','delete override','quiz','name','mod_quiz'),(148,'quiz','view summary','quiz','name','mod_quiz'),(149,'resource','view','resource','name','mod_resource'),(150,'resource','view all','resource','name','mod_resource'),(151,'resource','update','resource','name','mod_resource'),(152,'resource','add','resource','name','mod_resource'),(153,'scorm','view','scorm','name','mod_scorm'),(154,'scorm','review','scorm','name','mod_scorm'),(155,'scorm','update','scorm','name','mod_scorm'),(156,'scorm','add','scorm','name','mod_scorm'),(157,'survey','add','survey','name','mod_survey'),(158,'survey','update','survey','name','mod_survey'),(159,'survey','download','survey','name','mod_survey'),(160,'survey','view form','survey','name','mod_survey'),(161,'survey','view graph','survey','name','mod_survey'),(162,'survey','view report','survey','name','mod_survey'),(163,'survey','submit','survey','name','mod_survey'),(164,'url','view','url','name','mod_url'),(165,'url','view all','url','name','mod_url'),(166,'url','update','url','name','mod_url'),(167,'url','add','url','name','mod_url'),(168,'workshop','add','workshop','name','mod_workshop'),(169,'workshop','update','workshop','name','mod_workshop'),(170,'workshop','view','workshop','name','mod_workshop'),(171,'workshop','view all','workshop','name','mod_workshop'),(172,'workshop','add submission','workshop_submissions','title','mod_workshop'),(173,'workshop','update submission','workshop_submissions','title','mod_workshop'),(174,'workshop','view submission','workshop_submissions','title','mod_workshop'),(175,'workshop','add assessment','workshop_submissions','title','mod_workshop'),(176,'workshop','update assessment','workshop_submissions','title','mod_workshop'),(177,'workshop','add example','workshop_submissions','title','mod_workshop'),(178,'workshop','update example','workshop_submissions','title','mod_workshop'),(179,'workshop','view example','workshop_submissions','title','mod_workshop'),(180,'workshop','add reference assessment','workshop_submissions','title','mod_workshop'),(181,'workshop','update reference assessment','workshop_submissions','title','mod_workshop'),(182,'workshop','add example assessment','workshop_submissions','title','mod_workshop'),(183,'workshop','update example assessment','workshop_submissions','title','mod_workshop'),(184,'workshop','update aggregate grades','workshop','name','mod_workshop'),(185,'workshop','update clear aggregated grades','workshop','name','mod_workshop'),(186,'workshop','update clear assessments','workshop','name','mod_workshop'),(187,'book','exportimscp','book','name','booktool_exportimscp'),(188,'book','print','book','name','booktool_print'),(189,'book','print chapter','book_chapters','title','booktool_print');
/*!40000 ALTER TABLE `mdl01_log_display` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_log_queries`
--

DROP TABLE IF EXISTS `mdl01_log_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_log_queries` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `qtype` mediumint(5) NOT NULL,
  `sqltext` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sqlparams` longtext COLLATE utf8mb4_unicode_ci,
  `error` mediumint(5) NOT NULL DEFAULT '0',
  `info` longtext COLLATE utf8mb4_unicode_ci,
  `backtrace` longtext COLLATE utf8mb4_unicode_ci,
  `exectime` decimal(10,5) NOT NULL,
  `timelogged` bigint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Logged database queries.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_log_queries`
--

LOCK TABLES `mdl01_log_queries` WRITE;
/*!40000 ALTER TABLE `mdl01_log_queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_log_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_logstore_standard_log`
--

DROP TABLE IF EXISTS `mdl01_logstore_standard_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_logstore_standard_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `component` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `action` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `objecttable` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `objectid` bigint(10) DEFAULT NULL,
  `crud` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `edulevel` tinyint(1) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `contextlevel` bigint(10) NOT NULL,
  `contextinstanceid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `courseid` bigint(10) DEFAULT NULL,
  `relateduserid` bigint(10) DEFAULT NULL,
  `anonymous` tinyint(1) NOT NULL DEFAULT '0',
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `timecreated` bigint(10) NOT NULL,
  `origin` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `realuserid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_logsstanlog_tim_ix` (`timecreated`),
  KEY `mdl01_logsstanlog_couanotim_ix` (`courseid`,`anonymous`,`timecreated`),
  KEY `mdl01_logsstanlog_useconcon_ix` (`userid`,`contextlevel`,`contextinstanceid`,`crud`,`edulevel`,`timecreated`),
  KEY `mdl01_logsstanlog_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Standard log table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_logstore_standard_log`
--

LOCK TABLES `mdl01_logstore_standard_log` WRITE;
/*!40000 ALTER TABLE `mdl01_logstore_standard_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_logstore_standard_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_lti`
--

DROP TABLE IF EXISTS `mdl01_lti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_lti` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_unicode_ci,
  `introformat` smallint(4) DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `typeid` bigint(10) DEFAULT NULL,
  `toolurl` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `securetoolurl` longtext COLLATE utf8mb4_unicode_ci,
  `instructorchoicesendname` tinyint(1) DEFAULT NULL,
  `instructorchoicesendemailaddr` tinyint(1) DEFAULT NULL,
  `instructorchoiceallowroster` tinyint(1) DEFAULT NULL,
  `instructorchoiceallowsetting` tinyint(1) DEFAULT NULL,
  `instructorcustomparameters` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instructorchoiceacceptgrades` tinyint(1) DEFAULT NULL,
  `grade` bigint(10) NOT NULL DEFAULT '100',
  `launchcontainer` tinyint(2) NOT NULL DEFAULT '1',
  `resourcekey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debuglaunch` tinyint(1) NOT NULL DEFAULT '0',
  `showtitlelaunch` tinyint(1) NOT NULL DEFAULT '0',
  `showdescriptionlaunch` tinyint(1) NOT NULL DEFAULT '0',
  `servicesalt` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` longtext COLLATE utf8mb4_unicode_ci,
  `secureicon` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `mdl01_lti_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table contains Basic LTI activities instances';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_lti`
--

LOCK TABLES `mdl01_lti` WRITE;
/*!40000 ALTER TABLE `mdl01_lti` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_lti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_lti_submission`
--

DROP TABLE IF EXISTS `mdl01_lti_submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_lti_submission` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `ltiid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `datesubmitted` bigint(10) NOT NULL,
  `dateupdated` bigint(10) NOT NULL,
  `gradepercent` decimal(10,5) NOT NULL,
  `originalgrade` decimal(10,5) NOT NULL,
  `launchid` bigint(10) NOT NULL,
  `state` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_ltisubm_lti_ix` (`ltiid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Keeps track of individual submissions for LTI activities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_lti_submission`
--

LOCK TABLES `mdl01_lti_submission` WRITE;
/*!40000 ALTER TABLE `mdl01_lti_submission` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_lti_submission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_lti_tool_proxies`
--

DROP TABLE IF EXISTS `mdl01_lti_tool_proxies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_lti_tool_proxies` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Tool Provider',
  `regurl` longtext COLLATE utf8mb4_unicode_ci,
  `state` tinyint(2) NOT NULL DEFAULT '1',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendorcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capabilityoffered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `serviceoffered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `toolproxy` longtext COLLATE utf8mb4_unicode_ci,
  `createdby` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_ltitoolprox_gui_uix` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='LTI tool proxy registrations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_lti_tool_proxies`
--

LOCK TABLES `mdl01_lti_tool_proxies` WRITE;
/*!40000 ALTER TABLE `mdl01_lti_tool_proxies` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_lti_tool_proxies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_lti_tool_settings`
--

DROP TABLE IF EXISTS `mdl01_lti_tool_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_lti_tool_settings` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `toolproxyid` bigint(10) NOT NULL,
  `course` bigint(10) DEFAULT NULL,
  `coursemoduleid` bigint(10) DEFAULT NULL,
  `settings` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_ltitoolsett_too_ix` (`toolproxyid`),
  KEY `mdl01_ltitoolsett_cou_ix` (`course`),
  KEY `mdl01_ltitoolsett_cou2_ix` (`coursemoduleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='LTI tool setting values';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_lti_tool_settings`
--

LOCK TABLES `mdl01_lti_tool_settings` WRITE;
/*!40000 ALTER TABLE `mdl01_lti_tool_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_lti_tool_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_lti_types`
--

DROP TABLE IF EXISTS `mdl01_lti_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_lti_types` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'basiclti Activity',
  `baseurl` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tooldomain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(2) NOT NULL DEFAULT '2',
  `course` bigint(10) NOT NULL,
  `coursevisible` tinyint(1) NOT NULL DEFAULT '0',
  `toolproxyid` bigint(10) DEFAULT NULL,
  `enabledcapability` longtext COLLATE utf8mb4_unicode_ci,
  `parameter` longtext COLLATE utf8mb4_unicode_ci,
  `icon` longtext COLLATE utf8mb4_unicode_ci,
  `secureicon` longtext COLLATE utf8mb4_unicode_ci,
  `createdby` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `mdl01_ltitype_cou_ix` (`course`),
  KEY `mdl01_ltitype_too_ix` (`tooldomain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Basic LTI pre-configured activities';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_lti_types`
--

LOCK TABLES `mdl01_lti_types` WRITE;
/*!40000 ALTER TABLE `mdl01_lti_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_lti_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_lti_types_config`
--

DROP TABLE IF EXISTS `mdl01_lti_types_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_lti_types_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `typeid` bigint(10) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_ltitypeconf_typ_ix` (`typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Basic LTI types configuration';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_lti_types_config`
--

LOCK TABLES `mdl01_lti_types_config` WRITE;
/*!40000 ALTER TABLE `mdl01_lti_types_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_lti_types_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_message`
--

DROP TABLE IF EXISTS `mdl01_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_message` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `useridfrom` bigint(10) NOT NULL DEFAULT '0',
  `useridto` bigint(10) NOT NULL DEFAULT '0',
  `subject` longtext COLLATE utf8mb4_unicode_ci,
  `fullmessage` longtext COLLATE utf8mb4_unicode_ci,
  `fullmessageformat` smallint(4) DEFAULT '0',
  `fullmessagehtml` longtext COLLATE utf8mb4_unicode_ci,
  `smallmessage` longtext COLLATE utf8mb4_unicode_ci,
  `notification` tinyint(1) DEFAULT '0',
  `contexturl` longtext COLLATE utf8mb4_unicode_ci,
  `contexturlname` longtext COLLATE utf8mb4_unicode_ci,
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timeuserfromdeleted` bigint(10) NOT NULL DEFAULT '0',
  `timeusertodeleted` bigint(10) NOT NULL DEFAULT '0',
  `component` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eventtype` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_mess_useusetimtim_ix` (`useridfrom`,`useridto`,`timeuserfromdeleted`,`timeusertodeleted`),
  KEY `mdl01_mess_usetimnot_ix` (`useridfrom`,`timeuserfromdeleted`,`notification`),
  KEY `mdl01_mess_usetimnot2_ix` (`useridto`,`timeusertodeleted`,`notification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores all unread messages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_message`
--

LOCK TABLES `mdl01_message` WRITE;
/*!40000 ALTER TABLE `mdl01_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_message_airnotifier_devices`
--

DROP TABLE IF EXISTS `mdl01_message_airnotifier_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_message_airnotifier_devices` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userdeviceid` bigint(10) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_messairndevi_use_uix` (`userdeviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Store information about the devices registered in Airnotifie';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_message_airnotifier_devices`
--

LOCK TABLES `mdl01_message_airnotifier_devices` WRITE;
/*!40000 ALTER TABLE `mdl01_message_airnotifier_devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_message_airnotifier_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_message_contacts`
--

DROP TABLE IF EXISTS `mdl01_message_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_message_contacts` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `contactid` bigint(10) NOT NULL DEFAULT '0',
  `blocked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_messcont_usecon_uix` (`userid`,`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Maintains lists of relationships between users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_message_contacts`
--

LOCK TABLES `mdl01_message_contacts` WRITE;
/*!40000 ALTER TABLE `mdl01_message_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_message_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_message_popup`
--

DROP TABLE IF EXISTS `mdl01_message_popup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_message_popup` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `messageid` bigint(10) NOT NULL,
  `isread` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_messpopu_mesisr_uix` (`messageid`,`isread`),
  KEY `mdl01_messpopu_isr_ix` (`isread`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Keep state of notifications for the popup message processor';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_message_popup`
--

LOCK TABLES `mdl01_message_popup` WRITE;
/*!40000 ALTER TABLE `mdl01_message_popup` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_message_popup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_message_processors`
--

DROP TABLE IF EXISTS `mdl01_message_processors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_message_processors` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(166) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='List of message output plugins';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_message_processors`
--

LOCK TABLES `mdl01_message_processors` WRITE;
/*!40000 ALTER TABLE `mdl01_message_processors` DISABLE KEYS */;
INSERT INTO `mdl01_message_processors` VALUES (1,'airnotifier',0),(2,'email',1),(3,'jabber',1),(4,'popup',1);
/*!40000 ALTER TABLE `mdl01_message_processors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_message_providers`
--

DROP TABLE IF EXISTS `mdl01_message_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_message_providers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `component` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `capability` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_messprov_comnam_uix` (`component`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table stores the message providers (modules and core sy';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_message_providers`
--

LOCK TABLES `mdl01_message_providers` WRITE;
/*!40000 ALTER TABLE `mdl01_message_providers` DISABLE KEYS */;
INSERT INTO `mdl01_message_providers` VALUES (1,'notices','moodle','moodle/site:config'),(2,'errors','moodle','moodle/site:config'),(3,'availableupdate','moodle','moodle/site:config'),(4,'instantmessage','moodle',NULL),(5,'backup','moodle','moodle/site:config'),(6,'courserequested','moodle','moodle/site:approvecourse'),(7,'courserequestapproved','moodle','moodle/course:request'),(8,'courserequestrejected','moodle','moodle/course:request'),(9,'badgerecipientnotice','moodle','moodle/badges:earnbadge'),(10,'badgecreatornotice','moodle',NULL),(11,'competencyplancomment','moodle',NULL),(12,'competencyusercompcomment','moodle',NULL),(13,'insights','moodle','moodle/analytics:listinsights'),(14,'assign_notification','mod_assign',NULL),(15,'assignment_updates','mod_assignment',NULL),(16,'submission','mod_feedback',NULL),(17,'message','mod_feedback',NULL),(18,'posts','mod_forum',NULL),(19,'digests','mod_forum',NULL),(20,'graded_essay','mod_lesson',NULL),(21,'submission','mod_quiz','mod/quiz:emailnotifysubmission'),(22,'confirmation','mod_quiz','mod/quiz:emailconfirmsubmission'),(23,'attempt_overdue','mod_quiz','mod/quiz:emailwarnoverdue'),(24,'flatfile_enrolment','enrol_flatfile',NULL),(25,'imsenterprise_enrolment','enrol_imsenterprise',NULL),(26,'expiry_notification','enrol_manual',NULL),(27,'paypal_enrolment','enrol_paypal',NULL),(28,'expiry_notification','enrol_self',NULL),(29,'invalidrecipienthandler','tool_messageinbound',NULL),(30,'messageprocessingerror','tool_messageinbound',NULL),(31,'messageprocessingsuccess','tool_messageinbound',NULL),(32,'notification','tool_monitor','tool/monitor:subscribe');
/*!40000 ALTER TABLE `mdl01_message_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_message_read`
--

DROP TABLE IF EXISTS `mdl01_message_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_message_read` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `useridfrom` bigint(10) NOT NULL DEFAULT '0',
  `useridto` bigint(10) NOT NULL DEFAULT '0',
  `subject` longtext COLLATE utf8mb4_unicode_ci,
  `fullmessage` longtext COLLATE utf8mb4_unicode_ci,
  `fullmessageformat` smallint(4) DEFAULT '0',
  `fullmessagehtml` longtext COLLATE utf8mb4_unicode_ci,
  `smallmessage` longtext COLLATE utf8mb4_unicode_ci,
  `notification` tinyint(1) DEFAULT '0',
  `contexturl` longtext COLLATE utf8mb4_unicode_ci,
  `contexturlname` longtext COLLATE utf8mb4_unicode_ci,
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timeread` bigint(10) NOT NULL DEFAULT '0',
  `timeuserfromdeleted` bigint(10) NOT NULL DEFAULT '0',
  `timeusertodeleted` bigint(10) NOT NULL DEFAULT '0',
  `component` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eventtype` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_messread_useusetimtim_ix` (`useridfrom`,`useridto`,`timeuserfromdeleted`,`timeusertodeleted`),
  KEY `mdl01_messread_nottim_ix` (`notification`,`timeread`),
  KEY `mdl01_messread_usetimnot_ix` (`useridfrom`,`timeuserfromdeleted`,`notification`),
  KEY `mdl01_messread_usetimnot2_ix` (`useridto`,`timeusertodeleted`,`notification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores all messages that have been read';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_message_read`
--

LOCK TABLES `mdl01_message_read` WRITE;
/*!40000 ALTER TABLE `mdl01_message_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_message_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_message_working`
--

DROP TABLE IF EXISTS `mdl01_message_working`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_message_working` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `unreadmessageid` bigint(10) NOT NULL,
  `processorid` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_messwork_unr_ix` (`unreadmessageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Lists all the messages and processors that need to be proces';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_message_working`
--

LOCK TABLES `mdl01_message_working` WRITE;
/*!40000 ALTER TABLE `mdl01_message_working` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_message_working` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_messageinbound_datakeys`
--

DROP TABLE IF EXISTS `mdl01_messageinbound_datakeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_messageinbound_datakeys` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `handler` bigint(10) NOT NULL,
  `datavalue` bigint(10) NOT NULL,
  `datakey` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `expires` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_messdata_handat_uix` (`handler`,`datavalue`),
  KEY `mdl01_messdata_han_ix` (`handler`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Inbound Message data item secret keys.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_messageinbound_datakeys`
--

LOCK TABLES `mdl01_messageinbound_datakeys` WRITE;
/*!40000 ALTER TABLE `mdl01_messageinbound_datakeys` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_messageinbound_datakeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_messageinbound_handlers`
--

DROP TABLE IF EXISTS `mdl01_messageinbound_handlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_messageinbound_handlers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `component` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `classname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `defaultexpiration` bigint(10) NOT NULL DEFAULT '86400',
  `validateaddress` tinyint(1) NOT NULL DEFAULT '1',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_messhand_cla_uix` (`classname`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Inbound Message Handler definitions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_messageinbound_handlers`
--

LOCK TABLES `mdl01_messageinbound_handlers` WRITE;
/*!40000 ALTER TABLE `mdl01_messageinbound_handlers` DISABLE KEYS */;
INSERT INTO `mdl01_messageinbound_handlers` VALUES (1,'core','\\core\\message\\inbound\\private_files_handler',0,1,0),(2,'mod_forum','\\mod_forum\\message\\inbound\\reply_handler',604800,1,0),(3,'tool_messageinbound','\\tool_messageinbound\\message\\inbound\\invalid_recipient_handler',604800,0,1);
/*!40000 ALTER TABLE `mdl01_messageinbound_handlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_messageinbound_messagelist`
--

DROP TABLE IF EXISTS `mdl01_messageinbound_messagelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_messageinbound_messagelist` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `messageid` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` bigint(10) NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_messmess_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='A list of message IDs for existing replies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_messageinbound_messagelist`
--

LOCK TABLES `mdl01_messageinbound_messagelist` WRITE;
/*!40000 ALTER TABLE `mdl01_messageinbound_messagelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_messageinbound_messagelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_mnet_application`
--

DROP TABLE IF EXISTS `mdl01_mnet_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_mnet_application` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `xmlrpc_server_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sso_land_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sso_jump_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Information about applications on remote hosts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_mnet_application`
--

LOCK TABLES `mdl01_mnet_application` WRITE;
/*!40000 ALTER TABLE `mdl01_mnet_application` DISABLE KEYS */;
INSERT INTO `mdl01_mnet_application` VALUES (1,'moodle','Moodle','/mnet/xmlrpc/server.php','/auth/mnet/land.php','/auth/mnet/jump.php'),(2,'mahara','Mahara','/api/xmlrpc/server.php','/auth/xmlrpc/land.php','/auth/xmlrpc/jump.php');
/*!40000 ALTER TABLE `mdl01_mnet_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_mnet_host`
--

DROP TABLE IF EXISTS `mdl01_mnet_host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_mnet_host` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `wwwroot` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `public_key` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_key_expires` bigint(10) NOT NULL DEFAULT '0',
  `transport` tinyint(2) NOT NULL DEFAULT '0',
  `portno` mediumint(5) NOT NULL DEFAULT '0',
  `last_connect_time` bigint(10) NOT NULL DEFAULT '0',
  `last_log_id` bigint(10) NOT NULL DEFAULT '0',
  `force_theme` tinyint(1) NOT NULL DEFAULT '0',
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicationid` bigint(10) NOT NULL DEFAULT '1',
  `sslverification` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_mnethost_app_ix` (`applicationid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Information about the local and remote hosts for RPC';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_mnet_host`
--

LOCK TABLES `mdl01_mnet_host` WRITE;
/*!40000 ALTER TABLE `mdl01_mnet_host` DISABLE KEYS */;
INSERT INTO `mdl01_mnet_host` VALUES (1,0,'http://127.0.0.1:8888/moodle','10.0.2.15','','',0,0,0,0,0,0,NULL,1,0),(2,0,'','','All Hosts','',0,0,0,0,0,0,NULL,1,0);
/*!40000 ALTER TABLE `mdl01_mnet_host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_mnet_host2service`
--

DROP TABLE IF EXISTS `mdl01_mnet_host2service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_mnet_host2service` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `hostid` bigint(10) NOT NULL DEFAULT '0',
  `serviceid` bigint(10) NOT NULL DEFAULT '0',
  `publish` tinyint(1) NOT NULL DEFAULT '0',
  `subscribe` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_mnethost_hosser_uix` (`hostid`,`serviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Information about the services for a given host';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_mnet_host2service`
--

LOCK TABLES `mdl01_mnet_host2service` WRITE;
/*!40000 ALTER TABLE `mdl01_mnet_host2service` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_mnet_host2service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_mnet_log`
--

DROP TABLE IF EXISTS `mdl01_mnet_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_mnet_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `hostid` bigint(10) NOT NULL DEFAULT '0',
  `remoteid` bigint(10) NOT NULL DEFAULT '0',
  `time` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `course` bigint(10) NOT NULL DEFAULT '0',
  `coursename` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cmid` bigint(10) NOT NULL DEFAULT '0',
  `action` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl01_mnetlog_hosusecou_ix` (`hostid`,`userid`,`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Store session data from users migrating to other sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_mnet_log`
--

LOCK TABLES `mdl01_mnet_log` WRITE;
/*!40000 ALTER TABLE `mdl01_mnet_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_mnet_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_mnet_remote_rpc`
--

DROP TABLE IF EXISTS `mdl01_mnet_remote_rpc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_mnet_remote_rpc` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `functionname` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `xmlrpcpath` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `plugintype` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pluginname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table describes functions that might be called remotely';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_mnet_remote_rpc`
--

LOCK TABLES `mdl01_mnet_remote_rpc` WRITE;
/*!40000 ALTER TABLE `mdl01_mnet_remote_rpc` DISABLE KEYS */;
INSERT INTO `mdl01_mnet_remote_rpc` VALUES (1,'user_authorise','auth/mnet/auth.php/user_authorise','auth','mnet',1),(2,'keepalive_server','auth/mnet/auth.php/keepalive_server','auth','mnet',1),(3,'kill_children','auth/mnet/auth.php/kill_children','auth','mnet',1),(4,'refresh_log','auth/mnet/auth.php/refresh_log','auth','mnet',1),(5,'fetch_user_image','auth/mnet/auth.php/fetch_user_image','auth','mnet',1),(6,'fetch_theme_info','auth/mnet/auth.php/fetch_theme_info','auth','mnet',1),(7,'update_enrolments','auth/mnet/auth.php/update_enrolments','auth','mnet',1),(8,'keepalive_client','auth/mnet/auth.php/keepalive_client','auth','mnet',1),(9,'kill_child','auth/mnet/auth.php/kill_child','auth','mnet',1),(10,'available_courses','enrol/mnet/enrol.php/available_courses','enrol','mnet',1),(11,'user_enrolments','enrol/mnet/enrol.php/user_enrolments','enrol','mnet',1),(12,'enrol_user','enrol/mnet/enrol.php/enrol_user','enrol','mnet',1),(13,'unenrol_user','enrol/mnet/enrol.php/unenrol_user','enrol','mnet',1),(14,'course_enrolments','enrol/mnet/enrol.php/course_enrolments','enrol','mnet',1),(15,'send_content_intent','portfolio/mahara/lib.php/send_content_intent','portfolio','mahara',1),(16,'send_content_ready','portfolio/mahara/lib.php/send_content_ready','portfolio','mahara',1);
/*!40000 ALTER TABLE `mdl01_mnet_remote_rpc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_mnet_remote_service2rpc`
--

DROP TABLE IF EXISTS `mdl01_mnet_remote_service2rpc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_mnet_remote_service2rpc` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `serviceid` bigint(10) NOT NULL DEFAULT '0',
  `rpcid` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_mnetremoserv_rpcser_uix` (`rpcid`,`serviceid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Group functions or methods under a service';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_mnet_remote_service2rpc`
--

LOCK TABLES `mdl01_mnet_remote_service2rpc` WRITE;
/*!40000 ALTER TABLE `mdl01_mnet_remote_service2rpc` DISABLE KEYS */;
INSERT INTO `mdl01_mnet_remote_service2rpc` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,8),(9,2,9),(10,3,10),(11,3,11),(12,3,12),(13,3,13),(14,3,14),(15,4,15),(16,4,16);
/*!40000 ALTER TABLE `mdl01_mnet_remote_service2rpc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_mnet_rpc`
--

DROP TABLE IF EXISTS `mdl01_mnet_rpc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_mnet_rpc` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `functionname` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `xmlrpcpath` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `plugintype` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pluginname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `help` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `classname` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `static` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_mnetrpc_enaxml_ix` (`enabled`,`xmlrpcpath`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Functions or methods that we may publish or subscribe to';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_mnet_rpc`
--

LOCK TABLES `mdl01_mnet_rpc` WRITE;
/*!40000 ALTER TABLE `mdl01_mnet_rpc` DISABLE KEYS */;
INSERT INTO `mdl01_mnet_rpc` VALUES (1,'user_authorise','auth/mnet/auth.php/user_authorise','auth','mnet',1,'Return user data for the provided token, compare with user_agent string.','a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:5:\"token\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:37:\"The unique ID provided by remotehost.\";}i:1;a:3:{s:4:\"name\";s:9:\"useragent\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:18:\"User Agent string.\";}}s:6:\"return\";a:2:{s:4:\"type\";s:5:\"array\";s:11:\"description\";s:44:\"$userdata Array of user info for remote host\";}}','auth.php','auth_plugin_mnet',0),(2,'keepalive_server','auth/mnet/auth.php/keepalive_server','auth','mnet',1,'Receives an array of usernames from a remote machine and prods their\nsessions to keep them alive','a:2:{s:10:\"parameters\";a:1:{i:0;a:3:{s:4:\"name\";s:5:\"array\";s:4:\"type\";s:5:\"array\";s:11:\"description\";s:21:\"An array of usernames\";}}s:6:\"return\";a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:28:\"\"All ok\" or an error message\";}}','auth.php','auth_plugin_mnet',0),(3,'kill_children','auth/mnet/auth.php/kill_children','auth','mnet',1,'The IdP uses this function to kill child sessions on other hosts','a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:28:\"Username for session to kill\";}i:1;a:3:{s:4:\"name\";s:9:\"useragent\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:35:\"SHA1 hash of user agent to look for\";}}s:6:\"return\";a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:39:\"A plaintext report of what has happened\";}}','auth.php','auth_plugin_mnet',0),(4,'refresh_log','auth/mnet/auth.php/refresh_log','auth','mnet',1,'Receives an array of log entries from an SP and adds them to the mnet_log\ntable','a:2:{s:10:\"parameters\";a:1:{i:0;a:3:{s:4:\"name\";s:5:\"array\";s:4:\"type\";s:5:\"array\";s:11:\"description\";s:21:\"An array of usernames\";}}s:6:\"return\";a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:28:\"\"All ok\" or an error message\";}}','auth.php','auth_plugin_mnet',0),(5,'fetch_user_image','auth/mnet/auth.php/fetch_user_image','auth','mnet',1,'Returns the user\'s profile image info\nIf the user exists and has a profile picture, the returned array will contain keys:\nf1          - the content of the default 100x100px image\nf1_mimetype - the mimetype of the f1 file\nf2          - the content of the 35x35px variant of the image\nf2_mimetype - the mimetype of the f2 file\nThe mimetype information was added in Moodle 2.0. In Moodle 1.x, images are always jpegs.','a:2:{s:10:\"parameters\";a:1:{i:0;a:3:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:3:\"int\";s:11:\"description\";s:18:\"The id of the user\";}}s:6:\"return\";a:2:{s:4:\"type\";s:11:\"false|array\";s:11:\"description\";s:84:\"false if user not found, empty array if no picture exists, array with data otherwise\";}}','auth.php','auth_plugin_mnet',0),(6,'fetch_theme_info','auth/mnet/auth.php/fetch_theme_info','auth','mnet',1,'Returns the theme information and logo url as strings.','a:2:{s:10:\"parameters\";a:0:{}s:6:\"return\";a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:14:\"The theme info\";}}','auth.php','auth_plugin_mnet',0),(7,'update_enrolments','auth/mnet/auth.php/update_enrolments','auth','mnet',1,'Invoke this function _on_ the IDP to update it with enrolment info local to\nthe SP right after calling user_authorise()\nNormally called by the SP after calling user_authorise()','a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:12:\"The username\";}i:1;a:3:{s:4:\"name\";s:7:\"courses\";s:4:\"type\";s:5:\"array\";s:11:\"description\";s:75:\"Assoc array of courses following the structure of mnetservice_enrol_courses\";}}s:6:\"return\";a:2:{s:4:\"type\";s:4:\"bool\";s:11:\"description\";s:0:\"\";}}','auth.php','auth_plugin_mnet',0),(8,'keepalive_client','auth/mnet/auth.php/keepalive_client','auth','mnet',1,'Poll the IdP server to let it know that a user it has authenticated is still\nonline','a:2:{s:10:\"parameters\";a:0:{}s:6:\"return\";a:2:{s:4:\"type\";s:4:\"void\";s:11:\"description\";s:0:\"\";}}','auth.php','auth_plugin_mnet',0),(9,'kill_child','auth/mnet/auth.php/kill_child','auth','mnet',1,'When the IdP requests that child sessions are terminated,\nthis function will be called on each of the child hosts. The machine that\ncalls the function (over xmlrpc) provides us with the mnethostid we need.','a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:28:\"Username for session to kill\";}i:1;a:3:{s:4:\"name\";s:9:\"useragent\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:35:\"SHA1 hash of user agent to look for\";}}s:6:\"return\";a:2:{s:4:\"type\";s:4:\"bool\";s:11:\"description\";s:15:\"True on success\";}}','auth.php','auth_plugin_mnet',0),(10,'available_courses','enrol/mnet/enrol.php/available_courses','enrol','mnet',1,'Returns list of courses that we offer to the caller for remote enrolment of their users\nSince Moodle 2.0, courses are made available for MNet peers by creating an instance\nof enrol_mnet plugin for the course. Hidden courses are not returned. If there are two\ninstances - one specific for the host and one for \'All hosts\', the setting of the specific\none is used. The id of the peer is kept in customint1, no other custom fields are used.','a:2:{s:10:\"parameters\";a:0:{}s:6:\"return\";a:2:{s:4:\"type\";s:5:\"array\";s:11:\"description\";s:0:\"\";}}','enrol.php','enrol_mnet_mnetservice_enrol',0),(11,'user_enrolments','enrol/mnet/enrol.php/user_enrolments','enrol','mnet',1,'This method has never been implemented in Moodle MNet API','a:2:{s:10:\"parameters\";a:0:{}s:6:\"return\";a:2:{s:4:\"type\";s:5:\"array\";s:11:\"description\";s:11:\"empty array\";}}','enrol.php','enrol_mnet_mnetservice_enrol',0),(12,'enrol_user','enrol/mnet/enrol.php/enrol_user','enrol','mnet',1,'Enrol remote user to our course\nIf we do not have local record for the remote user in our database,\nit gets created here.','a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:8:\"userdata\";s:4:\"type\";s:5:\"array\";s:11:\"description\";s:43:\"user details {@see mnet_fields_to_import()}\";}i:1;a:3:{s:4:\"name\";s:8:\"courseid\";s:4:\"type\";s:3:\"int\";s:11:\"description\";s:19:\"our local course id\";}}s:6:\"return\";a:2:{s:4:\"type\";s:4:\"bool\";s:11:\"description\";s:69:\"true if the enrolment has been successful, throws exception otherwise\";}}','enrol.php','enrol_mnet_mnetservice_enrol',0),(13,'unenrol_user','enrol/mnet/enrol.php/unenrol_user','enrol','mnet',1,'Unenrol remote user from our course\nOnly users enrolled via enrol_mnet plugin can be unenrolled remotely. If the\nremote user is enrolled into the local course via some other enrol plugin\n(enrol_manual for example), the remote host can\'t touch such enrolment. Please\ndo not report this behaviour as bug, it is a feature ;-)','a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:18:\"of the remote user\";}i:1;a:3:{s:4:\"name\";s:8:\"courseid\";s:4:\"type\";s:3:\"int\";s:11:\"description\";s:19:\"of our local course\";}}s:6:\"return\";a:2:{s:4:\"type\";s:4:\"bool\";s:11:\"description\";s:71:\"true if the unenrolment has been successful, throws exception otherwise\";}}','enrol.php','enrol_mnet_mnetservice_enrol',0),(14,'course_enrolments','enrol/mnet/enrol.php/course_enrolments','enrol','mnet',1,'Returns a list of users from the client server who are enrolled in our course\nSuitable instance of enrol_mnet must be created in the course. This method will not\nreturn any information about the enrolments in courses that are not available for\nremote enrolment, even if their users are enrolled into them via other plugin\n(note the difference from {@link self::user_enrolments()}).\nThis method will return enrolment information for users from hosts regardless\nthe enrolment plugin. It does not matter if the user was enrolled remotely by\ntheir admin or locally. Once the course is available for remote enrolments, we\nwill tell them everything about their users.\nIn Moodle 1.x the returned array used to be indexed by username. The side effect\nof MDL-19219 fix is that we do not need to use such index and therefore we can\nreturn all enrolment records. MNet clients 1.x will only use the last record for\nthe student, if she is enrolled via multiple plugins.','a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:8:\"courseid\";s:4:\"type\";s:3:\"int\";s:11:\"description\";s:16:\"ID of our course\";}i:1;a:3:{s:4:\"name\";s:5:\"roles\";s:4:\"type\";s:12:\"string|array\";s:11:\"description\";s:58:\"comma separated list of role shortnames (or array of them)\";}}s:6:\"return\";a:2:{s:4:\"type\";s:5:\"array\";s:11:\"description\";s:0:\"\";}}','enrol.php','enrol_mnet_mnetservice_enrol',0),(15,'fetch_file','portfolio/mahara/lib.php/fetch_file','portfolio','mahara',1,'xmlrpc (mnet) function to get the file.\nreads in the file and returns it base_64 encoded\nso that it can be enrypted by mnet.','a:2:{s:10:\"parameters\";a:1:{i:0;a:3:{s:4:\"name\";s:5:\"token\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:56:\"the token recieved previously during send_content_intent\";}}s:6:\"return\";a:2:{s:4:\"type\";s:4:\"void\";s:11:\"description\";s:0:\"\";}}','lib.php','portfolio_plugin_mahara',1);
/*!40000 ALTER TABLE `mdl01_mnet_rpc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_mnet_service`
--

DROP TABLE IF EXISTS `mdl01_mnet_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_mnet_service` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `apiversion` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `offer` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='A service is a group of functions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_mnet_service`
--

LOCK TABLES `mdl01_mnet_service` WRITE;
/*!40000 ALTER TABLE `mdl01_mnet_service` DISABLE KEYS */;
INSERT INTO `mdl01_mnet_service` VALUES (1,'sso_idp','','1',1),(2,'sso_sp','','1',1),(3,'mnet_enrol','','1',1),(4,'pf','','1',1);
/*!40000 ALTER TABLE `mdl01_mnet_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_mnet_service2rpc`
--

DROP TABLE IF EXISTS `mdl01_mnet_service2rpc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_mnet_service2rpc` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `serviceid` bigint(10) NOT NULL DEFAULT '0',
  `rpcid` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_mnetserv_rpcser_uix` (`rpcid`,`serviceid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Group functions or methods under a service';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_mnet_service2rpc`
--

LOCK TABLES `mdl01_mnet_service2rpc` WRITE;
/*!40000 ALTER TABLE `mdl01_mnet_service2rpc` DISABLE KEYS */;
INSERT INTO `mdl01_mnet_service2rpc` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,8),(9,2,9),(10,3,10),(11,3,11),(12,3,12),(13,3,13),(14,3,14),(15,4,15);
/*!40000 ALTER TABLE `mdl01_mnet_service2rpc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_mnet_session`
--

DROP TABLE IF EXISTS `mdl01_mnet_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_mnet_session` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `token` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mnethostid` bigint(10) NOT NULL DEFAULT '0',
  `useragent` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_timeout` bigint(10) NOT NULL DEFAULT '0',
  `session_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_mnetsess_tok_uix` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Store session data from users migrating to other sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_mnet_session`
--

LOCK TABLES `mdl01_mnet_session` WRITE;
/*!40000 ALTER TABLE `mdl01_mnet_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_mnet_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_mnet_sso_access_control`
--

DROP TABLE IF EXISTS `mdl01_mnet_sso_access_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_mnet_sso_access_control` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mnet_host_id` bigint(10) NOT NULL DEFAULT '0',
  `accessctrl` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'allow',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_mnetssoaccecont_mneu_uix` (`mnet_host_id`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Users by host permitted (or not) to login from a remote prov';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_mnet_sso_access_control`
--

LOCK TABLES `mdl01_mnet_sso_access_control` WRITE;
/*!40000 ALTER TABLE `mdl01_mnet_sso_access_control` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_mnet_sso_access_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_mnetservice_enrol_courses`
--

DROP TABLE IF EXISTS `mdl01_mnetservice_enrol_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_mnetservice_enrol_courses` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `hostid` bigint(10) NOT NULL,
  `remoteid` bigint(10) NOT NULL,
  `categoryid` bigint(10) NOT NULL,
  `categoryname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `fullname` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shortname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `idnumber` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `summary` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `summaryformat` smallint(3) DEFAULT '0',
  `startdate` bigint(10) NOT NULL,
  `roleid` bigint(10) NOT NULL,
  `rolename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_mnetenrocour_hosrem_uix` (`hostid`,`remoteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Caches the information fetched via XML-RPC about courses on ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_mnetservice_enrol_courses`
--

LOCK TABLES `mdl01_mnetservice_enrol_courses` WRITE;
/*!40000 ALTER TABLE `mdl01_mnetservice_enrol_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_mnetservice_enrol_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_mnetservice_enrol_enrolments`
--

DROP TABLE IF EXISTS `mdl01_mnetservice_enrol_enrolments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_mnetservice_enrol_enrolments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `hostid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `remotecourseid` bigint(10) NOT NULL,
  `rolename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `enroltime` bigint(10) NOT NULL DEFAULT '0',
  `enroltype` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl01_mnetenroenro_use_ix` (`userid`),
  KEY `mdl01_mnetenroenro_hos_ix` (`hostid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Caches the information about enrolments of our local users i';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_mnetservice_enrol_enrolments`
--

LOCK TABLES `mdl01_mnetservice_enrol_enrolments` WRITE;
/*!40000 ALTER TABLE `mdl01_mnetservice_enrol_enrolments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_mnetservice_enrol_enrolments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_modules`
--

DROP TABLE IF EXISTS `mdl01_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_modules` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cron` bigint(10) NOT NULL DEFAULT '0',
  `lastcron` bigint(10) NOT NULL DEFAULT '0',
  `search` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mdl01_modu_nam_ix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='modules available in the site';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_modules`
--

LOCK TABLES `mdl01_modules` WRITE;
/*!40000 ALTER TABLE `mdl01_modules` DISABLE KEYS */;
INSERT INTO `mdl01_modules` VALUES (1,'assign',60,0,'',1),(2,'assignment',60,0,'',0),(3,'book',0,0,'',1),(4,'chat',300,0,'',1),(5,'choice',0,0,'',1),(6,'data',0,0,'',1),(7,'feedback',0,0,'',1),(8,'folder',0,0,'',1),(9,'forum',0,0,'',1),(10,'glossary',0,0,'',1),(11,'imscp',0,0,'',1),(12,'label',0,0,'',1),(13,'lesson',0,0,'',1),(14,'lti',0,0,'',1),(15,'page',0,0,'',1),(16,'quiz',60,0,'',1),(17,'resource',0,0,'',1),(18,'scorm',0,0,'',1),(19,'survey',0,0,'',1),(20,'url',0,0,'',1),(21,'wiki',0,0,'',1),(22,'workshop',60,0,'',1);
/*!40000 ALTER TABLE `mdl01_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_my_pages`
--

DROP TABLE IF EXISTS `mdl01_my_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_my_pages` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) DEFAULT '0',
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `private` tinyint(1) NOT NULL DEFAULT '1',
  `sortorder` mediumint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_mypage_usepri_ix` (`userid`,`private`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Extra user pages for the My Moodle system';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_my_pages`
--

LOCK TABLES `mdl01_my_pages` WRITE;
/*!40000 ALTER TABLE `mdl01_my_pages` DISABLE KEYS */;
INSERT INTO `mdl01_my_pages` VALUES (1,NULL,'__default',0,0),(2,NULL,'__default',1,0);
/*!40000 ALTER TABLE `mdl01_my_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_oauth2_endpoint`
--

DROP TABLE IF EXISTS `mdl01_oauth2_endpoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_oauth2_endpoint` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `issuerid` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_oautendp_iss_ix` (`issuerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Describes the named endpoint for an oauth2 service.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_oauth2_endpoint`
--

LOCK TABLES `mdl01_oauth2_endpoint` WRITE;
/*!40000 ALTER TABLE `mdl01_oauth2_endpoint` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_oauth2_endpoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_oauth2_issuer`
--

DROP TABLE IF EXISTS `mdl01_oauth2_issuer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_oauth2_issuer` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `baseurl` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `clientid` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `clientsecret` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `loginscopes` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `loginscopesoffline` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `loginparams` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `loginparamsoffline` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `alloweddomains` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopessupported` longtext COLLATE utf8mb4_unicode_ci,
  `enabled` tinyint(2) NOT NULL DEFAULT '1',
  `showonloginpage` tinyint(2) NOT NULL DEFAULT '1',
  `basicauth` tinyint(2) NOT NULL DEFAULT '0',
  `sortorder` bigint(10) NOT NULL,
  `requireconfirmation` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Details for an oauth 2 connect identity issuer.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_oauth2_issuer`
--

LOCK TABLES `mdl01_oauth2_issuer` WRITE;
/*!40000 ALTER TABLE `mdl01_oauth2_issuer` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_oauth2_issuer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_oauth2_system_account`
--

DROP TABLE IF EXISTS `mdl01_oauth2_system_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_oauth2_system_account` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `issuerid` bigint(10) NOT NULL,
  `refreshtoken` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `grantedscopes` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8mb4_unicode_ci,
  `username` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_oautsystacco_iss_uix` (`issuerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stored details used to get an access token as a system user ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_oauth2_system_account`
--

LOCK TABLES `mdl01_oauth2_system_account` WRITE;
/*!40000 ALTER TABLE `mdl01_oauth2_system_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_oauth2_system_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_oauth2_user_field_mapping`
--

DROP TABLE IF EXISTS `mdl01_oauth2_user_field_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_oauth2_user_field_mapping` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `timemodified` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `issuerid` bigint(10) NOT NULL,
  `externalfield` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `internalfield` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_oautuserfielmapp_iss_uix` (`issuerid`,`internalfield`),
  KEY `mdl01_oautuserfielmapp_iss_ix` (`issuerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Mapping of oauth user fields to moodle fields.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_oauth2_user_field_mapping`
--

LOCK TABLES `mdl01_oauth2_user_field_mapping` WRITE;
/*!40000 ALTER TABLE `mdl01_oauth2_user_field_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_oauth2_user_field_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_page`
--

DROP TABLE IF EXISTS `mdl01_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_page` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_unicode_ci,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `contentformat` smallint(4) NOT NULL DEFAULT '0',
  `legacyfiles` smallint(4) NOT NULL DEFAULT '0',
  `legacyfileslast` bigint(10) DEFAULT NULL,
  `display` smallint(4) NOT NULL DEFAULT '0',
  `displayoptions` longtext COLLATE utf8mb4_unicode_ci,
  `revision` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_page_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Each record is one page and its config data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_page`
--

LOCK TABLES `mdl01_page` WRITE;
/*!40000 ALTER TABLE `mdl01_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_portfolio_instance`
--

DROP TABLE IF EXISTS `mdl01_portfolio_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_portfolio_instance` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `plugin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='base table (not including config data) for instances of port';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_portfolio_instance`
--

LOCK TABLES `mdl01_portfolio_instance` WRITE;
/*!40000 ALTER TABLE `mdl01_portfolio_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_portfolio_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_portfolio_instance_config`
--

DROP TABLE IF EXISTS `mdl01_portfolio_instance_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_portfolio_instance_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `instance` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `mdl01_portinstconf_nam_ix` (`name`),
  KEY `mdl01_portinstconf_ins_ix` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='config for portfolio plugin instances';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_portfolio_instance_config`
--

LOCK TABLES `mdl01_portfolio_instance_config` WRITE;
/*!40000 ALTER TABLE `mdl01_portfolio_instance_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_portfolio_instance_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_portfolio_instance_user`
--

DROP TABLE IF EXISTS `mdl01_portfolio_instance_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_portfolio_instance_user` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `instance` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `mdl01_portinstuser_ins_ix` (`instance`),
  KEY `mdl01_portinstuser_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='user data for portfolio instances.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_portfolio_instance_user`
--

LOCK TABLES `mdl01_portfolio_instance_user` WRITE;
/*!40000 ALTER TABLE `mdl01_portfolio_instance_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_portfolio_instance_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_portfolio_log`
--

DROP TABLE IF EXISTS `mdl01_portfolio_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_portfolio_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `time` bigint(10) NOT NULL,
  `portfolio` bigint(10) NOT NULL,
  `caller_class` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `caller_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `caller_component` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caller_sha1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tempdataid` bigint(10) NOT NULL DEFAULT '0',
  `returnurl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `continueurl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl01_portlog_use_ix` (`userid`),
  KEY `mdl01_portlog_por_ix` (`portfolio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='log of portfolio transfers (used to later check for duplicat';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_portfolio_log`
--

LOCK TABLES `mdl01_portfolio_log` WRITE;
/*!40000 ALTER TABLE `mdl01_portfolio_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_portfolio_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_portfolio_mahara_queue`
--

DROP TABLE IF EXISTS `mdl01_portfolio_mahara_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_portfolio_mahara_queue` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `transferid` bigint(10) NOT NULL,
  `token` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl01_portmahaqueu_tok_ix` (`token`),
  KEY `mdl01_portmahaqueu_tra_ix` (`transferid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='maps mahara tokens to transfer ids';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_portfolio_mahara_queue`
--

LOCK TABLES `mdl01_portfolio_mahara_queue` WRITE;
/*!40000 ALTER TABLE `mdl01_portfolio_mahara_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_portfolio_mahara_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_portfolio_tempdata`
--

DROP TABLE IF EXISTS `mdl01_portfolio_tempdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_portfolio_tempdata` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `data` longtext COLLATE utf8mb4_unicode_ci,
  `expirytime` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `instance` bigint(10) DEFAULT '0',
  `queued` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_porttemp_use_ix` (`userid`),
  KEY `mdl01_porttemp_ins_ix` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='stores temporary data for portfolio exports. the id of this ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_portfolio_tempdata`
--

LOCK TABLES `mdl01_portfolio_tempdata` WRITE;
/*!40000 ALTER TABLE `mdl01_portfolio_tempdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_portfolio_tempdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_post`
--

DROP TABLE IF EXISTS `mdl01_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_post` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `module` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `groupid` bigint(10) NOT NULL DEFAULT '0',
  `moduleid` bigint(10) NOT NULL DEFAULT '0',
  `coursemoduleid` bigint(10) NOT NULL DEFAULT '0',
  `subject` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `summary` longtext COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `uniquehash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rating` bigint(10) NOT NULL DEFAULT '0',
  `format` bigint(10) NOT NULL DEFAULT '0',
  `summaryformat` tinyint(2) NOT NULL DEFAULT '0',
  `attachment` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publishstate` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `lastmodified` bigint(10) NOT NULL DEFAULT '0',
  `created` bigint(10) NOT NULL DEFAULT '0',
  `usermodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_post_iduse_uix` (`id`,`userid`),
  KEY `mdl01_post_las_ix` (`lastmodified`),
  KEY `mdl01_post_mod_ix` (`module`),
  KEY `mdl01_post_sub_ix` (`subject`),
  KEY `mdl01_post_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Generic post table to hold data blog entries etc in differen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_post`
--

LOCK TABLES `mdl01_post` WRITE;
/*!40000 ALTER TABLE `mdl01_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_profiling`
--

DROP TABLE IF EXISTS `mdl01_profiling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_profiling` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `runid` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalexecutiontime` bigint(10) NOT NULL,
  `totalcputime` bigint(10) NOT NULL,
  `totalcalls` bigint(10) NOT NULL,
  `totalmemory` bigint(10) NOT NULL,
  `runreference` tinyint(2) NOT NULL DEFAULT '0',
  `runcomment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_prof_run_uix` (`runid`),
  KEY `mdl01_prof_urlrun_ix` (`url`,`runreference`),
  KEY `mdl01_prof_timrun_ix` (`timecreated`,`runreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores the results of all the profiling runs';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_profiling`
--

LOCK TABLES `mdl01_profiling` WRITE;
/*!40000 ALTER TABLE `mdl01_profiling` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_profiling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_qtype_ddimageortext`
--

DROP TABLE IF EXISTS `mdl01_qtype_ddimageortext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_qtype_ddimageortext` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT '0',
  `shuffleanswers` smallint(4) NOT NULL DEFAULT '1',
  `correctfeedback` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `correctfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `partiallycorrectfeedback` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `partiallycorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `incorrectfeedback` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `incorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `shownumcorrect` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_qtypddim_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines drag and drop (text or images onto a background imag';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_qtype_ddimageortext`
--

LOCK TABLES `mdl01_qtype_ddimageortext` WRITE;
/*!40000 ALTER TABLE `mdl01_qtype_ddimageortext` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_qtype_ddimageortext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_qtype_ddimageortext_drags`
--

DROP TABLE IF EXISTS `mdl01_qtype_ddimageortext_drags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_qtype_ddimageortext_drags` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT '0',
  `no` bigint(10) NOT NULL DEFAULT '0',
  `draggroup` bigint(10) NOT NULL DEFAULT '0',
  `infinite` smallint(4) NOT NULL DEFAULT '0',
  `label` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_qtypddimdrag_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Images to drag. Actual file names are not stored here we use';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_qtype_ddimageortext_drags`
--

LOCK TABLES `mdl01_qtype_ddimageortext_drags` WRITE;
/*!40000 ALTER TABLE `mdl01_qtype_ddimageortext_drags` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_qtype_ddimageortext_drags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_qtype_ddimageortext_drops`
--

DROP TABLE IF EXISTS `mdl01_qtype_ddimageortext_drops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_qtype_ddimageortext_drops` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT '0',
  `no` bigint(10) NOT NULL DEFAULT '0',
  `xleft` bigint(10) NOT NULL DEFAULT '0',
  `ytop` bigint(10) NOT NULL DEFAULT '0',
  `choice` bigint(10) NOT NULL DEFAULT '0',
  `label` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_qtypddimdrop_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Drop boxes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_qtype_ddimageortext_drops`
--

LOCK TABLES `mdl01_qtype_ddimageortext_drops` WRITE;
/*!40000 ALTER TABLE `mdl01_qtype_ddimageortext_drops` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_qtype_ddimageortext_drops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_qtype_ddmarker`
--

DROP TABLE IF EXISTS `mdl01_qtype_ddmarker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_qtype_ddmarker` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT '0',
  `shuffleanswers` smallint(4) NOT NULL DEFAULT '1',
  `correctfeedback` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `correctfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `partiallycorrectfeedback` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `partiallycorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `incorrectfeedback` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `incorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `shownumcorrect` tinyint(2) NOT NULL DEFAULT '0',
  `showmisplaced` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_qtypddma_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines drag and drop (text or images onto a background imag';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_qtype_ddmarker`
--

LOCK TABLES `mdl01_qtype_ddmarker` WRITE;
/*!40000 ALTER TABLE `mdl01_qtype_ddmarker` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_qtype_ddmarker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_qtype_ddmarker_drags`
--

DROP TABLE IF EXISTS `mdl01_qtype_ddmarker_drags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_qtype_ddmarker_drags` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT '0',
  `no` bigint(10) NOT NULL DEFAULT '0',
  `label` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `infinite` smallint(4) NOT NULL DEFAULT '0',
  `noofdrags` bigint(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mdl01_qtypddmadrag_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Labels for markers to drag.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_qtype_ddmarker_drags`
--

LOCK TABLES `mdl01_qtype_ddmarker_drags` WRITE;
/*!40000 ALTER TABLE `mdl01_qtype_ddmarker_drags` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_qtype_ddmarker_drags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_qtype_ddmarker_drops`
--

DROP TABLE IF EXISTS `mdl01_qtype_ddmarker_drops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_qtype_ddmarker_drops` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT '0',
  `no` bigint(10) NOT NULL DEFAULT '0',
  `shape` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coords` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `choice` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_qtypddmadrop_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='drop regions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_qtype_ddmarker_drops`
--

LOCK TABLES `mdl01_qtype_ddmarker_drops` WRITE;
/*!40000 ALTER TABLE `mdl01_qtype_ddmarker_drops` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_qtype_ddmarker_drops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_qtype_essay_options`
--

DROP TABLE IF EXISTS `mdl01_qtype_essay_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_qtype_essay_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL,
  `responseformat` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'editor',
  `responserequired` tinyint(2) NOT NULL DEFAULT '1',
  `responsefieldlines` smallint(4) NOT NULL DEFAULT '15',
  `attachments` smallint(4) NOT NULL DEFAULT '0',
  `attachmentsrequired` smallint(4) NOT NULL DEFAULT '0',
  `graderinfo` longtext COLLATE utf8mb4_unicode_ci,
  `graderinfoformat` smallint(4) NOT NULL DEFAULT '0',
  `responsetemplate` longtext COLLATE utf8mb4_unicode_ci,
  `responsetemplateformat` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_qtypessaopti_que_uix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Extra options for essay questions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_qtype_essay_options`
--

LOCK TABLES `mdl01_qtype_essay_options` WRITE;
/*!40000 ALTER TABLE `mdl01_qtype_essay_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_qtype_essay_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_qtype_match_options`
--

DROP TABLE IF EXISTS `mdl01_qtype_match_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_qtype_match_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT '0',
  `shuffleanswers` smallint(4) NOT NULL DEFAULT '1',
  `correctfeedback` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `correctfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `partiallycorrectfeedback` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `partiallycorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `incorrectfeedback` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `incorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `shownumcorrect` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_qtypmatcopti_que_uix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines the question-type specific options for matching ques';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_qtype_match_options`
--

LOCK TABLES `mdl01_qtype_match_options` WRITE;
/*!40000 ALTER TABLE `mdl01_qtype_match_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_qtype_match_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_qtype_match_subquestions`
--

DROP TABLE IF EXISTS `mdl01_qtype_match_subquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_qtype_match_subquestions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT '0',
  `questiontext` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `questiontextformat` tinyint(2) NOT NULL DEFAULT '0',
  `answertext` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl01_qtypmatcsubq_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='The subquestions that make up a matching question';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_qtype_match_subquestions`
--

LOCK TABLES `mdl01_qtype_match_subquestions` WRITE;
/*!40000 ALTER TABLE `mdl01_qtype_match_subquestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_qtype_match_subquestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_qtype_multichoice_options`
--

DROP TABLE IF EXISTS `mdl01_qtype_multichoice_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_qtype_multichoice_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT '0',
  `layout` smallint(4) NOT NULL DEFAULT '0',
  `single` smallint(4) NOT NULL DEFAULT '0',
  `shuffleanswers` smallint(4) NOT NULL DEFAULT '1',
  `correctfeedback` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `correctfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `partiallycorrectfeedback` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `partiallycorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `incorrectfeedback` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `incorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `answernumbering` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'abc',
  `shownumcorrect` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_qtypmultopti_que_uix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Options for multiple choice questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_qtype_multichoice_options`
--

LOCK TABLES `mdl01_qtype_multichoice_options` WRITE;
/*!40000 ALTER TABLE `mdl01_qtype_multichoice_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_qtype_multichoice_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_qtype_randomsamatch_options`
--

DROP TABLE IF EXISTS `mdl01_qtype_randomsamatch_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_qtype_randomsamatch_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT '0',
  `choose` bigint(10) NOT NULL DEFAULT '4',
  `subcats` tinyint(2) NOT NULL DEFAULT '1',
  `correctfeedback` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `correctfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `partiallycorrectfeedback` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `partiallycorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `incorrectfeedback` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `incorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `shownumcorrect` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_qtyprandopti_que_uix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Info about a random short-answer matching question';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_qtype_randomsamatch_options`
--

LOCK TABLES `mdl01_qtype_randomsamatch_options` WRITE;
/*!40000 ALTER TABLE `mdl01_qtype_randomsamatch_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_qtype_randomsamatch_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_qtype_shortanswer_options`
--

DROP TABLE IF EXISTS `mdl01_qtype_shortanswer_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_qtype_shortanswer_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT '0',
  `usecase` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_qtypshoropti_que_uix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Options for short answer questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_qtype_shortanswer_options`
--

LOCK TABLES `mdl01_qtype_shortanswer_options` WRITE;
/*!40000 ALTER TABLE `mdl01_qtype_shortanswer_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_qtype_shortanswer_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_question`
--

DROP TABLE IF EXISTS `mdl01_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_question` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `category` bigint(10) NOT NULL DEFAULT '0',
  `parent` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `questiontext` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `questiontextformat` tinyint(2) NOT NULL DEFAULT '0',
  `generalfeedback` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `generalfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `defaultmark` decimal(12,7) NOT NULL DEFAULT '1.0000000',
  `penalty` decimal(12,7) NOT NULL DEFAULT '0.3333333',
  `qtype` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `length` bigint(10) NOT NULL DEFAULT '1',
  `stamp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `createdby` bigint(10) DEFAULT NULL,
  `modifiedby` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_ques_qty_ix` (`qtype`),
  KEY `mdl01_ques_cat_ix` (`category`),
  KEY `mdl01_ques_par_ix` (`parent`),
  KEY `mdl01_ques_cre_ix` (`createdby`),
  KEY `mdl01_ques_mod_ix` (`modifiedby`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='The questions themselves';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_question`
--

LOCK TABLES `mdl01_question` WRITE;
/*!40000 ALTER TABLE `mdl01_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_question_answers`
--

DROP TABLE IF EXISTS `mdl01_question_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_question_answers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT '0',
  `answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `answerformat` tinyint(2) NOT NULL DEFAULT '0',
  `fraction` decimal(12,7) NOT NULL DEFAULT '0.0000000',
  `feedback` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `feedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_quesansw_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Answers, with a fractional grade (0-1) and feedback';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_question_answers`
--

LOCK TABLES `mdl01_question_answers` WRITE;
/*!40000 ALTER TABLE `mdl01_question_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_question_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_question_attempt_step_data`
--

DROP TABLE IF EXISTS `mdl01_question_attempt_step_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_question_attempt_step_data` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `attemptstepid` bigint(10) NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `mdl01_quesattestepdata_att_ix` (`attemptstepid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Each question_attempt_step has an associative array of the d';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_question_attempt_step_data`
--

LOCK TABLES `mdl01_question_attempt_step_data` WRITE;
/*!40000 ALTER TABLE `mdl01_question_attempt_step_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_question_attempt_step_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_question_attempt_steps`
--

DROP TABLE IF EXISTS `mdl01_question_attempt_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_question_attempt_steps` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionattemptid` bigint(10) NOT NULL,
  `sequencenumber` bigint(10) NOT NULL,
  `state` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fraction` decimal(12,7) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `userid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_quesattestep_queseq_uix` (`questionattemptid`,`sequencenumber`),
  KEY `mdl01_quesattestep_que_ix` (`questionattemptid`),
  KEY `mdl01_quesattestep_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores one step in in a question attempt. As well as the dat';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_question_attempt_steps`
--

LOCK TABLES `mdl01_question_attempt_steps` WRITE;
/*!40000 ALTER TABLE `mdl01_question_attempt_steps` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_question_attempt_steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_question_attempts`
--

DROP TABLE IF EXISTS `mdl01_question_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_question_attempts` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionusageid` bigint(10) NOT NULL,
  `slot` bigint(10) NOT NULL,
  `behaviour` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `questionid` bigint(10) NOT NULL,
  `variant` bigint(10) NOT NULL DEFAULT '1',
  `maxmark` decimal(12,7) NOT NULL,
  `minfraction` decimal(12,7) NOT NULL,
  `maxfraction` decimal(12,7) NOT NULL DEFAULT '1.0000000',
  `flagged` tinyint(1) NOT NULL DEFAULT '0',
  `questionsummary` longtext COLLATE utf8mb4_unicode_ci,
  `rightanswer` longtext COLLATE utf8mb4_unicode_ci,
  `responsesummary` longtext COLLATE utf8mb4_unicode_ci,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_quesatte_queslo_uix` (`questionusageid`,`slot`),
  KEY `mdl01_quesatte_beh_ix` (`behaviour`),
  KEY `mdl01_quesatte_que_ix` (`questionid`),
  KEY `mdl01_quesatte_que2_ix` (`questionusageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Each row here corresponds to an attempt at one question, as ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_question_attempts`
--

LOCK TABLES `mdl01_question_attempts` WRITE;
/*!40000 ALTER TABLE `mdl01_question_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_question_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_question_calculated`
--

DROP TABLE IF EXISTS `mdl01_question_calculated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_question_calculated` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT '0',
  `answer` bigint(10) NOT NULL DEFAULT '0',
  `tolerance` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0',
  `tolerancetype` bigint(10) NOT NULL DEFAULT '1',
  `correctanswerlength` bigint(10) NOT NULL DEFAULT '2',
  `correctanswerformat` bigint(10) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`),
  KEY `mdl01_quescalc_ans_ix` (`answer`),
  KEY `mdl01_quescalc_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Options for questions of type calculated';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_question_calculated`
--

LOCK TABLES `mdl01_question_calculated` WRITE;
/*!40000 ALTER TABLE `mdl01_question_calculated` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_question_calculated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_question_calculated_options`
--

DROP TABLE IF EXISTS `mdl01_question_calculated_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_question_calculated_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT '0',
  `synchronize` tinyint(2) NOT NULL DEFAULT '0',
  `single` smallint(4) NOT NULL DEFAULT '0',
  `shuffleanswers` smallint(4) NOT NULL DEFAULT '0',
  `correctfeedback` longtext COLLATE utf8mb4_unicode_ci,
  `correctfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `partiallycorrectfeedback` longtext COLLATE utf8mb4_unicode_ci,
  `partiallycorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `incorrectfeedback` longtext COLLATE utf8mb4_unicode_ci,
  `incorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `answernumbering` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'abc',
  `shownumcorrect` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_quescalcopti_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Options for questions of type calculated';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_question_calculated_options`
--

LOCK TABLES `mdl01_question_calculated_options` WRITE;
/*!40000 ALTER TABLE `mdl01_question_calculated_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_question_calculated_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_question_categories`
--

DROP TABLE IF EXISTS `mdl01_question_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_question_categories` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL DEFAULT '0',
  `info` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `infoformat` tinyint(2) NOT NULL DEFAULT '0',
  `stamp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `parent` bigint(10) NOT NULL DEFAULT '0',
  `sortorder` bigint(10) NOT NULL DEFAULT '999',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_quescate_consta_uix` (`contextid`,`stamp`),
  KEY `mdl01_quescate_con_ix` (`contextid`),
  KEY `mdl01_quescate_par_ix` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Categories are for grouping questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_question_categories`
--

LOCK TABLES `mdl01_question_categories` WRITE;
/*!40000 ALTER TABLE `mdl01_question_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_question_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_question_dataset_definitions`
--

DROP TABLE IF EXISTS `mdl01_question_dataset_definitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_question_dataset_definitions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `category` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` bigint(10) NOT NULL DEFAULT '0',
  `options` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `itemcount` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_quesdatadefi_cat_ix` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Organises and stores properties for dataset items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_question_dataset_definitions`
--

LOCK TABLES `mdl01_question_dataset_definitions` WRITE;
/*!40000 ALTER TABLE `mdl01_question_dataset_definitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_question_dataset_definitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_question_dataset_items`
--

DROP TABLE IF EXISTS `mdl01_question_dataset_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_question_dataset_items` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `definition` bigint(10) NOT NULL DEFAULT '0',
  `itemnumber` bigint(10) NOT NULL DEFAULT '0',
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl01_quesdataitem_def_ix` (`definition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Individual dataset items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_question_dataset_items`
--

LOCK TABLES `mdl01_question_dataset_items` WRITE;
/*!40000 ALTER TABLE `mdl01_question_dataset_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_question_dataset_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_question_datasets`
--

DROP TABLE IF EXISTS `mdl01_question_datasets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_question_datasets` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT '0',
  `datasetdefinition` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_quesdata_quedat_ix` (`question`,`datasetdefinition`),
  KEY `mdl01_quesdata_que_ix` (`question`),
  KEY `mdl01_quesdata_dat_ix` (`datasetdefinition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Many-many relation between questions and dataset definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_question_datasets`
--

LOCK TABLES `mdl01_question_datasets` WRITE;
/*!40000 ALTER TABLE `mdl01_question_datasets` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_question_datasets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_question_ddwtos`
--

DROP TABLE IF EXISTS `mdl01_question_ddwtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_question_ddwtos` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT '0',
  `shuffleanswers` smallint(4) NOT NULL DEFAULT '1',
  `correctfeedback` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `correctfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `partiallycorrectfeedback` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `partiallycorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `incorrectfeedback` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `incorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `shownumcorrect` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_quesddwt_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines drag and drop (words into sentences) questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_question_ddwtos`
--

LOCK TABLES `mdl01_question_ddwtos` WRITE;
/*!40000 ALTER TABLE `mdl01_question_ddwtos` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_question_ddwtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_question_gapselect`
--

DROP TABLE IF EXISTS `mdl01_question_gapselect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_question_gapselect` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT '0',
  `shuffleanswers` smallint(4) NOT NULL DEFAULT '1',
  `correctfeedback` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `correctfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `partiallycorrectfeedback` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `partiallycorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `incorrectfeedback` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `incorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `shownumcorrect` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_quesgaps_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines select missing words questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_question_gapselect`
--

LOCK TABLES `mdl01_question_gapselect` WRITE;
/*!40000 ALTER TABLE `mdl01_question_gapselect` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_question_gapselect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_question_hints`
--

DROP TABLE IF EXISTS `mdl01_question_hints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_question_hints` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL,
  `hint` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hintformat` smallint(4) NOT NULL DEFAULT '0',
  `shownumcorrect` tinyint(1) DEFAULT NULL,
  `clearwrong` tinyint(1) DEFAULT NULL,
  `options` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_queshint_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores the the part of the question definition that gives di';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_question_hints`
--

LOCK TABLES `mdl01_question_hints` WRITE;
/*!40000 ALTER TABLE `mdl01_question_hints` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_question_hints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_question_multianswer`
--

DROP TABLE IF EXISTS `mdl01_question_multianswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_question_multianswer` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT '0',
  `sequence` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_quesmult_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Options for multianswer questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_question_multianswer`
--

LOCK TABLES `mdl01_question_multianswer` WRITE;
/*!40000 ALTER TABLE `mdl01_question_multianswer` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_question_multianswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_question_numerical`
--

DROP TABLE IF EXISTS `mdl01_question_numerical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_question_numerical` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT '0',
  `answer` bigint(10) NOT NULL DEFAULT '0',
  `tolerance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`id`),
  KEY `mdl01_quesnume_ans_ix` (`answer`),
  KEY `mdl01_quesnume_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Options for numerical questions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_question_numerical`
--

LOCK TABLES `mdl01_question_numerical` WRITE;
/*!40000 ALTER TABLE `mdl01_question_numerical` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_question_numerical` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_question_numerical_options`
--

DROP TABLE IF EXISTS `mdl01_question_numerical_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_question_numerical_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT '0',
  `showunits` smallint(4) NOT NULL DEFAULT '0',
  `unitsleft` smallint(4) NOT NULL DEFAULT '0',
  `unitgradingtype` smallint(4) NOT NULL DEFAULT '0',
  `unitpenalty` decimal(12,7) NOT NULL DEFAULT '0.1000000',
  PRIMARY KEY (`id`),
  KEY `mdl01_quesnumeopti_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Options for questions of type numerical This table is also u';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_question_numerical_options`
--

LOCK TABLES `mdl01_question_numerical_options` WRITE;
/*!40000 ALTER TABLE `mdl01_question_numerical_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_question_numerical_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_question_numerical_units`
--

DROP TABLE IF EXISTS `mdl01_question_numerical_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_question_numerical_units` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT '0',
  `multiplier` decimal(40,20) NOT NULL DEFAULT '1.00000000000000000000',
  `unit` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_quesnumeunit_queuni_uix` (`question`,`unit`),
  KEY `mdl01_quesnumeunit_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Optional unit options for numerical questions. This table is';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_question_numerical_units`
--

LOCK TABLES `mdl01_question_numerical_units` WRITE;
/*!40000 ALTER TABLE `mdl01_question_numerical_units` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_question_numerical_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_question_response_analysis`
--

DROP TABLE IF EXISTS `mdl01_question_response_analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_question_response_analysis` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `hashcode` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `whichtries` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timemodified` bigint(10) NOT NULL,
  `questionid` bigint(10) NOT NULL,
  `variant` bigint(10) DEFAULT NULL,
  `subqid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `aid` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `response` longtext COLLATE utf8mb4_unicode_ci,
  `credit` decimal(15,5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Analysis of student responses given to questions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_question_response_analysis`
--

LOCK TABLES `mdl01_question_response_analysis` WRITE;
/*!40000 ALTER TABLE `mdl01_question_response_analysis` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_question_response_analysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_question_response_count`
--

DROP TABLE IF EXISTS `mdl01_question_response_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_question_response_count` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `analysisid` bigint(10) NOT NULL,
  `try` bigint(10) NOT NULL,
  `rcount` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_quesrespcoun_ana_ix` (`analysisid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Count for each responses for each try at a question.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_question_response_count`
--

LOCK TABLES `mdl01_question_response_count` WRITE;
/*!40000 ALTER TABLE `mdl01_question_response_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_question_response_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_question_statistics`
--

DROP TABLE IF EXISTS `mdl01_question_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_question_statistics` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `hashcode` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timemodified` bigint(10) NOT NULL,
  `questionid` bigint(10) NOT NULL,
  `slot` bigint(10) DEFAULT NULL,
  `subquestion` smallint(4) NOT NULL,
  `variant` bigint(10) DEFAULT NULL,
  `s` bigint(10) NOT NULL DEFAULT '0',
  `effectiveweight` decimal(15,5) DEFAULT NULL,
  `negcovar` tinyint(2) NOT NULL DEFAULT '0',
  `discriminationindex` decimal(15,5) DEFAULT NULL,
  `discriminativeefficiency` decimal(15,5) DEFAULT NULL,
  `sd` decimal(15,10) DEFAULT NULL,
  `facility` decimal(15,10) DEFAULT NULL,
  `subquestions` longtext COLLATE utf8mb4_unicode_ci,
  `maxmark` decimal(12,7) DEFAULT NULL,
  `positions` longtext COLLATE utf8mb4_unicode_ci,
  `randomguessscore` decimal(12,7) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Statistics for individual questions used in an activity.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_question_statistics`
--

LOCK TABLES `mdl01_question_statistics` WRITE;
/*!40000 ALTER TABLE `mdl01_question_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_question_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_question_truefalse`
--

DROP TABLE IF EXISTS `mdl01_question_truefalse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_question_truefalse` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT '0',
  `trueanswer` bigint(10) NOT NULL DEFAULT '0',
  `falseanswer` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_questrue_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Options for True-False questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_question_truefalse`
--

LOCK TABLES `mdl01_question_truefalse` WRITE;
/*!40000 ALTER TABLE `mdl01_question_truefalse` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_question_truefalse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_question_usages`
--

DROP TABLE IF EXISTS `mdl01_question_usages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_question_usages` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `component` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `preferredbehaviour` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl01_quesusag_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table''s main purpose it to assign a unique id to each a';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_question_usages`
--

LOCK TABLES `mdl01_question_usages` WRITE;
/*!40000 ALTER TABLE `mdl01_question_usages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_question_usages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_quiz`
--

DROP TABLE IF EXISTS `mdl01_quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_quiz` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `timeopen` bigint(10) NOT NULL DEFAULT '0',
  `timeclose` bigint(10) NOT NULL DEFAULT '0',
  `timelimit` bigint(10) NOT NULL DEFAULT '0',
  `overduehandling` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'autoabandon',
  `graceperiod` bigint(10) NOT NULL DEFAULT '0',
  `preferredbehaviour` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `canredoquestions` smallint(4) NOT NULL DEFAULT '0',
  `attempts` mediumint(6) NOT NULL DEFAULT '0',
  `attemptonlast` smallint(4) NOT NULL DEFAULT '0',
  `grademethod` smallint(4) NOT NULL DEFAULT '1',
  `decimalpoints` smallint(4) NOT NULL DEFAULT '2',
  `questiondecimalpoints` smallint(4) NOT NULL DEFAULT '-1',
  `reviewattempt` mediumint(6) NOT NULL DEFAULT '0',
  `reviewcorrectness` mediumint(6) NOT NULL DEFAULT '0',
  `reviewmarks` mediumint(6) NOT NULL DEFAULT '0',
  `reviewspecificfeedback` mediumint(6) NOT NULL DEFAULT '0',
  `reviewgeneralfeedback` mediumint(6) NOT NULL DEFAULT '0',
  `reviewrightanswer` mediumint(6) NOT NULL DEFAULT '0',
  `reviewoverallfeedback` mediumint(6) NOT NULL DEFAULT '0',
  `questionsperpage` bigint(10) NOT NULL DEFAULT '0',
  `navmethod` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'free',
  `shuffleanswers` smallint(4) NOT NULL DEFAULT '0',
  `sumgrades` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `grade` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subnet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `browsersecurity` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `delay1` bigint(10) NOT NULL DEFAULT '0',
  `delay2` bigint(10) NOT NULL DEFAULT '0',
  `showuserpicture` smallint(4) NOT NULL DEFAULT '0',
  `showblocks` smallint(4) NOT NULL DEFAULT '0',
  `completionattemptsexhausted` tinyint(1) DEFAULT '0',
  `completionpass` tinyint(1) DEFAULT '0',
  `allowofflineattempts` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_quiz_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='The settings for each quiz.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_quiz`
--

LOCK TABLES `mdl01_quiz` WRITE;
/*!40000 ALTER TABLE `mdl01_quiz` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_quiz_attempts`
--

DROP TABLE IF EXISTS `mdl01_quiz_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_quiz_attempts` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `quiz` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `attempt` mediumint(6) NOT NULL DEFAULT '0',
  `uniqueid` bigint(10) NOT NULL DEFAULT '0',
  `layout` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `currentpage` bigint(10) NOT NULL DEFAULT '0',
  `preview` smallint(3) NOT NULL DEFAULT '0',
  `state` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inprogress',
  `timestart` bigint(10) NOT NULL DEFAULT '0',
  `timefinish` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `timemodifiedoffline` bigint(10) NOT NULL DEFAULT '0',
  `timecheckstate` bigint(10) DEFAULT '0',
  `sumgrades` decimal(10,5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_quizatte_quiuseatt_uix` (`quiz`,`userid`,`attempt`),
  UNIQUE KEY `mdl01_quizatte_uni_uix` (`uniqueid`),
  KEY `mdl01_quizatte_statim_ix` (`state`,`timecheckstate`),
  KEY `mdl01_quizatte_qui_ix` (`quiz`),
  KEY `mdl01_quizatte_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores users attempts at quizzes.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_quiz_attempts`
--

LOCK TABLES `mdl01_quiz_attempts` WRITE;
/*!40000 ALTER TABLE `mdl01_quiz_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_quiz_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_quiz_feedback`
--

DROP TABLE IF EXISTS `mdl01_quiz_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_quiz_feedback` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `quizid` bigint(10) NOT NULL DEFAULT '0',
  `feedbacktext` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `feedbacktextformat` tinyint(2) NOT NULL DEFAULT '0',
  `mingrade` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `maxgrade` decimal(10,5) NOT NULL DEFAULT '0.00000',
  PRIMARY KEY (`id`),
  KEY `mdl01_quizfeed_qui_ix` (`quizid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Feedback given to students based on which grade band their o';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_quiz_feedback`
--

LOCK TABLES `mdl01_quiz_feedback` WRITE;
/*!40000 ALTER TABLE `mdl01_quiz_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_quiz_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_quiz_grades`
--

DROP TABLE IF EXISTS `mdl01_quiz_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_quiz_grades` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `quiz` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `grade` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_quizgrad_use_ix` (`userid`),
  KEY `mdl01_quizgrad_qui_ix` (`quiz`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores the overall grade for each user on the quiz, based on';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_quiz_grades`
--

LOCK TABLES `mdl01_quiz_grades` WRITE;
/*!40000 ALTER TABLE `mdl01_quiz_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_quiz_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_quiz_overrides`
--

DROP TABLE IF EXISTS `mdl01_quiz_overrides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_quiz_overrides` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `quiz` bigint(10) NOT NULL DEFAULT '0',
  `groupid` bigint(10) DEFAULT NULL,
  `userid` bigint(10) DEFAULT NULL,
  `timeopen` bigint(10) DEFAULT NULL,
  `timeclose` bigint(10) DEFAULT NULL,
  `timelimit` bigint(10) DEFAULT NULL,
  `attempts` mediumint(6) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_quizover_qui_ix` (`quiz`),
  KEY `mdl01_quizover_gro_ix` (`groupid`),
  KEY `mdl01_quizover_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='The overrides to quiz settings on a per-user and per-group b';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_quiz_overrides`
--

LOCK TABLES `mdl01_quiz_overrides` WRITE;
/*!40000 ALTER TABLE `mdl01_quiz_overrides` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_quiz_overrides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_quiz_overview_regrades`
--

DROP TABLE IF EXISTS `mdl01_quiz_overview_regrades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_quiz_overview_regrades` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionusageid` bigint(10) NOT NULL,
  `slot` bigint(10) NOT NULL,
  `newfraction` decimal(12,7) DEFAULT NULL,
  `oldfraction` decimal(12,7) DEFAULT NULL,
  `regraded` smallint(4) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table records which question attempts need regrading an';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_quiz_overview_regrades`
--

LOCK TABLES `mdl01_quiz_overview_regrades` WRITE;
/*!40000 ALTER TABLE `mdl01_quiz_overview_regrades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_quiz_overview_regrades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_quiz_reports`
--

DROP TABLE IF EXISTS `mdl01_quiz_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_quiz_reports` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayorder` bigint(10) NOT NULL,
  `capability` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_quizrepo_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Lists all the installed quiz reports and their display order';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_quiz_reports`
--

LOCK TABLES `mdl01_quiz_reports` WRITE;
/*!40000 ALTER TABLE `mdl01_quiz_reports` DISABLE KEYS */;
INSERT INTO `mdl01_quiz_reports` VALUES (1,'grading',6000,'mod/quiz:grade'),(2,'overview',10000,NULL),(3,'responses',9000,NULL),(4,'statistics',8000,'quiz/statistics:view');
/*!40000 ALTER TABLE `mdl01_quiz_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_quiz_sections`
--

DROP TABLE IF EXISTS `mdl01_quiz_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_quiz_sections` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `quizid` bigint(10) NOT NULL,
  `firstslot` bigint(10) NOT NULL,
  `heading` varchar(1333) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shufflequestions` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_quizsect_quifir_uix` (`quizid`,`firstslot`),
  KEY `mdl01_quizsect_qui_ix` (`quizid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores sections of a quiz with section name (heading), from ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_quiz_sections`
--

LOCK TABLES `mdl01_quiz_sections` WRITE;
/*!40000 ALTER TABLE `mdl01_quiz_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_quiz_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_quiz_slots`
--

DROP TABLE IF EXISTS `mdl01_quiz_slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_quiz_slots` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `slot` bigint(10) NOT NULL,
  `quizid` bigint(10) NOT NULL DEFAULT '0',
  `page` bigint(10) NOT NULL,
  `requireprevious` smallint(4) NOT NULL DEFAULT '0',
  `questionid` bigint(10) NOT NULL DEFAULT '0',
  `maxmark` decimal(12,7) NOT NULL DEFAULT '0.0000000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_quizslot_quislo_uix` (`quizid`,`slot`),
  KEY `mdl01_quizslot_qui_ix` (`quizid`),
  KEY `mdl01_quizslot_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores the question used in a quiz, with the order, and for ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_quiz_slots`
--

LOCK TABLES `mdl01_quiz_slots` WRITE;
/*!40000 ALTER TABLE `mdl01_quiz_slots` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_quiz_slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_quiz_statistics`
--

DROP TABLE IF EXISTS `mdl01_quiz_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_quiz_statistics` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `hashcode` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `whichattempts` smallint(4) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `firstattemptscount` bigint(10) NOT NULL,
  `highestattemptscount` bigint(10) NOT NULL,
  `lastattemptscount` bigint(10) NOT NULL,
  `allattemptscount` bigint(10) NOT NULL,
  `firstattemptsavg` decimal(15,5) DEFAULT NULL,
  `highestattemptsavg` decimal(15,5) DEFAULT NULL,
  `lastattemptsavg` decimal(15,5) DEFAULT NULL,
  `allattemptsavg` decimal(15,5) DEFAULT NULL,
  `median` decimal(15,5) DEFAULT NULL,
  `standarddeviation` decimal(15,5) DEFAULT NULL,
  `skewness` decimal(15,10) DEFAULT NULL,
  `kurtosis` decimal(15,5) DEFAULT NULL,
  `cic` decimal(15,10) DEFAULT NULL,
  `errorratio` decimal(15,10) DEFAULT NULL,
  `standarderror` decimal(15,10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='table to cache results from analysis done in statistics repo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_quiz_statistics`
--

LOCK TABLES `mdl01_quiz_statistics` WRITE;
/*!40000 ALTER TABLE `mdl01_quiz_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_quiz_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_rating`
--

DROP TABLE IF EXISTS `mdl01_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_rating` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `component` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ratingarea` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL,
  `scaleid` bigint(10) NOT NULL,
  `rating` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_rati_comratconite_ix` (`component`,`ratingarea`,`contextid`,`itemid`),
  KEY `mdl01_rati_con_ix` (`contextid`),
  KEY `mdl01_rati_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='moodle ratings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_rating`
--

LOCK TABLES `mdl01_rating` WRITE;
/*!40000 ALTER TABLE `mdl01_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_registration_hubs`
--

DROP TABLE IF EXISTS `mdl01_registration_hubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_registration_hubs` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hubname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `huburl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='hub where the site is registered on with their associated to';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_registration_hubs`
--

LOCK TABLES `mdl01_registration_hubs` WRITE;
/*!40000 ALTER TABLE `mdl01_registration_hubs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_registration_hubs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_repository`
--

DROP TABLE IF EXISTS `mdl01_repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_repository` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `visible` tinyint(1) DEFAULT '1',
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table contains one entry for every configured external ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_repository`
--

LOCK TABLES `mdl01_repository` WRITE;
/*!40000 ALTER TABLE `mdl01_repository` DISABLE KEYS */;
INSERT INTO `mdl01_repository` VALUES (1,'areafiles',1,1),(2,'local',1,2),(3,'recent',1,3),(4,'upload',1,4),(5,'url',1,5),(6,'user',1,6),(7,'wikimedia',1,7);
/*!40000 ALTER TABLE `mdl01_repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_repository_instance_config`
--

DROP TABLE IF EXISTS `mdl01_repository_instance_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_repository_instance_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `instanceid` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='The config for intances';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_repository_instance_config`
--

LOCK TABLES `mdl01_repository_instance_config` WRITE;
/*!40000 ALTER TABLE `mdl01_repository_instance_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_repository_instance_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_repository_instances`
--

DROP TABLE IF EXISTS `mdl01_repository_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_repository_instances` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `typeid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `contextid` bigint(10) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timecreated` bigint(10) DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table contains one entry for every configured external ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_repository_instances`
--

LOCK TABLES `mdl01_repository_instances` WRITE;
/*!40000 ALTER TABLE `mdl01_repository_instances` DISABLE KEYS */;
INSERT INTO `mdl01_repository_instances` VALUES (1,'',1,0,1,NULL,NULL,1525171712,1525171712,0),(2,'',2,0,1,NULL,NULL,1525171713,1525171713,0),(3,'',3,0,1,NULL,NULL,1525171713,1525171713,0),(4,'',4,0,1,NULL,NULL,1525171714,1525171714,0),(5,'',5,0,1,NULL,NULL,1525171714,1525171714,0),(6,'',6,0,1,NULL,NULL,1525171714,1525171714,0),(7,'',7,0,1,NULL,NULL,1525171714,1525171714,0);
/*!40000 ALTER TABLE `mdl01_repository_instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_repository_onedrive_access`
--

DROP TABLE IF EXISTS `mdl01_repository_onedrive_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_repository_onedrive_access` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `timemodified` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `permissionid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `itemid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl01_repoonedacce_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='List of temporary access grants.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_repository_onedrive_access`
--

LOCK TABLES `mdl01_repository_onedrive_access` WRITE;
/*!40000 ALTER TABLE `mdl01_repository_onedrive_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_repository_onedrive_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_resource`
--

DROP TABLE IF EXISTS `mdl01_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_resource` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_unicode_ci,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `tobemigrated` smallint(4) NOT NULL DEFAULT '0',
  `legacyfiles` smallint(4) NOT NULL DEFAULT '0',
  `legacyfileslast` bigint(10) DEFAULT NULL,
  `display` smallint(4) NOT NULL DEFAULT '0',
  `displayoptions` longtext COLLATE utf8mb4_unicode_ci,
  `filterfiles` smallint(4) NOT NULL DEFAULT '0',
  `revision` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_reso_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Each record is one resource and its config data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_resource`
--

LOCK TABLES `mdl01_resource` WRITE;
/*!40000 ALTER TABLE `mdl01_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_resource_old`
--

DROP TABLE IF EXISTS `mdl01_resource_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_resource_old` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_unicode_ci,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `alltext` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `popup` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `oldid` bigint(10) NOT NULL,
  `cmid` bigint(10) DEFAULT NULL,
  `newmodule` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newid` bigint(10) DEFAULT NULL,
  `migrated` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_resoold_old_uix` (`oldid`),
  KEY `mdl01_resoold_cmi_ix` (`cmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='backup of all old resource instances from 1.9';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_resource_old`
--

LOCK TABLES `mdl01_resource_old` WRITE;
/*!40000 ALTER TABLE `mdl01_resource_old` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_resource_old` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_role`
--

DROP TABLE IF EXISTS `mdl01_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_role` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shortname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `archetype` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_role_sor_uix` (`sortorder`),
  UNIQUE KEY `mdl01_role_sho_uix` (`shortname`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='moodle roles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_role`
--

LOCK TABLES `mdl01_role` WRITE;
/*!40000 ALTER TABLE `mdl01_role` DISABLE KEYS */;
INSERT INTO `mdl01_role` VALUES (1,'','manager','',1,'manager'),(2,'','coursecreator','',2,'coursecreator'),(3,'','editingteacher','',3,'editingteacher'),(4,'','teacher','',4,'teacher'),(5,'','student','',5,'student'),(6,'','guest','',6,'guest'),(7,'','user','',7,'user'),(8,'','frontpage','',8,'frontpage');
/*!40000 ALTER TABLE `mdl01_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_role_allow_assign`
--

DROP TABLE IF EXISTS `mdl01_role_allow_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_role_allow_assign` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL DEFAULT '0',
  `allowassign` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_rolealloassi_rolall_uix` (`roleid`,`allowassign`),
  KEY `mdl01_rolealloassi_rol_ix` (`roleid`),
  KEY `mdl01_rolealloassi_all_ix` (`allowassign`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='this defines what role can assign what role';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_role_allow_assign`
--

LOCK TABLES `mdl01_role_allow_assign` WRITE;
/*!40000 ALTER TABLE `mdl01_role_allow_assign` DISABLE KEYS */;
INSERT INTO `mdl01_role_allow_assign` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,3,4),(7,3,5);
/*!40000 ALTER TABLE `mdl01_role_allow_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_role_allow_override`
--

DROP TABLE IF EXISTS `mdl01_role_allow_override`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_role_allow_override` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL DEFAULT '0',
  `allowoverride` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_rolealloover_rolall_uix` (`roleid`,`allowoverride`),
  KEY `mdl01_rolealloover_rol_ix` (`roleid`),
  KEY `mdl01_rolealloover_all_ix` (`allowoverride`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='this defines what role can override what role';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_role_allow_override`
--

LOCK TABLES `mdl01_role_allow_override` WRITE;
/*!40000 ALTER TABLE `mdl01_role_allow_override` DISABLE KEYS */;
INSERT INTO `mdl01_role_allow_override` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,3,4),(10,3,5),(11,3,6);
/*!40000 ALTER TABLE `mdl01_role_allow_override` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_role_allow_switch`
--

DROP TABLE IF EXISTS `mdl01_role_allow_switch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_role_allow_switch` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL,
  `allowswitch` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_rolealloswit_rolall_uix` (`roleid`,`allowswitch`),
  KEY `mdl01_rolealloswit_rol_ix` (`roleid`),
  KEY `mdl01_rolealloswit_all_ix` (`allowswitch`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table stores which which other roles a user is allowed ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_role_allow_switch`
--

LOCK TABLES `mdl01_role_allow_switch` WRITE;
/*!40000 ALTER TABLE `mdl01_role_allow_switch` DISABLE KEYS */;
INSERT INTO `mdl01_role_allow_switch` VALUES (1,1,3),(2,1,4),(3,1,5),(4,1,6),(5,3,4),(6,3,5),(7,3,6),(8,4,5),(9,4,6);
/*!40000 ALTER TABLE `mdl01_role_allow_switch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_role_assignments`
--

DROP TABLE IF EXISTS `mdl01_role_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_role_assignments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL DEFAULT '0',
  `contextid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `modifierid` bigint(10) NOT NULL DEFAULT '0',
  `component` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL DEFAULT '0',
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_roleassi_sor_ix` (`sortorder`),
  KEY `mdl01_roleassi_rolcon_ix` (`roleid`,`contextid`),
  KEY `mdl01_roleassi_useconrol_ix` (`userid`,`contextid`,`roleid`),
  KEY `mdl01_roleassi_comiteuse_ix` (`component`,`itemid`,`userid`),
  KEY `mdl01_roleassi_rol_ix` (`roleid`),
  KEY `mdl01_roleassi_con_ix` (`contextid`),
  KEY `mdl01_roleassi_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='assigning roles in different context';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_role_assignments`
--

LOCK TABLES `mdl01_role_assignments` WRITE;
/*!40000 ALTER TABLE `mdl01_role_assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_role_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_role_capabilities`
--

DROP TABLE IF EXISTS `mdl01_role_capabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_role_capabilities` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL DEFAULT '0',
  `roleid` bigint(10) NOT NULL DEFAULT '0',
  `capability` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `permission` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `modifierid` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_rolecapa_rolconcap_uix` (`roleid`,`contextid`,`capability`),
  KEY `mdl01_rolecapa_rol_ix` (`roleid`),
  KEY `mdl01_rolecapa_con_ix` (`contextid`),
  KEY `mdl01_rolecapa_mod_ix` (`modifierid`),
  KEY `mdl01_rolecapa_cap_ix` (`capability`)
) ENGINE=InnoDB AUTO_INCREMENT=1272 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='permission has to be signed, overriding a capability for a p';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_role_capabilities`
--

LOCK TABLES `mdl01_role_capabilities` WRITE;
/*!40000 ALTER TABLE `mdl01_role_capabilities` DISABLE KEYS */;
INSERT INTO `mdl01_role_capabilities` VALUES (1,1,1,'moodle/site:configview',1,1525171681,0),(2,1,2,'moodle/site:configview',1,1525171681,0),(3,1,1,'moodle/site:readallmessages',1,1525171681,0),(4,1,3,'moodle/site:readallmessages',1,1525171681,0),(5,1,1,'moodle/site:manageallmessaging',1,1525171681,0),(6,1,1,'moodle/site:deleteanymessage',1,1525171681,0),(7,1,1,'moodle/site:sendmessage',1,1525171681,0),(8,1,7,'moodle/site:sendmessage',1,1525171681,0),(9,1,7,'moodle/site:deleteownmessage',1,1525171681,0),(10,1,1,'moodle/site:approvecourse',1,1525171681,0),(11,1,3,'moodle/backup:backupcourse',1,1525171681,0),(12,1,1,'moodle/backup:backupcourse',1,1525171681,0),(13,1,3,'moodle/backup:backupsection',1,1525171681,0),(14,1,1,'moodle/backup:backupsection',1,1525171681,0),(15,1,3,'moodle/backup:backupactivity',1,1525171681,0),(16,1,1,'moodle/backup:backupactivity',1,1525171681,0),(17,1,3,'moodle/backup:backuptargethub',1,1525171681,0),(18,1,1,'moodle/backup:backuptargethub',1,1525171681,0),(19,1,3,'moodle/backup:backuptargetimport',1,1525171681,0),(20,1,1,'moodle/backup:backuptargetimport',1,1525171681,0),(21,1,3,'moodle/backup:downloadfile',1,1525171682,0),(22,1,1,'moodle/backup:downloadfile',1,1525171682,0),(23,1,3,'moodle/backup:configure',1,1525171682,0),(24,1,1,'moodle/backup:configure',1,1525171682,0),(25,1,1,'moodle/backup:userinfo',1,1525171682,0),(26,1,1,'moodle/backup:anonymise',1,1525171682,0),(27,1,3,'moodle/restore:restorecourse',1,1525171682,0),(28,1,1,'moodle/restore:restorecourse',1,1525171682,0),(29,1,3,'moodle/restore:restoresection',1,1525171682,0),(30,1,1,'moodle/restore:restoresection',1,1525171682,0),(31,1,3,'moodle/restore:restoreactivity',1,1525171682,0),(32,1,1,'moodle/restore:restoreactivity',1,1525171682,0),(33,1,3,'moodle/restore:viewautomatedfilearea',1,1525171682,0),(34,1,1,'moodle/restore:viewautomatedfilearea',1,1525171682,0),(35,1,3,'moodle/restore:restoretargethub',1,1525171682,0),(36,1,1,'moodle/restore:restoretargethub',1,1525171682,0),(37,1,3,'moodle/restore:restoretargetimport',1,1525171682,0),(38,1,1,'moodle/restore:restoretargetimport',1,1525171682,0),(39,1,3,'moodle/restore:uploadfile',1,1525171682,0),(40,1,1,'moodle/restore:uploadfile',1,1525171682,0),(41,1,3,'moodle/restore:configure',1,1525171682,0),(42,1,1,'moodle/restore:configure',1,1525171682,0),(43,1,2,'moodle/restore:rolldates',1,1525171682,0),(44,1,1,'moodle/restore:rolldates',1,1525171682,0),(45,1,1,'moodle/restore:userinfo',1,1525171682,0),(46,1,1,'moodle/restore:createuser',1,1525171682,0),(47,1,3,'moodle/site:manageblocks',1,1525171682,0),(48,1,1,'moodle/site:manageblocks',1,1525171682,0),(49,1,3,'moodle/site:accessallgroups',1,1525171682,0),(50,1,1,'moodle/site:accessallgroups',1,1525171682,0),(51,1,4,'moodle/site:viewfullnames',1,1525171682,0),(52,1,3,'moodle/site:viewfullnames',1,1525171682,0),(53,1,1,'moodle/site:viewfullnames',1,1525171682,0),(54,1,4,'moodle/site:viewuseridentity',1,1525171682,0),(55,1,3,'moodle/site:viewuseridentity',1,1525171682,0),(56,1,1,'moodle/site:viewuseridentity',1,1525171682,0),(57,1,4,'moodle/site:viewreports',1,1525171682,0),(58,1,3,'moodle/site:viewreports',1,1525171682,0),(59,1,1,'moodle/site:viewreports',1,1525171682,0),(60,1,3,'moodle/site:trustcontent',1,1525171682,0),(61,1,1,'moodle/site:trustcontent',1,1525171682,0),(62,1,1,'moodle/site:uploadusers',1,1525171682,0),(63,1,3,'moodle/filter:manage',1,1525171682,0),(64,1,1,'moodle/filter:manage',1,1525171682,0),(65,1,1,'moodle/user:create',1,1525171682,0),(66,1,1,'moodle/user:delete',1,1525171682,0),(67,1,1,'moodle/user:update',1,1525171682,0),(68,1,6,'moodle/user:viewdetails',1,1525171682,0),(69,1,5,'moodle/user:viewdetails',1,1525171682,0),(70,1,4,'moodle/user:viewdetails',1,1525171682,0),(71,1,3,'moodle/user:viewdetails',1,1525171682,0),(72,1,1,'moodle/user:viewdetails',1,1525171682,0),(73,1,1,'moodle/user:viewalldetails',1,1525171682,0),(74,1,1,'moodle/user:viewlastip',1,1525171682,0),(75,1,4,'moodle/user:viewhiddendetails',1,1525171682,0),(76,1,3,'moodle/user:viewhiddendetails',1,1525171682,0),(77,1,1,'moodle/user:viewhiddendetails',1,1525171682,0),(78,1,1,'moodle/user:loginas',1,1525171682,0),(79,1,1,'moodle/user:managesyspages',1,1525171682,0),(80,1,7,'moodle/user:manageownblocks',1,1525171682,0),(81,1,7,'moodle/user:manageownfiles',1,1525171682,0),(82,1,1,'moodle/my:configsyspages',1,1525171682,0),(83,1,3,'moodle/role:assign',1,1525171682,0),(84,1,1,'moodle/role:assign',1,1525171682,0),(85,1,4,'moodle/role:review',1,1525171682,0),(86,1,3,'moodle/role:review',1,1525171682,0),(87,1,1,'moodle/role:review',1,1525171682,0),(88,1,1,'moodle/role:override',1,1525171682,0),(89,1,3,'moodle/role:safeoverride',1,1525171682,0),(90,1,1,'moodle/role:manage',1,1525171682,0),(91,1,3,'moodle/role:switchroles',1,1525171682,0),(92,1,1,'moodle/role:switchroles',1,1525171682,0),(93,1,1,'moodle/category:manage',1,1525171682,0),(94,1,2,'moodle/category:viewhiddencategories',1,1525171682,0),(95,1,1,'moodle/category:viewhiddencategories',1,1525171682,0),(96,1,1,'moodle/cohort:manage',1,1525171682,0),(97,1,1,'moodle/cohort:assign',1,1525171682,0),(98,1,3,'moodle/cohort:view',1,1525171682,0),(99,1,1,'moodle/cohort:view',1,1525171682,0),(100,1,2,'moodle/course:create',1,1525171682,0),(101,1,1,'moodle/course:create',1,1525171682,0),(102,1,7,'moodle/course:request',1,1525171682,0),(103,1,1,'moodle/course:delete',1,1525171682,0),(104,1,3,'moodle/course:update',1,1525171682,0),(105,1,1,'moodle/course:update',1,1525171682,0),(106,1,1,'moodle/course:view',1,1525171682,0),(107,1,3,'moodle/course:enrolreview',1,1525171682,0),(108,1,1,'moodle/course:enrolreview',1,1525171682,0),(109,1,3,'moodle/course:enrolconfig',1,1525171682,0),(110,1,1,'moodle/course:enrolconfig',1,1525171682,0),(111,1,3,'moodle/course:reviewotherusers',1,1525171682,0),(112,1,1,'moodle/course:reviewotherusers',1,1525171682,0),(113,1,4,'moodle/course:bulkmessaging',1,1525171682,0),(114,1,3,'moodle/course:bulkmessaging',1,1525171682,0),(115,1,1,'moodle/course:bulkmessaging',1,1525171682,0),(116,1,4,'moodle/course:viewhiddenuserfields',1,1525171682,0),(117,1,3,'moodle/course:viewhiddenuserfields',1,1525171682,0),(118,1,1,'moodle/course:viewhiddenuserfields',1,1525171682,0),(119,1,2,'moodle/course:viewhiddencourses',1,1525171682,0),(120,1,4,'moodle/course:viewhiddencourses',1,1525171682,0),(121,1,3,'moodle/course:viewhiddencourses',1,1525171682,0),(122,1,1,'moodle/course:viewhiddencourses',1,1525171682,0),(123,1,3,'moodle/course:visibility',1,1525171682,0),(124,1,1,'moodle/course:visibility',1,1525171682,0),(125,1,3,'moodle/course:managefiles',1,1525171682,0),(126,1,1,'moodle/course:managefiles',1,1525171682,0),(127,1,1,'moodle/course:ignoreavailabilityrestrictions',1,1525171682,0),(128,1,2,'moodle/course:ignoreavailabilityrestrictions',1,1525171682,0),(129,1,3,'moodle/course:ignoreavailabilityrestrictions',1,1525171682,0),(130,1,4,'moodle/course:ignoreavailabilityrestrictions',1,1525171682,0),(131,1,3,'moodle/course:manageactivities',1,1525171682,0),(132,1,1,'moodle/course:manageactivities',1,1525171682,0),(133,1,3,'moodle/course:activityvisibility',1,1525171682,0),(134,1,1,'moodle/course:activityvisibility',1,1525171682,0),(135,1,4,'moodle/course:viewhiddenactivities',1,1525171682,0),(136,1,3,'moodle/course:viewhiddenactivities',1,1525171682,0),(137,1,1,'moodle/course:viewhiddenactivities',1,1525171682,0),(138,1,5,'moodle/course:viewparticipants',1,1525171682,0),(139,1,4,'moodle/course:viewparticipants',1,1525171682,0),(140,1,3,'moodle/course:viewparticipants',1,1525171682,0),(141,1,1,'moodle/course:viewparticipants',1,1525171682,0),(142,1,3,'moodle/course:changefullname',1,1525171682,0),(143,1,1,'moodle/course:changefullname',1,1525171682,0),(144,1,3,'moodle/course:changeshortname',1,1525171682,0),(145,1,1,'moodle/course:changeshortname',1,1525171682,0),(146,1,3,'moodle/course:renameroles',1,1525171682,0),(147,1,1,'moodle/course:renameroles',1,1525171682,0),(148,1,3,'moodle/course:changeidnumber',1,1525171682,0),(149,1,1,'moodle/course:changeidnumber',1,1525171682,0),(150,1,3,'moodle/course:changecategory',1,1525171682,0),(151,1,1,'moodle/course:changecategory',1,1525171682,0),(152,1,3,'moodle/course:changesummary',1,1525171682,0),(153,1,1,'moodle/course:changesummary',1,1525171682,0),(154,1,1,'moodle/site:viewparticipants',1,1525171682,0),(155,1,5,'moodle/course:isincompletionreports',1,1525171682,0),(156,1,5,'moodle/course:viewscales',1,1525171682,0),(157,1,4,'moodle/course:viewscales',1,1525171682,0),(158,1,3,'moodle/course:viewscales',1,1525171682,0),(159,1,1,'moodle/course:viewscales',1,1525171682,0),(160,1,3,'moodle/course:managescales',1,1525171682,0),(161,1,1,'moodle/course:managescales',1,1525171682,0),(162,1,3,'moodle/course:managegroups',1,1525171682,0),(163,1,1,'moodle/course:managegroups',1,1525171682,0),(164,1,3,'moodle/course:reset',1,1525171682,0),(165,1,1,'moodle/course:reset',1,1525171682,0),(166,1,3,'moodle/course:viewsuspendedusers',1,1525171682,0),(167,1,1,'moodle/course:viewsuspendedusers',1,1525171682,0),(168,1,1,'moodle/course:tag',1,1525171682,0),(169,1,3,'moodle/course:tag',1,1525171682,0),(170,1,6,'moodle/blog:view',1,1525171682,0),(171,1,7,'moodle/blog:view',1,1525171682,0),(172,1,5,'moodle/blog:view',1,1525171682,0),(173,1,4,'moodle/blog:view',1,1525171682,0),(174,1,3,'moodle/blog:view',1,1525171682,0),(175,1,1,'moodle/blog:view',1,1525171682,0),(176,1,6,'moodle/blog:search',1,1525171682,0),(177,1,7,'moodle/blog:search',1,1525171682,0),(178,1,5,'moodle/blog:search',1,1525171682,0),(179,1,4,'moodle/blog:search',1,1525171682,0),(180,1,3,'moodle/blog:search',1,1525171682,0),(181,1,1,'moodle/blog:search',1,1525171682,0),(182,1,1,'moodle/blog:viewdrafts',1,1525171682,0),(183,1,7,'moodle/blog:create',1,1525171682,0),(184,1,1,'moodle/blog:create',1,1525171682,0),(185,1,4,'moodle/blog:manageentries',1,1525171682,0),(186,1,3,'moodle/blog:manageentries',1,1525171682,0),(187,1,1,'moodle/blog:manageentries',1,1525171682,0),(188,1,5,'moodle/blog:manageexternal',1,1525171682,0),(189,1,7,'moodle/blog:manageexternal',1,1525171682,0),(190,1,4,'moodle/blog:manageexternal',1,1525171682,0),(191,1,3,'moodle/blog:manageexternal',1,1525171682,0),(192,1,1,'moodle/blog:manageexternal',1,1525171682,0),(193,1,7,'moodle/calendar:manageownentries',1,1525171682,0),(194,1,1,'moodle/calendar:manageownentries',1,1525171682,0),(195,1,4,'moodle/calendar:managegroupentries',1,1525171682,0),(196,1,3,'moodle/calendar:managegroupentries',1,1525171682,0),(197,1,1,'moodle/calendar:managegroupentries',1,1525171682,0),(198,1,4,'moodle/calendar:manageentries',1,1525171682,0),(199,1,3,'moodle/calendar:manageentries',1,1525171682,0),(200,1,1,'moodle/calendar:manageentries',1,1525171682,0),(201,1,1,'moodle/user:editprofile',1,1525171682,0),(202,1,6,'moodle/user:editownprofile',-1000,1525171682,0),(203,1,7,'moodle/user:editownprofile',1,1525171682,0),(204,1,1,'moodle/user:editownprofile',1,1525171682,0),(205,1,6,'moodle/user:changeownpassword',-1000,1525171682,0),(206,1,7,'moodle/user:changeownpassword',1,1525171682,0),(207,1,1,'moodle/user:changeownpassword',1,1525171682,0),(208,1,5,'moodle/user:readuserposts',1,1525171682,0),(209,1,4,'moodle/user:readuserposts',1,1525171682,0),(210,1,3,'moodle/user:readuserposts',1,1525171682,0),(211,1,1,'moodle/user:readuserposts',1,1525171682,0),(212,1,5,'moodle/user:readuserblogs',1,1525171682,0),(213,1,4,'moodle/user:readuserblogs',1,1525171682,0),(214,1,3,'moodle/user:readuserblogs',1,1525171682,0),(215,1,1,'moodle/user:readuserblogs',1,1525171682,0),(216,1,1,'moodle/user:editmessageprofile',1,1525171682,0),(217,1,6,'moodle/user:editownmessageprofile',-1000,1525171682,0),(218,1,7,'moodle/user:editownmessageprofile',1,1525171682,0),(219,1,1,'moodle/user:editownmessageprofile',1,1525171682,0),(220,1,3,'moodle/question:managecategory',1,1525171682,0),(221,1,1,'moodle/question:managecategory',1,1525171682,0),(222,1,3,'moodle/question:add',1,1525171682,0),(223,1,1,'moodle/question:add',1,1525171682,0),(224,1,3,'moodle/question:editmine',1,1525171682,0),(225,1,1,'moodle/question:editmine',1,1525171682,0),(226,1,3,'moodle/question:editall',1,1525171682,0),(227,1,1,'moodle/question:editall',1,1525171682,0),(228,1,3,'moodle/question:viewmine',1,1525171682,0),(229,1,1,'moodle/question:viewmine',1,1525171682,0),(230,1,3,'moodle/question:viewall',1,1525171682,0),(231,1,1,'moodle/question:viewall',1,1525171682,0),(232,1,3,'moodle/question:usemine',1,1525171682,0),(233,1,1,'moodle/question:usemine',1,1525171682,0),(234,1,3,'moodle/question:useall',1,1525171682,0),(235,1,1,'moodle/question:useall',1,1525171682,0),(236,1,3,'moodle/question:movemine',1,1525171682,0),(237,1,1,'moodle/question:movemine',1,1525171682,0),(238,1,3,'moodle/question:moveall',1,1525171682,0),(239,1,1,'moodle/question:moveall',1,1525171682,0),(240,1,1,'moodle/question:config',1,1525171682,0),(241,1,5,'moodle/question:flag',1,1525171682,0),(242,1,4,'moodle/question:flag',1,1525171682,0),(243,1,3,'moodle/question:flag',1,1525171682,0),(244,1,1,'moodle/question:flag',1,1525171682,0),(245,1,4,'moodle/site:doclinks',1,1525171682,0),(246,1,3,'moodle/site:doclinks',1,1525171682,0),(247,1,1,'moodle/site:doclinks',1,1525171682,0),(248,1,3,'moodle/course:sectionvisibility',1,1525171682,0),(249,1,1,'moodle/course:sectionvisibility',1,1525171682,0),(250,1,3,'moodle/course:useremail',1,1525171682,0),(251,1,1,'moodle/course:useremail',1,1525171682,0),(252,1,3,'moodle/course:viewhiddensections',1,1525171682,0),(253,1,1,'moodle/course:viewhiddensections',1,1525171682,0),(254,1,3,'moodle/course:setcurrentsection',1,1525171682,0),(255,1,1,'moodle/course:setcurrentsection',1,1525171682,0),(256,1,3,'moodle/course:movesections',1,1525171682,0),(257,1,1,'moodle/course:movesections',1,1525171682,0),(258,1,4,'moodle/grade:viewall',1,1525171682,0),(259,1,3,'moodle/grade:viewall',1,1525171682,0),(260,1,1,'moodle/grade:viewall',1,1525171682,0),(261,1,5,'moodle/grade:view',1,1525171682,0),(262,1,4,'moodle/grade:viewhidden',1,1525171682,0),(263,1,3,'moodle/grade:viewhidden',1,1525171682,0),(264,1,1,'moodle/grade:viewhidden',1,1525171682,0),(265,1,3,'moodle/grade:import',1,1525171682,0),(266,1,1,'moodle/grade:import',1,1525171682,0),(267,1,4,'moodle/grade:export',1,1525171682,0),(268,1,3,'moodle/grade:export',1,1525171682,0),(269,1,1,'moodle/grade:export',1,1525171682,0),(270,1,3,'moodle/grade:manage',1,1525171682,0),(271,1,1,'moodle/grade:manage',1,1525171682,0),(272,1,3,'moodle/grade:edit',1,1525171682,0),(273,1,1,'moodle/grade:edit',1,1525171682,0),(274,1,3,'moodle/grade:managegradingforms',1,1525171682,0),(275,1,1,'moodle/grade:managegradingforms',1,1525171682,0),(276,1,1,'moodle/grade:sharegradingforms',1,1525171682,0),(277,1,1,'moodle/grade:managesharedforms',1,1525171682,0),(278,1,3,'moodle/grade:manageoutcomes',1,1525171682,0),(279,1,1,'moodle/grade:manageoutcomes',1,1525171682,0),(280,1,3,'moodle/grade:manageletters',1,1525171682,0),(281,1,1,'moodle/grade:manageletters',1,1525171682,0),(282,1,3,'moodle/grade:hide',1,1525171682,0),(283,1,1,'moodle/grade:hide',1,1525171683,0),(284,1,3,'moodle/grade:lock',1,1525171683,0),(285,1,1,'moodle/grade:lock',1,1525171683,0),(286,1,3,'moodle/grade:unlock',1,1525171683,0),(287,1,1,'moodle/grade:unlock',1,1525171683,0),(288,1,7,'moodle/my:manageblocks',1,1525171683,0),(289,1,4,'moodle/notes:view',1,1525171683,0),(290,1,3,'moodle/notes:view',1,1525171683,0),(291,1,1,'moodle/notes:view',1,1525171683,0),(292,1,4,'moodle/notes:manage',1,1525171683,0),(293,1,3,'moodle/notes:manage',1,1525171683,0),(294,1,1,'moodle/notes:manage',1,1525171683,0),(295,1,1,'moodle/tag:manage',1,1525171683,0),(296,1,1,'moodle/tag:edit',1,1525171683,0),(297,1,7,'moodle/tag:flag',1,1525171683,0),(298,1,4,'moodle/tag:editblocks',1,1525171683,0),(299,1,3,'moodle/tag:editblocks',1,1525171683,0),(300,1,1,'moodle/tag:editblocks',1,1525171683,0),(301,1,6,'moodle/block:view',1,1525171683,0),(302,1,7,'moodle/block:view',1,1525171683,0),(303,1,5,'moodle/block:view',1,1525171683,0),(304,1,4,'moodle/block:view',1,1525171683,0),(305,1,3,'moodle/block:view',1,1525171683,0),(306,1,3,'moodle/block:edit',1,1525171683,0),(307,1,1,'moodle/block:edit',1,1525171683,0),(308,1,7,'moodle/portfolio:export',1,1525171683,0),(309,1,5,'moodle/portfolio:export',1,1525171683,0),(310,1,4,'moodle/portfolio:export',1,1525171683,0),(311,1,3,'moodle/portfolio:export',1,1525171683,0),(312,1,8,'moodle/comment:view',1,1525171683,0),(313,1,6,'moodle/comment:view',1,1525171683,0),(314,1,7,'moodle/comment:view',1,1525171683,0),(315,1,5,'moodle/comment:view',1,1525171683,0),(316,1,4,'moodle/comment:view',1,1525171683,0),(317,1,3,'moodle/comment:view',1,1525171683,0),(318,1,1,'moodle/comment:view',1,1525171683,0),(319,1,7,'moodle/comment:post',1,1525171683,0),(320,1,5,'moodle/comment:post',1,1525171683,0),(321,1,4,'moodle/comment:post',1,1525171683,0),(322,1,3,'moodle/comment:post',1,1525171683,0),(323,1,1,'moodle/comment:post',1,1525171683,0),(324,1,3,'moodle/comment:delete',1,1525171683,0),(325,1,1,'moodle/comment:delete',1,1525171683,0),(326,1,1,'moodle/webservice:createtoken',1,1525171683,0),(327,1,7,'moodle/webservice:createmobiletoken',1,1525171683,0),(328,1,7,'moodle/rating:view',1,1525171683,0),(329,1,5,'moodle/rating:view',1,1525171683,0),(330,1,4,'moodle/rating:view',1,1525171683,0),(331,1,3,'moodle/rating:view',1,1525171683,0),(332,1,1,'moodle/rating:view',1,1525171683,0),(333,1,7,'moodle/rating:viewany',1,1525171683,0),(334,1,5,'moodle/rating:viewany',1,1525171683,0),(335,1,4,'moodle/rating:viewany',1,1525171683,0),(336,1,3,'moodle/rating:viewany',1,1525171683,0),(337,1,1,'moodle/rating:viewany',1,1525171683,0),(338,1,7,'moodle/rating:viewall',1,1525171683,0),(339,1,5,'moodle/rating:viewall',1,1525171683,0),(340,1,4,'moodle/rating:viewall',1,1525171683,0),(341,1,3,'moodle/rating:viewall',1,1525171683,0),(342,1,1,'moodle/rating:viewall',1,1525171683,0),(343,1,7,'moodle/rating:rate',1,1525171683,0),(344,1,5,'moodle/rating:rate',1,1525171683,0),(345,1,4,'moodle/rating:rate',1,1525171683,0),(346,1,3,'moodle/rating:rate',1,1525171683,0),(347,1,1,'moodle/rating:rate',1,1525171683,0),(348,1,1,'moodle/course:publish',1,1525171683,0),(349,1,4,'moodle/course:markcomplete',1,1525171683,0),(350,1,3,'moodle/course:markcomplete',1,1525171683,0),(351,1,1,'moodle/course:markcomplete',1,1525171683,0),(352,1,4,'moodle/course:overridecompletion',1,1525171683,0),(353,1,3,'moodle/course:overridecompletion',1,1525171683,0),(354,1,1,'moodle/course:overridecompletion',1,1525171683,0),(355,1,1,'moodle/community:add',1,1525171683,0),(356,1,4,'moodle/community:add',1,1525171683,0),(357,1,3,'moodle/community:add',1,1525171683,0),(358,1,1,'moodle/community:download',1,1525171683,0),(359,1,3,'moodle/community:download',1,1525171683,0),(360,1,1,'moodle/badges:manageglobalsettings',1,1525171683,0),(361,1,7,'moodle/badges:viewbadges',1,1525171683,0),(362,1,7,'moodle/badges:manageownbadges',1,1525171683,0),(363,1,7,'moodle/badges:viewotherbadges',1,1525171683,0),(364,1,7,'moodle/badges:earnbadge',1,1525171683,0),(365,1,1,'moodle/badges:createbadge',1,1525171683,0),(366,1,3,'moodle/badges:createbadge',1,1525171683,0),(367,1,1,'moodle/badges:deletebadge',1,1525171683,0),(368,1,3,'moodle/badges:deletebadge',1,1525171683,0),(369,1,1,'moodle/badges:configuredetails',1,1525171683,0),(370,1,3,'moodle/badges:configuredetails',1,1525171683,0),(371,1,1,'moodle/badges:configurecriteria',1,1525171683,0),(372,1,3,'moodle/badges:configurecriteria',1,1525171683,0),(373,1,1,'moodle/badges:configuremessages',1,1525171683,0),(374,1,3,'moodle/badges:configuremessages',1,1525171683,0),(375,1,1,'moodle/badges:awardbadge',1,1525171683,0),(376,1,4,'moodle/badges:awardbadge',1,1525171683,0),(377,1,3,'moodle/badges:awardbadge',1,1525171683,0),(378,1,1,'moodle/badges:revokebadge',1,1525171683,0),(379,1,4,'moodle/badges:revokebadge',1,1525171683,0),(380,1,3,'moodle/badges:revokebadge',1,1525171683,0),(381,1,1,'moodle/badges:viewawarded',1,1525171683,0),(382,1,4,'moodle/badges:viewawarded',1,1525171683,0),(383,1,3,'moodle/badges:viewawarded',1,1525171683,0),(384,1,6,'moodle/search:query',1,1525171683,0),(385,1,7,'moodle/search:query',1,1525171683,0),(386,1,5,'moodle/search:query',1,1525171683,0),(387,1,4,'moodle/search:query',1,1525171683,0),(388,1,3,'moodle/search:query',1,1525171683,0),(389,1,1,'moodle/search:query',1,1525171683,0),(390,1,1,'moodle/competency:competencymanage',1,1525171683,0),(391,1,7,'moodle/competency:competencyview',1,1525171683,0),(392,1,3,'moodle/competency:competencygrade',1,1525171683,0),(393,1,4,'moodle/competency:competencygrade',1,1525171683,0),(394,1,1,'moodle/competency:competencygrade',1,1525171683,0),(395,1,3,'moodle/competency:coursecompetencymanage',1,1525171683,0),(396,1,1,'moodle/competency:coursecompetencymanage',1,1525171683,0),(397,1,1,'moodle/competency:coursecompetencyconfigure',1,1525171683,0),(398,1,5,'moodle/competency:coursecompetencygradable',1,1525171683,0),(399,1,7,'moodle/competency:coursecompetencyview',1,1525171683,0),(400,1,1,'moodle/competency:planmanage',1,1525171683,0),(401,1,1,'moodle/competency:planmanagedraft',1,1525171683,0),(402,1,1,'moodle/competency:planview',1,1525171683,0),(403,1,1,'moodle/competency:planviewdraft',1,1525171683,0),(404,1,7,'moodle/competency:planviewown',1,1525171683,0),(405,1,1,'moodle/competency:planrequestreview',1,1525171683,0),(406,1,7,'moodle/competency:planrequestreviewown',1,1525171683,0),(407,1,1,'moodle/competency:planreview',1,1525171683,0),(408,1,1,'moodle/competency:plancomment',1,1525171683,0),(409,1,7,'moodle/competency:plancommentown',1,1525171683,0),(410,1,1,'moodle/competency:usercompetencyview',1,1525171683,0),(411,1,3,'moodle/competency:usercompetencyview',1,1525171683,0),(412,1,4,'moodle/competency:usercompetencyview',1,1525171683,0),(413,1,1,'moodle/competency:usercompetencyrequestreview',1,1525171683,0),(414,1,7,'moodle/competency:usercompetencyrequestreviewown',1,1525171683,0),(415,1,1,'moodle/competency:usercompetencyreview',1,1525171683,0),(416,1,1,'moodle/competency:usercompetencycomment',1,1525171683,0),(417,1,7,'moodle/competency:usercompetencycommentown',1,1525171683,0),(418,1,1,'moodle/competency:templatemanage',1,1525171683,0),(419,1,4,'moodle/analytics:listinsights',1,1525171683,0),(420,1,3,'moodle/analytics:listinsights',1,1525171683,0),(421,1,1,'moodle/analytics:listinsights',1,1525171683,0),(422,1,1,'moodle/analytics:managemodels',1,1525171683,0),(423,1,1,'moodle/competency:templateview',1,1525171683,0),(424,1,1,'moodle/competency:userevidencemanage',1,1525171683,0),(425,1,7,'moodle/competency:userevidencemanageown',1,1525171683,0),(426,1,1,'moodle/competency:userevidenceview',1,1525171683,0),(427,1,6,'mod/assign:view',1,1525171693,0),(428,1,5,'mod/assign:view',1,1525171693,0),(429,1,4,'mod/assign:view',1,1525171693,0),(430,1,3,'mod/assign:view',1,1525171693,0),(431,1,1,'mod/assign:view',1,1525171693,0),(432,1,5,'mod/assign:submit',1,1525171693,0),(433,1,4,'mod/assign:grade',1,1525171693,0),(434,1,3,'mod/assign:grade',1,1525171693,0),(435,1,1,'mod/assign:grade',1,1525171693,0),(436,1,4,'mod/assign:exportownsubmission',1,1525171693,0),(437,1,3,'mod/assign:exportownsubmission',1,1525171693,0),(438,1,1,'mod/assign:exportownsubmission',1,1525171693,0),(439,1,5,'mod/assign:exportownsubmission',1,1525171693,0),(440,1,3,'mod/assign:addinstance',1,1525171693,0),(441,1,1,'mod/assign:addinstance',1,1525171693,0),(442,1,4,'mod/assign:grantextension',1,1525171693,0),(443,1,3,'mod/assign:grantextension',1,1525171693,0),(444,1,1,'mod/assign:grantextension',1,1525171693,0),(445,1,3,'mod/assign:revealidentities',1,1525171693,0),(446,1,1,'mod/assign:revealidentities',1,1525171693,0),(447,1,3,'mod/assign:reviewgrades',1,1525171693,0),(448,1,1,'mod/assign:reviewgrades',1,1525171693,0),(449,1,3,'mod/assign:releasegrades',1,1525171693,0),(450,1,1,'mod/assign:releasegrades',1,1525171693,0),(451,1,3,'mod/assign:managegrades',1,1525171693,0),(452,1,1,'mod/assign:managegrades',1,1525171693,0),(453,1,3,'mod/assign:manageallocations',1,1525171693,0),(454,1,1,'mod/assign:manageallocations',1,1525171693,0),(455,1,3,'mod/assign:viewgrades',1,1525171693,0),(456,1,1,'mod/assign:viewgrades',1,1525171693,0),(457,1,4,'mod/assign:viewgrades',1,1525171693,0),(458,1,1,'mod/assign:viewblinddetails',1,1525171693,0),(459,1,4,'mod/assign:receivegradernotifications',1,1525171693,0),(460,1,3,'mod/assign:receivegradernotifications',1,1525171693,0),(461,1,1,'mod/assign:receivegradernotifications',1,1525171693,0),(462,1,3,'mod/assign:manageoverrides',1,1525171693,0),(463,1,1,'mod/assign:manageoverrides',1,1525171693,0),(464,1,6,'mod/assignment:view',1,1525171693,0),(465,1,5,'mod/assignment:view',1,1525171693,0),(466,1,4,'mod/assignment:view',1,1525171693,0),(467,1,3,'mod/assignment:view',1,1525171693,0),(468,1,1,'mod/assignment:view',1,1525171693,0),(469,1,3,'mod/assignment:addinstance',1,1525171693,0),(470,1,1,'mod/assignment:addinstance',1,1525171693,0),(471,1,5,'mod/assignment:submit',1,1525171693,0),(472,1,4,'mod/assignment:grade',1,1525171693,0),(473,1,3,'mod/assignment:grade',1,1525171694,0),(474,1,1,'mod/assignment:grade',1,1525171694,0),(475,1,4,'mod/assignment:exportownsubmission',1,1525171694,0),(476,1,3,'mod/assignment:exportownsubmission',1,1525171694,0),(477,1,1,'mod/assignment:exportownsubmission',1,1525171694,0),(478,1,5,'mod/assignment:exportownsubmission',1,1525171694,0),(479,1,3,'mod/book:addinstance',1,1525171694,0),(480,1,1,'mod/book:addinstance',1,1525171694,0),(481,1,6,'mod/book:read',1,1525171694,0),(482,1,8,'mod/book:read',1,1525171694,0),(483,1,5,'mod/book:read',1,1525171694,0),(484,1,4,'mod/book:read',1,1525171694,0),(485,1,3,'mod/book:read',1,1525171694,0),(486,1,1,'mod/book:read',1,1525171694,0),(487,1,4,'mod/book:viewhiddenchapters',1,1525171694,0),(488,1,3,'mod/book:viewhiddenchapters',1,1525171694,0),(489,1,1,'mod/book:viewhiddenchapters',1,1525171694,0),(490,1,3,'mod/book:edit',1,1525171694,0),(491,1,1,'mod/book:edit',1,1525171694,0),(492,1,3,'mod/chat:addinstance',1,1525171694,0),(493,1,1,'mod/chat:addinstance',1,1525171694,0),(494,1,5,'mod/chat:chat',1,1525171694,0),(495,1,4,'mod/chat:chat',1,1525171694,0),(496,1,3,'mod/chat:chat',1,1525171694,0),(497,1,1,'mod/chat:chat',1,1525171694,0),(498,1,5,'mod/chat:readlog',1,1525171694,0),(499,1,4,'mod/chat:readlog',1,1525171694,0),(500,1,3,'mod/chat:readlog',1,1525171694,0),(501,1,1,'mod/chat:readlog',1,1525171694,0),(502,1,4,'mod/chat:deletelog',1,1525171694,0),(503,1,3,'mod/chat:deletelog',1,1525171694,0),(504,1,1,'mod/chat:deletelog',1,1525171694,0),(505,1,4,'mod/chat:exportparticipatedsession',1,1525171694,0),(506,1,3,'mod/chat:exportparticipatedsession',1,1525171694,0),(507,1,1,'mod/chat:exportparticipatedsession',1,1525171694,0),(508,1,4,'mod/chat:exportsession',1,1525171694,0),(509,1,3,'mod/chat:exportsession',1,1525171694,0),(510,1,1,'mod/chat:exportsession',1,1525171694,0),(511,1,7,'mod/chat:view',1,1525171694,0),(512,1,6,'mod/chat:view',1,1525171694,0),(513,1,3,'mod/choice:addinstance',1,1525171694,0),(514,1,1,'mod/choice:addinstance',1,1525171694,0),(515,1,5,'mod/choice:choose',1,1525171694,0),(516,1,4,'mod/choice:choose',1,1525171694,0),(517,1,3,'mod/choice:choose',1,1525171694,0),(518,1,4,'mod/choice:readresponses',1,1525171694,0),(519,1,3,'mod/choice:readresponses',1,1525171694,0),(520,1,1,'mod/choice:readresponses',1,1525171694,0),(521,1,4,'mod/choice:deleteresponses',1,1525171694,0),(522,1,3,'mod/choice:deleteresponses',1,1525171694,0),(523,1,1,'mod/choice:deleteresponses',1,1525171694,0),(524,1,4,'mod/choice:downloadresponses',1,1525171694,0),(525,1,3,'mod/choice:downloadresponses',1,1525171694,0),(526,1,1,'mod/choice:downloadresponses',1,1525171694,0),(527,1,7,'mod/choice:view',1,1525171694,0),(528,1,6,'mod/choice:view',1,1525171694,0),(529,1,3,'mod/data:addinstance',1,1525171694,0),(530,1,1,'mod/data:addinstance',1,1525171694,0),(531,1,8,'mod/data:viewentry',1,1525171694,0),(532,1,6,'mod/data:viewentry',1,1525171694,0),(533,1,5,'mod/data:viewentry',1,1525171695,0),(534,1,4,'mod/data:viewentry',1,1525171695,0),(535,1,3,'mod/data:viewentry',1,1525171695,0),(536,1,1,'mod/data:viewentry',1,1525171695,0),(537,1,5,'mod/data:writeentry',1,1525171695,0),(538,1,4,'mod/data:writeentry',1,1525171695,0),(539,1,3,'mod/data:writeentry',1,1525171695,0),(540,1,1,'mod/data:writeentry',1,1525171695,0),(541,1,5,'mod/data:comment',1,1525171695,0),(542,1,4,'mod/data:comment',1,1525171695,0),(543,1,3,'mod/data:comment',1,1525171695,0),(544,1,1,'mod/data:comment',1,1525171695,0),(545,1,4,'mod/data:rate',1,1525171695,0),(546,1,3,'mod/data:rate',1,1525171695,0),(547,1,1,'mod/data:rate',1,1525171695,0),(548,1,4,'mod/data:viewrating',1,1525171695,0),(549,1,3,'mod/data:viewrating',1,1525171695,0),(550,1,1,'mod/data:viewrating',1,1525171695,0),(551,1,4,'mod/data:viewanyrating',1,1525171695,0),(552,1,3,'mod/data:viewanyrating',1,1525171695,0),(553,1,1,'mod/data:viewanyrating',1,1525171695,0),(554,1,4,'mod/data:viewallratings',1,1525171695,0),(555,1,3,'mod/data:viewallratings',1,1525171695,0),(556,1,1,'mod/data:viewallratings',1,1525171695,0),(557,1,4,'mod/data:approve',1,1525171695,0),(558,1,3,'mod/data:approve',1,1525171695,0),(559,1,1,'mod/data:approve',1,1525171695,0),(560,1,4,'mod/data:manageentries',1,1525171695,0),(561,1,3,'mod/data:manageentries',1,1525171695,0),(562,1,1,'mod/data:manageentries',1,1525171695,0),(563,1,4,'mod/data:managecomments',1,1525171695,0),(564,1,3,'mod/data:managecomments',1,1525171695,0),(565,1,1,'mod/data:managecomments',1,1525171695,0),(566,1,3,'mod/data:managetemplates',1,1525171695,0),(567,1,1,'mod/data:managetemplates',1,1525171695,0),(568,1,4,'mod/data:viewalluserpresets',1,1525171695,0),(569,1,3,'mod/data:viewalluserpresets',1,1525171695,0),(570,1,1,'mod/data:viewalluserpresets',1,1525171695,0),(571,1,1,'mod/data:manageuserpresets',1,1525171695,0),(572,1,1,'mod/data:exportentry',1,1525171695,0),(573,1,4,'mod/data:exportentry',1,1525171695,0),(574,1,3,'mod/data:exportentry',1,1525171695,0),(575,1,1,'mod/data:exportownentry',1,1525171695,0),(576,1,4,'mod/data:exportownentry',1,1525171695,0),(577,1,3,'mod/data:exportownentry',1,1525171695,0),(578,1,5,'mod/data:exportownentry',1,1525171695,0),(579,1,1,'mod/data:exportallentries',1,1525171695,0),(580,1,4,'mod/data:exportallentries',1,1525171695,0),(581,1,3,'mod/data:exportallentries',1,1525171695,0),(582,1,1,'mod/data:exportuserinfo',1,1525171695,0),(583,1,4,'mod/data:exportuserinfo',1,1525171695,0),(584,1,3,'mod/data:exportuserinfo',1,1525171695,0),(585,1,6,'mod/data:view',1,1525171695,0),(586,1,5,'mod/data:view',1,1525171695,0),(587,1,4,'mod/data:view',1,1525171695,0),(588,1,3,'mod/data:view',1,1525171695,0),(589,1,1,'mod/data:view',1,1525171695,0),(590,1,3,'mod/feedback:addinstance',1,1525171695,0),(591,1,1,'mod/feedback:addinstance',1,1525171695,0),(592,1,6,'mod/feedback:view',1,1525171695,0),(593,1,8,'mod/feedback:view',1,1525171695,0),(594,1,5,'mod/feedback:view',1,1525171695,0),(595,1,4,'mod/feedback:view',1,1525171695,0),(596,1,3,'mod/feedback:view',1,1525171695,0),(597,1,1,'mod/feedback:view',1,1525171695,0),(598,1,8,'mod/feedback:complete',1,1525171695,0),(599,1,5,'mod/feedback:complete',1,1525171695,0),(600,1,5,'mod/feedback:viewanalysepage',1,1525171695,0),(601,1,3,'mod/feedback:viewanalysepage',1,1525171695,0),(602,1,1,'mod/feedback:viewanalysepage',1,1525171695,0),(603,1,3,'mod/feedback:deletesubmissions',1,1525171695,0),(604,1,1,'mod/feedback:deletesubmissions',1,1525171695,0),(605,1,1,'mod/feedback:mapcourse',1,1525171695,0),(606,1,3,'mod/feedback:edititems',1,1525171695,0),(607,1,1,'mod/feedback:edititems',1,1525171695,0),(608,1,3,'mod/feedback:createprivatetemplate',1,1525171695,0),(609,1,1,'mod/feedback:createprivatetemplate',1,1525171695,0),(610,1,3,'mod/feedback:createpublictemplate',1,1525171695,0),(611,1,1,'mod/feedback:createpublictemplate',1,1525171695,0),(612,1,3,'mod/feedback:deletetemplate',1,1525171695,0),(613,1,1,'mod/feedback:deletetemplate',1,1525171695,0),(614,1,4,'mod/feedback:viewreports',1,1525171695,0),(615,1,3,'mod/feedback:viewreports',1,1525171695,0),(616,1,1,'mod/feedback:viewreports',1,1525171695,0),(617,1,4,'mod/feedback:receivemail',1,1525171695,0),(618,1,3,'mod/feedback:receivemail',1,1525171695,0),(619,1,3,'mod/folder:addinstance',1,1525171695,0),(620,1,1,'mod/folder:addinstance',1,1525171695,0),(621,1,6,'mod/folder:view',1,1525171695,0),(622,1,7,'mod/folder:view',1,1525171695,0),(623,1,3,'mod/folder:managefiles',1,1525171695,0),(624,1,3,'mod/forum:addinstance',1,1525171696,0),(625,1,1,'mod/forum:addinstance',1,1525171696,0),(626,1,8,'mod/forum:viewdiscussion',1,1525171696,0),(627,1,6,'mod/forum:viewdiscussion',1,1525171696,0),(628,1,5,'mod/forum:viewdiscussion',1,1525171696,0),(629,1,4,'mod/forum:viewdiscussion',1,1525171696,0),(630,1,3,'mod/forum:viewdiscussion',1,1525171696,0),(631,1,1,'mod/forum:viewdiscussion',1,1525171696,0),(632,1,4,'mod/forum:viewhiddentimedposts',1,1525171696,0),(633,1,3,'mod/forum:viewhiddentimedposts',1,1525171696,0),(634,1,1,'mod/forum:viewhiddentimedposts',1,1525171696,0),(635,1,5,'mod/forum:startdiscussion',1,1525171696,0),(636,1,4,'mod/forum:startdiscussion',1,1525171696,0),(637,1,3,'mod/forum:startdiscussion',1,1525171696,0),(638,1,1,'mod/forum:startdiscussion',1,1525171696,0),(639,1,5,'mod/forum:replypost',1,1525171696,0),(640,1,4,'mod/forum:replypost',1,1525171696,0),(641,1,3,'mod/forum:replypost',1,1525171696,0),(642,1,1,'mod/forum:replypost',1,1525171696,0),(643,1,4,'mod/forum:addnews',1,1525171696,0),(644,1,3,'mod/forum:addnews',1,1525171696,0),(645,1,1,'mod/forum:addnews',1,1525171696,0),(646,1,4,'mod/forum:replynews',1,1525171696,0),(647,1,3,'mod/forum:replynews',1,1525171696,0),(648,1,1,'mod/forum:replynews',1,1525171696,0),(649,1,5,'mod/forum:viewrating',1,1525171696,0),(650,1,4,'mod/forum:viewrating',1,1525171696,0),(651,1,3,'mod/forum:viewrating',1,1525171696,0),(652,1,1,'mod/forum:viewrating',1,1525171696,0),(653,1,4,'mod/forum:viewanyrating',1,1525171696,0),(654,1,3,'mod/forum:viewanyrating',1,1525171696,0),(655,1,1,'mod/forum:viewanyrating',1,1525171696,0),(656,1,4,'mod/forum:viewallratings',1,1525171696,0),(657,1,3,'mod/forum:viewallratings',1,1525171696,0),(658,1,1,'mod/forum:viewallratings',1,1525171696,0),(659,1,4,'mod/forum:rate',1,1525171696,0),(660,1,3,'mod/forum:rate',1,1525171696,0),(661,1,1,'mod/forum:rate',1,1525171696,0),(662,1,5,'mod/forum:createattachment',1,1525171696,0),(663,1,4,'mod/forum:createattachment',1,1525171696,0),(664,1,3,'mod/forum:createattachment',1,1525171696,0),(665,1,1,'mod/forum:createattachment',1,1525171696,0),(666,1,5,'mod/forum:deleteownpost',1,1525171696,0),(667,1,4,'mod/forum:deleteownpost',1,1525171696,0),(668,1,3,'mod/forum:deleteownpost',1,1525171696,0),(669,1,1,'mod/forum:deleteownpost',1,1525171696,0),(670,1,4,'mod/forum:deleteanypost',1,1525171696,0),(671,1,3,'mod/forum:deleteanypost',1,1525171696,0),(672,1,1,'mod/forum:deleteanypost',1,1525171696,0),(673,1,4,'mod/forum:splitdiscussions',1,1525171696,0),(674,1,3,'mod/forum:splitdiscussions',1,1525171696,0),(675,1,1,'mod/forum:splitdiscussions',1,1525171696,0),(676,1,4,'mod/forum:movediscussions',1,1525171696,0),(677,1,3,'mod/forum:movediscussions',1,1525171696,0),(678,1,1,'mod/forum:movediscussions',1,1525171696,0),(679,1,4,'mod/forum:pindiscussions',1,1525171696,0),(680,1,3,'mod/forum:pindiscussions',1,1525171696,0),(681,1,1,'mod/forum:pindiscussions',1,1525171696,0),(682,1,4,'mod/forum:editanypost',1,1525171696,0),(683,1,3,'mod/forum:editanypost',1,1525171696,0),(684,1,1,'mod/forum:editanypost',1,1525171696,0),(685,1,4,'mod/forum:viewqandawithoutposting',1,1525171696,0),(686,1,3,'mod/forum:viewqandawithoutposting',1,1525171696,0),(687,1,1,'mod/forum:viewqandawithoutposting',1,1525171696,0),(688,1,4,'mod/forum:viewsubscribers',1,1525171696,0),(689,1,3,'mod/forum:viewsubscribers',1,1525171696,0),(690,1,1,'mod/forum:viewsubscribers',1,1525171696,0),(691,1,4,'mod/forum:managesubscriptions',1,1525171696,0),(692,1,3,'mod/forum:managesubscriptions',1,1525171696,0),(693,1,1,'mod/forum:managesubscriptions',1,1525171696,0),(694,1,4,'mod/forum:postwithoutthrottling',1,1525171696,0),(695,1,3,'mod/forum:postwithoutthrottling',1,1525171696,0),(696,1,1,'mod/forum:postwithoutthrottling',1,1525171696,0),(697,1,4,'mod/forum:exportdiscussion',1,1525171696,0),(698,1,3,'mod/forum:exportdiscussion',1,1525171696,0),(699,1,1,'mod/forum:exportdiscussion',1,1525171696,0),(700,1,4,'mod/forum:exportpost',1,1525171696,0),(701,1,3,'mod/forum:exportpost',1,1525171696,0),(702,1,1,'mod/forum:exportpost',1,1525171696,0),(703,1,4,'mod/forum:exportownpost',1,1525171696,0),(704,1,3,'mod/forum:exportownpost',1,1525171696,0),(705,1,1,'mod/forum:exportownpost',1,1525171696,0),(706,1,5,'mod/forum:exportownpost',1,1525171696,0),(707,1,4,'mod/forum:addquestion',1,1525171696,0),(708,1,3,'mod/forum:addquestion',1,1525171696,0),(709,1,1,'mod/forum:addquestion',1,1525171696,0),(710,1,5,'mod/forum:allowforcesubscribe',1,1525171696,0),(711,1,4,'mod/forum:allowforcesubscribe',1,1525171696,0),(712,1,3,'mod/forum:allowforcesubscribe',1,1525171696,0),(713,1,8,'mod/forum:allowforcesubscribe',1,1525171696,0),(714,1,4,'mod/forum:canposttomygroups',1,1525171696,0),(715,1,3,'mod/forum:canposttomygroups',1,1525171696,0),(716,1,1,'mod/forum:canposttomygroups',1,1525171696,0),(717,1,4,'mod/forum:canoverridediscussionlock',1,1525171696,0),(718,1,3,'mod/forum:canoverridediscussionlock',1,1525171696,0),(719,1,1,'mod/forum:canoverridediscussionlock',1,1525171696,0),(720,1,3,'mod/glossary:addinstance',1,1525171696,0),(721,1,1,'mod/glossary:addinstance',1,1525171696,0),(722,1,8,'mod/glossary:view',1,1525171696,0),(723,1,6,'mod/glossary:view',1,1525171696,0),(724,1,5,'mod/glossary:view',1,1525171696,0),(725,1,4,'mod/glossary:view',1,1525171696,0),(726,1,3,'mod/glossary:view',1,1525171696,0),(727,1,1,'mod/glossary:view',1,1525171696,0),(728,1,5,'mod/glossary:write',1,1525171696,0),(729,1,4,'mod/glossary:write',1,1525171696,0),(730,1,3,'mod/glossary:write',1,1525171696,0),(731,1,1,'mod/glossary:write',1,1525171696,0),(732,1,4,'mod/glossary:manageentries',1,1525171696,0),(733,1,3,'mod/glossary:manageentries',1,1525171696,0),(734,1,1,'mod/glossary:manageentries',1,1525171696,0),(735,1,4,'mod/glossary:managecategories',1,1525171696,0),(736,1,3,'mod/glossary:managecategories',1,1525171696,0),(737,1,1,'mod/glossary:managecategories',1,1525171696,0),(738,1,5,'mod/glossary:comment',1,1525171696,0),(739,1,4,'mod/glossary:comment',1,1525171696,0),(740,1,3,'mod/glossary:comment',1,1525171696,0),(741,1,1,'mod/glossary:comment',1,1525171696,0),(742,1,4,'mod/glossary:managecomments',1,1525171696,0),(743,1,3,'mod/glossary:managecomments',1,1525171696,0),(744,1,1,'mod/glossary:managecomments',1,1525171696,0),(745,1,4,'mod/glossary:import',1,1525171696,0),(746,1,3,'mod/glossary:import',1,1525171696,0),(747,1,1,'mod/glossary:import',1,1525171696,0),(748,1,4,'mod/glossary:export',1,1525171696,0),(749,1,3,'mod/glossary:export',1,1525171696,0),(750,1,1,'mod/glossary:export',1,1525171696,0),(751,1,4,'mod/glossary:approve',1,1525171696,0),(752,1,3,'mod/glossary:approve',1,1525171696,0),(753,1,1,'mod/glossary:approve',1,1525171696,0),(754,1,4,'mod/glossary:rate',1,1525171696,0),(755,1,3,'mod/glossary:rate',1,1525171696,0),(756,1,1,'mod/glossary:rate',1,1525171696,0),(757,1,4,'mod/glossary:viewrating',1,1525171696,0),(758,1,3,'mod/glossary:viewrating',1,1525171696,0),(759,1,1,'mod/glossary:viewrating',1,1525171696,0),(760,1,4,'mod/glossary:viewanyrating',1,1525171696,0),(761,1,3,'mod/glossary:viewanyrating',1,1525171696,0),(762,1,1,'mod/glossary:viewanyrating',1,1525171696,0),(763,1,4,'mod/glossary:viewallratings',1,1525171696,0),(764,1,3,'mod/glossary:viewallratings',1,1525171696,0),(765,1,1,'mod/glossary:viewallratings',1,1525171696,0),(766,1,4,'mod/glossary:exportentry',1,1525171696,0),(767,1,3,'mod/glossary:exportentry',1,1525171696,0),(768,1,1,'mod/glossary:exportentry',1,1525171696,0),(769,1,4,'mod/glossary:exportownentry',1,1525171696,0),(770,1,3,'mod/glossary:exportownentry',1,1525171696,0),(771,1,1,'mod/glossary:exportownentry',1,1525171696,0),(772,1,5,'mod/glossary:exportownentry',1,1525171696,0),(773,1,6,'mod/imscp:view',1,1525171697,0),(774,1,7,'mod/imscp:view',1,1525171697,0),(775,1,3,'mod/imscp:addinstance',1,1525171697,0),(776,1,1,'mod/imscp:addinstance',1,1525171697,0),(777,1,3,'mod/label:addinstance',1,1525171697,0),(778,1,1,'mod/label:addinstance',1,1525171697,0),(779,1,7,'mod/label:view',1,1525171697,0),(780,1,6,'mod/label:view',1,1525171697,0),(781,1,3,'mod/lesson:addinstance',1,1525171697,0),(782,1,1,'mod/lesson:addinstance',1,1525171697,0),(783,1,3,'mod/lesson:edit',1,1525171697,0),(784,1,1,'mod/lesson:edit',1,1525171697,0),(785,1,4,'mod/lesson:grade',1,1525171697,0),(786,1,3,'mod/lesson:grade',1,1525171697,0),(787,1,1,'mod/lesson:grade',1,1525171697,0),(788,1,4,'mod/lesson:viewreports',1,1525171697,0),(789,1,3,'mod/lesson:viewreports',1,1525171697,0),(790,1,1,'mod/lesson:viewreports',1,1525171697,0),(791,1,4,'mod/lesson:manage',1,1525171697,0),(792,1,3,'mod/lesson:manage',1,1525171697,0),(793,1,1,'mod/lesson:manage',1,1525171697,0),(794,1,3,'mod/lesson:manageoverrides',1,1525171697,0),(795,1,1,'mod/lesson:manageoverrides',1,1525171697,0),(796,1,7,'mod/lesson:view',1,1525171697,0),(797,1,6,'mod/lesson:view',1,1525171697,0),(798,1,5,'mod/lti:view',1,1525171697,0),(799,1,4,'mod/lti:view',1,1525171697,0),(800,1,3,'mod/lti:view',1,1525171697,0),(801,1,1,'mod/lti:view',1,1525171697,0),(802,1,3,'mod/lti:addinstance',1,1525171697,0),(803,1,1,'mod/lti:addinstance',1,1525171697,0),(804,1,4,'mod/lti:manage',1,1525171697,0),(805,1,3,'mod/lti:manage',1,1525171697,0),(806,1,1,'mod/lti:manage',1,1525171697,0),(807,1,3,'mod/lti:addcoursetool',1,1525171697,0),(808,1,1,'mod/lti:addcoursetool',1,1525171697,0),(809,1,3,'mod/lti:requesttooladd',1,1525171697,0),(810,1,1,'mod/lti:requesttooladd',1,1525171697,0),(811,1,6,'mod/page:view',1,1525171697,0),(812,1,7,'mod/page:view',1,1525171697,0),(813,1,3,'mod/page:addinstance',1,1525171697,0),(814,1,1,'mod/page:addinstance',1,1525171697,0),(815,1,6,'mod/quiz:view',1,1525171698,0),(816,1,5,'mod/quiz:view',1,1525171698,0),(817,1,4,'mod/quiz:view',1,1525171698,0),(818,1,3,'mod/quiz:view',1,1525171698,0),(819,1,1,'mod/quiz:view',1,1525171698,0),(820,1,3,'mod/quiz:addinstance',1,1525171698,0),(821,1,1,'mod/quiz:addinstance',1,1525171698,0),(822,1,5,'mod/quiz:attempt',1,1525171698,0),(823,1,5,'mod/quiz:reviewmyattempts',1,1525171698,0),(824,1,3,'mod/quiz:manage',1,1525171698,0),(825,1,1,'mod/quiz:manage',1,1525171698,0),(826,1,3,'mod/quiz:manageoverrides',1,1525171698,0),(827,1,1,'mod/quiz:manageoverrides',1,1525171698,0),(828,1,4,'mod/quiz:preview',1,1525171698,0),(829,1,3,'mod/quiz:preview',1,1525171698,0),(830,1,1,'mod/quiz:preview',1,1525171698,0),(831,1,4,'mod/quiz:grade',1,1525171698,0),(832,1,3,'mod/quiz:grade',1,1525171698,0),(833,1,1,'mod/quiz:grade',1,1525171698,0),(834,1,4,'mod/quiz:regrade',1,1525171698,0),(835,1,3,'mod/quiz:regrade',1,1525171698,0),(836,1,1,'mod/quiz:regrade',1,1525171698,0),(837,1,4,'mod/quiz:viewreports',1,1525171698,0),(838,1,3,'mod/quiz:viewreports',1,1525171698,0),(839,1,1,'mod/quiz:viewreports',1,1525171698,0),(840,1,3,'mod/quiz:deleteattempts',1,1525171698,0),(841,1,1,'mod/quiz:deleteattempts',1,1525171698,0),(842,1,6,'mod/resource:view',1,1525171698,0),(843,1,7,'mod/resource:view',1,1525171698,0),(844,1,3,'mod/resource:addinstance',1,1525171698,0),(845,1,1,'mod/resource:addinstance',1,1525171698,0),(846,1,3,'mod/scorm:addinstance',1,1525171698,0),(847,1,1,'mod/scorm:addinstance',1,1525171698,0),(848,1,4,'mod/scorm:viewreport',1,1525171698,0),(849,1,3,'mod/scorm:viewreport',1,1525171698,0),(850,1,1,'mod/scorm:viewreport',1,1525171698,0),(851,1,5,'mod/scorm:skipview',1,1525171698,0),(852,1,5,'mod/scorm:savetrack',1,1525171698,0),(853,1,4,'mod/scorm:savetrack',1,1525171698,0),(854,1,3,'mod/scorm:savetrack',1,1525171698,0),(855,1,1,'mod/scorm:savetrack',1,1525171698,0),(856,1,5,'mod/scorm:viewscores',1,1525171698,0),(857,1,4,'mod/scorm:viewscores',1,1525171698,0),(858,1,3,'mod/scorm:viewscores',1,1525171698,0),(859,1,1,'mod/scorm:viewscores',1,1525171698,0),(860,1,4,'mod/scorm:deleteresponses',1,1525171698,0),(861,1,3,'mod/scorm:deleteresponses',1,1525171698,0),(862,1,1,'mod/scorm:deleteresponses',1,1525171698,0),(863,1,3,'mod/survey:addinstance',1,1525171699,0),(864,1,1,'mod/survey:addinstance',1,1525171699,0),(865,1,5,'mod/survey:participate',1,1525171699,0),(866,1,4,'mod/survey:participate',1,1525171699,0),(867,1,3,'mod/survey:participate',1,1525171699,0),(868,1,1,'mod/survey:participate',1,1525171699,0),(869,1,4,'mod/survey:readresponses',1,1525171699,0),(870,1,3,'mod/survey:readresponses',1,1525171699,0),(871,1,1,'mod/survey:readresponses',1,1525171699,0),(872,1,4,'mod/survey:download',1,1525171699,0),(873,1,3,'mod/survey:download',1,1525171699,0),(874,1,1,'mod/survey:download',1,1525171699,0),(875,1,6,'mod/url:view',1,1525171699,0),(876,1,7,'mod/url:view',1,1525171699,0),(877,1,3,'mod/url:addinstance',1,1525171699,0),(878,1,1,'mod/url:addinstance',1,1525171699,0),(879,1,3,'mod/wiki:addinstance',1,1525171699,0),(880,1,1,'mod/wiki:addinstance',1,1525171699,0),(881,1,6,'mod/wiki:viewpage',1,1525171699,0),(882,1,5,'mod/wiki:viewpage',1,1525171699,0),(883,1,4,'mod/wiki:viewpage',1,1525171699,0),(884,1,3,'mod/wiki:viewpage',1,1525171699,0),(885,1,1,'mod/wiki:viewpage',1,1525171699,0),(886,1,5,'mod/wiki:editpage',1,1525171699,0),(887,1,4,'mod/wiki:editpage',1,1525171699,0),(888,1,3,'mod/wiki:editpage',1,1525171699,0),(889,1,1,'mod/wiki:editpage',1,1525171699,0),(890,1,5,'mod/wiki:createpage',1,1525171699,0),(891,1,4,'mod/wiki:createpage',1,1525171699,0),(892,1,3,'mod/wiki:createpage',1,1525171699,0),(893,1,1,'mod/wiki:createpage',1,1525171699,0),(894,1,5,'mod/wiki:viewcomment',1,1525171699,0),(895,1,4,'mod/wiki:viewcomment',1,1525171699,0),(896,1,3,'mod/wiki:viewcomment',1,1525171699,0),(897,1,1,'mod/wiki:viewcomment',1,1525171699,0),(898,1,5,'mod/wiki:editcomment',1,1525171700,0),(899,1,4,'mod/wiki:editcomment',1,1525171700,0),(900,1,3,'mod/wiki:editcomment',1,1525171700,0),(901,1,1,'mod/wiki:editcomment',1,1525171700,0),(902,1,4,'mod/wiki:managecomment',1,1525171700,0),(903,1,3,'mod/wiki:managecomment',1,1525171700,0),(904,1,1,'mod/wiki:managecomment',1,1525171700,0),(905,1,4,'mod/wiki:managefiles',1,1525171700,0),(906,1,3,'mod/wiki:managefiles',1,1525171700,0),(907,1,1,'mod/wiki:managefiles',1,1525171700,0),(908,1,4,'mod/wiki:overridelock',1,1525171700,0),(909,1,3,'mod/wiki:overridelock',1,1525171700,0),(910,1,1,'mod/wiki:overridelock',1,1525171700,0),(911,1,4,'mod/wiki:managewiki',1,1525171700,0),(912,1,3,'mod/wiki:managewiki',1,1525171700,0),(913,1,1,'mod/wiki:managewiki',1,1525171700,0),(914,1,6,'mod/workshop:view',1,1525171700,0),(915,1,5,'mod/workshop:view',1,1525171700,0),(916,1,4,'mod/workshop:view',1,1525171700,0),(917,1,3,'mod/workshop:view',1,1525171700,0),(918,1,1,'mod/workshop:view',1,1525171700,0),(919,1,3,'mod/workshop:addinstance',1,1525171700,0),(920,1,1,'mod/workshop:addinstance',1,1525171700,0),(921,1,4,'mod/workshop:switchphase',1,1525171700,0),(922,1,3,'mod/workshop:switchphase',1,1525171700,0),(923,1,1,'mod/workshop:switchphase',1,1525171700,0),(924,1,3,'mod/workshop:editdimensions',1,1525171700,0),(925,1,1,'mod/workshop:editdimensions',1,1525171700,0),(926,1,5,'mod/workshop:submit',1,1525171700,0),(927,1,5,'mod/workshop:peerassess',1,1525171700,0),(928,1,4,'mod/workshop:manageexamples',1,1525171700,0),(929,1,3,'mod/workshop:manageexamples',1,1525171700,0),(930,1,1,'mod/workshop:manageexamples',1,1525171700,0),(931,1,4,'mod/workshop:allocate',1,1525171700,0),(932,1,3,'mod/workshop:allocate',1,1525171700,0),(933,1,1,'mod/workshop:allocate',1,1525171700,0),(934,1,4,'mod/workshop:publishsubmissions',1,1525171700,0),(935,1,3,'mod/workshop:publishsubmissions',1,1525171700,0),(936,1,1,'mod/workshop:publishsubmissions',1,1525171700,0),(937,1,5,'mod/workshop:viewauthornames',1,1525171700,0),(938,1,4,'mod/workshop:viewauthornames',1,1525171700,0),(939,1,3,'mod/workshop:viewauthornames',1,1525171700,0),(940,1,1,'mod/workshop:viewauthornames',1,1525171700,0),(941,1,4,'mod/workshop:viewreviewernames',1,1525171700,0),(942,1,3,'mod/workshop:viewreviewernames',1,1525171700,0),(943,1,1,'mod/workshop:viewreviewernames',1,1525171700,0),(944,1,4,'mod/workshop:viewallsubmissions',1,1525171700,0),(945,1,3,'mod/workshop:viewallsubmissions',1,1525171700,0),(946,1,1,'mod/workshop:viewallsubmissions',1,1525171700,0),(947,1,5,'mod/workshop:viewpublishedsubmissions',1,1525171700,0),(948,1,4,'mod/workshop:viewpublishedsubmissions',1,1525171700,0),(949,1,3,'mod/workshop:viewpublishedsubmissions',1,1525171700,0),(950,1,1,'mod/workshop:viewpublishedsubmissions',1,1525171700,0),(951,1,5,'mod/workshop:viewauthorpublished',1,1525171700,0),(952,1,4,'mod/workshop:viewauthorpublished',1,1525171700,0),(953,1,3,'mod/workshop:viewauthorpublished',1,1525171700,0),(954,1,1,'mod/workshop:viewauthorpublished',1,1525171700,0),(955,1,4,'mod/workshop:viewallassessments',1,1525171700,0),(956,1,3,'mod/workshop:viewallassessments',1,1525171700,0),(957,1,1,'mod/workshop:viewallassessments',1,1525171700,0),(958,1,4,'mod/workshop:overridegrades',1,1525171700,0),(959,1,3,'mod/workshop:overridegrades',1,1525171700,0),(960,1,1,'mod/workshop:overridegrades',1,1525171700,0),(961,1,4,'mod/workshop:ignoredeadlines',1,1525171700,0),(962,1,3,'mod/workshop:ignoredeadlines',1,1525171700,0),(963,1,1,'mod/workshop:ignoredeadlines',1,1525171700,0),(964,1,4,'mod/workshop:deletesubmissions',1,1525171700,0),(965,1,3,'mod/workshop:deletesubmissions',1,1525171700,0),(966,1,1,'mod/workshop:deletesubmissions',1,1525171700,0),(967,1,1,'mod/workshop:exportsubmissions',1,1525171700,0),(968,1,4,'mod/workshop:exportsubmissions',1,1525171700,0),(969,1,3,'mod/workshop:exportsubmissions',1,1525171700,0),(970,1,5,'mod/workshop:exportsubmissions',1,1525171700,0),(971,1,7,'auth/oauth2:managelinkedlogins',1,1525171701,0),(972,1,1,'enrol/category:config',1,1525171701,0),(973,1,3,'enrol/category:config',1,1525171701,0),(974,1,3,'enrol/cohort:config',1,1525171701,0),(975,1,1,'enrol/cohort:config',1,1525171701,0),(976,1,1,'enrol/cohort:unenrol',1,1525171701,0),(977,1,1,'enrol/database:unenrol',1,1525171701,0),(978,1,1,'enrol/database:config',1,1525171701,0),(979,1,3,'enrol/database:config',1,1525171701,0),(980,1,1,'enrol/guest:config',1,1525171701,0),(981,1,3,'enrol/guest:config',1,1525171701,0),(982,1,1,'enrol/imsenterprise:config',1,1525171701,0),(983,1,3,'enrol/imsenterprise:config',1,1525171701,0),(984,1,1,'enrol/ldap:manage',1,1525171701,0),(985,1,1,'enrol/lti:config',1,1525171702,0),(986,1,3,'enrol/lti:config',1,1525171702,0),(987,1,1,'enrol/lti:unenrol',1,1525171702,0),(988,1,3,'enrol/lti:unenrol',1,1525171702,0),(989,1,1,'enrol/manual:config',1,1525171702,0),(990,1,1,'enrol/manual:enrol',1,1525171702,0),(991,1,3,'enrol/manual:enrol',1,1525171702,0),(992,1,1,'enrol/manual:manage',1,1525171702,0),(993,1,3,'enrol/manual:manage',1,1525171702,0),(994,1,1,'enrol/manual:unenrol',1,1525171702,0),(995,1,3,'enrol/manual:unenrol',1,1525171702,0),(996,1,1,'enrol/meta:config',1,1525171702,0),(997,1,3,'enrol/meta:config',1,1525171702,0),(998,1,1,'enrol/meta:selectaslinked',1,1525171702,0),(999,1,1,'enrol/meta:unenrol',1,1525171702,0),(1000,1,1,'enrol/mnet:config',1,1525171702,0),(1001,1,3,'enrol/mnet:config',1,1525171702,0),(1002,1,1,'enrol/paypal:config',1,1525171702,0),(1003,1,1,'enrol/paypal:manage',1,1525171702,0),(1004,1,3,'enrol/paypal:manage',1,1525171702,0),(1005,1,1,'enrol/paypal:unenrol',1,1525171702,0),(1006,1,3,'enrol/self:config',1,1525171702,0),(1007,1,1,'enrol/self:config',1,1525171702,0),(1008,1,3,'enrol/self:manage',1,1525171702,0),(1009,1,1,'enrol/self:manage',1,1525171702,0),(1010,1,5,'enrol/self:unenrolself',1,1525171702,0),(1011,1,3,'enrol/self:unenrol',1,1525171702,0),(1012,1,1,'enrol/self:unenrol',1,1525171702,0),(1013,1,7,'message/airnotifier:managedevice',1,1525171703,0),(1014,1,3,'block/activity_modules:addinstance',1,1525171703,0),(1015,1,1,'block/activity_modules:addinstance',1,1525171703,0),(1016,1,3,'block/activity_results:addinstance',1,1525171703,0),(1017,1,1,'block/activity_results:addinstance',1,1525171703,0),(1018,1,7,'block/admin_bookmarks:myaddinstance',1,1525171704,0),(1019,1,3,'block/admin_bookmarks:addinstance',1,1525171704,0),(1020,1,1,'block/admin_bookmarks:addinstance',1,1525171704,0),(1021,1,3,'block/badges:addinstance',1,1525171704,0),(1022,1,1,'block/badges:addinstance',1,1525171704,0),(1023,1,7,'block/badges:myaddinstance',1,1525171704,0),(1024,1,3,'block/blog_menu:addinstance',1,1525171704,0),(1025,1,1,'block/blog_menu:addinstance',1,1525171704,0),(1026,1,3,'block/blog_recent:addinstance',1,1525171704,0),(1027,1,1,'block/blog_recent:addinstance',1,1525171704,0),(1028,1,3,'block/blog_tags:addinstance',1,1525171704,0),(1029,1,1,'block/blog_tags:addinstance',1,1525171704,0),(1030,1,7,'block/calendar_month:myaddinstance',1,1525171704,0),(1031,1,3,'block/calendar_month:addinstance',1,1525171704,0),(1032,1,1,'block/calendar_month:addinstance',1,1525171704,0),(1033,1,7,'block/calendar_upcoming:myaddinstance',1,1525171704,0),(1034,1,3,'block/calendar_upcoming:addinstance',1,1525171704,0),(1035,1,1,'block/calendar_upcoming:addinstance',1,1525171704,0),(1036,1,7,'block/comments:myaddinstance',1,1525171704,0),(1037,1,3,'block/comments:addinstance',1,1525171704,0),(1038,1,1,'block/comments:addinstance',1,1525171704,0),(1039,1,7,'block/community:myaddinstance',1,1525171704,0),(1040,1,3,'block/community:addinstance',1,1525171704,0),(1041,1,1,'block/community:addinstance',1,1525171704,0),(1042,1,3,'block/completionstatus:addinstance',1,1525171704,0),(1043,1,1,'block/completionstatus:addinstance',1,1525171704,0),(1044,1,7,'block/course_list:myaddinstance',1,1525171704,0),(1045,1,3,'block/course_list:addinstance',1,1525171704,0),(1046,1,1,'block/course_list:addinstance',1,1525171704,0),(1047,1,3,'block/course_summary:addinstance',1,1525171704,0),(1048,1,1,'block/course_summary:addinstance',1,1525171704,0),(1049,1,3,'block/feedback:addinstance',1,1525171705,0),(1050,1,1,'block/feedback:addinstance',1,1525171705,0),(1051,1,7,'block/globalsearch:myaddinstance',1,1525171705,0),(1052,1,3,'block/globalsearch:addinstance',1,1525171705,0),(1053,1,1,'block/globalsearch:addinstance',1,1525171705,0),(1054,1,7,'block/glossary_random:myaddinstance',1,1525171705,0),(1055,1,3,'block/glossary_random:addinstance',1,1525171705,0),(1056,1,1,'block/glossary_random:addinstance',1,1525171705,0),(1057,1,7,'block/html:myaddinstance',1,1525171705,0),(1058,1,3,'block/html:addinstance',1,1525171705,0),(1059,1,1,'block/html:addinstance',1,1525171705,0),(1060,1,3,'block/login:addinstance',1,1525171705,0),(1061,1,1,'block/login:addinstance',1,1525171705,0),(1062,1,3,'block/lp:addinstance',1,1525171705,0),(1063,1,1,'block/lp:addinstance',1,1525171705,0),(1064,1,7,'block/lp:myaddinstance',1,1525171705,0),(1065,1,7,'block/lp:view',1,1525171705,0),(1066,1,7,'block/mentees:myaddinstance',1,1525171705,0),(1067,1,3,'block/mentees:addinstance',1,1525171705,0),(1068,1,1,'block/mentees:addinstance',1,1525171705,0),(1069,1,7,'block/mnet_hosts:myaddinstance',1,1525171705,0),(1070,1,3,'block/mnet_hosts:addinstance',1,1525171705,0),(1071,1,1,'block/mnet_hosts:addinstance',1,1525171705,0),(1072,1,7,'block/myoverview:myaddinstance',1,1525171705,0),(1073,1,3,'block/myoverview:addinstance',1,1525171705,0),(1074,1,1,'block/myoverview:addinstance',1,1525171705,0),(1075,1,7,'block/myprofile:myaddinstance',1,1525171705,0),(1076,1,3,'block/myprofile:addinstance',1,1525171705,0),(1077,1,1,'block/myprofile:addinstance',1,1525171705,0),(1078,1,7,'block/navigation:myaddinstance',1,1525171705,0),(1079,1,3,'block/navigation:addinstance',1,1525171705,0),(1080,1,1,'block/navigation:addinstance',1,1525171705,0),(1081,1,7,'block/news_items:myaddinstance',1,1525171705,0),(1082,1,3,'block/news_items:addinstance',1,1525171705,0),(1083,1,1,'block/news_items:addinstance',1,1525171705,0),(1084,1,7,'block/online_users:myaddinstance',1,1525171706,0),(1085,1,3,'block/online_users:addinstance',1,1525171706,0),(1086,1,1,'block/online_users:addinstance',1,1525171706,0),(1087,1,7,'block/online_users:viewlist',1,1525171706,0),(1088,1,6,'block/online_users:viewlist',1,1525171706,0),(1089,1,5,'block/online_users:viewlist',1,1525171706,0),(1090,1,4,'block/online_users:viewlist',1,1525171706,0),(1091,1,3,'block/online_users:viewlist',1,1525171706,0),(1092,1,1,'block/online_users:viewlist',1,1525171706,0),(1093,1,3,'block/participants:addinstance',1,1525171706,0),(1094,1,1,'block/participants:addinstance',1,1525171706,0),(1095,1,7,'block/private_files:myaddinstance',1,1525171706,0),(1096,1,3,'block/private_files:addinstance',1,1525171706,0),(1097,1,1,'block/private_files:addinstance',1,1525171706,0),(1098,1,3,'block/quiz_results:addinstance',1,1525171706,0),(1099,1,1,'block/quiz_results:addinstance',1,1525171706,0),(1100,1,3,'block/recent_activity:addinstance',1,1525171706,0),(1101,1,1,'block/recent_activity:addinstance',1,1525171706,0),(1102,1,7,'block/recent_activity:viewaddupdatemodule',1,1525171706,0),(1103,1,7,'block/recent_activity:viewdeletemodule',1,1525171706,0),(1104,1,7,'block/rss_client:myaddinstance',1,1525171706,0),(1105,1,3,'block/rss_client:addinstance',1,1525171706,0),(1106,1,1,'block/rss_client:addinstance',1,1525171706,0),(1107,1,4,'block/rss_client:manageownfeeds',1,1525171706,0),(1108,1,3,'block/rss_client:manageownfeeds',1,1525171706,0),(1109,1,1,'block/rss_client:manageownfeeds',1,1525171706,0),(1110,1,1,'block/rss_client:manageanyfeeds',1,1525171706,0),(1111,1,3,'block/search_forums:addinstance',1,1525171706,0),(1112,1,1,'block/search_forums:addinstance',1,1525171706,0),(1113,1,3,'block/section_links:addinstance',1,1525171706,0),(1114,1,1,'block/section_links:addinstance',1,1525171706,0),(1115,1,3,'block/selfcompletion:addinstance',1,1525171707,0),(1116,1,1,'block/selfcompletion:addinstance',1,1525171707,0),(1117,1,7,'block/settings:myaddinstance',1,1525171707,0),(1118,1,3,'block/settings:addinstance',1,1525171707,0),(1119,1,1,'block/settings:addinstance',1,1525171707,0),(1120,1,3,'block/site_main_menu:addinstance',1,1525171707,0),(1121,1,1,'block/site_main_menu:addinstance',1,1525171707,0),(1122,1,3,'block/social_activities:addinstance',1,1525171707,0),(1123,1,1,'block/social_activities:addinstance',1,1525171707,0),(1124,1,3,'block/tag_flickr:addinstance',1,1525171707,0),(1125,1,1,'block/tag_flickr:addinstance',1,1525171707,0),(1126,1,3,'block/tag_youtube:addinstance',1,1525171707,0),(1127,1,1,'block/tag_youtube:addinstance',1,1525171707,0),(1128,1,7,'block/tags:myaddinstance',1,1525171707,0),(1129,1,3,'block/tags:addinstance',1,1525171707,0),(1130,1,1,'block/tags:addinstance',1,1525171707,0),(1131,1,4,'report/completion:view',1,1525171709,0),(1132,1,3,'report/completion:view',1,1525171709,0),(1133,1,1,'report/completion:view',1,1525171709,0),(1134,1,4,'report/courseoverview:view',1,1525171710,0),(1135,1,3,'report/courseoverview:view',1,1525171710,0),(1136,1,1,'report/courseoverview:view',1,1525171710,0),(1137,1,4,'report/log:view',1,1525171710,0),(1138,1,3,'report/log:view',1,1525171710,0),(1139,1,1,'report/log:view',1,1525171710,0),(1140,1,4,'report/log:viewtoday',1,1525171710,0),(1141,1,3,'report/log:viewtoday',1,1525171710,0),(1142,1,1,'report/log:viewtoday',1,1525171710,0),(1143,1,4,'report/loglive:view',1,1525171710,0),(1144,1,3,'report/loglive:view',1,1525171710,0),(1145,1,1,'report/loglive:view',1,1525171710,0),(1146,1,4,'report/outline:view',1,1525171710,0),(1147,1,3,'report/outline:view',1,1525171710,0),(1148,1,1,'report/outline:view',1,1525171710,0),(1149,1,4,'report/participation:view',1,1525171710,0),(1150,1,3,'report/participation:view',1,1525171710,0),(1151,1,1,'report/participation:view',1,1525171710,0),(1152,1,1,'report/performance:view',1,1525171710,0),(1153,1,4,'report/progress:view',1,1525171710,0),(1154,1,3,'report/progress:view',1,1525171710,0),(1155,1,1,'report/progress:view',1,1525171710,0),(1156,1,1,'report/security:view',1,1525171710,0),(1157,1,4,'report/stats:view',1,1525171710,0),(1158,1,3,'report/stats:view',1,1525171710,0),(1159,1,1,'report/stats:view',1,1525171710,0),(1160,1,6,'report/usersessions:manageownsessions',-1000,1525171710,0),(1161,1,7,'report/usersessions:manageownsessions',1,1525171710,0),(1162,1,1,'report/usersessions:manageownsessions',1,1525171710,0),(1163,1,4,'gradeexport/ods:view',1,1525171710,0),(1164,1,3,'gradeexport/ods:view',1,1525171710,0),(1165,1,1,'gradeexport/ods:view',1,1525171710,0),(1166,1,1,'gradeexport/ods:publish',1,1525171710,0),(1167,1,4,'gradeexport/txt:view',1,1525171710,0),(1168,1,3,'gradeexport/txt:view',1,1525171710,0),(1169,1,1,'gradeexport/txt:view',1,1525171710,0),(1170,1,1,'gradeexport/txt:publish',1,1525171710,0),(1171,1,4,'gradeexport/xls:view',1,1525171711,0),(1172,1,3,'gradeexport/xls:view',1,1525171711,0),(1173,1,1,'gradeexport/xls:view',1,1525171711,0),(1174,1,1,'gradeexport/xls:publish',1,1525171711,0),(1175,1,4,'gradeexport/xml:view',1,1525171711,0),(1176,1,3,'gradeexport/xml:view',1,1525171711,0),(1177,1,1,'gradeexport/xml:view',1,1525171711,0),(1178,1,1,'gradeexport/xml:publish',1,1525171711,0),(1179,1,3,'gradeimport/csv:view',1,1525171711,0),(1180,1,1,'gradeimport/csv:view',1,1525171711,0),(1181,1,3,'gradeimport/direct:view',1,1525171711,0),(1182,1,1,'gradeimport/direct:view',1,1525171711,0),(1183,1,3,'gradeimport/xml:view',1,1525171711,0),(1184,1,1,'gradeimport/xml:view',1,1525171711,0),(1185,1,1,'gradeimport/xml:publish',1,1525171711,0),(1186,1,4,'gradereport/grader:view',1,1525171711,0),(1187,1,3,'gradereport/grader:view',1,1525171711,0),(1188,1,1,'gradereport/grader:view',1,1525171711,0),(1189,1,4,'gradereport/history:view',1,1525171711,0),(1190,1,3,'gradereport/history:view',1,1525171711,0),(1191,1,1,'gradereport/history:view',1,1525171711,0),(1192,1,4,'gradereport/outcomes:view',1,1525171711,0),(1193,1,3,'gradereport/outcomes:view',1,1525171711,0),(1194,1,1,'gradereport/outcomes:view',1,1525171711,0),(1195,1,7,'gradereport/overview:view',1,1525171711,0),(1196,1,3,'gradereport/singleview:view',1,1525171711,0),(1197,1,1,'gradereport/singleview:view',1,1525171711,0),(1198,1,5,'gradereport/user:view',1,1525171711,0),(1199,1,4,'gradereport/user:view',1,1525171711,0),(1200,1,3,'gradereport/user:view',1,1525171711,0),(1201,1,1,'gradereport/user:view',1,1525171712,0),(1202,1,7,'repository/areafiles:view',1,1525171712,0),(1203,1,7,'repository/boxnet:view',1,1525171712,0),(1204,1,2,'repository/coursefiles:view',1,1525171712,0),(1205,1,4,'repository/coursefiles:view',1,1525171712,0),(1206,1,3,'repository/coursefiles:view',1,1525171712,0),(1207,1,1,'repository/coursefiles:view',1,1525171712,0),(1208,1,7,'repository/dropbox:view',1,1525171713,0),(1209,1,7,'repository/equella:view',1,1525171713,0),(1210,1,2,'repository/filesystem:view',1,1525171713,0),(1211,1,4,'repository/filesystem:view',1,1525171713,0),(1212,1,3,'repository/filesystem:view',1,1525171713,0),(1213,1,1,'repository/filesystem:view',1,1525171713,0),(1214,1,7,'repository/flickr:view',1,1525171713,0),(1215,1,7,'repository/flickr_public:view',1,1525171713,0),(1216,1,7,'repository/googledocs:view',1,1525171713,0),(1217,1,2,'repository/local:view',1,1525171713,0),(1218,1,4,'repository/local:view',1,1525171713,0),(1219,1,3,'repository/local:view',1,1525171713,0),(1220,1,1,'repository/local:view',1,1525171713,0),(1221,1,7,'repository/merlot:view',1,1525171713,0),(1222,1,7,'repository/onedrive:view',1,1525171713,0),(1223,1,7,'repository/picasa:view',1,1525171713,0),(1224,1,7,'repository/recent:view',1,1525171713,0),(1225,1,7,'repository/s3:view',1,1525171713,0),(1226,1,7,'repository/skydrive:view',1,1525171713,0),(1227,1,7,'repository/upload:view',1,1525171714,0),(1228,1,7,'repository/url:view',1,1525171714,0),(1229,1,7,'repository/user:view',1,1525171714,0),(1230,1,2,'repository/webdav:view',1,1525171714,0),(1231,1,4,'repository/webdav:view',1,1525171714,0),(1232,1,3,'repository/webdav:view',1,1525171714,0),(1233,1,1,'repository/webdav:view',1,1525171714,0),(1234,1,7,'repository/wikimedia:view',1,1525171714,0),(1235,1,7,'repository/youtube:view',1,1525171714,0),(1236,1,1,'tool/customlang:view',1,1525171717,0),(1237,1,1,'tool/customlang:edit',1,1525171717,0),(1238,1,1,'tool/lpmigrate:frameworksmigrate',1,1525171718,0),(1239,1,4,'tool/monitor:subscribe',1,1525171719,0),(1240,1,3,'tool/monitor:subscribe',1,1525171719,0),(1241,1,1,'tool/monitor:subscribe',1,1525171719,0),(1242,1,4,'tool/monitor:managerules',1,1525171719,0),(1243,1,3,'tool/monitor:managerules',1,1525171719,0),(1244,1,1,'tool/monitor:managerules',1,1525171719,0),(1245,1,1,'tool/monitor:managetool',1,1525171719,0),(1246,1,3,'tool/recyclebin:deleteitems',1,1525171719,0),(1247,1,1,'tool/recyclebin:deleteitems',1,1525171719,0),(1248,1,3,'tool/recyclebin:restoreitems',1,1525171720,0),(1249,1,1,'tool/recyclebin:restoreitems',1,1525171720,0),(1250,1,4,'tool/recyclebin:viewitems',1,1525171720,0),(1251,1,3,'tool/recyclebin:viewitems',1,1525171720,0),(1252,1,1,'tool/recyclebin:viewitems',1,1525171720,0),(1253,1,1,'tool/uploaduser:uploaduserpictures',1,1525171720,0),(1254,1,1,'tool/usertours:managetours',1,1525171721,0),(1255,1,3,'booktool/importhtml:import',1,1525171723,0),(1256,1,1,'booktool/importhtml:import',1,1525171723,0),(1257,1,6,'booktool/print:print',1,1525171723,0),(1258,1,8,'booktool/print:print',1,1525171723,0),(1259,1,5,'booktool/print:print',1,1525171723,0),(1260,1,4,'booktool/print:print',1,1525171723,0),(1261,1,3,'booktool/print:print',1,1525171723,0),(1262,1,1,'booktool/print:print',1,1525171723,0),(1263,1,4,'quiz/grading:viewstudentnames',1,1525171725,0),(1264,1,3,'quiz/grading:viewstudentnames',1,1525171725,0),(1265,1,1,'quiz/grading:viewstudentnames',1,1525171725,0),(1266,1,4,'quiz/grading:viewidnumber',1,1525171725,0),(1267,1,3,'quiz/grading:viewidnumber',1,1525171725,0),(1268,1,1,'quiz/grading:viewidnumber',1,1525171725,0),(1269,1,4,'quiz/statistics:view',1,1525171725,0),(1270,1,3,'quiz/statistics:view',1,1525171725,0),(1271,1,1,'quiz/statistics:view',1,1525171725,0);
/*!40000 ALTER TABLE `mdl01_role_capabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_role_context_levels`
--

DROP TABLE IF EXISTS `mdl01_role_context_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_role_context_levels` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL,
  `contextlevel` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_rolecontleve_conrol_uix` (`contextlevel`,`roleid`),
  KEY `mdl01_rolecontleve_rol_ix` (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Lists which roles can be assigned at which context levels. T';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_role_context_levels`
--

LOCK TABLES `mdl01_role_context_levels` WRITE;
/*!40000 ALTER TABLE `mdl01_role_context_levels` DISABLE KEYS */;
INSERT INTO `mdl01_role_context_levels` VALUES (1,1,10),(4,2,10),(2,1,40),(5,2,40),(3,1,50),(6,3,50),(8,4,50),(10,5,50),(7,3,70),(9,4,70),(11,5,70);
/*!40000 ALTER TABLE `mdl01_role_context_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_role_names`
--

DROP TABLE IF EXISTS `mdl01_role_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_role_names` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL DEFAULT '0',
  `contextid` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_rolename_rolcon_uix` (`roleid`,`contextid`),
  KEY `mdl01_rolename_rol_ix` (`roleid`),
  KEY `mdl01_rolename_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='role names in native strings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_role_names`
--

LOCK TABLES `mdl01_role_names` WRITE;
/*!40000 ALTER TABLE `mdl01_role_names` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_role_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_role_sortorder`
--

DROP TABLE IF EXISTS `mdl01_role_sortorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_role_sortorder` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `roleid` bigint(10) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `sortoder` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_rolesort_userolcon_uix` (`userid`,`roleid`,`contextid`),
  KEY `mdl01_rolesort_use_ix` (`userid`),
  KEY `mdl01_rolesort_rol_ix` (`roleid`),
  KEY `mdl01_rolesort_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='sort order of course managers in a course';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_role_sortorder`
--

LOCK TABLES `mdl01_role_sortorder` WRITE;
/*!40000 ALTER TABLE `mdl01_role_sortorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_role_sortorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_scale`
--

DROP TABLE IF EXISTS `mdl01_scale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_scale` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `scale` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_scal_cou_ix` (`courseid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines grading scales';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_scale`
--

LOCK TABLES `mdl01_scale` WRITE;
/*!40000 ALTER TABLE `mdl01_scale` DISABLE KEYS */;
INSERT INTO `mdl01_scale` VALUES (1,0,0,'分離・関連認識','主に分離認識の傾向がある,分離認識と関連認識を同等に持っている,主に関連認識の傾向がある','分離認識および関連認識の理論に基づく評価尺度です。\nこの理論では私たちが見たり聞いたりすることを評価および学習する、2つの方法を説明しています。\n<ul>\n<li><strong>分離認識の人</strong> は感情を含まず可能な限り客観的であろうとします。他の人とのディスカッションにおいて、相手の考えの穴を探す論理を使って自分たちの意見を守ることを好みます。</li>\n<li><strong>関連認識の人</strong> は他の人に対してより敏感です。また、相手に共感する能力があり、自分が関係できて「相手の立場に立ってものごとを理解できた」と感じるまで話を聞く傾向があります。そして、自分に知識をもたらす他の人の経験を共有することで学ぼうとします。</li>\n</ul>',0,1525171683),(2,0,0,'デフォルトコンピテンシー尺度','コンピテント未達,コンピテント','誰かが熟達したことを証明することに関して、さらなる情報が存在しない二進数評価尺度です。',0,1525171683);
/*!40000 ALTER TABLE `mdl01_scale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_scale_history`
--

DROP TABLE IF EXISTS `mdl01_scale_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_scale_history` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `action` bigint(10) NOT NULL DEFAULT '0',
  `oldid` bigint(10) NOT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `loggeduser` bigint(10) DEFAULT NULL,
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `scale` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_scalhist_act_ix` (`action`),
  KEY `mdl01_scalhist_tim_ix` (`timemodified`),
  KEY `mdl01_scalhist_old_ix` (`oldid`),
  KEY `mdl01_scalhist_cou_ix` (`courseid`),
  KEY `mdl01_scalhist_log_ix` (`loggeduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='History table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_scale_history`
--

LOCK TABLES `mdl01_scale_history` WRITE;
/*!40000 ALTER TABLE `mdl01_scale_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_scale_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_scorm`
--

DROP TABLE IF EXISTS `mdl01_scorm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_scorm` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `scormtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'local',
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `version` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `maxgrade` double NOT NULL DEFAULT '0',
  `grademethod` tinyint(2) NOT NULL DEFAULT '0',
  `whatgrade` bigint(10) NOT NULL DEFAULT '0',
  `maxattempt` bigint(10) NOT NULL DEFAULT '1',
  `forcecompleted` tinyint(1) NOT NULL DEFAULT '0',
  `forcenewattempt` tinyint(1) NOT NULL DEFAULT '0',
  `lastattemptlock` tinyint(1) NOT NULL DEFAULT '0',
  `masteryoverride` tinyint(1) NOT NULL DEFAULT '1',
  `displayattemptstatus` tinyint(1) NOT NULL DEFAULT '1',
  `displaycoursestructure` tinyint(1) NOT NULL DEFAULT '0',
  `updatefreq` tinyint(1) NOT NULL DEFAULT '0',
  `sha1hash` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `md5hash` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `revision` bigint(10) NOT NULL DEFAULT '0',
  `launch` bigint(10) NOT NULL DEFAULT '0',
  `skipview` tinyint(1) NOT NULL DEFAULT '1',
  `hidebrowse` tinyint(1) NOT NULL DEFAULT '0',
  `hidetoc` tinyint(1) NOT NULL DEFAULT '0',
  `nav` tinyint(1) NOT NULL DEFAULT '1',
  `navpositionleft` bigint(10) DEFAULT '-100',
  `navpositiontop` bigint(10) DEFAULT '-100',
  `auto` tinyint(1) NOT NULL DEFAULT '0',
  `popup` tinyint(1) NOT NULL DEFAULT '0',
  `options` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `width` bigint(10) NOT NULL DEFAULT '100',
  `height` bigint(10) NOT NULL DEFAULT '600',
  `timeopen` bigint(10) NOT NULL DEFAULT '0',
  `timeclose` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `completionstatusrequired` tinyint(1) DEFAULT NULL,
  `completionscorerequired` tinyint(2) DEFAULT NULL,
  `completionstatusallscos` tinyint(1) DEFAULT NULL,
  `displayactivityname` smallint(4) NOT NULL DEFAULT '1',
  `autocommit` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_scor_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='each table is one SCORM module and its configuration';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_scorm`
--

LOCK TABLES `mdl01_scorm` WRITE;
/*!40000 ALTER TABLE `mdl01_scorm` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_scorm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_scorm_aicc_session`
--

DROP TABLE IF EXISTS `mdl01_scorm_aicc_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_scorm_aicc_session` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `scormid` bigint(10) NOT NULL DEFAULT '0',
  `hacpsession` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `scoid` bigint(10) DEFAULT '0',
  `scormmode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scormstatus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempt` bigint(10) DEFAULT NULL,
  `lessonstatus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sessiontime` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_scoraiccsess_sco_ix` (`scormid`),
  KEY `mdl01_scoraiccsess_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Used by AICC HACP to store session information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_scorm_aicc_session`
--

LOCK TABLES `mdl01_scorm_aicc_session` WRITE;
/*!40000 ALTER TABLE `mdl01_scorm_aicc_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_scorm_aicc_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_scorm_scoes`
--

DROP TABLE IF EXISTS `mdl01_scorm_scoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_scorm_scoes` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scorm` bigint(10) NOT NULL DEFAULT '0',
  `manifest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `organization` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `parent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `launch` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `scormtype` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_scorscoe_sco_ix` (`scorm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='each SCO part of the SCORM module';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_scorm_scoes`
--

LOCK TABLES `mdl01_scorm_scoes` WRITE;
/*!40000 ALTER TABLE `mdl01_scorm_scoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_scorm_scoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_scorm_scoes_data`
--

DROP TABLE IF EXISTS `mdl01_scorm_scoes_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_scorm_scoes_data` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_scorscoedata_sco_ix` (`scoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Contains variable data get from packages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_scorm_scoes_data`
--

LOCK TABLES `mdl01_scorm_scoes_data` WRITE;
/*!40000 ALTER TABLE `mdl01_scorm_scoes_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_scorm_scoes_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_scorm_scoes_track`
--

DROP TABLE IF EXISTS `mdl01_scorm_scoes_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_scorm_scoes_track` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `scormid` bigint(10) NOT NULL DEFAULT '0',
  `scoid` bigint(10) NOT NULL DEFAULT '0',
  `attempt` bigint(10) NOT NULL DEFAULT '1',
  `element` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_scorscoetrac_usescos_uix` (`userid`,`scormid`,`scoid`,`attempt`,`element`),
  KEY `mdl01_scorscoetrac_use_ix` (`userid`),
  KEY `mdl01_scorscoetrac_ele_ix` (`element`),
  KEY `mdl01_scorscoetrac_sco_ix` (`scormid`),
  KEY `mdl01_scorscoetrac_sco2_ix` (`scoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='to track SCOes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_scorm_scoes_track`
--

LOCK TABLES `mdl01_scorm_scoes_track` WRITE;
/*!40000 ALTER TABLE `mdl01_scorm_scoes_track` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_scorm_scoes_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_scorm_seq_mapinfo`
--

DROP TABLE IF EXISTS `mdl01_scorm_seq_mapinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_scorm_seq_mapinfo` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) NOT NULL DEFAULT '0',
  `objectiveid` bigint(10) NOT NULL DEFAULT '0',
  `targetobjectiveid` bigint(10) NOT NULL DEFAULT '0',
  `readsatisfiedstatus` tinyint(1) NOT NULL DEFAULT '1',
  `readnormalizedmeasure` tinyint(1) NOT NULL DEFAULT '1',
  `writesatisfiedstatus` tinyint(1) NOT NULL DEFAULT '0',
  `writenormalizedmeasure` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_scorseqmapi_scoidobj_uix` (`scoid`,`id`,`objectiveid`),
  KEY `mdl01_scorseqmapi_sco_ix` (`scoid`),
  KEY `mdl01_scorseqmapi_obj_ix` (`objectiveid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='SCORM2004 objective mapinfo description';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_scorm_seq_mapinfo`
--

LOCK TABLES `mdl01_scorm_seq_mapinfo` WRITE;
/*!40000 ALTER TABLE `mdl01_scorm_seq_mapinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_scorm_seq_mapinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_scorm_seq_objective`
--

DROP TABLE IF EXISTS `mdl01_scorm_seq_objective`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_scorm_seq_objective` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) NOT NULL DEFAULT '0',
  `primaryobj` tinyint(1) NOT NULL DEFAULT '0',
  `objectiveid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `satisfiedbymeasure` tinyint(1) NOT NULL DEFAULT '1',
  `minnormalizedmeasure` float(11,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_scorseqobje_scoid_uix` (`scoid`,`id`),
  KEY `mdl01_scorseqobje_sco_ix` (`scoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='SCORM2004 objective description';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_scorm_seq_objective`
--

LOCK TABLES `mdl01_scorm_seq_objective` WRITE;
/*!40000 ALTER TABLE `mdl01_scorm_seq_objective` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_scorm_seq_objective` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_scorm_seq_rolluprule`
--

DROP TABLE IF EXISTS `mdl01_scorm_seq_rolluprule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_scorm_seq_rolluprule` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) NOT NULL DEFAULT '0',
  `childactivityset` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `minimumcount` bigint(10) NOT NULL DEFAULT '0',
  `minimumpercent` float(11,4) NOT NULL DEFAULT '0.0000',
  `conditioncombination` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `action` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_scorseqroll_scoid_uix` (`scoid`,`id`),
  KEY `mdl01_scorseqroll_sco_ix` (`scoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='SCORM2004 sequencing rule';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_scorm_seq_rolluprule`
--

LOCK TABLES `mdl01_scorm_seq_rolluprule` WRITE;
/*!40000 ALTER TABLE `mdl01_scorm_seq_rolluprule` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_scorm_seq_rolluprule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_scorm_seq_rolluprulecond`
--

DROP TABLE IF EXISTS `mdl01_scorm_seq_rolluprulecond`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_scorm_seq_rolluprulecond` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) NOT NULL DEFAULT '0',
  `rollupruleid` bigint(10) NOT NULL DEFAULT '0',
  `operator` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'noOp',
  `cond` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_scorseqroll_scorolid_uix` (`scoid`,`rollupruleid`,`id`),
  KEY `mdl01_scorseqroll_sco2_ix` (`scoid`),
  KEY `mdl01_scorseqroll_rol_ix` (`rollupruleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='SCORM2004 sequencing rule';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_scorm_seq_rolluprulecond`
--

LOCK TABLES `mdl01_scorm_seq_rolluprulecond` WRITE;
/*!40000 ALTER TABLE `mdl01_scorm_seq_rolluprulecond` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_scorm_seq_rolluprulecond` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_scorm_seq_rulecond`
--

DROP TABLE IF EXISTS `mdl01_scorm_seq_rulecond`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_scorm_seq_rulecond` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) NOT NULL DEFAULT '0',
  `ruleconditionsid` bigint(10) NOT NULL DEFAULT '0',
  `refrencedobjective` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `measurethreshold` float(11,4) NOT NULL DEFAULT '0.0000',
  `operator` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'noOp',
  `cond` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'always',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_scorseqrule_idscorul_uix` (`id`,`scoid`,`ruleconditionsid`),
  KEY `mdl01_scorseqrule_sco2_ix` (`scoid`),
  KEY `mdl01_scorseqrule_rul_ix` (`ruleconditionsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='SCORM2004 rule condition';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_scorm_seq_rulecond`
--

LOCK TABLES `mdl01_scorm_seq_rulecond` WRITE;
/*!40000 ALTER TABLE `mdl01_scorm_seq_rulecond` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_scorm_seq_rulecond` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_scorm_seq_ruleconds`
--

DROP TABLE IF EXISTS `mdl01_scorm_seq_ruleconds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_scorm_seq_ruleconds` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) NOT NULL DEFAULT '0',
  `conditioncombination` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `ruletype` tinyint(2) NOT NULL DEFAULT '0',
  `action` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_scorseqrule_scoid_uix` (`scoid`,`id`),
  KEY `mdl01_scorseqrule_sco_ix` (`scoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='SCORM2004 rule conditions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_scorm_seq_ruleconds`
--

LOCK TABLES `mdl01_scorm_seq_ruleconds` WRITE;
/*!40000 ALTER TABLE `mdl01_scorm_seq_ruleconds` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_scorm_seq_ruleconds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_search_index_requests`
--

DROP TABLE IF EXISTS `mdl01_search_index_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_search_index_requests` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `searcharea` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timerequested` bigint(10) NOT NULL,
  `partialarea` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `partialtime` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_searinderequ_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Records requests for (re)indexing of specific contexts. Entr';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_search_index_requests`
--

LOCK TABLES `mdl01_search_index_requests` WRITE;
/*!40000 ALTER TABLE `mdl01_search_index_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_search_index_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_sessions`
--

DROP TABLE IF EXISTS `mdl01_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_sessions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `state` bigint(10) NOT NULL DEFAULT '0',
  `sid` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userid` bigint(10) NOT NULL,
  `sessdata` longtext COLLATE utf8mb4_unicode_ci,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `firstip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_sess_sid_uix` (`sid`),
  KEY `mdl01_sess_sta_ix` (`state`),
  KEY `mdl01_sess_tim_ix` (`timecreated`),
  KEY `mdl01_sess_tim2_ix` (`timemodified`),
  KEY `mdl01_sess_use_ix` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Database based session storage - now recommended';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_sessions`
--

LOCK TABLES `mdl01_sessions` WRITE;
/*!40000 ALTER TABLE `mdl01_sessions` DISABLE KEYS */;
INSERT INTO `mdl01_sessions` VALUES (1,0,'irovkkgs6u1iorq40gqbdbam54',0,NULL,1525171738,1525171738,'10.0.2.2','10.0.2.2');
/*!40000 ALTER TABLE `mdl01_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_stats_daily`
--

DROP TABLE IF EXISTS `mdl01_stats_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_stats_daily` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `timeend` bigint(10) NOT NULL DEFAULT '0',
  `roleid` bigint(10) NOT NULL DEFAULT '0',
  `stattype` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activity',
  `stat1` bigint(10) NOT NULL DEFAULT '0',
  `stat2` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_statdail_cou_ix` (`courseid`),
  KEY `mdl01_statdail_tim_ix` (`timeend`),
  KEY `mdl01_statdail_rol_ix` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='to accumulate daily stats';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_stats_daily`
--

LOCK TABLES `mdl01_stats_daily` WRITE;
/*!40000 ALTER TABLE `mdl01_stats_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_stats_daily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_stats_monthly`
--

DROP TABLE IF EXISTS `mdl01_stats_monthly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_stats_monthly` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `timeend` bigint(10) NOT NULL DEFAULT '0',
  `roleid` bigint(10) NOT NULL DEFAULT '0',
  `stattype` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activity',
  `stat1` bigint(10) NOT NULL DEFAULT '0',
  `stat2` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_statmont_cou_ix` (`courseid`),
  KEY `mdl01_statmont_tim_ix` (`timeend`),
  KEY `mdl01_statmont_rol_ix` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='To accumulate monthly stats';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_stats_monthly`
--

LOCK TABLES `mdl01_stats_monthly` WRITE;
/*!40000 ALTER TABLE `mdl01_stats_monthly` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_stats_monthly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_stats_user_daily`
--

DROP TABLE IF EXISTS `mdl01_stats_user_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_stats_user_daily` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `roleid` bigint(10) NOT NULL DEFAULT '0',
  `timeend` bigint(10) NOT NULL DEFAULT '0',
  `statsreads` bigint(10) NOT NULL DEFAULT '0',
  `statswrites` bigint(10) NOT NULL DEFAULT '0',
  `stattype` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl01_statuserdail_cou_ix` (`courseid`),
  KEY `mdl01_statuserdail_use_ix` (`userid`),
  KEY `mdl01_statuserdail_rol_ix` (`roleid`),
  KEY `mdl01_statuserdail_tim_ix` (`timeend`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='To accumulate daily stats per course/user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_stats_user_daily`
--

LOCK TABLES `mdl01_stats_user_daily` WRITE;
/*!40000 ALTER TABLE `mdl01_stats_user_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_stats_user_daily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_stats_user_monthly`
--

DROP TABLE IF EXISTS `mdl01_stats_user_monthly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_stats_user_monthly` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `roleid` bigint(10) NOT NULL DEFAULT '0',
  `timeend` bigint(10) NOT NULL DEFAULT '0',
  `statsreads` bigint(10) NOT NULL DEFAULT '0',
  `statswrites` bigint(10) NOT NULL DEFAULT '0',
  `stattype` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl01_statusermont_cou_ix` (`courseid`),
  KEY `mdl01_statusermont_use_ix` (`userid`),
  KEY `mdl01_statusermont_rol_ix` (`roleid`),
  KEY `mdl01_statusermont_tim_ix` (`timeend`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='To accumulate monthly stats per course/user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_stats_user_monthly`
--

LOCK TABLES `mdl01_stats_user_monthly` WRITE;
/*!40000 ALTER TABLE `mdl01_stats_user_monthly` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_stats_user_monthly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_stats_user_weekly`
--

DROP TABLE IF EXISTS `mdl01_stats_user_weekly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_stats_user_weekly` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `roleid` bigint(10) NOT NULL DEFAULT '0',
  `timeend` bigint(10) NOT NULL DEFAULT '0',
  `statsreads` bigint(10) NOT NULL DEFAULT '0',
  `statswrites` bigint(10) NOT NULL DEFAULT '0',
  `stattype` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl01_statuserweek_cou_ix` (`courseid`),
  KEY `mdl01_statuserweek_use_ix` (`userid`),
  KEY `mdl01_statuserweek_rol_ix` (`roleid`),
  KEY `mdl01_statuserweek_tim_ix` (`timeend`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='To accumulate weekly stats per course/user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_stats_user_weekly`
--

LOCK TABLES `mdl01_stats_user_weekly` WRITE;
/*!40000 ALTER TABLE `mdl01_stats_user_weekly` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_stats_user_weekly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_stats_weekly`
--

DROP TABLE IF EXISTS `mdl01_stats_weekly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_stats_weekly` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `timeend` bigint(10) NOT NULL DEFAULT '0',
  `roleid` bigint(10) NOT NULL DEFAULT '0',
  `stattype` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activity',
  `stat1` bigint(10) NOT NULL DEFAULT '0',
  `stat2` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_statweek_cou_ix` (`courseid`),
  KEY `mdl01_statweek_tim_ix` (`timeend`),
  KEY `mdl01_statweek_rol_ix` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='To accumulate weekly stats';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_stats_weekly`
--

LOCK TABLES `mdl01_stats_weekly` WRITE;
/*!40000 ALTER TABLE `mdl01_stats_weekly` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_stats_weekly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_survey`
--

DROP TABLE IF EXISTS `mdl01_survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_survey` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `template` bigint(10) NOT NULL DEFAULT '0',
  `days` mediumint(6) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `questions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `completionsubmit` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_surv_cou_ix` (`course`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Each record is one SURVEY module with its configuration';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_survey`
--

LOCK TABLES `mdl01_survey` WRITE;
/*!40000 ALTER TABLE `mdl01_survey` DISABLE KEYS */;
INSERT INTO `mdl01_survey` VALUES (1,0,0,0,985017600,985017600,'collesaname','collesaintro',0,'25,26,27,28,29,30,43,44',0),(2,0,0,0,985017600,985017600,'collespname','collespintro',0,'31,32,33,34,35,36,43,44',0),(3,0,0,0,985017600,985017600,'collesapname','collesapintro',0,'37,38,39,40,41,42,43,44',0),(4,0,0,0,985017600,985017600,'attlsname','attlsintro',0,'65,67,68',0),(5,0,0,0,985017600,985017600,'ciqname','ciqintro',0,'69,70,71,72,73',0);
/*!40000 ALTER TABLE `mdl01_survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_survey_analysis`
--

DROP TABLE IF EXISTS `mdl01_survey_analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_survey_analysis` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `survey` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `notes` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_survanal_use_ix` (`userid`),
  KEY `mdl01_survanal_sur_ix` (`survey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='text about each survey submission';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_survey_analysis`
--

LOCK TABLES `mdl01_survey_analysis` WRITE;
/*!40000 ALTER TABLE `mdl01_survey_analysis` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_survey_analysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_survey_answers`
--

DROP TABLE IF EXISTS `mdl01_survey_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_survey_answers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `survey` bigint(10) NOT NULL DEFAULT '0',
  `question` bigint(10) NOT NULL DEFAULT '0',
  `time` bigint(10) NOT NULL DEFAULT '0',
  `answer1` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer2` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_survansw_use_ix` (`userid`),
  KEY `mdl01_survansw_sur_ix` (`survey`),
  KEY `mdl01_survansw_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='the answers to each questions filled by the users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_survey_answers`
--

LOCK TABLES `mdl01_survey_answers` WRITE;
/*!40000 ALTER TABLE `mdl01_survey_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_survey_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_survey_questions`
--

DROP TABLE IF EXISTS `mdl01_survey_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_survey_questions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shorttext` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `multi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `intro` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` smallint(3) NOT NULL DEFAULT '0',
  `options` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='the questions conforming one survey';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_survey_questions`
--

LOCK TABLES `mdl01_survey_questions` WRITE;
/*!40000 ALTER TABLE `mdl01_survey_questions` DISABLE KEYS */;
INSERT INTO `mdl01_survey_questions` VALUES (1,'colles1','colles1short','','',1,'scaletimes5'),(2,'colles2','colles2short','','',1,'scaletimes5'),(3,'colles3','colles3short','','',1,'scaletimes5'),(4,'colles4','colles4short','','',1,'scaletimes5'),(5,'colles5','colles5short','','',1,'scaletimes5'),(6,'colles6','colles6short','','',1,'scaletimes5'),(7,'colles7','colles7short','','',1,'scaletimes5'),(8,'colles8','colles8short','','',1,'scaletimes5'),(9,'colles9','colles9short','','',1,'scaletimes5'),(10,'colles10','colles10short','','',1,'scaletimes5'),(11,'colles11','colles11short','','',1,'scaletimes5'),(12,'colles12','colles12short','','',1,'scaletimes5'),(13,'colles13','colles13short','','',1,'scaletimes5'),(14,'colles14','colles14short','','',1,'scaletimes5'),(15,'colles15','colles15short','','',1,'scaletimes5'),(16,'colles16','colles16short','','',1,'scaletimes5'),(17,'colles17','colles17short','','',1,'scaletimes5'),(18,'colles18','colles18short','','',1,'scaletimes5'),(19,'colles19','colles19short','','',1,'scaletimes5'),(20,'colles20','colles20short','','',1,'scaletimes5'),(21,'colles21','colles21short','','',1,'scaletimes5'),(22,'colles22','colles22short','','',1,'scaletimes5'),(23,'colles23','colles23short','','',1,'scaletimes5'),(24,'colles24','colles24short','','',1,'scaletimes5'),(25,'collesm1','collesm1short','1,2,3,4','collesmintro',1,'scaletimes5'),(26,'collesm2','collesm2short','5,6,7,8','collesmintro',1,'scaletimes5'),(27,'collesm3','collesm3short','9,10,11,12','collesmintro',1,'scaletimes5'),(28,'collesm4','collesm4short','13,14,15,16','collesmintro',1,'scaletimes5'),(29,'collesm5','collesm5short','17,18,19,20','collesmintro',1,'scaletimes5'),(30,'collesm6','collesm6short','21,22,23,24','collesmintro',1,'scaletimes5'),(31,'collesm1','collesm1short','1,2,3,4','collesmintro',2,'scaletimes5'),(32,'collesm2','collesm2short','5,6,7,8','collesmintro',2,'scaletimes5'),(33,'collesm3','collesm3short','9,10,11,12','collesmintro',2,'scaletimes5'),(34,'collesm4','collesm4short','13,14,15,16','collesmintro',2,'scaletimes5'),(35,'collesm5','collesm5short','17,18,19,20','collesmintro',2,'scaletimes5'),(36,'collesm6','collesm6short','21,22,23,24','collesmintro',2,'scaletimes5'),(37,'collesm1','collesm1short','1,2,3,4','collesmintro',3,'scaletimes5'),(38,'collesm2','collesm2short','5,6,7,8','collesmintro',3,'scaletimes5'),(39,'collesm3','collesm3short','9,10,11,12','collesmintro',3,'scaletimes5'),(40,'collesm4','collesm4short','13,14,15,16','collesmintro',3,'scaletimes5'),(41,'collesm5','collesm5short','17,18,19,20','collesmintro',3,'scaletimes5'),(42,'collesm6','collesm6short','21,22,23,24','collesmintro',3,'scaletimes5'),(43,'howlong','','','',1,'howlongoptions'),(44,'othercomments','','','',0,NULL),(45,'attls1','attls1short','','',1,'scaleagree5'),(46,'attls2','attls2short','','',1,'scaleagree5'),(47,'attls3','attls3short','','',1,'scaleagree5'),(48,'attls4','attls4short','','',1,'scaleagree5'),(49,'attls5','attls5short','','',1,'scaleagree5'),(50,'attls6','attls6short','','',1,'scaleagree5'),(51,'attls7','attls7short','','',1,'scaleagree5'),(52,'attls8','attls8short','','',1,'scaleagree5'),(53,'attls9','attls9short','','',1,'scaleagree5'),(54,'attls10','attls10short','','',1,'scaleagree5'),(55,'attls11','attls11short','','',1,'scaleagree5'),(56,'attls12','attls12short','','',1,'scaleagree5'),(57,'attls13','attls13short','','',1,'scaleagree5'),(58,'attls14','attls14short','','',1,'scaleagree5'),(59,'attls15','attls15short','','',1,'scaleagree5'),(60,'attls16','attls16short','','',1,'scaleagree5'),(61,'attls17','attls17short','','',1,'scaleagree5'),(62,'attls18','attls18short','','',1,'scaleagree5'),(63,'attls19','attls19short','','',1,'scaleagree5'),(64,'attls20','attls20short','','',1,'scaleagree5'),(65,'attlsm1','attlsm1','45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64','attlsmintro',1,'scaleagree5'),(66,'-','-','-','-',0,'-'),(67,'attlsm2','attlsm2','63,62,59,57,55,49,52,50,48,47','attlsmintro',-1,'scaleagree5'),(68,'attlsm3','attlsm3','46,54,45,51,60,53,56,58,61,64','attlsmintro',-1,'scaleagree5'),(69,'ciq1','ciq1short','','',0,NULL),(70,'ciq2','ciq2short','','',0,NULL),(71,'ciq3','ciq3short','','',0,NULL),(72,'ciq4','ciq4short','','',0,NULL),(73,'ciq5','ciq5short','','',0,NULL);
/*!40000 ALTER TABLE `mdl01_survey_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_tag`
--

DROP TABLE IF EXISTS `mdl01_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_tag` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `tagcollid` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rawname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `isstandard` tinyint(1) NOT NULL DEFAULT '0',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT '0',
  `flag` smallint(4) DEFAULT '0',
  `timemodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_tag_tagnam_uix` (`tagcollid`,`name`),
  KEY `mdl01_tag_tagiss_ix` (`tagcollid`,`isstandard`),
  KEY `mdl01_tag_use_ix` (`userid`),
  KEY `mdl01_tag_tag_ix` (`tagcollid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Tag table - this generic table will replace the old "tags" t';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_tag`
--

LOCK TABLES `mdl01_tag` WRITE;
/*!40000 ALTER TABLE `mdl01_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_tag_area`
--

DROP TABLE IF EXISTS `mdl01_tag_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_tag_area` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `component` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `itemtype` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `tagcollid` bigint(10) NOT NULL,
  `callback` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `callbackfile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `showstandard` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_tagarea_comite_uix` (`component`,`itemtype`),
  KEY `mdl01_tagarea_tag_ix` (`tagcollid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines various tag areas, one area is identified by compone';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_tag_area`
--

LOCK TABLES `mdl01_tag_area` WRITE;
/*!40000 ALTER TABLE `mdl01_tag_area` DISABLE KEYS */;
INSERT INTO `mdl01_tag_area` VALUES (1,'core','user',1,1,'user_get_tagged_users','/user/lib.php',2),(2,'core','course',1,1,'course_get_tagged_courses','/course/lib.php',0),(3,'core_question','question',1,1,NULL,NULL,0),(4,'core','post',1,1,'blog_get_tagged_posts','/blog/lib.php',0),(5,'core','blog_external',1,1,NULL,NULL,0),(6,'core','course_modules',1,1,'course_get_tagged_course_modules','/course/lib.php',0),(7,'mod_book','book_chapters',1,1,'mod_book_get_tagged_chapters','/mod/book/locallib.php',0),(8,'mod_data','data_records',1,1,'mod_data_get_tagged_records','/mod/data/locallib.php',0),(9,'mod_forum','forum_posts',1,1,'mod_forum_get_tagged_posts','/mod/forum/locallib.php',0),(10,'mod_glossary','glossary_entries',1,1,'mod_glossary_get_tagged_entries','/mod/glossary/locallib.php',0),(11,'mod_wiki','wiki_pages',1,1,'mod_wiki_get_tagged_pages','/mod/wiki/locallib.php',0);
/*!40000 ALTER TABLE `mdl01_tag_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_tag_coll`
--

DROP TABLE IF EXISTS `mdl01_tag_coll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_tag_coll` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isdefault` tinyint(2) NOT NULL DEFAULT '0',
  `component` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sortorder` mediumint(5) NOT NULL DEFAULT '0',
  `searchable` tinyint(2) NOT NULL DEFAULT '1',
  `customurl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines different set of tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_tag_coll`
--

LOCK TABLES `mdl01_tag_coll` WRITE;
/*!40000 ALTER TABLE `mdl01_tag_coll` DISABLE KEYS */;
INSERT INTO `mdl01_tag_coll` VALUES (1,NULL,1,NULL,0,1,NULL);
/*!40000 ALTER TABLE `mdl01_tag_coll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_tag_correlation`
--

DROP TABLE IF EXISTS `mdl01_tag_correlation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_tag_correlation` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `tagid` bigint(10) NOT NULL,
  `correlatedtags` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_tagcorr_tag_ix` (`tagid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='The rationale for the ''tag_correlation'' table is performance';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_tag_correlation`
--

LOCK TABLES `mdl01_tag_correlation` WRITE;
/*!40000 ALTER TABLE `mdl01_tag_correlation` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_tag_correlation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_tag_instance`
--

DROP TABLE IF EXISTS `mdl01_tag_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_tag_instance` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `tagid` bigint(10) NOT NULL,
  `component` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `itemtype` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL,
  `contextid` bigint(10) DEFAULT NULL,
  `tiuserid` bigint(10) NOT NULL DEFAULT '0',
  `ordering` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_taginst_comiteitetiu_uix` (`component`,`itemtype`,`itemid`,`tiuserid`,`tagid`),
  KEY `mdl01_taginst_itecomtagcon_ix` (`itemtype`,`component`,`tagid`,`contextid`),
  KEY `mdl01_taginst_tag_ix` (`tagid`),
  KEY `mdl01_taginst_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='tag_instance table holds the information of associations bet';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_tag_instance`
--

LOCK TABLES `mdl01_tag_instance` WRITE;
/*!40000 ALTER TABLE `mdl01_tag_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_tag_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_task_adhoc`
--

DROP TABLE IF EXISTS `mdl01_task_adhoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_task_adhoc` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `component` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `classname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nextruntime` bigint(10) NOT NULL,
  `faildelay` bigint(10) DEFAULT NULL,
  `customdata` longtext COLLATE utf8mb4_unicode_ci,
  `userid` bigint(10) DEFAULT NULL,
  `blocking` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_taskadho_nex_ix` (`nextruntime`),
  KEY `mdl01_taskadho_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='List of adhoc tasks waiting to run.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_task_adhoc`
--

LOCK TABLES `mdl01_task_adhoc` WRITE;
/*!40000 ALTER TABLE `mdl01_task_adhoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_task_adhoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_task_scheduled`
--

DROP TABLE IF EXISTS `mdl01_task_scheduled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_task_scheduled` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `component` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `classname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastruntime` bigint(10) DEFAULT NULL,
  `nextruntime` bigint(10) DEFAULT NULL,
  `blocking` tinyint(2) NOT NULL DEFAULT '0',
  `minute` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hour` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `day` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `month` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dayofweek` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `faildelay` bigint(10) DEFAULT NULL,
  `customised` tinyint(2) NOT NULL DEFAULT '0',
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_tasksche_cla_uix` (`classname`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='List of scheduled tasks to be run by cron.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_task_scheduled`
--

LOCK TABLES `mdl01_task_scheduled` WRITE;
/*!40000 ALTER TABLE `mdl01_task_scheduled` DISABLE KEYS */;
INSERT INTO `mdl01_task_scheduled` VALUES (1,'moodle','\\core\\task\\session_cleanup_task',0,1525171740,0,'*','*','*','*','*',0,0,0),(2,'moodle','\\core\\task\\delete_unconfirmed_users_task',0,1525172400,0,'0','*','*','*','*',0,0,0),(3,'moodle','\\core\\task\\delete_incomplete_users_task',0,1525172700,0,'5','*','*','*','*',0,0,0),(4,'moodle','\\core\\task\\backup_cleanup_task',0,1525173000,0,'10','*','*','*','*',0,0,0),(5,'moodle','\\core\\task\\tag_cron_task',0,1525230600,0,'10','3','*','*','*',0,0,0),(6,'moodle','\\core\\task\\context_cleanup_task',0,1525173900,0,'25','*','*','*','*',0,0,0),(7,'moodle','\\core\\task\\cache_cleanup_task',0,1525174200,0,'30','*','*','*','*',0,0,0),(8,'moodle','\\core\\task\\messaging_cleanup_task',0,1525174500,0,'35','*','*','*','*',0,0,0),(9,'moodle','\\core\\task\\send_new_user_passwords_task',0,1525171740,0,'*','*','*','*','*',0,0,0),(10,'moodle','\\core\\task\\send_failed_login_notifications_task',0,1525171740,0,'*','*','*','*','*',0,0,0),(11,'moodle','\\core\\task\\create_contexts_task',0,1525219200,1,'0','0','*','*','*',0,0,0),(12,'moodle','\\core\\task\\legacy_plugin_cron_task',0,1525171740,0,'*','*','*','*','*',0,0,0),(13,'moodle','\\core\\task\\grade_cron_task',0,1525171740,0,'*','*','*','*','*',0,0,0),(14,'moodle','\\core\\task\\events_cron_task',0,1525171740,0,'*','*','*','*','*',0,0,0),(15,'moodle','\\core\\task\\completion_regular_task',0,1525171740,0,'*','*','*','*','*',0,0,0),(16,'moodle','\\core\\task\\completion_daily_task',0,1525237560,0,'6','5','*','*','*',0,0,0),(17,'moodle','\\core\\task\\portfolio_cron_task',0,1525171740,0,'*','*','*','*','*',0,0,0),(18,'moodle','\\core\\task\\plagiarism_cron_task',0,1525171740,0,'*','*','*','*','*',0,0,0),(19,'moodle','\\core\\task\\calendar_cron_task',0,1525171740,0,'*','*','*','*','*',0,0,0),(20,'moodle','\\core\\task\\blog_cron_task',0,1525171740,0,'*','*','*','*','*',0,0,0),(21,'moodle','\\core\\task\\question_cron_task',0,1525171740,0,'*','*','*','*','*',0,0,0),(22,'moodle','\\core\\task\\registration_cron_task',0,1525371000,0,'10','18','*','*','4',0,0,0),(23,'moodle','\\core\\task\\check_for_updates_task',0,1525176000,0,'0','*/2','*','*','*',0,0,0),(24,'moodle','\\core\\task\\cache_cron_task',0,1525171800,0,'50','*','*','*','*',0,0,0),(25,'moodle','\\core\\task\\automated_backup_task',0,1525171800,0,'50','*','*','*','*',0,0,0),(26,'moodle','\\core\\task\\badges_cron_task',0,1525171800,0,'*/5','*','*','*','*',0,0,0),(27,'moodle','\\core\\task\\file_temp_cleanup_task',0,1525179300,0,'55','*/6','*','*','*',0,0,0),(28,'moodle','\\core\\task\\file_trash_cleanup_task',0,1525179300,0,'55','*/6','*','*','*',0,0,0),(29,'moodle','\\core\\task\\search_index_task',0,1525172400,0,'*/30','*','*','*','*',0,0,0),(30,'moodle','\\core\\task\\search_optimize_task',0,1525176900,0,'15','*/12','*','*','*',0,0,0),(31,'moodle','\\core\\task\\stats_cron_task',0,1525219200,0,'0','0','*','*','*',0,0,0),(32,'moodle','\\core\\task\\password_reset_cleanup_task',0,1525176000,0,'0','*/6','*','*','*',0,0,0),(33,'moodle','\\core\\task\\complete_plans_task',0,1525172880,0,'8','*','*','*','*',0,0,0),(34,'moodle','\\core\\task\\sync_plans_from_template_cohorts_task',0,1525173420,0,'17','*','*','*','*',0,0,0),(35,'moodle','\\core_files\\task\\conversion_cleanup_task',0,1525226460,0,'1','2','*','*','*',0,0,0),(36,'moodle','\\core\\oauth2\\refresh_system_tokens_task',0,1525174200,0,'30','*','*','*','*',0,0,0),(37,'moodle','\\core\\task\\analytics_cleanup_task',0,1525174920,0,'42','*','*','*','*',0,0,0),(38,'mod_forum','\\mod_forum\\task\\cron_task',0,1525171740,0,'*','*','*','*','*',0,0,0),(39,'mod_scorm','\\mod_scorm\\task\\cron_task',0,1525171800,0,'*/5','*','*','*','*',0,0,0),(40,'auth_cas','\\auth_cas\\task\\sync_task',0,1525215600,0,'0','0','*','*','*',0,0,1),(41,'auth_db','\\auth_db\\task\\sync_users',0,1525248180,0,'3','9','*','*','*',0,0,1),(42,'auth_ldap','\\auth_ldap\\task\\sync_roles',0,1525215600,0,'0','0','*','*','*',0,0,1),(43,'auth_ldap','\\auth_ldap\\task\\sync_task',0,1525215600,0,'0','0','*','*','*',0,0,1),(44,'enrol_flatfile','\\enrol_flatfile\\task\\flatfile_sync_task',0,1525173300,0,'15','*','*','*','*',0,0,0),(45,'enrol_imsenterprise','\\enrol_imsenterprise\\task\\cron_task',0,1525173000,0,'10','*','*','*','*',0,0,0),(46,'enrol_ldap','\\enrol_ldap\\task\\sync_enrolments',0,1525205160,0,'6','21','*','*','*',0,0,1),(47,'enrol_lti','\\enrol_lti\\task\\sync_grades',0,1525172400,0,'*/30','*','*','*','*',0,0,0),(48,'enrol_lti','\\enrol_lti\\task\\sync_members',0,1525172400,0,'*/30','*','*','*','*',0,0,0),(49,'editor_atto','\\editor_atto\\task\\autosave_cleanup_task',0,1525226940,0,'9','3','*','*','0',0,0,0),(50,'repository_onedrive','\\repository_onedrive\\remove_temp_access_task',0,1525237800,0,'10','6','*','*','0',0,0,0),(51,'tool_analytics','\\tool_analytics\\task\\train_models',0,1525219200,0,'0','1','*','*','*',0,0,0),(52,'tool_analytics','\\tool_analytics\\task\\predict_models',0,1525255200,0,'0','11','*','*','*',0,0,0),(53,'tool_cohortroles','\\tool_cohortroles\\task\\cohort_role_sync',0,1525173060,0,'11','*','*','*','*',0,0,0),(54,'tool_langimport','\\tool_langimport\\task\\update_langpacks_task',0,1525231320,0,'22','4','*','*','*',0,0,0),(55,'tool_messageinbound','\\tool_messageinbound\\task\\pickup_task',0,1525171740,0,'*','*','*','*','*',0,0,0),(56,'tool_messageinbound','\\tool_messageinbound\\task\\cleanup_task',0,1525222500,0,'55','1','*','*','*',0,0,0),(57,'tool_monitor','\\tool_monitor\\task\\clean_events',0,1525171740,0,'*','*','*','*','*',0,0,0),(58,'tool_monitor','\\tool_monitor\\task\\check_subscriptions',0,1525195200,0,'20','18','*','*','*',0,0,0),(59,'tool_recyclebin','\\tool_recyclebin\\task\\cleanup_course_bin',0,1525172400,0,'*/30','*','*','*','*',0,0,0),(60,'tool_recyclebin','\\tool_recyclebin\\task\\cleanup_category_bin',0,1525172400,0,'*/30','*','*','*','*',0,0,0),(61,'assignfeedback_editpdf','\\assignfeedback_editpdf\\task\\convert_submissions',0,1525172400,0,'*/15','*','*','*','*',0,0,0),(62,'logstore_legacy','\\logstore_legacy\\task\\cleanup_task',0,1525233840,0,'4','5','*','*','*',0,0,0),(63,'logstore_standard','\\logstore_standard\\task\\cleanup_task',0,1525230240,0,'4','4','*','*','*',0,0,0);
/*!40000 ALTER TABLE `mdl01_task_scheduled` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_tool_cohortroles`
--

DROP TABLE IF EXISTS `mdl01_tool_cohortroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_tool_cohortroles` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `cohortid` bigint(10) NOT NULL,
  `roleid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_toolcoho_cohroluse_uix` (`cohortid`,`roleid`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Mapping of users to cohort role assignments.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_tool_cohortroles`
--

LOCK TABLES `mdl01_tool_cohortroles` WRITE;
/*!40000 ALTER TABLE `mdl01_tool_cohortroles` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_tool_cohortroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_tool_customlang`
--

DROP TABLE IF EXISTS `mdl01_tool_customlang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_tool_customlang` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lang` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `componentid` bigint(10) NOT NULL,
  `stringid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `original` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `master` longtext COLLATE utf8mb4_unicode_ci,
  `local` longtext COLLATE utf8mb4_unicode_ci,
  `timemodified` bigint(10) NOT NULL,
  `timecustomized` bigint(10) DEFAULT NULL,
  `outdated` smallint(3) DEFAULT '0',
  `modified` smallint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_toolcust_lancomstr_uix` (`lang`,`componentid`,`stringid`),
  KEY `mdl01_toolcust_com_ix` (`componentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Contains the working checkout of all strings and their custo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_tool_customlang`
--

LOCK TABLES `mdl01_tool_customlang` WRITE;
/*!40000 ALTER TABLE `mdl01_tool_customlang` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_tool_customlang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_tool_customlang_components`
--

DROP TABLE IF EXISTS `mdl01_tool_customlang_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_tool_customlang_components` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Contains the list of all installed plugins that provide thei';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_tool_customlang_components`
--

LOCK TABLES `mdl01_tool_customlang_components` WRITE;
/*!40000 ALTER TABLE `mdl01_tool_customlang_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_tool_customlang_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_tool_monitor_events`
--

DROP TABLE IF EXISTS `mdl01_tool_monitor_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_tool_monitor_events` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL,
  `contextlevel` bigint(10) NOT NULL,
  `contextinstanceid` bigint(10) NOT NULL,
  `link` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `courseid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='A table that keeps a log of events related to subscriptions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_tool_monitor_events`
--

LOCK TABLES `mdl01_tool_monitor_events` WRITE;
/*!40000 ALTER TABLE `mdl01_tool_monitor_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_tool_monitor_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_tool_monitor_history`
--

DROP TABLE IF EXISTS `mdl01_tool_monitor_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_tool_monitor_history` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `sid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `timesent` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_toolmonihist_siduset_uix` (`sid`,`userid`,`timesent`),
  KEY `mdl01_toolmonihist_sid_ix` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Table to store history of message notifications sent';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_tool_monitor_history`
--

LOCK TABLES `mdl01_tool_monitor_history` WRITE;
/*!40000 ALTER TABLE `mdl01_tool_monitor_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_tool_monitor_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_tool_monitor_rules`
--

DROP TABLE IF EXISTS `mdl01_tool_monitor_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_tool_monitor_rules` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `descriptionformat` tinyint(1) NOT NULL,
  `name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userid` bigint(10) NOT NULL,
  `courseid` bigint(10) NOT NULL,
  `plugin` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `eventname` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `template` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `templateformat` tinyint(1) NOT NULL,
  `frequency` smallint(4) NOT NULL,
  `timewindow` mediumint(5) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_toolmonirule_couuse_ix` (`courseid`,`userid`),
  KEY `mdl01_toolmonirule_eve_ix` (`eventname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Table to store rules';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_tool_monitor_rules`
--

LOCK TABLES `mdl01_tool_monitor_rules` WRITE;
/*!40000 ALTER TABLE `mdl01_tool_monitor_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_tool_monitor_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_tool_monitor_subscriptions`
--

DROP TABLE IF EXISTS `mdl01_tool_monitor_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_tool_monitor_subscriptions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `ruleid` bigint(10) NOT NULL,
  `cmid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `lastnotificationsent` bigint(10) NOT NULL DEFAULT '0',
  `inactivedate` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_toolmonisubs_couuse_ix` (`courseid`,`userid`),
  KEY `mdl01_toolmonisubs_rul_ix` (`ruleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Table to store user subscriptions to various rules';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_tool_monitor_subscriptions`
--

LOCK TABLES `mdl01_tool_monitor_subscriptions` WRITE;
/*!40000 ALTER TABLE `mdl01_tool_monitor_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_tool_monitor_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_tool_recyclebin_category`
--

DROP TABLE IF EXISTS `mdl01_tool_recyclebin_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_tool_recyclebin_category` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `categoryid` bigint(10) NOT NULL,
  `shortname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_toolrecycate_tim_ix` (`timecreated`),
  KEY `mdl01_toolrecycate_cat_ix` (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='A list of items in the category recycle bin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_tool_recyclebin_category`
--

LOCK TABLES `mdl01_tool_recyclebin_category` WRITE;
/*!40000 ALTER TABLE `mdl01_tool_recyclebin_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_tool_recyclebin_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_tool_recyclebin_course`
--

DROP TABLE IF EXISTS `mdl01_tool_recyclebin_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_tool_recyclebin_course` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `section` bigint(10) NOT NULL,
  `module` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_toolrecycour_tim_ix` (`timecreated`),
  KEY `mdl01_toolrecycour_cou_ix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='A list of items in the course recycle bin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_tool_recyclebin_course`
--

LOCK TABLES `mdl01_tool_recyclebin_course` WRITE;
/*!40000 ALTER TABLE `mdl01_tool_recyclebin_course` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_tool_recyclebin_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_tool_usertours_steps`
--

DROP TABLE IF EXISTS `mdl01_tool_usertours_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_tool_usertours_steps` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `tourid` bigint(10) NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `targettype` tinyint(2) NOT NULL,
  `targetvalue` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `configdata` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_tooluserstep_tousor_ix` (`tourid`,`sortorder`),
  KEY `mdl01_tooluserstep_tou_ix` (`tourid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Steps in an tour';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_tool_usertours_steps`
--

LOCK TABLES `mdl01_tool_usertours_steps` WRITE;
/*!40000 ALTER TABLE `mdl01_tool_usertours_steps` DISABLE KEYS */;
INSERT INTO `mdl01_tool_usertours_steps` VALUES (1,1,'tour1_title_welcome,tool_usertours','tour1_content_welcome,tool_usertours',2,'',0,'{}'),(2,1,'tour1_title_navigation,tool_usertours','tour1_content_navigation,tool_usertours',0,'[data-region=\"drawer-toggle\"] button[data-action=\"toggle-drawer\"]',1,'{}'),(3,1,'tour1_title_customisation,tool_usertours','tour1_content_customisation,tool_usertours',0,'body:not(.editing) #page-header .card-block',2,'{\"placement\":\"bottom\"}'),(4,1,'tour1_title_blockregion,tool_usertours','tour1_content_blockregion,tool_usertours',0,'body.editing [data-region=\"blocks-column\"]',3,'{}'),(5,1,'tour1_title_addingblocks,tool_usertours','tour1_content_addingblocks,tool_usertours',0,'body.editing [data-region=\"blocks-column\"]',4,'{\"placement\":\"bottom\"}'),(6,1,'tour1_title_end,tool_usertours','tour1_content_end,tool_usertours',2,'',5,'{}'),(7,2,'tour2_title_welcome,tool_usertours','tour2_content_welcome,tool_usertours',2,'',0,'{}'),(8,2,'tour2_title_customisation,tool_usertours','tour2_content_customisation,tool_usertours',0,'body:not(.editing) #page-header .card-block',1,'{}'),(9,2,'tour2_title_navigation,tool_usertours','tour2_content_navigation,tool_usertours',0,'[data-region=\"drawer-toggle\"] button[data-action=\"toggle-drawer\"]',2,'{}'),(10,2,'tour2_title_opendrawer,tool_usertours','tour2_content_opendrawer,tool_usertours',0,'body:not(.drawer-open-left) [data-region=\"drawer-toggle\"] button[data-action=\"toggle-drawer\"]',3,'{}'),(11,2,'tour2_title_participants,tool_usertours','tour2_content_participants,tool_usertours',0,'body.drawer-open-left [data-region=\"drawer\"] [data-key=\"participants\"]',4,'{\"placement\":\"bottom\",\"backdrop\":\"0\"}'),(12,2,'tour2_title_addblock,tool_usertours','tour2_content_addblock,tool_usertours',0,'body.drawer-open-left:not(.editing) [data-region=\"drawer\"]',5,'{\"placement\":\"right\",\"orphan\":\"0\",\"backdrop\":\"0\",\"reflex\":\"0\"}'),(13,2,'tour2_title_addingblocks,tool_usertours','tour2_content_addingblocks,tool_usertours',0,'body.drawer-open-left.editing [data-region=\"drawer\"] [data-key=\"addblock\"]',6,'{\"backdrop\":\"0\",\"placement\":\"top\"}'),(14,2,'tour2_title_end,tool_usertours','tour2_content_end,tool_usertours',2,'',7,'{}');
/*!40000 ALTER TABLE `mdl01_tool_usertours_steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_tool_usertours_tours`
--

DROP TABLE IF EXISTS `mdl01_tool_usertours_tours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_tool_usertours_tours` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `pathmatch` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `configdata` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='List of tours';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_tool_usertours_tours`
--

LOCK TABLES `mdl01_tool_usertours_tours` WRITE;
/*!40000 ALTER TABLE `mdl01_tool_usertours_tours` DISABLE KEYS */;
INSERT INTO `mdl01_tool_usertours_tours` VALUES (1,'Boost - administrator','A tour of some new features in the Boost theme, for administrators','FRONTPAGE',1,0,'{\"placement\":\"bottom\",\"orphan\":\"0\",\"backdrop\":\"1\",\"reflex\":\"0\",\"filtervalues\":{\"role\":[\"-1\"],\"theme\":[\"boost\"]},\"majorupdatetime\":1479366244,\"default_tour\":true,\"filename\":\"boost_administrator.json\",\"version\":1,\"shipped_tour\":true,\"shipped_filename\":\"boost_administrator.json\",\"shipped_version\":1}'),(2,'Boost - course view','A tour for introducing administrators and teachers to courses in the Boost theme','/course/view.php%',1,1,'{\"placement\":\"bottom\",\"orphan\":\"0\",\"backdrop\":\"1\",\"reflex\":\"0\",\"filtervalues\":{\"role\":[\"-1\",\"editingteacher\"],\"theme\":[\"boost\"]},\"majorupdatetime\":1480050104,\"shipped_tour\":true,\"shipped_filename\":\"boost_course_view.json\",\"shipped_version\":1}');
/*!40000 ALTER TABLE `mdl01_tool_usertours_tours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_upgrade_log`
--

DROP TABLE IF EXISTS `mdl01_upgrade_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_upgrade_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `type` bigint(10) NOT NULL,
  `plugin` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `targetversion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `details` longtext COLLATE utf8mb4_unicode_ci,
  `backtrace` longtext COLLATE utf8mb4_unicode_ci,
  `userid` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_upgrlog_tim_ix` (`timemodified`),
  KEY `mdl01_upgrlog_typtim_ix` (`type`,`timemodified`),
  KEY `mdl01_upgrlog_use_ix` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=1170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Upgrade logging';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_upgrade_log`
--

LOCK TABLES `mdl01_upgrade_log` WRITE;
/*!40000 ALTER TABLE `mdl01_upgrade_log` DISABLE KEYS */;
INSERT INTO `mdl01_upgrade_log` VALUES (1,0,'core','2017111302','2017111302','Upgrade savepoint reached',NULL,'',0,1525171683),(2,0,'core','2017111302','2017111302','Core installed',NULL,'',0,1525171691),(3,0,'antivirus_clamav',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171691),(4,0,'antivirus_clamav','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171691),(5,0,'antivirus_clamav','2017111300','2017111300','Plugin installed',NULL,'',0,1525171691),(6,0,'availability_completion',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171691),(7,0,'availability_completion','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171691),(8,0,'availability_completion','2017111300','2017111300','Plugin installed',NULL,'',0,1525171691),(9,0,'availability_date',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171692),(10,0,'availability_date','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171692),(11,0,'availability_date','2017111300','2017111300','Plugin installed',NULL,'',0,1525171692),(12,0,'availability_grade',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171692),(13,0,'availability_grade','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171692),(14,0,'availability_grade','2017111300','2017111300','Plugin installed',NULL,'',0,1525171692),(15,0,'availability_group',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171692),(16,0,'availability_group','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171692),(17,0,'availability_group','2017111300','2017111300','Plugin installed',NULL,'',0,1525171692),(18,0,'availability_grouping',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171692),(19,0,'availability_grouping','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171692),(20,0,'availability_grouping','2017111300','2017111300','Plugin installed',NULL,'',0,1525171692),(21,0,'availability_profile',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171692),(22,0,'availability_profile','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171692),(23,0,'availability_profile','2017111300','2017111300','Plugin installed',NULL,'',0,1525171692),(24,0,'qtype_calculated',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171692),(25,0,'qtype_calculated','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171692),(26,0,'qtype_calculated','2017111300','2017111300','Plugin installed',NULL,'',0,1525171692),(27,0,'qtype_calculatedmulti',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171692),(28,0,'qtype_calculatedmulti','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171692),(29,0,'qtype_calculatedmulti','2017111300','2017111300','Plugin installed',NULL,'',0,1525171692),(30,0,'qtype_calculatedsimple',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171692),(31,0,'qtype_calculatedsimple','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171692),(32,0,'qtype_calculatedsimple','2017111300','2017111300','Plugin installed',NULL,'',0,1525171692),(33,0,'qtype_ddimageortext',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171692),(34,0,'qtype_ddimageortext','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171692),(35,0,'qtype_ddimageortext','2017111300','2017111300','Plugin installed',NULL,'',0,1525171692),(36,0,'qtype_ddmarker',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171692),(37,0,'qtype_ddmarker','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171692),(38,0,'qtype_ddmarker','2017111300','2017111300','Plugin installed',NULL,'',0,1525171692),(39,0,'qtype_ddwtos',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171692),(40,0,'qtype_ddwtos','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171692),(41,0,'qtype_ddwtos','2017111300','2017111300','Plugin installed',NULL,'',0,1525171692),(42,0,'qtype_description',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171692),(43,0,'qtype_description','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171692),(44,0,'qtype_description','2017111300','2017111300','Plugin installed',NULL,'',0,1525171692),(45,0,'qtype_essay',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171692),(46,0,'qtype_essay','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171692),(47,0,'qtype_essay','2017111300','2017111300','Plugin installed',NULL,'',0,1525171692),(48,0,'qtype_gapselect',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171692),(49,0,'qtype_gapselect','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171692),(50,0,'qtype_gapselect','2017111300','2017111300','Plugin installed',NULL,'',0,1525171692),(51,0,'qtype_match',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171692),(52,0,'qtype_match','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171692),(53,0,'qtype_match','2017111300','2017111300','Plugin installed',NULL,'',0,1525171692),(54,0,'qtype_missingtype',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171692),(55,0,'qtype_missingtype','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171692),(56,0,'qtype_missingtype','2017111300','2017111300','Plugin installed',NULL,'',0,1525171692),(57,0,'qtype_multianswer',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171692),(58,0,'qtype_multianswer','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171692),(59,0,'qtype_multianswer','2017111300','2017111300','Plugin installed',NULL,'',0,1525171692),(60,0,'qtype_multichoice',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171692),(61,0,'qtype_multichoice','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171692),(62,0,'qtype_multichoice','2017111300','2017111300','Plugin installed',NULL,'',0,1525171692),(63,0,'qtype_numerical',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171692),(64,0,'qtype_numerical','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171693),(65,0,'qtype_numerical','2017111300','2017111300','Plugin installed',NULL,'',0,1525171693),(66,0,'qtype_random',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171693),(67,0,'qtype_random','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171693),(68,0,'qtype_random','2017111300','2017111300','Plugin installed',NULL,'',0,1525171693),(69,0,'qtype_randomsamatch',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171693),(70,0,'qtype_randomsamatch','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171693),(71,0,'qtype_randomsamatch','2017111300','2017111300','Plugin installed',NULL,'',0,1525171693),(72,0,'qtype_shortanswer',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171693),(73,0,'qtype_shortanswer','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171693),(74,0,'qtype_shortanswer','2017111300','2017111300','Plugin installed',NULL,'',0,1525171693),(75,0,'qtype_truefalse',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171693),(76,0,'qtype_truefalse','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171693),(77,0,'qtype_truefalse','2017111300','2017111300','Plugin installed',NULL,'',0,1525171693),(78,0,'mod_assign',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171693),(79,0,'mod_assign','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171693),(80,0,'mod_assign','2017111300','2017111300','Plugin installed',NULL,'',0,1525171693),(81,0,'mod_assignment',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171693),(82,0,'mod_assignment','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171693),(83,0,'mod_assignment','2017111300','2017111300','Plugin installed',NULL,'',0,1525171694),(84,0,'mod_book',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171694),(85,0,'mod_book','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171694),(86,0,'mod_book','2017111300','2017111300','Plugin installed',NULL,'',0,1525171694),(87,0,'mod_chat',NULL,'2017111301','Starting plugin installation',NULL,'',0,1525171694),(88,0,'mod_chat','2017111301','2017111301','Upgrade savepoint reached',NULL,'',0,1525171694),(89,0,'mod_chat','2017111301','2017111301','Plugin installed',NULL,'',0,1525171694),(90,0,'mod_choice',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171694),(91,0,'mod_choice','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171694),(92,0,'mod_choice','2017111300','2017111300','Plugin installed',NULL,'',0,1525171694),(93,0,'mod_data',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171694),(94,0,'mod_data','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171694),(95,0,'mod_data','2017111300','2017111300','Plugin installed',NULL,'',0,1525171695),(96,0,'mod_feedback',NULL,'2017111301','Starting plugin installation',NULL,'',0,1525171695),(97,0,'mod_feedback','2017111301','2017111301','Upgrade savepoint reached',NULL,'',0,1525171695),(98,0,'mod_feedback','2017111301','2017111301','Plugin installed',NULL,'',0,1525171695),(99,0,'mod_folder',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171695),(100,0,'mod_folder','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171695),(101,0,'mod_folder','2017111300','2017111300','Plugin installed',NULL,'',0,1525171695),(102,0,'mod_forum',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171695),(103,0,'mod_forum','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171696),(104,0,'mod_forum','2017111300','2017111300','Plugin installed',NULL,'',0,1525171696),(105,0,'mod_glossary',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171696),(106,0,'mod_glossary','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171696),(107,0,'mod_glossary','2017111300','2017111300','Plugin installed',NULL,'',0,1525171697),(108,0,'mod_imscp',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171697),(109,0,'mod_imscp','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171697),(110,0,'mod_imscp','2017111300','2017111300','Plugin installed',NULL,'',0,1525171697),(111,0,'mod_label',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171697),(112,0,'mod_label','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171697),(113,0,'mod_label','2017111300','2017111300','Plugin installed',NULL,'',0,1525171697),(114,0,'mod_lesson',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171697),(115,0,'mod_lesson','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171697),(116,0,'mod_lesson','2017111300','2017111300','Plugin installed',NULL,'',0,1525171697),(117,0,'mod_lti',NULL,'2017111301','Starting plugin installation',NULL,'',0,1525171697),(118,0,'mod_lti','2017111301','2017111301','Upgrade savepoint reached',NULL,'',0,1525171697),(119,0,'mod_lti','2017111301','2017111301','Plugin installed',NULL,'',0,1525171697),(120,0,'mod_page',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171697),(121,0,'mod_page','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171697),(122,0,'mod_page','2017111300','2017111300','Plugin installed',NULL,'',0,1525171697),(123,0,'mod_quiz',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171697),(124,0,'mod_quiz','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171698),(125,0,'mod_quiz','2017111300','2017111300','Plugin installed',NULL,'',0,1525171698),(126,0,'mod_resource',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171698),(127,0,'mod_resource','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171698),(128,0,'mod_resource','2017111300','2017111300','Plugin installed',NULL,'',0,1525171698),(129,0,'mod_scorm',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171698),(130,0,'mod_scorm','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171698),(131,0,'mod_scorm','2017111300','2017111300','Plugin installed',NULL,'',0,1525171698),(132,0,'mod_survey',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171698),(133,0,'mod_survey','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171698),(134,0,'mod_survey','2017111300','2017111300','Plugin installed',NULL,'',0,1525171699),(135,0,'mod_url',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171699),(136,0,'mod_url','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171699),(137,0,'mod_url','2017111300','2017111300','Plugin installed',NULL,'',0,1525171699),(138,0,'mod_wiki',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171699),(139,0,'mod_wiki','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171699),(140,0,'mod_wiki','2017111300','2017111300','Plugin installed',NULL,'',0,1525171700),(141,0,'mod_workshop',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171700),(142,0,'mod_workshop','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171700),(143,0,'mod_workshop','2017111300','2017111300','Plugin installed',NULL,'',0,1525171700),(144,0,'auth_cas',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171700),(145,0,'auth_cas','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171700),(146,0,'auth_cas','2017111300','2017111300','Plugin installed',NULL,'',0,1525171700),(147,0,'auth_db',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171700),(148,0,'auth_db','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171700),(149,0,'auth_db','2017111300','2017111300','Plugin installed',NULL,'',0,1525171700),(150,0,'auth_email',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171700),(151,0,'auth_email','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171700),(152,0,'auth_email','2017111300','2017111300','Plugin installed',NULL,'',0,1525171700),(153,0,'auth_ldap',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171700),(154,0,'auth_ldap','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171700),(155,0,'auth_ldap','2017111300','2017111300','Plugin installed',NULL,'',0,1525171700),(156,0,'auth_lti',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171700),(157,0,'auth_lti','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171700),(158,0,'auth_lti','2017111300','2017111300','Plugin installed',NULL,'',0,1525171700),(159,0,'auth_manual',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171701),(160,0,'auth_manual','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171701),(161,0,'auth_manual','2017111300','2017111300','Plugin installed',NULL,'',0,1525171701),(162,0,'auth_mnet',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171701),(163,0,'auth_mnet','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171701),(164,0,'auth_mnet','2017111300','2017111300','Plugin installed',NULL,'',0,1525171701),(165,0,'auth_nologin',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171701),(166,0,'auth_nologin','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171701),(167,0,'auth_nologin','2017111300','2017111300','Plugin installed',NULL,'',0,1525171701),(168,0,'auth_none',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171701),(169,0,'auth_none','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171701),(170,0,'auth_none','2017111300','2017111300','Plugin installed',NULL,'',0,1525171701),(171,0,'auth_oauth2',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171701),(172,0,'auth_oauth2','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171701),(173,0,'auth_oauth2','2017111300','2017111300','Plugin installed',NULL,'',0,1525171701),(174,0,'auth_shibboleth',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171701),(175,0,'auth_shibboleth','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171701),(176,0,'auth_shibboleth','2017111300','2017111300','Plugin installed',NULL,'',0,1525171701),(177,0,'auth_webservice',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171701),(178,0,'auth_webservice','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171701),(179,0,'auth_webservice','2017111300','2017111300','Plugin installed',NULL,'',0,1525171701),(180,0,'calendartype_gregorian',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171701),(181,0,'calendartype_gregorian','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171701),(182,0,'calendartype_gregorian','2017111300','2017111300','Plugin installed',NULL,'',0,1525171701),(183,0,'enrol_category',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171701),(184,0,'enrol_category','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171701),(185,0,'enrol_category','2017111300','2017111300','Plugin installed',NULL,'',0,1525171701),(186,0,'enrol_cohort',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171701),(187,0,'enrol_cohort','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171701),(188,0,'enrol_cohort','2017111300','2017111300','Plugin installed',NULL,'',0,1525171701),(189,0,'enrol_database',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171701),(190,0,'enrol_database','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171701),(191,0,'enrol_database','2017111300','2017111300','Plugin installed',NULL,'',0,1525171701),(192,0,'enrol_flatfile',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171701),(193,0,'enrol_flatfile','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171701),(194,0,'enrol_flatfile','2017111300','2017111300','Plugin installed',NULL,'',0,1525171701),(195,0,'enrol_guest',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171701),(196,0,'enrol_guest','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171701),(197,0,'enrol_guest','2017111300','2017111300','Plugin installed',NULL,'',0,1525171701),(198,0,'enrol_imsenterprise',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171701),(199,0,'enrol_imsenterprise','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171701),(200,0,'enrol_imsenterprise','2017111300','2017111300','Plugin installed',NULL,'',0,1525171701),(201,0,'enrol_ldap',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171701),(202,0,'enrol_ldap','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171701),(203,0,'enrol_ldap','2017111300','2017111300','Plugin installed',NULL,'',0,1525171702),(204,0,'enrol_lti',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171702),(205,0,'enrol_lti','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171702),(206,0,'enrol_lti','2017111300','2017111300','Plugin installed',NULL,'',0,1525171702),(207,0,'enrol_manual',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171702),(208,0,'enrol_manual','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171702),(209,0,'enrol_manual','2017111300','2017111300','Plugin installed',NULL,'',0,1525171702),(210,0,'enrol_meta',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171702),(211,0,'enrol_meta','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171702),(212,0,'enrol_meta','2017111300','2017111300','Plugin installed',NULL,'',0,1525171702),(213,0,'enrol_mnet',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171702),(214,0,'enrol_mnet','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171702),(215,0,'enrol_mnet','2017111300','2017111300','Plugin installed',NULL,'',0,1525171702),(216,0,'enrol_paypal',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171702),(217,0,'enrol_paypal','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171702),(218,0,'enrol_paypal','2017111300','2017111300','Plugin installed',NULL,'',0,1525171702),(219,0,'enrol_self',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171702),(220,0,'enrol_self','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171702),(221,0,'enrol_self','2017111300','2017111300','Plugin installed',NULL,'',0,1525171702),(222,0,'message_airnotifier',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171702),(223,0,'message_airnotifier','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171703),(224,0,'message_airnotifier','2017111300','2017111300','Plugin installed',NULL,'',0,1525171703),(225,0,'message_email',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171703),(226,0,'message_email','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171703),(227,0,'message_email','2017111300','2017111300','Plugin installed',NULL,'',0,1525171703),(228,0,'message_jabber',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171703),(229,0,'message_jabber','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171703),(230,0,'message_jabber','2017111300','2017111300','Plugin installed',NULL,'',0,1525171703),(231,0,'message_popup',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171703),(232,0,'message_popup','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171703),(233,0,'message_popup','2017111300','2017111300','Plugin installed',NULL,'',0,1525171703),(234,0,'block_activity_modules',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171703),(235,0,'block_activity_modules','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171703),(236,0,'block_activity_modules','2017111300','2017111300','Plugin installed',NULL,'',0,1525171703),(237,0,'block_activity_results',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171703),(238,0,'block_activity_results','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171703),(239,0,'block_activity_results','2017111300','2017111300','Plugin installed',NULL,'',0,1525171703),(240,0,'block_admin_bookmarks',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171704),(241,0,'block_admin_bookmarks','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171704),(242,0,'block_admin_bookmarks','2017111300','2017111300','Plugin installed',NULL,'',0,1525171704),(243,0,'block_badges',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171704),(244,0,'block_badges','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171704),(245,0,'block_badges','2017111300','2017111300','Plugin installed',NULL,'',0,1525171704),(246,0,'block_blog_menu',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171704),(247,0,'block_blog_menu','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171704),(248,0,'block_blog_menu','2017111300','2017111300','Plugin installed',NULL,'',0,1525171704),(249,0,'block_blog_recent',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171704),(250,0,'block_blog_recent','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171704),(251,0,'block_blog_recent','2017111300','2017111300','Plugin installed',NULL,'',0,1525171704),(252,0,'block_blog_tags',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171704),(253,0,'block_blog_tags','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171704),(254,0,'block_blog_tags','2017111300','2017111300','Plugin installed',NULL,'',0,1525171704),(255,0,'block_calendar_month',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171704),(256,0,'block_calendar_month','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171704),(257,0,'block_calendar_month','2017111300','2017111300','Plugin installed',NULL,'',0,1525171704),(258,0,'block_calendar_upcoming',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171704),(259,0,'block_calendar_upcoming','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171704),(260,0,'block_calendar_upcoming','2017111300','2017111300','Plugin installed',NULL,'',0,1525171704),(261,0,'block_comments',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171704),(262,0,'block_comments','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171704),(263,0,'block_comments','2017111300','2017111300','Plugin installed',NULL,'',0,1525171704),(264,0,'block_community',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171704),(265,0,'block_community','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171704),(266,0,'block_community','2017111300','2017111300','Plugin installed',NULL,'',0,1525171704),(267,0,'block_completionstatus',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171704),(268,0,'block_completionstatus','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171704),(269,0,'block_completionstatus','2017111300','2017111300','Plugin installed',NULL,'',0,1525171704),(270,0,'block_course_list',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171704),(271,0,'block_course_list','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171704),(272,0,'block_course_list','2017111300','2017111300','Plugin installed',NULL,'',0,1525171704),(273,0,'block_course_summary',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171704),(274,0,'block_course_summary','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171704),(275,0,'block_course_summary','2017111300','2017111300','Plugin installed',NULL,'',0,1525171704),(276,0,'block_feedback',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171705),(277,0,'block_feedback','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171705),(278,0,'block_feedback','2017111300','2017111300','Plugin installed',NULL,'',0,1525171705),(279,0,'block_globalsearch',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171705),(280,0,'block_globalsearch','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171705),(281,0,'block_globalsearch','2017111300','2017111300','Plugin installed',NULL,'',0,1525171705),(282,0,'block_glossary_random',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171705),(283,0,'block_glossary_random','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171705),(284,0,'block_glossary_random','2017111300','2017111300','Plugin installed',NULL,'',0,1525171705),(285,0,'block_html',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171705),(286,0,'block_html','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171705),(287,0,'block_html','2017111300','2017111300','Plugin installed',NULL,'',0,1525171705),(288,0,'block_login',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171705),(289,0,'block_login','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171705),(290,0,'block_login','2017111300','2017111300','Plugin installed',NULL,'',0,1525171705),(291,0,'block_lp',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171705),(292,0,'block_lp','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171705),(293,0,'block_lp','2017111300','2017111300','Plugin installed',NULL,'',0,1525171705),(294,0,'block_mentees',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171705),(295,0,'block_mentees','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171705),(296,0,'block_mentees','2017111300','2017111300','Plugin installed',NULL,'',0,1525171705),(297,0,'block_mnet_hosts',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171705),(298,0,'block_mnet_hosts','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171705),(299,0,'block_mnet_hosts','2017111300','2017111300','Plugin installed',NULL,'',0,1525171705),(300,0,'block_myoverview',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171705),(301,0,'block_myoverview','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171705),(302,0,'block_myoverview','2017111300','2017111300','Plugin installed',NULL,'',0,1525171705),(303,0,'block_myprofile',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171705),(304,0,'block_myprofile','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171705),(305,0,'block_myprofile','2017111300','2017111300','Plugin installed',NULL,'',0,1525171705),(306,0,'block_navigation',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171705),(307,0,'block_navigation','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171705),(308,0,'block_navigation','2017111300','2017111300','Plugin installed',NULL,'',0,1525171705),(309,0,'block_news_items',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171705),(310,0,'block_news_items','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171705),(311,0,'block_news_items','2017111300','2017111300','Plugin installed',NULL,'',0,1525171706),(312,0,'block_online_users',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171706),(313,0,'block_online_users','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171706),(314,0,'block_online_users','2017111300','2017111300','Plugin installed',NULL,'',0,1525171706),(315,0,'block_participants',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171706),(316,0,'block_participants','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171706),(317,0,'block_participants','2017111300','2017111300','Plugin installed',NULL,'',0,1525171706),(318,0,'block_private_files',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171706),(319,0,'block_private_files','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171706),(320,0,'block_private_files','2017111300','2017111300','Plugin installed',NULL,'',0,1525171706),(321,0,'block_quiz_results',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171706),(322,0,'block_quiz_results','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171706),(323,0,'block_quiz_results','2017111300','2017111300','Plugin installed',NULL,'',0,1525171706),(324,0,'block_recent_activity',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171706),(325,0,'block_recent_activity','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171706),(326,0,'block_recent_activity','2017111300','2017111300','Plugin installed',NULL,'',0,1525171706),(327,0,'block_rss_client',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171706),(328,0,'block_rss_client','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171706),(329,0,'block_rss_client','2017111300','2017111300','Plugin installed',NULL,'',0,1525171706),(330,0,'block_search_forums',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171706),(331,0,'block_search_forums','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171706),(332,0,'block_search_forums','2017111300','2017111300','Plugin installed',NULL,'',0,1525171706),(333,0,'block_section_links',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171706),(334,0,'block_section_links','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171706),(335,0,'block_section_links','2017111300','2017111300','Plugin installed',NULL,'',0,1525171706),(336,0,'block_selfcompletion',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171706),(337,0,'block_selfcompletion','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171706),(338,0,'block_selfcompletion','2017111300','2017111300','Plugin installed',NULL,'',0,1525171707),(339,0,'block_settings',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171707),(340,0,'block_settings','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171707),(341,0,'block_settings','2017111300','2017111300','Plugin installed',NULL,'',0,1525171707),(342,0,'block_site_main_menu',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171707),(343,0,'block_site_main_menu','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171707),(344,0,'block_site_main_menu','2017111300','2017111300','Plugin installed',NULL,'',0,1525171707),(345,0,'block_social_activities',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171707),(346,0,'block_social_activities','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171707),(347,0,'block_social_activities','2017111300','2017111300','Plugin installed',NULL,'',0,1525171707),(348,0,'block_tag_flickr',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171707),(349,0,'block_tag_flickr','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171707),(350,0,'block_tag_flickr','2017111300','2017111300','Plugin installed',NULL,'',0,1525171707),(351,0,'block_tag_youtube',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171707),(352,0,'block_tag_youtube','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171707),(353,0,'block_tag_youtube','2017111300','2017111300','Plugin installed',NULL,'',0,1525171707),(354,0,'block_tags',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171707),(355,0,'block_tags','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171707),(356,0,'block_tags','2017111300','2017111300','Plugin installed',NULL,'',0,1525171707),(357,0,'media_html5audio',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171707),(358,0,'media_html5audio','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171707),(359,0,'media_html5audio','2017111300','2017111300','Plugin installed',NULL,'',0,1525171707),(360,0,'media_html5video',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171707),(361,0,'media_html5video','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171707),(362,0,'media_html5video','2017111300','2017111300','Plugin installed',NULL,'',0,1525171707),(363,0,'media_swf',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171707),(364,0,'media_swf','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171707),(365,0,'media_swf','2017111300','2017111300','Plugin installed',NULL,'',0,1525171707),(366,0,'media_videojs',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171707),(367,0,'media_videojs','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171707),(368,0,'media_videojs','2017111300','2017111300','Plugin installed',NULL,'',0,1525171707),(369,0,'media_vimeo',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171707),(370,0,'media_vimeo','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171707),(371,0,'media_vimeo','2017111300','2017111300','Plugin installed',NULL,'',0,1525171707),(372,0,'media_youtube',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171707),(373,0,'media_youtube','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171707),(374,0,'media_youtube','2017111300','2017111300','Plugin installed',NULL,'',0,1525171707),(375,0,'filter_activitynames',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171708),(376,0,'filter_activitynames','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171708),(377,0,'filter_activitynames','2017111300','2017111300','Plugin installed',NULL,'',0,1525171708),(378,0,'filter_algebra',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171708),(379,0,'filter_algebra','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171708),(380,0,'filter_algebra','2017111300','2017111300','Plugin installed',NULL,'',0,1525171708),(381,0,'filter_censor',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171708),(382,0,'filter_censor','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171708),(383,0,'filter_censor','2017111300','2017111300','Plugin installed',NULL,'',0,1525171708),(384,0,'filter_data',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171708),(385,0,'filter_data','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171708),(386,0,'filter_data','2017111300','2017111300','Plugin installed',NULL,'',0,1525171708),(387,0,'filter_emailprotect',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171708),(388,0,'filter_emailprotect','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171708),(389,0,'filter_emailprotect','2017111300','2017111300','Plugin installed',NULL,'',0,1525171708),(390,0,'filter_emoticon',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171708),(391,0,'filter_emoticon','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171708),(392,0,'filter_emoticon','2017111300','2017111300','Plugin installed',NULL,'',0,1525171708),(393,0,'filter_glossary',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171708),(394,0,'filter_glossary','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171708),(395,0,'filter_glossary','2017111300','2017111300','Plugin installed',NULL,'',0,1525171708),(396,0,'filter_mathjaxloader',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171708),(397,0,'filter_mathjaxloader','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171708),(398,0,'filter_mathjaxloader','2017111300','2017111300','Plugin installed',NULL,'',0,1525171708),(399,0,'filter_mediaplugin',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171708),(400,0,'filter_mediaplugin','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171708),(401,0,'filter_mediaplugin','2017111300','2017111300','Plugin installed',NULL,'',0,1525171708),(402,0,'filter_multilang',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171708),(403,0,'filter_multilang','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171708),(404,0,'filter_multilang','2017111300','2017111300','Plugin installed',NULL,'',0,1525171708),(405,0,'filter_tex',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171708),(406,0,'filter_tex','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171708),(407,0,'filter_tex','2017111300','2017111300','Plugin installed',NULL,'',0,1525171708),(408,0,'filter_tidy',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171708),(409,0,'filter_tidy','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171708),(410,0,'filter_tidy','2017111300','2017111300','Plugin installed',NULL,'',0,1525171708),(411,0,'filter_urltolink',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171708),(412,0,'filter_urltolink','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171708),(413,0,'filter_urltolink','2017111300','2017111300','Plugin installed',NULL,'',0,1525171708),(414,0,'editor_atto',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171708),(415,0,'editor_atto','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171708),(416,0,'editor_atto','2017111300','2017111300','Plugin installed',NULL,'',0,1525171708),(417,0,'editor_textarea',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171709),(418,0,'editor_textarea','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171709),(419,0,'editor_textarea','2017111300','2017111300','Plugin installed',NULL,'',0,1525171709),(420,0,'editor_tinymce',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171709),(421,0,'editor_tinymce','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171709),(422,0,'editor_tinymce','2017111300','2017111300','Plugin installed',NULL,'',0,1525171709),(423,0,'format_singleactivity',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171709),(424,0,'format_singleactivity','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171709),(425,0,'format_singleactivity','2017111300','2017111300','Plugin installed',NULL,'',0,1525171709),(426,0,'format_social',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171709),(427,0,'format_social','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171709),(428,0,'format_social','2017111300','2017111300','Plugin installed',NULL,'',0,1525171709),(429,0,'format_topics',NULL,'2017111301','Starting plugin installation',NULL,'',0,1525171709),(430,0,'format_topics','2017111301','2017111301','Upgrade savepoint reached',NULL,'',0,1525171709),(431,0,'format_topics','2017111301','2017111301','Plugin installed',NULL,'',0,1525171709),(432,0,'format_weeks',NULL,'2017111301','Starting plugin installation',NULL,'',0,1525171709),(433,0,'format_weeks','2017111301','2017111301','Upgrade savepoint reached',NULL,'',0,1525171709),(434,0,'format_weeks','2017111301','2017111301','Plugin installed',NULL,'',0,1525171709),(435,0,'dataformat_csv',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171709),(436,0,'dataformat_csv','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171709),(437,0,'dataformat_csv','2017111300','2017111300','Plugin installed',NULL,'',0,1525171709),(438,0,'dataformat_excel',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171709),(439,0,'dataformat_excel','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171709),(440,0,'dataformat_excel','2017111300','2017111300','Plugin installed',NULL,'',0,1525171709),(441,0,'dataformat_html',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171709),(442,0,'dataformat_html','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171709),(443,0,'dataformat_html','2017111300','2017111300','Plugin installed',NULL,'',0,1525171709),(444,0,'dataformat_json',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171709),(445,0,'dataformat_json','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171709),(446,0,'dataformat_json','2017111300','2017111300','Plugin installed',NULL,'',0,1525171709),(447,0,'dataformat_ods',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171709),(448,0,'dataformat_ods','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171709),(449,0,'dataformat_ods','2017111300','2017111300','Plugin installed',NULL,'',0,1525171709),(450,0,'profilefield_checkbox',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171709),(451,0,'profilefield_checkbox','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171709),(452,0,'profilefield_checkbox','2017111300','2017111300','Plugin installed',NULL,'',0,1525171709),(453,0,'profilefield_datetime',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171709),(454,0,'profilefield_datetime','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171709),(455,0,'profilefield_datetime','2017111300','2017111300','Plugin installed',NULL,'',0,1525171709),(456,0,'profilefield_menu',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171709),(457,0,'profilefield_menu','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171709),(458,0,'profilefield_menu','2017111300','2017111300','Plugin installed',NULL,'',0,1525171709),(459,0,'profilefield_text',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171709),(460,0,'profilefield_text','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171709),(461,0,'profilefield_text','2017111300','2017111300','Plugin installed',NULL,'',0,1525171709),(462,0,'profilefield_textarea',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171709),(463,0,'profilefield_textarea','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171709),(464,0,'profilefield_textarea','2017111300','2017111300','Plugin installed',NULL,'',0,1525171709),(465,0,'report_backups',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171709),(466,0,'report_backups','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171709),(467,0,'report_backups','2017111300','2017111300','Plugin installed',NULL,'',0,1525171709),(468,0,'report_competency',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171709),(469,0,'report_competency','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171709),(470,0,'report_competency','2017111300','2017111300','Plugin installed',NULL,'',0,1525171709),(471,0,'report_completion',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171709),(472,0,'report_completion','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171709),(473,0,'report_completion','2017111300','2017111300','Plugin installed',NULL,'',0,1525171709),(474,0,'report_configlog',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171709),(475,0,'report_configlog','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171709),(476,0,'report_configlog','2017111300','2017111300','Plugin installed',NULL,'',0,1525171709),(477,0,'report_courseoverview',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171709),(478,0,'report_courseoverview','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171709),(479,0,'report_courseoverview','2017111300','2017111300','Plugin installed',NULL,'',0,1525171710),(480,0,'report_eventlist',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171710),(481,0,'report_eventlist','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171710),(482,0,'report_eventlist','2017111300','2017111300','Plugin installed',NULL,'',0,1525171710),(483,0,'report_insights',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171710),(484,0,'report_insights','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171710),(485,0,'report_insights','2017111300','2017111300','Plugin installed',NULL,'',0,1525171710),(486,0,'report_log',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171710),(487,0,'report_log','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171710),(488,0,'report_log','2017111300','2017111300','Plugin installed',NULL,'',0,1525171710),(489,0,'report_loglive',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171710),(490,0,'report_loglive','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171710),(491,0,'report_loglive','2017111300','2017111300','Plugin installed',NULL,'',0,1525171710),(492,0,'report_outline',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171710),(493,0,'report_outline','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171710),(494,0,'report_outline','2017111300','2017111300','Plugin installed',NULL,'',0,1525171710),(495,0,'report_participation',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171710),(496,0,'report_participation','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171710),(497,0,'report_participation','2017111300','2017111300','Plugin installed',NULL,'',0,1525171710),(498,0,'report_performance',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171710),(499,0,'report_performance','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171710),(500,0,'report_performance','2017111300','2017111300','Plugin installed',NULL,'',0,1525171710),(501,0,'report_progress',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171710),(502,0,'report_progress','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171710),(503,0,'report_progress','2017111300','2017111300','Plugin installed',NULL,'',0,1525171710),(504,0,'report_questioninstances',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171710),(505,0,'report_questioninstances','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171710),(506,0,'report_questioninstances','2017111300','2017111300','Plugin installed',NULL,'',0,1525171710),(507,0,'report_security',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171710),(508,0,'report_security','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171710),(509,0,'report_security','2017111300','2017111300','Plugin installed',NULL,'',0,1525171710),(510,0,'report_stats',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171710),(511,0,'report_stats','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171710),(512,0,'report_stats','2017111300','2017111300','Plugin installed',NULL,'',0,1525171710),(513,0,'report_usersessions',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171710),(514,0,'report_usersessions','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171710),(515,0,'report_usersessions','2017111300','2017111300','Plugin installed',NULL,'',0,1525171710),(516,0,'gradeexport_ods',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171710),(517,0,'gradeexport_ods','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171710),(518,0,'gradeexport_ods','2017111300','2017111300','Plugin installed',NULL,'',0,1525171710),(519,0,'gradeexport_txt',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171710),(520,0,'gradeexport_txt','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171710),(521,0,'gradeexport_txt','2017111300','2017111300','Plugin installed',NULL,'',0,1525171711),(522,0,'gradeexport_xls',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171711),(523,0,'gradeexport_xls','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171711),(524,0,'gradeexport_xls','2017111300','2017111300','Plugin installed',NULL,'',0,1525171711),(525,0,'gradeexport_xml',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171711),(526,0,'gradeexport_xml','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171711),(527,0,'gradeexport_xml','2017111300','2017111300','Plugin installed',NULL,'',0,1525171711),(528,0,'gradeimport_csv',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171711),(529,0,'gradeimport_csv','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171711),(530,0,'gradeimport_csv','2017111300','2017111300','Plugin installed',NULL,'',0,1525171711),(531,0,'gradeimport_direct',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171711),(532,0,'gradeimport_direct','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171711),(533,0,'gradeimport_direct','2017111300','2017111300','Plugin installed',NULL,'',0,1525171711),(534,0,'gradeimport_xml',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171711),(535,0,'gradeimport_xml','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171711),(536,0,'gradeimport_xml','2017111300','2017111300','Plugin installed',NULL,'',0,1525171711),(537,0,'gradereport_grader',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171711),(538,0,'gradereport_grader','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171711),(539,0,'gradereport_grader','2017111300','2017111300','Plugin installed',NULL,'',0,1525171711),(540,0,'gradereport_history',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171711),(541,0,'gradereport_history','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171711),(542,0,'gradereport_history','2017111300','2017111300','Plugin installed',NULL,'',0,1525171711),(543,0,'gradereport_outcomes',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171711),(544,0,'gradereport_outcomes','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171711),(545,0,'gradereport_outcomes','2017111300','2017111300','Plugin installed',NULL,'',0,1525171711),(546,0,'gradereport_overview',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171711),(547,0,'gradereport_overview','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171711),(548,0,'gradereport_overview','2017111300','2017111300','Plugin installed',NULL,'',0,1525171711),(549,0,'gradereport_singleview',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171711),(550,0,'gradereport_singleview','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171711),(551,0,'gradereport_singleview','2017111300','2017111300','Plugin installed',NULL,'',0,1525171711),(552,0,'gradereport_user',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171711),(553,0,'gradereport_user','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171711),(554,0,'gradereport_user','2017111300','2017111300','Plugin installed',NULL,'',0,1525171712),(555,0,'gradingform_guide',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171712),(556,0,'gradingform_guide','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171712),(557,0,'gradingform_guide','2017111300','2017111300','Plugin installed',NULL,'',0,1525171712),(558,0,'gradingform_rubric',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171712),(559,0,'gradingform_rubric','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171712),(560,0,'gradingform_rubric','2017111300','2017111300','Plugin installed',NULL,'',0,1525171712),(561,0,'mlbackend_php',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171712),(562,0,'mlbackend_php','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171712),(563,0,'mlbackend_php','2017111300','2017111300','Plugin installed',NULL,'',0,1525171712),(564,0,'mlbackend_python',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171712),(565,0,'mlbackend_python','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171712),(566,0,'mlbackend_python','2017111300','2017111300','Plugin installed',NULL,'',0,1525171712),(567,0,'mnetservice_enrol',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171712),(568,0,'mnetservice_enrol','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171712),(569,0,'mnetservice_enrol','2017111300','2017111300','Plugin installed',NULL,'',0,1525171712),(570,0,'webservice_rest',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171712),(571,0,'webservice_rest','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171712),(572,0,'webservice_rest','2017111300','2017111300','Plugin installed',NULL,'',0,1525171712),(573,0,'webservice_soap',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171712),(574,0,'webservice_soap','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171712),(575,0,'webservice_soap','2017111300','2017111300','Plugin installed',NULL,'',0,1525171712),(576,0,'webservice_xmlrpc',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171712),(577,0,'webservice_xmlrpc','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171712),(578,0,'webservice_xmlrpc','2017111300','2017111300','Plugin installed',NULL,'',0,1525171712),(579,0,'repository_areafiles',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171712),(580,0,'repository_areafiles','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171712),(581,0,'repository_areafiles','2017111300','2017111300','Plugin installed',NULL,'',0,1525171712),(582,0,'repository_boxnet',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171712),(583,0,'repository_boxnet','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171712),(584,0,'repository_boxnet','2017111300','2017111300','Plugin installed',NULL,'',0,1525171712),(585,0,'repository_coursefiles',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171712),(586,0,'repository_coursefiles','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171712),(587,0,'repository_coursefiles','2017111300','2017111300','Plugin installed',NULL,'',0,1525171712),(588,0,'repository_dropbox',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171713),(589,0,'repository_dropbox','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171713),(590,0,'repository_dropbox','2017111300','2017111300','Plugin installed',NULL,'',0,1525171713),(591,0,'repository_equella',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171713),(592,0,'repository_equella','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171713),(593,0,'repository_equella','2017111300','2017111300','Plugin installed',NULL,'',0,1525171713),(594,0,'repository_filesystem',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171713),(595,0,'repository_filesystem','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171713),(596,0,'repository_filesystem','2017111300','2017111300','Plugin installed',NULL,'',0,1525171713),(597,0,'repository_flickr',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171713),(598,0,'repository_flickr','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171713),(599,0,'repository_flickr','2017111300','2017111300','Plugin installed',NULL,'',0,1525171713),(600,0,'repository_flickr_public',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171713),(601,0,'repository_flickr_public','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171713),(602,0,'repository_flickr_public','2017111300','2017111300','Plugin installed',NULL,'',0,1525171713),(603,0,'repository_googledocs',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171713),(604,0,'repository_googledocs','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171713),(605,0,'repository_googledocs','2017111300','2017111300','Plugin installed',NULL,'',0,1525171713),(606,0,'repository_local',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171713),(607,0,'repository_local','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171713),(608,0,'repository_local','2017111300','2017111300','Plugin installed',NULL,'',0,1525171713),(609,0,'repository_merlot',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171713),(610,0,'repository_merlot','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171713),(611,0,'repository_merlot','2017111300','2017111300','Plugin installed',NULL,'',0,1525171713),(612,0,'repository_onedrive',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171713),(613,0,'repository_onedrive','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171713),(614,0,'repository_onedrive','2017111300','2017111300','Plugin installed',NULL,'',0,1525171713),(615,0,'repository_picasa',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171713),(616,0,'repository_picasa','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171713),(617,0,'repository_picasa','2017111300','2017111300','Plugin installed',NULL,'',0,1525171713),(618,0,'repository_recent',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171713),(619,0,'repository_recent','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171713),(620,0,'repository_recent','2017111300','2017111300','Plugin installed',NULL,'',0,1525171713),(621,0,'repository_s3',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171713),(622,0,'repository_s3','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171713),(623,0,'repository_s3','2017111300','2017111300','Plugin installed',NULL,'',0,1525171713),(624,0,'repository_skydrive',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171713),(625,0,'repository_skydrive','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171713),(626,0,'repository_skydrive','2017111300','2017111300','Plugin installed',NULL,'',0,1525171713),(627,0,'repository_upload',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171713),(628,0,'repository_upload','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171714),(629,0,'repository_upload','2017111300','2017111300','Plugin installed',NULL,'',0,1525171714),(630,0,'repository_url',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171714),(631,0,'repository_url','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171714),(632,0,'repository_url','2017111300','2017111300','Plugin installed',NULL,'',0,1525171714),(633,0,'repository_user',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171714),(634,0,'repository_user','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171714),(635,0,'repository_user','2017111300','2017111300','Plugin installed',NULL,'',0,1525171714),(636,0,'repository_webdav',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171714),(637,0,'repository_webdav','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171714),(638,0,'repository_webdav','2017111300','2017111300','Plugin installed',NULL,'',0,1525171714),(639,0,'repository_wikimedia',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171714),(640,0,'repository_wikimedia','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171714),(641,0,'repository_wikimedia','2017111300','2017111300','Plugin installed',NULL,'',0,1525171714),(642,0,'repository_youtube',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171714),(643,0,'repository_youtube','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171714),(644,0,'repository_youtube','2017111300','2017111300','Plugin installed',NULL,'',0,1525171714),(645,0,'portfolio_boxnet',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171714),(646,0,'portfolio_boxnet','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171714),(647,0,'portfolio_boxnet','2017111300','2017111300','Plugin installed',NULL,'',0,1525171714),(648,0,'portfolio_download',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171714),(649,0,'portfolio_download','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171714),(650,0,'portfolio_download','2017111300','2017111300','Plugin installed',NULL,'',0,1525171714),(651,0,'portfolio_flickr',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171714),(652,0,'portfolio_flickr','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171714),(653,0,'portfolio_flickr','2017111300','2017111300','Plugin installed',NULL,'',0,1525171714),(654,0,'portfolio_googledocs',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171714),(655,0,'portfolio_googledocs','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171714),(656,0,'portfolio_googledocs','2017111300','2017111300','Plugin installed',NULL,'',0,1525171714),(657,0,'portfolio_mahara',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171715),(658,0,'portfolio_mahara','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171715),(659,0,'portfolio_mahara','2017111300','2017111300','Plugin installed',NULL,'',0,1525171715),(660,0,'portfolio_picasa',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171715),(661,0,'portfolio_picasa','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171715),(662,0,'portfolio_picasa','2017111300','2017111300','Plugin installed',NULL,'',0,1525171715),(663,0,'search_solr',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171715),(664,0,'search_solr','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171715),(665,0,'search_solr','2017111300','2017111300','Plugin installed',NULL,'',0,1525171715),(666,0,'qbehaviour_adaptive',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171715),(667,0,'qbehaviour_adaptive','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171715),(668,0,'qbehaviour_adaptive','2017111300','2017111300','Plugin installed',NULL,'',0,1525171715),(669,0,'qbehaviour_adaptivenopenalty',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171715),(670,0,'qbehaviour_adaptivenopenalty','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171715),(671,0,'qbehaviour_adaptivenopenalty','2017111300','2017111300','Plugin installed',NULL,'',0,1525171715),(672,0,'qbehaviour_deferredcbm',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171715),(673,0,'qbehaviour_deferredcbm','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171715),(674,0,'qbehaviour_deferredcbm','2017111300','2017111300','Plugin installed',NULL,'',0,1525171715),(675,0,'qbehaviour_deferredfeedback',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171715),(676,0,'qbehaviour_deferredfeedback','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171715),(677,0,'qbehaviour_deferredfeedback','2017111300','2017111300','Plugin installed',NULL,'',0,1525171715),(678,0,'qbehaviour_immediatecbm',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171715),(679,0,'qbehaviour_immediatecbm','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171715),(680,0,'qbehaviour_immediatecbm','2017111300','2017111300','Plugin installed',NULL,'',0,1525171715),(681,0,'qbehaviour_immediatefeedback',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171715),(682,0,'qbehaviour_immediatefeedback','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171715),(683,0,'qbehaviour_immediatefeedback','2017111300','2017111300','Plugin installed',NULL,'',0,1525171715),(684,0,'qbehaviour_informationitem',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171715),(685,0,'qbehaviour_informationitem','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171715),(686,0,'qbehaviour_informationitem','2017111300','2017111300','Plugin installed',NULL,'',0,1525171715),(687,0,'qbehaviour_interactive',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171715),(688,0,'qbehaviour_interactive','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171716),(689,0,'qbehaviour_interactive','2017111300','2017111300','Plugin installed',NULL,'',0,1525171716),(690,0,'qbehaviour_interactivecountback',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171716),(691,0,'qbehaviour_interactivecountback','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171716),(692,0,'qbehaviour_interactivecountback','2017111300','2017111300','Plugin installed',NULL,'',0,1525171716),(693,0,'qbehaviour_manualgraded',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171716),(694,0,'qbehaviour_manualgraded','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171716),(695,0,'qbehaviour_manualgraded','2017111300','2017111300','Plugin installed',NULL,'',0,1525171716),(696,0,'qbehaviour_missing',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171716),(697,0,'qbehaviour_missing','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171716),(698,0,'qbehaviour_missing','2017111300','2017111300','Plugin installed',NULL,'',0,1525171716),(699,0,'qformat_aiken',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171716),(700,0,'qformat_aiken','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171716),(701,0,'qformat_aiken','2017111300','2017111300','Plugin installed',NULL,'',0,1525171716),(702,0,'qformat_blackboard_six',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171716),(703,0,'qformat_blackboard_six','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171716),(704,0,'qformat_blackboard_six','2017111300','2017111300','Plugin installed',NULL,'',0,1525171716),(705,0,'qformat_examview',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171716),(706,0,'qformat_examview','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171716),(707,0,'qformat_examview','2017111300','2017111300','Plugin installed',NULL,'',0,1525171716),(708,0,'qformat_gift',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171716),(709,0,'qformat_gift','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171716),(710,0,'qformat_gift','2017111300','2017111300','Plugin installed',NULL,'',0,1525171716),(711,0,'qformat_missingword',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171716),(712,0,'qformat_missingword','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171716),(713,0,'qformat_missingword','2017111300','2017111300','Plugin installed',NULL,'',0,1525171716),(714,0,'qformat_multianswer',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171716),(715,0,'qformat_multianswer','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171716),(716,0,'qformat_multianswer','2017111300','2017111300','Plugin installed',NULL,'',0,1525171716),(717,0,'qformat_webct',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171716),(718,0,'qformat_webct','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171716),(719,0,'qformat_webct','2017111300','2017111300','Plugin installed',NULL,'',0,1525171716),(720,0,'qformat_xhtml',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171716),(721,0,'qformat_xhtml','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171716),(722,0,'qformat_xhtml','2017111300','2017111300','Plugin installed',NULL,'',0,1525171716),(723,0,'qformat_xml',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171717),(724,0,'qformat_xml','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171717),(725,0,'qformat_xml','2017111300','2017111300','Plugin installed',NULL,'',0,1525171717),(726,0,'tool_analytics',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171717),(727,0,'tool_analytics','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171717),(728,0,'tool_analytics','2017111300','2017111300','Plugin installed',NULL,'',0,1525171717),(729,0,'tool_assignmentupgrade',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171717),(730,0,'tool_assignmentupgrade','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171717),(731,0,'tool_assignmentupgrade','2017111300','2017111300','Plugin installed',NULL,'',0,1525171717),(732,0,'tool_availabilityconditions',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171717),(733,0,'tool_availabilityconditions','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171717),(734,0,'tool_availabilityconditions','2017111300','2017111300','Plugin installed',NULL,'',0,1525171717),(735,0,'tool_behat',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171717),(736,0,'tool_behat','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171717),(737,0,'tool_behat','2017111300','2017111300','Plugin installed',NULL,'',0,1525171717),(738,0,'tool_capability',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171717),(739,0,'tool_capability','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171717),(740,0,'tool_capability','2017111300','2017111300','Plugin installed',NULL,'',0,1525171717),(741,0,'tool_cohortroles',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171717),(742,0,'tool_cohortroles','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171717),(743,0,'tool_cohortroles','2017111300','2017111300','Plugin installed',NULL,'',0,1525171717),(744,0,'tool_customlang',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171717),(745,0,'tool_customlang','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171717),(746,0,'tool_customlang','2017111300','2017111300','Plugin installed',NULL,'',0,1525171717),(747,0,'tool_dbtransfer',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171717),(748,0,'tool_dbtransfer','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171717),(749,0,'tool_dbtransfer','2017111300','2017111300','Plugin installed',NULL,'',0,1525171717),(750,0,'tool_filetypes',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171717),(751,0,'tool_filetypes','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171717),(752,0,'tool_filetypes','2017111300','2017111300','Plugin installed',NULL,'',0,1525171718),(753,0,'tool_generator',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171718),(754,0,'tool_generator','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171718),(755,0,'tool_generator','2017111300','2017111300','Plugin installed',NULL,'',0,1525171718),(756,0,'tool_health',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171718),(757,0,'tool_health','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171718),(758,0,'tool_health','2017111300','2017111300','Plugin installed',NULL,'',0,1525171718),(759,0,'tool_httpsreplace',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171718),(760,0,'tool_httpsreplace','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171718),(761,0,'tool_httpsreplace','2017111300','2017111300','Plugin installed',NULL,'',0,1525171718),(762,0,'tool_innodb',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171718),(763,0,'tool_innodb','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171718),(764,0,'tool_innodb','2017111300','2017111300','Plugin installed',NULL,'',0,1525171718),(765,0,'tool_installaddon',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171718),(766,0,'tool_installaddon','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171718),(767,0,'tool_installaddon','2017111300','2017111300','Plugin installed',NULL,'',0,1525171718),(768,0,'tool_langimport',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171718),(769,0,'tool_langimport','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171718),(770,0,'tool_langimport','2017111300','2017111300','Plugin installed',NULL,'',0,1525171718),(771,0,'tool_log',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171718),(772,0,'tool_log','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171718),(773,0,'tool_log','2017111300','2017111300','Plugin installed',NULL,'',0,1525171718),(774,0,'tool_lp',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171718),(775,0,'tool_lp','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171718),(776,0,'tool_lp','2017111300','2017111300','Plugin installed',NULL,'',0,1525171718),(777,0,'tool_lpimportcsv',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171718),(778,0,'tool_lpimportcsv','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171718),(779,0,'tool_lpimportcsv','2017111300','2017111300','Plugin installed',NULL,'',0,1525171718),(780,0,'tool_lpmigrate',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171718),(781,0,'tool_lpmigrate','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171718),(782,0,'tool_lpmigrate','2017111300','2017111300','Plugin installed',NULL,'',0,1525171718),(783,0,'tool_messageinbound',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171718),(784,0,'tool_messageinbound','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171719),(785,0,'tool_messageinbound','2017111300','2017111300','Plugin installed',NULL,'',0,1525171719),(786,0,'tool_mobile',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171719),(787,0,'tool_mobile','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171719),(788,0,'tool_mobile','2017111300','2017111300','Plugin installed',NULL,'',0,1525171719),(789,0,'tool_monitor',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171719),(790,0,'tool_monitor','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171719),(791,0,'tool_monitor','2017111300','2017111300','Plugin installed',NULL,'',0,1525171719),(792,0,'tool_multilangupgrade',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171719),(793,0,'tool_multilangupgrade','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171719),(794,0,'tool_multilangupgrade','2017111300','2017111300','Plugin installed',NULL,'',0,1525171719),(795,0,'tool_oauth2',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171719),(796,0,'tool_oauth2','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171719),(797,0,'tool_oauth2','2017111300','2017111300','Plugin installed',NULL,'',0,1525171719),(798,0,'tool_phpunit',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171719),(799,0,'tool_phpunit','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171719),(800,0,'tool_phpunit','2017111300','2017111300','Plugin installed',NULL,'',0,1525171719),(801,0,'tool_profiling',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171719),(802,0,'tool_profiling','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171719),(803,0,'tool_profiling','2017111300','2017111300','Plugin installed',NULL,'',0,1525171719),(804,0,'tool_recyclebin',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171719),(805,0,'tool_recyclebin','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171719),(806,0,'tool_recyclebin','2017111300','2017111300','Plugin installed',NULL,'',0,1525171720),(807,0,'tool_replace',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171720),(808,0,'tool_replace','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171720),(809,0,'tool_replace','2017111300','2017111300','Plugin installed',NULL,'',0,1525171720),(810,0,'tool_spamcleaner',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171720),(811,0,'tool_spamcleaner','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171720),(812,0,'tool_spamcleaner','2017111300','2017111300','Plugin installed',NULL,'',0,1525171720),(813,0,'tool_task',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171720),(814,0,'tool_task','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171720),(815,0,'tool_task','2017111300','2017111300','Plugin installed',NULL,'',0,1525171720),(816,0,'tool_templatelibrary',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171720),(817,0,'tool_templatelibrary','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171720),(818,0,'tool_templatelibrary','2017111300','2017111300','Plugin installed',NULL,'',0,1525171720),(819,0,'tool_unsuproles',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171720),(820,0,'tool_unsuproles','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171720),(821,0,'tool_unsuproles','2017111300','2017111300','Plugin installed',NULL,'',0,1525171720),(822,0,'tool_uploadcourse',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171720),(823,0,'tool_uploadcourse','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171720),(824,0,'tool_uploadcourse','2017111300','2017111300','Plugin installed',NULL,'',0,1525171720),(825,0,'tool_uploaduser',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171720),(826,0,'tool_uploaduser','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171720),(827,0,'tool_uploaduser','2017111300','2017111300','Plugin installed',NULL,'',0,1525171720),(828,0,'tool_usertours',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171720),(829,0,'tool_usertours','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171720),(830,0,'tool_usertours','2017111300','2017111300','Plugin installed',NULL,'',0,1525171721),(831,0,'tool_xmldb',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171721),(832,0,'tool_xmldb','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171721),(833,0,'tool_xmldb','2017111300','2017111300','Plugin installed',NULL,'',0,1525171721),(834,0,'cachestore_apcu',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171721),(835,0,'cachestore_apcu','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171721),(836,0,'cachestore_apcu','2017111300','2017111300','Plugin installed',NULL,'',0,1525171721),(837,0,'cachestore_file',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171721),(838,0,'cachestore_file','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171721),(839,0,'cachestore_file','2017111300','2017111300','Plugin installed',NULL,'',0,1525171721),(840,0,'cachestore_memcache',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171721),(841,0,'cachestore_memcache','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171721),(842,0,'cachestore_memcache','2017111300','2017111300','Plugin installed',NULL,'',0,1525171721),(843,0,'cachestore_memcached',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171721),(844,0,'cachestore_memcached','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171721),(845,0,'cachestore_memcached','2017111300','2017111300','Plugin installed',NULL,'',0,1525171721),(846,0,'cachestore_mongodb',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171721),(847,0,'cachestore_mongodb','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171721),(848,0,'cachestore_mongodb','2017111300','2017111300','Plugin installed',NULL,'',0,1525171721),(849,0,'cachestore_redis',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171721),(850,0,'cachestore_redis','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171721),(851,0,'cachestore_redis','2017111300','2017111300','Plugin installed',NULL,'',0,1525171721),(852,0,'cachestore_session',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171721),(853,0,'cachestore_session','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171721),(854,0,'cachestore_session','2017111300','2017111300','Plugin installed',NULL,'',0,1525171721),(855,0,'cachestore_static',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171721),(856,0,'cachestore_static','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171721),(857,0,'cachestore_static','2017111300','2017111300','Plugin installed',NULL,'',0,1525171721),(858,0,'cachelock_file',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171721),(859,0,'cachelock_file','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171721),(860,0,'cachelock_file','2017111300','2017111300','Plugin installed',NULL,'',0,1525171721),(861,0,'fileconverter_googledrive',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171721),(862,0,'fileconverter_googledrive','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171721),(863,0,'fileconverter_googledrive','2017111300','2017111300','Plugin installed',NULL,'',0,1525171721),(864,0,'fileconverter_unoconv',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171721),(865,0,'fileconverter_unoconv','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171721),(866,0,'fileconverter_unoconv','2017111300','2017111300','Plugin installed',NULL,'',0,1525171721),(867,0,'theme_boost',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171721),(868,0,'theme_boost','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171722),(869,0,'theme_boost','2017111300','2017111300','Plugin installed',NULL,'',0,1525171722),(870,0,'theme_bootstrapbase',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171722),(871,0,'theme_bootstrapbase','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171722),(872,0,'theme_bootstrapbase','2017111300','2017111300','Plugin installed',NULL,'',0,1525171722),(873,0,'theme_clean',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171722),(874,0,'theme_clean','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171722),(875,0,'theme_clean','2017111300','2017111300','Plugin installed',NULL,'',0,1525171722),(876,0,'theme_more',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171722),(877,0,'theme_more','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171722),(878,0,'theme_more','2017111300','2017111300','Plugin installed',NULL,'',0,1525171722),(879,0,'assignsubmission_comments',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171722),(880,0,'assignsubmission_comments','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171722),(881,0,'assignsubmission_comments','2017111300','2017111300','Plugin installed',NULL,'',0,1525171722),(882,0,'assignsubmission_file',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171722),(883,0,'assignsubmission_file','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171722),(884,0,'assignsubmission_file','2017111300','2017111300','Plugin installed',NULL,'',0,1525171722),(885,0,'assignsubmission_onlinetext',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171722),(886,0,'assignsubmission_onlinetext','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171722),(887,0,'assignsubmission_onlinetext','2017111300','2017111300','Plugin installed',NULL,'',0,1525171722),(888,0,'assignfeedback_comments',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171722),(889,0,'assignfeedback_comments','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171722),(890,0,'assignfeedback_comments','2017111300','2017111300','Plugin installed',NULL,'',0,1525171722),(891,0,'assignfeedback_editpdf',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171722),(892,0,'assignfeedback_editpdf','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171723),(893,0,'assignfeedback_editpdf','2017111300','2017111300','Plugin installed',NULL,'',0,1525171723),(894,0,'assignfeedback_file',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171723),(895,0,'assignfeedback_file','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171723),(896,0,'assignfeedback_file','2017111300','2017111300','Plugin installed',NULL,'',0,1525171723),(897,0,'assignfeedback_offline',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171723),(898,0,'assignfeedback_offline','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171723),(899,0,'assignfeedback_offline','2017111300','2017111300','Plugin installed',NULL,'',0,1525171723),(900,0,'assignment_offline',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171723),(901,0,'assignment_offline','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171723),(902,0,'assignment_offline','2017111300','2017111300','Plugin installed',NULL,'',0,1525171723),(903,0,'assignment_online',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171723),(904,0,'assignment_online','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171723),(905,0,'assignment_online','2017111300','2017111300','Plugin installed',NULL,'',0,1525171723),(906,0,'assignment_upload',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171723),(907,0,'assignment_upload','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171723),(908,0,'assignment_upload','2017111300','2017111300','Plugin installed',NULL,'',0,1525171723),(909,0,'assignment_uploadsingle',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171723),(910,0,'assignment_uploadsingle','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171723),(911,0,'assignment_uploadsingle','2017111300','2017111300','Plugin installed',NULL,'',0,1525171723),(912,0,'booktool_exportimscp',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171723),(913,0,'booktool_exportimscp','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171723),(914,0,'booktool_exportimscp','2017111300','2017111300','Plugin installed',NULL,'',0,1525171723),(915,0,'booktool_importhtml',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171723),(916,0,'booktool_importhtml','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171723),(917,0,'booktool_importhtml','2017111300','2017111300','Plugin installed',NULL,'',0,1525171723),(918,0,'booktool_print',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171723),(919,0,'booktool_print','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171723),(920,0,'booktool_print','2017111300','2017111300','Plugin installed',NULL,'',0,1525171723),(921,0,'datafield_checkbox',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171723),(922,0,'datafield_checkbox','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171723),(923,0,'datafield_checkbox','2017111300','2017111300','Plugin installed',NULL,'',0,1525171723),(924,0,'datafield_date',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171724),(925,0,'datafield_date','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171724),(926,0,'datafield_date','2017111300','2017111300','Plugin installed',NULL,'',0,1525171724),(927,0,'datafield_file',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171724),(928,0,'datafield_file','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171724),(929,0,'datafield_file','2017111300','2017111300','Plugin installed',NULL,'',0,1525171724),(930,0,'datafield_latlong',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171724),(931,0,'datafield_latlong','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171724),(932,0,'datafield_latlong','2017111300','2017111300','Plugin installed',NULL,'',0,1525171724),(933,0,'datafield_menu',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171724),(934,0,'datafield_menu','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171724),(935,0,'datafield_menu','2017111300','2017111300','Plugin installed',NULL,'',0,1525171724),(936,0,'datafield_multimenu',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171724),(937,0,'datafield_multimenu','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171724),(938,0,'datafield_multimenu','2017111300','2017111300','Plugin installed',NULL,'',0,1525171724),(939,0,'datafield_number',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171724),(940,0,'datafield_number','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171724),(941,0,'datafield_number','2017111300','2017111300','Plugin installed',NULL,'',0,1525171724),(942,0,'datafield_picture',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171724),(943,0,'datafield_picture','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171724),(944,0,'datafield_picture','2017111300','2017111300','Plugin installed',NULL,'',0,1525171724),(945,0,'datafield_radiobutton',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171724),(946,0,'datafield_radiobutton','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171724),(947,0,'datafield_radiobutton','2017111300','2017111300','Plugin installed',NULL,'',0,1525171724),(948,0,'datafield_text',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171724),(949,0,'datafield_text','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171724),(950,0,'datafield_text','2017111300','2017111300','Plugin installed',NULL,'',0,1525171724),(951,0,'datafield_textarea',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171724),(952,0,'datafield_textarea','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171724),(953,0,'datafield_textarea','2017111300','2017111300','Plugin installed',NULL,'',0,1525171724),(954,0,'datafield_url',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171724),(955,0,'datafield_url','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171724),(956,0,'datafield_url','2017111300','2017111300','Plugin installed',NULL,'',0,1525171724),(957,0,'datapreset_imagegallery',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171724),(958,0,'datapreset_imagegallery','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171724),(959,0,'datapreset_imagegallery','2017111300','2017111300','Plugin installed',NULL,'',0,1525171724),(960,0,'ltiservice_memberships',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171724),(961,0,'ltiservice_memberships','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171724),(962,0,'ltiservice_memberships','2017111300','2017111300','Plugin installed',NULL,'',0,1525171724),(963,0,'ltiservice_profile',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171724),(964,0,'ltiservice_profile','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171724),(965,0,'ltiservice_profile','2017111300','2017111300','Plugin installed',NULL,'',0,1525171724),(966,0,'ltiservice_toolproxy',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171724),(967,0,'ltiservice_toolproxy','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171724),(968,0,'ltiservice_toolproxy','2017111300','2017111300','Plugin installed',NULL,'',0,1525171724),(969,0,'ltiservice_toolsettings',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171724),(970,0,'ltiservice_toolsettings','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171725),(971,0,'ltiservice_toolsettings','2017111300','2017111300','Plugin installed',NULL,'',0,1525171725),(972,0,'quiz_grading',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171725),(973,0,'quiz_grading','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171725),(974,0,'quiz_grading','2017111300','2017111300','Plugin installed',NULL,'',0,1525171725),(975,0,'quiz_overview',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171725),(976,0,'quiz_overview','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171725),(977,0,'quiz_overview','2017111300','2017111300','Plugin installed',NULL,'',0,1525171725),(978,0,'quiz_responses',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171725),(979,0,'quiz_responses','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171725),(980,0,'quiz_responses','2017111300','2017111300','Plugin installed',NULL,'',0,1525171725),(981,0,'quiz_statistics',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171725),(982,0,'quiz_statistics','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171725),(983,0,'quiz_statistics','2017111300','2017111300','Plugin installed',NULL,'',0,1525171725),(984,0,'quizaccess_delaybetweenattempts',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171725),(985,0,'quizaccess_delaybetweenattempts','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171725),(986,0,'quizaccess_delaybetweenattempts','2017111300','2017111300','Plugin installed',NULL,'',0,1525171725),(987,0,'quizaccess_ipaddress',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171725),(988,0,'quizaccess_ipaddress','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171725),(989,0,'quizaccess_ipaddress','2017111300','2017111300','Plugin installed',NULL,'',0,1525171725),(990,0,'quizaccess_numattempts',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171725),(991,0,'quizaccess_numattempts','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171725),(992,0,'quizaccess_numattempts','2017111300','2017111300','Plugin installed',NULL,'',0,1525171725),(993,0,'quizaccess_offlineattempts',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171725),(994,0,'quizaccess_offlineattempts','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171725),(995,0,'quizaccess_offlineattempts','2017111300','2017111300','Plugin installed',NULL,'',0,1525171725),(996,0,'quizaccess_openclosedate',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171725),(997,0,'quizaccess_openclosedate','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171725),(998,0,'quizaccess_openclosedate','2017111300','2017111300','Plugin installed',NULL,'',0,1525171725),(999,0,'quizaccess_password',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171725),(1000,0,'quizaccess_password','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171725),(1001,0,'quizaccess_password','2017111300','2017111300','Plugin installed',NULL,'',0,1525171725),(1002,0,'quizaccess_safebrowser',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171725),(1003,0,'quizaccess_safebrowser','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171725),(1004,0,'quizaccess_safebrowser','2017111300','2017111300','Plugin installed',NULL,'',0,1525171725),(1005,0,'quizaccess_securewindow',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171725),(1006,0,'quizaccess_securewindow','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171725),(1007,0,'quizaccess_securewindow','2017111300','2017111300','Plugin installed',NULL,'',0,1525171725),(1008,0,'quizaccess_timelimit',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171725),(1009,0,'quizaccess_timelimit','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171725),(1010,0,'quizaccess_timelimit','2017111300','2017111300','Plugin installed',NULL,'',0,1525171726),(1011,0,'scormreport_basic',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171726),(1012,0,'scormreport_basic','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171726),(1013,0,'scormreport_basic','2017111300','2017111300','Plugin installed',NULL,'',0,1525171726),(1014,0,'scormreport_graphs',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171726),(1015,0,'scormreport_graphs','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171726),(1016,0,'scormreport_graphs','2017111300','2017111300','Plugin installed',NULL,'',0,1525171726),(1017,0,'scormreport_interactions',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171726),(1018,0,'scormreport_interactions','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171726),(1019,0,'scormreport_interactions','2017111300','2017111300','Plugin installed',NULL,'',0,1525171726),(1020,0,'scormreport_objectives',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171726),(1021,0,'scormreport_objectives','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171726),(1022,0,'scormreport_objectives','2017111300','2017111300','Plugin installed',NULL,'',0,1525171726),(1023,0,'workshopform_accumulative',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171726),(1024,0,'workshopform_accumulative','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171726),(1025,0,'workshopform_accumulative','2017111300','2017111300','Plugin installed',NULL,'',0,1525171726),(1026,0,'workshopform_comments',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171726),(1027,0,'workshopform_comments','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171726),(1028,0,'workshopform_comments','2017111300','2017111300','Plugin installed',NULL,'',0,1525171726),(1029,0,'workshopform_numerrors',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171726),(1030,0,'workshopform_numerrors','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171726),(1031,0,'workshopform_numerrors','2017111300','2017111300','Plugin installed',NULL,'',0,1525171726),(1032,0,'workshopform_rubric',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171726),(1033,0,'workshopform_rubric','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171726),(1034,0,'workshopform_rubric','2017111300','2017111300','Plugin installed',NULL,'',0,1525171726),(1035,0,'workshopallocation_manual',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171726),(1036,0,'workshopallocation_manual','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171727),(1037,0,'workshopallocation_manual','2017111300','2017111300','Plugin installed',NULL,'',0,1525171727),(1038,0,'workshopallocation_random',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171727),(1039,0,'workshopallocation_random','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171727),(1040,0,'workshopallocation_random','2017111300','2017111300','Plugin installed',NULL,'',0,1525171727),(1041,0,'workshopallocation_scheduled',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171727),(1042,0,'workshopallocation_scheduled','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171727),(1043,0,'workshopallocation_scheduled','2017111300','2017111300','Plugin installed',NULL,'',0,1525171727),(1044,0,'workshopeval_best',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171727),(1045,0,'workshopeval_best','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171727),(1046,0,'workshopeval_best','2017111300','2017111300','Plugin installed',NULL,'',0,1525171727),(1047,0,'atto_accessibilitychecker',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171727),(1048,0,'atto_accessibilitychecker','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171727),(1049,0,'atto_accessibilitychecker','2017111300','2017111300','Plugin installed',NULL,'',0,1525171727),(1050,0,'atto_accessibilityhelper',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171727),(1051,0,'atto_accessibilityhelper','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171727),(1052,0,'atto_accessibilityhelper','2017111300','2017111300','Plugin installed',NULL,'',0,1525171727),(1053,0,'atto_align',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171727),(1054,0,'atto_align','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171727),(1055,0,'atto_align','2017111300','2017111300','Plugin installed',NULL,'',0,1525171727),(1056,0,'atto_backcolor',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171727),(1057,0,'atto_backcolor','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171727),(1058,0,'atto_backcolor','2017111300','2017111300','Plugin installed',NULL,'',0,1525171727),(1059,0,'atto_bold',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171727),(1060,0,'atto_bold','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171727),(1061,0,'atto_bold','2017111300','2017111300','Plugin installed',NULL,'',0,1525171727),(1062,0,'atto_charmap',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171727),(1063,0,'atto_charmap','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171727),(1064,0,'atto_charmap','2017111300','2017111300','Plugin installed',NULL,'',0,1525171727),(1065,0,'atto_clear',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171727),(1066,0,'atto_clear','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171727),(1067,0,'atto_clear','2017111300','2017111300','Plugin installed',NULL,'',0,1525171727),(1068,0,'atto_collapse',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171727),(1069,0,'atto_collapse','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171727),(1070,0,'atto_collapse','2017111300','2017111300','Plugin installed',NULL,'',0,1525171728),(1071,0,'atto_emoticon',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171728),(1072,0,'atto_emoticon','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171728),(1073,0,'atto_emoticon','2017111300','2017111300','Plugin installed',NULL,'',0,1525171728),(1074,0,'atto_equation',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171728),(1075,0,'atto_equation','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171728),(1076,0,'atto_equation','2017111300','2017111300','Plugin installed',NULL,'',0,1525171728),(1077,0,'atto_fontcolor',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171728),(1078,0,'atto_fontcolor','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171728),(1079,0,'atto_fontcolor','2017111300','2017111300','Plugin installed',NULL,'',0,1525171728),(1080,0,'atto_html',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171728),(1081,0,'atto_html','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171728),(1082,0,'atto_html','2017111300','2017111300','Plugin installed',NULL,'',0,1525171728),(1083,0,'atto_image',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171728),(1084,0,'atto_image','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171728),(1085,0,'atto_image','2017111300','2017111300','Plugin installed',NULL,'',0,1525171728),(1086,0,'atto_indent',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171728),(1087,0,'atto_indent','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171728),(1088,0,'atto_indent','2017111300','2017111300','Plugin installed',NULL,'',0,1525171728),(1089,0,'atto_italic',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171728),(1090,0,'atto_italic','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171728),(1091,0,'atto_italic','2017111300','2017111300','Plugin installed',NULL,'',0,1525171728),(1092,0,'atto_link',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171728),(1093,0,'atto_link','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171728),(1094,0,'atto_link','2017111300','2017111300','Plugin installed',NULL,'',0,1525171728),(1095,0,'atto_managefiles',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171728),(1096,0,'atto_managefiles','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171728),(1097,0,'atto_managefiles','2017111300','2017111300','Plugin installed',NULL,'',0,1525171728),(1098,0,'atto_media',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171728),(1099,0,'atto_media','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171728),(1100,0,'atto_media','2017111300','2017111300','Plugin installed',NULL,'',0,1525171728),(1101,0,'atto_noautolink',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171728),(1102,0,'atto_noautolink','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171728),(1103,0,'atto_noautolink','2017111300','2017111300','Plugin installed',NULL,'',0,1525171729),(1104,0,'atto_orderedlist',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171729),(1105,0,'atto_orderedlist','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171729),(1106,0,'atto_orderedlist','2017111300','2017111300','Plugin installed',NULL,'',0,1525171729),(1107,0,'atto_rtl',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171729),(1108,0,'atto_rtl','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171729),(1109,0,'atto_rtl','2017111300','2017111300','Plugin installed',NULL,'',0,1525171729),(1110,0,'atto_strike',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171729),(1111,0,'atto_strike','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171729),(1112,0,'atto_strike','2017111300','2017111300','Plugin installed',NULL,'',0,1525171729),(1113,0,'atto_subscript',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171729),(1114,0,'atto_subscript','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171729),(1115,0,'atto_subscript','2017111300','2017111300','Plugin installed',NULL,'',0,1525171729),(1116,0,'atto_superscript',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171729),(1117,0,'atto_superscript','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171729),(1118,0,'atto_superscript','2017111300','2017111300','Plugin installed',NULL,'',0,1525171729),(1119,0,'atto_table',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171729),(1120,0,'atto_table','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171729),(1121,0,'atto_table','2017111300','2017111300','Plugin installed',NULL,'',0,1525171729),(1122,0,'atto_title',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171729),(1123,0,'atto_title','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171729),(1124,0,'atto_title','2017111300','2017111300','Plugin installed',NULL,'',0,1525171729),(1125,0,'atto_underline',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171729),(1126,0,'atto_underline','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171729),(1127,0,'atto_underline','2017111300','2017111300','Plugin installed',NULL,'',0,1525171729),(1128,0,'atto_undo',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171729),(1129,0,'atto_undo','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171729),(1130,0,'atto_undo','2017111300','2017111300','Plugin installed',NULL,'',0,1525171729),(1131,0,'atto_unorderedlist',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171729),(1132,0,'atto_unorderedlist','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171729),(1133,0,'atto_unorderedlist','2017111300','2017111300','Plugin installed',NULL,'',0,1525171730),(1134,0,'tinymce_ctrlhelp',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171730),(1135,0,'tinymce_ctrlhelp','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171730),(1136,0,'tinymce_ctrlhelp','2017111300','2017111300','Plugin installed',NULL,'',0,1525171730),(1137,0,'tinymce_managefiles',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171730),(1138,0,'tinymce_managefiles','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171730),(1139,0,'tinymce_managefiles','2017111300','2017111300','Plugin installed',NULL,'',0,1525171730),(1140,0,'tinymce_moodleemoticon',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171730),(1141,0,'tinymce_moodleemoticon','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171730),(1142,0,'tinymce_moodleemoticon','2017111300','2017111300','Plugin installed',NULL,'',0,1525171730),(1143,0,'tinymce_moodleimage',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171730),(1144,0,'tinymce_moodleimage','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171730),(1145,0,'tinymce_moodleimage','2017111300','2017111300','Plugin installed',NULL,'',0,1525171730),(1146,0,'tinymce_moodlemedia',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171730),(1147,0,'tinymce_moodlemedia','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171730),(1148,0,'tinymce_moodlemedia','2017111300','2017111300','Plugin installed',NULL,'',0,1525171730),(1149,0,'tinymce_moodlenolink',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171730),(1150,0,'tinymce_moodlenolink','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171730),(1151,0,'tinymce_moodlenolink','2017111300','2017111300','Plugin installed',NULL,'',0,1525171730),(1152,0,'tinymce_pdw',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171730),(1153,0,'tinymce_pdw','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171730),(1154,0,'tinymce_pdw','2017111300','2017111300','Plugin installed',NULL,'',0,1525171730),(1155,0,'tinymce_spellchecker',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171730),(1156,0,'tinymce_spellchecker','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171730),(1157,0,'tinymce_spellchecker','2017111300','2017111300','Plugin installed',NULL,'',0,1525171730),(1158,0,'tinymce_wrap',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171730),(1159,0,'tinymce_wrap','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171730),(1160,0,'tinymce_wrap','2017111300','2017111300','Plugin installed',NULL,'',0,1525171730),(1161,0,'logstore_database',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171730),(1162,0,'logstore_database','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171730),(1163,0,'logstore_database','2017111300','2017111300','Plugin installed',NULL,'',0,1525171730),(1164,0,'logstore_legacy',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171730),(1165,0,'logstore_legacy','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171730),(1166,0,'logstore_legacy','2017111300','2017111300','Plugin installed',NULL,'',0,1525171730),(1167,0,'logstore_standard',NULL,'2017111300','Starting plugin installation',NULL,'',0,1525171730),(1168,0,'logstore_standard','2017111300','2017111300','Upgrade savepoint reached',NULL,'',0,1525171730),(1169,0,'logstore_standard','2017111300','2017111300','Plugin installed',NULL,'',0,1525171731);
/*!40000 ALTER TABLE `mdl01_upgrade_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_url`
--

DROP TABLE IF EXISTS `mdl01_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_url` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_unicode_ci,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `externalurl` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` smallint(4) NOT NULL DEFAULT '0',
  `displayoptions` longtext COLLATE utf8mb4_unicode_ci,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_url_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='each record is one url resource';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_url`
--

LOCK TABLES `mdl01_url` WRITE;
/*!40000 ALTER TABLE `mdl01_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_user`
--

DROP TABLE IF EXISTS `mdl01_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_user` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `auth` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'manual',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `policyagreed` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `mnethostid` bigint(10) NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `idnumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `emailstop` tinyint(1) NOT NULL DEFAULT '0',
  `icq` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `skype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `yahoo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `aim` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `msn` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone1` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone2` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `institution` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `calendartype` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'gregorian',
  `theme` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timezone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '99',
  `firstaccess` bigint(10) NOT NULL DEFAULT '0',
  `lastaccess` bigint(10) NOT NULL DEFAULT '0',
  `lastlogin` bigint(10) NOT NULL DEFAULT '0',
  `currentlogin` bigint(10) NOT NULL DEFAULT '0',
  `lastip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `secret` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `picture` bigint(10) NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT '1',
  `mailformat` tinyint(1) NOT NULL DEFAULT '1',
  `maildigest` tinyint(1) NOT NULL DEFAULT '0',
  `maildisplay` tinyint(2) NOT NULL DEFAULT '2',
  `autosubscribe` tinyint(1) NOT NULL DEFAULT '1',
  `trackforums` tinyint(1) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `trustbitmask` bigint(10) NOT NULL DEFAULT '0',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastnamephonetic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstnamephonetic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middlename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternatename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_user_mneuse_uix` (`mnethostid`,`username`),
  KEY `mdl01_user_del_ix` (`deleted`),
  KEY `mdl01_user_con_ix` (`confirmed`),
  KEY `mdl01_user_fir_ix` (`firstname`),
  KEY `mdl01_user_las_ix` (`lastname`),
  KEY `mdl01_user_cit_ix` (`city`),
  KEY `mdl01_user_cou_ix` (`country`),
  KEY `mdl01_user_las2_ix` (`lastaccess`),
  KEY `mdl01_user_ema_ix` (`email`),
  KEY `mdl01_user_aut_ix` (`auth`),
  KEY `mdl01_user_idn_ix` (`idnumber`),
  KEY `mdl01_user_fir2_ix` (`firstnamephonetic`),
  KEY `mdl01_user_las3_ix` (`lastnamephonetic`),
  KEY `mdl01_user_mid_ix` (`middlename`),
  KEY `mdl01_user_alt_ix` (`alternatename`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='One record for each person';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_user`
--

LOCK TABLES `mdl01_user` WRITE;
/*!40000 ALTER TABLE `mdl01_user` DISABLE KEYS */;
INSERT INTO `mdl01_user` VALUES (1,'manual',1,0,0,0,1,'guest','$2y$10$yLzq5aZtTgDceNUUwj4jLO3Hjc28Uk6zANAR7z1el70d1GYt2MVCu','','ゲストユーザ',' ','root@localhost',0,'','','','','','','','','','','','','ja','gregorian','','99',0,0,0,0,'','',0,'','このユーザはいくつかのコースに閲覧のみ許可された特別ユーザです。',1,1,0,2,1,0,0,1525171681,0,NULL,NULL,NULL,NULL,NULL),(2,'manual',1,0,0,0,1,'admin','adminsetuppending','','管理','ユーザ','',0,'','','','','','','','','','','','','ja','gregorian','','99',0,0,0,0,'10.0.2.2','',0,'',NULL,1,1,0,1,1,0,0,1525171681,0,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `mdl01_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_user_devices`
--

DROP TABLE IF EXISTS `mdl01_user_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_user_devices` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `appid` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `model` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `platform` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pushid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_userdevi_pususe_uix` (`pushid`,`userid`),
  KEY `mdl01_userdevi_uuiuse_ix` (`uuid`,`userid`),
  KEY `mdl01_userdevi_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table stores user''s mobile devices information in order';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_user_devices`
--

LOCK TABLES `mdl01_user_devices` WRITE;
/*!40000 ALTER TABLE `mdl01_user_devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_user_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_user_enrolments`
--

DROP TABLE IF EXISTS `mdl01_user_enrolments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_user_enrolments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `status` bigint(10) NOT NULL DEFAULT '0',
  `enrolid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `timestart` bigint(10) NOT NULL DEFAULT '0',
  `timeend` bigint(10) NOT NULL DEFAULT '2147483647',
  `modifierid` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_userenro_enruse_uix` (`enrolid`,`userid`),
  KEY `mdl01_userenro_enr_ix` (`enrolid`),
  KEY `mdl01_userenro_use_ix` (`userid`),
  KEY `mdl01_userenro_mod_ix` (`modifierid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Users participating in courses (aka enrolled users) - everyb';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_user_enrolments`
--

LOCK TABLES `mdl01_user_enrolments` WRITE;
/*!40000 ALTER TABLE `mdl01_user_enrolments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_user_enrolments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_user_info_category`
--

DROP TABLE IF EXISTS `mdl01_user_info_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_user_info_category` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Customisable fields categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_user_info_category`
--

LOCK TABLES `mdl01_user_info_category` WRITE;
/*!40000 ALTER TABLE `mdl01_user_info_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_user_info_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_user_info_data`
--

DROP TABLE IF EXISTS `mdl01_user_info_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_user_info_data` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `fieldid` bigint(10) NOT NULL DEFAULT '0',
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataformat` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_userinfodata_usefie_uix` (`userid`,`fieldid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Data for the customisable user fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_user_info_data`
--

LOCK TABLES `mdl01_user_info_data` WRITE;
/*!40000 ALTER TABLE `mdl01_user_info_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_user_info_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_user_info_field`
--

DROP TABLE IF EXISTS `mdl01_user_info_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_user_info_field` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `shortname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shortname',
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `datatype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT '0',
  `categoryid` bigint(10) NOT NULL DEFAULT '0',
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `required` tinyint(2) NOT NULL DEFAULT '0',
  `locked` tinyint(2) NOT NULL DEFAULT '0',
  `visible` smallint(4) NOT NULL DEFAULT '0',
  `forceunique` tinyint(2) NOT NULL DEFAULT '0',
  `signup` tinyint(2) NOT NULL DEFAULT '0',
  `defaultdata` longtext COLLATE utf8mb4_unicode_ci,
  `defaultdataformat` tinyint(2) NOT NULL DEFAULT '0',
  `param1` longtext COLLATE utf8mb4_unicode_ci,
  `param2` longtext COLLATE utf8mb4_unicode_ci,
  `param3` longtext COLLATE utf8mb4_unicode_ci,
  `param4` longtext COLLATE utf8mb4_unicode_ci,
  `param5` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Customisable user profile fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_user_info_field`
--

LOCK TABLES `mdl01_user_info_field` WRITE;
/*!40000 ALTER TABLE `mdl01_user_info_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_user_info_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_user_lastaccess`
--

DROP TABLE IF EXISTS `mdl01_user_lastaccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_user_lastaccess` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `timeaccess` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_userlast_usecou_uix` (`userid`,`courseid`),
  KEY `mdl01_userlast_use_ix` (`userid`),
  KEY `mdl01_userlast_cou_ix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='To keep track of course page access times, used in online pa';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_user_lastaccess`
--

LOCK TABLES `mdl01_user_lastaccess` WRITE;
/*!40000 ALTER TABLE `mdl01_user_lastaccess` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_user_lastaccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_user_password_history`
--

DROP TABLE IF EXISTS `mdl01_user_password_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_user_password_history` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_userpasshist_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='A rotating log of hashes of previously used passwords for ea';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_user_password_history`
--

LOCK TABLES `mdl01_user_password_history` WRITE;
/*!40000 ALTER TABLE `mdl01_user_password_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_user_password_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_user_password_resets`
--

DROP TABLE IF EXISTS `mdl01_user_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_user_password_resets` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `timerequested` bigint(10) NOT NULL,
  `timererequested` bigint(10) NOT NULL DEFAULT '0',
  `token` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl01_userpassrese_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='table tracking password reset confirmation tokens';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_user_password_resets`
--

LOCK TABLES `mdl01_user_password_resets` WRITE;
/*!40000 ALTER TABLE `mdl01_user_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_user_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_user_preferences`
--

DROP TABLE IF EXISTS `mdl01_user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_user_preferences` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(1333) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_userpref_usenam_uix` (`userid`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Allows modules to store arbitrary user preferences';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_user_preferences`
--

LOCK TABLES `mdl01_user_preferences` WRITE;
/*!40000 ALTER TABLE `mdl01_user_preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_user_private_key`
--

DROP TABLE IF EXISTS `mdl01_user_private_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_user_private_key` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `script` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userid` bigint(10) NOT NULL,
  `instance` bigint(10) DEFAULT NULL,
  `iprestriction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validuntil` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_userprivkey_scrval_ix` (`script`,`value`),
  KEY `mdl01_userprivkey_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='access keys used in cookieless scripts - rss, etc.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_user_private_key`
--

LOCK TABLES `mdl01_user_private_key` WRITE;
/*!40000 ALTER TABLE `mdl01_user_private_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_user_private_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_wiki`
--

DROP TABLE IF EXISTS `mdl01_wiki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_wiki` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Wiki',
  `intro` longtext COLLATE utf8mb4_unicode_ci,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `firstpagetitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'First Page',
  `wikimode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'collaborative',
  `defaultformat` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'creole',
  `forceformat` tinyint(1) NOT NULL DEFAULT '1',
  `editbegin` bigint(10) NOT NULL DEFAULT '0',
  `editend` bigint(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_wiki_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores Wiki activity configuration';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_wiki`
--

LOCK TABLES `mdl01_wiki` WRITE;
/*!40000 ALTER TABLE `mdl01_wiki` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_wiki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_wiki_links`
--

DROP TABLE IF EXISTS `mdl01_wiki_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_wiki_links` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `subwikiid` bigint(10) NOT NULL DEFAULT '0',
  `frompageid` bigint(10) NOT NULL DEFAULT '0',
  `topageid` bigint(10) NOT NULL DEFAULT '0',
  `tomissingpage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_wikilink_fro_ix` (`frompageid`),
  KEY `mdl01_wikilink_sub_ix` (`subwikiid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Page wiki links';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_wiki_links`
--

LOCK TABLES `mdl01_wiki_links` WRITE;
/*!40000 ALTER TABLE `mdl01_wiki_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_wiki_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_wiki_locks`
--

DROP TABLE IF EXISTS `mdl01_wiki_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_wiki_locks` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `pageid` bigint(10) NOT NULL DEFAULT '0',
  `sectionname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `lockedat` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Manages page locks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_wiki_locks`
--

LOCK TABLES `mdl01_wiki_locks` WRITE;
/*!40000 ALTER TABLE `mdl01_wiki_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_wiki_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_wiki_pages`
--

DROP TABLE IF EXISTS `mdl01_wiki_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_wiki_pages` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `subwikiid` bigint(10) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'title',
  `cachedcontent` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `timerendered` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `pageviews` bigint(10) NOT NULL DEFAULT '0',
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_wikipage_subtituse_uix` (`subwikiid`,`title`,`userid`),
  KEY `mdl01_wikipage_sub_ix` (`subwikiid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores wiki pages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_wiki_pages`
--

LOCK TABLES `mdl01_wiki_pages` WRITE;
/*!40000 ALTER TABLE `mdl01_wiki_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_wiki_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_wiki_subwikis`
--

DROP TABLE IF EXISTS `mdl01_wiki_subwikis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_wiki_subwikis` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `wikiid` bigint(10) NOT NULL DEFAULT '0',
  `groupid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_wikisubw_wikgrouse_uix` (`wikiid`,`groupid`,`userid`),
  KEY `mdl01_wikisubw_wik_ix` (`wikiid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores subwiki instances';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_wiki_subwikis`
--

LOCK TABLES `mdl01_wiki_subwikis` WRITE;
/*!40000 ALTER TABLE `mdl01_wiki_subwikis` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_wiki_subwikis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_wiki_synonyms`
--

DROP TABLE IF EXISTS `mdl01_wiki_synonyms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_wiki_synonyms` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `subwikiid` bigint(10) NOT NULL DEFAULT '0',
  `pageid` bigint(10) NOT NULL DEFAULT '0',
  `pagesynonym` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pagesynonym',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_wikisyno_pagpag_uix` (`pageid`,`pagesynonym`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores wiki pages synonyms';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_wiki_synonyms`
--

LOCK TABLES `mdl01_wiki_synonyms` WRITE;
/*!40000 ALTER TABLE `mdl01_wiki_synonyms` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_wiki_synonyms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_wiki_versions`
--

DROP TABLE IF EXISTS `mdl01_wiki_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_wiki_versions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `pageid` bigint(10) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contentformat` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'creole',
  `version` mediumint(5) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_wikivers_pag_ix` (`pageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores wiki page history';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_wiki_versions`
--

LOCK TABLES `mdl01_wiki_versions` WRITE;
/*!40000 ALTER TABLE `mdl01_wiki_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_wiki_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_workshop`
--

DROP TABLE IF EXISTS `mdl01_workshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_workshop` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_unicode_ci,
  `introformat` smallint(3) NOT NULL DEFAULT '0',
  `instructauthors` longtext COLLATE utf8mb4_unicode_ci,
  `instructauthorsformat` smallint(3) NOT NULL DEFAULT '0',
  `instructreviewers` longtext COLLATE utf8mb4_unicode_ci,
  `instructreviewersformat` smallint(3) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL,
  `phase` smallint(3) DEFAULT '0',
  `useexamples` tinyint(2) DEFAULT '0',
  `usepeerassessment` tinyint(2) DEFAULT '0',
  `useselfassessment` tinyint(2) DEFAULT '0',
  `grade` decimal(10,5) DEFAULT '80.00000',
  `gradinggrade` decimal(10,5) DEFAULT '20.00000',
  `strategy` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `evaluation` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gradedecimals` smallint(3) DEFAULT '0',
  `nattachments` smallint(3) DEFAULT '0',
  `submissionfiletypes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latesubmissions` tinyint(2) DEFAULT '0',
  `maxbytes` bigint(10) DEFAULT '100000',
  `examplesmode` smallint(3) DEFAULT '0',
  `submissionstart` bigint(10) DEFAULT '0',
  `submissionend` bigint(10) DEFAULT '0',
  `assessmentstart` bigint(10) DEFAULT '0',
  `assessmentend` bigint(10) DEFAULT '0',
  `phaseswitchassessment` tinyint(2) NOT NULL DEFAULT '0',
  `conclusion` longtext COLLATE utf8mb4_unicode_ci,
  `conclusionformat` smallint(3) NOT NULL DEFAULT '1',
  `overallfeedbackmode` smallint(3) DEFAULT '1',
  `overallfeedbackfiles` smallint(3) DEFAULT '0',
  `overallfeedbackfiletypes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overallfeedbackmaxbytes` bigint(10) DEFAULT '100000',
  PRIMARY KEY (`id`),
  KEY `mdl01_work_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table keeps information about the module instances and ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_workshop`
--

LOCK TABLES `mdl01_workshop` WRITE;
/*!40000 ALTER TABLE `mdl01_workshop` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_workshop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_workshop_aggregations`
--

DROP TABLE IF EXISTS `mdl01_workshop_aggregations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_workshop_aggregations` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `gradinggrade` decimal(10,5) DEFAULT NULL,
  `timegraded` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_workaggr_woruse_uix` (`workshopid`,`userid`),
  KEY `mdl01_workaggr_wor_ix` (`workshopid`),
  KEY `mdl01_workaggr_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Aggregated grades for assessment are stored here. The aggreg';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_workshop_aggregations`
--

LOCK TABLES `mdl01_workshop_aggregations` WRITE;
/*!40000 ALTER TABLE `mdl01_workshop_aggregations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_workshop_aggregations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_workshop_assessments`
--

DROP TABLE IF EXISTS `mdl01_workshop_assessments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_workshop_assessments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `submissionid` bigint(10) NOT NULL,
  `reviewerid` bigint(10) NOT NULL,
  `weight` bigint(10) NOT NULL DEFAULT '1',
  `timecreated` bigint(10) DEFAULT '0',
  `timemodified` bigint(10) DEFAULT '0',
  `grade` decimal(10,5) DEFAULT NULL,
  `gradinggrade` decimal(10,5) DEFAULT NULL,
  `gradinggradeover` decimal(10,5) DEFAULT NULL,
  `gradinggradeoverby` bigint(10) DEFAULT NULL,
  `feedbackauthor` longtext COLLATE utf8mb4_unicode_ci,
  `feedbackauthorformat` smallint(3) DEFAULT '0',
  `feedbackauthorattachment` smallint(3) DEFAULT '0',
  `feedbackreviewer` longtext COLLATE utf8mb4_unicode_ci,
  `feedbackreviewerformat` smallint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_workasse_sub_ix` (`submissionid`),
  KEY `mdl01_workasse_gra_ix` (`gradinggradeoverby`),
  KEY `mdl01_workasse_rev_ix` (`reviewerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Info about the made assessment and automatically calculated ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_workshop_assessments`
--

LOCK TABLES `mdl01_workshop_assessments` WRITE;
/*!40000 ALTER TABLE `mdl01_workshop_assessments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_workshop_assessments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_workshop_assessments_old`
--

DROP TABLE IF EXISTS `mdl01_workshop_assessments_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_workshop_assessments_old` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL DEFAULT '0',
  `submissionid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timegraded` bigint(10) NOT NULL DEFAULT '0',
  `timeagreed` bigint(10) NOT NULL DEFAULT '0',
  `grade` double NOT NULL DEFAULT '0',
  `gradinggrade` smallint(3) NOT NULL DEFAULT '0',
  `teachergraded` smallint(3) NOT NULL DEFAULT '0',
  `mailed` smallint(3) NOT NULL DEFAULT '0',
  `resubmission` smallint(3) NOT NULL DEFAULT '0',
  `donotuse` smallint(3) NOT NULL DEFAULT '0',
  `generalcomment` longtext COLLATE utf8mb4_unicode_ci,
  `teachercomment` longtext COLLATE utf8mb4_unicode_ci,
  `newplugin` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_workasseold_use_ix` (`userid`),
  KEY `mdl01_workasseold_mai_ix` (`mailed`),
  KEY `mdl01_workasseold_wor_ix` (`workshopid`),
  KEY `mdl01_workasseold_sub_ix` (`submissionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Legacy workshop_assessments table to be dropped later in Moo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_workshop_assessments_old`
--

LOCK TABLES `mdl01_workshop_assessments_old` WRITE;
/*!40000 ALTER TABLE `mdl01_workshop_assessments_old` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_workshop_assessments_old` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_workshop_comments_old`
--

DROP TABLE IF EXISTS `mdl01_workshop_comments_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_workshop_comments_old` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL DEFAULT '0',
  `assessmentid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `mailed` tinyint(2) NOT NULL DEFAULT '0',
  `comments` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `newplugin` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_workcommold_use_ix` (`userid`),
  KEY `mdl01_workcommold_mai_ix` (`mailed`),
  KEY `mdl01_workcommold_wor_ix` (`workshopid`),
  KEY `mdl01_workcommold_ass_ix` (`assessmentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Legacy workshop_comments table to be dropped later in Moodle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_workshop_comments_old`
--

LOCK TABLES `mdl01_workshop_comments_old` WRITE;
/*!40000 ALTER TABLE `mdl01_workshop_comments_old` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_workshop_comments_old` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_workshop_elements_old`
--

DROP TABLE IF EXISTS `mdl01_workshop_elements_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_workshop_elements_old` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL DEFAULT '0',
  `elementno` smallint(3) NOT NULL DEFAULT '0',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `scale` smallint(3) NOT NULL DEFAULT '0',
  `maxscore` smallint(3) NOT NULL DEFAULT '1',
  `weight` smallint(3) NOT NULL DEFAULT '11',
  `stddev` double NOT NULL DEFAULT '0',
  `totalassessments` bigint(10) NOT NULL DEFAULT '0',
  `newplugin` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_workelemold_wor_ix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Legacy workshop_elements table to be dropped later in Moodle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_workshop_elements_old`
--

LOCK TABLES `mdl01_workshop_elements_old` WRITE;
/*!40000 ALTER TABLE `mdl01_workshop_elements_old` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_workshop_elements_old` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_workshop_grades`
--

DROP TABLE IF EXISTS `mdl01_workshop_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_workshop_grades` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assessmentid` bigint(10) NOT NULL,
  `strategy` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dimensionid` bigint(10) NOT NULL,
  `grade` decimal(10,5) NOT NULL,
  `peercomment` longtext COLLATE utf8mb4_unicode_ci,
  `peercommentformat` smallint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_workgrad_assstrdim_uix` (`assessmentid`,`strategy`,`dimensionid`),
  KEY `mdl01_workgrad_ass_ix` (`assessmentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='How the reviewers filled-up the grading forms, given grades ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_workshop_grades`
--

LOCK TABLES `mdl01_workshop_grades` WRITE;
/*!40000 ALTER TABLE `mdl01_workshop_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_workshop_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_workshop_grades_old`
--

DROP TABLE IF EXISTS `mdl01_workshop_grades_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_workshop_grades_old` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL DEFAULT '0',
  `assessmentid` bigint(10) NOT NULL DEFAULT '0',
  `elementno` bigint(10) NOT NULL DEFAULT '0',
  `feedback` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` smallint(3) NOT NULL DEFAULT '0',
  `newplugin` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_workgradold_wor_ix` (`workshopid`),
  KEY `mdl01_workgradold_ass_ix` (`assessmentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Legacy workshop_grades table to be dropped later in Moodle 2';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_workshop_grades_old`
--

LOCK TABLES `mdl01_workshop_grades_old` WRITE;
/*!40000 ALTER TABLE `mdl01_workshop_grades_old` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_workshop_grades_old` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_workshop_old`
--

DROP TABLE IF EXISTS `mdl01_workshop_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_workshop_old` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `wtype` smallint(3) NOT NULL DEFAULT '0',
  `nelements` smallint(3) NOT NULL DEFAULT '1',
  `nattachments` smallint(3) NOT NULL DEFAULT '0',
  `phase` tinyint(2) NOT NULL DEFAULT '0',
  `format` tinyint(2) NOT NULL DEFAULT '0',
  `gradingstrategy` tinyint(2) NOT NULL DEFAULT '1',
  `resubmit` tinyint(2) NOT NULL DEFAULT '0',
  `agreeassessments` tinyint(2) NOT NULL DEFAULT '0',
  `hidegrades` tinyint(2) NOT NULL DEFAULT '0',
  `anonymous` tinyint(2) NOT NULL DEFAULT '0',
  `includeself` tinyint(2) NOT NULL DEFAULT '0',
  `maxbytes` bigint(10) NOT NULL DEFAULT '100000',
  `submissionstart` bigint(10) NOT NULL DEFAULT '0',
  `assessmentstart` bigint(10) NOT NULL DEFAULT '0',
  `submissionend` bigint(10) NOT NULL DEFAULT '0',
  `assessmentend` bigint(10) NOT NULL DEFAULT '0',
  `releasegrades` bigint(10) NOT NULL DEFAULT '0',
  `grade` smallint(3) NOT NULL DEFAULT '0',
  `gradinggrade` smallint(3) NOT NULL DEFAULT '0',
  `ntassessments` smallint(3) NOT NULL DEFAULT '0',
  `assessmentcomps` smallint(3) NOT NULL DEFAULT '2',
  `nsassessments` smallint(3) NOT NULL DEFAULT '0',
  `overallocation` smallint(3) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `teacherweight` smallint(3) NOT NULL DEFAULT '1',
  `showleaguetable` smallint(3) NOT NULL DEFAULT '0',
  `usepassword` smallint(3) NOT NULL DEFAULT '0',
  `password` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `newplugin` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_workold_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Legacy workshop table to be dropped later in Moodle 2.x';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_workshop_old`
--

LOCK TABLES `mdl01_workshop_old` WRITE;
/*!40000 ALTER TABLE `mdl01_workshop_old` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_workshop_old` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_workshop_rubrics_old`
--

DROP TABLE IF EXISTS `mdl01_workshop_rubrics_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_workshop_rubrics_old` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL DEFAULT '0',
  `elementno` bigint(10) NOT NULL DEFAULT '0',
  `rubricno` smallint(3) NOT NULL DEFAULT '0',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `newplugin` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_workrubrold_wor_ix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Legacy workshop_rubrics table to be dropped later in Moodle ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_workshop_rubrics_old`
--

LOCK TABLES `mdl01_workshop_rubrics_old` WRITE;
/*!40000 ALTER TABLE `mdl01_workshop_rubrics_old` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_workshop_rubrics_old` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_workshop_stockcomments_old`
--

DROP TABLE IF EXISTS `mdl01_workshop_stockcomments_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_workshop_stockcomments_old` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL DEFAULT '0',
  `elementno` bigint(10) NOT NULL DEFAULT '0',
  `comments` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `newplugin` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_workstocold_wor_ix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Legacy workshop_stockcomments table to be dropped later in M';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_workshop_stockcomments_old`
--

LOCK TABLES `mdl01_workshop_stockcomments_old` WRITE;
/*!40000 ALTER TABLE `mdl01_workshop_stockcomments_old` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_workshop_stockcomments_old` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_workshop_submissions`
--

DROP TABLE IF EXISTS `mdl01_workshop_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_workshop_submissions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `example` tinyint(2) DEFAULT '0',
  `authorid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `contentformat` smallint(3) NOT NULL DEFAULT '0',
  `contenttrust` smallint(3) NOT NULL DEFAULT '0',
  `attachment` tinyint(2) DEFAULT '0',
  `grade` decimal(10,5) DEFAULT NULL,
  `gradeover` decimal(10,5) DEFAULT NULL,
  `gradeoverby` bigint(10) DEFAULT NULL,
  `feedbackauthor` longtext COLLATE utf8mb4_unicode_ci,
  `feedbackauthorformat` smallint(3) DEFAULT '0',
  `timegraded` bigint(10) DEFAULT NULL,
  `published` tinyint(2) DEFAULT '0',
  `late` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_worksubm_wor_ix` (`workshopid`),
  KEY `mdl01_worksubm_gra_ix` (`gradeoverby`),
  KEY `mdl01_worksubm_aut_ix` (`authorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Info about the submission and the aggregation of the grade f';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_workshop_submissions`
--

LOCK TABLES `mdl01_workshop_submissions` WRITE;
/*!40000 ALTER TABLE `mdl01_workshop_submissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_workshop_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_workshop_submissions_old`
--

DROP TABLE IF EXISTS `mdl01_workshop_submissions_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_workshop_submissions_old` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `mailed` tinyint(2) NOT NULL DEFAULT '0',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gradinggrade` smallint(3) NOT NULL DEFAULT '0',
  `finalgrade` smallint(3) NOT NULL DEFAULT '0',
  `late` smallint(3) NOT NULL DEFAULT '0',
  `nassessments` bigint(10) NOT NULL DEFAULT '0',
  `newplugin` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl01_worksubmold_use_ix` (`userid`),
  KEY `mdl01_worksubmold_mai_ix` (`mailed`),
  KEY `mdl01_worksubmold_wor_ix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Legacy workshop_submissions table to be dropped later in Moo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_workshop_submissions_old`
--

LOCK TABLES `mdl01_workshop_submissions_old` WRITE;
/*!40000 ALTER TABLE `mdl01_workshop_submissions_old` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_workshop_submissions_old` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_workshopallocation_scheduled`
--

DROP TABLE IF EXISTS `mdl01_workshopallocation_scheduled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_workshopallocation_scheduled` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `enabled` tinyint(2) NOT NULL DEFAULT '0',
  `submissionend` bigint(10) NOT NULL,
  `timeallocated` bigint(10) DEFAULT NULL,
  `settings` longtext COLLATE utf8mb4_unicode_ci,
  `resultstatus` bigint(10) DEFAULT NULL,
  `resultmessage` varchar(1333) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resultlog` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_worksche_wor_uix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores the allocation settings for the scheduled allocator';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_workshopallocation_scheduled`
--

LOCK TABLES `mdl01_workshopallocation_scheduled` WRITE;
/*!40000 ALTER TABLE `mdl01_workshopallocation_scheduled` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_workshopallocation_scheduled` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_workshopeval_best_settings`
--

DROP TABLE IF EXISTS `mdl01_workshopeval_best_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_workshopeval_best_settings` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `comparison` smallint(3) DEFAULT '5',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_workbestsett_wor_uix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Settings for the grading evaluation subplugin Comparison wit';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_workshopeval_best_settings`
--

LOCK TABLES `mdl01_workshopeval_best_settings` WRITE;
/*!40000 ALTER TABLE `mdl01_workshopeval_best_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_workshopeval_best_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_workshopform_accumulative`
--

DROP TABLE IF EXISTS `mdl01_workshopform_accumulative`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_workshopform_accumulative` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `sort` bigint(10) DEFAULT '0',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `descriptionformat` smallint(3) DEFAULT '0',
  `grade` bigint(10) NOT NULL,
  `weight` mediumint(5) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mdl01_workaccu_wor_ix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='The assessment dimensions definitions of Accumulative gradin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_workshopform_accumulative`
--

LOCK TABLES `mdl01_workshopform_accumulative` WRITE;
/*!40000 ALTER TABLE `mdl01_workshopform_accumulative` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_workshopform_accumulative` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_workshopform_comments`
--

DROP TABLE IF EXISTS `mdl01_workshopform_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_workshopform_comments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `sort` bigint(10) DEFAULT '0',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `descriptionformat` smallint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_workcomm_wor_ix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='The assessment dimensions definitions of Comments strategy f';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_workshopform_comments`
--

LOCK TABLES `mdl01_workshopform_comments` WRITE;
/*!40000 ALTER TABLE `mdl01_workshopform_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_workshopform_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_workshopform_numerrors`
--

DROP TABLE IF EXISTS `mdl01_workshopform_numerrors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_workshopform_numerrors` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `sort` bigint(10) DEFAULT '0',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `descriptionformat` smallint(3) DEFAULT '0',
  `descriptiontrust` bigint(10) DEFAULT NULL,
  `grade0` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade1` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` mediumint(5) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mdl01_worknume_wor_ix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='The assessment dimensions definitions of Number of errors gr';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_workshopform_numerrors`
--

LOCK TABLES `mdl01_workshopform_numerrors` WRITE;
/*!40000 ALTER TABLE `mdl01_workshopform_numerrors` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_workshopform_numerrors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_workshopform_numerrors_map`
--

DROP TABLE IF EXISTS `mdl01_workshopform_numerrors_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_workshopform_numerrors_map` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `nonegative` bigint(10) NOT NULL,
  `grade` decimal(10,5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_worknumemap_wornon_uix` (`workshopid`,`nonegative`),
  KEY `mdl01_worknumemap_wor_ix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This maps the number of errors to a percentual grade for sub';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_workshopform_numerrors_map`
--

LOCK TABLES `mdl01_workshopform_numerrors_map` WRITE;
/*!40000 ALTER TABLE `mdl01_workshopform_numerrors_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_workshopform_numerrors_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_workshopform_rubric`
--

DROP TABLE IF EXISTS `mdl01_workshopform_rubric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_workshopform_rubric` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `sort` bigint(10) DEFAULT '0',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `descriptionformat` smallint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_workrubr_wor_ix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='The assessment dimensions definitions of Rubric grading stra';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_workshopform_rubric`
--

LOCK TABLES `mdl01_workshopform_rubric` WRITE;
/*!40000 ALTER TABLE `mdl01_workshopform_rubric` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_workshopform_rubric` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_workshopform_rubric_config`
--

DROP TABLE IF EXISTS `mdl01_workshopform_rubric_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_workshopform_rubric_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `layout` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT 'list',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl01_workrubrconf_wor_uix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Configuration table for the Rubric grading strategy';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_workshopform_rubric_config`
--

LOCK TABLES `mdl01_workshopform_rubric_config` WRITE;
/*!40000 ALTER TABLE `mdl01_workshopform_rubric_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_workshopform_rubric_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl01_workshopform_rubric_levels`
--

DROP TABLE IF EXISTS `mdl01_workshopform_rubric_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl01_workshopform_rubric_levels` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `dimensionid` bigint(10) NOT NULL,
  `grade` decimal(10,5) NOT NULL,
  `definition` longtext COLLATE utf8mb4_unicode_ci,
  `definitionformat` smallint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl01_workrubrleve_dim_ix` (`dimensionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='The definition of rubric rating scales';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl01_workshopform_rubric_levels`
--

LOCK TABLES `mdl01_workshopform_rubric_levels` WRITE;
/*!40000 ALTER TABLE `mdl01_workshopform_rubric_levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl01_workshopform_rubric_levels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-01 19:51:47
