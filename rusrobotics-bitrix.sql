-- --------------------------------------------------------
-- Хост:                         localhost
-- Версия сервера:               5.7.24 - MySQL Community Server (GPL)
-- Операционная система:         Win64
-- HeidiSQL Версия:              10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_admin_notify
DROP TABLE IF EXISTS `b_admin_notify`;
CREATE TABLE IF NOT EXISTS `b_admin_notify` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci,
  `ENABLE_CLOSE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `PUBLIC_SECTION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `NOTIFY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M',
  PRIMARY KEY (`ID`),
  KEY `IX_AD_TAG` (`TAG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_admin_notify: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_admin_notify` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_admin_notify` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_admin_notify_lang
DROP TABLE IF EXISTS `b_admin_notify_lang`;
CREATE TABLE IF NOT EXISTS `b_admin_notify_lang` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `NOTIFY_ID` int(18) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_ADM_NTFY_LANG` (`NOTIFY_ID`,`LID`),
  KEY `IX_ADM_NTFY_LID` (`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_admin_notify_lang: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_admin_notify_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_admin_notify_lang` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_agent
DROP TABLE IF EXISTS `b_agent`;
CREATE TABLE IF NOT EXISTS `b_agent` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(18) NOT NULL DEFAULT '100',
  `NAME` text COLLATE utf8_unicode_ci,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `LAST_EXEC` datetime DEFAULT NULL,
  `NEXT_EXEC` datetime NOT NULL,
  `DATE_CHECK` datetime DEFAULT NULL,
  `AGENT_INTERVAL` int(18) DEFAULT '86400',
  `IS_PERIOD` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `USER_ID` int(18) DEFAULT NULL,
  `RUNNING` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `ix_act_next_exec` (`ACTIVE`,`NEXT_EXEC`),
  KEY `ix_agent_user_id` (`USER_ID`),
  KEY `ix_agent_name` (`NAME`(100))
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_agent: ~24 rows (приблизительно)
/*!40000 ALTER TABLE `b_agent` DISABLE KEYS */;
REPLACE INTO `b_agent` (`ID`, `MODULE_ID`, `SORT`, `NAME`, `ACTIVE`, `LAST_EXEC`, `NEXT_EXEC`, `DATE_CHECK`, `AGENT_INTERVAL`, `IS_PERIOD`, `USER_ID`, `RUNNING`) VALUES
	(1, 'main', 100, '\\Bitrix\\Main\\Analytics\\CounterDataTable::submitData();', 'Y', '2019-12-30 13:00:51', '2019-12-30 13:01:51', NULL, 60, 'N', NULL, 'N'),
	(2, 'main', 100, 'CCaptchaAgent::DeleteOldCaptcha(3600);', 'Y', '2019-12-30 13:00:51', '2019-12-30 14:00:51', NULL, 3600, 'N', NULL, 'N'),
	(3, 'main', 100, 'CSiteCheckerTest::CommonTest();', 'Y', '2019-12-30 12:16:09', '2019-12-31 12:16:09', NULL, 86400, 'N', NULL, 'N'),
	(4, 'main', 100, 'CEvent::CleanUpAgent();', 'Y', '2019-12-30 12:16:09', '2019-12-31 12:16:09', NULL, 86400, 'N', NULL, 'N'),
	(5, 'main', 100, 'CUser::CleanUpHitAuthAgent();', 'Y', '2019-12-30 12:16:09', '2019-12-31 12:16:09', NULL, 86400, 'N', NULL, 'N'),
	(6, 'main', 100, 'CUndo::CleanUpOld();', 'Y', '2019-12-30 12:16:09', '2019-12-31 12:16:09', NULL, 86400, 'N', NULL, 'N'),
	(7, 'main', 100, 'CUserCounter::DeleteOld();', 'Y', '2019-12-30 12:16:09', '2019-12-31 12:16:09', NULL, 86400, 'N', NULL, 'N'),
	(8, 'main', 100, '\\Bitrix\\Main\\UI\\Viewer\\FilePreviewTable::deleteOldAgent(22, 20);', 'Y', '2019-12-30 12:16:09', '2019-12-31 12:16:09', NULL, 86400, 'N', NULL, 'N'),
	(9, 'main', 100, 'CUser::AuthActionsCleanUpAgent();', 'Y', '2019-12-30 12:16:09', '2019-12-31 12:16:09', NULL, 86400, 'N', NULL, 'N'),
	(10, 'main', 100, 'CUser::CleanUpAgent();', 'Y', '2019-12-30 12:16:09', '2019-12-31 12:16:09', NULL, 86400, 'N', NULL, 'N'),
	(11, 'main', 100, 'CUser::DeactivateAgent();', 'Y', '2019-12-30 12:16:09', '2019-12-31 12:16:09', NULL, 86400, 'N', NULL, 'N'),
	(12, 'main', 100, 'CEventLog::CleanUpAgent();', 'Y', '2019-12-30 12:16:09', '2019-12-31 12:16:09', NULL, 86400, 'N', NULL, 'N'),
	(13, 'clouds', 100, 'CCloudStorage::CleanUp();', 'Y', '2019-12-29 14:47:55', '2019-12-30 14:47:55', NULL, 86400, 'N', NULL, 'N'),
	(14, 'landing', 100, 'Bitrix\\Landing\\Agent::clearRecycle();', 'Y', '2019-12-30 11:50:52', '2019-12-30 13:50:52', NULL, 7200, 'N', NULL, 'N'),
	(15, 'landing', 100, 'Bitrix\\Landing\\Agent::clearFiles(30);', 'Y', '2019-12-30 13:00:51', '2019-12-30 14:00:51', NULL, 3600, 'N', NULL, 'N'),
	(16, 'messageservice', 100, '\\Bitrix\\MessageService\\Queue::cleanUpAgent();', 'Y', '2019-12-30 11:50:52', '2019-12-31 00:00:00', NULL, 86400, 'Y', NULL, 'N'),
	(17, 'rest', 100, 'Bitrix\\Rest\\Marketplace\\Client::getNumUpdates();', 'Y', '2019-12-29 14:47:55', '2019-12-30 14:47:55', NULL, 86400, 'N', NULL, 'N'),
	(18, 'rest', 100, '\\Bitrix\\Rest\\EventOfflineTable::cleanProcessAgent();', 'Y', '2019-12-29 14:47:55', '2019-12-30 14:47:55', NULL, 86400, 'N', NULL, 'N'),
	(19, 'rest', 100, '\\Bitrix\\Rest\\StatTable::cleanUpAgent();', 'Y', '2019-12-29 14:47:55', '2019-12-30 14:47:55', NULL, 86400, 'N', NULL, 'N'),
	(20, 'search', 10, 'CSearchSuggest::CleanUpAgent();', 'Y', '2019-12-29 14:47:55', '2019-12-30 14:47:55', NULL, 86400, 'N', NULL, 'N'),
	(21, 'search', 10, 'CSearchStatistic::CleanUpAgent();', 'Y', '2019-12-29 14:47:55', '2019-12-30 14:47:55', NULL, 86400, 'N', NULL, 'N'),
	(22, 'seo', 100, 'Bitrix\\Seo\\Engine\\YandexDirect::updateAgent();', 'Y', '2019-12-30 13:00:51', '2019-12-30 14:00:51', NULL, 3600, 'N', NULL, 'N'),
	(23, 'seo', 100, 'Bitrix\\Seo\\Adv\\LogTable::clean();', 'Y', '2019-12-29 14:47:55', '2019-12-30 14:47:55', NULL, 86400, 'N', NULL, 'N'),
	(24, 'seo', 100, 'Bitrix\\Seo\\Adv\\Auto::checkQuantityAgent();', 'Y', '2019-12-30 13:00:51', '2019-12-30 14:00:51', NULL, 3600, 'N', NULL, 'N');
/*!40000 ALTER TABLE `b_agent` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_app_password
DROP TABLE IF EXISTS `b_app_password`;
CREATE TABLE IF NOT EXISTS `b_app_password` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `APPLICATION_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DIGEST_PASSWORD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_LOGIN` datetime DEFAULT NULL,
  `LAST_IP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SYSCOMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_app_password_user` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_app_password: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_app_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_app_password` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_b24connector_buttons
DROP TABLE IF EXISTS `b_b24connector_buttons`;
CREATE TABLE IF NOT EXISTS `b_b24connector_buttons` (
  `ID` int(11) NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `ADD_DATE` datetime NOT NULL,
  `ADD_BY` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SCRIPT` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_b24connector_buttons: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_b24connector_buttons` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_b24connector_buttons` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_bitrixcloud_option
DROP TABLE IF EXISTS `b_bitrixcloud_option`;
CREATE TABLE IF NOT EXISTS `b_bitrixcloud_option` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL,
  `PARAM_KEY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAM_VALUE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_bitrixcloud_option_1` (`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_bitrixcloud_option: ~4 rows (приблизительно)
/*!40000 ALTER TABLE `b_bitrixcloud_option` DISABLE KEYS */;
REPLACE INTO `b_bitrixcloud_option` (`ID`, `NAME`, `SORT`, `PARAM_KEY`, `PARAM_VALUE`) VALUES
	(1, 'backup_quota', 0, '0', '0'),
	(2, 'backup_total_size', 0, '0', '0'),
	(3, 'backup_last_backup_time', 0, '0', '1577445774'),
	(4, 'monitoring_expire_time', 0, '0', '1577698990');
/*!40000 ALTER TABLE `b_bitrixcloud_option` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_cache_tag
DROP TABLE IF EXISTS `b_cache_tag`;
CREATE TABLE IF NOT EXISTS `b_cache_tag` (
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CACHE_SALT` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RELATIVE_PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAG` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `ix_b_cache_tag_0` (`SITE_ID`,`CACHE_SALT`,`RELATIVE_PATH`(50)),
  KEY `ix_b_cache_tag_1` (`TAG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_cache_tag: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `b_cache_tag` DISABLE KEYS */;
REPLACE INTO `b_cache_tag` (`SITE_ID`, `CACHE_SALT`, `RELATIVE_PATH`, `TAG`) VALUES
	(NULL, NULL, '0:1577698278', '**'),
	('s1', '/2f9', '/s1/bitrix/news.detail/2f9', 'iblock_id_1');
/*!40000 ALTER TABLE `b_cache_tag` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_captcha
DROP TABLE IF EXISTS `b_captcha`;
CREATE TABLE IF NOT EXISTS `b_captcha` (
  `ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `IP` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL,
  UNIQUE KEY `UX_B_CAPTCHA` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_captcha: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_captcha` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_captcha` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_checklist
DROP TABLE IF EXISTS `b_checklist`;
CREATE TABLE IF NOT EXISTS `b_checklist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_CREATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TESTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMPANY_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PICTURE` int(11) DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL,
  `SUCCESS` int(11) DEFAULT NULL,
  `FAILED` int(11) DEFAULT NULL,
  `PENDING` int(11) DEFAULT NULL,
  `SKIP` int(11) DEFAULT NULL,
  `STATE` longtext COLLATE utf8_unicode_ci,
  `REPORT_COMMENT` text COLLATE utf8_unicode_ci,
  `REPORT` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `EMAIL` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PHONE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SENDED_TO_BITRIX` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `HIDDEN` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_checklist: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_checklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_checklist` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_clouds_copy_queue
DROP TABLE IF EXISTS `b_clouds_copy_queue`;
CREATE TABLE IF NOT EXISTS `b_clouds_copy_queue` (
  `ID` int(32) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL,
  `OP` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `SOURCE_BUCKET_ID` int(11) NOT NULL,
  `SOURCE_FILE_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `TARGET_BUCKET_ID` int(11) NOT NULL,
  `TARGET_FILE_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_SIZE` int(11) NOT NULL DEFAULT '-1',
  `FILE_POS` int(11) NOT NULL DEFAULT '0',
  `FAIL_COUNTER` int(11) NOT NULL DEFAULT '0',
  `STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ERROR_MESSAGE` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_clouds_copy_queue: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_clouds_copy_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_copy_queue` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_clouds_delete_queue
DROP TABLE IF EXISTS `b_clouds_delete_queue`;
CREATE TABLE IF NOT EXISTS `b_clouds_delete_queue` (
  `ID` int(32) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL,
  `BUCKET_ID` int(11) NOT NULL,
  `FILE_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_clouds_delete_queue_1` (`BUCKET_ID`,`FILE_PATH`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_clouds_delete_queue: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_clouds_delete_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_delete_queue` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_clouds_file_bucket
DROP TABLE IF EXISTS `b_clouds_file_bucket`;
CREATE TABLE IF NOT EXISTS `b_clouds_file_bucket` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SORT` int(11) DEFAULT '500',
  `READ_ONLY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `SERVICE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BUCKET` varchar(63) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOCATION` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CNAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_COUNT` int(11) DEFAULT '0',
  `FILE_SIZE` double DEFAULT '0',
  `LAST_FILE_ID` int(11) DEFAULT NULL,
  `PREFIX` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `FILE_RULES` text COLLATE utf8_unicode_ci,
  `FAILOVER_ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `FAILOVER_BUCKET_ID` int(11) DEFAULT NULL,
  `FAILOVER_COPY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `FAILOVER_DELETE` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `FAILOVER_DELETE_DELAY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_clouds_file_bucket: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_clouds_file_bucket` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_file_bucket` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_clouds_file_resize
DROP TABLE IF EXISTS `b_clouds_file_resize`;
CREATE TABLE IF NOT EXISTS `b_clouds_file_resize` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL,
  `ERROR_CODE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `FILE_ID` int(11) DEFAULT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci,
  `FROM_PATH` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_PATH` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_file_resize_ts` (`TIMESTAMP_X`),
  KEY `ix_b_file_resize_path` (`TO_PATH`(100)),
  KEY `ix_b_file_resize_file` (`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_clouds_file_resize: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_clouds_file_resize` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_file_resize` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_clouds_file_save
DROP TABLE IF EXISTS `b_clouds_file_save`;
CREATE TABLE IF NOT EXISTS `b_clouds_file_save` (
  `ID` int(32) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL,
  `BUCKET_ID` int(11) NOT NULL,
  `SUBDIR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_EXTERNAL_ID` (`EXTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_clouds_file_save: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_clouds_file_save` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_file_save` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_clouds_file_upload
DROP TABLE IF EXISTS `b_clouds_file_upload`;
CREATE TABLE IF NOT EXISTS `b_clouds_file_upload` (
  `ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `FILE_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  `TMP_FILE` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BUCKET_ID` int(11) NOT NULL,
  `PART_SIZE` int(11) NOT NULL,
  `PART_NO` int(11) NOT NULL,
  `PART_FAIL_COUNTER` int(11) NOT NULL,
  `NEXT_STEP` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_clouds_file_upload: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_clouds_file_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_file_upload` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_component_params
DROP TABLE IF EXISTS `b_component_params`;
CREATE TABLE IF NOT EXISTS `b_component_params` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `COMPONENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TEMPLATE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REAL_PATH` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SEF_MODE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SEF_FOLDER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `START_CHAR` int(11) NOT NULL,
  `END_CHAR` int(11) NOT NULL,
  `PARAMETERS` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `ix_comp_params_name` (`COMPONENT_NAME`),
  KEY `ix_comp_params_path` (`SITE_ID`,`REAL_PATH`),
  KEY `ix_comp_params_sname` (`SITE_ID`,`COMPONENT_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_component_params: ~5 rows (приблизительно)
/*!40000 ALTER TABLE `b_component_params` DISABLE KEYS */;
REPLACE INTO `b_component_params` (`ID`, `SITE_ID`, `COMPONENT_NAME`, `TEMPLATE_NAME`, `REAL_PATH`, `SEF_MODE`, `SEF_FOLDER`, `START_CHAR`, `END_CHAR`, `PARAMETERS`) VALUES
	(10, 's1', 'bitrix:news.detail', 'article_detail', '/article.php', 'N', NULL, 98, 3286, 'a:47:{s:18:"ACTIVE_DATE_FORMAT";s:5:"d.m.Y";s:17:"ADD_ELEMENT_CHAIN";s:1:"N";s:18:"ADD_SECTIONS_CHAIN";s:1:"Y";s:9:"AJAX_MODE";s:1:"N";s:22:"AJAX_OPTION_ADDITIONAL";s:0:"";s:19:"AJAX_OPTION_HISTORY";s:1:"N";s:16:"AJAX_OPTION_JUMP";s:1:"N";s:17:"AJAX_OPTION_STYLE";s:1:"Y";s:13:"BROWSER_TITLE";s:1:"-";s:12:"CACHE_GROUPS";s:1:"Y";s:10:"CACHE_TIME";s:8:"36000000";s:10:"CACHE_TYPE";s:1:"A";s:11:"CHECK_DATES";s:1:"Y";s:10:"DETAIL_URL";s:38:"#SITE_DIR#/articles/detail.php?ID=#ID#";s:20:"DISPLAY_BOTTOM_PAGER";s:1:"Y";s:12:"DISPLAY_DATE";s:1:"Y";s:12:"DISPLAY_NAME";s:1:"Y";s:15:"DISPLAY_PICTURE";s:1:"Y";s:20:"DISPLAY_PREVIEW_TEXT";s:1:"Y";s:17:"DISPLAY_TOP_PAGER";s:1:"N";s:12:"ELEMENT_CODE";s:0:"";s:10:"ELEMENT_ID";s:18:"={$_REQUEST["ID"]}";s:10:"FIELD_CODE";a:2:{i:0;s:0:"";i:1;s:0:"";}s:9:"IBLOCK_ID";s:1:"1";s:11:"IBLOCK_TYPE";s:8:"articles";s:10:"IBLOCK_URL";s:0:"";s:25:"INCLUDE_IBLOCK_INTO_CHAIN";s:1:"Y";s:11:"MESSAGE_404";s:0:"";s:16:"META_DESCRIPTION";s:1:"-";s:13:"META_KEYWORDS";s:1:"-";s:22:"PAGER_BASE_LINK_ENABLE";s:1:"N";s:14:"PAGER_SHOW_ALL";s:1:"N";s:14:"PAGER_TEMPLATE";s:8:".default";s:11:"PAGER_TITLE";s:16:"Страница";s:13:"PROPERTY_CODE";a:2:{i:0;s:0:"";i:1;s:0:"";}s:17:"SET_BROWSER_TITLE";s:1:"Y";s:17:"SET_CANONICAL_URL";s:1:"N";s:17:"SET_LAST_MODIFIED";s:1:"N";s:20:"SET_META_DESCRIPTION";s:1:"Y";s:17:"SET_META_KEYWORDS";s:1:"Y";s:14:"SET_STATUS_404";s:1:"N";s:9:"SET_TITLE";s:1:"Y";s:8:"SHOW_404";s:1:"N";s:20:"STRICT_SECTION_CHECK";s:1:"N";s:15:"USE_PERMISSIONS";s:1:"N";s:9:"USE_SHARE";s:1:"N";s:18:"COMPONENT_TEMPLATE";s:8:".default";}'),
	(15, 's1', 'bitrix:menu', 'main_menu', '/index.php', 'N', NULL, 101, 822, 'a:10:{s:18:"ALLOW_MULTI_SELECT";s:1:"N";s:15:"CHILD_MENU_TYPE";s:4:"left";s:5:"DELAY";s:1:"N";s:9:"MAX_LEVEL";s:1:"1";s:19:"MENU_CACHE_GET_VARS";a:1:{i:0;s:0:"";}s:15:"MENU_CACHE_TIME";s:4:"3600";s:15:"MENU_CACHE_TYPE";s:1:"N";s:21:"MENU_CACHE_USE_GROUPS";s:1:"Y";s:14:"ROOT_MENU_TYPE";s:3:"top";s:7:"USE_EXT";s:1:"N";}'),
	(16, 's1', 'bitrix:news.list', 'rr_blog', '/index.php', 'N', NULL, 837, 2407, 'a:51:{s:18:"ACTIVE_DATE_FORMAT";s:5:"d.m.Y";s:18:"ADD_SECTIONS_CHAIN";s:1:"Y";s:9:"AJAX_MODE";s:1:"N";s:22:"AJAX_OPTION_ADDITIONAL";s:0:"";s:19:"AJAX_OPTION_HISTORY";s:1:"N";s:16:"AJAX_OPTION_JUMP";s:1:"N";s:17:"AJAX_OPTION_STYLE";s:1:"Y";s:12:"CACHE_FILTER";s:1:"N";s:12:"CACHE_GROUPS";s:1:"Y";s:10:"CACHE_TIME";s:8:"36000000";s:10:"CACHE_TYPE";s:1:"N";s:11:"CHECK_DATES";s:1:"Y";s:10:"DETAIL_URL";s:0:"";s:20:"DISPLAY_BOTTOM_PAGER";s:1:"Y";s:12:"DISPLAY_DATE";s:1:"Y";s:12:"DISPLAY_NAME";s:1:"Y";s:15:"DISPLAY_PICTURE";s:1:"Y";s:20:"DISPLAY_PREVIEW_TEXT";s:1:"Y";s:17:"DISPLAY_TOP_PAGER";s:1:"N";s:10:"FIELD_CODE";a:2:{i:0;s:0:"";i:1;s:0:"";}s:11:"FILTER_NAME";s:0:"";s:24:"HIDE_LINK_WHEN_NO_DETAIL";s:1:"N";s:9:"IBLOCK_ID";s:1:"1";s:11:"IBLOCK_TYPE";s:8:"articles";s:25:"INCLUDE_IBLOCK_INTO_CHAIN";s:1:"Y";s:19:"INCLUDE_SUBSECTIONS";s:1:"Y";s:11:"MESSAGE_404";s:0:"";s:10:"NEWS_COUNT";s:2:"20";s:22:"PAGER_BASE_LINK_ENABLE";s:1:"N";s:20:"PAGER_DESC_NUMBERING";s:1:"N";s:31:"PAGER_DESC_NUMBERING_CACHE_TIME";s:5:"36000";s:14:"PAGER_SHOW_ALL";s:1:"N";s:17:"PAGER_SHOW_ALWAYS";s:1:"N";s:14:"PAGER_TEMPLATE";s:8:".default";s:11:"PAGER_TITLE";s:14:"Новости";s:14:"PARENT_SECTION";s:0:"";s:19:"PARENT_SECTION_CODE";s:0:"";s:20:"PREVIEW_TRUNCATE_LEN";s:0:"";s:13:"PROPERTY_CODE";a:2:{i:0;s:0:"";i:1;s:0:"";}s:17:"SET_BROWSER_TITLE";s:1:"Y";s:17:"SET_LAST_MODIFIED";s:1:"N";s:20:"SET_META_DESCRIPTION";s:1:"Y";s:17:"SET_META_KEYWORDS";s:1:"Y";s:14:"SET_STATUS_404";s:1:"N";s:9:"SET_TITLE";s:1:"Y";s:8:"SHOW_404";s:1:"N";s:8:"SORT_BY1";s:11:"ACTIVE_FROM";s:8:"SORT_BY2";s:4:"SORT";s:11:"SORT_ORDER1";s:4:"DESC";s:11:"SORT_ORDER2";s:3:"ASC";s:20:"STRICT_SECTION_CHECK";s:1:"N";}'),
	(20, 's1', 'bitrix:menu', 'main_menu', '/bitrix/templates/blog_rr_detail_article/header.php', 'N', NULL, 528, 983, 'a:10:{s:14:"ROOT_MENU_TYPE";s:3:"top";s:9:"MAX_LEVEL";s:1:"1";s:15:"CHILD_MENU_TYPE";s:3:"top";s:7:"USE_EXT";s:1:"Y";s:5:"DELAY";s:1:"N";s:18:"ALLOW_MULTI_SELECT";s:1:"Y";s:15:"MENU_CACHE_TYPE";s:1:"N";s:15:"MENU_CACHE_TIME";s:4:"3600";s:21:"MENU_CACHE_USE_GROUPS";s:1:"Y";s:19:"MENU_CACHE_GET_VARS";s:0:"";}'),
	(22, 's1', 'bitrix:menu', 'main_menu', '/bitrix/templates/blog_rr/header.php', 'N', NULL, 528, 981, 'a:10:{s:14:"ROOT_MENU_TYPE";s:3:"top";s:9:"MAX_LEVEL";s:1:"1";s:15:"CHILD_MENU_TYPE";s:3:"top";s:7:"USE_EXT";s:1:"Y";s:5:"DELAY";s:1:"N";s:18:"ALLOW_MULTI_SELECT";s:1:"Y";s:15:"MENU_CACHE_TYPE";s:1:"N";s:15:"MENU_CACHE_TIME";s:4:"3600";s:21:"MENU_CACHE_USE_GROUPS";s:1:"Y";s:19:"MENU_CACHE_GET_VARS";s:0:"";}');
/*!40000 ALTER TABLE `b_component_params` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_composite_log
DROP TABLE IF EXISTS `b_composite_log`;
CREATE TABLE IF NOT EXISTS `b_composite_log` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HOST` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `URI` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED` datetime NOT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` longtext COLLATE utf8_unicode_ci,
  `AJAX` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `USER_ID` int(18) NOT NULL DEFAULT '0',
  `PAGE_ID` int(18) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `IX_B_COMPOSITE_LOG_PAGE_ID` (`PAGE_ID`),
  KEY `IX_B_COMPOSITE_LOG_HOST` (`HOST`),
  KEY `IX_B_COMPOSITE_LOG_TYPE` (`TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_composite_log: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_composite_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_composite_log` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_composite_page
DROP TABLE IF EXISTS `b_composite_page`;
CREATE TABLE IF NOT EXISTS `b_composite_page` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CACHE_KEY` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `HOST` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `URI` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED` datetime NOT NULL,
  `CHANGED` datetime NOT NULL,
  `LAST_VIEWED` datetime NOT NULL,
  `VIEWS` int(18) NOT NULL DEFAULT '0',
  `REWRITES` int(18) NOT NULL DEFAULT '0',
  `SIZE` int(18) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `IX_B_COMPOSITE_PAGE_CACHE_KEY` (`CACHE_KEY`(100)),
  KEY `IX_B_COMPOSITE_PAGE_VIEWED` (`LAST_VIEWED`),
  KEY `IX_B_COMPOSITE_PAGE_HOST` (`HOST`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_composite_page: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_composite_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_composite_page` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_consent_agreement
DROP TABLE IF EXISTS `b_consent_agreement`;
CREATE TABLE IF NOT EXISTS `b_consent_agreement` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATA_PROVIDER` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AGREEMENT_TEXT` longtext COLLATE utf8_unicode_ci,
  `LABEL_TEXT` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECURITY_CODE` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_CONSENT_AGREEMENT_CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_consent_agreement: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_consent_agreement` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_consent_agreement` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_consent_field
DROP TABLE IF EXISTS `b_consent_field`;
CREATE TABLE IF NOT EXISTS `b_consent_field` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `AGREEMENT_ID` int(18) NOT NULL,
  `CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_CONSENT_FIELD_AG_ID` (`AGREEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_consent_field: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_consent_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_consent_field` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_consent_user_consent
DROP TABLE IF EXISTS `b_consent_user_consent`;
CREATE TABLE IF NOT EXISTS `b_consent_user_consent` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime NOT NULL,
  `AGREEMENT_ID` int(18) NOT NULL,
  `USER_ID` int(18) DEFAULT NULL,
  `IP` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ORIGIN_ID` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ORIGINATOR_ID` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_CONSENT_USER_CONSENT` (`AGREEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_consent_user_consent: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_consent_user_consent` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_consent_user_consent` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_counter_data
DROP TABLE IF EXISTS `b_counter_data`;
CREATE TABLE IF NOT EXISTS `b_counter_data` (
  `ID` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `DATA` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_counter_data: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_counter_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_counter_data` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_culture
DROP TABLE IF EXISTS `b_culture`;
CREATE TABLE IF NOT EXISTS `b_culture` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEEK_START` int(1) DEFAULT '1',
  `CHARSET` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIRECTION` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SHORT_DATE_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'n/j/Y',
  `MEDIUM_DATE_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'M j, Y',
  `LONG_DATE_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'F j, Y',
  `FULL_DATE_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'l, F j, Y',
  `DAY_MONTH_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'M j',
  `SHORT_TIME_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'g:i a',
  `LONG_TIME_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'g:i:s a',
  `AM_VALUE` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'am',
  `PM_VALUE` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'pm',
  `NUMBER_THOUSANDS_SEPARATOR` varchar(10) COLLATE utf8_unicode_ci DEFAULT ',',
  `NUMBER_DECIMAL_SEPARATOR` varchar(10) COLLATE utf8_unicode_ci DEFAULT '.',
  `NUMBER_DECIMALS` tinyint(4) DEFAULT '2',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_culture: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `b_culture` DISABLE KEYS */;
REPLACE INTO `b_culture` (`ID`, `CODE`, `NAME`, `FORMAT_DATE`, `FORMAT_DATETIME`, `FORMAT_NAME`, `WEEK_START`, `CHARSET`, `DIRECTION`, `SHORT_DATE_FORMAT`, `MEDIUM_DATE_FORMAT`, `LONG_DATE_FORMAT`, `FULL_DATE_FORMAT`, `DAY_MONTH_FORMAT`, `SHORT_TIME_FORMAT`, `LONG_TIME_FORMAT`, `AM_VALUE`, `PM_VALUE`, `NUMBER_THOUSANDS_SEPARATOR`, `NUMBER_DECIMAL_SEPARATOR`, `NUMBER_DECIMALS`) VALUES
	(1, 'ru', 'ru', 'DD.MM.YYYY', 'DD.MM.YYYY HH:MI:SS', '#NAME# #LAST_NAME#', 1, 'UTF-8', 'Y', 'd.m.Y', 'j M Y', 'j F Y', 'l, j F Y', 'j F', 'H:i', 'H:i:s', 'am', 'pm', ' ', ',', 2),
	(2, 'en', 'en', 'MM/DD/YYYY', 'MM/DD/YYYY H:MI:SS T', '#NAME# #LAST_NAME#', 0, 'UTF-8', 'Y', 'n/j/Y', 'M j, Y', 'F j, Y', 'l, F j, Y', 'M j', 'g:i a', 'g:i:s a', 'am', 'pm', ',', '.', 2);
/*!40000 ALTER TABLE `b_culture` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_event
DROP TABLE IF EXISTS `b_event`;
CREATE TABLE IF NOT EXISTS `b_event` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_ID` int(18) DEFAULT NULL,
  `LID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `C_FIELDS` longtext COLLATE utf8_unicode_ci,
  `DATE_INSERT` datetime DEFAULT NULL,
  `DATE_EXEC` datetime DEFAULT NULL,
  `SUCCESS_EXEC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DUPLICATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_success` (`SUCCESS_EXEC`),
  KEY `ix_b_event_date_exec` (`DATE_EXEC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_event: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_event` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_event_attachment
DROP TABLE IF EXISTS `b_event_attachment`;
CREATE TABLE IF NOT EXISTS `b_event_attachment` (
  `EVENT_ID` int(18) NOT NULL,
  `FILE_ID` int(18) NOT NULL,
  `IS_FILE_COPIED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`EVENT_ID`,`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_event_attachment: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_event_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_event_attachment` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_event_log
DROP TABLE IF EXISTS `b_event_log`;
CREATE TABLE IF NOT EXISTS `b_event_log` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `SEVERITY` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `AUDIT_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_AGENT` text COLLATE utf8_unicode_ci,
  `REQUEST_URI` text COLLATE utf8_unicode_ci,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(18) DEFAULT NULL,
  `GUEST_ID` int(18) DEFAULT NULL,
  `DESCRIPTION` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `ix_b_event_log_time` (`TIMESTAMP_X`),
  KEY `ix_b_event_log_audit_type_time` (`AUDIT_TYPE_ID`,`TIMESTAMP_X`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_event_log: ~18 rows (приблизительно)
/*!40000 ALTER TABLE `b_event_log` DISABLE KEYS */;
REPLACE INTO `b_event_log` (`ID`, `TIMESTAMP_X`, `SEVERITY`, `AUDIT_TYPE_ID`, `MODULE_ID`, `ITEM_ID`, `REMOTE_ADDR`, `USER_AGENT`, `REQUEST_URI`, `SITE_ID`, `USER_ID`, `GUEST_ID`, `DESCRIPTION`) VALUES
	(1, '2019-12-28 11:42:22', 'WARNING', 'SITE_CHECKER_ERROR', 'main', 'CSiteCheckerTest::CommonTest();', '-', '-', '/bitrix/admin/iblock_edit.php?lang=ru&admin=Y&type=articles', NULL, NULL, NULL, ''),
	(2, '2019-12-28 13:39:17', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:"path";s:9:"index.php";}'),
	(3, '2019-12-28 14:04:28', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '/bitrix/admin/public_file_edit_src.php?bxsender=core_window_cdialog&lang=ru&site=ru&back_url=%2F%3Fbitrix_include_areas%3DY%26clear_cache%3DY&path=%2Fbitrix%2Ftemplates%2Fblog_rr%2Fcomponents%2Fbitrix%2Fnews.list%2Frr_blog%2Ftemplate.php', 's1', 1, NULL, 'a:1:{s:4:"path";s:73:"bitrix/templates/blog_rr/components/bitrix/news.list/rr_blog/template.php";}'),
	(4, '2019-12-28 14:17:23', 'UNKNOWN', 'PAGE_ADD', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=blog_rr&path=%2F&back_url=%2F%3Fbitrix_include_areas%3DY%26clear_cache%3DY&siteTemplateId=blog_rr', NULL, 1, NULL, 'a:1:{s:4:"path";s:11:"article.php";}'),
	(5, '2019-12-28 14:17:56', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:"path";s:11:"article.php";}'),
	(6, '2019-12-28 14:21:42', 'UNKNOWN', 'FILE_DELETE', 'fileman', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '/bitrix/admin/fileman_admin.php?ID=article.php&action=delete&lang=ru&site=s1&path=', NULL, 1, NULL, 'a:2:{s:9:"file_name";s:11:"article.php";s:4:"path";b:0;}'),
	(7, '2019-12-28 14:22:10', 'UNKNOWN', 'PAGE_ADD', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=blog_rr&path=%2F&back_url=%2F%3Fbitrix_include_areas%3DY%26clear_cache%3DY&siteTemplateId=blog_rr', NULL, 1, NULL, 'a:1:{s:4:"path";s:11:"article.php";}'),
	(8, '2019-12-28 14:26:53', 'UNKNOWN', 'SECTION_RENAME', 'fileman', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '/bitrix/admin/fileman_admin.php?mode=frame&lang=ru&path=%2Fbitrix%2Ftemplates&site=s1', NULL, 1, NULL, 'a:1:{s:4:"path";s:39:"bitrix/templates/blog_rr_detail_article";}'),
	(9, '2019-12-28 14:30:18', 'UNKNOWN', 'PAGE_ADD', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=blog_rr&path=%2F&back_url=%2F&siteTemplateId=blog_rr', NULL, 1, NULL, 'a:1:{s:4:"path";s:10:"statya.php";}'),
	(10, '2019-12-28 14:31:24', 'UNKNOWN', 'PAGE_ADD', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=blog_rr&path=%2F&back_url=%2F&siteTemplateId=blog_rr', NULL, 1, NULL, 'a:1:{s:4:"path";s:11:"article.php";}'),
	(11, '2019-12-28 14:34:08', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:"path";s:11:"article.php";}'),
	(12, '2019-12-28 15:11:57', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:"path";s:9:"index.php";}'),
	(13, '2019-12-29 12:15:37', 'WARNING', 'SITE_CHECKER_ERROR', 'main', 'CSiteCheckerTest::CommonTest();', '-', '-', '/', 's1', NULL, NULL, ''),
	(14, '2019-12-29 13:01:07', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:"path";s:9:"index.php";}'),
	(15, '2019-12-29 13:19:12', 'UNKNOWN', 'MENU_ADD', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '/bitrix/admin/public_menu_edit.php?bxsender=core_window_cdialog&new=Y&lang=ru&site=s1&back_url=%2F%3Fclear_cache%3DY&path=&name=top&siteTemplateId=blog_rr', NULL, 1, NULL, 'a:2:{s:9:"menu_name";N;s:4:"path";b:0;}'),
	(16, '2019-12-29 13:19:53', 'UNKNOWN', 'MENU_EDIT', 'fileman', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '/bitrix/admin/fileman_menu_edit.php?', NULL, 1, NULL, 'a:2:{s:9:"menu_name";N;s:4:"path";b:0;}'),
	(17, '2019-12-29 13:20:20', 'UNKNOWN', 'MENU_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '/bitrix/admin/public_menu_edit.php?bxsender=core_window_cdialog&lang=ru&site=s1&back_url=%2Farticle.php%3FID%3D1&path=%2F&name=top&siteTemplateId=blog_rr_detail_article', NULL, 1, NULL, 'a:2:{s:9:"menu_name";N;s:4:"path";b:0;}'),
	(18, '2019-12-30 12:16:09', 'WARNING', 'SITE_CHECKER_ERROR', 'main', 'CSiteCheckerTest::CommonTest();', '-', '-', '/bitrix/tools/autosave.php?bxsender=core_autosave', NULL, NULL, NULL, '');
/*!40000 ALTER TABLE `b_event_log` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_event_message
DROP TABLE IF EXISTS `b_event_message`;
CREATE TABLE IF NOT EXISTS `b_event_message` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EMAIL_FROM` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#EMAIL_FROM#',
  `EMAIL_TO` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#EMAIL_TO#',
  `SUBJECT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` longtext COLLATE utf8_unicode_ci,
  `MESSAGE_PHP` longtext COLLATE utf8_unicode_ci,
  `BODY_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `BCC` text COLLATE utf8_unicode_ci,
  `REPLY_TO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CC` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IN_REPLY_TO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRIORITY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD1_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD1_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD2_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD2_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_TEMPLATE_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDITIONAL_FIELD` text COLLATE utf8_unicode_ci,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_event_message_name` (`EVENT_NAME`(50))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_event_message: ~8 rows (приблизительно)
/*!40000 ALTER TABLE `b_event_message` DISABLE KEYS */;
REPLACE INTO `b_event_message` (`ID`, `TIMESTAMP_X`, `EVENT_NAME`, `LID`, `ACTIVE`, `EMAIL_FROM`, `EMAIL_TO`, `SUBJECT`, `MESSAGE`, `MESSAGE_PHP`, `BODY_TYPE`, `BCC`, `REPLY_TO`, `CC`, `IN_REPLY_TO`, `PRIORITY`, `FIELD1_NAME`, `FIELD1_VALUE`, `FIELD2_NAME`, `FIELD2_VALUE`, `SITE_TEMPLATE_ID`, `ADDITIONAL_FIELD`, `LANGUAGE_ID`) VALUES
	(1, '2019-12-27 14:12:23', 'NEW_USER', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#DEFAULT_EMAIL_FROM#', '#SITE_NAME#: Зарегистрировался новый пользователь', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНа сайте #SERVER_NAME# успешно зарегистрирован новый пользователь.\n\nДанные пользователя:\nID пользователя: #USER_ID#\n\nИмя: #NAME#\nФамилия: #LAST_NAME#\nE-Mail: #EMAIL#\n\nLogin: #LOGIN#\n\nПисьмо сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams["SITE_NAME"];?>\n\n------------------------------------------\n\nНа сайте <?=$arParams["SERVER_NAME"];?> успешно зарегистрирован новый пользователь.\n\nДанные пользователя:\nID пользователя: <?=$arParams["USER_ID"];?>\n\n\nИмя: <?=$arParams["NAME"];?>\n\nФамилия: <?=$arParams["LAST_NAME"];?>\n\nE-Mail: <?=$arParams["EMAIL"];?>\n\n\nLogin: <?=$arParams["LOGIN"];?>\n\n\nПисьмо сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
	(2, '2019-12-27 14:12:23', 'USER_INFO', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Регистрационная информация', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nВы можете изменить пароль, перейдя по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=#CHECKWORD#&USER_LOGIN=#URL_LOGIN#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams["SITE_NAME"];?>\n\n------------------------------------------\n<?=$arParams["NAME"];?> <?=$arParams["LAST_NAME"];?>,\n\n<?=$arParams["MESSAGE"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams["USER_ID"];?>\n\nСтатус профиля: <?=$arParams["STATUS"];?>\n\nLogin: <?=$arParams["LOGIN"];?>\n\n\nВы можете изменить пароль, перейдя по следующей ссылке:\nhttp://<?=$arParams["SERVER_NAME"];?>/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=<?=$arParams["CHECKWORD"];?>&USER_LOGIN=<?=$arParams["URL_LOGIN"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
	(3, '2019-12-27 14:12:23', 'USER_PASS_REQUEST', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Запрос на смену пароля', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=#CHECKWORD#&USER_LOGIN=#URL_LOGIN#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams["SITE_NAME"];?>\n\n------------------------------------------\n<?=$arParams["NAME"];?> <?=$arParams["LAST_NAME"];?>,\n\n<?=$arParams["MESSAGE"];?>\n\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://<?=$arParams["SERVER_NAME"];?>/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=<?=$arParams["CHECKWORD"];?>&USER_LOGIN=<?=$arParams["URL_LOGIN"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams["USER_ID"];?>\n\nСтатус профиля: <?=$arParams["STATUS"];?>\n\nLogin: <?=$arParams["LOGIN"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
	(4, '2019-12-27 14:12:23', 'USER_PASS_CHANGED', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Подтверждение смены пароля', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams["SITE_NAME"];?>\n\n------------------------------------------\n<?=$arParams["NAME"];?> <?=$arParams["LAST_NAME"];?>,\n\n<?=$arParams["MESSAGE"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams["USER_ID"];?>\n\nСтатус профиля: <?=$arParams["STATUS"];?>\n\nLogin: <?=$arParams["LOGIN"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
	(5, '2019-12-27 14:12:23', 'NEW_USER_CONFIRM', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Подтверждение регистрации нового пользователя', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был использован при регистрации нового пользователя на сервере #SERVER_NAME#.\n\nВаш код для подтверждения регистрации: #CONFIRM_CODE#\n\nДля подтверждения регистрации перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?confirm_registration=yes&confirm_user_id=#USER_ID#&confirm_code=#CONFIRM_CODE#\n\nВы также можете ввести код для подтверждения регистрации на странице:\nhttp://#SERVER_NAME#/auth/index.php?confirm_registration=yes&confirm_user_id=#USER_ID#\n\nВнимание! Ваш профиль не будет активным, пока вы не подтвердите свою регистрацию.\n\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams["SITE_NAME"];?>\n\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был использован при регистрации нового пользователя на сервере <?=$arParams["SERVER_NAME"];?>.\n\nВаш код для подтверждения регистрации: <?=$arParams["CONFIRM_CODE"];?>\n\n\nДля подтверждения регистрации перейдите по следующей ссылке:\nhttp://<?=$arParams["SERVER_NAME"];?>/auth/index.php?confirm_registration=yes&confirm_user_id=<?=$arParams["USER_ID"];?>&confirm_code=<?=$arParams["CONFIRM_CODE"];?>\n\n\nВы также можете ввести код для подтверждения регистрации на странице:\nhttp://<?=$arParams["SERVER_NAME"];?>/auth/index.php?confirm_registration=yes&confirm_user_id=<?=$arParams["USER_ID"];?>\n\n\nВнимание! Ваш профиль не будет активным, пока вы не подтвердите свою регистрацию.\n\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
	(6, '2019-12-27 14:12:23', 'USER_INVITE', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Приглашение на сайт', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\nЗдравствуйте, #NAME# #LAST_NAME#!\n\nАдминистратором сайта вы добавлены в число зарегистрированных пользователей.\n\nПриглашаем Вас на наш сайт.\n\nВаша регистрационная информация:\n\nID пользователя: #ID#\nLogin: #LOGIN#\n\nРекомендуем вам сменить установленный автоматически пароль.\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth.php?change_password=yes&USER_LOGIN=#URL_LOGIN#&USER_CHECKWORD=#CHECKWORD#\n', 'Информационное сообщение сайта <?=$arParams["SITE_NAME"];?>\n\n------------------------------------------\nЗдравствуйте, <?=$arParams["NAME"];?> <?=$arParams["LAST_NAME"];?>!\n\nАдминистратором сайта вы добавлены в число зарегистрированных пользователей.\n\nПриглашаем Вас на наш сайт.\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams["ID"];?>\n\nLogin: <?=$arParams["LOGIN"];?>\n\n\nРекомендуем вам сменить установленный автоматически пароль.\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://<?=$arParams["SERVER_NAME"];?>/auth.php?change_password=yes&USER_LOGIN=<?=$arParams["URL_LOGIN"];?>&USER_CHECKWORD=<?=$arParams["CHECKWORD"];?>\n\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
	(7, '2019-12-27 14:12:23', 'FEEDBACK_FORM', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: Сообщение из формы обратной связи', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВам было отправлено сообщение через форму обратной связи\n\nАвтор: #AUTHOR#\nE-mail автора: #AUTHOR_EMAIL#\n\nТекст сообщения:\n#TEXT#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams["SITE_NAME"];?>\n\n------------------------------------------\n\nВам было отправлено сообщение через форму обратной связи\n\nАвтор: <?=$arParams["AUTHOR"];?>\n\nE-mail автора: <?=$arParams["AUTHOR_EMAIL"];?>\n\n\nТекст сообщения:\n<?=$arParams["TEXT"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
	(8, '2019-12-27 14:12:23', 'MAIN_MAIL_CONFIRM_CODE', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL_TO#', '#MESSAGE_SUBJECT#', '<? EventMessageThemeCompiler::includeComponent(\'bitrix:main.mail.confirm\', \'\', $arParams); ?>', '<? EventMessageThemeCompiler::includeComponent(\'bitrix:main.mail.confirm\', \'\', $arParams); ?>', 'html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mail_join', NULL, NULL);
/*!40000 ALTER TABLE `b_event_message` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_event_message_attachment
DROP TABLE IF EXISTS `b_event_message_attachment`;
CREATE TABLE IF NOT EXISTS `b_event_message_attachment` (
  `EVENT_MESSAGE_ID` int(18) NOT NULL,
  `FILE_ID` int(18) NOT NULL,
  PRIMARY KEY (`EVENT_MESSAGE_ID`,`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_event_message_attachment: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_event_message_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_event_message_attachment` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_event_message_site
DROP TABLE IF EXISTS `b_event_message_site`;
CREATE TABLE IF NOT EXISTS `b_event_message_site` (
  `EVENT_MESSAGE_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`EVENT_MESSAGE_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_event_message_site: ~8 rows (приблизительно)
/*!40000 ALTER TABLE `b_event_message_site` DISABLE KEYS */;
REPLACE INTO `b_event_message_site` (`EVENT_MESSAGE_ID`, `SITE_ID`) VALUES
	(1, 's1'),
	(2, 's1'),
	(3, 's1'),
	(4, 's1'),
	(5, 's1'),
	(6, 's1'),
	(7, 's1'),
	(8, 's1');
/*!40000 ALTER TABLE `b_event_message_site` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_event_type
DROP TABLE IF EXISTS `b_event_type`;
CREATE TABLE IF NOT EXISTS `b_event_type` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `SORT` int(18) NOT NULL DEFAULT '150',
  `EVENT_TYPE` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'email',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_1` (`EVENT_NAME`,`LID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_event_type: ~20 rows (приблизительно)
/*!40000 ALTER TABLE `b_event_type` DISABLE KEYS */;
REPLACE INTO `b_event_type` (`ID`, `LID`, `EVENT_NAME`, `NAME`, `DESCRIPTION`, `SORT`, `EVENT_TYPE`) VALUES
	(1, 'ru', 'NEW_USER', 'Зарегистрировался новый пользователь', '\n\n#USER_ID# - ID пользователя\n#LOGIN# - Логин\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#USER_IP# - IP пользователя\n#USER_HOST# - Хост пользователя\n', 1, 'email'),
	(2, 'ru', 'USER_INFO', 'Информация о пользователе', '\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n', 2, 'email'),
	(3, 'ru', 'NEW_USER_CONFIRM', 'Подтверждение регистрации нового пользователя', '\n\n\n#USER_ID# - ID пользователя\n#LOGIN# - Логин\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#USER_IP# - IP пользователя\n#USER_HOST# - Хост пользователя\n#CONFIRM_CODE# - Код подтверждения\n', 3, 'email'),
	(4, 'ru', 'USER_PASS_REQUEST', 'Запрос на смену пароля', '\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n', 4, 'email'),
	(5, 'ru', 'USER_PASS_CHANGED', 'Подтверждение смены пароля', '\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n', 5, 'email'),
	(6, 'ru', 'USER_INVITE', 'Приглашение на сайт нового пользователя', '#ID# - ID пользователя\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#PASSWORD# - пароль пользователя \n#CHECKWORD# - Контрольная строка для смены пароля\n#XML_ID# - ID пользователя для связи с внешними источниками\n', 6, 'email'),
	(7, 'ru', 'FEEDBACK_FORM', 'Отправка сообщения через форму обратной связи', '#AUTHOR# - Автор сообщения\n#AUTHOR_EMAIL# - Email автора сообщения\n#TEXT# - Текст сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма', 7, 'email'),
	(8, 'ru', 'MAIN_MAIL_CONFIRM_CODE', 'Подтверждение email-адреса отправителя', '\n\n#EMAIL_TO# - Email-адрес для подтверждения\n#MESSAGE_SUBJECT# - Тема сообщения\n#CONFIRM_CODE# - Код подтверждения', 8, 'email'),
	(9, 'ru', 'SMS_USER_CONFIRM_NUMBER', 'Подтверждение номера телефона по СМС', '#USER_PHONE# - номер телефона\n#CODE# - код подтверждения\n', 100, 'sms'),
	(10, 'ru', 'SMS_USER_RESTORE_PASSWORD', 'Восстановление пароля через СМС', '#USER_PHONE# - номер телефона\n#CODE# - код для восстановления\n', 100, 'sms'),
	(11, 'en', 'NEW_USER', 'New user was registered', '\n\n#USER_ID# - User ID\n#LOGIN# - Login\n#EMAIL# - EMail\n#NAME# - Name\n#LAST_NAME# - Last Name\n#USER_IP# - User IP\n#USER_HOST# - User Host\n', 1, 'email'),
	(12, 'en', 'USER_INFO', 'Account Information', '\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n', 2, 'email'),
	(13, 'en', 'NEW_USER_CONFIRM', 'New user registration confirmation', '\n\n#USER_ID# - User ID\n#LOGIN# - Login\n#EMAIL# - E-mail\n#NAME# - First name\n#LAST_NAME# - Last name\n#USER_IP# - User IP\n#USER_HOST# - User host\n#CONFIRM_CODE# - Confirmation code\n', 3, 'email'),
	(14, 'en', 'USER_PASS_REQUEST', 'Password Change Request', '\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n', 4, 'email'),
	(15, 'en', 'USER_PASS_CHANGED', 'Password Change Confirmation', '\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n', 5, 'email'),
	(16, 'en', 'USER_INVITE', 'Invitation of a new site user', '#ID# - User ID\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#EMAIL# - EMail\n#NAME# - Name\n#LAST_NAME# - Last Name\n#PASSWORD# - User password \n#CHECKWORD# - Password check string\n#XML_ID# - User ID to link with external data sources\n\n', 6, 'email'),
	(17, 'en', 'FEEDBACK_FORM', 'Sending a message using a feedback form', '#AUTHOR# - Message author\n#AUTHOR_EMAIL# - Author\'s e-mail address\n#TEXT# - Message text\n#EMAIL_FROM# - Sender\'s e-mail address\n#EMAIL_TO# - Recipient\'s e-mail address', 7, 'email'),
	(18, 'en', 'MAIN_MAIL_CONFIRM_CODE', 'Confirm sender\'s email address', '\n\n#EMAIL_TO# - confirmation email address\n#MESSAGE_SUBJECT# - Message subject\n#CONFIRM_CODE# - Confirmation code', 8, 'email'),
	(19, 'en', 'SMS_USER_CONFIRM_NUMBER', 'Verify phone number using SMS', '#USER_PHONE# - phone number\n#CODE# - confirmation code', 100, 'sms'),
	(20, 'en', 'SMS_USER_RESTORE_PASSWORD', 'Recover password using SMS', '#USER_PHONE# - phone number\n#CODE# - recovery confirmation code', 100, 'sms');
/*!40000 ALTER TABLE `b_event_type` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_favorite
DROP TABLE IF EXISTS `b_favorite`;
CREATE TABLE IF NOT EXISTS `b_favorite` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `C_SORT` int(18) NOT NULL DEFAULT '100',
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` text COLLATE utf8_unicode_ci,
  `COMMENTS` text COLLATE utf8_unicode_ci,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `CODE_ID` int(18) DEFAULT NULL,
  `COMMON` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `MENU_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_favorite: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_favorite` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_file
DROP TABLE IF EXISTS `b_file`;
CREATE TABLE IF NOT EXISTS `b_file` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HEIGHT` int(18) DEFAULT NULL,
  `WIDTH` int(18) DEFAULT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  `CONTENT_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'IMAGE',
  `SUBDIR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ORIGINAL_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HANDLER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_FILE_EXTERNAL_ID` (`EXTERNAL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_file: ~20 rows (приблизительно)
/*!40000 ALTER TABLE `b_file` DISABLE KEYS */;
REPLACE INTO `b_file` (`ID`, `TIMESTAMP_X`, `MODULE_ID`, `HEIGHT`, `WIDTH`, `FILE_SIZE`, `CONTENT_TYPE`, `SUBDIR`, `FILE_NAME`, `ORIGINAL_NAME`, `DESCRIPTION`, `HANDLER_ID`, `EXTERNAL_ID`) VALUES
	(5, '2019-12-30 12:20:51', 'iblock', 192, 288, 11734, 'image/jpeg', 'iblock/d50', 'd50fe0a2d94f29892d407d06fa006bb9.jpg', '1-300x200-blur_2-grayscale.jpg', '', NULL, '8344f17b54bf566c6d5e99633016ae53'),
	(6, '2019-12-30 12:20:51', 'iblock', 200, 300, 5382, 'image/jpeg', 'iblock/b1b', 'b1b8ee57321001dd6ed7a6ce64aef64e.jpg', '1-300x200-blur_2-grayscale.jpg', '', NULL, 'ec0099824c9c13805e9f4d748a520b66'),
	(7, '2019-12-30 12:22:30', 'iblock', 192, 288, 12598, 'image/jpeg', 'iblock/b75', 'b756a547a6dc5c0846bd755dcb50cfb2.jpg', '2-300x200-blur_2-grayscale.jpg', '', NULL, '8b9cd26378428e3d3b7550324afef3d5'),
	(8, '2019-12-30 12:22:30', 'iblock', 200, 300, 5818, 'image/jpeg', 'iblock/65a', '65ab7170b7802ffe38266468d97d4196.jpg', '2-300x200-blur_2-grayscale.jpg', '', NULL, '144800941e4dfae2c24176d6d48a5fe0'),
	(9, '2019-12-30 12:24:17', 'iblock', 192, 288, 11679, 'image/jpeg', 'iblock/c3e', 'c3e9695b97ad90abfed82cbe1a97b4c6.jpg', '3-300x200-blur_2-grayscale.jpg', '', NULL, '333d3a2dba8f886629aab7076ddf5d25'),
	(10, '2019-12-30 12:24:17', 'iblock', 200, 300, 5345, 'image/jpeg', 'iblock/7a1', '7a1279a2e9406048edebc5f59e470cf8.jpg', '3-300x200-blur_2-grayscale.jpg', '', NULL, '54a9416e4f374daed24df772d1c28f3a'),
	(11, '2019-12-30 12:26:17', 'iblock', 192, 288, 11245, 'image/jpeg', 'iblock/158', '158d4ca7c296637a4dd69cc5d6b96570.jpg', '4-300x200-blur_2-grayscale.jpg', '', NULL, 'd2aab100ceaca4f2074ee7920854c4bf'),
	(12, '2019-12-30 12:26:17', 'iblock', 200, 300, 5061, 'image/jpeg', 'iblock/c91', 'c91f0ff47fbec523b883b71a3f8f3da5.jpg', '4-300x200-blur_2-grayscale.jpg', '', NULL, 'ad2c408893a380a1ae0d48c382e664a5'),
	(13, '2019-12-30 12:27:37', 'iblock', 192, 288, 11734, 'image/jpeg', 'iblock/762', '762e002c0a719b0e067b8888f2f4c53c.jpg', '1-300x200-blur_2-grayscale.jpg', '', NULL, 'be784374d9eab13ac0a52bd7307ac766'),
	(14, '2019-12-30 12:27:37', 'iblock', 200, 300, 5382, 'image/jpeg', 'iblock/418', '4181301fa762965b083505d813b4c0b6.jpg', '1-300x200-blur_2-grayscale.jpg', '', NULL, 'b77998fdee00250ee998b1f8b2253f89'),
	(15, '2019-12-30 12:29:09', 'iblock', 192, 288, 11698, 'image/jpeg', 'iblock/5a7', '5a71d2528ce686bdb8de7811b64c173a.jpg', '6-300x200-blur_2-grayscale.jpg', '', NULL, 'cd2da7108dc26fffec59a38eed4e6b95'),
	(16, '2019-12-30 12:29:09', 'iblock', 200, 300, 5257, 'image/jpeg', 'iblock/6b2', '6b2f29ebff34d0d07de923a3a613dce6.jpg', '6-300x200-blur_2-grayscale.jpg', '', NULL, 'db3ace340ff520e29b87810dcce416bb'),
	(17, '2019-12-30 12:30:40', 'iblock', 192, 288, 13449, 'image/jpeg', 'iblock/129', '1290a6f119a7f6165515b2ad4b6a74eb.jpg', '7-300x200-blur_2-grayscale.jpg', '', NULL, 'a29235022e5d31d5e2cf6b5c98a3c4f4'),
	(18, '2019-12-30 12:30:40', 'iblock', 200, 300, 6220, 'image/jpeg', 'iblock/325', '32560d208ed7da3238e6c602b9f9bf58.jpg', '7-300x200-blur_2-grayscale.jpg', '', NULL, '641dcc430901f83c64a8d9454fc1df5f'),
	(19, '2019-12-30 12:31:46', 'iblock', 192, 288, 11924, 'image/jpeg', 'iblock/be0', 'be03a1ead7d32f90697be9753396e4d4.jpg', '8-300x200-blur_2-grayscale.jpg', '', NULL, '296bd5712cd165f4a218311d8d2d4f9c'),
	(20, '2019-12-30 12:31:46', 'iblock', 200, 300, 5536, 'image/jpeg', 'iblock/6b3', '6b312a97e2999b98f96895ffb0d39ca3.jpg', '8-300x200-blur_2-grayscale.jpg', '', NULL, '6935e1db676ced5428a250809692d0ac'),
	(21, '2019-12-30 12:32:53', 'iblock', 192, 288, 11145, 'image/jpeg', 'iblock/ae5', 'ae57be8a6012214bb3059b5d359340f7.jpg', '9-300x200-blur_2-grayscale.jpg', '', NULL, '656314b7a6698e108d5c495fd4cbcc0a'),
	(22, '2019-12-30 12:32:53', 'iblock', 200, 300, 5350, 'image/jpeg', 'iblock/b13', 'b13c9cf41d8a3c11da687292029ae29b.jpg', '9-300x200-blur_2-grayscale.jpg', '', NULL, '025d7b1f8930b8f3223a0b468764a993'),
	(23, '2019-12-30 12:33:57', 'iblock', 192, 288, 9216, 'image/jpeg', 'iblock/b74', 'b740dd191773822d0434d88e57b86856.jpg', '10-300x200-blur_2-grayscale.jpg', '', NULL, 'ad4dfa6040fe50d1d8a3280ce2d665ff'),
	(24, '2019-12-30 12:33:57', 'iblock', 200, 300, 3807, 'image/jpeg', 'iblock/b1b', 'b1b0ef3f13b6faeeca8b107448412121.jpg', '10-300x200-blur_2-grayscale.jpg', '', NULL, 'aed3f71801f11732be8e32d85ecb36be');
/*!40000 ALTER TABLE `b_file` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_file_preview
DROP TABLE IF EXISTS `b_file_preview`;
CREATE TABLE IF NOT EXISTS `b_file_preview` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FILE_ID` int(18) NOT NULL,
  `PREVIEW_ID` int(18) DEFAULT NULL,
  `PREVIEW_IMAGE_ID` int(18) DEFAULT NULL,
  `CREATED_AT` datetime NOT NULL,
  `TOUCHED_AT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_FILE_PL_TOUCH` (`TOUCHED_AT`),
  KEY `IX_B_FILE_PL_FILE` (`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_file_preview: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_file_preview` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_file_preview` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_file_search
DROP TABLE IF EXISTS `b_file_search`;
CREATE TABLE IF NOT EXISTS `b_file_search` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SESS_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `F_PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `B_DIR` int(11) NOT NULL DEFAULT '0',
  `F_SIZE` int(11) NOT NULL DEFAULT '0',
  `F_TIME` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_file_search: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_file_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_file_search` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_filters
DROP TABLE IF EXISTS `b_filters`;
CREATE TABLE IF NOT EXISTS `b_filters` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(18) DEFAULT NULL,
  `FILTER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FIELDS` text COLLATE utf8_unicode_ci NOT NULL,
  `COMMON` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRESET` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRESET_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(18) DEFAULT NULL,
  `SORT_FIELD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_filters: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_filters` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_finder_dest
DROP TABLE IF EXISTS `b_finder_dest`;
CREATE TABLE IF NOT EXISTS `b_finder_dest` (
  `USER_ID` int(11) NOT NULL,
  `CODE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `CODE_USER_ID` int(11) DEFAULT NULL,
  `CODE_TYPE` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTEXT` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_USE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_ID`,`CODE`,`CONTEXT`),
  KEY `IX_FINDER_DEST` (`CODE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_finder_dest: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_finder_dest` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_finder_dest` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_geoip_handlers
DROP TABLE IF EXISTS `b_geoip_handlers`;
CREATE TABLE IF NOT EXISTS `b_geoip_handlers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SORT` int(10) NOT NULL DEFAULT '100',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `CLASS_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONFIG` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_geoip_handlers: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `b_geoip_handlers` DISABLE KEYS */;
REPLACE INTO `b_geoip_handlers` (`ID`, `SORT`, `ACTIVE`, `CLASS_NAME`, `CONFIG`) VALUES
	(1, 100, 'N', '\\Bitrix\\Main\\Service\\GeoIp\\MaxMind', NULL),
	(2, 110, 'Y', '\\Bitrix\\Main\\Service\\GeoIp\\SypexGeo', NULL);
/*!40000 ALTER TABLE `b_geoip_handlers` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_group
DROP TABLE IF EXISTS `b_group`;
CREATE TABLE IF NOT EXISTS `b_group` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `C_SORT` int(18) NOT NULL DEFAULT '100',
  `ANONYMOUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_SYSTEM` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECURITY_POLICY` text COLLATE utf8_unicode_ci,
  `STRING_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_group: ~4 rows (приблизительно)
/*!40000 ALTER TABLE `b_group` DISABLE KEYS */;
REPLACE INTO `b_group` (`ID`, `TIMESTAMP_X`, `ACTIVE`, `C_SORT`, `ANONYMOUS`, `IS_SYSTEM`, `NAME`, `DESCRIPTION`, `SECURITY_POLICY`, `STRING_ID`) VALUES
	(1, NULL, 'Y', 1, 'N', 'Y', 'Администраторы', 'Полный доступ к управлению сайтом.', NULL, NULL),
	(2, NULL, 'Y', 2, 'Y', 'Y', 'Все пользователи (в том числе неавторизованные)', 'Все пользователи, включая неавторизованных.', NULL, NULL),
	(3, NULL, 'Y', 3, 'N', 'Y', 'Пользователи, имеющие право голосовать за рейтинг', 'В эту группу пользователи добавляются автоматически.', NULL, 'RATING_VOTE'),
	(4, NULL, 'Y', 4, 'N', 'Y', 'Пользователи имеющие право голосовать за авторитет', 'В эту группу пользователи добавляются автоматически.', NULL, 'RATING_VOTE_AUTHORITY');
/*!40000 ALTER TABLE `b_group` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_group_collection_task
DROP TABLE IF EXISTS `b_group_collection_task`;
CREATE TABLE IF NOT EXISTS `b_group_collection_task` (
  `GROUP_ID` int(11) NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  `COLLECTION_ID` int(11) NOT NULL,
  PRIMARY KEY (`GROUP_ID`,`TASK_ID`,`COLLECTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_group_collection_task: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_group_collection_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_group_collection_task` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_group_subordinate
DROP TABLE IF EXISTS `b_group_subordinate`;
CREATE TABLE IF NOT EXISTS `b_group_subordinate` (
  `ID` int(18) NOT NULL,
  `AR_SUBGROUP_ID` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_group_subordinate: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_group_subordinate` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_group_subordinate` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_group_task
DROP TABLE IF EXISTS `b_group_task`;
CREATE TABLE IF NOT EXISTS `b_group_task` (
  `GROUP_ID` int(18) NOT NULL,
  `TASK_ID` int(18) NOT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`GROUP_ID`,`TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_group_task: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_group_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_group_task` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_hlblock_entity
DROP TABLE IF EXISTS `b_hlblock_entity`;
CREATE TABLE IF NOT EXISTS `b_hlblock_entity` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `TABLE_NAME` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_hlblock_entity: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_hlblock_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_hlblock_entity` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_hlblock_entity_lang
DROP TABLE IF EXISTS `b_hlblock_entity_lang`;
CREATE TABLE IF NOT EXISTS `b_hlblock_entity_lang` (
  `ID` int(11) unsigned NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_hlblock_entity_lang: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_hlblock_entity_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_hlblock_entity_lang` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_hlblock_entity_rights
DROP TABLE IF EXISTS `b_hlblock_entity_rights`;
CREATE TABLE IF NOT EXISTS `b_hlblock_entity_rights` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `HL_ID` int(11) unsigned NOT NULL,
  `TASK_ID` int(11) unsigned NOT NULL,
  `ACCESS_CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_hlblock_entity_rights: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_hlblock_entity_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_hlblock_entity_rights` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_hot_keys
DROP TABLE IF EXISTS `b_hot_keys`;
CREATE TABLE IF NOT EXISTS `b_hot_keys` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `KEYS_STRING` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CODE_ID` int(18) NOT NULL,
  `USER_ID` int(18) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_b_hot_keys_co_u` (`CODE_ID`,`USER_ID`),
  KEY `ix_hot_keys_user` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_hot_keys: ~24 rows (приблизительно)
/*!40000 ALTER TABLE `b_hot_keys` DISABLE KEYS */;
REPLACE INTO `b_hot_keys` (`ID`, `KEYS_STRING`, `CODE_ID`, `USER_ID`) VALUES
	(1, 'Ctrl+Alt+85', 139, 0),
	(2, 'Ctrl+Alt+80', 17, 0),
	(3, 'Ctrl+Alt+70', 120, 0),
	(4, 'Ctrl+Alt+68', 117, 0),
	(5, 'Ctrl+Alt+81', 3, 0),
	(6, 'Ctrl+Alt+75', 106, 0),
	(7, 'Ctrl+Alt+79', 133, 0),
	(8, 'Ctrl+Alt+70', 121, 0),
	(9, 'Ctrl+Alt+69', 118, 0),
	(10, 'Ctrl+Shift+83', 87, 0),
	(11, 'Ctrl+Shift+88', 88, 0),
	(12, 'Ctrl+Shift+76', 89, 0),
	(13, 'Ctrl+Alt+85', 139, 1),
	(14, 'Ctrl+Alt+80', 17, 1),
	(15, 'Ctrl+Alt+70', 120, 1),
	(16, 'Ctrl+Alt+68', 117, 1),
	(17, 'Ctrl+Alt+81', 3, 1),
	(18, 'Ctrl+Alt+75', 106, 1),
	(19, 'Ctrl+Alt+79', 133, 1),
	(20, 'Ctrl+Alt+70', 121, 1),
	(21, 'Ctrl+Alt+69', 118, 1),
	(22, 'Ctrl+Shift+83', 87, 1),
	(23, 'Ctrl+Shift+88', 88, 1),
	(24, 'Ctrl+Shift+76', 89, 1);
/*!40000 ALTER TABLE `b_hot_keys` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_hot_keys_code
DROP TABLE IF EXISTS `b_hot_keys_code`;
CREATE TABLE IF NOT EXISTS `b_hot_keys_code` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CLASS_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENTS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TITLE_OBJ` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IS_CUSTOM` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  KEY `ix_hot_keys_code_cn` (`CLASS_NAME`),
  KEY `ix_hot_keys_code_url` (`URL`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_hot_keys_code: ~79 rows (приблизительно)
/*!40000 ALTER TABLE `b_hot_keys_code` DISABLE KEYS */;
REPLACE INTO `b_hot_keys_code` (`ID`, `CLASS_NAME`, `CODE`, `NAME`, `COMMENTS`, `TITLE_OBJ`, `URL`, `IS_CUSTOM`) VALUES
	(3, 'CAdminTabControl', 'NextTab();', 'HK_DB_CADMINTC', 'HK_DB_CADMINTC_C', 'tab-container', '', 0),
	(5, 'btn_new', 'var d=BX (\'btn_new\'); if (d) location.href = d.href;', 'HK_DB_BUT_ADD', 'HK_DB_BUT_ADD_C', 'btn_new', '', 0),
	(6, 'btn_excel', 'var d=BX(\'btn_excel\'); if (d) location.href = d.href;', 'HK_DB_BUT_EXL', 'HK_DB_BUT_EXL_C', 'btn_excel', '', 0),
	(7, 'btn_settings', 'var d=BX(\'btn_settings\'); if (d) location.href = d.href;', 'HK_DB_BUT_OPT', 'HK_DB_BUT_OPT_C', 'btn_settings', '', 0),
	(8, 'btn_list', 'var d=BX(\'btn_list\'); if (d) location.href = d.href;', 'HK_DB_BUT_LST', 'HK_DB_BUT_LST_C', 'btn_list', '', 0),
	(9, 'Edit_Save_Button', 'var d=BX .findChild(document, {attribute: {\'name\': \'save\'}}, true );  if (d) d.click();', 'HK_DB_BUT_SAVE', 'HK_DB_BUT_SAVE_C', 'Edit_Save_Button', '', 0),
	(10, 'btn_delete', 'var d=BX(\'btn_delete\'); if (d) location.href = d.href;', 'HK_DB_BUT_DEL', 'HK_DB_BUT_DEL_C', 'btn_delete', '', 0),
	(12, 'CAdminFilter', 'var d=BX .findChild(document, {attribute: {\'name\': \'find\'}}, true ); if (d) d.focus();', 'HK_DB_FLT_FND', 'HK_DB_FLT_FND_C', 'find', '', 0),
	(13, 'CAdminFilter', 'var d=BX .findChild(document, {attribute: {\'name\': \'set_filter\'}}, true );  if (d) d.click();', 'HK_DB_FLT_BUT_F', 'HK_DB_FLT_BUT_F_C', 'set_filter', '', 0),
	(14, 'CAdminFilter', 'var d=BX .findChild(document, {attribute: {\'name\': \'del_filter\'}}, true );  if (d) d.click();', 'HK_DB_FLT_BUT_CNL', 'HK_DB_FLT_BUT_CNL_C', 'del_filter', '', 0),
	(15, 'bx-panel-admin-button-help-icon-id', 'var d=BX(\'bx-panel-admin-button-help-icon-id\'); if (d) location.href = d.href;', 'HK_DB_BUT_HLP', 'HK_DB_BUT_HLP_C', 'bx-panel-admin-button-help-icon-id', '', 0),
	(17, 'Global', 'BXHotKeys.ShowSettings();', 'HK_DB_SHW_L', 'HK_DB_SHW_L_C', 'bx-panel-hotkeys', '', 0),
	(19, 'Edit_Apply_Button', 'var d=BX .findChild(document, {attribute: {\'name\': \'apply\'}}, true );  if (d) d.click();', 'HK_DB_BUT_APPL', 'HK_DB_BUT_APPL_C', 'Edit_Apply_Button', '', 0),
	(20, 'Edit_Cancel_Button', 'var d=BX .findChild(document, {attribute: {\'name\': \'cancel\'}}, true );  if (d) d.click();', 'HK_DB_BUT_CANCEL', 'HK_DB_BUT_CANCEL_C', 'Edit_Cancel_Button', '', 0),
	(54, 'top_panel_org_fav', '', '-=AUTONAME=-', NULL, 'top_panel_org_fav', NULL, 0),
	(55, 'top_panel_module_settings', '', '-=AUTONAME=-', NULL, 'top_panel_module_settings', '', 0),
	(56, 'top_panel_interface_settings', '', '-=AUTONAME=-', NULL, 'top_panel_interface_settings', '', 0),
	(57, 'top_panel_help', '', '-=AUTONAME=-', NULL, 'top_panel_help', '', 0),
	(58, 'top_panel_bizproc_tasks', '', '-=AUTONAME=-', NULL, 'top_panel_bizproc_tasks', '', 0),
	(59, 'top_panel_add_fav', '', '-=AUTONAME=-', NULL, 'top_panel_add_fav', NULL, 0),
	(60, 'top_panel_create_page', '', '-=AUTONAME=-', NULL, 'top_panel_create_page', '', 0),
	(62, 'top_panel_create_folder', '', '-=AUTONAME=-', NULL, 'top_panel_create_folder', '', 0),
	(63, 'top_panel_edit_page', '', '-=AUTONAME=-', NULL, 'top_panel_edit_page', '', 0),
	(64, 'top_panel_page_prop', '', '-=AUTONAME=-', NULL, 'top_panel_page_prop', '', 0),
	(65, 'top_panel_edit_page_html', '', '-=AUTONAME=-', NULL, 'top_panel_edit_page_html', '', 0),
	(67, 'top_panel_edit_page_php', '', '-=AUTONAME=-', NULL, 'top_panel_edit_page_php', '', 0),
	(68, 'top_panel_del_page', '', '-=AUTONAME=-', NULL, 'top_panel_del_page', '', 0),
	(69, 'top_panel_folder_prop', '', '-=AUTONAME=-', NULL, 'top_panel_folder_prop', '', 0),
	(70, 'top_panel_access_folder_new', '', '-=AUTONAME=-', NULL, 'top_panel_access_folder_new', '', 0),
	(71, 'main_top_panel_struct_panel', '', '-=AUTONAME=-', NULL, 'main_top_panel_struct_panel', '', 0),
	(72, 'top_panel_cache_page', '', '-=AUTONAME=-', NULL, 'top_panel_cache_page', '', 0),
	(73, 'top_panel_cache_comp', '', '-=AUTONAME=-', NULL, 'top_panel_cache_comp', '', 0),
	(74, 'top_panel_cache_not', '', '-=AUTONAME=-', NULL, 'top_panel_cache_not', '', 0),
	(75, 'top_panel_edit_mode', '', '-=AUTONAME=-', NULL, 'top_panel_edit_mode', '', 0),
	(76, 'top_panel_templ_site_css', '', '-=AUTONAME=-', NULL, 'top_panel_templ_site_css', '', 0),
	(77, 'top_panel_templ_templ_css', '', '-=AUTONAME=-', NULL, 'top_panel_templ_templ_css', '', 0),
	(78, 'top_panel_templ_site', '', '-=AUTONAME=-', NULL, 'top_panel_templ_site', '', 0),
	(81, 'top_panel_debug_time', '', '-=AUTONAME=-', NULL, 'top_panel_debug_time', '', 0),
	(82, 'top_panel_debug_incl', '', '-=AUTONAME=-', NULL, 'top_panel_debug_incl', '', 0),
	(83, 'top_panel_debug_sql', '', '-=AUTONAME=-', NULL, 'top_panel_debug_sql', NULL, 0),
	(84, 'top_panel_debug_compr', '', '-=AUTONAME=-', NULL, 'top_panel_debug_compr', '', 0),
	(85, 'MTP_SHORT_URI1', '', '-=AUTONAME=-', NULL, 'MTP_SHORT_URI1', '', 0),
	(86, 'MTP_SHORT_URI_LIST', '', '-=AUTONAME=-', NULL, 'MTP_SHORT_URI_LIST', '', 0),
	(87, 'FMST_PANEL_STICKER_ADD', '', '-=AUTONAME=-', NULL, 'FMST_PANEL_STICKER_ADD', '', 0),
	(88, 'FMST_PANEL_STICKERS_SHOW', '', '-=AUTONAME=-', NULL, 'FMST_PANEL_STICKERS_SHOW', '', 0),
	(89, 'FMST_PANEL_CUR_STICKER_LIST', '', '-=AUTONAME=-', NULL, 'FMST_PANEL_CUR_STICKER_LIST', '', 0),
	(90, 'FMST_PANEL_ALL_STICKER_LIST', '', '-=AUTONAME=-', NULL, 'FMST_PANEL_ALL_STICKER_LIST', '', 0),
	(91, 'top_panel_menu', 'var d=BX("bx-panel-menu"); if (d) d.click();', '-=AUTONAME=-', NULL, 'bx-panel-menu', '', 0),
	(92, 'top_panel_admin', 'var d=BX(\'bx-panel-admin-tab\'); if (d) location.href = d.href;', '-=AUTONAME=-', NULL, 'bx-panel-admin-tab', '', 0),
	(93, 'admin_panel_site', 'var d=BX(\'bx-panel-view-tab\'); if (d) location.href = d.href;', '-=AUTONAME=-', NULL, 'bx-panel-view-tab', '', 0),
	(94, 'admin_panel_admin', 'var d=BX(\'bx-panel-admin-tab\'); if (d) location.href = d.href;', '-=AUTONAME=-', NULL, 'bx-panel-admin-tab', '', 0),
	(96, 'top_panel_folder_prop_new', '', '-=AUTONAME=-', NULL, 'top_panel_folder_prop_new', '', 0),
	(97, 'main_top_panel_structure', '', '-=AUTONAME=-', NULL, 'main_top_panel_structure', '', 0),
	(98, 'top_panel_clear_cache', '', '-=AUTONAME=-', NULL, 'top_panel_clear_cache', '', 0),
	(99, 'top_panel_templ', '', '-=AUTONAME=-', NULL, 'top_panel_templ', '', 0),
	(100, 'top_panel_debug', '', '-=AUTONAME=-', NULL, 'top_panel_debug', '', 0),
	(101, 'MTP_SHORT_URI', '', '-=AUTONAME=-', NULL, 'MTP_SHORT_URI', '', 0),
	(102, 'FMST_PANEL_STICKERS', '', '-=AUTONAME=-', NULL, 'FMST_PANEL_STICKERS', '', 0),
	(103, 'top_panel_settings', '', '-=AUTONAME=-', NULL, 'top_panel_settings', '', 0),
	(104, 'top_panel_fav', '', '-=AUTONAME=-', NULL, 'top_panel_fav', '', 0),
	(106, 'Global', 'location.href=\'/bitrix/admin/hot_keys_list.php?lang=ru\';', 'HK_DB_SHW_HK', '', '', '', 0),
	(107, 'top_panel_edit_new', '', '-=AUTONAME=-', NULL, 'top_panel_edit_new', '', 0),
	(108, 'FLOW_PANEL_CREATE_WITH_WF', '', '-=AUTONAME=-', NULL, 'FLOW_PANEL_CREATE_WITH_WF', '', 0),
	(109, 'FLOW_PANEL_EDIT_WITH_WF', '', '-=AUTONAME=-', NULL, 'FLOW_PANEL_EDIT_WITH_WF', '', 0),
	(110, 'FLOW_PANEL_HISTORY', '', '-=AUTONAME=-', NULL, 'FLOW_PANEL_HISTORY', '', 0),
	(111, 'top_panel_create_new', '', '-=AUTONAME=-', NULL, 'top_panel_create_new', '', 0),
	(112, 'top_panel_create_folder_new', '', '-=AUTONAME=-', NULL, 'top_panel_create_folder_new', '', 0),
	(116, 'bx-panel-toggle', '', '-=AUTONAME=-', NULL, 'bx-panel-toggle', '', 0),
	(117, 'bx-panel-small-toggle', '', '-=AUTONAME=-', NULL, 'bx-panel-small-toggle', '', 0),
	(118, 'bx-panel-expander', 'var d=BX(\'bx-panel-expander\'); if (d) BX.fireEvent(d, \'click\');', '-=AUTONAME=-', NULL, 'bx-panel-expander', '', 0),
	(119, 'bx-panel-hider', 'var d=BX(\'bx-panel-hider\'); if (d) d.click();', '-=AUTONAME=-', NULL, 'bx-panel-hider', '', 0),
	(120, 'search-textbox-input', 'var d=BX(\'search-textbox-input\'); if (d) { d.click(); d.focus();}', '-=AUTONAME=-', '', 'search', '', 0),
	(121, 'bx-search-input', 'var d=BX(\'bx-search-input\'); if (d) { d.click(); d.focus(); }', '-=AUTONAME=-', '', 'bx-search-input', '', 0),
	(133, 'bx-panel-logout', 'var d=BX(\'bx-panel-logout\'); if (d) location.href = d.href;', '-=AUTONAME=-', '', 'bx-panel-logout', '', 0),
	(135, 'CDialog', 'var d=BX(\'cancel\'); if (d) d.click();', 'HK_DB_D_CANCEL', '', 'cancel', '', 0),
	(136, 'CDialog', 'var d=BX(\'close\'); if (d) d.click();', 'HK_DB_D_CLOSE', '', 'close', '', 0),
	(137, 'CDialog', 'var d=BX(\'savebtn\'); if (d) d.click();', 'HK_DB_D_SAVE', '', 'savebtn', '', 0),
	(138, 'CDialog', 'var d=BX(\'btn_popup_save\'); if (d) d.click();', 'HK_DB_D_EDIT_SAVE', '', 'btn_popup_save', '', 0),
	(139, 'Global', 'location.href=\'/bitrix/admin/user_admin.php?lang=\'+phpVars.LANGUAGE_ID;', 'HK_DB_SHW_U', '', '', '', 0);
/*!40000 ALTER TABLE `b_hot_keys_code` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_iblock
DROP TABLE IF EXISTS `b_iblock`;
CREATE TABLE IF NOT EXISTS `b_iblock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IBLOCK_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `LIST_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DETAIL_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTION_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CANONICAL_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PICTURE` int(18) DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DESCRIPTION_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `RSS_TTL` int(11) NOT NULL DEFAULT '24',
  `RSS_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `RSS_FILE_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `RSS_FILE_LIMIT` int(11) DEFAULT NULL,
  `RSS_FILE_DAYS` int(11) DEFAULT NULL,
  `RSS_YANDEX_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INDEX_ELEMENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `INDEX_SECTION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `WORKFLOW` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `BIZPROC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SECTION_CHOOSER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RIGHTS_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTION_PROPERTY` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_INDEX` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(11) NOT NULL DEFAULT '1',
  `LAST_CONV_ELEMENT` int(11) NOT NULL DEFAULT '0',
  `SOCNET_GROUP_ID` int(18) DEFAULT NULL,
  `EDIT_FILE_BEFORE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDIT_FILE_AFTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTIONS_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTION_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENTS_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENT_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock` (`IBLOCK_TYPE_ID`,`LID`,`ACTIVE`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_iblock: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `b_iblock` DISABLE KEYS */;
REPLACE INTO `b_iblock` (`ID`, `TIMESTAMP_X`, `IBLOCK_TYPE_ID`, `LID`, `CODE`, `NAME`, `ACTIVE`, `SORT`, `LIST_PAGE_URL`, `DETAIL_PAGE_URL`, `SECTION_PAGE_URL`, `CANONICAL_PAGE_URL`, `PICTURE`, `DESCRIPTION`, `DESCRIPTION_TYPE`, `RSS_TTL`, `RSS_ACTIVE`, `RSS_FILE_ACTIVE`, `RSS_FILE_LIMIT`, `RSS_FILE_DAYS`, `RSS_YANDEX_ACTIVE`, `XML_ID`, `TMP_ID`, `INDEX_ELEMENT`, `INDEX_SECTION`, `WORKFLOW`, `BIZPROC`, `SECTION_CHOOSER`, `LIST_MODE`, `RIGHTS_MODE`, `SECTION_PROPERTY`, `PROPERTY_INDEX`, `VERSION`, `LAST_CONV_ELEMENT`, `SOCNET_GROUP_ID`, `EDIT_FILE_BEFORE`, `EDIT_FILE_AFTER`, `SECTIONS_NAME`, `SECTION_NAME`, `ELEMENTS_NAME`, `ELEMENT_NAME`) VALUES
	(1, '2019-12-28 14:39:12', 'articles', 's1', 'articles', 'Статьи', 'Y', 500, '#SITE_DIR#/articles/index.php?ID=#IBLOCK_ID#', '#SITE_DIR#/article.php?ID=#ELEMENT_ID#', '#SITE_DIR#/articles/list.php?SECTION_ID=#SECTION_ID#', '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'Y', 'Y', 'N', 'N', 'L', '', 'S', 'N', 'N', 1, 0, NULL, '', '', 'Разделы', 'Раздел', 'Элементы', 'Элемент');
/*!40000 ALTER TABLE `b_iblock` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_iblock_cache
DROP TABLE IF EXISTS `b_iblock_cache`;
CREATE TABLE IF NOT EXISTS `b_iblock_cache` (
  `CACHE_KEY` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `CACHE` longtext COLLATE utf8_unicode_ci NOT NULL,
  `CACHE_DATE` datetime NOT NULL,
  PRIMARY KEY (`CACHE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_iblock_cache: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_iblock_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_cache` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_iblock_element
DROP TABLE IF EXISTS `b_iblock_element`;
CREATE TABLE IF NOT EXISTS `b_iblock_element` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `IBLOCK_ID` int(11) NOT NULL DEFAULT '0',
  `IBLOCK_SECTION_ID` int(11) DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ACTIVE_FROM` datetime DEFAULT NULL,
  `ACTIVE_TO` datetime DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PREVIEW_PICTURE` int(18) DEFAULT NULL,
  `PREVIEW_TEXT` text COLLATE utf8_unicode_ci,
  `PREVIEW_TEXT_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `DETAIL_PICTURE` int(18) DEFAULT NULL,
  `DETAIL_TEXT` longtext COLLATE utf8_unicode_ci,
  `DETAIL_TEXT_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `SEARCHABLE_CONTENT` text COLLATE utf8_unicode_ci,
  `WF_STATUS_ID` int(18) DEFAULT '1',
  `WF_PARENT_ELEMENT_ID` int(11) DEFAULT NULL,
  `WF_NEW` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WF_LOCKED_BY` int(18) DEFAULT NULL,
  `WF_DATE_LOCK` datetime DEFAULT NULL,
  `WF_COMMENTS` text COLLATE utf8_unicode_ci,
  `IN_SECTIONS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAGS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WF_LAST_HISTORY_ID` int(11) DEFAULT NULL,
  `SHOW_COUNTER` int(18) DEFAULT NULL,
  `SHOW_COUNTER_START` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_element_1` (`IBLOCK_ID`,`IBLOCK_SECTION_ID`),
  KEY `ix_iblock_element_4` (`IBLOCK_ID`,`XML_ID`,`WF_PARENT_ELEMENT_ID`),
  KEY `ix_iblock_element_3` (`WF_PARENT_ELEMENT_ID`),
  KEY `ix_iblock_element_code` (`IBLOCK_ID`,`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_iblock_element: ~10 rows (приблизительно)
/*!40000 ALTER TABLE `b_iblock_element` DISABLE KEYS */;
REPLACE INTO `b_iblock_element` (`ID`, `TIMESTAMP_X`, `MODIFIED_BY`, `DATE_CREATE`, `CREATED_BY`, `IBLOCK_ID`, `IBLOCK_SECTION_ID`, `ACTIVE`, `ACTIVE_FROM`, `ACTIVE_TO`, `SORT`, `NAME`, `PREVIEW_PICTURE`, `PREVIEW_TEXT`, `PREVIEW_TEXT_TYPE`, `DETAIL_PICTURE`, `DETAIL_TEXT`, `DETAIL_TEXT_TYPE`, `SEARCHABLE_CONTENT`, `WF_STATUS_ID`, `WF_PARENT_ELEMENT_ID`, `WF_NEW`, `WF_LOCKED_BY`, `WF_DATE_LOCK`, `WF_COMMENTS`, `IN_SECTIONS`, `XML_ID`, `CODE`, `TAGS`, `TMP_ID`, `WF_LAST_HISTORY_ID`, `SHOW_COUNTER`, `SHOW_COUNTER_START`) VALUES
	(3, '2019-12-30 12:20:51', 1, '2019-12-30 12:20:51', 1, 1, NULL, 'Y', '2019-12-30 12:13:43', '2020-01-30 12:13:00', 500, 'Article title 1', 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit..', 'text', 6, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lobortis feugiat vivamus at augue eget. Aliquet nec ullamcorper sit amet risus. Dignissim enim sit amet venenatis urna cursus eget. Turpis egestas pretium aenean pharetra magna ac placerat. Sed tempus urna et pharetra pharetra massa massa ultricies. Risus nullam eget felis eget nunc lobortis. Vel eros donec ac odio tempor orci dapibus ultrices in. Quisque id diam vel quam. Faucibus et molestie ac feugiat sed lectus vestibulum mattis. Suspendisse faucibus interdum posuere lorem ipsum dolor. Non odio euismod lacinia at quis risus. Purus viverra accumsan in nisl nisi. Dolor sit amet consectetur adipiscing elit. Semper auctor neque vitae tempus quam pellentesque nec nam aliquam. Pharetra vel turpis nunc eget lorem dolor sed viverra. Elit ut aliquam purus sit amet luctus venenatis lectus magna. Pretium viverra suspendisse potenti nullam ac tortor vitae.</p>\r\n                        <p>Quisque egestas diam in arcu cursus. Blandit libero volutpat sed cras ornare arcu dui. Scelerisque mauris pellentesque pulvinar pellentesque habitant morbi. Praesent semper feugiat nibh sed pulvinar. Posuere ac ut consequat semper. Semper risus in hendrerit gravida rutrum quisque. Lacus viverra vitae congue eu consequat ac. Nulla malesuada pellentesque elit eget gravida cum sociis natoque penatibus. Sapien nec sagittis aliquam malesuada. Ultricies leo integer malesuada nunc vel. Mattis ullamcorper velit sed ullamcorper morbi. Nec ullamcorper sit amet risus nullam eget felis. Amet consectetur adipiscing elit duis tristique sollicitudin. Etiam sit amet nisl purus in. Dignissim sodales ut eu sem integer.</p>\r\n                        <p>Viverra mauris in aliquam sem fringilla ut. Quis varius quam quisque id diam vel quam. Molestie ac feugiat sed lectus. Metus vulputate eu scelerisque felis imperdiet proin. Vitae auctor eu augue ut lectus arcu bibendum at varius. Vestibulum lorem sed risus ultricies. Egestas erat imperdiet sed euismod nisi porta lorem mollis aliquam. Leo urna molestie at elementum. Ac felis donec et odio. Tristique nulla aliquet enim tortor at auctor urna nunc. Velit ut tortor pretium viverra suspendisse. Tempor nec feugiat nisl pretium fusce. Aliquet nibh praesent tristique magna sit. Nibh nisl condimentum id venenatis. Augue neque gravida in fermentum et sollicitudin ac. Tempus imperdiet nulla malesuada pellentesque elit eget gravida. Et odio pellentesque diam volutpat commodo sed egestas. Scelerisque viverra mauris in aliquam.</p>\r\n                        <p>Turpis massa sed elementum tempus egestas sed sed. Fusce id velit ut tortor pretium viverra suspendisse potenti nullam. Quam lacus suspendisse faucibus interdum posuere lorem ipsum. Odio morbi quis commodo odio aenean sed adipiscing. Vulputate enim nulla aliquet porttitor. Sed augue lacus viverra vitae. Cum sociis natoque penatibus et magnis dis parturient. Ac turpis egestas sed tempus urna et pharetra. Blandit massa enim nec dui nunc mattis enim. Cras sed felis eget velit aliquet sagittis id consectetur purus. Bibendum at varius vel pharetra. Porta lorem mollis aliquam ut porttitor leo a. Eu turpis egestas pretium aenean pharetra magna. Praesent elementum facilisis leo vel fringilla est ullamcorper. Quisque non tellus orci ac auctor. Scelerisque eu ultrices vitae auctor eu augue. Malesuada fames ac turpis egestas integer eget aliquet nibh praesent.</p>\r\n                        <p>Odio facilisis mauris sit amet massa vitae tortor condimentum lacinia. Aliquet eget sit amet tellus cras adipiscing. Dui accumsan sit amet nulla facilisi. Ridiculus mus mauris vitae ultricies leo integer malesuada nunc vel. Nisi scelerisque eu ultrices vitae auctor eu augue ut lectus. Pellentesque adipiscing commodo elit at imperdiet dui accumsan sit amet. Aliquet nibh praesent tristique magna. At urna condimentum mattis pellentesque id. Et netus et malesuada fames ac turpis. Sit amet nulla facilisi morbi tempus iaculis urna id volutpat. Magna fringilla urna porttitor rhoncus. Sem viverra aliquet eget sit amet tellus cras adipiscing enim. At augue eget arcu dictum. Malesuada bibendum arcu vitae elementum curabitur vitae.</p>', 'html', 'ARTICLE TITLE 1\r\nLOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISCING ELIT..\r\nLOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISCING ELIT, SED DO EIUSMOD \r\nTEMPOR INCIDIDUNT UT LABORE ET DOLORE MAGNA ALIQUA. LOBORTIS FEUGIAT VIVAMUS AT AUGUE EGET. ALIQUET NEC ULLAMCORPER SIT AMET RISUS. DIGNISSIM ENIM SIT AMET VENENATIS URNA CURSUS EGET. TURPIS EGESTAS PRETIUM AENEAN PHARETRA MAGNA AC PLACERAT. SED TEMPUS URNA ET PHARETRA PHARETRA MASSA MASSA ULTRICIES. RISUS NULLAM EGET FELIS EGET NUNC LOBORTIS. VEL EROS DONEC AC ODIO TEMPOR ORCI DAPIBUS ULTRICES IN. QUISQUE ID DIAM VEL QUAM. FAUCIBUS ET MOLESTIE AC FEUGIAT SED LECTUS VESTIBULUM MATTIS. SUSPENDISSE FAUCIBUS INTERDUM POSUERE LOREM IPSUM DOLOR. NON ODIO EUISMOD LACINIA AT QUIS RISUS. PURUS VIVERRA ACCUMSAN IN NISL NISI. DOLOR SIT AMET CONSECTETUR ADIPISCING ELIT. SEMPER AUCTOR NEQUE VITAE TEMPUS QUAM PELLENTESQUE NEC NAM ALIQUAM. PHARETRA VEL TURPIS NUNC EGET LOREM DOLOR SED VIVERRA. ELIT UT ALIQUAM PURUS SIT AMET LUCTUS VENENATIS LECTUS MAGNA. PRETIUM VIVERRA SUSPENDISSE POTENTI NULLAM AC TORTOR VITAE. \r\n\r\nQUISQUE EGESTAS DIAM IN ARCU CURSUS. BLANDIT LIBERO VOLUTPAT SED CRAS ORNARE \r\nARCU DUI. SCELERISQUE MAURIS PELLENTESQUE PULVINAR PELLENTESQUE HABITANT MORBI. PRAESENT SEMPER FEUGIAT NIBH SED PULVINAR. POSUERE AC UT CONSEQUAT SEMPER. SEMPER RISUS IN HENDRERIT GRAVIDA RUTRUM QUISQUE. LACUS VIVERRA VITAE CONGUE EU CONSEQUAT AC. NULLA MALESUADA PELLENTESQUE ELIT EGET GRAVIDA CUM SOCIIS NATOQUE PENATIBUS. SAPIEN NEC SAGITTIS ALIQUAM MALESUADA. ULTRICIES LEO INTEGER MALESUADA NUNC VEL. MATTIS ULLAMCORPER VELIT SED ULLAMCORPER MORBI. NEC ULLAMCORPER SIT AMET RISUS NULLAM EGET FELIS. AMET CONSECTETUR ADIPISCING ELIT DUIS TRISTIQUE SOLLICITUDIN. ETIAM SIT AMET NISL PURUS IN. DIGNISSIM SODALES UT EU SEM INTEGER. \r\n\r\nVIVERRA MAURIS IN ALIQUAM SEM FRINGILLA UT. QUIS VARIUS QUAM QUISQUE ID \r\nDIAM VEL QUAM. MOLESTIE AC FEUGIAT SED LECTUS. METUS VULPUTATE EU SCELERISQUE FELIS IMPERDIET PROIN. VITAE AUCTOR EU AUGUE UT LECTUS ARCU BIBENDUM AT VARIUS. VESTIBULUM LOREM SED RISUS ULTRICIES. EGESTAS ERAT IMPERDIET SED EUISMOD NISI PORTA LOREM MOLLIS ALIQUAM. LEO URNA MOLESTIE AT ELEMENTUM. AC FELIS DONEC ET ODIO. TRISTIQUE NULLA ALIQUET ENIM TORTOR AT AUCTOR URNA NUNC. VELIT UT TORTOR PRETIUM VIVERRA SUSPENDISSE. TEMPOR NEC FEUGIAT NISL PRETIUM FUSCE. ALIQUET NIBH PRAESENT TRISTIQUE MAGNA SIT. NIBH NISL CONDIMENTUM ID VENENATIS. AUGUE NEQUE GRAVIDA IN FERMENTUM ET SOLLICITUDIN AC. TEMPUS IMPERDIET NULLA MALESUADA PELLENTESQUE ELIT EGET GRAVIDA. ET ODIO PELLENTESQUE DIAM VOLUTPAT COMMODO SED EGESTAS. SCELERISQUE VIVERRA MAURIS IN ALIQUAM. \r\n\r\nTURPIS MASSA SED ELEMENTUM TEMPUS EGESTAS SED SED. FUSCE ID VELIT UT TORTOR \r\nPRETIUM VIVERRA SUSPENDISSE POTENTI NULLAM. QUAM LACUS SUSPENDISSE FAUCIBUS INTERDUM POSUERE LOREM IPSUM. ODIO MORBI QUIS COMMODO ODIO AENEAN SED ADIPISCING. VULPUTATE ENIM NULLA ALIQUET PORTTITOR. SED AUGUE LACUS VIVERRA VITAE. CUM SOCIIS NATOQUE PENATIBUS ET MAGNIS DIS PARTURIENT. AC TURPIS EGESTAS SED TEMPUS URNA ET PHARETRA. BLANDIT MASSA ENIM NEC DUI NUNC MATTIS ENIM. CRAS SED FELIS EGET VELIT ALIQUET SAGITTIS ID CONSECTETUR PURUS. BIBENDUM AT VARIUS VEL PHARETRA. PORTA LOREM MOLLIS ALIQUAM UT PORTTITOR LEO A. EU TURPIS EGESTAS PRETIUM AENEAN PHARETRA MAGNA. PRAESENT ELEMENTUM FACILISIS LEO VEL FRINGILLA EST ULLAMCORPER. QUISQUE NON TELLUS ORCI AC AUCTOR. SCELERISQUE EU ULTRICES VITAE AUCTOR EU AUGUE. MALESUADA FAMES AC TURPIS EGESTAS INTEGER EGET ALIQUET NIBH PRAESENT. \r\n\r\nODIO FACILISIS MAURIS SIT AMET MASSA VITAE TORTOR CONDIMENTUM LACINIA. \r\nALIQUET EGET SIT AMET TELLUS CRAS ADIPISCING. DUI ACCUMSAN SIT AMET NULLA FACILISI. RIDICULUS MUS MAURIS VITAE ULTRICIES LEO INTEGER MALESUADA NUNC VEL. NISI SCELERISQUE EU ULTRICES VITAE AUCTOR EU AUGUE UT LECTUS. PELLENTESQUE ADIPISCING COMMODO ELIT AT IMPERDIET DUI ACCUMSAN SIT AMET. ALIQUET NIBH PRAESENT TRISTIQUE MAGNA. AT URNA CONDIMENTUM MATTIS PELLENTESQUE ID. ET NETUS ET MALESUADA FAMES AC TURPIS. SIT AMET NULLA FACILISI MORBI TEMPUS IACULIS URNA ID VOLUTPAT. MAGNA FRINGILLA URNA PORTTITOR RHONCUS. SEM VIVERRA ALIQUET EGET SIT AMET TELLUS CRAS ADIPISCING ENIM. AT AUGUE EGET ARCU DICTUM. MALESUADA BIBENDUM ARCU VITAE ELEMENTUM CURABITUR VITAE.', 1, NULL, NULL, NULL, NULL, NULL, 'N', '3', 'article-title-1', '', '0', NULL, 1, '2019-12-30 12:21:02'),
	(4, '2019-12-30 12:22:30', 1, '2019-12-30 12:22:30', 1, 1, NULL, 'Y', '2019-12-30 12:21:18', '2020-01-30 12:21:00', 500, 'Article title 2', 7, 'Zombie ipsum reversus ab viral inferno...', 'text', 8, '<p>Zombie ipsum reversus ab viral inferno, nam rick grimes malum cerebro. De carne lumbering animata corpora quaeritis. Summus brains sit​​, morbo vel maleficia? De apocalypsi gorger omero undead survivor dictum mauris. Hi mindless mortuis soulless creaturas, imo evil stalking monstra adventus resi dentevil vultus comedat cerebella viventium. Qui animated corpse, cricket bat max brucks terribilem incessu zomby. The voodoo sacerdos flesh eater, suscitat mortuos comedere carnem virus. Zonbi tattered for solum oculi eorum defunctis go lum cerebro. Nescio brains an Undead zombies. Sicut malus putrid voodoo horror. Nigh tofth eliv ingdead.</p>\r\n                        <p>Cum horribilem walking dead resurgere de crazed sepulcris creaturis, zombie sicut de grave feeding iride et serpens. Pestilentia, shaun ofthe dead scythe animated corpses ipsa screams. Pestilentia est plague haec decaying ambulabat mortuos. Sicut zeder apathetic malus voodoo. Aenean a dolor plan et terror soulless vulnerum contagium accedunt, mortui iam vivam unlife. Qui tardius moveri, brid eof reanimator sed in magna copia sint terribiles undeath legionis. Alii missing oculis aliorum sicut serpere crabs nostram. Putridi braindead odores kill and infect, aere implent left four dead.</p>\r\n                        <p>Lucio fulci tremor est dark vivos magna. Expansis creepy arm yof darkness ulnis witchcraft missing carnem armis Kirkman Moore and Adlard caeruleum in locis. Romero morbo Congress amarus in auras. Nihil horum sagittis tincidunt, zombie slack-jawed gelida survival portenta. The unleashed virus est, et iam zombie mortui ambulabunt super terram. Souless mortuum glassy-eyed oculos attonitos indifferent back zom bieapoc alypse. An hoc dead snow braaaiiiins sociopathic incipere Clairvius Narcisse, an ante? Is bello mundi z?</p>\r\n                        <p>In Craven omni memoria patriae zombieland clairvius narcisse religionis sunt diri undead historiarum. Golums, zombies unrelenting et Raimi fascinati beheading. Maleficia! Vel cemetery man a modern bursting eyeballs perhsaps morbi. A terrenti flesh contagium. Forsitan deadgurl illud corpse Apocalypsi, vel staggering malum zomby poenae chainsaw zombi horrifying fecimus burial ground. Indeflexus shotgun coup de poudre monstra per plateas currere. Fit de decay nostra carne undead. Poenitentiam violent zom biehig hway agite RE:dead pœnitentiam! Vivens mortua sunt apud nos night of the living dead.</p>\r\n                        <p>Whyt zomby Ut fames after death cerebro virus enim carnis grusome, viscera et organa viventium. Sicut spargit virus ad impetum, qui supersumus flesh eating. Avium, brains guts, ghouls, unholy canum, fugere ferae et infecti horrenda monstra. Videmus twenty-eight deformis pale, horrenda daemonum. Panduntur brains portae rotting inferi. Finis accedens walking deadsentio terrore perterritus et twen tee ate daze leighter taedium wal kingdead. The horror, monstra epidemic significant finem. Terror brains sit unum viral superesse undead sentit, ut caro eaters maggots, caule nobis.</p>', 'html', 'ARTICLE TITLE 2\r\nZOMBIE IPSUM REVERSUS AB VIRAL INFERNO...\r\nZOMBIE IPSUM REVERSUS AB VIRAL INFERNO, NAM RICK GRIMES MALUM CEREBRO. \r\nDE CARNE LUMBERING ANIMATA CORPORA QUAERITIS. SUMMUS BRAINS SIT​​, MORBO VEL MALEFICIA? DE APOCALYPSI GORGER OMERO UNDEAD SURVIVOR DICTUM MAURIS. HI MINDLESS MORTUIS SOULLESS CREATURAS, IMO EVIL STALKING MONSTRA ADVENTUS RESI DENTEVIL VULTUS COMEDAT CEREBELLA VIVENTIUM. QUI ANIMATED CORPSE, CRICKET BAT MAX BRUCKS TERRIBILEM INCESSU ZOMBY. THE VOODOO SACERDOS FLESH EATER, SUSCITAT MORTUOS COMEDERE CARNEM VIRUS. ZONBI TATTERED FOR SOLUM OCULI EORUM DEFUNCTIS GO LUM CEREBRO. NESCIO BRAINS AN UNDEAD ZOMBIES. SICUT MALUS PUTRID VOODOO HORROR. NIGH TOFTH ELIV INGDEAD. \r\n\r\nCUM HORRIBILEM WALKING DEAD RESURGERE DE CRAZED SEPULCRIS CREATURIS, ZOMBIE \r\nSICUT DE GRAVE FEEDING IRIDE ET SERPENS. PESTILENTIA, SHAUN OFTHE DEAD SCYTHE ANIMATED CORPSES IPSA SCREAMS. PESTILENTIA EST PLAGUE HAEC DECAYING AMBULABAT MORTUOS. SICUT ZEDER APATHETIC MALUS VOODOO. AENEAN A DOLOR PLAN ET TERROR SOULLESS VULNERUM CONTAGIUM ACCEDUNT, MORTUI IAM VIVAM UNLIFE. QUI TARDIUS MOVERI, BRID EOF REANIMATOR SED IN MAGNA COPIA SINT TERRIBILES UNDEATH LEGIONIS. ALII MISSING OCULIS ALIORUM SICUT SERPERE CRABS NOSTRAM. PUTRIDI BRAINDEAD ODORES KILL AND INFECT, AERE IMPLENT LEFT FOUR DEAD. \r\n\r\nLUCIO FULCI TREMOR EST DARK VIVOS MAGNA. EXPANSIS CREEPY ARM YOF DARKNESS \r\nULNIS WITCHCRAFT MISSING CARNEM ARMIS KIRKMAN MOORE AND ADLARD CAERULEUM IN LOCIS. ROMERO MORBO CONGRESS AMARUS IN AURAS. NIHIL HORUM SAGITTIS TINCIDUNT, ZOMBIE SLACK-JAWED GELIDA SURVIVAL PORTENTA. THE UNLEASHED VIRUS EST, ET IAM ZOMBIE MORTUI AMBULABUNT SUPER TERRAM. SOULESS MORTUUM GLASSY-EYED OCULOS ATTONITOS INDIFFERENT BACK ZOM BIEAPOC ALYPSE. AN HOC DEAD SNOW BRAAAIIIINS SOCIOPATHIC INCIPERE CLAIRVIUS NARCISSE, AN ANTE? IS BELLO MUNDI Z? \r\n\r\nIN CRAVEN OMNI MEMORIA PATRIAE ZOMBIELAND CLAIRVIUS NARCISSE RELIGIONIS \r\nSUNT DIRI UNDEAD HISTORIARUM. GOLUMS, ZOMBIES UNRELENTING ET RAIMI FASCINATI BEHEADING. MALEFICIA! VEL CEMETERY MAN A MODERN BURSTING EYEBALLS PERHSAPS MORBI. A TERRENTI FLESH CONTAGIUM. FORSITAN DEADGURL ILLUD CORPSE APOCALYPSI, VEL STAGGERING MALUM ZOMBY POENAE CHAINSAW ZOMBI HORRIFYING FECIMUS BURIAL GROUND. INDEFLEXUS SHOTGUN COUP DE POUDRE MONSTRA PER PLATEAS CURRERE. FIT DE DECAY NOSTRA CARNE UNDEAD. POENITENTIAM VIOLENT ZOM BIEHIG HWAY AGITE RE:DEAD PŒNITENTIAM! VIVENS MORTUA SUNT APUD NOS NIGHT OF THE LIVING DEAD. \r\n\r\nWHYT ZOMBY UT FAMES AFTER DEATH CEREBRO VIRUS ENIM CARNIS GRUSOME, VISCERA \r\nET ORGANA VIVENTIUM. SICUT SPARGIT VIRUS AD IMPETUM, QUI SUPERSUMUS FLESH EATING. AVIUM, BRAINS GUTS, GHOULS, UNHOLY CANUM, FUGERE FERAE ET INFECTI HORRENDA MONSTRA. VIDEMUS TWENTY-EIGHT DEFORMIS PALE, HORRENDA DAEMONUM. PANDUNTUR BRAINS PORTAE ROTTING INFERI. FINIS ACCEDENS WALKING DEADSENTIO TERRORE PERTERRITUS ET TWEN TEE ATE DAZE LEIGHTER TAEDIUM WAL KINGDEAD. THE HORROR, MONSTRA EPIDEMIC SIGNIFICANT FINEM. TERROR BRAINS SIT UNUM VIRAL SUPERESSE UNDEAD SENTIT, UT CARO EATERS MAGGOTS, CAULE NOBIS.', 1, NULL, NULL, NULL, NULL, NULL, 'N', '4', 'article-title-2', '', '0', NULL, 1, '2019-12-30 12:24:29'),
	(5, '2019-12-30 12:24:17', 1, '2019-12-30 12:24:17', 1, 1, NULL, 'Y', '2019-12-30 12:23:20', '2020-01-30 12:23:00', 500, 'Article title 3', 9, 'Zombies reversus ab inferno, nam malum cerebro...', 'text', 10, '<p>Zombies reversus ab inferno, nam malum cerebro. De carne animata corpora quaeritis. Summus sit​​, morbo vel maleficia? De Apocalypsi undead dictum mauris. Hi mortuis soulless creaturas, imo monstra adventus vultus comedat cerebella viventium. Qui offenderit rapto, terribilem incessu. The voodoo sacerdos suscitat mortuos comedere carnem. Search for solum oculi eorum defunctis cerebro. Nescio an Undead zombies. Sicut malus movie horror.</p>\r\n                        <p>Cum horribilem resurgere de sepulcris creaturis, sicut de iride et serpens. Pestilentia, ipsa screams. Pestilentia est haec ambulabat mortuos. Sicut malus voodoo. Aenean a dolor vulnerum aperire accedunt, mortui iam vivam. Qui tardius moveri, sed in magna copia sint terribiles legionis. Alii missing oculis aliorum sicut serpere crabs nostram. Putridi odores aere implent.</p>\r\n                        <p>Tremor est vivos magna. Expansis ulnis video missing carnem armis caeruleum in locis. A morbo amarus in auras. Nihil horum sagittis tincidunt, gelida portenta. The unleashed virus est, et iam mortui ambulabunt super terram. Souless mortuum oculos attonitos back zombies. An hoc incipere Clairvius Narcisse, an ante? Is bello mundi z?</p>\r\n                        <p>In omni memoria patriae religionis sunt diri undead historiarum. Golums, zombies et fascinati. Maleficia! Vel a modern perhsaps morbi. A terrenti contagium. Forsitan illud Apocalypsi, vel malum poenae horrifying fecimus. Indeflexus monstra per plateas currere. Fit de nostra carne undead. Poenitentiam agite pœnitentiam! Vivens mortua sunt apud nos.</p>\r\n                        <p>Ut fames cerebro enim carnis, viscera et organa viventium. Sicut spargit virus ad impetum, qui supersumus. Avium, canum, fugere ferae et infecti horrenda monstra. Videmus deformis horrenda daemonum. Panduntur portae inferi. Finis accedens sentio terrore perterritus et taedium. The horror, monstra significant finem. Terror sit unum superesse sentit, ut caro eaters caule nobis.</p>', 'html', 'ARTICLE TITLE 3\r\nZOMBIES REVERSUS AB INFERNO, NAM MALUM CEREBRO...\r\nZOMBIES REVERSUS AB INFERNO, NAM MALUM CEREBRO. DE CARNE ANIMATA CORPORA \r\nQUAERITIS. SUMMUS SIT​​, MORBO VEL MALEFICIA? DE APOCALYPSI UNDEAD DICTUM MAURIS. HI MORTUIS SOULLESS CREATURAS, IMO MONSTRA ADVENTUS VULTUS COMEDAT CEREBELLA VIVENTIUM. QUI OFFENDERIT RAPTO, TERRIBILEM INCESSU. THE VOODOO SACERDOS SUSCITAT MORTUOS COMEDERE CARNEM. SEARCH FOR SOLUM OCULI EORUM DEFUNCTIS CEREBRO. NESCIO AN UNDEAD ZOMBIES. SICUT MALUS MOVIE HORROR. \r\n\r\nCUM HORRIBILEM RESURGERE DE SEPULCRIS CREATURIS, SICUT DE IRIDE ET SERPENS. \r\nPESTILENTIA, IPSA SCREAMS. PESTILENTIA EST HAEC AMBULABAT MORTUOS. SICUT MALUS VOODOO. AENEAN A DOLOR VULNERUM APERIRE ACCEDUNT, MORTUI IAM VIVAM. QUI TARDIUS MOVERI, SED IN MAGNA COPIA SINT TERRIBILES LEGIONIS. ALII MISSING OCULIS ALIORUM SICUT SERPERE CRABS NOSTRAM. PUTRIDI ODORES AERE IMPLENT. \r\n\r\nTREMOR EST VIVOS MAGNA. EXPANSIS ULNIS VIDEO MISSING CARNEM ARMIS CAERULEUM \r\nIN LOCIS. A MORBO AMARUS IN AURAS. NIHIL HORUM SAGITTIS TINCIDUNT, GELIDA PORTENTA. THE UNLEASHED VIRUS EST, ET IAM MORTUI AMBULABUNT SUPER TERRAM. SOULESS MORTUUM OCULOS ATTONITOS BACK ZOMBIES. AN HOC INCIPERE CLAIRVIUS NARCISSE, AN ANTE? IS BELLO MUNDI Z? \r\n\r\nIN OMNI MEMORIA PATRIAE RELIGIONIS SUNT DIRI UNDEAD HISTORIARUM. GOLUMS, \r\nZOMBIES ET FASCINATI. MALEFICIA! VEL A MODERN PERHSAPS MORBI. A TERRENTI CONTAGIUM. FORSITAN ILLUD APOCALYPSI, VEL MALUM POENAE HORRIFYING FECIMUS. INDEFLEXUS MONSTRA PER PLATEAS CURRERE. FIT DE NOSTRA CARNE UNDEAD. POENITENTIAM AGITE PŒNITENTIAM! VIVENS MORTUA SUNT APUD NOS. \r\n\r\nUT FAMES CEREBRO ENIM CARNIS, VISCERA ET ORGANA VIVENTIUM. SICUT SPARGIT \r\nVIRUS AD IMPETUM, QUI SUPERSUMUS. AVIUM, CANUM, FUGERE FERAE ET INFECTI HORRENDA MONSTRA. VIDEMUS DEFORMIS HORRENDA DAEMONUM. PANDUNTUR PORTAE INFERI. FINIS ACCEDENS SENTIO TERRORE PERTERRITUS ET TAEDIUM. THE HORROR, MONSTRA SIGNIFICANT FINEM. TERROR SIT UNUM SUPERESSE SENTIT, UT CARO EATERS CAULE NOBIS.', 1, NULL, NULL, NULL, NULL, NULL, 'N', '5', 'article-title-3', '', '0', NULL, 1, '2019-12-30 12:24:35'),
	(6, '2019-12-30 12:26:17', 1, '2019-12-30 12:26:17', 1, 1, NULL, 'Y', '2019-12-30 12:24:58', '2020-01-30 12:25:00', 500, 'Article title 4', 11, 'Bacon ipsum dolor amet jerky drumstick burgdoggen...', 'text', 12, '<p>Bacon ipsum dolor amet jerky drumstick burgdoggen buffalo landjaeger jowl pancetta turkey shoulder. Pork chop chislic shank kevin. Pork chop flank alcatra, pork belly ham hock turducken capicola cupim tongue rump ham biltong. Chicken porchetta jowl, ribeye biltong spare ribs turkey andouille pancetta buffalo meatloaf shank rump sausage.</p>\r\n                        <p>Andouille cow chicken shank brisket meatball turducken tail doner venison. Flank prosciutto beef ribs porchetta buffalo drumstick shoulder bresaola. Porchetta bresaola turducken, pancetta cow jerky pork loin. Prosciutto brisket chuck pork belly sausage pork loin turkey leberkas strip steak alcatra meatball rump biltong capicola. Chislic bresaola tail, filet mignon ball tip chuck frankfurter meatloaf leberkas spare ribs sirloin salami pig.</p>\r\n                        <p>Jowl strip steak turkey, bacon pork loin brisket drumstick leberkas ribeye pig. Pastrami jerky fatback drumstick short loin beef. Bacon leberkas short loin, tail sausage spare ribs shoulder. Tri-tip meatball bresaola spare ribs short loin shankle ham t-bone. Turducken brisket strip steak frankfurter, drumstick tri-tip pork jowl tenderloin meatball chuck pork belly. Porchetta flank ball tip pancetta ribeye landjaeger.</p>\r\n                        <p>Ground round cow capicola beef ribs rump short ribs corned beef pig. Shoulder spare ribs landjaeger picanha, prosciutto strip steak meatloaf filet mignon pig leberkas short loin t-bone capicola andouille. Landjaeger andouille meatball pig porchetta pastrami turkey, biltong pancetta frankfurter. Jerky biltong shankle fatback ham hock bacon, turkey burgdoggen brisket boudin pastrami. Doner jowl biltong salami tri-tip beef, pork chop pastrami strip steak meatloaf. Chicken venison meatloaf, pancetta jerky alcatra filet mignon doner pig short ribs.</p>\r\n                        <p>Pork chop flank prosciutto burgdoggen. Capicola sausage cow, chuck turkey leberkas chislic meatloaf venison jowl prosciutto. Fatback cow boudin chicken biltong sausage strip steak porchetta corned beef. Pork andouille chuck salami shank ham hock fatback t-bone prosciutto ribeye frankfurter jowl brisket beef. Boudin short ribs chicken, capicola short loin meatball filet mignon tenderloin rump tail. Leberkas fatback drumstick pork belly, picanha flank pancetta sausage boudin short ribs. Pork jerky salami kielbasa porchetta drumstick pancetta beef ribs.</p>  ', 'html', 'ARTICLE TITLE 4\r\nBACON IPSUM DOLOR AMET JERKY DRUMSTICK BURGDOGGEN...\r\nBACON IPSUM DOLOR AMET JERKY DRUMSTICK BURGDOGGEN BUFFALO LANDJAEGER JOWL \r\nPANCETTA TURKEY SHOULDER. PORK CHOP CHISLIC SHANK KEVIN. PORK CHOP FLANK ALCATRA, PORK BELLY HAM HOCK TURDUCKEN CAPICOLA CUPIM TONGUE RUMP HAM BILTONG. CHICKEN PORCHETTA JOWL, RIBEYE BILTONG SPARE RIBS TURKEY ANDOUILLE PANCETTA BUFFALO MEATLOAF SHANK RUMP SAUSAGE. \r\n\r\nANDOUILLE COW CHICKEN SHANK BRISKET MEATBALL TURDUCKEN TAIL DONER VENISON. \r\nFLANK PROSCIUTTO BEEF RIBS PORCHETTA BUFFALO DRUMSTICK SHOULDER BRESAOLA. PORCHETTA BRESAOLA TURDUCKEN, PANCETTA COW JERKY PORK LOIN. PROSCIUTTO BRISKET CHUCK PORK BELLY SAUSAGE PORK LOIN TURKEY LEBERKAS STRIP STEAK ALCATRA MEATBALL RUMP BILTONG CAPICOLA. CHISLIC BRESAOLA TAIL, FILET MIGNON BALL TIP CHUCK FRANKFURTER MEATLOAF LEBERKAS SPARE RIBS SIRLOIN SALAMI PIG. \r\n\r\nJOWL STRIP STEAK TURKEY, BACON PORK LOIN BRISKET DRUMSTICK LEBERKAS RIBEYE \r\nPIG. PASTRAMI JERKY FATBACK DRUMSTICK SHORT LOIN BEEF. BACON LEBERKAS SHORT LOIN, TAIL SAUSAGE SPARE RIBS SHOULDER. TRI-TIP MEATBALL BRESAOLA SPARE RIBS SHORT LOIN SHANKLE HAM T-BONE. TURDUCKEN BRISKET STRIP STEAK FRANKFURTER, DRUMSTICK TRI-TIP PORK JOWL TENDERLOIN MEATBALL CHUCK PORK BELLY. PORCHETTA FLANK BALL TIP PANCETTA RIBEYE LANDJAEGER. \r\n\r\nGROUND ROUND COW CAPICOLA BEEF RIBS RUMP SHORT RIBS CORNED BEEF PIG. SHOULDER \r\nSPARE RIBS LANDJAEGER PICANHA, PROSCIUTTO STRIP STEAK MEATLOAF FILET MIGNON PIG LEBERKAS SHORT LOIN T-BONE CAPICOLA ANDOUILLE. LANDJAEGER ANDOUILLE MEATBALL PIG PORCHETTA PASTRAMI TURKEY, BILTONG PANCETTA FRANKFURTER. JERKY BILTONG SHANKLE FATBACK HAM HOCK BACON, TURKEY BURGDOGGEN BRISKET BOUDIN PASTRAMI. DONER JOWL BILTONG SALAMI TRI-TIP BEEF, PORK CHOP PASTRAMI STRIP STEAK MEATLOAF. CHICKEN VENISON MEATLOAF, PANCETTA JERKY ALCATRA FILET MIGNON DONER PIG SHORT RIBS. \r\n\r\nPORK CHOP FLANK PROSCIUTTO BURGDOGGEN. CAPICOLA SAUSAGE COW, CHUCK TURKEY \r\nLEBERKAS CHISLIC MEATLOAF VENISON JOWL PROSCIUTTO. FATBACK COW BOUDIN CHICKEN BILTONG SAUSAGE STRIP STEAK PORCHETTA CORNED BEEF. PORK ANDOUILLE CHUCK SALAMI SHANK HAM HOCK FATBACK T-BONE PROSCIUTTO RIBEYE FRANKFURTER JOWL BRISKET BEEF. BOUDIN SHORT RIBS CHICKEN, CAPICOLA SHORT LOIN MEATBALL FILET MIGNON TENDERLOIN RUMP TAIL. LEBERKAS FATBACK DRUMSTICK PORK BELLY, PICANHA FLANK PANCETTA SAUSAGE BOUDIN SHORT RIBS. PORK JERKY SALAMI KIELBASA PORCHETTA DRUMSTICK PANCETTA BEEF RIBS.', 1, NULL, NULL, NULL, NULL, NULL, 'N', '6', 'article-title-4', '', '0', NULL, NULL, NULL),
	(7, '2019-12-30 12:27:37', 1, '2019-12-30 12:27:37', 1, 1, NULL, 'Y', '2019-12-30 12:26:37', '2020-01-30 12:26:00', 500, 'Article title 5', 13, 'Apple pie dragée jelly muffin chocolate...', 'text', 14, '<p>Apple pie dragée jelly muffin chocolate. Cheesecake candy canes cheesecake lemon drops apple pie pastry soufflé. Lemon drops gingerbread fruitcake croissant soufflé cheesecake powder bonbon cookie. Danish donut tart liquorice. Tart halvah dessert tiramisu. Bonbon jelly beans lemon drops chupa chups pastry. Gummies candy cake. Marshmallow powder muffin cotton candy. Brownie cupcake carrot cake chocolate. Croissant chocolate cake jujubes danish muffin caramels fruitcake carrot cake cookie. Gingerbread chocolate cake donut bear claw jujubes biscuit. Jelly-o candy canes chocolate bar dessert jelly marzipan dragée. Pudding chocolate cake bonbon pudding dessert icing ice cream.</p>\r\n                        <p>Lollipop gingerbread gummi bears dragée tart toffee candy canes chocolate croissant. Gingerbread bonbon tiramisu jelly beans chocolate bar. Dragée topping muffin tiramisu sweet. Powder tart cake lollipop bear claw apple pie tart. Pie sweet roll candy danish danish pudding candy. Marshmallow sugar plum tart jelly beans bear claw cupcake chupa chups jelly dessert. Topping chupa chups chocolate cake liquorice. Jelly-o jujubes carrot cake cake donut lollipop candy canes bear claw. Cotton candy icing tootsie roll pastry. Sugar plum powder cookie candy jelly carrot cake cake pastry candy canes. Lemon drops pie chocolate cake candy canes chocolate cake. Gummi bears gummies wafer jelly-o carrot cake marzipan. Cake cheesecake candy canes gummi bears jelly.</p>\r\n                        <p>Topping tart gingerbread dessert. Chocolate cake dragée powder topping fruitcake. Liquorice apple pie wafer marshmallow biscuit donut halvah pudding cheesecake. Fruitcake jujubes tootsie roll bonbon. Liquorice muffin oat cake toffee chupa chups liquorice fruitcake. Macaroon soufflé jelly-o caramels donut cupcake pudding pie. Icing liquorice cheesecake sweet roll sweet roll dessert. Bonbon cheesecake candy cake. Topping soufflé chocolate carrot cake marshmallow macaroon tart croissant. Cheesecake cotton candy croissant caramels lollipop cake soufflé chocolate bar marzipan. Apple pie powder bear claw. Cupcake lollipop lemon drops pie wafer ice cream danish. Apple pie gingerbread jelly beans biscuit tart. Danish fruitcake fruitcake liquorice.</p>\r\n                        <p>Pudding dragée gingerbread chupa chups brownie fruitcake fruitcake cheesecake pudding. Chocolate bar danish sweet roll cake sugar plum sesame snaps toffee liquorice. Cotton candy jelly candy canes biscuit chocolate sweet. Muffin tart marshmallow liquorice dessert soufflé chocolate bar tart cupcake. Muffin cake marzipan jujubes pie gingerbread. Cookie cupcake pastry cheesecake cheesecake lemon drops gummies. Candy pudding gummi bears. Muffin sweet roll sweet danish wafer cotton candy. Wafer tart chocolate bar. Tart toffee jelly beans biscuit powder. Cotton candy lollipop sugar plum bonbon sweet gummi bears. Bear claw tootsie roll lemon drops cotton candy cheesecake. Bonbon topping danish sweet roll macaroon lollipop. Ice cream danish brownie lollipop donut lemon drops biscuit dragée.</p>\r\n                        <p>Tiramisu gummi bears pastry jelly. Sweet roll carrot cake liquorice bonbon chocolate tiramisu danish oat cake lemon drops. Chocolate cake wafer muffin chupa chups. Macaroon cupcake pastry brownie chocolate bar powder cheesecake marzipan. Pie chupa chups chocolate cake gummi bears fruitcake sesame snaps fruitcake biscuit cake. Pastry sugar plum muffin. Lollipop lemon drops bear claw topping lollipop cake. Marshmallow donut sugar plum lollipop marzipan. Bear claw candy canes cake gummi bears gummies jelly. Icing cake powder gummi bears cupcake. Carrot cake ice cream soufflé jelly beans. Sugar plum bear claw pie danish icing cupcake chocolate dessert tiramisu. Halvah sweet roll tiramisu sugar plum lollipop jujubes cupcake oat cake.</p>', 'html', 'ARTICLE TITLE 5\r\nAPPLE PIE DRAGÉE JELLY MUFFIN CHOCOLATE...\r\nAPPLE PIE DRAGÉE JELLY MUFFIN CHOCOLATE. CHEESECAKE CANDY CANES CHEESECAKE \r\nLEMON DROPS APPLE PIE PASTRY SOUFFLÉ. LEMON DROPS GINGERBREAD FRUITCAKE CROISSANT SOUFFLÉ CHEESECAKE POWDER BONBON COOKIE. DANISH DONUT TART LIQUORICE. TART HALVAH DESSERT TIRAMISU. BONBON JELLY BEANS LEMON DROPS CHUPA CHUPS PASTRY. GUMMIES CANDY CAKE. MARSHMALLOW POWDER MUFFIN COTTON CANDY. BROWNIE CUPCAKE CARROT CAKE CHOCOLATE. CROISSANT CHOCOLATE CAKE JUJUBES DANISH MUFFIN CARAMELS FRUITCAKE CARROT CAKE COOKIE. GINGERBREAD CHOCOLATE CAKE DONUT BEAR CLAW JUJUBES BISCUIT. JELLY-O CANDY CANES CHOCOLATE BAR DESSERT JELLY MARZIPAN DRAGÉE. PUDDING CHOCOLATE CAKE BONBON PUDDING DESSERT ICING ICE CREAM. \r\n\r\nLOLLIPOP GINGERBREAD GUMMI BEARS DRAGÉE TART TOFFEE CANDY CANES CHOCOLATE \r\nCROISSANT. GINGERBREAD BONBON TIRAMISU JELLY BEANS CHOCOLATE BAR. DRAGÉE TOPPING MUFFIN TIRAMISU SWEET. POWDER TART CAKE LOLLIPOP BEAR CLAW APPLE PIE TART. PIE SWEET ROLL CANDY DANISH DANISH PUDDING CANDY. MARSHMALLOW SUGAR PLUM TART JELLY BEANS BEAR CLAW CUPCAKE CHUPA CHUPS JELLY DESSERT. TOPPING CHUPA CHUPS CHOCOLATE CAKE LIQUORICE. JELLY-O JUJUBES CARROT CAKE CAKE DONUT LOLLIPOP CANDY CANES BEAR CLAW. COTTON CANDY ICING TOOTSIE ROLL PASTRY. SUGAR PLUM POWDER COOKIE CANDY JELLY CARROT CAKE CAKE PASTRY CANDY CANES. LEMON DROPS PIE CHOCOLATE CAKE CANDY CANES CHOCOLATE CAKE. GUMMI BEARS GUMMIES WAFER JELLY-O CARROT CAKE MARZIPAN. CAKE CHEESECAKE CANDY CANES GUMMI BEARS JELLY. \r\n\r\nTOPPING TART GINGERBREAD DESSERT. CHOCOLATE CAKE DRAGÉE POWDER TOPPING \r\nFRUITCAKE. LIQUORICE APPLE PIE WAFER MARSHMALLOW BISCUIT DONUT HALVAH PUDDING CHEESECAKE. FRUITCAKE JUJUBES TOOTSIE ROLL BONBON. LIQUORICE MUFFIN OAT CAKE TOFFEE CHUPA CHUPS LIQUORICE FRUITCAKE. MACAROON SOUFFLÉ JELLY-O CARAMELS DONUT CUPCAKE PUDDING PIE. ICING LIQUORICE CHEESECAKE SWEET ROLL SWEET ROLL DESSERT. BONBON CHEESECAKE CANDY CAKE. TOPPING SOUFFLÉ CHOCOLATE CARROT CAKE MARSHMALLOW MACAROON TART CROISSANT. CHEESECAKE COTTON CANDY CROISSANT CARAMELS LOLLIPOP CAKE SOUFFLÉ CHOCOLATE BAR MARZIPAN. APPLE PIE POWDER BEAR CLAW. CUPCAKE LOLLIPOP LEMON DROPS PIE WAFER ICE CREAM DANISH. APPLE PIE GINGERBREAD JELLY BEANS BISCUIT TART. DANISH FRUITCAKE FRUITCAKE LIQUORICE. \r\n\r\nPUDDING DRAGÉE GINGERBREAD CHUPA CHUPS BROWNIE FRUITCAKE FRUITCAKE CHEESECAKE \r\nPUDDING. CHOCOLATE BAR DANISH SWEET ROLL CAKE SUGAR PLUM SESAME SNAPS TOFFEE LIQUORICE. COTTON CANDY JELLY CANDY CANES BISCUIT CHOCOLATE SWEET. MUFFIN TART MARSHMALLOW LIQUORICE DESSERT SOUFFLÉ CHOCOLATE BAR TART CUPCAKE. MUFFIN CAKE MARZIPAN JUJUBES PIE GINGERBREAD. COOKIE CUPCAKE PASTRY CHEESECAKE CHEESECAKE LEMON DROPS GUMMIES. CANDY PUDDING GUMMI BEARS. MUFFIN SWEET ROLL SWEET DANISH WAFER COTTON CANDY. WAFER TART CHOCOLATE BAR. TART TOFFEE JELLY BEANS BISCUIT POWDER. COTTON CANDY LOLLIPOP SUGAR PLUM BONBON SWEET GUMMI BEARS. BEAR CLAW TOOTSIE ROLL LEMON DROPS COTTON CANDY CHEESECAKE. BONBON TOPPING DANISH SWEET ROLL MACAROON LOLLIPOP. ICE CREAM DANISH BROWNIE LOLLIPOP DONUT LEMON DROPS BISCUIT DRAGÉE. \r\n\r\nTIRAMISU GUMMI BEARS PASTRY JELLY. SWEET ROLL CARROT CAKE LIQUORICE BONBON \r\nCHOCOLATE TIRAMISU DANISH OAT CAKE LEMON DROPS. CHOCOLATE CAKE WAFER MUFFIN CHUPA CHUPS. MACAROON CUPCAKE PASTRY BROWNIE CHOCOLATE BAR POWDER CHEESECAKE MARZIPAN. PIE CHUPA CHUPS CHOCOLATE CAKE GUMMI BEARS FRUITCAKE SESAME SNAPS FRUITCAKE BISCUIT CAKE. PASTRY SUGAR PLUM MUFFIN. LOLLIPOP LEMON DROPS BEAR CLAW TOPPING LOLLIPOP CAKE. MARSHMALLOW DONUT SUGAR PLUM LOLLIPOP MARZIPAN. BEAR CLAW CANDY CANES CAKE GUMMI BEARS GUMMIES JELLY. ICING CAKE POWDER GUMMI BEARS CUPCAKE. CARROT CAKE ICE CREAM SOUFFLÉ JELLY BEANS. SUGAR PLUM BEAR CLAW PIE DANISH ICING CUPCAKE CHOCOLATE DESSERT TIRAMISU. HALVAH SWEET ROLL TIRAMISU SUGAR PLUM LOLLIPOP JUJUBES CUPCAKE OAT CAKE.', 1, NULL, NULL, NULL, NULL, NULL, 'N', '7', 'article-title-5', '', '0', NULL, NULL, NULL),
	(8, '2019-12-30 12:29:09', 1, '2019-12-30 12:29:09', 1, 1, NULL, 'Y', '2019-12-30 12:27:52', '2020-01-30 12:27:00', 500, 'Article title 6', 15, 'Yeah well, you shouldn\'t drink...', 'text', 16, '<p>Yeah well, you shouldn\'t drink. Mayor Goldie Wilson, I like the sound of that. Oh hey, Biff, hey, guys, how are you doing? What do you mean you\'ve seen this, it\'s brand new. You\'re gonna be in the car with her.</p>\r\n                        <p>Shit. Hello, hello, anybody home? Think, McFly, think. I gotta have time to get them re-typed. Do you realize what would happen if I hand in my reports in your handwriting. I\'ll get fired. You wouldn\'t want that to happen would you? Would you? Doc, you gotta help- Oh, then I wanna give her a call, I don\'t want her to worry about you. I don\'t know, I can\'t keep up with all of your boyfriends.</p>\r\n                        <p>Excuse me. Whoa, they really cleaned this place up, looks brand new. But I can\'t go to the dance, I\'ll miss my favorite television program, Science Fiction Theater. Will you take care of that? Watch this. Not me, the car, the car. My calculations are correct, when this baby hits eighty-eight miles per hour, your gonna see some serious shit. Watch this, watch this. Ha, what did I tell you, eighty-eight miles per hour. The temporal displacement occurred at exactly 1:20 a.m. and zero seconds.</p>\r\n                        <p>Uh, well, actually, I figured since it wasn\'t due till Monday- I think it\'s terrible. Girls chasing boys. When I was your age I never chased a boy, or called a boy, or sat in a parked car with a boy. Look, I\'m just not ready to ask Lorraine out to the dance, and not you, nor anybody else on this planet is gonna make me change my mind. Wait a minute. Wait a minute, Doc. Are you telling me that it\'s 8:25? Good evening, I\'m Doctor Emmett Brown. I\'m standing on the parking lot of Twin Pines Mall. It\'s Saturday morning, October 26, 1985, 1:18 a.m. and this is temporal experiment number one. C\'mon, Einy, hey hey boy, get in there, that a boy, in you go, get down, that\'s it.</p>\r\n                        <p>That\'s a Florence Nightingale effect. It happens in hospitals when nurses fall in love with their patients. Go to it, kid. Whoa, they really cleaned this place up, looks brand new. No. Aw yeah, everything is great. Don\'t pay any attention to him, he\'s in one of his moods. Sam, quit fiddling with that thing, come in here to dinner. Now let\'s see, you already know Lorraine, this is Milton, this is Sally, that\'s Toby, and over there in the playpen is little baby Joey.</p>', 'html', 'ARTICLE TITLE 6\r\nYEAH WELL, YOU SHOULDN\'T DRINK...\r\nYEAH WELL, YOU SHOULDN\'T DRINK. MAYOR GOLDIE WILSON, I LIKE THE SOUND OF \r\nTHAT. OH HEY, BIFF, HEY, GUYS, HOW ARE YOU DOING? WHAT DO YOU MEAN YOU\'VE SEEN THIS, IT\'S BRAND NEW. YOU\'RE GONNA BE IN THE CAR WITH HER. \r\n\r\nSHIT. HELLO, HELLO, ANYBODY HOME? THINK, MCFLY, THINK. I GOTTA HAVE TIME \r\nTO GET THEM RE-TYPED. DO YOU REALIZE WHAT WOULD HAPPEN IF I HAND IN MY REPORTS IN YOUR HANDWRITING. I\'LL GET FIRED. YOU WOULDN\'T WANT THAT TO HAPPEN WOULD YOU? WOULD YOU? DOC, YOU GOTTA HELP- OH, THEN I WANNA GIVE HER A CALL, I DON\'T WANT HER TO WORRY ABOUT YOU. I DON\'T KNOW, I CAN\'T KEEP UP WITH ALL OF YOUR BOYFRIENDS. \r\n\r\nEXCUSE ME. WHOA, THEY REALLY CLEANED THIS PLACE UP, LOOKS BRAND NEW. BUT \r\nI CAN\'T GO TO THE DANCE, I\'LL MISS MY FAVORITE TELEVISION PROGRAM, SCIENCE FICTION THEATER. WILL YOU TAKE CARE OF THAT? WATCH THIS. NOT ME, THE CAR, THE CAR. MY CALCULATIONS ARE CORRECT, WHEN THIS BABY HITS EIGHTY-EIGHT MILES PER HOUR, YOUR GONNA SEE SOME SERIOUS SHIT. WATCH THIS, WATCH THIS. HA, WHAT DID I TELL YOU, EIGHTY-EIGHT MILES PER HOUR. THE TEMPORAL DISPLACEMENT OCCURRED AT EXACTLY 1:20 A.M. AND ZERO SECONDS. \r\n\r\nUH, WELL, ACTUALLY, I FIGURED SINCE IT WASN\'T DUE TILL MONDAY- I THINK \r\nIT\'S TERRIBLE. GIRLS CHASING BOYS. WHEN I WAS YOUR AGE I NEVER CHASED A BOY, OR CALLED A BOY, OR SAT IN A PARKED CAR WITH A BOY. LOOK, I\'M JUST NOT READY TO ASK LORRAINE OUT TO THE DANCE, AND NOT YOU, NOR ANYBODY ELSE ON THIS PLANET IS GONNA MAKE ME CHANGE MY MIND. WAIT A MINUTE. WAIT A MINUTE, DOC. ARE YOU TELLING ME THAT IT\'S 8:25? GOOD EVENING, I\'M DOCTOR EMMETT BROWN. I\'M STANDING ON THE PARKING LOT OF TWIN PINES MALL. IT\'S SATURDAY MORNING, OCTOBER 26, 1985, 1:18 A.M. AND THIS IS TEMPORAL EXPERIMENT NUMBER ONE. C\'MON, EINY, HEY HEY BOY, GET IN THERE, THAT A BOY, IN YOU GO, GET DOWN, THAT\'S IT. \r\n\r\nTHAT\'S A FLORENCE NIGHTINGALE EFFECT. IT HAPPENS IN HOSPITALS WHEN NURSES \r\nFALL IN LOVE WITH THEIR PATIENTS. GO TO IT, KID. WHOA, THEY REALLY CLEANED THIS PLACE UP, LOOKS BRAND NEW. NO. AW YEAH, EVERYTHING IS GREAT. DON\'T PAY ANY ATTENTION TO HIM, HE\'S IN ONE OF HIS MOODS. SAM, QUIT FIDDLING WITH THAT THING, COME IN HERE TO DINNER. NOW LET\'S SEE, YOU ALREADY KNOW LORRAINE, THIS IS MILTON, THIS IS SALLY, THAT\'S TOBY, AND OVER THERE IN THE PLAYPEN IS LITTLE BABY JOEY.', 1, NULL, NULL, NULL, NULL, NULL, 'N', '8', 'article-title-6', '', '0', NULL, 1, '2019-12-30 12:29:23'),
	(9, '2019-12-30 12:30:40', 1, '2019-12-30 12:30:40', 1, 1, NULL, 'Y', '2019-12-30 12:29:10', '2020-01-30 12:29:00', 500, 'Article title 7', 17, 'Busey ipsum dolor sit amet...', 'text', 18, '<p>Busey ipsum dolor sit amet. Have you urinated? Have you drained your bladder? Are you free? Because if you haven\'t it will only come out later. I\'m giving you some information that your bodily fluids may penetrate your clothing fibre\'s without warning.You ever roasted doughnuts?</p>\r\n                        <p>You ever roasted doughnuts?The best way to communicate is compatible. Compatible communication is listening with open ears and an open mind, and not being fearful or judgemental about what you\'re hearing.Sometimes horses cough and fart at the same time, so stay out of the range of its butt muscle because a horses butt muscle is thick.</p>\r\n                        <p>Go with the feeling of the nature. Take it easy. Know why you\'re here. And remember to balance your internal energy with the environment.The best way to communicate is compatible. Compatible communication is listening with open ears and an open mind, and not being fearful or judgemental about what you\'re hearing.</p>\r\n                        <p>It\'s good to yell at people and tell people that you\'re from Tennesee, so that way you\'ll be safe.The best way to communicate is compatible. Compatible communication is listening with open ears and an open mind, and not being fearful or judgemental about what you\'re hearing.</p>\r\n                        <p>Did you feel that? Look at me - I\'m not out of breath anymore!When you get lost in your imaginatory vagueness, your foresight will become a nimble vagrant.Go with the feeling of the nature. Take it easy. Know why you\'re here. And remember to balance your internal energy with the environment.</p>', 'html', 'ARTICLE TITLE 7\r\nBUSEY IPSUM DOLOR SIT AMET...\r\nBUSEY IPSUM DOLOR SIT AMET. HAVE YOU URINATED? HAVE YOU DRAINED YOUR BLADDER? \r\nARE YOU FREE? BECAUSE IF YOU HAVEN\'T IT WILL ONLY COME OUT LATER. I\'M GIVING YOU SOME INFORMATION THAT YOUR BODILY FLUIDS MAY PENETRATE YOUR CLOTHING FIBRE\'S WITHOUT WARNING.YOU EVER ROASTED DOUGHNUTS? \r\n\r\nYOU EVER ROASTED DOUGHNUTS?THE BEST WAY TO COMMUNICATE IS COMPATIBLE. COMPATIBLE \r\nCOMMUNICATION IS LISTENING WITH OPEN EARS AND AN OPEN MIND, AND NOT BEING FEARFUL OR JUDGEMENTAL ABOUT WHAT YOU\'RE HEARING.SOMETIMES HORSES COUGH AND FART AT THE SAME TIME, SO STAY OUT OF THE RANGE OF ITS BUTT MUSCLE BECAUSE A HORSES BUTT MUSCLE IS THICK. \r\n\r\nGO WITH THE FEELING OF THE NATURE. TAKE IT EASY. KNOW WHY YOU\'RE HERE. \r\nAND REMEMBER TO BALANCE YOUR INTERNAL ENERGY WITH THE ENVIRONMENT.THE BEST WAY TO COMMUNICATE IS COMPATIBLE. COMPATIBLE COMMUNICATION IS LISTENING WITH OPEN EARS AND AN OPEN MIND, AND NOT BEING FEARFUL OR JUDGEMENTAL ABOUT WHAT YOU\'RE HEARING. \r\n\r\nIT\'S GOOD TO YELL AT PEOPLE AND TELL PEOPLE THAT YOU\'RE FROM TENNESEE, \r\nSO THAT WAY YOU\'LL BE SAFE.THE BEST WAY TO COMMUNICATE IS COMPATIBLE. COMPATIBLE COMMUNICATION IS LISTENING WITH OPEN EARS AND AN OPEN MIND, AND NOT BEING FEARFUL OR JUDGEMENTAL ABOUT WHAT YOU\'RE HEARING. \r\n\r\nDID YOU FEEL THAT? LOOK AT ME - I\'M NOT OUT OF BREATH ANYMORE!WHEN YOU \r\nGET LOST IN YOUR IMAGINATORY VAGUENESS, YOUR FORESIGHT WILL BECOME A NIMBLE VAGRANT.GO WITH THE FEELING OF THE NATURE. TAKE IT EASY. KNOW WHY YOU\'RE HERE. AND REMEMBER TO BALANCE YOUR INTERNAL ENERGY WITH THE ENVIRONMENT.', 1, NULL, NULL, NULL, NULL, NULL, 'N', '9', 'article-title-7', '', '0', NULL, NULL, NULL),
	(10, '2019-12-30 12:31:46', 1, '2019-12-30 12:31:46', 1, 1, NULL, 'Y', '2019-12-30 12:30:41', '2020-01-30 12:30:00', 500, 'Article title 8', 19, 'Listen to the silence...', 'text', 20, '<p>Busey ipsum dolor sit amet. Listen to the silence. And when the silence is deafening, you\'re in the center of your own universe.I wrestled a bear once. A 750lbs black bear.The magic Indian is a mysterious spiritual force, and we\'re going to Cathedral Rock, and that\'s the vortex of the heart.</p>\r\n                        <p>Have you urinated? Have you drained your bladder? Are you free? Because if you haven\'t it will only come out later. I\'m giving you some information that your bodily fluids may penetrate your clothing fibre\'s without warning.It\'s OK to get Rib-grease on your face, because you\'re allowing people to see that you\'re proud of these ribs.</p>\r\n                        <p>I would like to give you a backstage pass to my imagination.Listen to the silence. And when the silence is deafening, you\'re in the center of your own universe.Have you urinated? Have you drained your bladder? Are you free? Because if you haven\'t it will only come out later. I\'m giving you some information that your bodily fluids may penetrate your clothing fibre\'s without warning.</p>\r\n                        <p>The magic Indian is a mysterious spiritual force, and we\'re going to Cathedral Rock, and that\'s the vortex of the heart.I wrestled a bear once. A 750lbs black bear.Listen to the silence. And when the silence is deafening, you\'re in the center of your own universe.</p>\r\n                        <p>You gotta go through it to see there ain\'t nothing to it.It\'s good to yell at people and tell people that you\'re from Tennesee, so that way you\'ll be safe.The best way to communicate is compatible. Compatible communication is listening with open ears and an open mind, and not being fearful or judgemental about what you\'re hearing.</p>', 'html', 'ARTICLE TITLE 8\r\nLISTEN TO THE SILENCE...\r\nBUSEY IPSUM DOLOR SIT AMET. LISTEN TO THE SILENCE. AND WHEN THE SILENCE \r\nIS DEAFENING, YOU\'RE IN THE CENTER OF YOUR OWN UNIVERSE.I WRESTLED A BEAR ONCE. A 750LBS BLACK BEAR.THE MAGIC INDIAN IS A MYSTERIOUS SPIRITUAL FORCE, AND WE\'RE GOING TO CATHEDRAL ROCK, AND THAT\'S THE VORTEX OF THE HEART. \r\n\r\nHAVE YOU URINATED? HAVE YOU DRAINED YOUR BLADDER? ARE YOU FREE? BECAUSE \r\nIF YOU HAVEN\'T IT WILL ONLY COME OUT LATER. I\'M GIVING YOU SOME INFORMATION THAT YOUR BODILY FLUIDS MAY PENETRATE YOUR CLOTHING FIBRE\'S WITHOUT WARNING.IT\'S OK TO GET RIB-GREASE ON YOUR FACE, BECAUSE YOU\'RE ALLOWING PEOPLE TO SEE THAT YOU\'RE PROUD OF THESE RIBS. \r\n\r\nI WOULD LIKE TO GIVE YOU A BACKSTAGE PASS TO MY IMAGINATION.LISTEN TO THE \r\nSILENCE. AND WHEN THE SILENCE IS DEAFENING, YOU\'RE IN THE CENTER OF YOUR OWN UNIVERSE.HAVE YOU URINATED? HAVE YOU DRAINED YOUR BLADDER? ARE YOU FREE? BECAUSE IF YOU HAVEN\'T IT WILL ONLY COME OUT LATER. I\'M GIVING YOU SOME INFORMATION THAT YOUR BODILY FLUIDS MAY PENETRATE YOUR CLOTHING FIBRE\'S WITHOUT WARNING. \r\n\r\nTHE MAGIC INDIAN IS A MYSTERIOUS SPIRITUAL FORCE, AND WE\'RE GOING TO CATHEDRAL \r\nROCK, AND THAT\'S THE VORTEX OF THE HEART.I WRESTLED A BEAR ONCE. A 750LBS BLACK BEAR.LISTEN TO THE SILENCE. AND WHEN THE SILENCE IS DEAFENING, YOU\'RE IN THE CENTER OF YOUR OWN UNIVERSE. \r\n\r\nYOU GOTTA GO THROUGH IT TO SEE THERE AIN\'T NOTHING TO IT.IT\'S GOOD TO YELL \r\nAT PEOPLE AND TELL PEOPLE THAT YOU\'RE FROM TENNESEE, SO THAT WAY YOU\'LL BE SAFE.THE BEST WAY TO COMMUNICATE IS COMPATIBLE. COMPATIBLE COMMUNICATION IS LISTENING WITH OPEN EARS AND AN OPEN MIND, AND NOT BEING FEARFUL OR JUDGEMENTAL ABOUT WHAT YOU\'RE HEARING.', 1, NULL, NULL, NULL, NULL, NULL, 'N', '10', 'article-title-8', '', '0', NULL, NULL, NULL),
	(11, '2019-12-30 12:32:53', 1, '2019-12-30 12:32:53', 1, 1, NULL, 'Y', '2019-12-30 12:31:47', '2020-01-30 12:31:00', 500, 'Article title 9', 21, 'Veggies es bonus vobis, proinde vos postulo...', 'text', 22, '<p>Veggies es bonus vobis, proinde vos postulo essum magis kohlrabi welsh onion daikon amaranth tatsoi tomatillo melon azuki bean garlic.</p>\r\n                        <p>Gumbo beet greens corn soko endive gumbo gourd. Parsley shallot courgette tatsoi pea sprouts fava bean collard greens dandelion okra wakame tomato. Dandelion cucumber earthnut pea peanut soko zucchini.</p>\r\n                        <p>Turnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.</p>\r\n                        <p>Nori grape silver beet broccoli kombu beet greens fava bean potato quandong celery. Bunya nuts black-eyed pea prairie turnip leek lentil turnip greens parsnip. Sea lettuce lettuce water chestnut eggplant winter purslane fennel azuki bean earthnut pea sierra leone bologi leek soko chicory celtuce parsley jícama salsify.</p>\r\n                        <p>Celery quandong swiss chard chicory earthnut pea potato. Salsify taro catsear garlic gram celery bitterleaf wattle seed collard greens nori. Grape wattle seed kombu beetroot horseradish carrot squash brussels sprout chard.</p>\r\n                        <p>Pea horseradish azuki bean lettuce avocado asparagus okra. Kohlrabi radish okra azuki bean corn fava bean mustard tigernut jícama green bean celtuce collard greens avocado quandong fennel gumbo black-eyed pea. Grape silver beet watercress potato tigernut corn groundnut. Chickweed okra pea winter purslane coriander yarrow sweet pepper radish garlic brussels sprout groundnut summer purslane earthnut pea tomato spring onion azuki bean gourd. Gumbo kakadu plum komatsuna black-eyed pea green bean zucchini gourd winter purslane silver beet rock melon radish asparagus spinach.</p>\r\n                        <p>Beetroot water spinach okra water chestnut ricebean pea catsear courgette summer purslane. Water spinach arugula pea tatsoi aubergine spring onion bush tomato kale radicchio turnip chicory salsify pea sprouts fava bean. Dandelion zucchini burdock yarrow chickpea dandelion sorrel courgette turnip greens tigernut soybean radish artichoke wattle seed endive groundnut broccoli arugula.</p>\r\n                        <p>Soko radicchio bunya nuts gram dulse silver beet parsnip napa cabbage lotus root sea lettuce brussels sprout cabbage. Catsear cauliflower garbanzo yarrow salsify chicory garlic bell pepper napa cabbage lettuce tomato kale arugula melon sierra leone bologi rutabaga tigernut. Sea lettuce gumbo grape kale kombu cauliflower salsify kohlrabi okra sea lettuce broccoli celery lotus root carrot winter purslane turnip greens garlic. Jícama garlic courgette coriander radicchio plantain scallion cauliflower fava bean desert raisin spring onion chicory bunya nuts. Sea lettuce water spinach gram fava bean leek dandelion silver beet eggplant bush tomato.</p>', 'html', 'ARTICLE TITLE 9\r\nVEGGIES ES BONUS VOBIS, PROINDE VOS POSTULO...\r\nVEGGIES ES BONUS VOBIS, PROINDE VOS POSTULO ESSUM MAGIS KOHLRABI WELSH \r\nONION DAIKON AMARANTH TATSOI TOMATILLO MELON AZUKI BEAN GARLIC. \r\n\r\nGUMBO BEET GREENS CORN SOKO ENDIVE GUMBO GOURD. PARSLEY SHALLOT COURGETTE \r\nTATSOI PEA SPROUTS FAVA BEAN COLLARD GREENS DANDELION OKRA WAKAME TOMATO. DANDELION CUCUMBER EARTHNUT PEA PEANUT SOKO ZUCCHINI. \r\n\r\nTURNIP GREENS YARROW RICEBEAN RUTABAGA ENDIVE CAULIFLOWER SEA LETTUCE KOHLRABI \r\nAMARANTH WATER SPINACH AVOCADO DAIKON NAPA CABBAGE ASPARAGUS WINTER PURSLANE KALE. CELERY POTATO SCALLION DESERT RAISIN HORSERADISH SPINACH CARROT SOKO. LOTUS ROOT WATER SPINACH FENNEL KOMBU MAIZE BAMBOO SHOOT GREEN BEAN SWISS CHARD SEAKALE PUMPKIN ONION CHICKPEA GRAM CORN PEA. BRUSSELS SPROUT CORIANDER WATER CHESTNUT GOURD SWISS CHARD WAKAME KOHLRABI BEETROOT CARROT WATERCRESS. CORN AMARANTH SALSIFY BUNYA NUTS NORI AZUKI BEAN CHICKWEED POTATO BELL PEPPER ARTICHOKE. \r\n\r\nNORI GRAPE SILVER BEET BROCCOLI KOMBU BEET GREENS FAVA BEAN POTATO QUANDONG \r\nCELERY. BUNYA NUTS BLACK-EYED PEA PRAIRIE TURNIP LEEK LENTIL TURNIP GREENS PARSNIP. SEA LETTUCE LETTUCE WATER CHESTNUT EGGPLANT WINTER PURSLANE FENNEL AZUKI BEAN EARTHNUT PEA SIERRA LEONE BOLOGI LEEK SOKO CHICORY CELTUCE PARSLEY JÍCAMA SALSIFY. \r\n\r\nCELERY QUANDONG SWISS CHARD CHICORY EARTHNUT PEA POTATO. SALSIFY TARO CATSEAR \r\nGARLIC GRAM CELERY BITTERLEAF WATTLE SEED COLLARD GREENS NORI. GRAPE WATTLE SEED KOMBU BEETROOT HORSERADISH CARROT SQUASH BRUSSELS SPROUT CHARD. \r\n\r\nPEA HORSERADISH AZUKI BEAN LETTUCE AVOCADO ASPARAGUS OKRA. KOHLRABI RADISH \r\nOKRA AZUKI BEAN CORN FAVA BEAN MUSTARD TIGERNUT JÍCAMA GREEN BEAN CELTUCE COLLARD GREENS AVOCADO QUANDONG FENNEL GUMBO BLACK-EYED PEA. GRAPE SILVER BEET WATERCRESS POTATO TIGERNUT CORN GROUNDNUT. CHICKWEED OKRA PEA WINTER PURSLANE CORIANDER YARROW SWEET PEPPER RADISH GARLIC BRUSSELS SPROUT GROUNDNUT SUMMER PURSLANE EARTHNUT PEA TOMATO SPRING ONION AZUKI BEAN GOURD. GUMBO KAKADU PLUM KOMATSUNA BLACK-EYED PEA GREEN BEAN ZUCCHINI GOURD WINTER PURSLANE SILVER BEET ROCK MELON RADISH ASPARAGUS SPINACH. \r\n\r\nBEETROOT WATER SPINACH OKRA WATER CHESTNUT RICEBEAN PEA CATSEAR COURGETTE \r\nSUMMER PURSLANE. WATER SPINACH ARUGULA PEA TATSOI AUBERGINE SPRING ONION BUSH TOMATO KALE RADICCHIO TURNIP CHICORY SALSIFY PEA SPROUTS FAVA BEAN. DANDELION ZUCCHINI BURDOCK YARROW CHICKPEA DANDELION SORREL COURGETTE TURNIP GREENS TIGERNUT SOYBEAN RADISH ARTICHOKE WATTLE SEED ENDIVE GROUNDNUT BROCCOLI ARUGULA. \r\n\r\nSOKO RADICCHIO BUNYA NUTS GRAM DULSE SILVER BEET PARSNIP NAPA CABBAGE LOTUS \r\nROOT SEA LETTUCE BRUSSELS SPROUT CABBAGE. CATSEAR CAULIFLOWER GARBANZO YARROW SALSIFY CHICORY GARLIC BELL PEPPER NAPA CABBAGE LETTUCE TOMATO KALE ARUGULA MELON SIERRA LEONE BOLOGI RUTABAGA TIGERNUT. SEA LETTUCE GUMBO GRAPE KALE KOMBU CAULIFLOWER SALSIFY KOHLRABI OKRA SEA LETTUCE BROCCOLI CELERY LOTUS ROOT CARROT WINTER PURSLANE TURNIP GREENS GARLIC. JÍCAMA GARLIC COURGETTE CORIANDER RADICCHIO PLANTAIN SCALLION CAULIFLOWER FAVA BEAN DESERT RAISIN SPRING ONION CHICORY BUNYA NUTS. SEA LETTUCE WATER SPINACH GRAM FAVA BEAN LEEK DANDELION SILVER BEET EGGPLANT BUSH TOMATO.', 1, NULL, NULL, NULL, NULL, NULL, 'N', '11', 'article-title-9', '', '0', NULL, 1, '2019-12-30 12:34:26'),
	(12, '2019-12-30 12:33:57', 1, '2019-12-30 12:33:57', 1, 1, NULL, 'Y', '2019-12-30 12:32:54', '2020-01-30 12:33:00', 500, 'Article title 10', 23, 'Pommy ipsum Elementary my dear Watson...', 'text', 24, '<p>Pommy ipsum Elementary my dear Watson ask your mother if down the village green a total jessie it\'s me peepers, smeg 10 pence mix naff off shepherd\'s pie. Got his end away throw a paddy conked him one on the nose a reet bobbydazzler, 10 pence mix half-inch it Union Jack, wind up challenge you to a duel. Middle class cobbles working class corgi ey up chuck on his tod, pants doing my head in upper class on the pull sling one\'s hook, terribly scones barmy nose rag. Half-inch it pennyboy Bad Wolf in the jacksy flabbergasted golly gosh bloke I could reet fancy a, pork dripping hedgehog because there was nothing on the gogglebox tally-ho the black death alright duck, corgi down the local football whizz mush a bottle of plonk.</p>\r\n                        <p>Fancied a flutter apple and pears conkers rather scatterbrained challenge you to a duel it\'s nicked football ridiculous, fried toast scatterbrained Doctor Who bossy britches pants ey up duck. Have a gander rivetting stuff it\'s the bees knees utter shambles Amelia Pond flog a dead horse porky-pies spiffing chav, gutted willy that\'s ace morris dancers scally meat and two veg. Sling one\'s hook damn have a butcher\'s at this bent as a nine bob note big light Kate and Will superb, give you a bell you \'avin a laugh fish and chips sod\'s law the fuzz god save the queen darling, pulled a right corker doing my head in at the boozer is she \'avin a laugh absolute twoddle.</p>\r\n                        <p>Down the village green Moriarty jolly bowler hat bargain Betty, Essex girls scrote beefeater. Darling terribly lug hole sweet fanny adams and thus Kate and Will, daft cow sorted it cup of tea it\'s nicked. Victoria sponge cake 221B Baker Street bag egg\'s old boy had a barney with the inlaws picalilly a bottle of plonk cotton on, narky ey up chuck rambunctious bobby gravy cheese and chips down the local, Victoria sponge cake cockney ridicule I\'m off to Bedfordshire bovver boots. Essex girls the lakes brilliant bog roll football scones biscuits, wibbly-wobbly timey-wimey stuff round our gaff the chippy pillock scones a right toff fish and chips, skive real ale doofer off with her head scones.</p>\r\n                        <p>Old girl a reet bobbydazzler collywobbles scones loo one feels that, pot noodle up North knackered apple and pears. Superb nonsense driving a mini lost her marbles numpty ee bah gum baffled have a kip, throw a spanner in the works could murder a pint doolally bossy britches chav indeed. Chuffed cor blimey\' clock round the earhole black pudding gobsmacked it\'s cracking flags sling one\'s hook, a right royal knees up chaps Weeping Angels twiglets Amelia Pond guinness, ever so lovely bottled it devonshire cream tea blummin\' Essex girls. Completely crackers quid wellies a week on Sunday gosh golly well fit, what a doddle jolly good pie-eyed copper accordingly easy peasy, Prince Charles absolute on his tod off with her head cornish pasty.</p>\r\n                        <p>The Hounds of Baskerville nosh taking the mick off t\'shop see a man about a dog, brown sauce argy-bargy clock round the earhole Southeners pulled a right corker, what a mug off with her head conkers. Dr. Watson pie-eyed flabbergasted what a load of cobblers have a gander guinness oopsy-daisies, bovver boots off the hook a right corker it\'s me peepers. A week on Sunday chap absolute nose rag flog, narky alright geezer.</p>', 'html', 'ARTICLE TITLE 10\r\nPOMMY IPSUM ELEMENTARY MY DEAR WATSON...\r\nPOMMY IPSUM ELEMENTARY MY DEAR WATSON ASK YOUR MOTHER IF DOWN THE VILLAGE \r\nGREEN A TOTAL JESSIE IT\'S ME PEEPERS, SMEG 10 PENCE MIX NAFF OFF SHEPHERD\'S PIE. GOT HIS END AWAY THROW A PADDY CONKED HIM ONE ON THE NOSE A REET BOBBYDAZZLER, 10 PENCE MIX HALF-INCH IT UNION JACK, WIND UP CHALLENGE YOU TO A DUEL. MIDDLE CLASS COBBLES WORKING CLASS CORGI EY UP CHUCK ON HIS TOD, PANTS DOING MY HEAD IN UPPER CLASS ON THE PULL SLING ONE\'S HOOK, TERRIBLY SCONES BARMY NOSE RAG. HALF-INCH IT PENNYBOY BAD WOLF IN THE JACKSY FLABBERGASTED GOLLY GOSH BLOKE I COULD REET FANCY A, PORK DRIPPING HEDGEHOG BECAUSE THERE WAS NOTHING ON THE GOGGLEBOX TALLY-HO THE BLACK DEATH ALRIGHT DUCK, CORGI DOWN THE LOCAL FOOTBALL WHIZZ MUSH A BOTTLE OF PLONK. \r\n\r\nFANCIED A FLUTTER APPLE AND PEARS CONKERS RATHER SCATTERBRAINED CHALLENGE \r\nYOU TO A DUEL IT\'S NICKED FOOTBALL RIDICULOUS, FRIED TOAST SCATTERBRAINED DOCTOR WHO BOSSY BRITCHES PANTS EY UP DUCK. HAVE A GANDER RIVETTING STUFF IT\'S THE BEES KNEES UTTER SHAMBLES AMELIA POND FLOG A DEAD HORSE PORKY-PIES SPIFFING CHAV, GUTTED WILLY THAT\'S ACE MORRIS DANCERS SCALLY MEAT AND TWO VEG. SLING ONE\'S HOOK DAMN HAVE A BUTCHER\'S AT THIS BENT AS A NINE BOB NOTE BIG LIGHT KATE AND WILL SUPERB, GIVE YOU A BELL YOU \'AVIN A LAUGH FISH AND CHIPS SOD\'S LAW THE FUZZ GOD SAVE THE QUEEN DARLING, PULLED A RIGHT CORKER DOING MY HEAD IN AT THE BOOZER IS SHE \'AVIN A LAUGH ABSOLUTE TWODDLE. \r\n\r\nDOWN THE VILLAGE GREEN MORIARTY JOLLY BOWLER HAT BARGAIN BETTY, ESSEX GIRLS \r\nSCROTE BEEFEATER. DARLING TERRIBLY LUG HOLE SWEET FANNY ADAMS AND THUS KATE AND WILL, DAFT COW SORTED IT CUP OF TEA IT\'S NICKED. VICTORIA SPONGE CAKE 221B BAKER STREET BAG EGG\'S OLD BOY HAD A BARNEY WITH THE INLAWS PICALILLY A BOTTLE OF PLONK COTTON ON, NARKY EY UP CHUCK RAMBUNCTIOUS BOBBY GRAVY CHEESE AND CHIPS DOWN THE LOCAL, VICTORIA SPONGE CAKE COCKNEY RIDICULE I\'M OFF TO BEDFORDSHIRE BOVVER BOOTS. ESSEX GIRLS THE LAKES BRILLIANT BOG ROLL FOOTBALL SCONES BISCUITS, WIBBLY-WOBBLY TIMEY-WIMEY STUFF ROUND OUR GAFF THE CHIPPY PILLOCK SCONES A RIGHT TOFF FISH AND CHIPS, SKIVE REAL ALE DOOFER OFF WITH HER HEAD SCONES. \r\n\r\nOLD GIRL A REET BOBBYDAZZLER COLLYWOBBLES SCONES LOO ONE FEELS THAT, POT \r\nNOODLE UP NORTH KNACKERED APPLE AND PEARS. SUPERB NONSENSE DRIVING A MINI LOST HER MARBLES NUMPTY EE BAH GUM BAFFLED HAVE A KIP, THROW A SPANNER IN THE WORKS COULD MURDER A PINT DOOLALLY BOSSY BRITCHES CHAV INDEED. CHUFFED COR BLIMEY\' CLOCK ROUND THE EARHOLE BLACK PUDDING GOBSMACKED IT\'S CRACKING FLAGS SLING ONE\'S HOOK, A RIGHT ROYAL KNEES UP CHAPS WEEPING ANGELS TWIGLETS AMELIA POND GUINNESS, EVER SO LOVELY BOTTLED IT DEVONSHIRE CREAM TEA BLUMMIN\' ESSEX GIRLS. COMPLETELY CRACKERS QUID WELLIES A WEEK ON SUNDAY GOSH GOLLY WELL FIT, WHAT A DODDLE JOLLY GOOD PIE-EYED COPPER ACCORDINGLY EASY PEASY, PRINCE CHARLES ABSOLUTE ON HIS TOD OFF WITH HER HEAD CORNISH PASTY. \r\n\r\nTHE HOUNDS OF BASKERVILLE NOSH TAKING THE MICK OFF T\'SHOP SEE A MAN ABOUT \r\nA DOG, BROWN SAUCE ARGY-BARGY CLOCK ROUND THE EARHOLE SOUTHENERS PULLED A RIGHT CORKER, WHAT A MUG OFF WITH HER HEAD CONKERS. DR. WATSON PIE-EYED FLABBERGASTED WHAT A LOAD OF COBBLERS HAVE A GANDER GUINNESS OOPSY-DAISIES, BOVVER BOOTS OFF THE HOOK A RIGHT CORKER IT\'S ME PEEPERS. A WEEK ON SUNDAY CHAP ABSOLUTE NOSE RAG FLOG, NARKY ALRIGHT GEEZER.', 1, NULL, NULL, NULL, NULL, NULL, 'N', '12', 'article-title-10', '', '0', NULL, 1, '2019-12-30 12:34:34');
/*!40000 ALTER TABLE `b_iblock_element` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_iblock_element_iprop
DROP TABLE IF EXISTS `b_iblock_element_iprop`;
CREATE TABLE IF NOT EXISTS `b_iblock_element_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `ELEMENT_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ELEMENT_ID`,`IPROP_ID`),
  KEY `ix_b_iblock_element_iprop_0` (`IPROP_ID`),
  KEY `ix_b_iblock_element_iprop_1` (`IBLOCK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_iblock_element_iprop: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_iblock_element_iprop` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_element_iprop` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_iblock_element_lock
DROP TABLE IF EXISTS `b_iblock_element_lock`;
CREATE TABLE IF NOT EXISTS `b_iblock_element_lock` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `DATE_LOCK` datetime DEFAULT NULL,
  `LOCKED_BY` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_iblock_element_lock: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_iblock_element_lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_element_lock` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_iblock_element_property
DROP TABLE IF EXISTS `b_iblock_element_property`;
CREATE TABLE IF NOT EXISTS `b_iblock_element_property` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_element_property_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_element_property_2` (`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_element_prop_enum` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_element_prop_num` (`VALUE_NUM`,`IBLOCK_PROPERTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_iblock_element_property: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_iblock_element_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_element_property` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_iblock_element_right
DROP TABLE IF EXISTS `b_iblock_element_right`;
CREATE TABLE IF NOT EXISTS `b_iblock_element_right` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `ELEMENT_ID` int(11) NOT NULL,
  `RIGHT_ID` int(11) NOT NULL,
  `IS_INHERITED` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`RIGHT_ID`,`ELEMENT_ID`,`SECTION_ID`),
  KEY `ix_b_iblock_element_right_1` (`ELEMENT_ID`,`IBLOCK_ID`),
  KEY `ix_b_iblock_element_right_2` (`IBLOCK_ID`,`RIGHT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_iblock_element_right: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_iblock_element_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_element_right` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_iblock_fields
DROP TABLE IF EXISTS `b_iblock_fields`;
CREATE TABLE IF NOT EXISTS `b_iblock_fields` (
  `IBLOCK_ID` int(18) NOT NULL,
  `FIELD_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `IS_REQUIRED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEFAULT_VALUE` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`IBLOCK_ID`,`FIELD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_iblock_fields: ~32 rows (приблизительно)
/*!40000 ALTER TABLE `b_iblock_fields` DISABLE KEYS */;
REPLACE INTO `b_iblock_fields` (`IBLOCK_ID`, `FIELD_ID`, `IS_REQUIRED`, `DEFAULT_VALUE`) VALUES
	(1, 'ACTIVE', 'Y', 'Y'),
	(1, 'ACTIVE_FROM', 'N', '=now'),
	(1, 'ACTIVE_TO', 'N', ''),
	(1, 'CODE', 'Y', 'a:8:{s:6:"UNIQUE";s:1:"Y";s:15:"TRANSLITERATION";s:1:"Y";s:9:"TRANS_LEN";i:100;s:10:"TRANS_CASE";s:1:"L";s:11:"TRANS_SPACE";s:1:"-";s:11:"TRANS_OTHER";s:1:"-";s:9:"TRANS_EAT";s:1:"Y";s:10:"USE_GOOGLE";s:1:"N";}'),
	(1, 'DETAIL_PICTURE', 'Y', 'a:17:{s:5:"SCALE";s:1:"Y";s:5:"WIDTH";i:300;s:6:"HEIGHT";i:200;s:13:"IGNORE_ERRORS";s:1:"N";s:6:"METHOD";s:8:"resample";s:11:"COMPRESSION";i:95;s:18:"USE_WATERMARK_TEXT";s:1:"N";s:14:"WATERMARK_TEXT";s:0:"";s:19:"WATERMARK_TEXT_FONT";s:0:"";s:20:"WATERMARK_TEXT_COLOR";s:0:"";s:19:"WATERMARK_TEXT_SIZE";s:0:"";s:23:"WATERMARK_TEXT_POSITION";s:2:"tl";s:18:"USE_WATERMARK_FILE";s:1:"N";s:14:"WATERMARK_FILE";s:0:"";s:20:"WATERMARK_FILE_ALPHA";s:0:"";s:23:"WATERMARK_FILE_POSITION";s:2:"tl";s:20:"WATERMARK_FILE_ORDER";N;}'),
	(1, 'DETAIL_TEXT', 'Y', ''),
	(1, 'DETAIL_TEXT_TYPE', 'Y', 'html'),
	(1, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
	(1, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:"KEEP_IBLOCK_SECTION_ID";s:1:"N";}'),
	(1, 'LOG_ELEMENT_ADD', 'N', NULL),
	(1, 'LOG_ELEMENT_DELETE', 'N', NULL),
	(1, 'LOG_ELEMENT_EDIT', 'N', NULL),
	(1, 'LOG_SECTION_ADD', 'N', NULL),
	(1, 'LOG_SECTION_DELETE', 'N', NULL),
	(1, 'LOG_SECTION_EDIT', 'N', NULL),
	(1, 'NAME', 'Y', ''),
	(1, 'PREVIEW_PICTURE', 'Y', 'a:20:{s:11:"FROM_DETAIL";s:1:"Y";s:5:"SCALE";s:1:"Y";s:5:"WIDTH";i:288;s:6:"HEIGHT";i:192;s:13:"IGNORE_ERRORS";s:1:"N";s:6:"METHOD";s:8:"resample";s:11:"COMPRESSION";i:95;s:18:"DELETE_WITH_DETAIL";s:1:"Y";s:18:"UPDATE_WITH_DETAIL";s:1:"N";s:18:"USE_WATERMARK_TEXT";s:1:"N";s:14:"WATERMARK_TEXT";s:0:"";s:19:"WATERMARK_TEXT_FONT";s:0:"";s:20:"WATERMARK_TEXT_COLOR";s:0:"";s:19:"WATERMARK_TEXT_SIZE";s:0:"";s:23:"WATERMARK_TEXT_POSITION";s:2:"tl";s:18:"USE_WATERMARK_FILE";s:1:"N";s:14:"WATERMARK_FILE";s:0:"";s:20:"WATERMARK_FILE_ALPHA";s:0:"";s:23:"WATERMARK_FILE_POSITION";s:2:"tl";s:20:"WATERMARK_FILE_ORDER";N;}'),
	(1, 'PREVIEW_TEXT', 'Y', ''),
	(1, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
	(1, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
	(1, 'SECTION_CODE', 'N', 'a:8:{s:6:"UNIQUE";s:1:"N";s:15:"TRANSLITERATION";s:1:"N";s:9:"TRANS_LEN";i:100;s:10:"TRANS_CASE";s:1:"L";s:11:"TRANS_SPACE";s:1:"-";s:11:"TRANS_OTHER";s:1:"-";s:9:"TRANS_EAT";s:1:"Y";s:10:"USE_GOOGLE";s:1:"N";}'),
	(1, 'SECTION_DESCRIPTION', 'N', ''),
	(1, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
	(1, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
	(1, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:"SCALE";s:1:"N";s:5:"WIDTH";s:0:"";s:6:"HEIGHT";s:0:"";s:13:"IGNORE_ERRORS";s:1:"N";s:6:"METHOD";s:8:"resample";s:11:"COMPRESSION";i:95;s:18:"USE_WATERMARK_TEXT";s:1:"N";s:14:"WATERMARK_TEXT";s:0:"";s:19:"WATERMARK_TEXT_FONT";s:0:"";s:20:"WATERMARK_TEXT_COLOR";s:0:"";s:19:"WATERMARK_TEXT_SIZE";s:0:"";s:23:"WATERMARK_TEXT_POSITION";s:2:"tl";s:18:"USE_WATERMARK_FILE";s:1:"N";s:14:"WATERMARK_FILE";s:0:"";s:20:"WATERMARK_FILE_ALPHA";s:0:"";s:23:"WATERMARK_FILE_POSITION";s:2:"tl";s:20:"WATERMARK_FILE_ORDER";N;}'),
	(1, 'SECTION_NAME', 'Y', ''),
	(1, 'SECTION_PICTURE', 'N', 'a:20:{s:11:"FROM_DETAIL";s:1:"N";s:5:"SCALE";s:1:"N";s:5:"WIDTH";s:0:"";s:6:"HEIGHT";s:0:"";s:13:"IGNORE_ERRORS";s:1:"N";s:6:"METHOD";s:8:"resample";s:11:"COMPRESSION";i:95;s:18:"DELETE_WITH_DETAIL";s:1:"N";s:18:"UPDATE_WITH_DETAIL";s:1:"N";s:18:"USE_WATERMARK_TEXT";s:1:"N";s:14:"WATERMARK_TEXT";s:0:"";s:19:"WATERMARK_TEXT_FONT";s:0:"";s:20:"WATERMARK_TEXT_COLOR";s:0:"";s:19:"WATERMARK_TEXT_SIZE";s:0:"";s:23:"WATERMARK_TEXT_POSITION";s:2:"tl";s:18:"USE_WATERMARK_FILE";s:1:"N";s:14:"WATERMARK_FILE";s:0:"";s:20:"WATERMARK_FILE_ALPHA";s:0:"";s:23:"WATERMARK_FILE_POSITION";s:2:"tl";s:20:"WATERMARK_FILE_ORDER";N;}'),
	(1, 'SECTION_XML_ID', 'N', ''),
	(1, 'SORT', 'N', '0'),
	(1, 'TAGS', 'N', ''),
	(1, 'XML_ID', 'Y', ''),
	(1, 'XML_IMPORT_START_TIME', 'N', NULL);
/*!40000 ALTER TABLE `b_iblock_fields` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_iblock_group
DROP TABLE IF EXISTS `b_iblock_group`;
CREATE TABLE IF NOT EXISTS `b_iblock_group` (
  `IBLOCK_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `PERMISSION` char(1) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `ux_iblock_group_1` (`IBLOCK_ID`,`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_iblock_group: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `b_iblock_group` DISABLE KEYS */;
REPLACE INTO `b_iblock_group` (`IBLOCK_ID`, `GROUP_ID`, `PERMISSION`) VALUES
	(1, 1, 'X');
/*!40000 ALTER TABLE `b_iblock_group` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_iblock_iblock_iprop
DROP TABLE IF EXISTS `b_iblock_iblock_iprop`;
CREATE TABLE IF NOT EXISTS `b_iblock_iblock_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`IPROP_ID`),
  KEY `ix_b_iblock_iblock_iprop_0` (`IPROP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_iblock_iblock_iprop: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_iblock_iblock_iprop` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_iblock_iprop` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_iblock_iproperty
DROP TABLE IF EXISTS `b_iblock_iproperty`;
CREATE TABLE IF NOT EXISTS `b_iblock_iproperty` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int(11) NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `TEMPLATE` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_iblock_iprop_0` (`IBLOCK_ID`,`ENTITY_TYPE`,`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_iblock_iproperty: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_iblock_iproperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_iproperty` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_iblock_messages
DROP TABLE IF EXISTS `b_iblock_messages`;
CREATE TABLE IF NOT EXISTS `b_iblock_messages` (
  `IBLOCK_ID` int(18) NOT NULL,
  `MESSAGE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_TEXT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`MESSAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_iblock_messages: ~10 rows (приблизительно)
/*!40000 ALTER TABLE `b_iblock_messages` DISABLE KEYS */;
REPLACE INTO `b_iblock_messages` (`IBLOCK_ID`, `MESSAGE_ID`, `MESSAGE_TEXT`) VALUES
	(1, 'ELEMENT_ADD', 'Добавить элемент'),
	(1, 'ELEMENT_DELETE', 'Удалить элемент'),
	(1, 'ELEMENT_EDIT', 'Изменить элемент'),
	(1, 'ELEMENT_NAME', 'Элемент'),
	(1, 'ELEMENTS_NAME', 'Элементы'),
	(1, 'SECTION_ADD', 'Добавить раздел'),
	(1, 'SECTION_DELETE', 'Удалить раздел'),
	(1, 'SECTION_EDIT', 'Изменить раздел'),
	(1, 'SECTION_NAME', 'Раздел'),
	(1, 'SECTIONS_NAME', 'Разделы');
/*!40000 ALTER TABLE `b_iblock_messages` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_iblock_offers_tmp
DROP TABLE IF EXISTS `b_iblock_offers_tmp`;
CREATE TABLE IF NOT EXISTS `b_iblock_offers_tmp` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PRODUCT_IBLOCK_ID` int(11) unsigned NOT NULL,
  `OFFERS_IBLOCK_ID` int(11) unsigned NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_iblock_offers_tmp: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_iblock_offers_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_offers_tmp` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_iblock_property
DROP TABLE IF EXISTS `b_iblock_property`;
CREATE TABLE IF NOT EXISTS `b_iblock_property` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IBLOCK_ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEFAULT_VALUE` text COLLATE utf8_unicode_ci,
  `PROPERTY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `ROW_COUNT` int(11) NOT NULL DEFAULT '1',
  `COL_COUNT` int(11) NOT NULL DEFAULT '30',
  `LIST_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'L',
  `MULTIPLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_TYPE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MULTIPLE_CNT` int(11) DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_IBLOCK_ID` int(18) DEFAULT NULL,
  `WITH_DESCRIPTION` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEARCHABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `FILTRABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_REQUIRED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(11) NOT NULL DEFAULT '1',
  `USER_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_TYPE_SETTINGS` text COLLATE utf8_unicode_ci,
  `HINT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_property_1` (`IBLOCK_ID`),
  KEY `ix_iblock_property_3` (`LINK_IBLOCK_ID`),
  KEY `ix_iblock_property_2` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_iblock_property: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_iblock_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_property` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_iblock_property_enum
DROP TABLE IF EXISTS `b_iblock_property_enum`;
CREATE TABLE IF NOT EXISTS `b_iblock_property_enum` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROPERTY_ID` int(11) NOT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `XML_ID` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_iblock_property_enum` (`PROPERTY_ID`,`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_iblock_property_enum: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_iblock_property_enum` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_property_enum` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_iblock_property_feature
DROP TABLE IF EXISTS `b_iblock_property_feature`;
CREATE TABLE IF NOT EXISTS `b_iblock_property_feature` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROPERTY_ID` int(11) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FEATURE_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `IS_ENABLED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_iblock_property_feature` (`PROPERTY_ID`,`MODULE_ID`,`FEATURE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_iblock_property_feature: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_iblock_property_feature` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_property_feature` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_iblock_right
DROP TABLE IF EXISTS `b_iblock_right`;
CREATE TABLE IF NOT EXISTS `b_iblock_right` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `DO_INHERIT` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  `OP_SREAD` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `OP_EREAD` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_iblock_right_iblock_id` (`IBLOCK_ID`,`ENTITY_TYPE`,`ENTITY_ID`),
  KEY `ix_b_iblock_right_group_code` (`GROUP_CODE`,`IBLOCK_ID`),
  KEY `ix_b_iblock_right_entity` (`ENTITY_ID`,`ENTITY_TYPE`),
  KEY `ix_b_iblock_right_op_eread` (`ID`,`OP_EREAD`,`GROUP_CODE`),
  KEY `ix_b_iblock_right_op_sread` (`ID`,`OP_SREAD`,`GROUP_CODE`),
  KEY `ix_b_iblock_right_task_id` (`TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_iblock_right: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_iblock_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_right` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_iblock_rss
DROP TABLE IF EXISTS `b_iblock_rss`;
CREATE TABLE IF NOT EXISTS `b_iblock_rss` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int(11) NOT NULL,
  `NODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NODE_VALUE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_iblock_rss: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_iblock_rss` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_rss` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_iblock_section
DROP TABLE IF EXISTS `b_iblock_section`;
CREATE TABLE IF NOT EXISTS `b_iblock_section` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `IBLOCK_ID` int(11) NOT NULL,
  `IBLOCK_SECTION_ID` int(11) DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `GLOBAL_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PICTURE` int(18) DEFAULT NULL,
  `LEFT_MARGIN` int(18) DEFAULT NULL,
  `RIGHT_MARGIN` int(18) DEFAULT NULL,
  `DEPTH_LEVEL` int(18) DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DESCRIPTION_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `SEARCHABLE_CONTENT` text COLLATE utf8_unicode_ci,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DETAIL_PICTURE` int(18) DEFAULT NULL,
  `SOCNET_GROUP_ID` int(18) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_section_1` (`IBLOCK_ID`,`IBLOCK_SECTION_ID`),
  KEY `ix_iblock_section_depth_level` (`IBLOCK_ID`,`DEPTH_LEVEL`),
  KEY `ix_iblock_section_left_margin` (`IBLOCK_ID`,`LEFT_MARGIN`,`RIGHT_MARGIN`),
  KEY `ix_iblock_section_right_margin` (`IBLOCK_ID`,`RIGHT_MARGIN`,`LEFT_MARGIN`),
  KEY `ix_iblock_section_code` (`IBLOCK_ID`,`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_iblock_section: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_iblock_section` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_section` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_iblock_section_element
DROP TABLE IF EXISTS `b_iblock_section_element`;
CREATE TABLE IF NOT EXISTS `b_iblock_section_element` (
  `IBLOCK_SECTION_ID` int(11) NOT NULL,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `ADDITIONAL_PROPERTY_ID` int(18) DEFAULT NULL,
  UNIQUE KEY `ux_iblock_section_element` (`IBLOCK_SECTION_ID`,`IBLOCK_ELEMENT_ID`,`ADDITIONAL_PROPERTY_ID`),
  KEY `UX_IBLOCK_SECTION_ELEMENT2` (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_iblock_section_element: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_iblock_section_element` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_section_element` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_iblock_section_iprop
DROP TABLE IF EXISTS `b_iblock_section_iprop`;
CREATE TABLE IF NOT EXISTS `b_iblock_section_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`SECTION_ID`,`IPROP_ID`),
  KEY `ix_b_iblock_section_iprop_0` (`IPROP_ID`),
  KEY `ix_b_iblock_section_iprop_1` (`IBLOCK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_iblock_section_iprop: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_iblock_section_iprop` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_section_iprop` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_iblock_section_property
DROP TABLE IF EXISTS `b_iblock_section_property`;
CREATE TABLE IF NOT EXISTS `b_iblock_section_property` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `PROPERTY_ID` int(11) NOT NULL,
  `SMART_FILTER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISPLAY_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISPLAY_EXPANDED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILTER_HINT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`SECTION_ID`,`PROPERTY_ID`),
  KEY `ix_b_iblock_section_property_1` (`PROPERTY_ID`),
  KEY `ix_b_iblock_section_property_2` (`SECTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_iblock_section_property: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_iblock_section_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_section_property` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_iblock_section_right
DROP TABLE IF EXISTS `b_iblock_section_right`;
CREATE TABLE IF NOT EXISTS `b_iblock_section_right` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `RIGHT_ID` int(11) NOT NULL,
  `IS_INHERITED` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`RIGHT_ID`,`SECTION_ID`),
  KEY `ix_b_iblock_section_right_1` (`SECTION_ID`,`IBLOCK_ID`),
  KEY `ix_b_iblock_section_right_2` (`IBLOCK_ID`,`RIGHT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_iblock_section_right: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_iblock_section_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_section_right` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_iblock_sequence
DROP TABLE IF EXISTS `b_iblock_sequence`;
CREATE TABLE IF NOT EXISTS `b_iblock_sequence` (
  `IBLOCK_ID` int(18) NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SEQ_VALUE` int(11) DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_iblock_sequence: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_iblock_sequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_sequence` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_iblock_site
DROP TABLE IF EXISTS `b_iblock_site`;
CREATE TABLE IF NOT EXISTS `b_iblock_site` (
  `IBLOCK_ID` int(18) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_iblock_site: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `b_iblock_site` DISABLE KEYS */;
REPLACE INTO `b_iblock_site` (`IBLOCK_ID`, `SITE_ID`) VALUES
	(1, 's1');
/*!40000 ALTER TABLE `b_iblock_site` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_iblock_type
DROP TABLE IF EXISTS `b_iblock_type`;
CREATE TABLE IF NOT EXISTS `b_iblock_type` (
  `ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SECTIONS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EDIT_FILE_BEFORE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDIT_FILE_AFTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IN_RSS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(18) NOT NULL DEFAULT '500',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_iblock_type: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `b_iblock_type` DISABLE KEYS */;
REPLACE INTO `b_iblock_type` (`ID`, `SECTIONS`, `EDIT_FILE_BEFORE`, `EDIT_FILE_AFTER`, `IN_RSS`, `SORT`) VALUES
	('articles', 'Y', '', '', 'N', 500),
	('rest_entity', 'Y', NULL, NULL, 'N', 1000);
/*!40000 ALTER TABLE `b_iblock_type` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_iblock_type_lang
DROP TABLE IF EXISTS `b_iblock_type_lang`;
CREATE TABLE IF NOT EXISTS `b_iblock_type_lang` (
  `IBLOCK_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SECTION_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENT_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_iblock_type_lang: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `b_iblock_type_lang` DISABLE KEYS */;
REPLACE INTO `b_iblock_type_lang` (`IBLOCK_TYPE_ID`, `LID`, `NAME`, `SECTION_NAME`, `ELEMENT_NAME`) VALUES
	('rest_entity', 'ru', 'Хранилище данных для приложений Маркетплейс24', 'Разделы', 'Элементы'),
	('articles', 'ru', 'Статьи', 'Категории', 'Статья'),
	('articles', 'en', 'Articles', 'Categories', 'Article');
/*!40000 ALTER TABLE `b_iblock_type_lang` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_landing
DROP TABLE IF EXISTS `b_landing`;
CREATE TABLE IF NOT EXISTS `b_landing` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INITIATOR_APP_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RULE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DELETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `PUBLIC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TPL_ID` int(18) DEFAULT NULL,
  `TPL_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_ID` int(18) NOT NULL,
  `SITEMAP` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `FOLDER` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `FOLDER_ID` int(18) DEFAULT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  `DATE_PUBLIC` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_LAND_CODE` (`CODE`),
  KEY `IX_B_LAND_ACTIVE` (`ACTIVE`),
  KEY `IX_B_LAND_DELETED` (`DELETED`),
  KEY `IX_B_LAND_XML_ID` (`XML_ID`),
  KEY `IX_B_LAND_SITEMAP` (`SITEMAP`),
  KEY `IX_B_LAND_FOLDER` (`FOLDER`),
  KEY `IX_B_LAND_FOLDER_ID` (`FOLDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_landing: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_landing` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_landing_block
DROP TABLE IF EXISTS `b_landing_block`;
CREATE TABLE IF NOT EXISTS `b_landing_block` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `PARENT_ID` int(18) DEFAULT NULL,
  `LID` int(18) NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `INITIATOR_APP_CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ANCHOR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(18) DEFAULT '500',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `PUBLIC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DELETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACCESS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'X',
  `SOURCE_PARAMS` mediumtext COLLATE utf8_unicode_ci,
  `CONTENT` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_BLOCK_LID` (`LID`),
  KEY `IX_B_BLOCK_CODE` (`CODE`),
  KEY `IX_B_BLOCK_ACTIVE` (`ACTIVE`),
  KEY `IX_B_BLOCK_PUBLIC` (`PUBLIC`),
  KEY `IX_B_BLOCK_DELETED` (`DELETED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_landing_block: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_landing_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_block` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_landing_demo
DROP TABLE IF EXISTS `b_landing_demo`;
CREATE TABLE IF NOT EXISTS `b_landing_demo` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `APP_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TYPE` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TPL_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `SHOW_IN_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW2X` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW3X` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MANIFEST` mediumtext COLLATE utf8_unicode_ci,
  `LANG` text COLLATE utf8_unicode_ci,
  `SITE_TEMPLATE_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_DEMO_ACTIVE` (`ACTIVE`),
  KEY `IX_B_DEMO_SHOW_IN_LIST` (`SHOW_IN_LIST`),
  KEY `IX_B_DEMO_XML_ID` (`XML_ID`),
  KEY `IX_B_DEMO_APP_CODE` (`APP_CODE`),
  KEY `IX_B_DEMO_TEMPLATE_ID` (`SITE_TEMPLATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_landing_demo: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_landing_demo` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_demo` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_landing_domain
DROP TABLE IF EXISTS `b_landing_domain`;
CREATE TABLE IF NOT EXISTS `b_landing_domain` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DOMAIN` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROTOCOL` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_DOMAIN_ACTIVE` (`ACTIVE`),
  KEY `IX_B_DOMAIN_DOMAIN` (`DOMAIN`),
  KEY `IX_B_DOMAIN_XML_ID` (`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_landing_domain: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_landing_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_domain` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_landing_entity_rights
DROP TABLE IF EXISTS `b_landing_entity_rights`;
CREATE TABLE IF NOT EXISTS `b_landing_entity_rights` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  `ACCESS_CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ROLE_ID` int(18) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`),
  KEY `IX_ROLE` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_landing_entity_rights: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_landing_entity_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_entity_rights` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_landing_file
DROP TABLE IF EXISTS `b_landing_file`;
CREATE TABLE IF NOT EXISTS `b_landing_file` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_ID` int(18) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`),
  KEY `IX_FILE` (`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_landing_file: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_landing_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_file` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_landing_filter_block
DROP TABLE IF EXISTS `b_landing_filter_block`;
CREATE TABLE IF NOT EXISTS `b_landing_filter_block` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FILTER_ID` int(18) NOT NULL,
  `BLOCK_ID` int(18) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_FILTER_BLOCK` (`FILTER_ID`,`BLOCK_ID`),
  KEY `IX_B_FILTER_ID` (`FILTER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_landing_filter_block: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_landing_filter_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_filter_block` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_landing_filter_entity
DROP TABLE IF EXISTS `b_landing_filter_entity`;
CREATE TABLE IF NOT EXISTS `b_landing_filter_entity` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `SOURCE_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FILTER_HASH` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `FILTER` text COLLATE utf8_unicode_ci,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_FILTER_HASH` (`FILTER_HASH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_landing_filter_entity: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_landing_filter_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_filter_entity` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_landing_hook_data
DROP TABLE IF EXISTS `b_landing_hook_data`;
CREATE TABLE IF NOT EXISTS `b_landing_hook_data` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `HOOK` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `K_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_landing_hook_data: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_landing_hook_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_hook_data` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_landing_manifest
DROP TABLE IF EXISTS `b_landing_manifest`;
CREATE TABLE IF NOT EXISTS `b_landing_manifest` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MANIFEST` text COLLATE utf8_unicode_ci NOT NULL,
  `CONTENT` text COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_MANIFEST_CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_landing_manifest: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_landing_manifest` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_manifest` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_landing_placement
DROP TABLE IF EXISTS `b_landing_placement`;
CREATE TABLE IF NOT EXISTS `b_landing_placement` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `APP_ID` int(18) DEFAULT NULL,
  `PLACEMENT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PLACEMENT_HANDLER` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_landing_placement: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_landing_placement` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_placement` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_landing_repo
DROP TABLE IF EXISTS `b_landing_repo`;
CREATE TABLE IF NOT EXISTS `b_landing_repo` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `APP_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTIONS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_TEMPLATE_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MANIFEST` text COLLATE utf8_unicode_ci,
  `CONTENT` text COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_REPO_ACTIVE` (`ACTIVE`),
  KEY `IX_B_REPO_XML_ID` (`XML_ID`),
  KEY `IX_B_REPO_APP_CODE` (`APP_CODE`),
  KEY `IX_B_REPO_TEMPLATE_ID` (`SITE_TEMPLATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_landing_repo: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_landing_repo` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_repo` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_landing_role
DROP TABLE IF EXISTS `b_landing_role`;
CREATE TABLE IF NOT EXISTS `b_landing_role` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCESS_CODES` text COLLATE utf8_unicode_ci,
  `ADDITIONAL_RIGHTS` text COLLATE utf8_unicode_ci,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_landing_role: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_landing_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_role` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_landing_site
DROP TABLE IF EXISTS `b_landing_site`;
CREATE TABLE IF NOT EXISTS `b_landing_site` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DELETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PAGE',
  `TPL_ID` int(18) DEFAULT NULL,
  `DOMAIN_ID` int(18) NOT NULL,
  `SMN_SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANDING_ID_INDEX` int(18) DEFAULT NULL,
  `LANDING_ID_404` int(18) DEFAULT NULL,
  `LANDING_ID_503` int(18) DEFAULT NULL,
  `LANG` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_SITE_CODE` (`CODE`),
  KEY `IX_B_SITE_ACTIVE` (`ACTIVE`),
  KEY `IX_B_SITE_DELETED` (`DELETED`),
  KEY `IX_B_SITE_XML_ID` (`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_landing_site: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_landing_site` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_site` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_landing_syspage
DROP TABLE IF EXISTS `b_landing_syspage`;
CREATE TABLE IF NOT EXISTS `b_landing_syspage` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `SITE_ID` int(18) NOT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LANDING_ID` int(18) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_SITE_ID` (`SITE_ID`),
  KEY `IX_LANDING_ID` (`LANDING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_landing_syspage: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_landing_syspage` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_syspage` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_landing_template
DROP TABLE IF EXISTS `b_landing_template`;
CREATE TABLE IF NOT EXISTS `b_landing_template` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(18) DEFAULT '100',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTENT` text COLLATE utf8_unicode_ci NOT NULL,
  `AREA_COUNT` int(2) NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_landing_template: ~6 rows (приблизительно)
/*!40000 ALTER TABLE `b_landing_template` DISABLE KEYS */;
REPLACE INTO `b_landing_template` (`ID`, `ACTIVE`, `TITLE`, `SORT`, `XML_ID`, `CONTENT`, `AREA_COUNT`, `CREATED_BY_ID`, `MODIFIED_BY_ID`, `DATE_CREATE`, `DATE_MODIFY`) VALUES
	(1, 'Y', '#EMPTY#', 100, 'empty', '#CONTENT#', 0, 1, 1, '2019-12-27 14:13:34', '2019-12-27 14:13:34'),
	(2, 'Y', '#SIDEBAR_LEFT#', 200, 'sidebar_left', '<div class="landing-layout-flex">\n								<div class="g-width-25x--lg g-max-width-100x g-overflow-hidden landing-sidebar">#AREA_1#</div> \n								<div class="g-width-75x--lg g-max-width-100x landing-main">#CONTENT#</div> \n							</div>', 1, 1, 1, '2019-12-27 14:13:34', '2019-12-27 14:13:34'),
	(3, 'Y', '#SIDEBAR_RIGHT#', 300, 'sidebar_right', '<div class="landing-layout-flex sidebar-right">\n								<div class="g-width-25x--lg g-max-width-100x landing-sidebar">#AREA_1#</div> \n								<div class="g-width-75x--lg  g-max-width-100x landing-main">#CONTENT#</div> \n							</div>', 1, 1, 1, '2019-12-27 14:13:34', '2019-12-27 14:13:34'),
	(4, 'Y', '#HEADER_FOOTER#', 400, 'header_footer', '<div class="landing-header">#AREA_1#</div> \n								<div class="landing-main">#CONTENT#</div> \n							<div class="landing-footer">#AREA_2#</div>', 2, 1, 1, '2019-12-27 14:13:34', '2019-12-27 14:13:34'),
	(5, 'Y', '#WITHOUT_LEFT#', 500, 'without_left', '<div class="landing-header">#AREA_1#</div> \n								<div class="landing-layout-flex without-left">\n									<div class="g-width-25x--lg g-max-width-100x landing-sidebar">#AREA_2#</div>\n									<div class="g-width-75x--lg g-max-width-100x landing-main">#CONTENT#</div> \n								</div> \n							<div class="landing-footer">#AREA_3#</div>', 3, 1, 1, '2019-12-27 14:13:34', '2019-12-27 14:13:34'),
	(6, 'Y', '#WITHOUT_RIGHT#', 600, 'without_right', '<div class="landing-header">#AREA_1#</div>\n								<div class="landing-layout-flex">\n									<div class="g-width-25x--lg g-max-width-100x landing-sidebar">#AREA_2#</div>\n									<div class="g-width-75x--lg g-max-width-100x landing-main">#CONTENT#</div>\n								</div>\n							<div class="landing-footer">#AREA_3#</div>', 3, 1, 1, '2019-12-27 14:13:34', '2019-12-27 14:13:34');
/*!40000 ALTER TABLE `b_landing_template` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_landing_template_ref
DROP TABLE IF EXISTS `b_landing_template_ref`;
CREATE TABLE IF NOT EXISTS `b_landing_template_ref` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `AREA` int(2) NOT NULL,
  `LANDING_ID` int(18) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `K_LANDING_ID` (`LANDING_ID`),
  KEY `K_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_landing_template_ref: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_landing_template_ref` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_template_ref` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_landing_update_block
DROP TABLE IF EXISTS `b_landing_update_block`;
CREATE TABLE IF NOT EXISTS `b_landing_update_block` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_BLOCK_ID` int(18) DEFAULT '0',
  `PARAMS` text COLLATE utf8_unicode_ci,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_landing_update_block: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_landing_update_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_update_block` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_landing_urlrewrite
DROP TABLE IF EXISTS `b_landing_urlrewrite`;
CREATE TABLE IF NOT EXISTS `b_landing_urlrewrite` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `SITE_ID` int(18) NOT NULL,
  `RULE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LANDING_ID` int(18) NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_SITE_RULE` (`SITE_ID`,`RULE`),
  KEY `IX_LANDING_ID` (`LANDING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_landing_urlrewrite: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_landing_urlrewrite` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_urlrewrite` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_lang
DROP TABLE IF EXISTS `b_lang`;
CREATE TABLE IF NOT EXISTS `b_lang` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(18) NOT NULL DEFAULT '100',
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DIR` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FORMAT_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEEK_START` int(11) DEFAULT NULL,
  `CHARSET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `DOC_ROOT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DOMAIN_LIMITED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SERVER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CULTURE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_lang: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `b_lang` DISABLE KEYS */;
REPLACE INTO `b_lang` (`LID`, `SORT`, `DEF`, `ACTIVE`, `NAME`, `DIR`, `FORMAT_DATE`, `FORMAT_DATETIME`, `FORMAT_NAME`, `WEEK_START`, `CHARSET`, `LANGUAGE_ID`, `DOC_ROOT`, `DOMAIN_LIMITED`, `SERVER_NAME`, `SITE_NAME`, `EMAIL`, `CULTURE_ID`) VALUES
	('s1', 1, 'Y', 'Y', 'Сайт по умолчанию', '/', NULL, NULL, NULL, NULL, NULL, 'ru', '', 'N', '', '', '', 1);
/*!40000 ALTER TABLE `b_lang` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_language
DROP TABLE IF EXISTS `b_language`;
CREATE TABLE IF NOT EXISTS `b_language` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '100',
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FORMAT_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEEK_START` int(11) DEFAULT NULL,
  `CHARSET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIRECTION` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CULTURE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_language: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `b_language` DISABLE KEYS */;
REPLACE INTO `b_language` (`LID`, `SORT`, `DEF`, `ACTIVE`, `NAME`, `FORMAT_DATE`, `FORMAT_DATETIME`, `FORMAT_NAME`, `WEEK_START`, `CHARSET`, `DIRECTION`, `CULTURE_ID`) VALUES
	('en', 2, 'N', 'Y', 'English', NULL, NULL, NULL, NULL, NULL, NULL, 2),
	('ru', 1, 'Y', 'Y', 'Russian', NULL, NULL, NULL, NULL, NULL, NULL, 1);
/*!40000 ALTER TABLE `b_language` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_lang_domain
DROP TABLE IF EXISTS `b_lang_domain`;
CREATE TABLE IF NOT EXISTS `b_lang_domain` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `DOMAIN` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`LID`,`DOMAIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_lang_domain: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_lang_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_lang_domain` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_log_notification
DROP TABLE IF EXISTS `b_log_notification`;
CREATE TABLE IF NOT EXISTS `b_log_notification` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `AUDIT_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_AGENT` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_URI` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHECK_INTERVAL` int(11) DEFAULT NULL,
  `ALERT_COUNT` int(11) DEFAULT NULL,
  `DATE_CHECKED` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_log_notification: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_log_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_log_notification` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_log_notification_action
DROP TABLE IF EXISTS `b_log_notification_action`;
CREATE TABLE IF NOT EXISTS `b_log_notification_action` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NOTIFICATION_ID` int(10) unsigned NOT NULL,
  `NOTIFICATION_TYPE` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `RECIPIENT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDITIONAL_TEXT` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `ix_log_notification_action_notification_id` (`NOTIFICATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_log_notification_action: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_log_notification_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_log_notification_action` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_main_mail_blacklist
DROP TABLE IF EXISTS `b_main_mail_blacklist`;
CREATE TABLE IF NOT EXISTS `b_main_mail_blacklist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime NOT NULL,
  `CATEGORY_ID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_B_MAIN_MAIL_BLACKLIST_CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_main_mail_blacklist: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_main_mail_blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_main_mail_blacklist` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_main_mail_sender
DROP TABLE IF EXISTS `b_main_mail_sender`;
CREATE TABLE IF NOT EXISTS `b_main_mail_sender` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `IS_CONFIRMED` tinyint(4) NOT NULL DEFAULT '0',
  `IS_PUBLIC` tinyint(4) NOT NULL DEFAULT '0',
  `OPTIONS` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `IX_B_MAIN_MAIL_SENDER_USER_ID` (`USER_ID`,`IS_CONFIRMED`,`IS_PUBLIC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_main_mail_sender: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_main_mail_sender` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_main_mail_sender` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_medialib_collection
DROP TABLE IF EXISTS `b_medialib_collection`;
CREATE TABLE IF NOT EXISTS `b_medialib_collection` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DATE_UPDATE` datetime NOT NULL,
  `OWNER_ID` int(11) DEFAULT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KEYWORDS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEMS_COUNT` int(11) DEFAULT NULL,
  `ML_TYPE` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_medialib_collection: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_medialib_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_medialib_collection` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_medialib_collection_item
DROP TABLE IF EXISTS `b_medialib_collection_item`;
CREATE TABLE IF NOT EXISTS `b_medialib_collection_item` (
  `COLLECTION_ID` int(11) NOT NULL,
  `ITEM_ID` int(11) NOT NULL,
  PRIMARY KEY (`ITEM_ID`,`COLLECTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_medialib_collection_item: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_medialib_collection_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_medialib_collection_item` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_medialib_item
DROP TABLE IF EXISTS `b_medialib_item`;
CREATE TABLE IF NOT EXISTS `b_medialib_item` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_TYPE` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `SOURCE_ID` int(11) NOT NULL,
  `KEYWORDS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEARCHABLE_CONTENT` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_medialib_item: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_medialib_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_medialib_item` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_medialib_type
DROP TABLE IF EXISTS `b_medialib_type`;
CREATE TABLE IF NOT EXISTS `b_medialib_type` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EXT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SYSTEM` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_medialib_type: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `b_medialib_type` DISABLE KEYS */;
REPLACE INTO `b_medialib_type` (`ID`, `NAME`, `CODE`, `EXT`, `SYSTEM`, `DESCRIPTION`) VALUES
	(1, 'image_name', 'image', 'jpg,jpeg,gif,png', 'Y', 'image_desc'),
	(2, 'video_name', 'video', 'flv,mp4,wmv', 'Y', 'video_desc'),
	(3, 'sound_name', 'sound', 'mp3,wma,aac', 'Y', 'sound_desc');
/*!40000 ALTER TABLE `b_medialib_type` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_messageservice_message
DROP TABLE IF EXISTS `b_messageservice_message`;
CREATE TABLE IF NOT EXISTS `b_messageservice_message` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `SENDER_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `AUTHOR_ID` int(18) NOT NULL DEFAULT '0',
  `MESSAGE_FROM` varchar(260) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE_TO` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_HEADERS` longtext COLLATE utf8_unicode_ci,
  `MESSAGE_BODY` longtext COLLATE utf8_unicode_ci NOT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `DATE_EXEC` datetime DEFAULT NULL,
  `NEXT_EXEC` datetime DEFAULT NULL,
  `SUCCESS_EXEC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `EXEC_ERROR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATUS_ID` int(18) NOT NULL DEFAULT '0',
  `EXTERNAL_ID` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `B_MESSAGESERVICE_MESSAGE_1` (`DATE_EXEC`),
  KEY `B_MESSAGESERVICE_MESSAGE_2` (`SUCCESS_EXEC`),
  KEY `B_MESSAGESERVICE_MESSAGE_3` (`SENDER_ID`,`EXTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_messageservice_message: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_messageservice_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_messageservice_message` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_messageservice_rest_app
DROP TABLE IF EXISTS `b_messageservice_rest_app`;
CREATE TABLE IF NOT EXISTS `b_messageservice_rest_app` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `APP_ID` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `HANDLER` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_ADD` datetime DEFAULT NULL,
  `AUTHOR_ID` int(18) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `B_MESSAGESERVICE_REST_APP_1` (`APP_ID`,`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_messageservice_rest_app: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_messageservice_rest_app` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_messageservice_rest_app` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_messageservice_rest_app_lang
DROP TABLE IF EXISTS `b_messageservice_rest_app_lang`;
CREATE TABLE IF NOT EXISTS `b_messageservice_rest_app_lang` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `APP_ID` int(18) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `APP_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_messageservice_rest_app_lang: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_messageservice_rest_app_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_messageservice_rest_app_lang` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_module
DROP TABLE IF EXISTS `b_module`;
CREATE TABLE IF NOT EXISTS `b_module` (
  `ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_ACTIVE` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_module: ~18 rows (приблизительно)
/*!40000 ALTER TABLE `b_module` DISABLE KEYS */;
REPLACE INTO `b_module` (`ID`, `DATE_ACTIVE`) VALUES
	('b24connector', NULL),
	('bitrix.sitecorporate', NULL),
	('bitrixcloud', NULL),
	('clouds', NULL),
	('compression', NULL),
	('fileman', NULL),
	('highloadblock', NULL),
	('iblock', NULL),
	('landing', NULL),
	('main', NULL),
	('messageservice', NULL),
	('perfmon', NULL),
	('rest', NULL),
	('search', NULL),
	('seo', NULL),
	('socialservices', NULL),
	('translate', NULL),
	('ui', NULL);
/*!40000 ALTER TABLE `b_module` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_module_group
DROP TABLE IF EXISTS `b_module_group`;
CREATE TABLE IF NOT EXISTS `b_module_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `G_ACCESS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_GROUP_MODULE` (`MODULE_ID`,`GROUP_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_module_group: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_module_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_module_group` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_module_to_module
DROP TABLE IF EXISTS `b_module_to_module`;
CREATE TABLE IF NOT EXISTS `b_module_to_module` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `SORT` int(18) NOT NULL DEFAULT '100',
  `FROM_MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TO_MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TO_PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_CLASS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_METHOD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_METHOD_ARG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(18) DEFAULT NULL,
  `UNIQUE_ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_module_to_module_unique_id` (`UNIQUE_ID`),
  KEY `ix_module_to_module` (`FROM_MODULE_ID`(20),`MESSAGE_ID`(20),`TO_MODULE_ID`(20),`TO_CLASS`(20),`TO_METHOD`(20))
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_module_to_module: ~200 rows (приблизительно)
/*!40000 ALTER TABLE `b_module_to_module` DISABLE KEYS */;
REPLACE INTO `b_module_to_module` (`ID`, `TIMESTAMP_X`, `SORT`, `FROM_MODULE_ID`, `MESSAGE_ID`, `TO_MODULE_ID`, `TO_PATH`, `TO_CLASS`, `TO_METHOD`, `TO_METHOD_ARG`, `VERSION`, `UNIQUE_ID`) VALUES
	(1, NULL, 100, 'iblock', 'OnIBlockPropertyBuildList', 'main', '/modules/main/tools/prop_userid.php', 'CIBlockPropertyUserID', 'GetUserTypeDescription', '', 1, '2b30c309bf87645959b9bfbed51b49c6'),
	(2, NULL, 100, 'main', 'OnUserDelete', 'main', '/modules/main/classes/mysql/favorites.php', 'CFavorites', 'OnUserDelete', '', 1, 'f437e170e4daf957766b0b0579f08fb4'),
	(3, NULL, 100, 'main', 'OnLanguageDelete', 'main', '/modules/main/classes/mysql/favorites.php', 'CFavorites', 'OnLanguageDelete', '', 1, '9211999c5cfc3a4d374e4f957d5079f6'),
	(4, NULL, 100, 'main', 'OnUserDelete', 'main', '', 'CUserOptions', 'OnUserDelete', '', 1, '9ef4e969f975b6425c7113444d210a90'),
	(5, NULL, 100, 'main', 'OnChangeFile', 'main', '', 'CMain', 'OnChangeFileComponent', '', 1, '332179402f77c4d41c6c2e524acde4d0'),
	(6, NULL, 100, 'main', 'OnUserTypeRightsCheck', 'main', '', 'CUser', 'UserTypeRightsCheck', '', 1, 'e1aae03ea8eb08e7bbb6d8d42cbc2ebe'),
	(7, NULL, 100, 'main', 'OnUserLogin', 'main', '', 'UpdateTools', 'CheckUpdates', '', 1, 'a2986b9f6e9a99c0351c2ba858dafc85'),
	(8, NULL, 100, 'main', 'OnModuleUpdate', 'main', '', 'UpdateTools', 'SetUpdateResult', '', 1, 'f9b70c6a75b6341063b23bde5d32e582'),
	(9, NULL, 100, 'main', 'OnUpdateCheck', 'main', '', 'UpdateTools', 'SetUpdateError', '', 1, 'a0aecef95a192ec3dd134f71f0f4f175'),
	(10, NULL, 100, 'main', 'OnPanelCreate', 'main', '', 'CUndo', 'CheckNotifyMessage', '', 1, '6476f96ffba6ab2b4a7dbe644f42edf6'),
	(11, NULL, 100, 'main', 'OnAfterAddRating', 'main', '', 'CRatingsComponentsMain', 'OnAfterAddRating', '', 1, '6122bee2ad083f8f72e35655cee48859'),
	(12, NULL, 100, 'main', 'OnAfterUpdateRating', 'main', '', 'CRatingsComponentsMain', 'OnAfterUpdateRating', '', 1, 'f8f806e33dc35737bdbe6b9bc42626a4'),
	(13, NULL, 100, 'main', 'OnSetRatingsConfigs', 'main', '', 'CRatingsComponentsMain', 'OnSetRatingConfigs', '', 1, '9244ca7fd6964757ca191c9407cb1218'),
	(14, NULL, 100, 'main', 'OnGetRatingsConfigs', 'main', '', 'CRatingsComponentsMain', 'OnGetRatingConfigs', '', 1, 'd8ae8e1f8889b1fbb6af276fb14c8411'),
	(15, NULL, 100, 'main', 'OnGetRatingsObjects', 'main', '', 'CRatingsComponentsMain', 'OnGetRatingObject', '', 1, '129315715250c195ee115002b445a156'),
	(16, NULL, 100, 'main', 'OnGetRatingContentOwner', 'main', '', 'CRatingsComponentsMain', 'OnGetRatingContentOwner', '', 1, 'bf1f5deaa1532fe9a28acd6d19d23a80'),
	(17, NULL, 100, 'main', 'OnAfterAddRatingRule', 'main', '', 'CRatingRulesMain', 'OnAfterAddRatingRule', '', 1, '298e763431f7f7d6c3af9798663f410d'),
	(18, NULL, 100, 'main', 'OnAfterUpdateRatingRule', 'main', '', 'CRatingRulesMain', 'OnAfterUpdateRatingRule', '', 1, '4ecdc4a15e24c49f0fa8f44064bf1511'),
	(19, NULL, 100, 'main', 'OnGetRatingRuleObjects', 'main', '', 'CRatingRulesMain', 'OnGetRatingRuleObjects', '', 1, '6ac10928b76183004ba0e88ace0a1b5b'),
	(20, NULL, 100, 'main', 'OnGetRatingRuleConfigs', 'main', '', 'CRatingRulesMain', 'OnGetRatingRuleConfigs', '', 1, '06769c4f6bbba4fad79c1619a874ee97'),
	(21, NULL, 100, 'main', 'OnAfterUserAdd', 'main', '', 'CRatings', 'OnAfterUserRegister', '', 1, 'ecb9ae0476db69da6c95b06bcb3aebbb'),
	(22, NULL, 100, 'main', 'OnUserDelete', 'main', '', 'CRatings', 'OnUserDelete', '', 1, '9fe6984fd29b7ab9508ac02c23690094'),
	(23, NULL, 100, 'main', 'OnUserDelete', 'main', '', 'CAccess', 'OnUserDelete', '', 1, '71909f221d70fa277429e80412f97f41'),
	(24, NULL, 100, 'main', 'OnAfterGroupAdd', 'main', '', 'CGroupAuthProvider', 'OnAfterGroupAdd', '', 1, '02f2fe70b9068a6b307192321fe74430'),
	(25, NULL, 100, 'main', 'OnBeforeGroupUpdate', 'main', '', 'CGroupAuthProvider', 'OnBeforeGroupUpdate', '', 1, 'ef0f2e4d0ae7bbf59d0798e8078143f9'),
	(26, NULL, 100, 'main', 'OnBeforeGroupDelete', 'main', '', 'CGroupAuthProvider', 'OnBeforeGroupDelete', '', 1, 'd3ec9527c0e77709402a05ae4249afca'),
	(27, NULL, 100, 'main', 'OnAfterSetUserGroup', 'main', '', 'CGroupAuthProvider', 'OnAfterSetUserGroup', '', 1, '0de6c5b48e9382f6e857d79f76d95f25'),
	(28, NULL, 100, 'main', 'OnUserLogin', 'main', '', 'CGroupAuthProvider', 'OnUserLogin', '', 1, '954e2c4ca8624f90f1aee6f40183d5fc'),
	(29, NULL, 100, 'main', 'OnEventLogGetAuditTypes', 'main', '', 'CEventMain', 'GetAuditTypes', '', 1, 'ac0b8b7a5e703131a3bd41b4399bc032'),
	(30, NULL, 100, 'main', 'OnEventLogGetAuditHandlers', 'main', '', 'CEventMain', 'MakeMainObject', '', 1, '1ddb38ccf35a8a9da5d3b2bc80591ad6'),
	(31, NULL, 100, 'perfmon', 'OnGetTableSchema', 'main', '', 'CTableSchema', 'OnGetTableSchema', '', 1, 'c1f65f88d449e8b8a3b7af9d54ef3f50'),
	(32, NULL, 100, 'sender', 'OnConnectorList', 'main', '', '\\Bitrix\\Main\\SenderEventHandler', 'onConnectorListUser', '', 1, '8af99568465a1ccdb6a84e868cf5aad8'),
	(33, NULL, 110, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeString', 'GetUserTypeDescription', '', 1, '09f8200652932044934bd3c522e920c5'),
	(34, NULL, 120, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeInteger', 'GetUserTypeDescription', '', 1, '71ef247b3eb3b07e4bd6940791b89497'),
	(35, NULL, 130, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeDouble', 'GetUserTypeDescription', '', 1, '4fe2008255fe567423cc0c2f080ca741'),
	(36, NULL, 140, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeDateTime', 'GetUserTypeDescription', '', 1, '686c0679e60bee52dbcc27f5502277b6'),
	(37, NULL, 145, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeDate', 'GetUserTypeDescription', '', 1, '7e19b5fc5fc48b1cd317a6ac44d84236'),
	(38, NULL, 150, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeBoolean', 'GetUserTypeDescription', '', 1, '4d5e1dd2369089f2db9480549241205f'),
	(39, NULL, 155, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeUrl', 'GetUserTypeDescription', '', 1, '79fcd650625b296abf13216cd5af2428'),
	(40, NULL, 160, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeFile', 'GetUserTypeDescription', '', 1, '67b9a4fbc45240a7887b73e3a246eba0'),
	(41, NULL, 170, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeEnum', 'GetUserTypeDescription', '', 1, 'fbebdb289fe38c1fbfeda4d3d8ee43ef'),
	(42, NULL, 180, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeIBlockSection', 'GetUserTypeDescription', '', 1, '2065f8305645790970bac0b99f127f47'),
	(43, NULL, 190, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeIBlockElement', 'GetUserTypeDescription', '', 1, '65bda5818e3545f1683a3ff5271cc891'),
	(44, NULL, 200, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeStringFormatted', 'GetUserTypeDescription', '', 1, '47e3cf1c280e01dbaed43f9989a6747b'),
	(45, NULL, 210, 'main', 'OnUserTypeBuildList', 'main', '', '\\Bitrix\\Main\\UrlPreview\\UrlPreviewUserType', 'getUserTypeDescription', '', 1, '719d15ee5f60f6348d2bd6a8911aeed1'),
	(46, NULL, 100, 'main', 'OnBeforeEndBufferContent', 'main', '', '\\Bitrix\\Main\\Analytics\\Counter', 'onBeforeEndBufferContent', '', 1, 'ff5eb984fe6ce3e8d769bf3ba646b902'),
	(47, NULL, 100, 'main', 'OnBeforeRestartBuffer', 'main', '', '\\Bitrix\\Main\\Analytics\\Counter', 'onBeforeRestartBuffer', '', 1, '0782f5a6df6dd52d834caea88c3ba3a7'),
	(48, NULL, 100, 'main', 'OnFileDelete', 'main', '', '\\Bitrix\\Main\\UI\\Viewer\\FilePreviewTable', 'onFileDelete', '', 1, '54c80cd94412db221338aeb59902f059'),
	(49, NULL, 100, 'disk', 'onAfterAjaxActionCreateFolderWithSharing', 'main', '', '\\Bitrix\\Main\\FinderDestTable', 'onAfterDiskAjaxAction', '', 1, 'bfd508b9d33aff2527add538ca8ce0da'),
	(50, NULL, 100, 'disk', 'onAfterAjaxActionAppendSharing', 'main', '', '\\Bitrix\\Main\\FinderDestTable', 'onAfterDiskAjaxAction', '', 1, 'a98030c3e6d284d10916eadb1153cb68'),
	(51, NULL, 100, 'disk', 'onAfterAjaxActionChangeSharingAndRights', 'main', '', '\\Bitrix\\Main\\FinderDestTable', 'onAfterDiskAjaxAction', '', 1, '6787372096415bcfe93bd50d8b24f608'),
	(52, NULL, 100, 'socialnetwork', 'OnSocNetLogDelete', 'main', '', 'CUserCounter', 'OnSocNetLogDelete', '', 1, '33e603755a0bc07abd51a1f8ed52966e'),
	(53, NULL, 100, 'socialnetwork', 'OnSocNetLogCommentDelete', 'main', '', 'CUserCounter', 'OnSocNetLogCommentDelete', '', 1, '51ee2214895be904a880046f43e84138'),
	(54, NULL, 100, 'main', 'OnAdminInformerInsertItems', 'main', '', 'CMpNotifications', 'OnAdminInformerInsertItemsHandlerMP', '', 1, 'c89c0e94ac1110c334a24c70e1773daa'),
	(55, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'main', '', '\\Bitrix\\Main\\Rest\\Handlers', 'onRestServiceBuildDescription', '', 1, 'c0b0c358a21b648d4f9c5d29d17a5ab2'),
	(56, NULL, 100, 'sale', 'OnSaleBasketItemSaved', 'main', '', '\\Bitrix\\Main\\Analytics\\Catalog', 'catchCatalogBasket', '', 2, 'fa4fc3924ff2585e92f8bdabaf287864'),
	(57, NULL, 100, 'sale', 'OnSaleOrderSaved', 'main', '', '\\Bitrix\\Main\\Analytics\\Catalog', 'catchCatalogOrder', '', 2, '6b358bb17b30da91b105fb1451ed9aaa'),
	(58, NULL, 100, 'sale', 'OnSaleOrderPaid', 'main', '', '\\Bitrix\\Main\\Analytics\\Catalog', 'catchCatalogOrderPayment', '', 2, '8f5ca6e1c5136cb4bbf30474f0ff4183'),
	(59, NULL, 1000, 'sale', 'onBuildDiscountConditionInterfaceControls', 'main', '', '\\Bitrix\\Main\\Discount\\UserConditionControl', 'onBuildDiscountConditionInterfaceControls', '', 1, '9f0d91c081704e52b52f540b3acaf52e'),
	(60, NULL, 100, 'main', 'OnBeforePhpMail', 'main', '', '\\Bitrix\\Main\\Mail\\Sender', 'applyCustomSmtp', '', 2, '10fbf5b8dec05a02d8d7010e594f16ec'),
	(61, NULL, 100, 'main', 'OnBuildFilterFactoryMethods', 'main', '', '\\Bitrix\\Main\\Filter\\FactoryMain', 'onBuildFilterFactoryMethods', '', 2, '19f10c2686a955bd8b8116ea1f1ad829'),
	(62, NULL, 100, 'main', 'OnBuildGlobalMenu', 'b24connector', '', '\\Bitrix\\B24Connector\\Helper', 'onBuildGlobalMenu', '', 1, '9c4452a442bacc2d4d70635962485be1'),
	(63, NULL, 100, 'main', 'OnBeforeProlog', 'b24connector', '', '\\Bitrix\\B24Connector\\Helper', 'onBeforeProlog', '', 1, '641053ff6ee8ff57518d7c30724530e5'),
	(64, NULL, 100, 'main', 'OnBeforeProlog', 'bitrix.sitecorporate', '', 'CSiteCorporate', 'ShowPanel', '', 1, 'bc7c322534797a9ed3493c40e1b8fdac'),
	(65, NULL, 100, 'main', 'OnAdminInformerInsertItems', 'bitrixcloud', '', 'CBitrixCloudBackup', 'OnAdminInformerInsertItems', '', 1, '5499039afdd0fdb38d4b245c8b886dcb'),
	(66, NULL, 100, 'mobileapp', 'OnBeforeAdminMobileMenuBuild', 'bitrixcloud', '', 'CBitrixCloudMobile', 'OnBeforeAdminMobileMenuBuild', '', 1, '5828a8cdb2cc45e2724ef1c76139df88'),
	(67, NULL, 100, 'main', 'OnEventLogGetAuditTypes', 'clouds', '', 'CCloudStorage', 'GetAuditTypes', '', 1, 'da69722ba95497cf263381b46e24df40'),
	(68, NULL, 90, 'main', 'OnBeforeProlog', 'clouds', '', 'CCloudStorage', 'OnBeforeProlog', '', 1, 'f8c39ff182ad873715f10a7091f928a4'),
	(69, NULL, 100, 'main', 'OnAdminListDisplay', 'clouds', '', 'CCloudStorage', 'OnAdminListDisplay', '', 1, '8ddf4f578e7229a63cba4d2124c7643c'),
	(70, NULL, 100, 'main', 'OnBuildGlobalMenu', 'clouds', '', 'CCloudStorage', 'OnBuildGlobalMenu', '', 1, 'd6d308843a6521ad50bfa230a2fcef8f'),
	(71, NULL, 100, 'main', 'OnFileSave', 'clouds', '', 'CCloudStorage', 'OnFileSave', '', 1, '1e4f94a842d6166359ed1789a6f21245'),
	(72, NULL, 100, 'main', 'OnAfterFileSave', 'clouds', '', 'CCloudStorage', 'OnAfterFileSave', '', 1, 'c36bae07a3080f9b5bc5d422ec96933f'),
	(73, NULL, 100, 'main', 'OnGetFileSRC', 'clouds', '', 'CCloudStorage', 'OnGetFileSRC', '', 1, '7ec03b3b7ad3f2f54c1e438a1172e5a8'),
	(74, NULL, 100, 'main', 'OnFileCopy', 'clouds', '', 'CCloudStorage', 'OnFileCopy', '', 1, '6880b56c76f7d3c5d09f887fca6341ca'),
	(75, NULL, 100, 'main', 'OnFileDelete', 'clouds', '', 'CCloudStorage', 'OnFileDelete', '', 1, 'fefe695dc9f0e579e949c2dfcbe90d9d'),
	(76, NULL, 100, 'main', 'OnMakeFileArray', 'clouds', '', 'CCloudStorage', 'OnMakeFileArray', '', 1, '713ea8a7a25764b1af60f7a1ec3032d5'),
	(77, NULL, 100, 'main', 'OnBeforeResizeImage', 'clouds', '', 'CCloudStorage', 'OnBeforeResizeImage', '', 1, '705cd310c52f9c7e8e0c8a0578a22667'),
	(78, NULL, 100, 'main', 'OnAfterResizeImage', 'clouds', '', 'CCloudStorage', 'OnAfterResizeImage', '', 1, 'a403ad2328227153475df0c478a465cc'),
	(79, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_AmazonS3', 'GetObjectInstance', '', 1, 'a4eb7ed1f50b5931474c565f448a4069'),
	(80, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_GoogleStorage', 'GetObjectInstance', '', 1, '1e559e2225608e8d40eeede5b7526f2a'),
	(81, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_OpenStackStorage', 'GetObjectInstance', '', 1, '5ad09feff5dab28ab571ad034ccdf2ea'),
	(82, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_RackSpaceCloudFiles', 'GetObjectInstance', '', 1, 'cc976773610cf809bb56871ac7dd9f01'),
	(83, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_ClodoRU', 'GetObjectInstance', '', 1, 'faadad31436e94c420ed787e4424714b'),
	(84, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_Selectel', 'GetObjectInstance', '', 1, '5e63a8eebed42bd099b4a9ef62e8d52b'),
	(85, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_HotBox', 'GetObjectInstance', '', 1, '1913169adcd6d6f3b7fb5f3b70ba1fd8'),
	(86, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_Yandex', 'GetObjectInstance', '', 1, '12bd1d4f0d145d5b1681955612fe61c8'),
	(87, NULL, 100, 'perfmon', 'OnGetTableSchema', 'clouds', '', 'clouds', 'OnGetTableSchema', '', 1, 'd31a1f80f07441976eb1711db4902a71'),
	(88, NULL, 1, 'main', 'OnPageStart', 'compression', '', 'CCompress', 'OnPageStart', '', 1, 'b5b3b05c97cb867ae7494ab99fa9a119'),
	(89, NULL, 10000, 'main', 'OnAfterEpilog', 'compression', '', 'CCompress', 'OnAfterEpilog', '', 1, '397a459912acd1c78fc9129065807860'),
	(90, NULL, 100, 'main', 'OnGroupDelete', 'fileman', '', 'CFileman', 'OnGroupDelete', '', 1, 'd10f791d422ba0e7551ab267db50404c'),
	(91, NULL, 100, 'main', 'OnPanelCreate', 'fileman', '', 'CFileman', 'OnPanelCreate', '', 1, 'b00a6174fb1763684c299ccf5e054c65'),
	(92, NULL, 100, 'main', 'OnModuleUpdate', 'fileman', '', 'CFileman', 'OnModuleUpdate', '', 1, '58ae853e2b7c230b5cdb51129efd8a05'),
	(93, NULL, 100, 'main', 'OnModuleInstalled', 'fileman', '', 'CFileman', 'ClearComponentsListCache', '', 1, '7bdbd354eab11f376fa257a998587277'),
	(94, NULL, 100, 'iblock', 'OnIBlockPropertyBuildList', 'fileman', '', 'CIBlockPropertyMapGoogle', 'GetUserTypeDescription', '', 1, 'd9d06fd05f80b33379359ebd8e36e655'),
	(95, NULL, 100, 'iblock', 'OnIBlockPropertyBuildList', 'fileman', '', 'CIBlockPropertyMapYandex', 'GetUserTypeDescription', '', 1, '20ca1d02998884b5abec68b32fdb561d'),
	(96, NULL, 100, 'iblock', 'OnIBlockPropertyBuildList', 'fileman', '', 'CIBlockPropertyVideo', 'GetUserTypeDescription', '', 1, '991c32062e05844708a5cf7aba37bf9a'),
	(97, NULL, 100, 'main', 'OnUserTypeBuildList', 'fileman', '', 'CUserTypeVideo', 'GetUserTypeDescription', '', 1, '41bc5efb49ebf8d165acd4e4d556f60c'),
	(98, NULL, 100, 'main', 'OnEventLogGetAuditTypes', 'fileman', '', 'CEventFileman', 'GetAuditTypes', '', 1, 'e0a610651ffec1fbddb2f261223fb2e9'),
	(99, NULL, 100, 'main', 'OnEventLogGetAuditHandlers', 'fileman', '', 'CEventFileman', 'MakeFilemanObject', '', 1, 'fbfef1ef99530f6eae191da293f9566c'),
	(100, NULL, 154, 'main', 'OnUserTypeBuildList', 'fileman', '', '\\Bitrix\\Fileman\\UserField\\Address', 'getUserTypeDescription', '', 1, 'f0583a376e38d3d2675513b1a367ed3c'),
	(101, NULL, 100, 'main', 'OnBeforeUserTypeAdd', 'highloadblock', '', '\\Bitrix\\Highloadblock\\HighloadBlockTable', 'OnBeforeUserTypeAdd', '', 1, 'f9dcff287cf7753e5c56974d37975507'),
	(102, NULL, 100, 'main', 'OnAfterUserTypeAdd', 'highloadblock', '', '\\Bitrix\\Highloadblock\\HighloadBlockTable', 'onAfterUserTypeAdd', '', 1, 'd1fa2865e72eca144b964b6fb1eefc15'),
	(103, NULL, 100, 'main', 'OnBeforeUserTypeDelete', 'highloadblock', '', '\\Bitrix\\Highloadblock\\HighloadBlockTable', 'OnBeforeUserTypeDelete', '', 1, '1bf13707e1a45b8320c2ecd35534cbb4'),
	(104, NULL, 100, 'main', 'OnUserTypeBuildList', 'highloadblock', '', 'CUserTypeHlblock', 'GetUserTypeDescription', '', 1, '2ac4a2154f4fd85d67b50f412ed5ed48'),
	(105, NULL, 100, 'iblock', 'OnIBlockPropertyBuildList', 'highloadblock', '', 'CIBlockPropertyDirectory', 'GetUserTypeDescription', '', 1, 'a6f7df502db8a04590e43188d7cbfc99'),
	(106, NULL, 100, 'main', 'OnGroupDelete', 'iblock', '', 'CIBlock', 'OnGroupDelete', '', 1, 'f2320df213f38adf32364d3169d5b197'),
	(107, NULL, 100, 'main', 'OnBeforeLangDelete', 'iblock', '', 'CIBlock', 'OnBeforeLangDelete', '', 1, '46aef774958db327c1170a12d3a70ee5'),
	(108, NULL, 100, 'main', 'OnLangDelete', 'iblock', '', 'CIBlock', 'OnLangDelete', '', 1, '861f6ee2ca56bf63c3af07db0553606b'),
	(109, NULL, 100, 'main', 'OnUserTypeRightsCheck', 'iblock', '', 'CIBlockSection', 'UserTypeRightsCheck', '', 1, '2a6d446893d46f04f2c151f458d2908c'),
	(110, NULL, 100, 'search', 'OnReindex', 'iblock', '', 'CIBlock', 'OnSearchReindex', '', 1, 'c6c8111f129e0eb19e558106e354e6f6'),
	(111, NULL, 100, 'search', 'OnSearchGetURL', 'iblock', '', 'CIBlock', 'OnSearchGetURL', '', 1, '0ae9fc756bfb1273309240cd8f535672'),
	(112, NULL, 100, 'main', 'OnEventLogGetAuditTypes', 'iblock', '', 'CIBlock', 'GetAuditTypes', '', 1, '182d19c163e3a5a965bca170c3fb0e83'),
	(113, NULL, 100, 'main', 'OnEventLogGetAuditHandlers', 'iblock', '', 'CEventIBlock', 'MakeIBlockObject', '', 1, 'f7a182e8d9b204970d111e4703b9f523'),
	(114, NULL, 200, 'main', 'OnGetRatingContentOwner', 'iblock', '', 'CRatingsComponentsIBlock', 'OnGetRatingContentOwner', '', 1, '6da245944e376d586a3fa2aaee02c70b'),
	(115, NULL, 100, 'main', 'OnTaskOperationsChanged', 'iblock', '', 'CIBlockRightsStorage', 'OnTaskOperationsChanged', '', 1, '01b3f9984fa07b1dfb4bc35d107d5672'),
	(116, NULL, 100, 'main', 'OnGroupDelete', 'iblock', '', 'CIBlockRightsStorage', 'OnGroupDelete', '', 1, '2dbbccdee3f2e7bd86446bec02be1d54'),
	(117, NULL, 100, 'main', 'OnUserDelete', 'iblock', '', 'CIBlockRightsStorage', 'OnUserDelete', '', 1, '78f090ee29030c54788098b0782d28f9'),
	(118, NULL, 100, 'perfmon', 'OnGetTableSchema', 'iblock', '', 'iblock', 'OnGetTableSchema', '', 1, '4b71a345c136beed338aa7137943d80b'),
	(119, NULL, 100, 'sender', 'OnConnectorList', 'iblock', '', '\\Bitrix\\Iblock\\SenderEventHandler', 'onConnectorListIblock', '', 1, '3de75587a47352dd3cb6d10866f69385'),
	(120, NULL, 10, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyDate', 'GetUserTypeDescription', '', 1, 'fa608e2c397b6793c54ad296619a22e2'),
	(121, NULL, 20, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyDateTime', 'GetUserTypeDescription', '', 1, '78554c9e3c38ac383d51f0ee4d013120'),
	(122, NULL, 30, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyXmlID', 'GetUserTypeDescription', '', 1, '952fe5f2ea67493fb9f9b924ce1b992b'),
	(123, NULL, 40, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyFileMan', 'GetUserTypeDescription', '', 1, 'fd688441d5e8203751fb47374931e011'),
	(124, NULL, 50, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyHTML', 'GetUserTypeDescription', '', 1, '27645f81ce5d6d9f19a47cc171860beb'),
	(125, NULL, 60, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyElementList', 'GetUserTypeDescription', '', 1, 'c53e9314ae43c30267b32310a02d7df4'),
	(126, NULL, 70, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertySequence', 'GetUserTypeDescription', '', 1, '3ff9528d1264fc77697248957aafdab5'),
	(127, NULL, 80, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyElementAutoComplete', 'GetUserTypeDescription', '', 1, '0d233a1e7a0d6a52a52e13df88291024'),
	(128, NULL, 90, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertySKU', 'GetUserTypeDescription', '', 1, '8678bc826ced4f66640fba3775b18516'),
	(129, NULL, 100, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertySectionAutoComplete', 'GetUserTypeDescription', '', 1, '26ff6f651cb94a1fe4ce9827566f0730'),
	(130, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'landing', '', '\\Bitrix\\Landing\\Publicaction', 'restBase', '', 2, '9af99ddecf2dd8c3c5b14721f23e8fef'),
	(131, NULL, 100, 'rest', 'onBeforeApplicationUninstall', 'landing', '', '\\Bitrix\\Landing\\Publicaction', 'beforeRestApplicationDelete', '', 2, 'ef1f080a088ad54298a4ba9bf2896313'),
	(132, NULL, 100, 'rest', 'OnRestAppDelete', 'landing', '', '\\Bitrix\\Landing\\Publicaction', 'restApplicationDelete', '', 2, '031cfc016e3be91368376a391c351dea'),
	(133, NULL, 100, 'main', 'OnBeforeSiteDelete', 'landing', '', '\\Bitrix\\Landing\\Site', 'onBeforeMainSiteDelete', '', 2, '5faa9b5de931dbb101e2e0aef6fc594b'),
	(134, NULL, 100, 'main', 'OnSiteDelete', 'landing', '', '\\Bitrix\\Landing\\Site', 'onMainSiteDelete', '', 2, 'af029bceca7ea9cc809515e95bd3a710'),
	(135, NULL, 100, 'bitrix24', 'OnDomainChange', 'landing', '', '\\Bitrix\\Landing\\Update\\Block\\NodeAttributes', 'updateFormDomain', '', 2, 'a5f1ac2c31163115813298acc7bbffcf'),
	(136, NULL, 100, 'socialservices', '\\Bitrix\\Socialservices\\ApTable::OnAfterAdd', 'landing', '', '\\Bitrix\\Landing\\Update\\Block\\NodeAttributes', 'updateFormDomainByConnector', '', 2, '0152997776462d358b5364b794cd205e'),
	(137, NULL, 100, 'main', 'OnAfterEpilog', 'messageservice', '', '\\Bitrix\\MessageService\\Queue', 'run', '', 1, '6bcb21b0ccc5ac89d9531ddf8b94683c'),
	(138, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'messageservice', '', '\\Bitrix\\MessageService\\RestService', 'onRestServiceBuildDescription', '', 1, '7524628243223e572590eea87cc03f73'),
	(139, NULL, 100, 'rest', 'OnRestAppDelete', 'messageservice', '', '\\Bitrix\\MessageService\\RestService', 'onRestAppDelete', '', 1, '5febc41cd526ecba95dbb4843dd9c134'),
	(140, NULL, 100, 'rest', 'OnRestAppUpdate', 'messageservice', '', '\\Bitrix\\MessageService\\RestService', 'onRestAppUpdate', '', 1, '7e77b4d550c200a4ec06872af7857ee6'),
	(141, NULL, 100, 'perfmon', 'OnGetTableSchema', 'perfmon', '', 'perfmon', 'OnGetTableSchema', '', 1, '3a4da255b44f05899b64e66a40c12662'),
	(142, NULL, 49, 'main', 'OnBeforeProlog', 'rest', '', 'CRestEventHandlers', 'OnBeforeProlog', '', 2, '395c9c42c3cc9392de1e5887617afe6d'),
	(143, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'rest', '', 'CBitrixRestEntity', 'OnRestServiceBuildDescription', '', 2, 'f63068b1eb62c36219518206e1e2827c'),
	(144, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'rest', '', '\\Bitrix\\Rest\\Api\\User', 'onRestServiceBuildDescription', '', 2, 'c9a03e9019564649e55f5409b661e050'),
	(145, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'rest', '', '\\Bitrix\\Rest\\Api\\Placement', 'onRestServiceBuildDescription', '', 2, '9751a266c2b6f6be5c34b1541bf7c194'),
	(146, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'rest', '', '\\Bitrix\\Rest\\Api\\Event', 'onRestServiceBuildDescription', '', 2, '842ad63f19aff6d810059c7e56739aae'),
	(147, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'rest', '', '\\Bitrix\\Rest\\Api\\UserFieldType', 'onRestServiceBuildDescription', '', 2, '4caf68a5256aabe4abef37f24562e59b'),
	(148, NULL, 100, 'rest', 'onFindMethodDescription', 'rest', '', '\\Bitrix\\Rest\\Engine\\RestManager', 'onFindMethodDescription', '', 2, '4d0614f880674af333326dd5ba9b2828'),
	(149, NULL, 100, 'main', 'OnApplicationsBuildList', 'main', 'modules/rest/lib/apauth/application.php', '\\Bitrix\\Rest\\APAuth\\Application', 'onApplicationsBuildList', '', 2, '9c39129872987f8dcc8baacc0c446ed7'),
	(150, NULL, 100, 'im', 'OnAfterConfirmNotify', 'rest', '', '\\Bitrix\\Rest\\NotifyIm', 'receive', '', 2, '2ac9c19fe69d4e106deaa6f4a7a4371b'),
	(151, NULL, 100, 'rest', '\\Bitrix\\Rest\\APAuth\\Password::OnDelete', 'rest', '', '\\Bitrix\\Rest\\APAuth\\PermissionTable', 'onPasswordDelete', '', 2, 'f04447ca635f045ec1a64e593964fc90'),
	(152, NULL, 100, 'perfmon', 'OnGetTableSchema', 'rest', '', 'rest', 'OnGetTableSchema', '', 2, '47a76003c8f9f2d8c820f446e084ff39'),
	(153, NULL, 100, 'rest', 'onRestCheckAuth', 'rest', '', '\\Bitrix\\Rest\\OAuth\\Auth', 'onRestCheckAuth', '', 2, '70e923729089b8cba69bb3b4311da11e'),
	(154, NULL, 100, 'rest', 'onRestCheckAuth', 'rest', '', '\\Bitrix\\Rest\\APAuth\\Auth', 'onRestCheckAuth', '', 2, '3550e6c95772564101770e0c9cb54470'),
	(155, NULL, 100, 'rest', 'onRestCheckAuth', 'rest', '', '\\Bitrix\\Rest\\SessionAuth\\Auth', 'onRestCheckAuth', '', 2, '8e33ae5a47b59d21df7d26f916d19e38'),
	(156, NULL, 100, 'main', 'OnChangePermissions', 'search', '', 'CSearch', 'OnChangeFilePermissions', '', 1, '1c37aedc2ec89f94624291d097fe7adf'),
	(157, NULL, 100, 'main', 'OnChangeFile', 'search', '', 'CSearch', 'OnChangeFile', '', 1, 'd51170fc3433fde7eab8edc1c2b933a0'),
	(158, NULL, 100, 'main', 'OnGroupDelete', 'search', '', 'CSearch', 'OnGroupDelete', '', 1, '05382d7448b1ba259b89bf9e87e4eb44'),
	(159, NULL, 100, 'main', 'OnLangDelete', 'search', '', 'CSearch', 'OnLangDelete', '', 1, '15ebda82514af5a966b3466cd26992a4'),
	(160, NULL, 100, 'main', 'OnAfterUserUpdate', 'search', '', 'CSearchUser', 'OnAfterUserUpdate', '', 1, '9e0cea5039973193afc706ec8978d674'),
	(161, NULL, 100, 'main', 'OnUserDelete', 'search', '', 'CSearchUser', 'DeleteByUserID', '', 1, '524a910f381ba144bf50caa152222ed6'),
	(162, NULL, 100, 'cluster', 'OnGetTableList', 'search', '', 'search', 'OnGetTableList', '', 1, 'a40ffd36df151e2c0294b5639e81d665'),
	(163, NULL, 100, 'perfmon', 'OnGetTableSchema', 'search', '', 'search', 'OnGetTableSchema', '', 1, '9c8df2577e0cb80c68afa2030e193efb'),
	(164, NULL, 90, 'main', 'OnEpilog', 'search', '', 'CSearchStatistic', 'OnEpilog', '', 1, '6b3591ad78ac2a3ce6ad411f0aff47fe'),
	(165, NULL, 100, 'main', 'OnPanelCreate', 'seo', '', 'CSeoEventHandlers', 'SeoOnPanelCreate', '', 2, '79688b0b4a106b805d09e63ffe88f580'),
	(166, NULL, 100, 'fileman', 'OnIncludeHTMLEditorScript', 'seo', '', 'CSeoEventHandlers', 'OnIncludeHTMLEditorScript', '', 2, '7995eac5813e40f6b3e82b146631397e'),
	(167, NULL, 100, 'fileman', 'OnBeforeHTMLEditorScriptRuns', 'seo', '', 'CSeoEventHandlers', 'OnBeforeHTMLEditorScriptRuns', '', 2, '313b34609f1fa34d34cde1c2103c09ff'),
	(168, NULL, 100, 'iblock', 'OnAfterIBlockSectionAdd', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'addSection', '', 2, 'c61de21b0b0873525fa5c39427324664'),
	(169, NULL, 100, 'iblock', 'OnAfterIBlockElementAdd', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'addElement', '', 2, '1b167ab85d6d744bba456e559546f13e'),
	(170, NULL, 100, 'iblock', 'OnBeforeIBlockSectionDelete', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'beforeDeleteSection', '', 2, '148ce014df9dd9f99f17ebfc5d766e8a'),
	(171, NULL, 100, 'iblock', 'OnBeforeIBlockElementDelete', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'beforeDeleteElement', '', 2, '4b1e9896d9f0aa37a7039a321f25f9a5'),
	(172, NULL, 100, 'iblock', 'OnAfterIBlockSectionDelete', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'deleteSection', '', 2, 'b699c1c0d6665f9cffe7ff76ab108a24'),
	(173, NULL, 100, 'iblock', 'OnAfterIBlockElementDelete', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'deleteElement', '', 2, 'ff3a36654015c53890f4cf2204b030c4'),
	(174, NULL, 100, 'iblock', 'OnBeforeIBlockSectionUpdate', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'beforeUpdateSection', '', 2, 'aa5f8c360ed88eb5e2884c57b6f1f2f3'),
	(175, NULL, 100, 'iblock', 'OnBeforeIBlockElementUpdate', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'beforeUpdateElement', '', 2, 'a1022e0619263c0e91139fb3f9837085'),
	(176, NULL, 100, 'iblock', 'OnAfterIBlockSectionUpdate', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'updateSection', '', 2, '27930cffcd40b84666d0a22e1a953c41'),
	(177, NULL, 100, 'iblock', 'OnAfterIBlockElementUpdate', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'updateElement', '', 2, 'f0151e07363564774d45acba4100aebe'),
	(178, NULL, 100, 'forum', 'onAfterTopicAdd', 'seo', '', '\\Bitrix\\Seo\\SitemapForum', 'addTopic', '', 2, 'd4d54756116942c9ee0bda9b31e9d0e7'),
	(179, NULL, 100, 'forum', 'onAfterTopicUpdate', 'seo', '', '\\Bitrix\\Seo\\SitemapForum', 'updateTopic', '', 2, '3e0a8569016a4c941f3eb4aa9fca6e8b'),
	(180, NULL, 100, 'forum', 'onAfterTopicDelete', 'seo', '', '\\Bitrix\\Seo\\SitemapForum', 'deleteTopic', '', 2, '7f4379c818231561b41589d3de41e36b'),
	(181, NULL, 100, 'main', 'OnAdminIBlockElementEdit', 'seo', '', '\\Bitrix\\Seo\\AdvTabEngine', 'eventHandler', '', 2, 'c894d167ef03c35375b8eb8f2551a798'),
	(182, NULL, 100, 'main', 'OnBeforeProlog', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'checkSession', '', 2, '5fdf8dd9fd70719e442efcb589175bf0'),
	(183, NULL, 100, 'sale', 'OnOrderSave', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onOrderSave', '', 2, '07d4ab0b1aa0aa130a0cbc06403f6eae'),
	(184, NULL, 100, 'sale', 'OnBasketOrder', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onBasketOrder', '', 2, 'cf6298b090e92e955b32c358c1d14b25'),
	(185, NULL, 100, 'sale', 'onSalePayOrder', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onSalePayOrder', '', 2, '745afed820778e33d5cd3e91cbd622f1'),
	(186, NULL, 100, 'sale', 'onSaleDeductOrder', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onSaleDeductOrder', '', 2, '12861bd5c6c27ffa2abe5cac90ea58d8'),
	(187, NULL, 100, 'sale', 'onSaleDeliveryOrder', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onSaleDeliveryOrder', '', 2, 'ead8fb64fece572d1fabd3d6fd27af27'),
	(188, NULL, 100, 'sale', 'onSaleStatusOrder', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onSaleStatusOrder', '', 2, 'b7b9ac4bbf458d433e1cf3835ff4cb6c'),
	(189, NULL, 100, 'conversion', 'OnSetDayContextAttributes', 'seo', '', '\\Bitrix\\Seo\\ConversionHandler', 'onSetDayContextAttributes', '', 2, 'c19eb7659342fabc34b953f69e8b9eee'),
	(190, NULL, 100, 'conversion', 'OnGetAttributeTypes', 'seo', '', '\\Bitrix\\Seo\\ConversionHandler', 'onGetAttributeTypes', '', 2, '379294eefad289e474bf0c5ce2a281d8'),
	(191, NULL, 100, 'catalog', 'OnProductUpdate', 'seo', '', '\\Bitrix\\Seo\\Adv\\Auto', 'checkQuantity', '', 2, '0f4deda4d57adb4389d85a19e5bbcf2b'),
	(192, NULL, 100, 'catalog', 'OnProductSetAvailableUpdate', 'seo', '', '\\Bitrix\\Seo\\Adv\\Auto', 'checkQuantity', '', 2, '3d040ae51f0f6a4b2a08be0e6e1494d4'),
	(193, NULL, 100, 'main', 'OnUserDelete', 'socialservices', '', 'CSocServAuthDB', 'OnUserDelete', '', 1, '1f5b8fc024dfdf83952d6c723466cdf5'),
	(194, NULL, 100, 'timeman', 'OnAfterTMReportDailyAdd', 'socialservices', '', 'CSocServAuthDB', 'OnAfterTMReportDailyAdd', '', 1, 'a16159f6a90f1b67cb9ec15b0c1bab3a'),
	(195, NULL, 100, 'timeman', 'OnAfterTMDayStart', 'socialservices', '', 'CSocServAuthDB', 'OnAfterTMDayStart', '', 1, '9567feb38890d6581a3204dc5e65e8b6'),
	(196, NULL, 100, 'timeman', 'OnTimeManShow', 'socialservices', '', 'CSocServEventHandlers', 'OnTimeManShow', '', 1, 'b728f3cea11d374f7638c29f84e8e15e'),
	(197, NULL, 100, 'main', 'OnFindExternalUser', 'socialservices', '', 'CSocServAuthDB', 'OnFindExternalUser', '', 1, '1ab251d15efc87c5b5cfe6396f5dec1b'),
	(198, NULL, 100, 'socialservices', 'OnFindSocialservicesUser', 'socialservices', '', 'CSocServAuthManager', 'checkOldUser', '', 1, 'c3d7460e4ef694f5bc53b6a6ad902407'),
	(199, NULL, 100, 'socialservices', 'OnFindSocialservicesUser', 'socialservices', '', 'CSocServAuthManager', 'checkAbandonedUser', '', 1, '331f99f0b265544c33777c299eab16f6'),
	(200, NULL, 100, 'main', 'OnPanelCreate', 'translate', '', 'CTranslateEventHandlers', 'TranslatOnPanelCreate', '', 1, '38070e5e7a0aa6ff4876ffc7f3feb94b');
/*!40000 ALTER TABLE `b_module_to_module` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_numerator
DROP TABLE IF EXISTS `b_numerator`;
CREATE TABLE IF NOT EXISTS `b_numerator` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `CREATED_AT` datetime DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `UPDATED_BY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_numerator: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_numerator` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_numerator` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_numerator_sequence
DROP TABLE IF EXISTS `b_numerator_sequence`;
CREATE TABLE IF NOT EXISTS `b_numerator_sequence` (
  `NUMERATOR_ID` int(11) NOT NULL DEFAULT '0',
  `KEY` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `TEXT_KEY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NEXT_NUMBER` int(11) DEFAULT NULL,
  `LAST_INVOCATION_TIME` int(11) DEFAULT NULL,
  PRIMARY KEY (`NUMERATOR_ID`,`KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_numerator_sequence: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_numerator_sequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_numerator_sequence` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_operation
DROP TABLE IF EXISTS `b_operation`;
CREATE TABLE IF NOT EXISTS `b_operation` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BINDING` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'module',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_operation: ~94 rows (приблизительно)
/*!40000 ALTER TABLE `b_operation` DISABLE KEYS */;
REPLACE INTO `b_operation` (`ID`, `NAME`, `MODULE_ID`, `DESCRIPTION`, `BINDING`) VALUES
	(1, 'edit_php', 'main', NULL, 'module'),
	(2, 'view_own_profile', 'main', NULL, 'module'),
	(3, 'edit_own_profile', 'main', NULL, 'module'),
	(4, 'view_all_users', 'main', NULL, 'module'),
	(5, 'view_groups', 'main', NULL, 'module'),
	(6, 'view_tasks', 'main', NULL, 'module'),
	(7, 'view_other_settings', 'main', NULL, 'module'),
	(8, 'view_subordinate_users', 'main', NULL, 'module'),
	(9, 'edit_subordinate_users', 'main', NULL, 'module'),
	(10, 'edit_all_users', 'main', NULL, 'module'),
	(11, 'edit_groups', 'main', NULL, 'module'),
	(12, 'edit_tasks', 'main', NULL, 'module'),
	(13, 'edit_other_settings', 'main', NULL, 'module'),
	(14, 'cache_control', 'main', NULL, 'module'),
	(15, 'lpa_template_edit', 'main', NULL, 'module'),
	(16, 'view_event_log', 'main', NULL, 'module'),
	(17, 'edit_ratings', 'main', NULL, 'module'),
	(18, 'manage_short_uri', 'main', NULL, 'module'),
	(19, 'fm_view_permission', 'main', NULL, 'file'),
	(20, 'fm_view_file', 'main', NULL, 'file'),
	(21, 'fm_view_listing', 'main', NULL, 'file'),
	(22, 'fm_edit_existent_folder', 'main', NULL, 'file'),
	(23, 'fm_create_new_file', 'main', NULL, 'file'),
	(24, 'fm_edit_existent_file', 'main', NULL, 'file'),
	(25, 'fm_create_new_folder', 'main', NULL, 'file'),
	(26, 'fm_delete_file', 'main', NULL, 'file'),
	(27, 'fm_delete_folder', 'main', NULL, 'file'),
	(28, 'fm_edit_in_workflow', 'main', NULL, 'file'),
	(29, 'fm_rename_file', 'main', NULL, 'file'),
	(30, 'fm_rename_folder', 'main', NULL, 'file'),
	(31, 'fm_upload_file', 'main', NULL, 'file'),
	(32, 'fm_add_to_menu', 'main', NULL, 'file'),
	(33, 'fm_download_file', 'main', NULL, 'file'),
	(34, 'fm_lpa', 'main', NULL, 'file'),
	(35, 'fm_edit_permission', 'main', NULL, 'file'),
	(36, 'bitrixcloud_monitoring', 'bitrixcloud', NULL, 'module'),
	(37, 'bitrixcloud_backup', 'bitrixcloud', NULL, 'module'),
	(38, 'bitrixcloud_cdn', 'bitrixcloud', NULL, 'module'),
	(39, 'clouds_browse', 'clouds', NULL, 'module'),
	(40, 'clouds_upload', 'clouds', NULL, 'module'),
	(41, 'clouds_config', 'clouds', NULL, 'module'),
	(42, 'fileman_view_all_settings', 'fileman', '', 'module'),
	(43, 'fileman_edit_menu_types', 'fileman', '', 'module'),
	(44, 'fileman_add_element_to_menu', 'fileman', '', 'module'),
	(45, 'fileman_edit_menu_elements', 'fileman', '', 'module'),
	(46, 'fileman_edit_existent_files', 'fileman', '', 'module'),
	(47, 'fileman_edit_existent_folders', 'fileman', '', 'module'),
	(48, 'fileman_admin_files', 'fileman', '', 'module'),
	(49, 'fileman_admin_folders', 'fileman', '', 'module'),
	(50, 'fileman_view_permissions', 'fileman', '', 'module'),
	(51, 'fileman_edit_all_settings', 'fileman', '', 'module'),
	(52, 'fileman_upload_files', 'fileman', '', 'module'),
	(53, 'fileman_view_file_structure', 'fileman', '', 'module'),
	(54, 'fileman_install_control', 'fileman', '', 'module'),
	(55, 'medialib_view_collection', 'fileman', '', 'medialib'),
	(56, 'medialib_new_collection', 'fileman', '', 'medialib'),
	(57, 'medialib_edit_collection', 'fileman', '', 'medialib'),
	(58, 'medialib_del_collection', 'fileman', '', 'medialib'),
	(59, 'medialib_access', 'fileman', '', 'medialib'),
	(60, 'medialib_new_item', 'fileman', '', 'medialib'),
	(61, 'medialib_edit_item', 'fileman', '', 'medialib'),
	(62, 'medialib_del_item', 'fileman', '', 'medialib'),
	(63, 'sticker_view', 'fileman', '', 'stickers'),
	(64, 'sticker_edit', 'fileman', '', 'stickers'),
	(65, 'sticker_new', 'fileman', '', 'stickers'),
	(66, 'sticker_del', 'fileman', '', 'stickers'),
	(67, 'hl_element_read', 'highloadblock', NULL, 'module'),
	(68, 'hl_element_write', 'highloadblock', NULL, 'module'),
	(69, 'hl_element_delete', 'highloadblock', NULL, 'module'),
	(70, 'section_read', 'iblock', NULL, 'iblock'),
	(71, 'element_read', 'iblock', NULL, 'iblock'),
	(72, 'section_element_bind', 'iblock', NULL, 'iblock'),
	(73, 'iblock_admin_display', 'iblock', NULL, 'iblock'),
	(74, 'element_edit', 'iblock', NULL, 'iblock'),
	(75, 'element_edit_price', 'iblock', NULL, 'iblock'),
	(76, 'element_delete', 'iblock', NULL, 'iblock'),
	(77, 'element_bizproc_start', 'iblock', NULL, 'iblock'),
	(78, 'section_edit', 'iblock', NULL, 'iblock'),
	(79, 'section_delete', 'iblock', NULL, 'iblock'),
	(80, 'section_section_bind', 'iblock', NULL, 'iblock'),
	(81, 'element_edit_any_wf_status', 'iblock', NULL, 'iblock'),
	(82, 'iblock_edit', 'iblock', NULL, 'iblock'),
	(83, 'iblock_delete', 'iblock', NULL, 'iblock'),
	(84, 'iblock_rights_edit', 'iblock', NULL, 'iblock'),
	(85, 'iblock_export', 'iblock', NULL, 'iblock'),
	(86, 'section_rights_edit', 'iblock', NULL, 'iblock'),
	(87, 'element_rights_edit', 'iblock', NULL, 'iblock'),
	(88, 'landing_read', 'landing', NULL, 'module'),
	(89, 'landing_edit', 'landing', NULL, 'module'),
	(90, 'landing_sett', 'landing', NULL, 'module'),
	(91, 'landing_public', 'landing', NULL, 'module'),
	(92, 'landing_delete', 'landing', NULL, 'module'),
	(93, 'seo_settings', 'seo', '', 'module'),
	(94, 'seo_tools', 'seo', '', 'module');
/*!40000 ALTER TABLE `b_operation` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_option
DROP TABLE IF EXISTS `b_option`;
CREATE TABLE IF NOT EXISTS `b_option` (
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MODULE_ID`,`NAME`),
  KEY `ix_option_name` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_option: ~57 rows (приблизительно)
/*!40000 ALTER TABLE `b_option` DISABLE KEYS */;
REPLACE INTO `b_option` (`MODULE_ID`, `NAME`, `VALUE`, `DESCRIPTION`, `SITE_ID`) VALUES
	('fileman', 'stickers_use_hotkeys', 'N', NULL, NULL),
	('fileman', 'use_editor_3', 'Y', NULL, NULL),
	('landing', 'block_vendor_bitrix', 'https://repo.bitrix24.site/rest/1/w1uqy3swvyp50bso/', NULL, NULL),
	('landing', 'disabled_namespaces', 'bitrix', NULL, NULL),
	('landing', 'pub_path_s1', '/lp/', NULL, NULL),
	('main', '~crypto_b_user_phone_auth', 'a:1:{s:10:"OTP_SECRET";b:1;}', NULL, NULL),
	('main', '~ft_b_user_index', 'a:3:{s:19:"SEARCH_USER_CONTENT";b:1;s:25:"SEARCH_DEPARTMENT_CONTENT";b:1;s:20:"SEARCH_ADMIN_CONTENT";b:1;}', NULL, NULL),
	('main', '~ft_b_user_index_selector', 'a:1:{s:23:"SEARCH_SELECTOR_CONTENT";b:1;}', NULL, NULL),
	('main', '~new_license11_sign', 'Y', NULL, NULL),
	('main', '~new_license18_0_sign', 'Y', NULL, NULL),
	('main', '~update_autocheck_result', 'a:3:{s:10:"check_date";i:0;s:6:"result";b:0;s:5:"error";s:56:"[LICENSE_NOT_FOUND] Лицензия не найдена";}', NULL, NULL),
	('main', 'admin_lid', 'ru', NULL, NULL),
	('main', 'admin_passwordh', 'FVoQeWYUBgUtCUVcBxcBCgsTAQ==', NULL, NULL),
	('main', 'distributive6', 'Y', NULL, NULL),
	('main', 'email_from', 'music.dll@mail.ru', NULL, NULL),
	('main', 'GROUP_DEFAULT_TASK', '1', NULL, NULL),
	('main', 'optimize_css_files', 'Y', NULL, NULL),
	('main', 'optimize_js_files', 'Y', NULL, NULL),
	('main', 'PARAM_MAX_SITES', '2', NULL, NULL),
	('main', 'PARAM_MAX_USERS', '0', NULL, NULL),
	('main', 'rating_assign_authority_group', '4', NULL, NULL),
	('main', 'rating_assign_authority_group_add', '2', NULL, NULL),
	('main', 'rating_assign_authority_group_delete', '2', NULL, NULL),
	('main', 'rating_assign_rating_group', '3', NULL, NULL),
	('main', 'rating_assign_rating_group_add', '1', NULL, NULL),
	('main', 'rating_assign_rating_group_delete', '1', NULL, NULL),
	('main', 'rating_assign_type', 'auto', NULL, NULL),
	('main', 'rating_authority_rating', '2', NULL, NULL),
	('main', 'rating_authority_weight_formula', 'Y', NULL, NULL),
	('main', 'rating_community_authority', '30', NULL, NULL),
	('main', 'rating_community_last_visit', '90', NULL, NULL),
	('main', 'rating_community_size', '1', NULL, NULL),
	('main', 'rating_count_vote', '10', NULL, NULL),
	('main', 'rating_normalization', '10', NULL, NULL),
	('main', 'rating_normalization_type', 'auto', NULL, NULL),
	('main', 'rating_self_vote', 'Y', NULL, NULL),
	('main', 'rating_start_authority', '3', NULL, NULL),
	('main', 'rating_text_like_d', 'Это нравится', NULL, NULL),
	('main', 'rating_text_like_n', 'Не нравится', NULL, NULL),
	('main', 'rating_text_like_y', 'Нравится', NULL, NULL),
	('main', 'rating_vote_show', 'Y', NULL, NULL),
	('main', 'rating_vote_template', 'like', NULL, NULL),
	('main', 'rating_vote_type', 'like', NULL, NULL),
	('main', 'rating_vote_weight', '10', NULL, NULL),
	('main', 'server_uniq_id', '606881bb14552ba84174f0d84c3c06f6', NULL, NULL),
	('main', 'signer_default_key', 'ea2636f4acd1798c80001ecab289225d97e1b38eca1dd1d846796276a9828a556d067b748a320f377d3859b131eb8b9c43e2fa2b4f3e3ccbe0c8b2607c5228b7', NULL, NULL),
	('main', 'site_checker_success', NULL, NULL, NULL),
	('main', 'update_site', 'www.bitrixsoft.com', NULL, NULL),
	('main', 'update_site_ns', 'Y', NULL, NULL),
	('main', 'update_system_check', '28.12.2019 12:30:26', NULL, NULL),
	('main', 'vendor', '1c_bitrix', NULL, NULL),
	('messageservice', 'clean_up_period', '14', NULL, NULL),
	('rest', 'entity_iblock_type', 'rest_entity', NULL, NULL),
	('rest', 'server_path', '/rest', NULL, NULL),
	('search', 'dbnode_id', 'N', NULL, NULL),
	('search', 'dbnode_status', 'ok', NULL, NULL),
	('search', 'version', 'v2.0', NULL, NULL);
/*!40000 ALTER TABLE `b_option` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_option_site
DROP TABLE IF EXISTS `b_option_site`;
CREATE TABLE IF NOT EXISTS `b_option_site` (
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`MODULE_ID`,`NAME`,`SITE_ID`),
  KEY `ix_option_site_module_site` (`MODULE_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_option_site: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_option_site` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_option_site` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_perf_cache
DROP TABLE IF EXISTS `b_perf_cache`;
CREATE TABLE IF NOT EXISTS `b_perf_cache` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HIT_ID` int(18) DEFAULT NULL,
  `COMPONENT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `CACHE_SIZE` float DEFAULT NULL,
  `OP_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODULE_NAME` text COLLATE utf8_unicode_ci,
  `COMPONENT_NAME` text COLLATE utf8_unicode_ci,
  `BASE_DIR` text COLLATE utf8_unicode_ci,
  `INIT_DIR` text COLLATE utf8_unicode_ci,
  `FILE_NAME` text COLLATE utf8_unicode_ci,
  `FILE_PATH` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_PERF_CACHE_0` (`HIT_ID`,`NN`),
  KEY `IX_B_PERF_CACHE_1` (`COMPONENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_perf_cache: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_perf_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_cache` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_perf_cluster
DROP TABLE IF EXISTS `b_perf_cluster`;
CREATE TABLE IF NOT EXISTS `b_perf_cluster` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `THREADS` int(11) DEFAULT NULL,
  `HITS` int(11) DEFAULT NULL,
  `ERRORS` int(11) DEFAULT NULL,
  `PAGES_PER_SECOND` float DEFAULT NULL,
  `PAGE_EXEC_TIME` float DEFAULT NULL,
  `PAGE_RESP_TIME` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_perf_cluster: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_perf_cluster` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_cluster` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_perf_component
DROP TABLE IF EXISTS `b_perf_component`;
CREATE TABLE IF NOT EXISTS `b_perf_component` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HIT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `CACHE_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CACHE_SIZE` int(11) DEFAULT NULL,
  `CACHE_COUNT_R` int(11) DEFAULT NULL,
  `CACHE_COUNT_W` int(11) DEFAULT NULL,
  `CACHE_COUNT_C` int(11) DEFAULT NULL,
  `COMPONENT_TIME` float DEFAULT NULL,
  `QUERIES` int(11) DEFAULT NULL,
  `QUERIES_TIME` float DEFAULT NULL,
  `COMPONENT_NAME` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_PERF_COMPONENT_0` (`HIT_ID`,`NN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_perf_component: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_perf_component` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_component` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_perf_error
DROP TABLE IF EXISTS `b_perf_error`;
CREATE TABLE IF NOT EXISTS `b_perf_error` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HIT_ID` int(18) DEFAULT NULL,
  `ERRNO` int(18) DEFAULT NULL,
  `ERRSTR` text COLLATE utf8_unicode_ci,
  `ERRFILE` text COLLATE utf8_unicode_ci,
  `ERRLINE` int(18) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_PERF_ERROR_0` (`HIT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_perf_error: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_perf_error` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_error` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_perf_history
DROP TABLE IF EXISTS `b_perf_history`;
CREATE TABLE IF NOT EXISTS `b_perf_history` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `TOTAL_MARK` float DEFAULT NULL,
  `ACCELERATOR_ENABLED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_perf_history: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_perf_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_history` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_perf_hit
DROP TABLE IF EXISTS `b_perf_hit`;
CREATE TABLE IF NOT EXISTS `b_perf_hit` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_HIT` datetime DEFAULT NULL,
  `IS_ADMIN` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_METHOD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SERVER_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SERVER_PORT` int(11) DEFAULT NULL,
  `SCRIPT_NAME` text COLLATE utf8_unicode_ci,
  `REQUEST_URI` text COLLATE utf8_unicode_ci,
  `INCLUDED_FILES` int(11) DEFAULT NULL,
  `MEMORY_PEAK_USAGE` int(11) DEFAULT NULL,
  `CACHE_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CACHE_SIZE` int(11) DEFAULT NULL,
  `CACHE_COUNT_R` int(11) DEFAULT NULL,
  `CACHE_COUNT_W` int(11) DEFAULT NULL,
  `CACHE_COUNT_C` int(11) DEFAULT NULL,
  `QUERIES` int(11) DEFAULT NULL,
  `QUERIES_TIME` float DEFAULT NULL,
  `COMPONENTS` int(11) DEFAULT NULL,
  `COMPONENTS_TIME` float DEFAULT NULL,
  `SQL_LOG` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAGE_TIME` float DEFAULT NULL,
  `PROLOG_TIME` float DEFAULT NULL,
  `PROLOG_BEFORE_TIME` float DEFAULT NULL,
  `AGENTS_TIME` float DEFAULT NULL,
  `PROLOG_AFTER_TIME` float DEFAULT NULL,
  `WORK_AREA_TIME` float DEFAULT NULL,
  `EPILOG_TIME` float DEFAULT NULL,
  `EPILOG_BEFORE_TIME` float DEFAULT NULL,
  `EVENTS_TIME` float DEFAULT NULL,
  `EPILOG_AFTER_TIME` float DEFAULT NULL,
  `MENU_RECALC` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_PERF_HIT_0` (`DATE_HIT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_perf_hit: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_perf_hit` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_hit` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_perf_index_ban
DROP TABLE IF EXISTS `b_perf_index_ban`;
CREATE TABLE IF NOT EXISTS `b_perf_index_ban` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BAN_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_perf_index_ban: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_perf_index_ban` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_index_ban` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_perf_index_complete
DROP TABLE IF EXISTS `b_perf_index_complete`;
CREATE TABLE IF NOT EXISTS `b_perf_index_complete` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BANNED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INDEX_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_perf_index_complete_0` (`TABLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_perf_index_complete: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_perf_index_complete` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_index_complete` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_perf_index_suggest
DROP TABLE IF EXISTS `b_perf_index_suggest`;
CREATE TABLE IF NOT EXISTS `b_perf_index_suggest` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SQL_MD5` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SQL_COUNT` int(11) DEFAULT NULL,
  `SQL_TIME` float DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_ALIAS` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SQL_TEXT` text COLLATE utf8_unicode_ci,
  `SQL_EXPLAIN` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `ix_b_perf_index_suggest_0` (`SQL_MD5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_perf_index_suggest: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_perf_index_suggest` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_index_suggest` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_perf_index_suggest_sql
DROP TABLE IF EXISTS `b_perf_index_suggest_sql`;
CREATE TABLE IF NOT EXISTS `b_perf_index_suggest_sql` (
  `SUGGEST_ID` int(11) NOT NULL,
  `SQL_ID` int(11) NOT NULL,
  PRIMARY KEY (`SUGGEST_ID`,`SQL_ID`),
  KEY `ix_b_perf_index_suggest_sql_0` (`SQL_ID`,`SUGGEST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_perf_index_suggest_sql: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_perf_index_suggest_sql` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_index_suggest_sql` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_perf_sql
DROP TABLE IF EXISTS `b_perf_sql`;
CREATE TABLE IF NOT EXISTS `b_perf_sql` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HIT_ID` int(18) DEFAULT NULL,
  `COMPONENT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `QUERY_TIME` float DEFAULT NULL,
  `NODE_ID` int(18) DEFAULT NULL,
  `MODULE_NAME` text COLLATE utf8_unicode_ci,
  `COMPONENT_NAME` text COLLATE utf8_unicode_ci,
  `SQL_TEXT` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_PERF_SQL_0` (`HIT_ID`,`NN`),
  KEY `IX_B_PERF_SQL_1` (`COMPONENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_perf_sql: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_perf_sql` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_sql` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_perf_sql_backtrace
DROP TABLE IF EXISTS `b_perf_sql_backtrace`;
CREATE TABLE IF NOT EXISTS `b_perf_sql_backtrace` (
  `SQL_ID` int(18) NOT NULL,
  `NN` int(18) NOT NULL,
  `FILE_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINE_NO` int(18) DEFAULT NULL,
  `CLASS_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FUNCTION_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`SQL_ID`,`NN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_perf_sql_backtrace: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_perf_sql_backtrace` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_sql_backtrace` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_perf_tab_column_stat
DROP TABLE IF EXISTS `b_perf_tab_column_stat`;
CREATE TABLE IF NOT EXISTS `b_perf_tab_column_stat` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_ROWS` float DEFAULT NULL,
  `COLUMN_ROWS` float DEFAULT NULL,
  `VALUE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_perf_tab_column_stat` (`TABLE_NAME`,`COLUMN_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_perf_tab_column_stat: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_perf_tab_column_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_tab_column_stat` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_perf_tab_stat
DROP TABLE IF EXISTS `b_perf_tab_stat`;
CREATE TABLE IF NOT EXISTS `b_perf_tab_stat` (
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TABLE_SIZE` float DEFAULT NULL,
  `TABLE_ROWS` float DEFAULT NULL,
  PRIMARY KEY (`TABLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_perf_tab_stat: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_perf_tab_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_tab_stat` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_perf_test
DROP TABLE IF EXISTS `b_perf_test`;
CREATE TABLE IF NOT EXISTS `b_perf_test` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `REFERENCE_ID` int(18) DEFAULT NULL,
  `NAME` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_PERF_TEST_0` (`REFERENCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_perf_test: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_perf_test` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_test` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_rating
DROP TABLE IF EXISTS `b_rating`;
CREATE TABLE IF NOT EXISTS `b_rating` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CALCULATION_METHOD` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SUM',
  `CREATED` datetime DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `POSITION` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `AUTHORITY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `CALCULATED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CONFIGS` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_rating: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `b_rating` DISABLE KEYS */;
REPLACE INTO `b_rating` (`ID`, `ACTIVE`, `NAME`, `ENTITY_ID`, `CALCULATION_METHOD`, `CREATED`, `LAST_MODIFIED`, `LAST_CALCULATED`, `POSITION`, `AUTHORITY`, `CALCULATED`, `CONFIGS`) VALUES
	(1, 'N', 'Рейтинг', 'USER', 'SUM', '2019-12-27 14:12:22', NULL, NULL, 'Y', 'N', 'N', 'a:3:{s:4:"MAIN";a:2:{s:4:"VOTE";a:1:{s:4:"USER";a:2:{s:11:"COEFFICIENT";s:1:"1";s:5:"LIMIT";s:2:"30";}}s:6:"RATING";a:1:{s:5:"BONUS";a:2:{s:6:"ACTIVE";s:1:"Y";s:11:"COEFFICIENT";s:1:"1";}}}s:5:"FORUM";a:2:{s:4:"VOTE";a:2:{s:5:"TOPIC";a:3:{s:6:"ACTIVE";s:1:"Y";s:11:"COEFFICIENT";s:3:"0.5";s:5:"LIMIT";s:2:"30";}s:4:"POST";a:3:{s:6:"ACTIVE";s:1:"Y";s:11:"COEFFICIENT";s:3:"0.1";s:5:"LIMIT";s:2:"30";}}s:6:"RATING";a:1:{s:8:"ACTIVITY";a:9:{s:6:"ACTIVE";s:1:"Y";s:16:"TODAY_TOPIC_COEF";s:3:"0.4";s:15:"WEEK_TOPIC_COEF";s:3:"0.2";s:16:"MONTH_TOPIC_COEF";s:3:"0.1";s:14:"ALL_TOPIC_COEF";s:1:"0";s:15:"TODAY_POST_COEF";s:3:"0.2";s:14:"WEEK_POST_COEF";s:3:"0.1";s:15:"MONTH_POST_COEF";s:4:"0.05";s:13:"ALL_POST_COEF";s:1:"0";}}}s:4:"BLOG";a:2:{s:4:"VOTE";a:2:{s:4:"POST";a:3:{s:6:"ACTIVE";s:1:"Y";s:11:"COEFFICIENT";s:3:"0.5";s:5:"LIMIT";s:2:"30";}s:7:"COMMENT";a:3:{s:6:"ACTIVE";s:1:"Y";s:11:"COEFFICIENT";s:3:"0.1";s:5:"LIMIT";s:2:"30";}}s:6:"RATING";a:1:{s:8:"ACTIVITY";a:9:{s:6:"ACTIVE";s:1:"Y";s:15:"TODAY_POST_COEF";s:3:"0.4";s:14:"WEEK_POST_COEF";s:3:"0.2";s:15:"MONTH_POST_COEF";s:3:"0.1";s:13:"ALL_POST_COEF";s:1:"0";s:18:"TODAY_COMMENT_COEF";s:3:"0.2";s:17:"WEEK_COMMENT_COEF";s:3:"0.1";s:18:"MONTH_COMMENT_COEF";s:4:"0.05";s:16:"ALL_COMMENT_COEF";s:1:"0";}}}}'),
	(2, 'N', 'Авторитет', 'USER', 'SUM', '2019-12-27 14:12:22', NULL, NULL, 'Y', 'Y', 'N', 'a:3:{s:4:"MAIN";a:2:{s:4:"VOTE";a:1:{s:4:"USER";a:3:{s:6:"ACTIVE";s:1:"Y";s:11:"COEFFICIENT";s:1:"1";s:5:"LIMIT";s:1:"0";}}s:6:"RATING";a:1:{s:5:"BONUS";a:2:{s:6:"ACTIVE";s:1:"Y";s:11:"COEFFICIENT";s:1:"1";}}}s:5:"FORUM";a:2:{s:4:"VOTE";a:2:{s:5:"TOPIC";a:2:{s:11:"COEFFICIENT";s:1:"1";s:5:"LIMIT";s:2:"30";}s:4:"POST";a:2:{s:11:"COEFFICIENT";s:1:"1";s:5:"LIMIT";s:2:"30";}}s:6:"RATING";a:1:{s:8:"ACTIVITY";a:8:{s:16:"TODAY_TOPIC_COEF";s:2:"20";s:15:"WEEK_TOPIC_COEF";s:2:"10";s:16:"MONTH_TOPIC_COEF";s:1:"5";s:14:"ALL_TOPIC_COEF";s:1:"0";s:15:"TODAY_POST_COEF";s:3:"0.4";s:14:"WEEK_POST_COEF";s:3:"0.2";s:15:"MONTH_POST_COEF";s:3:"0.1";s:13:"ALL_POST_COEF";s:1:"0";}}}s:4:"BLOG";a:2:{s:4:"VOTE";a:2:{s:4:"POST";a:2:{s:11:"COEFFICIENT";s:1:"1";s:5:"LIMIT";s:2:"30";}s:7:"COMMENT";a:2:{s:11:"COEFFICIENT";s:1:"1";s:5:"LIMIT";s:2:"30";}}s:6:"RATING";a:1:{s:8:"ACTIVITY";a:8:{s:15:"TODAY_POST_COEF";s:3:"0.4";s:14:"WEEK_POST_COEF";s:3:"0.2";s:15:"MONTH_POST_COEF";s:3:"0.1";s:13:"ALL_POST_COEF";s:1:"0";s:18:"TODAY_COMMENT_COEF";s:3:"0.2";s:17:"WEEK_COMMENT_COEF";s:3:"0.1";s:18:"MONTH_COMMENT_COEF";s:4:"0.05";s:16:"ALL_COMMENT_COEF";s:1:"0";}}}}');
/*!40000 ALTER TABLE `b_rating` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_rating_component
DROP TABLE IF EXISTS `b_rating_component`;
CREATE TABLE IF NOT EXISTS `b_rating_component` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ENTITY_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `RATING_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `COMPLEX_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CALC_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EXCEPTION_METHOD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `NEXT_CALCULATION` datetime DEFAULT NULL,
  `REFRESH_INTERVAL` int(11) NOT NULL,
  `CONFIG` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `IX_RATING_ID_1` (`RATING_ID`,`ACTIVE`,`NEXT_CALCULATION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_rating_component: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_rating_component` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_component` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_rating_component_results
DROP TABLE IF EXISTS `b_rating_component_results`;
CREATE TABLE IF NOT EXISTS `b_rating_component_results` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `RATING_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `COMPLEX_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CURRENT_VALUE` decimal(18,4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY_TYPE_ID` (`ENTITY_TYPE_ID`),
  KEY `IX_COMPLEX_NAME` (`COMPLEX_NAME`),
  KEY `IX_RATING_ID_2` (`RATING_ID`,`COMPLEX_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_rating_component_results: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_rating_component_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_component_results` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_rating_prepare
DROP TABLE IF EXISTS `b_rating_prepare`;
CREATE TABLE IF NOT EXISTS `b_rating_prepare` (
  `ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_rating_prepare: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_rating_prepare` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_prepare` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_rating_results
DROP TABLE IF EXISTS `b_rating_results`;
CREATE TABLE IF NOT EXISTS `b_rating_results` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `CURRENT_VALUE` decimal(18,4) DEFAULT NULL,
  `PREVIOUS_VALUE` decimal(18,4) DEFAULT NULL,
  `CURRENT_POSITION` int(11) DEFAULT '0',
  `PREVIOUS_POSITION` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `IX_RATING_3` (`RATING_ID`,`ENTITY_TYPE_ID`,`ENTITY_ID`),
  KEY `IX_RATING_4` (`RATING_ID`,`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_rating_results: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_rating_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_results` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_rating_rule
DROP TABLE IF EXISTS `b_rating_rule`;
CREATE TABLE IF NOT EXISTS `b_rating_rule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `NAME` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_MODULE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONDITION_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_CONFIG` text COLLATE utf8_unicode_ci,
  `ACTION_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ACTION_CONFIG` text COLLATE utf8_unicode_ci,
  `ACTIVATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVATE_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVATE_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEACTIVATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DEACTIVATE_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEACTIVATE_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_APPLIED` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_rating_rule: ~5 rows (приблизительно)
/*!40000 ALTER TABLE `b_rating_rule` DISABLE KEYS */;
REPLACE INTO `b_rating_rule` (`ID`, `ACTIVE`, `NAME`, `ENTITY_TYPE_ID`, `CONDITION_NAME`, `CONDITION_MODULE`, `CONDITION_CLASS`, `CONDITION_METHOD`, `CONDITION_CONFIG`, `ACTION_NAME`, `ACTION_CONFIG`, `ACTIVATE`, `ACTIVATE_CLASS`, `ACTIVATE_METHOD`, `DEACTIVATE`, `DEACTIVATE_CLASS`, `DEACTIVATE_METHOD`, `CREATED`, `LAST_MODIFIED`, `LAST_APPLIED`) VALUES
	(1, 'N', 'Добавление в группу пользователей, имеющих право голосовать за рейтинг', 'USER', 'AUTHORITY', NULL, 'CRatingRulesMain', 'ratingCheck', 'a:1:{s:9:"AUTHORITY";a:2:{s:16:"RATING_CONDITION";i:1;s:12:"RATING_VALUE";i:1;}}', 'ADD_TO_GROUP', 'a:1:{s:12:"ADD_TO_GROUP";a:1:{s:8:"GROUP_ID";s:1:"3";}}', 'N', 'CRatingRulesMain', 'addToGroup', 'N', 'CRatingRulesMain ', 'addToGroup', '2019-12-27 14:12:22', '2019-12-27 14:12:22', NULL),
	(2, 'N', 'Удаление из группы пользователей, не имеющих права голосовать за рейтинг', 'USER', 'AUTHORITY', NULL, 'CRatingRulesMain', 'ratingCheck', 'a:1:{s:9:"AUTHORITY";a:2:{s:16:"RATING_CONDITION";i:2;s:12:"RATING_VALUE";i:1;}}', 'REMOVE_FROM_GROUP', 'a:1:{s:17:"REMOVE_FROM_GROUP";a:1:{s:8:"GROUP_ID";s:1:"3";}}', 'N', 'CRatingRulesMain', 'removeFromGroup', 'N', 'CRatingRulesMain ', 'removeFromGroup', '2019-12-27 14:12:22', '2019-12-27 14:12:22', NULL),
	(3, 'N', 'Добавление в группу пользователей, имеющих право голосовать за авторитет', 'USER', 'AUTHORITY', NULL, 'CRatingRulesMain', 'ratingCheck', 'a:1:{s:9:"AUTHORITY";a:2:{s:16:"RATING_CONDITION";i:1;s:12:"RATING_VALUE";i:2;}}', 'ADD_TO_GROUP', 'a:1:{s:12:"ADD_TO_GROUP";a:1:{s:8:"GROUP_ID";s:1:"4";}}', 'N', 'CRatingRulesMain', 'addToGroup', 'N', 'CRatingRulesMain ', 'addToGroup', '2019-12-27 14:12:22', '2019-12-27 14:12:22', NULL),
	(4, 'N', 'Удаление из группы пользователей, не имеющих права голосовать за авторитет', 'USER', 'AUTHORITY', NULL, 'CRatingRulesMain', 'ratingCheck', 'a:1:{s:9:"AUTHORITY";a:2:{s:16:"RATING_CONDITION";i:2;s:12:"RATING_VALUE";i:2;}}', 'REMOVE_FROM_GROUP', 'a:1:{s:17:"REMOVE_FROM_GROUP";a:1:{s:8:"GROUP_ID";s:1:"4";}}', 'N', 'CRatingRulesMain', 'removeFromGroup', 'N', 'CRatingRulesMain ', 'removeFromGroup', '2019-12-27 14:12:22', '2019-12-27 14:12:22', NULL),
	(5, 'Y', 'Автоматическое голосование за авторитет пользователя', 'USER', 'VOTE', NULL, 'CRatingRulesMain', 'voteCheck', 'a:1:{s:4:"VOTE";a:6:{s:10:"VOTE_LIMIT";i:90;s:11:"VOTE_RESULT";i:10;s:16:"VOTE_FORUM_TOPIC";d:0.5;s:15:"VOTE_FORUM_POST";d:0.1;s:14:"VOTE_BLOG_POST";d:0.5;s:17:"VOTE_BLOG_COMMENT";d:0.1;}}', 'empty', 'a:0:{}', 'N', 'empty', 'empty', 'N', 'empty ', 'empty', '2019-12-27 14:12:22', '2019-12-27 14:12:22', NULL);
/*!40000 ALTER TABLE `b_rating_rule` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_rating_rule_vetting
DROP TABLE IF EXISTS `b_rating_rule_vetting`;
CREATE TABLE IF NOT EXISTS `b_rating_rule_vetting` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RULE_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `ACTIVATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `APPLIED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `RULE_ID` (`RULE_ID`,`ENTITY_TYPE_ID`,`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_rating_rule_vetting: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_rating_rule_vetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_rule_vetting` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_rating_user
DROP TABLE IF EXISTS `b_rating_user`;
CREATE TABLE IF NOT EXISTS `b_rating_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `BONUS` decimal(18,4) DEFAULT '0.0000',
  `VOTE_WEIGHT` decimal(18,4) DEFAULT '0.0000',
  `VOTE_COUNT` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RATING_ID` (`RATING_ID`,`ENTITY_ID`),
  KEY `IX_B_RAT_USER_2` (`ENTITY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_rating_user: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `b_rating_user` DISABLE KEYS */;
REPLACE INTO `b_rating_user` (`ID`, `RATING_ID`, `ENTITY_ID`, `BONUS`, `VOTE_WEIGHT`, `VOTE_COUNT`) VALUES
	(1, 2, 1, 3.0000, 30.0000, 13);
/*!40000 ALTER TABLE `b_rating_user` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_rating_vote
DROP TABLE IF EXISTS `b_rating_vote`;
CREATE TABLE IF NOT EXISTS `b_rating_vote` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_VOTING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `VALUE` decimal(18,4) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED` datetime NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `USER_IP` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `REACTION` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_RAT_VOTE_ID` (`RATING_VOTING_ID`,`USER_ID`),
  KEY `IX_RAT_VOTE_ID_2` (`ENTITY_TYPE_ID`,`ENTITY_ID`,`USER_ID`),
  KEY `IX_RAT_VOTE_ID_3` (`OWNER_ID`,`CREATED`),
  KEY `IX_RAT_VOTE_ID_4` (`USER_ID`),
  KEY `IX_RAT_VOTE_ID_5` (`CREATED`,`VALUE`),
  KEY `IX_RAT_VOTE_ID_6` (`ACTIVE`),
  KEY `IX_RAT_VOTE_ID_7` (`RATING_VOTING_ID`,`CREATED`),
  KEY `IX_RAT_VOTE_ID_8` (`ENTITY_TYPE_ID`,`CREATED`),
  KEY `IX_RAT_VOTE_ID_9` (`CREATED`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_rating_vote: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_rating_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_vote` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_rating_vote_group
DROP TABLE IF EXISTS `b_rating_vote_group`;
CREATE TABLE IF NOT EXISTS `b_rating_vote_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GROUP_ID` int(11) NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `RATING_ID` (`GROUP_ID`,`TYPE`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_rating_vote_group: ~6 rows (приблизительно)
/*!40000 ALTER TABLE `b_rating_vote_group` DISABLE KEYS */;
REPLACE INTO `b_rating_vote_group` (`ID`, `GROUP_ID`, `TYPE`) VALUES
	(1, 1, 'R'),
	(2, 3, 'R'),
	(3, 1, 'R'),
	(4, 3, 'R'),
	(5, 1, 'A'),
	(6, 4, 'A');
/*!40000 ALTER TABLE `b_rating_vote_group` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_rating_voting
DROP TABLE IF EXISTS `b_rating_voting`;
CREATE TABLE IF NOT EXISTS `b_rating_voting` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `TOTAL_VALUE` decimal(18,4) NOT NULL,
  `TOTAL_VOTES` int(11) NOT NULL,
  `TOTAL_POSITIVE_VOTES` int(11) NOT NULL,
  `TOTAL_NEGATIVE_VOTES` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY_TYPE_ID_2` (`ENTITY_TYPE_ID`,`ENTITY_ID`,`ACTIVE`),
  KEY `IX_ENTITY_TYPE_ID_4` (`TOTAL_VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_rating_voting: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_rating_voting` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_voting` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_rating_voting_prepare
DROP TABLE IF EXISTS `b_rating_voting_prepare`;
CREATE TABLE IF NOT EXISTS `b_rating_voting_prepare` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_VOTING_ID` int(11) NOT NULL,
  `TOTAL_VALUE` decimal(18,4) NOT NULL,
  `TOTAL_VOTES` int(11) NOT NULL,
  `TOTAL_POSITIVE_VOTES` int(11) NOT NULL,
  `TOTAL_NEGATIVE_VOTES` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_RATING_VOTING_ID` (`RATING_VOTING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_rating_voting_prepare: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_rating_voting_prepare` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_voting_prepare` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_rating_voting_reaction
DROP TABLE IF EXISTS `b_rating_voting_reaction`;
CREATE TABLE IF NOT EXISTS `b_rating_voting_reaction` (
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `REACTION` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `TOTAL_VOTES` int(11) NOT NULL,
  PRIMARY KEY (`ENTITY_TYPE_ID`,`ENTITY_ID`,`REACTION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_rating_voting_reaction: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_rating_voting_reaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_voting_reaction` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_rating_weight
DROP TABLE IF EXISTS `b_rating_weight`;
CREATE TABLE IF NOT EXISTS `b_rating_weight` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_FROM` decimal(18,4) NOT NULL,
  `RATING_TO` decimal(18,4) NOT NULL,
  `WEIGHT` decimal(18,4) DEFAULT '0.0000',
  `COUNT` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_rating_weight: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `b_rating_weight` DISABLE KEYS */;
REPLACE INTO `b_rating_weight` (`ID`, `RATING_FROM`, `RATING_TO`, `WEIGHT`, `COUNT`) VALUES
	(1, -1000000.0000, 1000000.0000, 1.0000, 10);
/*!40000 ALTER TABLE `b_rating_weight` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_rest_ap
DROP TABLE IF EXISTS `b_rest_ap`;
CREATE TABLE IF NOT EXISTS `b_rest_ap` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `PASSWORD` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_LOGIN` datetime DEFAULT NULL,
  `LAST_IP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_rest_ap` (`USER_ID`,`PASSWORD`,`ACTIVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_rest_ap: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_rest_ap` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_ap` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_rest_app
DROP TABLE IF EXISTS `b_rest_app`;
CREATE TABLE IF NOT EXISTS `b_rest_app` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CLIENT_ID` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `INSTALLED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `URL` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `URL_DEMO` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_INSTALL` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` varchar(4) COLLATE utf8_unicode_ci DEFAULT '1',
  `SCOPE` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'F',
  `DATE_FINISH` date DEFAULT NULL,
  `IS_TRIALED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `SHARED_KEY` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLIENT_SECRET` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `APP_NAME` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCESS` varchar(2000) COLLATE utf8_unicode_ci DEFAULT '',
  `APPLICATION_TOKEN` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `MOBILE` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `USER_INSTALL` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_app1` (`CLIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_rest_app: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_rest_app` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_app` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_rest_app_lang
DROP TABLE IF EXISTS `b_rest_app_lang`;
CREATE TABLE IF NOT EXISTS `b_rest_app_lang` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `APP_ID` int(11) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MENU_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_app_lang1` (`APP_ID`,`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_rest_app_lang: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_rest_app_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_app_lang` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_rest_app_log
DROP TABLE IF EXISTS `b_rest_app_log`;
CREATE TABLE IF NOT EXISTS `b_rest_app_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `APP_ID` int(11) NOT NULL,
  `ACTION_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `USER_ADMIN` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `ix_b_rest_app_log1` (`APP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_rest_app_log: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_rest_app_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_app_log` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_rest_ap_permission
DROP TABLE IF EXISTS `b_rest_ap_permission`;
CREATE TABLE IF NOT EXISTS `b_rest_ap_permission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PASSWORD_ID` int(11) NOT NULL,
  `PERM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_ap_perm1` (`PASSWORD_ID`,`PERM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_rest_ap_permission: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_rest_ap_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_ap_permission` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_rest_event
DROP TABLE IF EXISTS `b_rest_event`;
CREATE TABLE IF NOT EXISTS `b_rest_event` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `APP_ID` int(11) DEFAULT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EVENT_HANDLER` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) DEFAULT '0',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_CREATE` datetime DEFAULT NULL,
  `APPLICATION_TOKEN` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `CONNECTOR_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_event_app_event` (`APP_ID`,`EVENT_NAME`(50),`EVENT_HANDLER`(180),`USER_ID`,`CONNECTOR_ID`(70)),
  KEY `ix_b_rest_event_app_id` (`APP_ID`),
  KEY `ix_b_rest_event_event_name` (`EVENT_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_rest_event: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_rest_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_event` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_rest_event_offline
DROP TABLE IF EXISTS `b_rest_event_offline`;
CREATE TABLE IF NOT EXISTS `b_rest_event_offline` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `MESSAGE_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EVENT_DATA` text COLLATE utf8_unicode_ci,
  `EVENT_ADDITIONAL` text COLLATE utf8_unicode_ci,
  `PROCESS_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `CONNECTOR_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `ERROR` int(3) DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_event_offline1` (`MESSAGE_ID`(50),`APP_ID`,`CONNECTOR_ID`(100),`PROCESS_ID`(50)),
  KEY `ix_b_rest_event_offline2` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_rest_event_offline: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_rest_event_offline` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_event_offline` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_rest_log
DROP TABLE IF EXISTS `b_rest_log`;
CREATE TABLE IF NOT EXISTS `b_rest_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CLIENT_ID` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PASSWORD_ID` int(11) DEFAULT NULL,
  `SCOPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `METHOD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_METHOD` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_URI` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_AUTH` text COLLATE utf8_unicode_ci,
  `REQUEST_DATA` text COLLATE utf8_unicode_ci,
  `RESPONSE_STATUS` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESPONSE_DATA` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_rest_log: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_rest_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_log` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_rest_placement
DROP TABLE IF EXISTS `b_rest_placement`;
CREATE TABLE IF NOT EXISTS `b_rest_placement` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `APP_ID` int(11) DEFAULT NULL,
  `PLACEMENT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PLACEMENT_HANDLER` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `GROUP_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_CREATE` datetime DEFAULT NULL,
  `ADDITIONAL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_placement1` (`APP_ID`,`PLACEMENT`(100),`PLACEMENT_HANDLER`(200)),
  KEY `ix_b_rest_placement3` (`PLACEMENT`(100),`ADDITIONAL`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_rest_placement: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_rest_placement` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_placement` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_rest_stat
DROP TABLE IF EXISTS `b_rest_stat`;
CREATE TABLE IF NOT EXISTS `b_rest_stat` (
  `STAT_DATE` date NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `METHOD_ID` int(11) NOT NULL,
  `HOUR_0` int(11) NOT NULL DEFAULT '0',
  `HOUR_1` int(11) NOT NULL DEFAULT '0',
  `HOUR_2` int(11) NOT NULL DEFAULT '0',
  `HOUR_3` int(11) NOT NULL DEFAULT '0',
  `HOUR_4` int(11) NOT NULL DEFAULT '0',
  `HOUR_5` int(11) NOT NULL DEFAULT '0',
  `HOUR_6` int(11) NOT NULL DEFAULT '0',
  `HOUR_7` int(11) NOT NULL DEFAULT '0',
  `HOUR_8` int(11) NOT NULL DEFAULT '0',
  `HOUR_9` int(11) NOT NULL DEFAULT '0',
  `HOUR_10` int(11) NOT NULL DEFAULT '0',
  `HOUR_11` int(11) NOT NULL DEFAULT '0',
  `HOUR_12` int(11) NOT NULL DEFAULT '0',
  `HOUR_13` int(11) NOT NULL DEFAULT '0',
  `HOUR_14` int(11) NOT NULL DEFAULT '0',
  `HOUR_15` int(11) NOT NULL DEFAULT '0',
  `HOUR_16` int(11) NOT NULL DEFAULT '0',
  `HOUR_17` int(11) NOT NULL DEFAULT '0',
  `HOUR_18` int(11) NOT NULL DEFAULT '0',
  `HOUR_19` int(11) NOT NULL DEFAULT '0',
  `HOUR_20` int(11) NOT NULL DEFAULT '0',
  `HOUR_21` int(11) NOT NULL DEFAULT '0',
  `HOUR_22` int(11) NOT NULL DEFAULT '0',
  `HOUR_23` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`APP_ID`,`STAT_DATE`,`METHOD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_rest_stat: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_rest_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_stat` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_rest_stat_method
DROP TABLE IF EXISTS `b_rest_stat_method`;
CREATE TABLE IF NOT EXISTS `b_rest_stat_method` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `METHOD_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT 'M',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_stat_method` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_rest_stat_method: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_rest_stat_method` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_stat_method` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_search_content
DROP TABLE IF EXISTS `b_search_content`;
CREATE TABLE IF NOT EXISTS `b_search_content` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_CHANGE` datetime NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CUSTOM_RANK` int(11) NOT NULL DEFAULT '0',
  `USER_ID` int(11) DEFAULT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENTITY_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` text COLLATE utf8_unicode_ci,
  `TITLE` text COLLATE utf8_unicode_ci,
  `BODY` longtext COLLATE utf8_unicode_ci,
  `TAGS` text COLLATE utf8_unicode_ci,
  `PARAM1` text COLLATE utf8_unicode_ci,
  `PARAM2` text COLLATE utf8_unicode_ci,
  `UPD` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_FROM` datetime DEFAULT NULL,
  `DATE_TO` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_B_SEARCH_CONTENT` (`MODULE_ID`,`ITEM_ID`),
  KEY `IX_B_SEARCH_CONTENT_1` (`MODULE_ID`,`PARAM1`(50),`PARAM2`(50)),
  KEY `IX_B_SEARCH_CONTENT_2` (`ENTITY_ID`(50),`ENTITY_TYPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_search_content: ~13 rows (приблизительно)
/*!40000 ALTER TABLE `b_search_content` DISABLE KEYS */;
REPLACE INTO `b_search_content` (`ID`, `DATE_CHANGE`, `MODULE_ID`, `ITEM_ID`, `CUSTOM_RANK`, `USER_ID`, `ENTITY_TYPE_ID`, `ENTITY_ID`, `URL`, `TITLE`, `BODY`, `TAGS`, `PARAM1`, `PARAM2`, `UPD`, `DATE_FROM`, `DATE_TO`) VALUES
	(3, '2019-12-29 13:02:07', 'main', 's1|/index.php', 0, NULL, NULL, NULL, '/index.php', 'RR Blog', '', '', '', '', NULL, NULL, NULL),
	(5, '2019-12-28 14:54:14', 'main', 's1|/article.php', 0, NULL, NULL, NULL, '/article.php', 'Статья', '', '', '', '', NULL, NULL, NULL),
	(6, '2019-12-28 14:30:19', 'main', 's1|/statya.php', 0, NULL, NULL, NULL, '/statya.php', 'Статья', 'Text here....', '', '', '', NULL, NULL, NULL),
	(7, '2019-12-30 12:13:43', 'iblock', '3', 0, NULL, NULL, NULL, '=ID=3&EXTERNAL_ID=3&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=articles&IBLOCK_ID=1&IBLOCK_CODE=articles&IBLOCK_EXTERNAL_ID=&CODE=article-title-1', 'Article title 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit..\r\n\rLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lobortis feugiat vivamus at augue eget. Aliquet nec ullamcorper sit amet risus. Dignissim enim sit amet venenatis urna cursus eget. Turpis egestas pretium aenean pharetra magna ac placerat. Sed tempus urna et pharetra pharetra massa massa ultricies. Risus nullam eget felis eget nunc lobortis. Vel eros donec ac odio tempor orci dapibus ultrices in. Quisque id diam vel quam. Faucibus et molestie ac feugiat sed lectus vestibulum mattis. Suspendisse faucibus interdum posuere lorem ipsum dolor. Non odio euismod lacinia at quis risus. Purus viverra accumsan in nisl nisi. Dolor sit amet consectetur adipiscing elit. Semper auctor neque vitae tempus quam pellentesque nec nam aliquam. Pharetra vel turpis nunc eget lorem dolor sed viverra. Elit ut aliquam purus sit amet luctus venenatis lectus magna. Pretium viverra suspendisse potenti nullam ac tortor vitae.\rQuisque egestas diam in arcu cursus. Blandit libero volutpat sed cras ornare arcu dui. Scelerisque mauris pellentesque pulvinar pellentesque habitant morbi. Praesent semper feugiat nibh sed pulvinar. Posuere ac ut consequat semper. Semper risus in hendrerit gravida rutrum quisque. Lacus viverra vitae congue eu consequat ac. Nulla malesuada pellentesque elit eget gravida cum sociis natoque penatibus. Sapien nec sagittis aliquam malesuada. Ultricies leo integer malesuada nunc vel. Mattis ullamcorper velit sed ullamcorper morbi. Nec ullamcorper sit amet risus nullam eget felis. Amet consectetur adipiscing elit duis tristique sollicitudin. Etiam sit amet nisl purus in. Dignissim sodales ut eu sem integer.\rViverra mauris in aliquam sem fringilla ut. Quis varius quam quisque id diam vel quam. Molestie ac feugiat sed lectus. Metus vulputate eu scelerisque felis imperdiet proin. Vitae auctor eu augue ut lectus arcu bibendum at varius. Vestibulum lorem sed risus ultricies. Egestas erat imperdiet sed euismod nisi porta lorem mollis aliquam. Leo urna molestie at elementum. Ac felis donec et odio. Tristique nulla aliquet enim tortor at auctor urna nunc. Velit ut tortor pretium viverra suspendisse. Tempor nec feugiat nisl pretium fusce. Aliquet nibh praesent tristique magna sit. Nibh nisl condimentum id venenatis. Augue neque gravida in fermentum et sollicitudin ac. Tempus imperdiet nulla malesuada pellentesque elit eget gravida. Et odio pellentesque diam volutpat commodo sed egestas. Scelerisque viverra mauris in aliquam.\rTurpis massa sed elementum tempus egestas sed sed. Fusce id velit ut tortor pretium viverra suspendisse potenti nullam. Quam lacus suspendisse faucibus interdum posuere lorem ipsum. Odio morbi quis commodo odio aenean sed adipiscing. Vulputate enim nulla aliquet porttitor. Sed augue lacus viverra vitae. Cum sociis natoque penatibus et magnis dis parturient. Ac turpis egestas sed tempus urna et pharetra. Blandit massa enim nec dui nunc mattis enim. Cras sed felis eget velit aliquet sagittis id consectetur purus. Bibendum at varius vel pharetra. Porta lorem mollis aliquam ut porttitor leo a. Eu turpis egestas pretium aenean pharetra magna. Praesent elementum facilisis leo vel fringilla est ullamcorper. Quisque non tellus orci ac auctor. Scelerisque eu ultrices vitae auctor eu augue. Malesuada fames ac turpis egestas integer eget aliquet nibh praesent.\rOdio facilisis mauris sit amet massa vitae tortor condimentum lacinia. Aliquet eget sit amet tellus cras adipiscing. Dui accumsan sit amet nulla facilisi. Ridiculus mus mauris vitae ultricies leo integer malesuada nunc vel. Nisi scelerisque eu ultrices vitae auctor eu augue ut lectus. Pellentesque adipiscing commodo elit at imperdiet dui accumsan sit amet. Aliquet nibh praesent tristique magna. At urna condimentum mattis pellentesque id. Et netus et malesuada fames ac turpis. Sit amet nulla facilisi morbi tempus iaculis urna id volutpat. Magna fringilla urna porttitor rhoncus. Sem viverra aliquet eget sit amet tellus cras adipiscing enim. At augue eget arcu dictum. Malesuada bibendum arcu vitae elementum curabitur vitae.', '', 'articles', '1', NULL, '2019-12-30 12:13:43', '2020-01-30 12:13:00'),
	(8, '2019-12-30 12:21:18', 'iblock', '4', 0, NULL, NULL, NULL, '=ID=4&EXTERNAL_ID=4&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=articles&IBLOCK_ID=1&IBLOCK_CODE=articles&IBLOCK_EXTERNAL_ID=&CODE=article-title-2', 'Article title 2', 'Zombie ipsum reversus ab viral inferno...\r\n\rZombie ipsum reversus ab viral inferno, nam rick grimes malum cerebro. De carne lumbering animata corpora quaeritis. Summus brains sit​​, morbo vel maleficia? De apocalypsi gorger omero undead survivor dictum mauris. Hi mindless mortuis soulless creaturas, imo evil stalking monstra adventus resi dentevil vultus comedat cerebella viventium. Qui animated corpse, cricket bat max brucks terribilem incessu zomby. The voodoo sacerdos flesh eater, suscitat mortuos comedere carnem virus. Zonbi tattered for solum oculi eorum defunctis go lum cerebro. Nescio brains an Undead zombies. Sicut malus putrid voodoo horror. Nigh tofth eliv ingdead.\rCum horribilem walking dead resurgere de crazed sepulcris creaturis, zombie sicut de grave feeding iride et serpens. Pestilentia, shaun ofthe dead scythe animated corpses ipsa screams. Pestilentia est plague haec decaying ambulabat mortuos. Sicut zeder apathetic malus voodoo. Aenean a dolor plan et terror soulless vulnerum contagium accedunt, mortui iam vivam unlife. Qui tardius moveri, brid eof reanimator sed in magna copia sint terribiles undeath legionis. Alii missing oculis aliorum sicut serpere crabs nostram. Putridi braindead odores kill and infect, aere implent left four dead.\rLucio fulci tremor est dark vivos magna. Expansis creepy arm yof darkness ulnis witchcraft missing carnem armis Kirkman Moore and Adlard caeruleum in locis. Romero morbo Congress amarus in auras. Nihil horum sagittis tincidunt, zombie slack-jawed gelida survival portenta. The unleashed virus est, et iam zombie mortui ambulabunt super terram. Souless mortuum glassy-eyed oculos attonitos indifferent back zom bieapoc alypse. An hoc dead snow braaaiiiins sociopathic incipere Clairvius Narcisse, an ante? Is bello mundi z?\rIn Craven omni memoria patriae zombieland clairvius narcisse religionis sunt diri undead historiarum. Golums, zombies unrelenting et Raimi fascinati beheading. Maleficia! Vel cemetery man a modern bursting eyeballs perhsaps morbi. A terrenti flesh contagium. Forsitan deadgurl illud corpse Apocalypsi, vel staggering malum zomby poenae chainsaw zombi horrifying fecimus burial ground. Indeflexus shotgun coup de poudre monstra per plateas currere. Fit de decay nostra carne undead. Poenitentiam violent zom biehig hway agite RE:dead pœnitentiam! Vivens mortua sunt apud nos night of the living dead.\rWhyt zomby Ut fames after death cerebro virus enim carnis grusome, viscera et organa viventium. Sicut spargit virus ad impetum, qui supersumus flesh eating. Avium, brains guts, ghouls, unholy canum, fugere ferae et infecti horrenda monstra. Videmus twenty-eight deformis pale, horrenda daemonum. Panduntur brains portae rotting inferi. Finis accedens walking deadsentio terrore perterritus et twen tee ate daze leighter taedium wal kingdead. The horror, monstra epidemic significant finem. Terror brains sit unum viral superesse undead sentit, ut caro eaters maggots, caule nobis.', '', 'articles', '1', NULL, '2019-12-30 12:21:18', '2020-01-30 12:21:00'),
	(9, '2019-12-30 12:23:20', 'iblock', '5', 0, NULL, NULL, NULL, '=ID=5&EXTERNAL_ID=5&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=articles&IBLOCK_ID=1&IBLOCK_CODE=articles&IBLOCK_EXTERNAL_ID=&CODE=article-title-3', 'Article title 3', 'Zombies reversus ab inferno, nam malum cerebro...\r\n\rZombies reversus ab inferno, nam malum cerebro. De carne animata corpora quaeritis. Summus sit​​, morbo vel maleficia? De Apocalypsi undead dictum mauris. Hi mortuis soulless creaturas, imo monstra adventus vultus comedat cerebella viventium. Qui offenderit rapto, terribilem incessu. The voodoo sacerdos suscitat mortuos comedere carnem. Search for solum oculi eorum defunctis cerebro. Nescio an Undead zombies. Sicut malus movie horror.\rCum horribilem resurgere de sepulcris creaturis, sicut de iride et serpens. Pestilentia, ipsa screams. Pestilentia est haec ambulabat mortuos. Sicut malus voodoo. Aenean a dolor vulnerum aperire accedunt, mortui iam vivam. Qui tardius moveri, sed in magna copia sint terribiles legionis. Alii missing oculis aliorum sicut serpere crabs nostram. Putridi odores aere implent.\rTremor est vivos magna. Expansis ulnis video missing carnem armis caeruleum in locis. A morbo amarus in auras. Nihil horum sagittis tincidunt, gelida portenta. The unleashed virus est, et iam mortui ambulabunt super terram. Souless mortuum oculos attonitos back zombies. An hoc incipere Clairvius Narcisse, an ante? Is bello mundi z?\rIn omni memoria patriae religionis sunt diri undead historiarum. Golums, zombies et fascinati. Maleficia! Vel a modern perhsaps morbi. A terrenti contagium. Forsitan illud Apocalypsi, vel malum poenae horrifying fecimus. Indeflexus monstra per plateas currere. Fit de nostra carne undead. Poenitentiam agite pœnitentiam! Vivens mortua sunt apud nos.\rUt fames cerebro enim carnis, viscera et organa viventium. Sicut spargit virus ad impetum, qui supersumus. Avium, canum, fugere ferae et infecti horrenda monstra. Videmus deformis horrenda daemonum. Panduntur portae inferi. Finis accedens sentio terrore perterritus et taedium. The horror, monstra significant finem. Terror sit unum superesse sentit, ut caro eaters caule nobis.', '', 'articles', '1', NULL, '2019-12-30 12:23:20', '2020-01-30 12:23:00'),
	(10, '2019-12-30 12:24:58', 'iblock', '6', 0, NULL, NULL, NULL, '=ID=6&EXTERNAL_ID=6&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=articles&IBLOCK_ID=1&IBLOCK_CODE=articles&IBLOCK_EXTERNAL_ID=&CODE=article-title-4', 'Article title 4', 'Bacon ipsum dolor amet jerky drumstick burgdoggen...\r\n\rBacon ipsum dolor amet jerky drumstick burgdoggen buffalo landjaeger jowl pancetta turkey shoulder. Pork chop chislic shank kevin. Pork chop flank alcatra, pork belly ham hock turducken capicola cupim tongue rump ham biltong. Chicken porchetta jowl, ribeye biltong spare ribs turkey andouille pancetta buffalo meatloaf shank rump sausage.\rAndouille cow chicken shank brisket meatball turducken tail doner venison. Flank prosciutto beef ribs porchetta buffalo drumstick shoulder bresaola. Porchetta bresaola turducken, pancetta cow jerky pork loin. Prosciutto brisket chuck pork belly sausage pork loin turkey leberkas strip steak alcatra meatball rump biltong capicola. Chislic bresaola tail, filet mignon ball tip chuck frankfurter meatloaf leberkas spare ribs sirloin salami pig.\rJowl strip steak turkey, bacon pork loin brisket drumstick leberkas ribeye pig. Pastrami jerky fatback drumstick short loin beef. Bacon leberkas short loin, tail sausage spare ribs shoulder. Tri-tip meatball bresaola spare ribs short loin shankle ham t-bone. Turducken brisket strip steak frankfurter, drumstick tri-tip pork jowl tenderloin meatball chuck pork belly. Porchetta flank ball tip pancetta ribeye landjaeger.\rGround round cow capicola beef ribs rump short ribs corned beef pig. Shoulder spare ribs landjaeger picanha, prosciutto strip steak meatloaf filet mignon pig leberkas short loin t-bone capicola andouille. Landjaeger andouille meatball pig porchetta pastrami turkey, biltong pancetta frankfurter. Jerky biltong shankle fatback ham hock bacon, turkey burgdoggen brisket boudin pastrami. Doner jowl biltong salami tri-tip beef, pork chop pastrami strip steak meatloaf. Chicken venison meatloaf, pancetta jerky alcatra filet mignon doner pig short ribs.\rPork chop flank prosciutto burgdoggen. Capicola sausage cow, chuck turkey leberkas chislic meatloaf venison jowl prosciutto. Fatback cow boudin chicken biltong sausage strip steak porchetta corned beef. Pork andouille chuck salami shank ham hock fatback t-bone prosciutto ribeye frankfurter jowl brisket beef. Boudin short ribs chicken, capicola short loin meatball filet mignon tenderloin rump tail. Leberkas fatback drumstick pork belly, picanha flank pancetta sausage boudin short ribs. Pork jerky salami kielbasa porchetta drumstick pancetta beef ribs.', '', 'articles', '1', NULL, '2019-12-30 12:24:58', '2020-01-30 12:25:00'),
	(11, '2019-12-30 12:26:37', 'iblock', '7', 0, NULL, NULL, NULL, '=ID=7&EXTERNAL_ID=7&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=articles&IBLOCK_ID=1&IBLOCK_CODE=articles&IBLOCK_EXTERNAL_ID=&CODE=article-title-5', 'Article title 5', 'Apple pie dragée jelly muffin chocolate...\r\n\rApple pie dragée jelly muffin chocolate. Cheesecake candy canes cheesecake lemon drops apple pie pastry soufflé. Lemon drops gingerbread fruitcake croissant soufflé cheesecake powder bonbon cookie. Danish donut tart liquorice. Tart halvah dessert tiramisu. Bonbon jelly beans lemon drops chupa chups pastry. Gummies candy cake. Marshmallow powder muffin cotton candy. Brownie cupcake carrot cake chocolate. Croissant chocolate cake jujubes danish muffin caramels fruitcake carrot cake cookie. Gingerbread chocolate cake donut bear claw jujubes biscuit. Jelly-o candy canes chocolate bar dessert jelly marzipan dragée. Pudding chocolate cake bonbon pudding dessert icing ice cream.\rLollipop gingerbread gummi bears dragée tart toffee candy canes chocolate croissant. Gingerbread bonbon tiramisu jelly beans chocolate bar. Dragée topping muffin tiramisu sweet. Powder tart cake lollipop bear claw apple pie tart. Pie sweet roll candy danish danish pudding candy. Marshmallow sugar plum tart jelly beans bear claw cupcake chupa chups jelly dessert. Topping chupa chups chocolate cake liquorice. Jelly-o jujubes carrot cake cake donut lollipop candy canes bear claw. Cotton candy icing tootsie roll pastry. Sugar plum powder cookie candy jelly carrot cake cake pastry candy canes. Lemon drops pie chocolate cake candy canes chocolate cake. Gummi bears gummies wafer jelly-o carrot cake marzipan. Cake cheesecake candy canes gummi bears jelly.\rTopping tart gingerbread dessert. Chocolate cake dragée powder topping fruitcake. Liquorice apple pie wafer marshmallow biscuit donut halvah pudding cheesecake. Fruitcake jujubes tootsie roll bonbon. Liquorice muffin oat cake toffee chupa chups liquorice fruitcake. Macaroon soufflé jelly-o caramels donut cupcake pudding pie. Icing liquorice cheesecake sweet roll sweet roll dessert. Bonbon cheesecake candy cake. Topping soufflé chocolate carrot cake marshmallow macaroon tart croissant. Cheesecake cotton candy croissant caramels lollipop cake soufflé chocolate bar marzipan. Apple pie powder bear claw. Cupcake lollipop lemon drops pie wafer ice cream danish. Apple pie gingerbread jelly beans biscuit tart. Danish fruitcake fruitcake liquorice.\rPudding dragée gingerbread chupa chups brownie fruitcake fruitcake cheesecake pudding. Chocolate bar danish sweet roll cake sugar plum sesame snaps toffee liquorice. Cotton candy jelly candy canes biscuit chocolate sweet. Muffin tart marshmallow liquorice dessert soufflé chocolate bar tart cupcake. Muffin cake marzipan jujubes pie gingerbread. Cookie cupcake pastry cheesecake cheesecake lemon drops gummies. Candy pudding gummi bears. Muffin sweet roll sweet danish wafer cotton candy. Wafer tart chocolate bar. Tart toffee jelly beans biscuit powder. Cotton candy lollipop sugar plum bonbon sweet gummi bears. Bear claw tootsie roll lemon drops cotton candy cheesecake. Bonbon topping danish sweet roll macaroon lollipop. Ice cream danish brownie lollipop donut lemon drops biscuit dragée.\rTiramisu gummi bears pastry jelly. Sweet roll carrot cake liquorice bonbon chocolate tiramisu danish oat cake lemon drops. Chocolate cake wafer muffin chupa chups. Macaroon cupcake pastry brownie chocolate bar powder cheesecake marzipan. Pie chupa chups chocolate cake gummi bears fruitcake sesame snaps fruitcake biscuit cake. Pastry sugar plum muffin. Lollipop lemon drops bear claw topping lollipop cake. Marshmallow donut sugar plum lollipop marzipan. Bear claw candy canes cake gummi bears gummies jelly. Icing cake powder gummi bears cupcake. Carrot cake ice cream soufflé jelly beans. Sugar plum bear claw pie danish icing cupcake chocolate dessert tiramisu. Halvah sweet roll tiramisu sugar plum lollipop jujubes cupcake oat cake.', '', 'articles', '1', NULL, '2019-12-30 12:26:37', '2020-01-30 12:26:00'),
	(12, '2019-12-30 12:27:52', 'iblock', '8', 0, NULL, NULL, NULL, '=ID=8&EXTERNAL_ID=8&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=articles&IBLOCK_ID=1&IBLOCK_CODE=articles&IBLOCK_EXTERNAL_ID=&CODE=article-title-6', 'Article title 6', 'Yeah well, you shouldn\'t drink...\r\n\rYeah well, you shouldn\'t drink. Mayor Goldie Wilson, I like the sound of that. Oh hey, Biff, hey, guys, how are you doing? What do you mean you\'ve seen this, it\'s brand new. You\'re gonna be in the car with her.\rShit. Hello, hello, anybody home? Think, McFly, think. I gotta have time to get them re-typed. Do you realize what would happen if I hand in my reports in your handwriting. I\'ll get fired. You wouldn\'t want that to happen would you? Would you? Doc, you gotta help- Oh, then I wanna give her a call, I don\'t want her to worry about you. I don\'t know, I can\'t keep up with all of your boyfriends.\rExcuse me. Whoa, they really cleaned this place up, looks brand new. But I can\'t go to the dance, I\'ll miss my favorite television program, Science Fiction Theater. Will you take care of that? Watch this. Not me, the car, the car. My calculations are correct, when this baby hits eighty-eight miles per hour, your gonna see some serious shit. Watch this, watch this. Ha, what did I tell you, eighty-eight miles per hour. The temporal displacement occurred at exactly 1:20 a.m. and zero seconds.\rUh, well, actually, I figured since it wasn\'t due till Monday- I think it\'s terrible. Girls chasing boys. When I was your age I never chased a boy, or called a boy, or sat in a parked car with a boy. Look, I\'m just not ready to ask Lorraine out to the dance, and not you, nor anybody else on this planet is gonna make me change my mind. Wait a minute. Wait a minute, Doc. Are you telling me that it\'s 8:25? Good evening, I\'m Doctor Emmett Brown. I\'m standing on the parking lot of Twin Pines Mall. It\'s Saturday morning, October 26, 1985, 1:18 a.m. and this is temporal experiment number one. C\'mon, Einy, hey hey boy, get in there, that a boy, in you go, get down, that\'s it.\rThat\'s a Florence Nightingale effect. It happens in hospitals when nurses fall in love with their patients. Go to it, kid. Whoa, they really cleaned this place up, looks brand new. No. Aw yeah, everything is great. Don\'t pay any attention to him, he\'s in one of his moods. Sam, quit fiddling with that thing, come in here to dinner. Now let\'s see, you already know Lorraine, this is Milton, this is Sally, that\'s Toby, and over there in the playpen is little baby Joey.', '', 'articles', '1', NULL, '2019-12-30 12:27:52', '2020-01-30 12:27:00'),
	(13, '2019-12-30 12:29:10', 'iblock', '9', 0, NULL, NULL, NULL, '=ID=9&EXTERNAL_ID=9&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=articles&IBLOCK_ID=1&IBLOCK_CODE=articles&IBLOCK_EXTERNAL_ID=&CODE=article-title-7', 'Article title 7', 'Busey ipsum dolor sit amet...\r\n\rBusey ipsum dolor sit amet. Have you urinated? Have you drained your bladder? Are you free? Because if you haven\'t it will only come out later. I\'m giving you some information that your bodily fluids may penetrate your clothing fibre\'s without warning.You ever roasted doughnuts?\rYou ever roasted doughnuts?The best way to communicate is compatible. Compatible communication is listening with open ears and an open mind, and not being fearful or judgemental about what you\'re hearing.Sometimes horses cough and fart at the same time, so stay out of the range of its butt muscle because a horses butt muscle is thick.\rGo with the feeling of the nature. Take it easy. Know why you\'re here. And remember to balance your internal energy with the environment.The best way to communicate is compatible. Compatible communication is listening with open ears and an open mind, and not being fearful or judgemental about what you\'re hearing.\rIt\'s good to yell at people and tell people that you\'re from Tennesee, so that way you\'ll be safe.The best way to communicate is compatible. Compatible communication is listening with open ears and an open mind, and not being fearful or judgemental about what you\'re hearing.\rDid you feel that? Look at me - I\'m not out of breath anymore!When you get lost in your imaginatory vagueness, your foresight will become a nimble vagrant.Go with the feeling of the nature. Take it easy. Know why you\'re here. And remember to balance your internal energy with the environment.', '', 'articles', '1', NULL, '2019-12-30 12:29:10', '2020-01-30 12:29:00'),
	(14, '2019-12-30 12:30:41', 'iblock', '10', 0, NULL, NULL, NULL, '=ID=10&EXTERNAL_ID=10&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=articles&IBLOCK_ID=1&IBLOCK_CODE=articles&IBLOCK_EXTERNAL_ID=&CODE=article-title-8', 'Article title 8', 'Listen to the silence...\r\n\rBusey ipsum dolor sit amet. Listen to the silence. And when the silence is deafening, you\'re in the center of your own universe.I wrestled a bear once. A 750lbs black bear.The magic Indian is a mysterious spiritual force, and we\'re going to Cathedral Rock, and that\'s the vortex of the heart.\rHave you urinated? Have you drained your bladder? Are you free? Because if you haven\'t it will only come out later. I\'m giving you some information that your bodily fluids may penetrate your clothing fibre\'s without warning.It\'s OK to get Rib-grease on your face, because you\'re allowing people to see that you\'re proud of these ribs.\rI would like to give you a backstage pass to my imagination.Listen to the silence. And when the silence is deafening, you\'re in the center of your own universe.Have you urinated? Have you drained your bladder? Are you free? Because if you haven\'t it will only come out later. I\'m giving you some information that your bodily fluids may penetrate your clothing fibre\'s without warning.\rThe magic Indian is a mysterious spiritual force, and we\'re going to Cathedral Rock, and that\'s the vortex of the heart.I wrestled a bear once. A 750lbs black bear.Listen to the silence. And when the silence is deafening, you\'re in the center of your own universe.\rYou gotta go through it to see there ain\'t nothing to it.It\'s good to yell at people and tell people that you\'re from Tennesee, so that way you\'ll be safe.The best way to communicate is compatible. Compatible communication is listening with open ears and an open mind, and not being fearful or judgemental about what you\'re hearing.', '', 'articles', '1', NULL, '2019-12-30 12:30:41', '2020-01-30 12:30:00'),
	(15, '2019-12-30 12:31:47', 'iblock', '11', 0, NULL, NULL, NULL, '=ID=11&EXTERNAL_ID=11&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=articles&IBLOCK_ID=1&IBLOCK_CODE=articles&IBLOCK_EXTERNAL_ID=&CODE=article-title-9', 'Article title 9', 'Veggies es bonus vobis, proinde vos postulo...\r\n\rVeggies es bonus vobis, proinde vos postulo essum magis kohlrabi welsh onion daikon amaranth tatsoi tomatillo melon azuki bean garlic.\rGumbo beet greens corn soko endive gumbo gourd. Parsley shallot courgette tatsoi pea sprouts fava bean collard greens dandelion okra wakame tomato. Dandelion cucumber earthnut pea peanut soko zucchini.\rTurnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.\rNori grape silver beet broccoli kombu beet greens fava bean potato quandong celery. Bunya nuts black-eyed pea prairie turnip leek lentil turnip greens parsnip. Sea lettuce lettuce water chestnut eggplant winter purslane fennel azuki bean earthnut pea sierra leone bologi leek soko chicory celtuce parsley jícama salsify.\rCelery quandong swiss chard chicory earthnut pea potato. Salsify taro catsear garlic gram celery bitterleaf wattle seed collard greens nori. Grape wattle seed kombu beetroot horseradish carrot squash brussels sprout chard.\rPea horseradish azuki bean lettuce avocado asparagus okra. Kohlrabi radish okra azuki bean corn fava bean mustard tigernut jícama green bean celtuce collard greens avocado quandong fennel gumbo black-eyed pea. Grape silver beet watercress potato tigernut corn groundnut. Chickweed okra pea winter purslane coriander yarrow sweet pepper radish garlic brussels sprout groundnut summer purslane earthnut pea tomato spring onion azuki bean gourd. Gumbo kakadu plum komatsuna black-eyed pea green bean zucchini gourd winter purslane silver beet rock melon radish asparagus spinach.\rBeetroot water spinach okra water chestnut ricebean pea catsear courgette summer purslane. Water spinach arugula pea tatsoi aubergine spring onion bush tomato kale radicchio turnip chicory salsify pea sprouts fava bean. Dandelion zucchini burdock yarrow chickpea dandelion sorrel courgette turnip greens tigernut soybean radish artichoke wattle seed endive groundnut broccoli arugula.\rSoko radicchio bunya nuts gram dulse silver beet parsnip napa cabbage lotus root sea lettuce brussels sprout cabbage. Catsear cauliflower garbanzo yarrow salsify chicory garlic bell pepper napa cabbage lettuce tomato kale arugula melon sierra leone bologi rutabaga tigernut. Sea lettuce gumbo grape kale kombu cauliflower salsify kohlrabi okra sea lettuce broccoli celery lotus root carrot winter purslane turnip greens garlic. Jícama garlic courgette coriander radicchio plantain scallion cauliflower fava bean desert raisin spring onion chicory bunya nuts. Sea lettuce water spinach gram fava bean leek dandelion silver beet eggplant bush tomato.', '', 'articles', '1', NULL, '2019-12-30 12:31:47', '2020-01-30 12:31:00'),
	(16, '2019-12-30 12:32:54', 'iblock', '12', 0, NULL, NULL, NULL, '=ID=12&EXTERNAL_ID=12&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=articles&IBLOCK_ID=1&IBLOCK_CODE=articles&IBLOCK_EXTERNAL_ID=&CODE=article-title-10', 'Article title 10', 'Pommy ipsum Elementary my dear Watson...\r\n\rPommy ipsum Elementary my dear Watson ask your mother if down the village green a total jessie it\'s me peepers, smeg 10 pence mix naff off shepherd\'s pie. Got his end away throw a paddy conked him one on the nose a reet bobbydazzler, 10 pence mix half-inch it Union Jack, wind up challenge you to a duel. Middle class cobbles working class corgi ey up chuck on his tod, pants doing my head in upper class on the pull sling one\'s hook, terribly scones barmy nose rag. Half-inch it pennyboy Bad Wolf in the jacksy flabbergasted golly gosh bloke I could reet fancy a, pork dripping hedgehog because there was nothing on the gogglebox tally-ho the black death alright duck, corgi down the local football whizz mush a bottle of plonk.\rFancied a flutter apple and pears conkers rather scatterbrained challenge you to a duel it\'s nicked football ridiculous, fried toast scatterbrained Doctor Who bossy britches pants ey up duck. Have a gander rivetting stuff it\'s the bees knees utter shambles Amelia Pond flog a dead horse porky-pies spiffing chav, gutted willy that\'s ace morris dancers scally meat and two veg. Sling one\'s hook damn have a butcher\'s at this bent as a nine bob note big light Kate and Will superb, give you a bell you \'avin a laugh fish and chips sod\'s law the fuzz god save the queen darling, pulled a right corker doing my head in at the boozer is she \'avin a laugh absolute twoddle.\rDown the village green Moriarty jolly bowler hat bargain Betty, Essex girls scrote beefeater. Darling terribly lug hole sweet fanny adams and thus Kate and Will, daft cow sorted it cup of tea it\'s nicked. Victoria sponge cake 221B Baker Street bag egg\'s old boy had a barney with the inlaws picalilly a bottle of plonk cotton on, narky ey up chuck rambunctious bobby gravy cheese and chips down the local, Victoria sponge cake cockney ridicule I\'m off to Bedfordshire bovver boots. Essex girls the lakes brilliant bog roll football scones biscuits, wibbly-wobbly timey-wimey stuff round our gaff the chippy pillock scones a right toff fish and chips, skive real ale doofer off with her head scones.\rOld girl a reet bobbydazzler collywobbles scones loo one feels that, pot noodle up North knackered apple and pears. Superb nonsense driving a mini lost her marbles numpty ee bah gum baffled have a kip, throw a spanner in the works could murder a pint doolally bossy britches chav indeed. Chuffed cor blimey\' clock round the earhole black pudding gobsmacked it\'s cracking flags sling one\'s hook, a right royal knees up chaps Weeping Angels twiglets Amelia Pond guinness, ever so lovely bottled it devonshire cream tea blummin\' Essex girls. Completely crackers quid wellies a week on Sunday gosh golly well fit, what a doddle jolly good pie-eyed copper accordingly easy peasy, Prince Charles absolute on his tod off with her head cornish pasty.\rThe Hounds of Baskerville nosh taking the mick off t\'shop see a man about a dog, brown sauce argy-bargy clock round the earhole Southeners pulled a right corker, what a mug off with her head conkers. Dr. Watson pie-eyed flabbergasted what a load of cobblers have a gander guinness oopsy-daisies, bovver boots off the hook a right corker it\'s me peepers. A week on Sunday chap absolute nose rag flog, narky alright geezer.', '', 'articles', '1', NULL, '2019-12-30 12:32:54', '2020-01-30 12:33:00');
/*!40000 ALTER TABLE `b_search_content` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_search_content_freq
DROP TABLE IF EXISTS `b_search_content_freq`;
CREATE TABLE IF NOT EXISTS `b_search_content_freq` (
  `STEM` int(11) NOT NULL DEFAULT '0',
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FREQ` float DEFAULT NULL,
  `TF` float DEFAULT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_FREQ` (`STEM`,`LANGUAGE_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_search_content_freq: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_search_content_freq` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_content_freq` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_search_content_param
DROP TABLE IF EXISTS `b_search_content_param`;
CREATE TABLE IF NOT EXISTS `b_search_content_param` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `PARAM_NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PARAM_VALUE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  KEY `IX_B_SEARCH_CONTENT_PARAM` (`SEARCH_CONTENT_ID`,`PARAM_NAME`),
  KEY `IX_B_SEARCH_CONTENT_PARAM_1` (`PARAM_NAME`,`PARAM_VALUE`(50),`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_search_content_param: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_search_content_param` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_content_param` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_search_content_right
DROP TABLE IF EXISTS `b_search_content_right`;
CREATE TABLE IF NOT EXISTS `b_search_content_right` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_RIGHT` (`SEARCH_CONTENT_ID`,`GROUP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_search_content_right: ~13 rows (приблизительно)
/*!40000 ALTER TABLE `b_search_content_right` DISABLE KEYS */;
REPLACE INTO `b_search_content_right` (`SEARCH_CONTENT_ID`, `GROUP_CODE`) VALUES
	(3, 'G2'),
	(5, 'G2'),
	(6, 'G2'),
	(7, 'G1'),
	(8, 'G1'),
	(9, 'G1'),
	(10, 'G1'),
	(11, 'G1'),
	(12, 'G1'),
	(13, 'G1'),
	(14, 'G1'),
	(15, 'G1'),
	(16, 'G1');
/*!40000 ALTER TABLE `b_search_content_right` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_search_content_site
DROP TABLE IF EXISTS `b_search_content_site`;
CREATE TABLE IF NOT EXISTS `b_search_content_site` (
  `SEARCH_CONTENT_ID` int(18) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `URL` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`SEARCH_CONTENT_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_search_content_site: ~13 rows (приблизительно)
/*!40000 ALTER TABLE `b_search_content_site` DISABLE KEYS */;
REPLACE INTO `b_search_content_site` (`SEARCH_CONTENT_ID`, `SITE_ID`, `URL`) VALUES
	(3, 's1', ''),
	(5, 's1', ''),
	(6, 's1', ''),
	(7, 's1', ''),
	(8, 's1', ''),
	(9, 's1', ''),
	(10, 's1', ''),
	(11, 's1', ''),
	(12, 's1', ''),
	(13, 's1', ''),
	(14, 's1', ''),
	(15, 's1', ''),
	(16, 's1', '');
/*!40000 ALTER TABLE `b_search_content_site` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_search_content_stem
DROP TABLE IF EXISTS `b_search_content_stem`;
CREATE TABLE IF NOT EXISTS `b_search_content_stem` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `STEM` int(11) NOT NULL,
  `TF` float NOT NULL,
  `PS` float NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_STEM` (`STEM`,`LANGUAGE_ID`,`TF`,`PS`,`SEARCH_CONTENT_ID`),
  KEY `IND_B_SEARCH_CONTENT_STEM` (`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;

-- Дамп данных таблицы rusrobotics_bitrix.b_search_content_stem: ~1 763 rows (приблизительно)
/*!40000 ALTER TABLE `b_search_content_stem` DISABLE KEYS */;
REPLACE INTO `b_search_content_stem` (`SEARCH_CONTENT_ID`, `LANGUAGE_ID`, `STEM`, `TF`, `PS`) VALUES
	(5, 'ru', 1, 0.2314, 1),
	(6, 'ru', 1, 0.2314, 1),
	(3, 'ru', 6, 0.2314, 1),
	(3, 'ru', 7, 0.2314, 2),
	(6, 'ru', 8, 0.2314, 2),
	(12, 'ru', 9, 0.1156, 679),
	(13, 'ru', 9, 0.1969, 308.5),
	(6, 'ru', 9, 0.2314, 3),
	(7, 'ru', 10, 0.1078, 1),
	(16, 'ru', 10, 0.1103, 1),
	(11, 'ru', 10, 0.1105, 1),
	(15, 'ru', 10, 0.114, 1),
	(8, 'ru', 10, 0.1147, 1),
	(12, 'ru', 10, 0.1156, 1),
	(10, 'ru', 10, 0.1197, 1),
	(14, 'ru', 10, 0.1224, 1),
	(9, 'ru', 10, 0.1239, 1),
	(13, 'ru', 10, 0.1242, 1),
	(7, 'ru', 11, 0.1078, 2),
	(16, 'ru', 11, 0.1103, 2),
	(11, 'ru', 11, 0.1105, 2),
	(15, 'ru', 11, 0.114, 2),
	(8, 'ru', 11, 0.1147, 2),
	(12, 'ru', 11, 0.1156, 2),
	(10, 'ru', 11, 0.1197, 2),
	(14, 'ru', 11, 0.1224, 2),
	(9, 'ru', 11, 0.1239, 2),
	(13, 'ru', 11, 0.1242, 2),
	(7, 'ru', 12, 0.3418, 362.875),
	(14, 'ru', 13, 0.1224, 24),
	(16, 'ru', 13, 0.1748, 15.5),
	(8, 'ru', 13, 0.1818, 15.5),
	(10, 'ru', 13, 0.1896, 16),
	(13, 'ru', 13, 0.1969, 15),
	(7, 'ru', 13, 0.2504, 219.25),
	(8, 'ru', 14, 0.1147, 231),
	(14, 'ru', 14, 0.1224, 25),
	(9, 'ru', 14, 0.1239, 180),
	(10, 'ru', 14, 0.1896, 17),
	(13, 'ru', 14, 0.1969, 16),
	(7, 'ru', 14, 0.2787, 123),
	(14, 'ru', 15, 0.1224, 26),
	(8, 'ru', 15, 0.1818, 352),
	(9, 'ru', 15, 0.1964, 273),
	(13, 'ru', 15, 0.1969, 17),
	(7, 'ru', 15, 0.4313, 503.867),
	(14, 'ru', 16, 0.1224, 27),
	(10, 'ru', 16, 0.1896, 18),
	(13, 'ru', 16, 0.1969, 18),
	(7, 'ru', 16, 0.4313, 492.667),
	(7, 'ru', 17, 0.2787, 281.6),
	(7, 'ru', 18, 0.3418, 521.25),
	(7, 'ru', 19, 0.3418, 347.375),
	(8, 'ru', 20, 0.1147, 254),
	(9, 'ru', 20, 0.1239, 195),
	(7, 'ru', 20, 0.4581, 469.556),
	(7, 'ru', 21, 0.1078, 31),
	(12, 'ru', 21, 0.1833, 98),
	(7, 'ru', 22, 0.1078, 32),
	(7, 'ru', 23, 0.2157, 242.333),
	(7, 'ru', 24, 0.1078, 34),
	(8, 'ru', 25, 0.1818, 601.5),
	(9, 'ru', 25, 0.1964, 459.5),
	(7, 'ru', 25, 0.373, 488.2),
	(7, 'ru', 26, 0.1078, 36),
	(8, 'ru', 27, 0.3441, 425.286),
	(9, 'ru', 27, 0.3478, 351.5),
	(7, 'ru', 27, 0.373, 545.9),
	(7, 'ru', 28, 0.1078, 38),
	(8, 'ru', 29, 0.1818, 279),
	(9, 'ru', 29, 0.1964, 214.5),
	(7, 'ru', 29, 0.3235, 529.286),
	(7, 'ru', 30, 0.1078, 40),
	(7, 'ru', 31, 0.1709, 80),
	(7, 'ru', 32, 0.2787, 306.2),
	(7, 'ru', 33, 0.1078, 48),
	(12, 'ru', 34, 0.1156, 351),
	(14, 'ru', 34, 0.1224, 412),
	(16, 'ru', 34, 0.1748, 283.5),
	(13, 'ru', 34, 0.2485, 261.333),
	(7, 'ru', 34, 0.3582, 609.333),
	(7, 'ru', 35, 0.3235, 663),
	(7, 'ru', 36, 0.4105, 497.385),
	(7, 'ru', 37, 0.3582, 705.222),
	(7, 'ru', 38, 0.3027, 390.333),
	(7, 'ru', 39, 0.2787, 406.6),
	(7, 'ru', 40, 0.3027, 260.5),
	(7, 'ru', 41, 0.1709, 247),
	(8, 'ru', 42, 0.1147, 553),
	(9, 'ru', 42, 0.1239, 421),
	(7, 'ru', 42, 0.3027, 640.667),
	(7, 'ru', 43, 0.2157, 302.667),
	(7, 'ru', 44, 0.3418, 616.125),
	(7, 'ru', 45, 0.1709, 170.5),
	(7, 'ru', 46, 0.3235, 617),
	(7, 'ru', 47, 0.3418, 567.25),
	(7, 'ru', 48, 0.3027, 489.667),
	(8, 'ru', 49, 0.1147, 229),
	(9, 'ru', 49, 0.1239, 178),
	(7, 'ru', 49, 0.2157, 528.333),
	(7, 'ru', 50, 0.3235, 404.857),
	(7, 'ru', 51, 0.4105, 481.154),
	(7, 'ru', 52, 0.1078, 88),
	(7, 'ru', 53, 0.3027, 549.667),
	(7, 'ru', 54, 0.2787, 494.4),
	(7, 'ru', 55, 0.2504, 469.75),
	(7, 'ru', 56, 0.2504, 357.25),
	(7, 'ru', 57, 0.2787, 456.8),
	(7, 'ru', 58, 0.3027, 487.5),
	(8, 'ru', 59, 0.2294, 326),
	(9, 'ru', 59, 0.2478, 256.667),
	(7, 'ru', 59, 0.3418, 477),
	(7, 'ru', 60, 0.1078, 121),
	(7, 'ru', 61, 0.1709, 329),
	(7, 'ru', 62, 0.3235, 530.286),
	(7, 'ru', 63, 0.1709, 477.5),
	(7, 'ru', 64, 0.1078, 127),
	(7, 'ru', 65, 0.2157, 629),
	(13, 'ru', 66, 0.1242, 366),
	(14, 'ru', 66, 0.2448, 221),
	(16, 'ru', 66, 0.2561, 263.5),
	(8, 'ru', 66, 0.2663, 330.75),
	(9, 'ru', 66, 0.2877, 254),
	(7, 'ru', 66, 0.3418, 375.875),
	(12, 'ru', 66, 0.4146, 470.091),
	(7, 'ru', 67, 0.2787, 400),
	(7, 'ru', 68, 0.3235, 652.429),
	(7, 'ru', 69, 0.2504, 371.25),
	(7, 'ru', 70, 0.2787, 386.8),
	(7, 'ru', 71, 0.2157, 328.667),
	(7, 'ru', 72, 0.2157, 378.333),
	(7, 'ru', 73, 0.2787, 454.8),
	(7, 'ru', 74, 0.1709, 325.5),
	(7, 'ru', 75, 0.2504, 562),
	(7, 'ru', 76, 0.2787, 464.6),
	(7, 'ru', 77, 0.1709, 421.5),
	(7, 'ru', 78, 0.2157, 384.667),
	(7, 'ru', 79, 0.1709, 499),
	(7, 'ru', 80, 0.1709, 343),
	(7, 'ru', 81, 0.1709, 523.5),
	(7, 'ru', 82, 0.2157, 439.333),
	(7, 'ru', 83, 0.2504, 402.75),
	(7, 'ru', 84, 0.373, 502.6),
	(7, 'ru', 85, 0.2157, 672),
	(7, 'ru', 86, 0.2504, 442.25),
	(7, 'ru', 87, 0.2157, 539.667),
	(7, 'ru', 88, 0.2504, 284),
	(7, 'ru', 89, 0.3027, 639.167),
	(7, 'ru', 90, 0.1709, 404.5),
	(7, 'ru', 91, 0.3866, 691.273),
	(7, 'ru', 92, 0.3418, 534.25),
	(7, 'ru', 93, 0.1078, 213),
	(8, 'ru', 93, 0.1147, 31),
	(9, 'ru', 93, 0.1964, 19),
	(7, 'ru', 94, 0.3235, 457.714),
	(7, 'ru', 95, 0.1078, 240),
	(7, 'ru', 96, 0.1709, 461.5),
	(7, 'ru', 97, 0.2787, 580.2),
	(7, 'ru', 98, 0.2787, 618),
	(7, 'ru', 99, 0.1709, 511.5),
	(7, 'ru', 100, 0.1078, 274),
	(7, 'ru', 101, 0.2157, 631.667),
	(7, 'ru', 102, 0.2504, 734),
	(7, 'ru', 103, 0.1078, 278),
	(7, 'ru', 104, 0.2504, 715.75),
	(7, 'ru', 105, 0.2787, 631.2),
	(8, 'ru', 106, 0.1147, 70),
	(9, 'ru', 106, 0.1239, 62),
	(7, 'ru', 106, 0.2787, 627.4),
	(7, 'ru', 107, 0.1709, 296),
	(7, 'ru', 108, 0.1078, 291),
	(8, 'ru', 109, 0.1147, 455),
	(9, 'ru', 109, 0.1239, 353),
	(7, 'ru', 109, 0.2504, 588),
	(7, 'ru', 110, 0.2787, 700),
	(7, 'ru', 111, 0.2787, 655.6),
	(7, 'ru', 112, 0.1709, 324),
	(7, 'ru', 113, 0.1078, 322),
	(7, 'ru', 114, 0.2504, 473.75),
	(7, 'ru', 115, 0.1078, 324),
	(7, 'ru', 116, 0.2157, 575.333),
	(7, 'ru', 117, 0.1078, 334),
	(7, 'ru', 118, 0.3582, 671.889),
	(7, 'ru', 119, 0.3027, 681.167),
	(7, 'ru', 120, 0.3418, 681.625),
	(8, 'ru', 121, 0.1147, 171),
	(9, 'ru', 121, 0.1239, 136),
	(7, 'ru', 121, 0.1709, 536.5),
	(7, 'ru', 122, 0.1709, 537.5),
	(7, 'ru', 123, 0.1709, 538.5),
	(7, 'ru', 124, 0.1709, 539.5),
	(7, 'ru', 125, 0.1078, 358),
	(8, 'ru', 126, 0.1147, 343),
	(9, 'ru', 126, 0.1239, 264),
	(7, 'ru', 126, 0.1709, 564.5),
	(7, 'ru', 127, 0.2787, 682),
	(7, 'ru', 128, 0.2504, 640.75),
	(7, 'ru', 129, 0.2504, 592.75),
	(7, 'ru', 130, 0.1078, 407),
	(7, 'ru', 131, 0.2504, 621.25),
	(7, 'ru', 132, 0.1709, 508),
	(7, 'ru', 133, 0.1078, 415),
	(7, 'ru', 134, 0.1078, 427),
	(7, 'ru', 135, 0.2157, 625.333),
	(7, 'ru', 136, 0.2157, 752),
	(7, 'ru', 137, 0.2157, 574.333),
	(7, 'ru', 138, 0.1078, 472),
	(7, 'ru', 139, 0.1709, 588.5),
	(7, 'ru', 140, 0.2504, 635),
	(7, 'ru', 141, 0.1078, 478),
	(7, 'ru', 142, 0.2157, 766.667),
	(7, 'ru', 143, 0.1078, 510),
	(7, 'ru', 144, 0.1709, 651.5),
	(7, 'ru', 145, 0.1709, 653.5),
	(7, 'ru', 146, 0.2504, 757.25),
	(7, 'ru', 147, 0.1709, 618.5),
	(7, 'ru', 148, 0.2157, 808),
	(7, 'ru', 149, 0.1078, 605),
	(7, 'ru', 150, 0.2157, 753.333),
	(7, 'ru', 151, 0.2157, 833),
	(7, 'ru', 152, 0.1078, 729),
	(7, 'ru', 153, 0.1078, 730),
	(7, 'ru', 154, 0.1078, 731),
	(7, 'ru', 155, 0.1709, 840),
	(7, 'ru', 156, 0.1078, 819),
	(8, 'ru', 156, 0.2294, 288.333),
	(9, 'ru', 156, 0.2478, 222.333),
	(7, 'ru', 157, 0.2157, 907.333),
	(8, 'ru', 158, 0.1147, 548),
	(9, 'ru', 158, 0.1239, 419),
	(7, 'ru', 158, 0.1709, 911),
	(7, 'ru', 159, 0.1709, 939.5),
	(7, 'ru', 160, 0.1078, 902),
	(7, 'ru', 161, 0.1078, 903),
	(7, 'ru', 162, 0.1078, 969),
	(7, 'ru', 163, 0.1078, 986),
	(7, 'ru', 164, 0.1078, 999),
	(7, 'ru', 165, 0.1078, 1024),
	(8, 'ru', 165, 0.1147, 69),
	(9, 'ru', 165, 0.1239, 61),
	(7, 'ru', 166, 0.1078, 1035),
	(8, 'ru', 167, 0.2965, 183),
	(8, 'ru', 168, 0.1818, 16.5),
	(9, 'ru', 168, 0.1964, 16),
	(8, 'ru', 169, 0.1818, 17.5),
	(9, 'ru', 169, 0.1964, 17),
	(8, 'ru', 170, 0.2294, 229.667),
	(8, 'ru', 171, 0.1818, 19.5),
	(9, 'ru', 171, 0.1964, 18),
	(8, 'ru', 172, 0.1147, 32),
	(8, 'ru', 173, 0.1147, 33),
	(8, 'ru', 174, 0.1818, 255.5),
	(9, 'ru', 174, 0.2478, 137),
	(8, 'ru', 175, 0.2294, 240.667),
	(9, 'ru', 175, 0.2877, 143.5),
	(9, 'ru', 176, 0.3203, 153.8),
	(8, 'ru', 176, 0.322, 243.667),
	(8, 'ru', 177, 0.1818, 275.5),
	(9, 'ru', 177, 0.1964, 216),
	(8, 'ru', 178, 0.1147, 43),
	(8, 'ru', 179, 0.1147, 44),
	(9, 'ru', 179, 0.1239, 40),
	(8, 'ru', 180, 0.1147, 45),
	(9, 'ru', 180, 0.1239, 41),
	(8, 'ru', 181, 0.1147, 46),
	(9, 'ru', 181, 0.1239, 42),
	(8, 'ru', 182, 0.1147, 52),
	(9, 'ru', 182, 0.1239, 48),
	(8, 'ru', 183, 0.2965, 406.6),
	(8, 'ru', 184, 0.1818, 193),
	(9, 'ru', 184, 0.1964, 151.5),
	(8, 'ru', 185, 0.1818, 249),
	(9, 'ru', 185, 0.1964, 197.5),
	(8, 'ru', 186, 0.1818, 269),
	(9, 'ru', 186, 0.1964, 214),
	(8, 'ru', 187, 0.1147, 65),
	(8, 'ru', 188, 0.1147, 66),
	(9, 'ru', 189, 0.2877, 225.25),
	(8, 'ru', 189, 0.2965, 359.6),
	(8, 'ru', 190, 0.1147, 68),
	(8, 'ru', 191, 0.1147, 76),
	(9, 'ru', 191, 0.1239, 68),
	(8, 'ru', 192, 0.1147, 77),
	(8, 'ru', 193, 0.1147, 78),
	(9, 'ru', 193, 0.1239, 69),
	(9, 'ru', 194, 0.1239, 70),
	(8, 'ru', 194, 0.1818, 157),
	(8, 'ru', 195, 0.1147, 80),
	(9, 'ru', 195, 0.1239, 71),
	(8, 'ru', 196, 0.1147, 81),
	(9, 'ru', 196, 0.1239, 72),
	(8, 'ru', 197, 0.1147, 82),
	(8, 'ru', 198, 0.1147, 83),
	(8, 'ru', 199, 0.2663, 452.25),
	(9, 'ru', 199, 0.2877, 348.25),
	(8, 'ru', 200, 0.1147, 85),
	(9, 'ru', 200, 0.1239, 74),
	(8, 'ru', 201, 0.1147, 86),
	(8, 'ru', 202, 0.1147, 87),
	(8, 'ru', 203, 0.1147, 88),
	(9, 'ru', 203, 0.1239, 75),
	(8, 'ru', 204, 0.1147, 89),
	(9, 'ru', 204, 0.1239, 76),
	(8, 'ru', 205, 0.1147, 90),
	(9, 'ru', 205, 0.1239, 77),
	(8, 'ru', 206, 0.1818, 325),
	(9, 'ru', 206, 0.1964, 252),
	(8, 'ru', 207, 0.2294, 305),
	(9, 'ru', 207, 0.2478, 237.667),
	(8, 'ru', 208, 0.1818, 148),
	(8, 'ru', 209, 0.1818, 286),
	(8, 'ru', 210, 0.1147, 100),
	(8, 'ru', 211, 0.1147, 101),
	(8, 'ru', 212, 0.1147, 102),
	(8, 'ru', 213, 0.1147, 103),
	(8, 'ru', 214, 0.1147, 104),
	(9, 'ru', 214, 0.1239, 87),
	(8, 'ru', 215, 0.1147, 105),
	(9, 'ru', 215, 0.1239, 88),
	(8, 'ru', 216, 0.2294, 376.667),
	(9, 'ru', 217, 0.2478, 284.333),
	(8, 'ru', 217, 0.2663, 410.25),
	(12, 'ru', 217, 0.3842, 330.889),
	(13, 'ru', 217, 0.4453, 252.273),
	(16, 'ru', 217, 0.499, 338.818),
	(14, 'ru', 217, 0.5104, 213.471),
	(9, 'ru', 218, 0.1964, 133.5),
	(8, 'ru', 218, 0.2294, 163.667),
	(8, 'ru', 219, 0.1147, 114),
	(9, 'ru', 219, 0.1239, 96),
	(8, 'ru', 220, 0.2294, 383.333),
	(8, 'ru', 221, 0.1147, 116),
	(8, 'ru', 222, 0.1147, 117),
	(9, 'ru', 222, 0.1239, 97),
	(8, 'ru', 223, 0.1818, 165.5),
	(9, 'ru', 223, 0.1964, 131),
	(8, 'ru', 224, 0.1147, 119),
	(9, 'ru', 224, 0.1239, 99),
	(8, 'ru', 225, 0.1818, 218),
	(9, 'ru', 225, 0.1964, 171),
	(9, 'ru', 226, 0.1964, 354.5),
	(8, 'ru', 226, 0.2663, 399.25),
	(8, 'ru', 227, 0.1147, 127),
	(8, 'ru', 228, 0.1147, 128),
	(8, 'ru', 229, 0.1147, 129),
	(9, 'ru', 229, 0.1239, 107),
	(8, 'ru', 230, 0.1147, 130),
	(9, 'ru', 230, 0.1239, 108),
	(8, 'ru', 231, 0.1147, 131),
	(9, 'ru', 231, 0.1239, 109),
	(8, 'ru', 232, 0.1147, 132),
	(9, 'ru', 232, 0.1239, 110),
	(8, 'ru', 233, 0.1147, 133),
	(9, 'ru', 233, 0.1239, 111),
	(8, 'ru', 234, 0.1147, 134),
	(14, 'ru', 234, 0.1224, 391),
	(13, 'ru', 234, 0.1969, 284.5),
	(12, 'ru', 234, 0.2313, 479),
	(8, 'ru', 235, 0.1147, 135),
	(8, 'ru', 236, 0.1147, 142),
	(9, 'ru', 236, 0.1239, 118),
	(14, 'ru', 237, 0.1224, 454),
	(8, 'ru', 237, 0.2294, 308.333),
	(9, 'ru', 237, 0.2478, 240.667),
	(13, 'ru', 237, 0.2485, 235.667),
	(8, 'ru', 238, 0.1818, 288),
	(9, 'ru', 238, 0.3203, 155.8),
	(8, 'ru', 239, 0.2965, 277.6),
	(9, 'ru', 239, 0.3203, 216.4),
	(8, 'ru', 240, 0.1818, 187.5),
	(9, 'ru', 240, 0.1964, 149.5),
	(8, 'ru', 241, 0.1147, 154),
	(8, 'ru', 242, 0.1818, 397),
	(9, 'ru', 242, 0.1964, 308.5),
	(8, 'ru', 243, 0.1147, 162),
	(8, 'ru', 244, 0.1147, 163),
	(8, 'ru', 245, 0.1147, 164),
	(8, 'ru', 246, 0.1147, 165),
	(8, 'ru', 247, 0.1147, 172),
	(9, 'ru', 247, 0.1239, 137),
	(8, 'ru', 248, 0.1818, 396),
	(16, 'ru', 249, 0.1103, 231),
	(8, 'ru', 249, 0.322, 351.667),
	(8, 'ru', 250, 0.1147, 175),
	(9, 'ru', 250, 0.1239, 138),
	(8, 'ru', 251, 0.1147, 177),
	(8, 'ru', 252, 0.1147, 178),
	(9, 'ru', 252, 0.1239, 140),
	(8, 'ru', 253, 0.1147, 179),
	(9, 'ru', 253, 0.1239, 141),
	(8, 'ru', 254, 0.1147, 183),
	(8, 'ru', 255, 0.1147, 184),
	(8, 'ru', 256, 0.1147, 185),
	(9, 'ru', 256, 0.1239, 144),
	(8, 'ru', 257, 0.1147, 187),
	(9, 'ru', 257, 0.1239, 146),
	(8, 'ru', 258, 0.1818, 200),
	(9, 'ru', 258, 0.1964, 156),
	(8, 'ru', 259, 0.1147, 194),
	(8, 'ru', 260, 0.1147, 195),
	(8, 'ru', 261, 0.1147, 197),
	(8, 'ru', 262, 0.1147, 199),
	(8, 'ru', 263, 0.1147, 200),
	(9, 'ru', 263, 0.1239, 153),
	(8, 'ru', 264, 0.1147, 201),
	(9, 'ru', 264, 0.1239, 154),
	(8, 'ru', 265, 0.1147, 209),
	(8, 'ru', 266, 0.1147, 210),
	(9, 'ru', 266, 0.1239, 162),
	(8, 'ru', 267, 0.1147, 211),
	(8, 'ru', 268, 0.1147, 212),
	(9, 'ru', 268, 0.1239, 163),
	(8, 'ru', 269, 0.1147, 220),
	(8, 'ru', 270, 0.1147, 221),
	(8, 'ru', 271, 0.1147, 232),
	(9, 'ru', 272, 0.1239, 496),
	(8, 'ru', 272, 0.1818, 441),
	(8, 'ru', 273, 0.1147, 236),
	(9, 'ru', 273, 0.1239, 181),
	(9, 'ru', 274, 0.1239, 361),
	(8, 'ru', 274, 0.1818, 350.5),
	(8, 'ru', 275, 0.1147, 238),
	(9, 'ru', 275, 0.1239, 183),
	(8, 'ru', 276, 0.1818, 300.5),
	(9, 'ru', 276, 0.1964, 231.5),
	(8, 'ru', 277, 0.1818, 300),
	(9, 'ru', 277, 0.1964, 231.5),
	(8, 'ru', 278, 0.1147, 241),
	(9, 'ru', 278, 0.1239, 186),
	(8, 'ru', 279, 0.1147, 242),
	(8, 'ru', 280, 0.1147, 249),
	(9, 'ru', 280, 0.1239, 193),
	(8, 'ru', 281, 0.1147, 250),
	(9, 'ru', 281, 0.1239, 194),
	(8, 'ru', 282, 0.1147, 251),
	(8, 'ru', 283, 0.1147, 252),
	(8, 'ru', 284, 0.1147, 253),
	(8, 'ru', 285, 0.1147, 257),
	(9, 'ru', 285, 0.1239, 198),
	(8, 'ru', 286, 0.1147, 258),
	(9, 'ru', 286, 0.1239, 199),
	(8, 'ru', 287, 0.1147, 259),
	(9, 'ru', 287, 0.1239, 200),
	(8, 'ru', 288, 0.1147, 260),
	(8, 'ru', 289, 0.1147, 261),
	(9, 'ru', 289, 0.1239, 201),
	(8, 'ru', 290, 0.1147, 267),
	(9, 'ru', 290, 0.1239, 207),
	(8, 'ru', 291, 0.1818, 291.5),
	(9, 'ru', 291, 0.1964, 224.5),
	(8, 'ru', 292, 0.1147, 269),
	(9, 'ru', 292, 0.1239, 209),
	(8, 'ru', 293, 0.1147, 270),
	(9, 'ru', 293, 0.1239, 210),
	(8, 'ru', 294, 0.1147, 272),
	(9, 'ru', 294, 0.1239, 212),
	(8, 'ru', 295, 0.1147, 273),
	(9, 'ru', 295, 0.1239, 213),
	(8, 'ru', 296, 0.1147, 274),
	(9, 'ru', 296, 0.1239, 214),
	(8, 'ru', 297, 0.1147, 280),
	(9, 'ru', 297, 0.1239, 220),
	(8, 'ru', 298, 0.1147, 281),
	(8, 'ru', 299, 0.1147, 282),
	(9, 'ru', 299, 0.1239, 221),
	(8, 'ru', 300, 0.1147, 283),
	(8, 'ru', 301, 0.1818, 302),
	(12, 'ru', 301, 0.2685, 516),
	(16, 'ru', 301, 0.3664, 333.444),
	(14, 'ru', 301, 0.4234, 279.7),
	(13, 'ru', 301, 0.4298, 248.6),
	(8, 'ru', 302, 0.1147, 285),
	(8, 'ru', 303, 0.1147, 286),
	(9, 'ru', 303, 0.1239, 222),
	(8, 'ru', 304, 0.1147, 287),
	(9, 'ru', 304, 0.1239, 223),
	(8, 'ru', 305, 0.1147, 288),
	(8, 'ru', 306, 0.1147, 289),
	(8, 'ru', 307, 0.1147, 296),
	(8, 'ru', 308, 0.1147, 297),
	(8, 'ru', 309, 0.1147, 298),
	(9, 'ru', 309, 0.1239, 229),
	(8, 'ru', 310, 0.1147, 300),
	(8, 'ru', 311, 0.1147, 301),
	(9, 'ru', 311, 0.1239, 231),
	(8, 'ru', 312, 0.1147, 308),
	(9, 'ru', 312, 0.1239, 238),
	(8, 'ru', 313, 0.1147, 309),
	(8, 'ru', 314, 0.1147, 310),
	(8, 'ru', 315, 0.1147, 311),
	(8, 'ru', 316, 0.1147, 312),
	(8, 'ru', 317, 0.1147, 313),
	(9, 'ru', 317, 0.1239, 239),
	(8, 'ru', 318, 0.1147, 314),
	(8, 'ru', 319, 0.1147, 317),
	(9, 'ru', 319, 0.1239, 243),
	(8, 'ru', 320, 0.1147, 318),
	(8, 'ru', 321, 0.1147, 319),
	(8, 'ru', 322, 0.1147, 321),
	(8, 'ru', 323, 0.1147, 322),
	(9, 'ru', 323, 0.1239, 244),
	(8, 'ru', 324, 0.1147, 324),
	(9, 'ru', 324, 0.1239, 246),
	(8, 'ru', 325, 0.1147, 330),
	(8, 'ru', 326, 0.1147, 332),
	(8, 'ru', 327, 0.1147, 333),
	(9, 'ru', 327, 0.1239, 254),
	(8, 'ru', 328, 0.1147, 335),
	(9, 'ru', 328, 0.1239, 256),
	(8, 'ru', 329, 0.1147, 341),
	(9, 'ru', 329, 0.1239, 262),
	(8, 'ru', 330, 0.1147, 342),
	(9, 'ru', 330, 0.1239, 263),
	(8, 'ru', 331, 0.1147, 344),
	(9, 'ru', 331, 0.1239, 265),
	(8, 'ru', 332, 0.1147, 346),
	(8, 'ru', 333, 0.1147, 347),
	(9, 'ru', 333, 0.1239, 266),
	(8, 'ru', 334, 0.1147, 348),
	(8, 'ru', 335, 0.1147, 349),
	(9, 'ru', 335, 0.1239, 267),
	(8, 'ru', 336, 0.1147, 356),
	(9, 'ru', 336, 0.1239, 274),
	(8, 'ru', 337, 0.1147, 363),
	(9, 'ru', 337, 0.1239, 280),
	(8, 'ru', 338, 0.1147, 364),
	(9, 'ru', 338, 0.1239, 281),
	(8, 'ru', 339, 0.1147, 365),
	(9, 'ru', 339, 0.1239, 282),
	(8, 'ru', 340, 0.1147, 371),
	(9, 'ru', 340, 0.1239, 288),
	(8, 'ru', 341, 0.1147, 372),
	(9, 'ru', 341, 0.1239, 289),
	(8, 'ru', 342, 0.1147, 373),
	(8, 'ru', 343, 0.1147, 374),
	(9, 'ru', 343, 0.1239, 290),
	(8, 'ru', 344, 0.1147, 375),
	(9, 'ru', 344, 0.1239, 291),
	(8, 'ru', 345, 0.1147, 376),
	(8, 'ru', 346, 0.1147, 377),
	(9, 'ru', 346, 0.1239, 292),
	(8, 'ru', 347, 0.1818, 448),
	(8, 'ru', 348, 0.1147, 379),
	(8, 'ru', 349, 0.1147, 380),
	(8, 'ru', 350, 0.1147, 387),
	(9, 'ru', 350, 0.1239, 300),
	(8, 'ru', 351, 0.1147, 389),
	(8, 'ru', 352, 0.1147, 390),
	(8, 'ru', 353, 0.1147, 391),
	(8, 'ru', 354, 0.1147, 392),
	(9, 'ru', 354, 0.1239, 301),
	(9, 'ru', 355, 0.1239, 302),
	(8, 'ru', 355, 0.1818, 405),
	(9, 'ru', 356, 0.1239, 303),
	(8, 'ru', 356, 0.1818, 406),
	(8, 'ru', 357, 0.1147, 396),
	(9, 'ru', 357, 0.1239, 305),
	(16, 'ru', 358, 0.1103, 308),
	(8, 'ru', 358, 0.1147, 402),
	(9, 'ru', 358, 0.1239, 311),
	(12, 'ru', 358, 0.3246, 625.667),
	(14, 'ru', 358, 0.3672, 276.857),
	(13, 'ru', 358, 0.3727, 218.714),
	(8, 'ru', 359, 0.1147, 403),
	(9, 'ru', 359, 0.1239, 312),
	(8, 'ru', 360, 0.1147, 404),
	(9, 'ru', 360, 0.1239, 313),
	(8, 'ru', 361, 0.1147, 412),
	(8, 'ru', 362, 0.1147, 413),
	(9, 'ru', 362, 0.1239, 321),
	(8, 'ru', 363, 0.1147, 414),
	(9, 'ru', 363, 0.1239, 322),
	(8, 'ru', 364, 0.1147, 415),
	(9, 'ru', 364, 0.1239, 323),
	(8, 'ru', 365, 0.1147, 416),
	(8, 'ru', 366, 0.1147, 419),
	(9, 'ru', 366, 0.1239, 324),
	(8, 'ru', 367, 0.1818, 476),
	(9, 'ru', 367, 0.1964, 367.5),
	(8, 'ru', 368, 0.1147, 421),
	(9, 'ru', 368, 0.1239, 326),
	(8, 'ru', 369, 0.1147, 423),
	(9, 'ru', 369, 0.1239, 328),
	(8, 'ru', 370, 0.1147, 429),
	(9, 'ru', 370, 0.1239, 334),
	(8, 'ru', 371, 0.1147, 431),
	(8, 'ru', 372, 0.1147, 433),
	(8, 'ru', 373, 0.1147, 434),
	(9, 'ru', 373, 0.1239, 337),
	(8, 'ru', 374, 0.1147, 435),
	(8, 'ru', 375, 0.1147, 448),
	(16, 'ru', 376, 0.1103, 618),
	(8, 'ru', 376, 0.1147, 449),
	(8, 'ru', 377, 0.1147, 451),
	(9, 'ru', 377, 0.1239, 351),
	(8, 'ru', 378, 0.1147, 452),
	(8, 'ru', 379, 0.1147, 453),
	(8, 'ru', 380, 0.1147, 454),
	(9, 'ru', 380, 0.1239, 352),
	(8, 'ru', 381, 0.1147, 462),
	(9, 'ru', 381, 0.1239, 360),
	(8, 'ru', 382, 0.1147, 470),
	(9, 'ru', 382, 0.1239, 367),
	(8, 'ru', 383, 0.1147, 471),
	(8, 'ru', 384, 0.1147, 472),
	(9, 'ru', 384, 0.1239, 368),
	(8, 'ru', 385, 0.1147, 476),
	(8, 'ru', 386, 0.1147, 479),
	(9, 'ru', 386, 0.1239, 372),
	(8, 'ru', 387, 0.1147, 480),
	(8, 'ru', 388, 0.1147, 481),
	(8, 'ru', 389, 0.1147, 482),
	(9, 'ru', 389, 0.1239, 373),
	(8, 'ru', 390, 0.1147, 483),
	(9, 'ru', 390, 0.1239, 374),
	(8, 'ru', 391, 0.1147, 484),
	(8, 'ru', 392, 0.1147, 485),
	(10, 'ru', 392, 0.1197, 268),
	(8, 'ru', 393, 0.1147, 491),
	(9, 'ru', 393, 0.1239, 380),
	(8, 'ru', 394, 0.1147, 492),
	(8, 'ru', 395, 0.1147, 493),
	(8, 'ru', 396, 0.1147, 495),
	(8, 'ru', 397, 0.1147, 497),
	(9, 'ru', 397, 0.1239, 382),
	(12, 'ru', 397, 0.1833, 325),
	(8, 'ru', 398, 0.1147, 498),
	(9, 'ru', 398, 0.1239, 383),
	(8, 'ru', 399, 0.1147, 499),
	(9, 'ru', 399, 0.1239, 384),
	(16, 'ru', 400, 0.1103, 577),
	(8, 'ru', 400, 0.1147, 505),
	(9, 'ru', 400, 0.1239, 390),
	(8, 'ru', 401, 0.1147, 507),
	(8, 'ru', 402, 0.1147, 508),
	(9, 'ru', 402, 0.1239, 392),
	(8, 'ru', 403, 0.1147, 516),
	(9, 'ru', 403, 0.1239, 400),
	(8, 'ru', 404, 0.1147, 517),
	(8, 'ru', 405, 0.1147, 519),
	(8, 'ru', 406, 0.1147, 520),
	(8, 'ru', 407, 0.1147, 521),
	(9, 'ru', 407, 0.1239, 401),
	(8, 'ru', 408, 0.1147, 522),
	(12, 'ru', 408, 0.1156, 82),
	(13, 'ru', 408, 0.3487, 273.5),
	(14, 'ru', 408, 0.4066, 259.556),
	(8, 'ru', 409, 0.1147, 524),
	(9, 'ru', 409, 0.1239, 402),
	(8, 'ru', 410, 0.1147, 530),
	(9, 'ru', 410, 0.1239, 408),
	(8, 'ru', 411, 0.1147, 531),
	(9, 'ru', 411, 0.1239, 409),
	(8, 'ru', 412, 0.1147, 533),
	(9, 'ru', 412, 0.1239, 411),
	(8, 'ru', 413, 0.1147, 534),
	(9, 'ru', 413, 0.1239, 412),
	(8, 'ru', 414, 0.1147, 535),
	(8, 'ru', 415, 0.1147, 536),
	(16, 'ru', 415, 0.2851, 436.2),
	(12, 'ru', 415, 0.2989, 343.2),
	(13, 'ru', 415, 0.3211, 254),
	(14, 'ru', 415, 0.3436, 216.667),
	(8, 'ru', 416, 0.1147, 538),
	(8, 'ru', 417, 0.1147, 545),
	(8, 'ru', 418, 0.1147, 549),
	(16, 'ru', 419, 0.1103, 161),
	(8, 'ru', 419, 0.1147, 550),
	(8, 'ru', 420, 0.1147, 554),
	(9, 'ru', 420, 0.1239, 422),
	(8, 'ru', 421, 0.1147, 555),
	(8, 'ru', 422, 0.1147, 556),
	(9, 'ru', 422, 0.1239, 423),
	(8, 'ru', 423, 0.1147, 558),
	(9, 'ru', 423, 0.1239, 425),
	(8, 'ru', 424, 0.1147, 566),
	(9, 'ru', 424, 0.1239, 433),
	(8, 'ru', 425, 0.1147, 568),
	(9, 'ru', 425, 0.1239, 435),
	(8, 'ru', 426, 0.1147, 569),
	(9, 'ru', 426, 0.1239, 436),
	(8, 'ru', 427, 0.1147, 571),
	(9, 'ru', 427, 0.1239, 438),
	(8, 'ru', 428, 0.1147, 573),
	(8, 'ru', 429, 0.1147, 579),
	(9, 'ru', 429, 0.1239, 444),
	(8, 'ru', 430, 0.1147, 581),
	(8, 'ru', 431, 0.1147, 582),
	(8, 'ru', 432, 0.1147, 583),
	(8, 'ru', 433, 0.1147, 584),
	(9, 'ru', 433, 0.1239, 445),
	(8, 'ru', 434, 0.1147, 585),
	(9, 'ru', 434, 0.1239, 446),
	(8, 'ru', 435, 0.1147, 586),
	(9, 'ru', 435, 0.1239, 447),
	(8, 'ru', 436, 0.1147, 588),
	(9, 'ru', 436, 0.1239, 449),
	(8, 'ru', 437, 0.1818, 594.5),
	(9, 'ru', 437, 0.1964, 454.5),
	(8, 'ru', 438, 0.1147, 596),
	(9, 'ru', 438, 0.1239, 457),
	(8, 'ru', 439, 0.1147, 597),
	(8, 'ru', 440, 0.1147, 598),
	(9, 'ru', 440, 0.1239, 458),
	(8, 'ru', 441, 0.1147, 599),
	(8, 'ru', 442, 0.1147, 601),
	(9, 'ru', 442, 0.1239, 460),
	(8, 'ru', 443, 0.1147, 607),
	(9, 'ru', 443, 0.1239, 466),
	(8, 'ru', 444, 0.1147, 609),
	(9, 'ru', 444, 0.1239, 467),
	(8, 'ru', 445, 0.1147, 610),
	(8, 'ru', 446, 0.1147, 611),
	(9, 'ru', 446, 0.1239, 468),
	(8, 'ru', 447, 0.1147, 617),
	(9, 'ru', 447, 0.1239, 474),
	(8, 'ru', 448, 0.1147, 618),
	(9, 'ru', 448, 0.1239, 475),
	(8, 'ru', 449, 0.1147, 620),
	(8, 'ru', 450, 0.1147, 621),
	(9, 'ru', 450, 0.1239, 477),
	(8, 'ru', 451, 0.1147, 622),
	(9, 'ru', 451, 0.1239, 478),
	(8, 'ru', 452, 0.1147, 624),
	(8, 'ru', 453, 0.1147, 625),
	(8, 'ru', 454, 0.1147, 626),
	(8, 'ru', 455, 0.1147, 627),
	(8, 'ru', 456, 0.1147, 628),
	(8, 'ru', 457, 0.1147, 629),
	(9, 'ru', 457, 0.1239, 480),
	(8, 'ru', 458, 0.1147, 630),
	(8, 'ru', 459, 0.1147, 631),
	(8, 'ru', 460, 0.1147, 640),
	(8, 'ru', 461, 0.1147, 641),
	(9, 'ru', 461, 0.1239, 489),
	(8, 'ru', 462, 0.1147, 642),
	(9, 'ru', 462, 0.1239, 490),
	(8, 'ru', 463, 0.1147, 651),
	(9, 'ru', 463, 0.1239, 498),
	(8, 'ru', 464, 0.1147, 653),
	(9, 'ru', 464, 0.1239, 499),
	(8, 'ru', 465, 0.1147, 655),
	(9, 'ru', 465, 0.1239, 500),
	(8, 'ru', 466, 0.1147, 657),
	(9, 'ru', 466, 0.1239, 502),
	(8, 'ru', 467, 0.1147, 658),
	(9, 'ru', 467, 0.1239, 503),
	(8, 'ru', 468, 0.1147, 659),
	(8, 'ru', 469, 0.1147, 660),
	(9, 'ru', 469, 0.1239, 504),
	(8, 'ru', 470, 0.1147, 661),
	(9, 'ru', 470, 0.1239, 505),
	(9, 'ru', 471, 0.1239, 85),
	(9, 'ru', 472, 0.1239, 86),
	(9, 'ru', 473, 0.1239, 106),
	(9, 'ru', 474, 0.1239, 129),
	(9, 'ru', 475, 0.1239, 182),
	(9, 'ru', 476, 0.1239, 240),
	(9, 'ru', 477, 0.1239, 476),
	(10, 'ru', 478, 0.3093, 150),
	(10, 'ru', 479, 0.359, 217),
	(10, 'ru', 480, 0.3793, 214.375),
	(10, 'ru', 481, 0.2778, 187.75),
	(10, 'ru', 482, 0.2393, 77),
	(10, 'ru', 483, 0.2778, 223),
	(10, 'ru', 484, 0.359, 242.429),
	(10, 'ru', 485, 0.3793, 264.875),
	(10, 'ru', 486, 0.359, 210.857),
	(10, 'ru', 487, 0.2778, 163.75),
	(16, 'ru', 488, 0.1103, 148),
	(10, 'ru', 488, 0.4675, 236.214),
	(10, 'ru', 489, 0.2778, 205.5),
	(10, 'ru', 490, 0.2393, 198),
	(10, 'ru', 491, 0.2778, 162.5),
	(10, 'ru', 492, 0.1197, 48),
	(10, 'ru', 493, 0.3093, 251.6),
	(10, 'ru', 494, 0.2393, 189),
	(10, 'ru', 495, 0.2778, 226.75),
	(10, 'ru', 496, 0.3093, 221),
	(10, 'ru', 497, 0.2393, 270.333),
	(10, 'ru', 498, 0.2778, 131),
	(10, 'ru', 499, 0.3359, 268.5),
	(10, 'ru', 500, 0.1197, 64),
	(10, 'ru', 501, 0.1197, 65),
	(10, 'ru', 502, 0.3093, 204.8),
	(10, 'ru', 503, 0.359, 240.286),
	(10, 'ru', 504, 0.3093, 273.8),
	(10, 'ru', 505, 0.359, 251.714),
	(10, 'ru', 506, 0.2778, 238.25),
	(10, 'ru', 507, 0.3093, 194.6),
	(14, 'ru', 508, 0.1224, 196),
	(10, 'ru', 508, 0.4428, 282.417),
	(10, 'ru', 509, 0.3093, 240.8),
	(10, 'ru', 510, 0.3359, 274.333),
	(10, 'ru', 511, 0.3359, 282.333),
	(16, 'ru', 512, 0.1103, 352),
	(10, 'ru', 512, 0.3093, 255.8),
	(10, 'ru', 513, 0.3359, 236.667),
	(10, 'ru', 514, 0.3359, 245.167),
	(10, 'ru', 515, 0.2778, 230.25),
	(10, 'ru', 516, 0.2393, 269),
	(10, 'ru', 517, 0.2393, 284.333),
	(10, 'ru', 518, 0.3359, 288.667),
	(10, 'ru', 519, 0.3793, 315.75),
	(10, 'ru', 520, 0.2778, 156),
	(10, 'ru', 521, 0.3793, 229.875),
	(16, 'ru', 522, 0.1748, 248),
	(10, 'ru', 522, 0.3093, 271.2),
	(10, 'ru', 523, 0.359, 264.286),
	(10, 'ru', 524, 0.3359, 268.5),
	(10, 'ru', 525, 0.3359, 269.5),
	(10, 'ru', 526, 0.2778, 315.5),
	(10, 'ru', 527, 0.2778, 316.5),
	(10, 'ru', 528, 0.1896, 210.5),
	(10, 'ru', 529, 0.1896, 211.5),
	(10, 'ru', 530, 0.2778, 287.75),
	(10, 'ru', 531, 0.1197, 171),
	(10, 'ru', 532, 0.2778, 351.75),
	(10, 'ru', 533, 0.3359, 269.167),
	(10, 'ru', 534, 0.2778, 297.75),
	(10, 'ru', 535, 0.3093, 360.4),
	(10, 'ru', 536, 0.3975, 324.333),
	(10, 'ru', 537, 0.2393, 269.667),
	(10, 'ru', 538, 0.1896, 277),
	(10, 'ru', 539, 0.2393, 318.333),
	(10, 'ru', 540, 0.1896, 346),
	(10, 'ru', 541, 0.1197, 269),
	(16, 'ru', 541, 0.2206, 527.667),
	(10, 'ru', 542, 0.1896, 343),
	(10, 'ru', 543, 0.1896, 374),
	(10, 'ru', 544, 0.2778, 408.5),
	(10, 'ru', 545, 0.1197, 474),
	(16, 'ru', 546, 0.1748, 329.5),
	(11, 'ru', 546, 0.3315, 238.143),
	(16, 'ru', 547, 0.1103, 54),
	(11, 'ru', 547, 0.4317, 382.857),
	(11, 'ru', 548, 0.3503, 274.125),
	(11, 'ru', 549, 0.442, 383),
	(11, 'ru', 550, 0.3961, 381.454),
	(11, 'ru', 551, 0.5131, 396.792),
	(11, 'ru', 552, 0.4207, 414.231),
	(11, 'ru', 553, 0.4998, 380),
	(11, 'ru', 554, 0.3671, 337.556),
	(11, 'ru', 555, 0.3823, 448.9),
	(11, 'ru', 556, 0.3823, 449.9),
	(11, 'ru', 557, 0.3503, 448.375),
	(11, 'ru', 558, 0.3315, 409.714),
	(11, 'ru', 559, 0.3503, 321),
	(11, 'ru', 560, 0.3961, 456),
	(11, 'ru', 561, 0.2856, 260.6),
	(11, 'ru', 562, 0.3671, 419.556),
	(11, 'ru', 563, 0.3671, 380),
	(11, 'ru', 564, 0.2566, 275),
	(11, 'ru', 565, 0.4089, 485.333),
	(11, 'ru', 566, 0.3315, 400.143),
	(11, 'ru', 567, 0.4207, 368.846),
	(11, 'ru', 568, 0.3823, 434),
	(11, 'ru', 569, 0.221, 442.667),
	(11, 'ru', 570, 0.3503, 363),
	(11, 'ru', 571, 0.3315, 522.143),
	(11, 'ru', 572, 0.3102, 423.5),
	(11, 'ru', 573, 0.3315, 436.429),
	(11, 'ru', 574, 0.3315, 437.429),
	(11, 'ru', 575, 0.2566, 464.75),
	(16, 'ru', 576, 0.1748, 386.5),
	(11, 'ru', 576, 0.5622, 453.818),
	(11, 'ru', 577, 0.3102, 428.333),
	(16, 'ru', 578, 0.1103, 388),
	(11, 'ru', 578, 0.3315, 483.286),
	(11, 'ru', 579, 0.2566, 524),
	(11, 'ru', 580, 0.3823, 578.1),
	(15, 'ru', 581, 0.2648, 283.5),
	(11, 'ru', 581, 0.3503, 398.875),
	(11, 'ru', 582, 0.3102, 401.833),
	(11, 'ru', 583, 0.221, 341),
	(14, 'ru', 584, 0.2842, 209.5),
	(11, 'ru', 584, 0.3671, 502),
	(11, 'ru', 585, 0.3671, 503),
	(11, 'ru', 586, 0.3315, 533),
	(11, 'ru', 587, 0.2566, 297),
	(11, 'ru', 588, 0.3315, 478.857),
	(11, 'ru', 589, 0.3102, 522),
	(16, 'ru', 590, 0.1103, 528),
	(11, 'ru', 590, 0.3503, 383.625),
	(11, 'ru', 591, 0.2856, 516.4),
	(11, 'ru', 592, 0.2566, 552),
	(16, 'ru', 593, 0.1103, 556),
	(11, 'ru', 593, 0.2566, 553),
	(11, 'ru', 594, 0.4089, 579.75),
	(11, 'ru', 595, 0.3671, 585.444),
	(11, 'ru', 596, 0.3671, 586.444),
	(11, 'ru', 597, 0.2566, 448.25),
	(11, 'ru', 598, 0.3315, 448.143),
	(16, 'ru', 599, 0.1103, 343),
	(15, 'ru', 599, 0.114, 364),
	(11, 'ru', 599, 0.4089, 550.75),
	(16, 'ru', 600, 0.1103, 426),
	(11, 'ru', 600, 0.3961, 537.818),
	(11, 'ru', 601, 0.3503, 632.75),
	(15, 'ru', 602, 0.114, 388),
	(11, 'ru', 602, 0.3503, 633.75),
	(11, 'ru', 603, 0.221, 453.667),
	(11, 'ru', 604, 0.3102, 536),
	(11, 'ru', 605, 0.221, 669.667),
	(11, 'ru', 606, 0.2566, 578),
	(11, 'ru', 607, 0.1751, 660.5),
	(11, 'ru', 608, 0.1751, 661.5),
	(12, 'ru', 609, 0.2313, 224),
	(16, 'ru', 610, 0.1103, 576),
	(12, 'ru', 610, 0.2313, 135.667),
	(16, 'ru', 611, 0.2561, 208.25),
	(12, 'ru', 611, 0.4912, 229.333),
	(13, 'ru', 611, 0.5078, 194),
	(14, 'ru', 611, 0.5376, 246.25),
	(12, 'ru', 612, 0.1833, 17.5),
	(12, 'ru', 613, 0.1833, 19.5),
	(12, 'ru', 614, 0.1156, 36),
	(12, 'ru', 615, 0.1156, 37),
	(12, 'ru', 616, 0.1156, 38),
	(12, 'ru', 617, 0.1156, 40),
	(14, 'ru', 617, 0.1224, 204),
	(12, 'ru', 618, 0.1156, 42),
	(16, 'ru', 619, 0.1748, 354),
	(13, 'ru', 619, 0.2884, 247.5),
	(14, 'ru', 619, 0.3672, 272.714),
	(12, 'ru', 619, 0.3842, 452.889),
	(12, 'ru', 620, 0.1833, 117.5),
	(12, 'ru', 621, 0.2685, 307.25),
	(12, 'ru', 622, 0.1156, 52),
	(12, 'ru', 623, 0.1156, 54),
	(12, 'ru', 624, 0.1156, 55),
	(13, 'ru', 625, 0.1242, 52),
	(14, 'ru', 625, 0.194, 196.5),
	(12, 'ru', 625, 0.2313, 280.667),
	(12, 'ru', 626, 0.1156, 58),
	(16, 'ru', 626, 0.1748, 204.5),
	(14, 'ru', 627, 0.1224, 464),
	(16, 'ru', 627, 0.2206, 622.667),
	(12, 'ru', 627, 0.2313, 177),
	(13, 'ru', 627, 0.2485, 245.667),
	(12, 'ru', 628, 0.1156, 67),
	(12, 'ru', 629, 0.1156, 69),
	(12, 'ru', 630, 0.1156, 70),
	(16, 'ru', 631, 0.1103, 263),
	(12, 'ru', 631, 0.4146, 415),
	(13, 'ru', 632, 0.2884, 232.75),
	(14, 'ru', 632, 0.3436, 299),
	(12, 'ru', 632, 0.3666, 455.5),
	(16, 'ru', 632, 0.3816, 313.8),
	(12, 'ru', 633, 0.2313, 314.667),
	(12, 'ru', 634, 0.2313, 315.667),
	(12, 'ru', 635, 0.2313, 284),
	(12, 'ru', 636, 0.1156, 84),
	(14, 'ru', 636, 0.1224, 427),
	(13, 'ru', 636, 0.1242, 291),
	(12, 'ru', 637, 0.2685, 274.25),
	(14, 'ru', 638, 0.1224, 450),
	(16, 'ru', 638, 0.2561, 516),
	(12, 'ru', 638, 0.2989, 401.4),
	(13, 'ru', 638, 0.3727, 272.714),
	(12, 'ru', 639, 0.2313, 158.667),
	(16, 'ru', 639, 0.2561, 544.25),
	(12, 'ru', 640, 0.1833, 206),
	(12, 'ru', 641, 0.1833, 101.5),
	(12, 'ru', 642, 0.1833, 276.5),
	(12, 'ru', 643, 0.1156, 104),
	(12, 'ru', 644, 0.2313, 203.333),
	(12, 'ru', 645, 0.1156, 111),
	(14, 'ru', 646, 0.1224, 390),
	(12, 'ru', 646, 0.1833, 151),
	(12, 'ru', 647, 0.1156, 120),
	(13, 'ru', 647, 0.1969, 38),
	(16, 'ru', 647, 0.2561, 407.75),
	(14, 'ru', 647, 0.2842, 182.5),
	(12, 'ru', 648, 0.1156, 121),
	(13, 'ru', 648, 0.1242, 164),
	(16, 'ru', 649, 0.2206, 229.667),
	(13, 'ru', 649, 0.3487, 260.5),
	(12, 'ru', 649, 0.3842, 396.667),
	(14, 'ru', 649, 0.4782, 247.143),
	(14, 'ru', 650, 0.1224, 178),
	(13, 'ru', 650, 0.1242, 364),
	(12, 'ru', 650, 0.2685, 353.75),
	(12, 'ru', 651, 0.1156, 124),
	(12, 'ru', 652, 0.1156, 125),
	(12, 'ru', 653, 0.1156, 133),
	(14, 'ru', 654, 0.1224, 203),
	(12, 'ru', 654, 0.2313, 158.667),
	(12, 'ru', 655, 0.1833, 151),
	(16, 'ru', 656, 0.1103, 34),
	(12, 'ru', 656, 0.1156, 137),
	(13, 'ru', 656, 0.1242, 61),
	(14, 'ru', 656, 0.194, 205.5),
	(12, 'ru', 657, 0.1156, 139),
	(14, 'ru', 658, 0.1224, 212),
	(16, 'ru', 658, 0.2561, 111.5),
	(12, 'ru', 658, 0.2685, 290),
	(12, 'ru', 659, 0.1156, 142),
	(16, 'ru', 660, 0.1103, 32),
	(12, 'ru', 660, 0.2685, 270.75),
	(13, 'ru', 660, 0.3727, 227.143),
	(14, 'ru', 660, 0.4234, 215.5),
	(12, 'ru', 661, 0.1156, 145),
	(14, 'ru', 662, 0.1224, 426),
	(13, 'ru', 662, 0.1242, 290),
	(12, 'ru', 662, 0.1833, 204.5),
	(12, 'ru', 663, 0.1156, 154),
	(12, 'ru', 664, 0.1156, 161),
	(12, 'ru', 665, 0.1833, 179.5),
	(12, 'ru', 666, 0.1833, 329.5),
	(12, 'ru', 667, 0.1156, 184),
	(12, 'ru', 668, 0.1156, 186),
	(12, 'ru', 669, 0.1156, 188),
	(16, 'ru', 670, 0.1103, 276),
	(12, 'ru', 670, 0.1156, 189),
	(14, 'ru', 670, 0.1224, 206),
	(12, 'ru', 671, 0.1156, 192),
	(12, 'ru', 672, 0.2313, 351.333),
	(12, 'ru', 673, 0.1156, 199),
	(16, 'ru', 674, 0.1103, 619),
	(12, 'ru', 674, 0.1156, 200),
	(14, 'ru', 674, 0.1224, 463),
	(13, 'ru', 674, 0.2485, 244.667),
	(12, 'ru', 675, 0.1833, 451.5),
	(13, 'ru', 675, 0.1969, 304.5),
	(12, 'ru', 676, 0.1833, 231),
	(12, 'ru', 677, 0.1156, 214),
	(12, 'ru', 678, 0.2313, 360.333),
	(16, 'ru', 678, 0.3097, 300.167),
	(12, 'ru', 679, 0.1156, 217),
	(12, 'ru', 680, 0.1156, 220),
	(12, 'ru', 681, 0.1156, 226),
	(13, 'ru', 682, 0.1242, 348),
	(16, 'ru', 682, 0.1748, 360),
	(12, 'ru', 682, 0.2685, 365.5),
	(12, 'ru', 683, 0.1833, 427),
	(12, 'ru', 684, 0.1833, 428),
	(12, 'ru', 685, 0.1833, 429),
	(12, 'ru', 686, 0.1833, 430),
	(12, 'ru', 687, 0.1833, 432),
	(12, 'ru', 688, 0.1833, 434),
	(12, 'ru', 689, 0.1156, 248),
	(12, 'ru', 690, 0.1833, 350),
	(12, 'ru', 691, 0.1156, 258),
	(12, 'ru', 692, 0.1156, 260),
	(12, 'ru', 693, 0.1156, 261),
	(12, 'ru', 694, 0.1156, 262),
	(12, 'ru', 695, 0.1156, 263),
	(12, 'ru', 696, 0.1156, 264),
	(12, 'ru', 697, 0.1156, 265),
	(12, 'ru', 698, 0.1156, 271),
	(16, 'ru', 698, 0.1748, 312),
	(14, 'ru', 698, 0.194, 210.5),
	(13, 'ru', 698, 0.1969, 219),
	(12, 'ru', 699, 0.1156, 273),
	(13, 'ru', 699, 0.1969, 296.5),
	(12, 'ru', 700, 0.1156, 274),
	(12, 'ru', 701, 0.2313, 310),
	(14, 'ru', 702, 0.1224, 458),
	(12, 'ru', 702, 0.2313, 391),
	(13, 'ru', 702, 0.2884, 267.75),
	(12, 'ru', 703, 0.1156, 301),
	(12, 'ru', 704, 0.1156, 303),
	(13, 'ru', 705, 0.1242, 362),
	(12, 'ru', 705, 0.2313, 436),
	(14, 'ru', 705, 0.2448, 214),
	(12, 'ru', 706, 0.1833, 509),
	(12, 'ru', 707, 0.1156, 307),
	(12, 'ru', 708, 0.1833, 323),
	(12, 'ru', 709, 0.1833, 324),
	(12, 'ru', 710, 0.1833, 326),
	(16, 'ru', 711, 0.1103, 616),
	(12, 'ru', 711, 0.1833, 502),
	(14, 'ru', 711, 0.194, 292),
	(12, 'ru', 712, 0.1156, 315),
	(13, 'ru', 712, 0.1242, 80),
	(14, 'ru', 712, 0.194, 224.5),
	(12, 'ru', 713, 0.1156, 316),
	(12, 'ru', 714, 0.1156, 332),
	(12, 'ru', 715, 0.1156, 334),
	(13, 'ru', 715, 0.1242, 337),
	(12, 'ru', 716, 0.1156, 336),
	(14, 'ru', 716, 0.1224, 415),
	(13, 'ru', 716, 0.1242, 279),
	(12, 'ru', 717, 0.1833, 449),
	(12, 'ru', 718, 0.1156, 349),
	(12, 'ru', 719, 0.1156, 350),
	(12, 'ru', 720, 0.1156, 352),
	(12, 'ru', 721, 0.1156, 354),
	(12, 'ru', 722, 0.1156, 368),
	(12, 'ru', 723, 0.1156, 369),
	(12, 'ru', 724, 0.1156, 375),
	(12, 'ru', 725, 0.1156, 377),
	(12, 'ru', 726, 0.1156, 379),
	(12, 'ru', 727, 0.1156, 380),
	(12, 'ru', 728, 0.1156, 382),
	(12, 'ru', 729, 0.1156, 384),
	(12, 'ru', 730, 0.1156, 385),
	(12, 'ru', 731, 0.1156, 386),
	(12, 'ru', 732, 0.1156, 391),
	(12, 'ru', 733, 0.1156, 397),
	(16, 'ru', 733, 0.2206, 437.333),
	(12, 'ru', 734, 0.1156, 398),
	(12, 'ru', 735, 0.1156, 399),
	(16, 'ru', 736, 0.1103, 153),
	(12, 'ru', 736, 0.1156, 407),
	(12, 'ru', 737, 0.1156, 409),
	(12, 'ru', 738, 0.1156, 411),
	(12, 'ru', 739, 0.1156, 412),
	(16, 'ru', 740, 0.1103, 376),
	(12, 'ru', 740, 0.2989, 478.6),
	(14, 'ru', 741, 0.1224, 461),
	(12, 'ru', 741, 0.1833, 417),
	(13, 'ru', 741, 0.2485, 242.667),
	(12, 'ru', 742, 0.1156, 416),
	(12, 'ru', 743, 0.1156, 420),
	(12, 'ru', 744, 0.1156, 423),
	(12, 'ru', 745, 0.1156, 433),
	(13, 'ru', 745, 0.1242, 346),
	(12, 'ru', 746, 0.1156, 436),
	(12, 'ru', 747, 0.1156, 438),
	(16, 'ru', 748, 0.1103, 31),
	(12, 'ru', 748, 0.1156, 440),
	(12, 'ru', 749, 0.1833, 567.5),
	(12, 'ru', 750, 0.1156, 442),
	(14, 'ru', 750, 0.194, 213.5),
	(13, 'ru', 750, 0.2485, 196.333),
	(12, 'ru', 751, 0.1156, 449),
	(12, 'ru', 752, 0.1156, 451),
	(14, 'ru', 753, 0.1224, 180),
	(12, 'ru', 753, 0.1833, 482.5),
	(16, 'ru', 753, 0.3496, 335),
	(12, 'ru', 754, 0.1156, 454),
	(12, 'ru', 755, 0.1156, 457),
	(12, 'ru', 756, 0.1156, 459),
	(12, 'ru', 757, 0.1156, 461),
	(14, 'ru', 757, 0.1224, 456),
	(13, 'ru', 757, 0.2485, 237.667),
	(12, 'ru', 758, 0.1833, 471),
	(12, 'ru', 759, 0.1833, 473),
	(12, 'ru', 760, 0.1156, 486),
	(12, 'ru', 761, 0.1156, 492),
	(16, 'ru', 762, 0.1103, 582),
	(12, 'ru', 762, 0.1156, 498),
	(14, 'ru', 762, 0.1224, 409),
	(13, 'ru', 762, 0.1242, 273),
	(12, 'ru', 763, 0.1156, 499),
	(16, 'ru', 764, 0.1103, 202),
	(12, 'ru', 764, 0.1156, 502),
	(12, 'ru', 765, 0.1156, 503),
	(16, 'ru', 766, 0.1103, 622),
	(12, 'ru', 766, 0.1156, 504),
	(12, 'ru', 767, 0.1156, 512),
	(12, 'ru', 768, 0.1156, 515),
	(12, 'ru', 769, 0.1156, 516),
	(12, 'ru', 770, 0.1156, 518),
	(12, 'ru', 771, 0.1156, 519),
	(12, 'ru', 772, 0.1156, 520),
	(12, 'ru', 773, 0.1156, 528),
	(12, 'ru', 774, 0.1156, 529),
	(12, 'ru', 775, 0.1156, 530),
	(12, 'ru', 776, 0.1156, 531),
	(12, 'ru', 777, 0.1156, 532),
	(12, 'ru', 778, 0.1156, 534),
	(12, 'ru', 779, 0.1156, 551),
	(12, 'ru', 780, 0.1156, 552),
	(12, 'ru', 781, 0.1833, 607.5),
	(16, 'ru', 781, 0.2851, 288.8),
	(12, 'ru', 782, 0.1156, 560),
	(12, 'ru', 783, 0.1156, 561),
	(16, 'ru', 784, 0.1103, 152),
	(14, 'ru', 784, 0.1224, 396),
	(12, 'ru', 784, 0.1833, 636.5),
	(12, 'ru', 785, 0.1156, 575),
	(16, 'ru', 785, 0.2561, 230),
	(12, 'ru', 786, 0.1156, 587),
	(12, 'ru', 787, 0.1156, 588),
	(12, 'ru', 788, 0.1156, 589),
	(12, 'ru', 789, 0.1156, 596),
	(12, 'ru', 790, 0.1156, 598),
	(12, 'ru', 791, 0.1156, 600),
	(12, 'ru', 792, 0.1156, 601),
	(12, 'ru', 793, 0.1156, 603),
	(12, 'ru', 794, 0.1156, 605),
	(12, 'ru', 795, 0.1156, 606),
	(12, 'ru', 796, 0.1156, 615),
	(12, 'ru', 797, 0.1156, 636),
	(12, 'ru', 798, 0.1156, 642),
	(12, 'ru', 799, 0.1156, 644),
	(12, 'ru', 800, 0.1156, 646),
	(12, 'ru', 801, 0.1156, 654),
	(12, 'ru', 802, 0.1156, 655),
	(12, 'ru', 803, 0.1156, 656),
	(16, 'ru', 804, 0.1103, 68),
	(12, 'ru', 804, 0.1156, 658),
	(12, 'ru', 805, 0.1156, 659),
	(12, 'ru', 806, 0.1156, 664),
	(16, 'ru', 806, 0.2206, 252.667),
	(12, 'ru', 807, 0.1156, 665),
	(12, 'ru', 808, 0.1156, 671),
	(12, 'ru', 809, 0.1156, 672),
	(12, 'ru', 810, 0.1156, 673),
	(12, 'ru', 811, 0.1156, 676),
	(12, 'ru', 812, 0.1156, 677),
	(13, 'ru', 812, 0.1242, 68),
	(14, 'ru', 812, 0.194, 212.5),
	(12, 'ru', 813, 0.1156, 681),
	(12, 'ru', 814, 0.1156, 687),
	(12, 'ru', 815, 0.1156, 688),
	(12, 'ru', 816, 0.1156, 692),
	(12, 'ru', 817, 0.1156, 697),
	(12, 'ru', 818, 0.1156, 700),
	(12, 'ru', 819, 0.1156, 703),
	(12, 'ru', 820, 0.1156, 705),
	(12, 'ru', 821, 0.1156, 709),
	(12, 'ru', 822, 0.1156, 711),
	(12, 'ru', 823, 0.1156, 713),
	(14, 'ru', 824, 0.1224, 23),
	(13, 'ru', 824, 0.1969, 14),
	(13, 'ru', 825, 0.1242, 36),
	(14, 'ru', 825, 0.194, 180.5),
	(13, 'ru', 826, 0.1242, 44),
	(14, 'ru', 826, 0.194, 188.5),
	(13, 'ru', 827, 0.1242, 46),
	(14, 'ru', 827, 0.194, 190.5),
	(13, 'ru', 828, 0.1242, 54),
	(14, 'ru', 828, 0.194, 198.5),
	(16, 'ru', 829, 0.1103, 151),
	(13, 'ru', 829, 0.1969, 117.5),
	(14, 'ru', 829, 0.2448, 197.333),
	(13, 'ru', 830, 0.1242, 63),
	(14, 'ru', 830, 0.194, 207.5),
	(13, 'ru', 831, 0.1242, 67),
	(14, 'ru', 831, 0.194, 211.5),
	(13, 'ru', 832, 0.1242, 70),
	(14, 'ru', 832, 0.194, 214.5),
	(13, 'ru', 833, 0.1242, 78),
	(14, 'ru', 833, 0.194, 222.5),
	(13, 'ru', 834, 0.1242, 81),
	(14, 'ru', 834, 0.194, 225.5),
	(13, 'ru', 835, 0.1242, 84),
	(14, 'ru', 835, 0.194, 228.5),
	(13, 'ru', 836, 0.1242, 85),
	(14, 'ru', 836, 0.194, 229.5),
	(13, 'ru', 837, 0.1242, 86),
	(14, 'ru', 837, 0.194, 230.5),
	(13, 'ru', 838, 0.1242, 87),
	(14, 'ru', 838, 0.194, 231.5),
	(13, 'ru', 839, 0.1242, 89),
	(14, 'ru', 839, 0.194, 233.5),
	(13, 'ru', 840, 0.1242, 90),
	(14, 'ru', 840, 0.194, 234.5),
	(13, 'ru', 841, 0.1242, 92),
	(14, 'ru', 841, 0.194, 236.5),
	(13, 'ru', 842, 0.1242, 93),
	(14, 'ru', 842, 0.194, 237.5),
	(16, 'ru', 843, 0.1103, 550),
	(13, 'ru', 843, 0.1969, 104.5),
	(13, 'ru', 844, 0.1969, 105.5),
	(13, 'ru', 845, 0.1969, 106.5),
	(14, 'ru', 846, 0.1224, 435),
	(13, 'ru', 846, 0.2485, 216.667),
	(14, 'ru', 847, 0.194, 430),
	(13, 'ru', 847, 0.2884, 235.25),
	(14, 'ru', 848, 0.1224, 438),
	(13, 'ru', 848, 0.2485, 219.667),
	(14, 'ru', 849, 0.194, 443),
	(13, 'ru', 849, 0.3487, 224.667),
	(14, 'ru', 850, 0.1224, 447),
	(13, 'ru', 850, 0.2485, 228.667),
	(14, 'ru', 851, 0.1224, 449),
	(13, 'ru', 851, 0.2485, 230.667),
	(14, 'ru', 852, 0.194, 453),
	(13, 'ru', 852, 0.3487, 234.667),
	(14, 'ru', 853, 0.1224, 452),
	(13, 'ru', 853, 0.2485, 233.667),
	(14, 'ru', 854, 0.1224, 459),
	(13, 'ru', 854, 0.2485, 240.667),
	(14, 'ru', 855, 0.1224, 460),
	(13, 'ru', 855, 0.2485, 241.667),
	(14, 'ru', 856, 0.1224, 462),
	(13, 'ru', 856, 0.2485, 243.667),
	(14, 'ru', 857, 0.1224, 467),
	(13, 'ru', 857, 0.2485, 248.667),
	(13, 'ru', 858, 0.1242, 156),
	(13, 'ru', 859, 0.1969, 167),
	(13, 'ru', 860, 0.1242, 158),
	(13, 'ru', 861, 0.1242, 160),
	(13, 'ru', 862, 0.1242, 163),
	(16, 'ru', 863, 0.1103, 551),
	(14, 'ru', 863, 0.1224, 422),
	(13, 'ru', 863, 0.1969, 225.5),
	(13, 'ru', 864, 0.1242, 166),
	(13, 'ru', 865, 0.1242, 170),
	(13, 'ru', 866, 0.1242, 172),
	(13, 'ru', 867, 0.1969, 175.5),
	(13, 'ru', 868, 0.1969, 176.5),
	(13, 'ru', 869, 0.1242, 181),
	(13, 'ru', 870, 0.1969, 287.5),
	(13, 'ru', 871, 0.1969, 290.5),
	(16, 'ru', 872, 0.1103, 586),
	(13, 'ru', 872, 0.1969, 298.5),
	(13, 'ru', 873, 0.1969, 305.5),
	(13, 'ru', 874, 0.1969, 315.5),
	(13, 'ru', 875, 0.1969, 317.5),
	(13, 'ru', 876, 0.1969, 319.5),
	(13, 'ru', 877, 0.1969, 320.5),
	(13, 'ru', 878, 0.1969, 323.5),
	(14, 'ru', 879, 0.1224, 411),
	(13, 'ru', 879, 0.1242, 275),
	(13, 'ru', 880, 0.1969, 278.5),
	(14, 'ru', 880, 0.2448, 338.667),
	(14, 'ru', 881, 0.1224, 420),
	(13, 'ru', 881, 0.1242, 284),
	(14, 'ru', 882, 0.1224, 421),
	(13, 'ru', 882, 0.1242, 285),
	(14, 'ru', 883, 0.1224, 428),
	(13, 'ru', 883, 0.1242, 292),
	(13, 'ru', 884, 0.1242, 339),
	(13, 'ru', 885, 0.1242, 355),
	(13, 'ru', 886, 0.1242, 356),
	(16, 'ru', 887, 0.1103, 489),
	(13, 'ru', 887, 0.1242, 365),
	(13, 'ru', 888, 0.1242, 368),
	(13, 'ru', 889, 0.1242, 369),
	(13, 'ru', 890, 0.1242, 371),
	(13, 'ru', 891, 0.1242, 373),
	(13, 'ru', 892, 0.1242, 375),
	(13, 'ru', 893, 0.1242, 376),
	(14, 'ru', 894, 0.2842, 154),
	(14, 'ru', 895, 0.3672, 182.286),
	(14, 'ru', 896, 0.2448, 218),
	(14, 'ru', 897, 0.2448, 223),
	(14, 'ru', 898, 0.2448, 226),
	(14, 'ru', 899, 0.2448, 227),
	(14, 'ru', 900, 0.194, 202.5),
	(14, 'ru', 901, 0.194, 205.5),
	(14, 'ru', 902, 0.194, 212.5),
	(16, 'ru', 903, 0.1748, 343.5),
	(14, 'ru', 903, 0.194, 213.5),
	(14, 'ru', 904, 0.194, 198),
	(14, 'ru', 905, 0.194, 199),
	(14, 'ru', 906, 0.194, 202),
	(14, 'ru', 907, 0.194, 203),
	(14, 'ru', 908, 0.194, 204),
	(14, 'ru', 909, 0.194, 206),
	(14, 'ru', 910, 0.194, 208),
	(14, 'ru', 911, 0.194, 210),
	(15, 'ru', 912, 0.114, 400),
	(14, 'ru', 912, 0.194, 211),
	(14, 'ru', 913, 0.194, 216),
	(14, 'ru', 914, 0.194, 219),
	(14, 'ru', 915, 0.1224, 176),
	(14, 'ru', 916, 0.1224, 179),
	(14, 'ru', 917, 0.1224, 182),
	(14, 'ru', 918, 0.1224, 186),
	(14, 'ru', 919, 0.1224, 193),
	(14, 'ru', 920, 0.1224, 195),
	(14, 'ru', 921, 0.1224, 209),
	(14, 'ru', 922, 0.1224, 210),
	(14, 'ru', 923, 0.1224, 213),
	(14, 'ru', 924, 0.1224, 392),
	(14, 'ru', 925, 0.1224, 397),
	(16, 'ru', 926, 0.1103, 154),
	(14, 'ru', 926, 0.1224, 399),
	(15, 'ru', 927, 0.1808, 15),
	(15, 'ru', 928, 0.1808, 16),
	(15, 'ru', 929, 0.1808, 17),
	(15, 'ru', 930, 0.1808, 18),
	(15, 'ru', 931, 0.1808, 19),
	(15, 'ru', 932, 0.1808, 20),
	(15, 'ru', 933, 0.1808, 21),
	(15, 'ru', 934, 0.114, 33),
	(15, 'ru', 935, 0.114, 34),
	(15, 'ru', 936, 0.2948, 231.6),
	(15, 'ru', 937, 0.114, 36),
	(15, 'ru', 938, 0.2948, 312.6),
	(15, 'ru', 939, 0.1808, 73.5),
	(15, 'ru', 940, 0.2281, 107.667),
	(15, 'ru', 941, 0.2281, 179.333),
	(15, 'ru', 942, 0.114, 41),
	(15, 'ru', 943, 0.2281, 319),
	(15, 'ru', 944, 0.3202, 245),
	(15, 'ru', 945, 0.4562, 301.933),
	(15, 'ru', 946, 0.3202, 381.667),
	(15, 'ru', 947, 0.2948, 271.4),
	(15, 'ru', 948, 0.3421, 323.571),
	(15, 'ru', 949, 0.3789, 251.778),
	(15, 'ru', 950, 0.2948, 211.4),
	(15, 'ru', 951, 0.2948, 199),
	(15, 'ru', 952, 0.2281, 207.667),
	(15, 'ru', 953, 0.2648, 249.5),
	(15, 'ru', 954, 0.1808, 157),
	(15, 'ru', 955, 0.114, 65),
	(15, 'ru', 956, 0.2648, 374.25),
	(15, 'ru', 957, 0.4456, 291.857),
	(15, 'ru', 958, 0.1808, 256),
	(15, 'ru', 959, 0.3202, 363.333),
	(15, 'ru', 960, 0.2281, 227.667),
	(15, 'ru', 961, 0.2948, 329.2),
	(15, 'ru', 962, 0.3202, 335),
	(15, 'ru', 963, 0.1808, 122),
	(15, 'ru', 964, 0.2948, 397.2),
	(15, 'ru', 965, 0.114, 84),
	(15, 'ru', 966, 0.2648, 240.5),
	(15, 'ru', 967, 0.114, 87),
	(15, 'ru', 968, 0.2281, 311.667),
	(15, 'ru', 969, 0.3202, 329.667),
	(15, 'ru', 970, 0.2648, 354),
	(15, 'ru', 971, 0.1808, 257),
	(15, 'ru', 972, 0.1808, 308.5),
	(15, 'ru', 973, 0.2648, 422.75),
	(15, 'ru', 974, 0.3202, 409.167),
	(15, 'ru', 975, 0.3789, 390.111),
	(15, 'ru', 976, 0.3615, 308.375),
	(15, 'ru', 977, 0.3421, 313.286),
	(15, 'ru', 978, 0.2281, 250),
	(15, 'ru', 979, 0.2281, 367.667),
	(15, 'ru', 980, 0.2648, 399.75),
	(15, 'ru', 981, 0.2281, 275),
	(15, 'ru', 982, 0.2948, 329.4),
	(15, 'ru', 983, 0.3421, 349.286),
	(15, 'ru', 984, 0.2648, 398.25),
	(15, 'ru', 985, 0.2948, 280.2),
	(15, 'ru', 986, 0.2948, 225.6),
	(15, 'ru', 987, 0.1808, 340.5),
	(15, 'ru', 988, 0.1808, 343),
	(15, 'ru', 989, 0.1808, 344),
	(15, 'ru', 990, 0.2281, 241.333),
	(15, 'ru', 991, 0.2281, 387),
	(15, 'ru', 992, 0.2281, 388),
	(15, 'ru', 993, 0.2281, 237.333),
	(15, 'ru', 994, 0.2648, 290.5),
	(15, 'ru', 995, 0.114, 141),
	(15, 'ru', 996, 0.114, 142),
	(15, 'ru', 997, 0.114, 143),
	(16, 'ru', 998, 0.1748, 180.5),
	(15, 'ru', 998, 0.2281, 288),
	(15, 'ru', 999, 0.2281, 190.667),
	(15, 'ru', 1000, 0.2648, 218.25),
	(15, 'ru', 1001, 0.114, 148),
	(15, 'ru', 1002, 0.114, 149),
	(15, 'ru', 1003, 0.1808, 303),
	(15, 'ru', 1004, 0.2648, 371.25),
	(15, 'ru', 1005, 0.2648, 328.75),
	(15, 'ru', 1006, 0.2648, 329.75),
	(15, 'ru', 1007, 0.2281, 359.667),
	(15, 'ru', 1008, 0.2281, 271),
	(15, 'ru', 1009, 0.2281, 290.667),
	(15, 'ru', 1010, 0.1808, 259.5),
	(15, 'ru', 1011, 0.3202, 363.167),
	(15, 'ru', 1012, 0.2648, 360),
	(15, 'ru', 1013, 0.2648, 361),
	(15, 'ru', 1014, 0.2281, 220.333),
	(15, 'ru', 1015, 0.1808, 271.5),
	(16, 'ru', 1016, 0.1103, 279),
	(15, 'ru', 1016, 0.1808, 347),
	(15, 'ru', 1017, 0.2281, 353.667),
	(15, 'ru', 1018, 0.1808, 327),
	(15, 'ru', 1019, 0.2648, 339.25),
	(15, 'ru', 1020, 0.2948, 401.2),
	(15, 'ru', 1021, 0.2281, 402),
	(15, 'ru', 1022, 0.2281, 266.667),
	(15, 'ru', 1023, 0.2281, 314.333),
	(15, 'ru', 1024, 0.114, 218),
	(15, 'ru', 1025, 0.2281, 349),
	(15, 'ru', 1026, 0.114, 221),
	(15, 'ru', 1027, 0.1808, 354),
	(15, 'ru', 1028, 0.1808, 410),
	(15, 'ru', 1029, 0.1808, 379),
	(15, 'ru', 1030, 0.1808, 380),
	(15, 'ru', 1031, 0.1808, 381),
	(15, 'ru', 1032, 0.2948, 404),
	(15, 'ru', 1033, 0.1808, 289.5),
	(15, 'ru', 1034, 0.2281, 376.667),
	(15, 'ru', 1035, 0.114, 272),
	(15, 'ru', 1036, 0.2281, 396.667),
	(15, 'ru', 1037, 0.114, 277),
	(15, 'ru', 1038, 0.2281, 344),
	(15, 'ru', 1039, 0.2281, 345),
	(15, 'ru', 1040, 0.114, 295),
	(15, 'ru', 1041, 0.2648, 387.25),
	(15, 'ru', 1042, 0.114, 325),
	(15, 'ru', 1043, 0.2648, 413.75),
	(15, 'ru', 1044, 0.2281, 396.333),
	(15, 'ru', 1045, 0.1808, 395.5),
	(15, 'ru', 1046, 0.2281, 457.667),
	(15, 'ru', 1047, 0.114, 387),
	(15, 'ru', 1048, 0.114, 389),
	(15, 'ru', 1049, 0.2281, 470.667),
	(15, 'ru', 1050, 0.114, 432),
	(15, 'ru', 1051, 0.1808, 510.5),
	(15, 'ru', 1052, 0.2281, 490.333),
	(15, 'ru', 1053, 0.114, 453),
	(15, 'ru', 1054, 0.114, 457),
	(15, 'ru', 1055, 0.114, 462),
	(15, 'ru', 1056, 0.114, 481),
	(15, 'ru', 1057, 0.114, 501),
	(15, 'ru', 1058, 0.114, 557),
	(16, 'ru', 1059, 0.2206, 42),
	(16, 'ru', 1060, 0.1748, 14.5),
	(16, 'ru', 1061, 0.1748, 16.5),
	(16, 'ru', 1062, 0.1748, 18.5),
	(16, 'ru', 1063, 0.2206, 230.667),
	(16, 'ru', 1064, 0.1103, 33),
	(16, 'ru', 1065, 0.1748, 179.5),
	(16, 'ru', 1066, 0.1103, 40),
	(16, 'ru', 1067, 0.1103, 41),
	(16, 'ru', 1068, 0.1748, 361),
	(16, 'ru', 1069, 0.1103, 46),
	(16, 'ru', 1070, 0.1748, 62.5),
	(16, 'ru', 1071, 0.1748, 63.5),
	(16, 'ru', 1072, 0.1103, 50),
	(16, 'ru', 1073, 0.3309, 489),
	(16, 'ru', 1074, 0.1103, 52),
	(16, 'ru', 1075, 0.1103, 60),
	(16, 'ru', 1076, 0.1103, 62),
	(16, 'ru', 1077, 0.1103, 63),
	(16, 'ru', 1078, 0.1748, 282),
	(16, 'ru', 1079, 0.1103, 66),
	(16, 'ru', 1080, 0.1103, 67),
	(16, 'ru', 1081, 0.2206, 295),
	(16, 'ru', 1082, 0.2206, 227.333),
	(16, 'ru', 1083, 0.1748, 269.5),
	(16, 'ru', 1084, 0.1748, 105),
	(16, 'ru', 1085, 0.1103, 81),
	(16, 'ru', 1086, 0.1103, 82),
	(16, 'ru', 1087, 0.1103, 83),
	(16, 'ru', 1088, 0.1748, 137),
	(16, 'ru', 1089, 0.1748, 141),
	(16, 'ru', 1090, 0.1103, 95),
	(16, 'ru', 1091, 0.2206, 102.667),
	(16, 'ru', 1092, 0.1103, 97),
	(16, 'ru', 1093, 0.1103, 98),
	(16, 'ru', 1094, 0.1748, 132),
	(16, 'ru', 1095, 0.2206, 233),
	(16, 'ru', 1096, 0.1748, 349.5),
	(16, 'ru', 1097, 0.1748, 156.5),
	(16, 'ru', 1098, 0.2851, 420.6),
	(16, 'ru', 1099, 0.1103, 112),
	(16, 'ru', 1100, 0.1103, 116),
	(16, 'ru', 1101, 0.2206, 301.333),
	(16, 'ru', 1102, 0.2561, 395.75),
	(16, 'ru', 1103, 0.1748, 230.5),
	(16, 'ru', 1104, 0.2851, 381.8),
	(16, 'ru', 1105, 0.1103, 123),
	(16, 'ru', 1106, 0.1748, 407.5),
	(16, 'ru', 1107, 0.1103, 133),
	(16, 'ru', 1108, 0.1103, 134),
	(16, 'ru', 1109, 0.1103, 135),
	(16, 'ru', 1110, 0.1103, 138),
	(16, 'ru', 1111, 0.1748, 397),
	(16, 'ru', 1112, 0.1748, 357.5),
	(16, 'ru', 1113, 0.1748, 357.5),
	(16, 'ru', 1114, 0.1103, 142),
	(16, 'ru', 1115, 0.1748, 325),
	(16, 'ru', 1116, 0.1103, 146),
	(16, 'ru', 1117, 0.1103, 149),
	(16, 'ru', 1118, 0.1103, 150),
	(16, 'ru', 1119, 0.1103, 157),
	(16, 'ru', 1120, 0.1103, 158),
	(16, 'ru', 1121, 0.1748, 427.5),
	(16, 'ru', 1122, 0.1748, 186),
	(16, 'ru', 1123, 0.1748, 284.5),
	(16, 'ru', 1124, 0.2206, 264),
	(16, 'ru', 1125, 0.1103, 169),
	(16, 'ru', 1126, 0.1103, 170),
	(16, 'ru', 1127, 0.1748, 278.5),
	(16, 'ru', 1128, 0.1748, 280.5),
	(16, 'ru', 1129, 0.1103, 180),
	(16, 'ru', 1130, 0.1103, 182),
	(16, 'ru', 1131, 0.1748, 331.5),
	(16, 'ru', 1132, 0.1748, 413.5),
	(16, 'ru', 1133, 0.1103, 187),
	(16, 'ru', 1134, 0.1748, 194.5),
	(16, 'ru', 1135, 0.1748, 278),
	(16, 'ru', 1136, 0.1103, 198),
	(16, 'ru', 1137, 0.1103, 199),
	(16, 'ru', 1138, 0.1103, 200),
	(16, 'ru', 1139, 0.1103, 203),
	(16, 'ru', 1140, 0.1748, 357.5),
	(16, 'ru', 1141, 0.1748, 358.5),
	(16, 'ru', 1142, 0.1748, 440),
	(16, 'ru', 1143, 0.1103, 218),
	(16, 'ru', 1144, 0.1748, 325.5),
	(16, 'ru', 1145, 0.1103, 223),
	(16, 'ru', 1146, 0.1748, 382.5),
	(16, 'ru', 1147, 0.1103, 225),
	(16, 'ru', 1148, 0.1103, 226),
	(16, 'ru', 1149, 0.1748, 387),
	(16, 'ru', 1150, 0.1748, 388),
	(16, 'ru', 1151, 0.1748, 460),
	(16, 'ru', 1152, 0.1103, 232),
	(16, 'ru', 1153, 0.1103, 233),
	(16, 'ru', 1154, 0.1103, 234),
	(16, 'ru', 1155, 0.1748, 374),
	(16, 'ru', 1156, 0.1103, 236),
	(16, 'ru', 1157, 0.1103, 237),
	(16, 'ru', 1158, 0.1103, 240),
	(16, 'ru', 1159, 0.1103, 241),
	(16, 'ru', 1160, 0.1103, 242),
	(16, 'ru', 1161, 0.1103, 243),
	(16, 'ru', 1162, 0.1103, 244),
	(16, 'ru', 1163, 0.1103, 246),
	(16, 'ru', 1164, 0.1103, 247),
	(16, 'ru', 1165, 0.1103, 257),
	(16, 'ru', 1166, 0.1103, 260),
	(16, 'ru', 1167, 0.1103, 264),
	(16, 'ru', 1168, 0.1103, 265),
	(16, 'ru', 1169, 0.1103, 267),
	(16, 'ru', 1170, 0.1103, 268),
	(16, 'ru', 1171, 0.1103, 269),
	(16, 'ru', 1172, 0.1103, 270),
	(16, 'ru', 1173, 0.1103, 271),
	(16, 'ru', 1174, 0.1748, 310),
	(16, 'ru', 1175, 0.1748, 379.5),
	(16, 'ru', 1176, 0.1748, 295.5),
	(16, 'ru', 1177, 0.1748, 297.5),
	(16, 'ru', 1178, 0.1748, 363.5),
	(16, 'ru', 1179, 0.2206, 376.667),
	(16, 'ru', 1180, 0.1103, 287),
	(16, 'ru', 1181, 0.1103, 289),
	(16, 'ru', 1182, 0.1103, 291),
	(16, 'ru', 1183, 0.1103, 292),
	(16, 'ru', 1184, 0.1103, 293),
	(16, 'ru', 1185, 0.1103, 295),
	(16, 'ru', 1186, 0.1748, 317.5),
	(16, 'ru', 1187, 0.1748, 463.5),
	(16, 'ru', 1188, 0.2851, 516.6),
	(16, 'ru', 1189, 0.2206, 535.333),
	(16, 'ru', 1190, 0.1103, 307),
	(16, 'ru', 1191, 0.1103, 309),
	(16, 'ru', 1192, 0.2206, 530.333),
	(16, 'ru', 1193, 0.1103, 314),
	(16, 'ru', 1194, 0.1103, 324),
	(16, 'ru', 1195, 0.1748, 453),
	(16, 'ru', 1196, 0.1103, 326),
	(16, 'ru', 1197, 0.1103, 327),
	(16, 'ru', 1198, 0.1103, 328),
	(16, 'ru', 1199, 0.1103, 329),
	(16, 'ru', 1200, 0.2206, 436.333),
	(16, 'ru', 1201, 0.1103, 332),
	(16, 'ru', 1202, 0.1103, 333),
	(16, 'ru', 1203, 0.1103, 341),
	(16, 'ru', 1204, 0.1103, 342),
	(16, 'ru', 1205, 0.1103, 344),
	(16, 'ru', 1206, 0.1103, 345),
	(16, 'ru', 1207, 0.1103, 347),
	(16, 'ru', 1208, 0.1103, 351),
	(16, 'ru', 1209, 0.1103, 353),
	(16, 'ru', 1210, 0.1103, 355),
	(16, 'ru', 1211, 0.1748, 457),
	(16, 'ru', 1212, 0.1748, 384.5),
	(16, 'ru', 1213, 0.1748, 385.5),
	(16, 'ru', 1214, 0.1103, 369),
	(16, 'ru', 1215, 0.1103, 370),
	(16, 'ru', 1216, 0.1103, 371),
	(16, 'ru', 1217, 0.1103, 372),
	(16, 'ru', 1218, 0.1103, 373),
	(16, 'ru', 1219, 0.1748, 417.5),
	(16, 'ru', 1220, 0.1103, 377),
	(16, 'ru', 1221, 0.1103, 379),
	(16, 'ru', 1222, 0.1103, 382),
	(16, 'ru', 1223, 0.1103, 383),
	(16, 'ru', 1224, 0.1748, 541),
	(16, 'ru', 1225, 0.1103, 394),
	(16, 'ru', 1226, 0.1103, 395),
	(16, 'ru', 1227, 0.1103, 396),
	(16, 'ru', 1228, 0.1103, 397),
	(16, 'ru', 1229, 0.1103, 406),
	(16, 'ru', 1230, 0.1103, 407),
	(16, 'ru', 1231, 0.1103, 412),
	(16, 'ru', 1232, 0.1748, 539.5),
	(16, 'ru', 1233, 0.1748, 540.5),
	(16, 'ru', 1234, 0.1103, 423),
	(16, 'ru', 1235, 0.1103, 424),
	(16, 'ru', 1236, 0.1103, 425),
	(16, 'ru', 1237, 0.1103, 429),
	(16, 'ru', 1238, 0.1103, 430),
	(16, 'ru', 1239, 0.1103, 431),
	(16, 'ru', 1240, 0.1103, 434),
	(16, 'ru', 1241, 0.1103, 435),
	(16, 'ru', 1242, 0.1103, 437),
	(16, 'ru', 1243, 0.1103, 438),
	(16, 'ru', 1244, 0.1103, 442),
	(16, 'ru', 1245, 0.1103, 446),
	(16, 'ru', 1246, 0.1103, 447),
	(16, 'ru', 1247, 0.1103, 448),
	(16, 'ru', 1248, 0.1103, 449),
	(16, 'ru', 1249, 0.1103, 461),
	(16, 'ru', 1250, 0.1103, 465),
	(16, 'ru', 1251, 0.1103, 467),
	(16, 'ru', 1252, 0.1103, 469),
	(16, 'ru', 1253, 0.1103, 471),
	(16, 'ru', 1254, 0.1103, 472),
	(16, 'ru', 1255, 0.1103, 474),
	(16, 'ru', 1256, 0.1103, 475),
	(16, 'ru', 1257, 0.1103, 485),
	(16, 'ru', 1258, 0.1103, 486),
	(16, 'ru', 1259, 0.1103, 488),
	(16, 'ru', 1260, 0.1103, 491),
	(16, 'ru', 1261, 0.1103, 492),
	(16, 'ru', 1262, 0.1103, 493),
	(16, 'ru', 1263, 0.1103, 494),
	(16, 'ru', 1264, 0.1103, 495),
	(16, 'ru', 1265, 0.1103, 496),
	(16, 'ru', 1266, 0.1103, 499),
	(16, 'ru', 1267, 0.1103, 502),
	(16, 'ru', 1268, 0.1103, 505),
	(16, 'ru', 1269, 0.1103, 507),
	(16, 'ru', 1270, 0.1103, 509),
	(16, 'ru', 1271, 0.1103, 510),
	(16, 'ru', 1272, 0.1103, 514),
	(16, 'ru', 1273, 0.1103, 520),
	(16, 'ru', 1274, 0.1103, 521),
	(16, 'ru', 1275, 0.1103, 522),
	(16, 'ru', 1276, 0.1748, 574),
	(16, 'ru', 1277, 0.1748, 577),
	(16, 'ru', 1278, 0.1103, 529),
	(16, 'ru', 1279, 0.1103, 532),
	(16, 'ru', 1280, 0.1103, 533),
	(16, 'ru', 1281, 0.1103, 540),
	(16, 'ru', 1282, 0.1103, 543),
	(16, 'ru', 1283, 0.1103, 544),
	(16, 'ru', 1284, 0.1103, 545),
	(16, 'ru', 1285, 0.1103, 546),
	(16, 'ru', 1286, 0.1748, 606.5),
	(16, 'ru', 1287, 0.1103, 552),
	(16, 'ru', 1288, 0.1103, 553),
	(16, 'ru', 1289, 0.1103, 555),
	(16, 'ru', 1290, 0.1103, 558),
	(16, 'ru', 1291, 0.1103, 566),
	(16, 'ru', 1292, 0.1103, 567),
	(16, 'ru', 1293, 0.1103, 568),
	(16, 'ru', 1294, 0.1103, 569),
	(16, 'ru', 1295, 0.1748, 627.5),
	(16, 'ru', 1296, 0.1748, 629.5),
	(16, 'ru', 1297, 0.1103, 580),
	(16, 'ru', 1298, 0.1748, 618.5),
	(16, 'ru', 1299, 0.1103, 584),
	(16, 'ru', 1300, 0.1103, 585),
	(16, 'ru', 1301, 0.1103, 587),
	(16, 'ru', 1302, 0.1103, 588),
	(16, 'ru', 1303, 0.1103, 589),
	(16, 'ru', 1304, 0.1103, 598),
	(16, 'ru', 1305, 0.1103, 599),
	(16, 'ru', 1306, 0.1103, 606),
	(16, 'ru', 1307, 0.1103, 608),
	(16, 'ru', 1308, 0.1103, 609),
	(16, 'ru', 1309, 0.1103, 610),
	(16, 'ru', 1310, 0.1103, 612),
	(16, 'ru', 1311, 0.1103, 615),
	(16, 'ru', 1312, 0.1103, 621),
	(16, 'ru', 1313, 0.1103, 623),
	(16, 'ru', 1314, 0.1103, 624),
	(16, 'ru', 1315, 0.1103, 629),
	(16, 'ru', 1316, 0.1103, 636),
	(16, 'ru', 1317, 0.1103, 647),
	(16, 'ru', 1318, 0.1103, 658),
	(16, 'ru', 1319, 0.1103, 660),
	(16, 'ru', 1320, 0.1103, 665),
	(16, 'ru', 1321, 0.1103, 687),
	(16, 'ru', 1322, 0.1103, 694);
/*!40000 ALTER TABLE `b_search_content_stem` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_search_content_text
DROP TABLE IF EXISTS `b_search_content_text`;
CREATE TABLE IF NOT EXISTS `b_search_content_text` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SEARCH_CONTENT_MD5` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `SEARCHABLE_CONTENT` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_search_content_text: ~13 rows (приблизительно)
/*!40000 ALTER TABLE `b_search_content_text` DISABLE KEYS */;
REPLACE INTO `b_search_content_text` (`SEARCH_CONTENT_ID`, `SEARCH_CONTENT_MD5`, `SEARCHABLE_CONTENT`) VALUES
	(3, '6ceaf8ae6dcb22daa364d1441da27d99', 'RR BLOG\r\n\r\n'),
	(5, '9b7a8d7a5560874c302b378132e1893a', 'СТАТЬЯ\r\n\r\n'),
	(6, '8950ab074107248abd0e31c88a128b80', 'СТАТЬЯ\r\nTEXT HERE....\r\n'),
	(7, 'd5049c1f1758bac2c46a5af5be20f39d', 'ARTICLE TITLE 1\r\nLOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISCING ELIT..\r\n\rLOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISCING ELIT, SED DO EIUSMOD TEMPOR INCIDIDUNT UT LABORE ET DOLORE MAGNA ALIQUA. LOBORTIS FEUGIAT VIVAMUS AT AUGUE EGET. ALIQUET NEC ULLAMCORPER SIT AMET RISUS. DIGNISSIM ENIM SIT AMET VENENATIS URNA CURSUS EGET. TURPIS EGESTAS PRETIUM AENEAN PHARETRA MAGNA AC PLACERAT. SED TEMPUS URNA ET PHARETRA PHARETRA MASSA MASSA ULTRICIES. RISUS NULLAM EGET FELIS EGET NUNC LOBORTIS. VEL EROS DONEC AC ODIO TEMPOR ORCI DAPIBUS ULTRICES IN. QUISQUE ID DIAM VEL QUAM. FAUCIBUS ET MOLESTIE AC FEUGIAT SED LECTUS VESTIBULUM MATTIS. SUSPENDISSE FAUCIBUS INTERDUM POSUERE LOREM IPSUM DOLOR. NON ODIO EUISMOD LACINIA AT QUIS RISUS. PURUS VIVERRA ACCUMSAN IN NISL NISI. DOLOR SIT AMET CONSECTETUR ADIPISCING ELIT. SEMPER AUCTOR NEQUE VITAE TEMPUS QUAM PELLENTESQUE NEC NAM ALIQUAM. PHARETRA VEL TURPIS NUNC EGET LOREM DOLOR SED VIVERRA. ELIT UT ALIQUAM PURUS SIT AMET LUCTUS VENENATIS LECTUS MAGNA. PRETIUM VIVERRA SUSPENDISSE POTENTI NULLAM AC TORTOR VITAE.\rQUISQUE EGESTAS DIAM IN ARCU CURSUS. BLANDIT LIBERO VOLUTPAT SED CRAS ORNARE ARCU DUI. SCELERISQUE MAURIS PELLENTESQUE PULVINAR PELLENTESQUE HABITANT MORBI. PRAESENT SEMPER FEUGIAT NIBH SED PULVINAR. POSUERE AC UT CONSEQUAT SEMPER. SEMPER RISUS IN HENDRERIT GRAVIDA RUTRUM QUISQUE. LACUS VIVERRA VITAE CONGUE EU CONSEQUAT AC. NULLA MALESUADA PELLENTESQUE ELIT EGET GRAVIDA CUM SOCIIS NATOQUE PENATIBUS. SAPIEN NEC SAGITTIS ALIQUAM MALESUADA. ULTRICIES LEO INTEGER MALESUADA NUNC VEL. MATTIS ULLAMCORPER VELIT SED ULLAMCORPER MORBI. NEC ULLAMCORPER SIT AMET RISUS NULLAM EGET FELIS. AMET CONSECTETUR ADIPISCING ELIT DUIS TRISTIQUE SOLLICITUDIN. ETIAM SIT AMET NISL PURUS IN. DIGNISSIM SODALES UT EU SEM INTEGER.\rVIVERRA MAURIS IN ALIQUAM SEM FRINGILLA UT. QUIS VARIUS QUAM QUISQUE ID DIAM VEL QUAM. MOLESTIE AC FEUGIAT SED LECTUS. METUS VULPUTATE EU SCELERISQUE FELIS IMPERDIET PROIN. VITAE AUCTOR EU AUGUE UT LECTUS ARCU BIBENDUM AT VARIUS. VESTIBULUM LOREM SED RISUS ULTRICIES. EGESTAS ERAT IMPERDIET SED EUISMOD NISI PORTA LOREM MOLLIS ALIQUAM. LEO URNA MOLESTIE AT ELEMENTUM. AC FELIS DONEC ET ODIO. TRISTIQUE NULLA ALIQUET ENIM TORTOR AT AUCTOR URNA NUNC. VELIT UT TORTOR PRETIUM VIVERRA SUSPENDISSE. TEMPOR NEC FEUGIAT NISL PRETIUM FUSCE. ALIQUET NIBH PRAESENT TRISTIQUE MAGNA SIT. NIBH NISL CONDIMENTUM ID VENENATIS. AUGUE NEQUE GRAVIDA IN FERMENTUM ET SOLLICITUDIN AC. TEMPUS IMPERDIET NULLA MALESUADA PELLENTESQUE ELIT EGET GRAVIDA. ET ODIO PELLENTESQUE DIAM VOLUTPAT COMMODO SED EGESTAS. SCELERISQUE VIVERRA MAURIS IN ALIQUAM.\rTURPIS MASSA SED ELEMENTUM TEMPUS EGESTAS SED SED. FUSCE ID VELIT UT TORTOR PRETIUM VIVERRA SUSPENDISSE POTENTI NULLAM. QUAM LACUS SUSPENDISSE FAUCIBUS INTERDUM POSUERE LOREM IPSUM. ODIO MORBI QUIS COMMODO ODIO AENEAN SED ADIPISCING. VULPUTATE ENIM NULLA ALIQUET PORTTITOR. SED AUGUE LACUS VIVERRA VITAE. CUM SOCIIS NATOQUE PENATIBUS ET MAGNIS DIS PARTURIENT. AC TURPIS EGESTAS SED TEMPUS URNA ET PHARETRA. BLANDIT MASSA ENIM NEC DUI NUNC MATTIS ENIM. CRAS SED FELIS EGET VELIT ALIQUET SAGITTIS ID CONSECTETUR PURUS. BIBENDUM AT VARIUS VEL PHARETRA. PORTA LOREM MOLLIS ALIQUAM UT PORTTITOR LEO A. EU TURPIS EGESTAS PRETIUM AENEAN PHARETRA MAGNA. PRAESENT ELEMENTUM FACILISIS LEO VEL FRINGILLA EST ULLAMCORPER. QUISQUE NON TELLUS ORCI AC AUCTOR. SCELERISQUE EU ULTRICES VITAE AUCTOR EU AUGUE. MALESUADA FAMES AC TURPIS EGESTAS INTEGER EGET ALIQUET NIBH PRAESENT.\rODIO FACILISIS MAURIS SIT AMET MASSA VITAE TORTOR CONDIMENTUM LACINIA. ALIQUET EGET SIT AMET TELLUS CRAS ADIPISCING. DUI ACCUMSAN SIT AMET NULLA FACILISI. RIDICULUS MUS MAURIS VITAE ULTRICIES LEO INTEGER MALESUADA NUNC VEL. NISI SCELERISQUE EU ULTRICES VITAE AUCTOR EU AUGUE UT LECTUS. PELLENTESQUE ADIPISCING COMMODO ELIT AT IMPERDIET DUI ACCUMSAN SIT AMET. ALIQUET NIBH PRAESENT TRISTIQUE MAGNA. AT URNA CONDIMENTUM MATTIS PELLENTESQUE ID. ET NETUS ET MALESUADA FAMES AC TURPIS. SIT AMET NULLA FACILISI MORBI TEMPUS IACULIS URNA ID VOLUTPAT. MAGNA FRINGILLA URNA PORTTITOR RHONCUS. SEM VIVERRA ALIQUET EGET SIT AMET TELLUS CRAS ADIPISCING ENIM. AT AUGUE EGET ARCU DICTUM. MALESUADA BIBENDUM ARCU VITAE ELEMENTUM CURABITUR VITAE.\r\n'),
	(8, '07a1d3dd9b47fa2531e30c8da84504b5', 'ARTICLE TITLE 2\r\nZOMBIE IPSUM REVERSUS AB VIRAL INFERNO...\r\n\rZOMBIE IPSUM REVERSUS AB VIRAL INFERNO, NAM RICK GRIMES MALUM CEREBRO. DE CARNE LUMBERING ANIMATA CORPORA QUAERITIS. SUMMUS BRAINS SIT​​, MORBO VEL MALEFICIA? DE APOCALYPSI GORGER OMERO UNDEAD SURVIVOR DICTUM MAURIS. HI MINDLESS MORTUIS SOULLESS CREATURAS, IMO EVIL STALKING MONSTRA ADVENTUS RESI DENTEVIL VULTUS COMEDAT CEREBELLA VIVENTIUM. QUI ANIMATED CORPSE, CRICKET BAT MAX BRUCKS TERRIBILEM INCESSU ZOMBY. THE VOODOO SACERDOS FLESH EATER, SUSCITAT MORTUOS COMEDERE CARNEM VIRUS. ZONBI TATTERED FOR SOLUM OCULI EORUM DEFUNCTIS GO LUM CEREBRO. NESCIO BRAINS AN UNDEAD ZOMBIES. SICUT MALUS PUTRID VOODOO HORROR. NIGH TOFTH ELIV INGDEAD.\rCUM HORRIBILEM WALKING DEAD RESURGERE DE CRAZED SEPULCRIS CREATURIS, ZOMBIE SICUT DE GRAVE FEEDING IRIDE ET SERPENS. PESTILENTIA, SHAUN OFTHE DEAD SCYTHE ANIMATED CORPSES IPSA SCREAMS. PESTILENTIA EST PLAGUE HAEC DECAYING AMBULABAT MORTUOS. SICUT ZEDER APATHETIC MALUS VOODOO. AENEAN A DOLOR PLAN ET TERROR SOULLESS VULNERUM CONTAGIUM ACCEDUNT, MORTUI IAM VIVAM UNLIFE. QUI TARDIUS MOVERI, BRID EOF REANIMATOR SED IN MAGNA COPIA SINT TERRIBILES UNDEATH LEGIONIS. ALII MISSING OCULIS ALIORUM SICUT SERPERE CRABS NOSTRAM. PUTRIDI BRAINDEAD ODORES KILL AND INFECT, AERE IMPLENT LEFT FOUR DEAD.\rLUCIO FULCI TREMOR EST DARK VIVOS MAGNA. EXPANSIS CREEPY ARM YOF DARKNESS ULNIS WITCHCRAFT MISSING CARNEM ARMIS KIRKMAN MOORE AND ADLARD CAERULEUM IN LOCIS. ROMERO MORBO CONGRESS AMARUS IN AURAS. NIHIL HORUM SAGITTIS TINCIDUNT, ZOMBIE SLACK-JAWED GELIDA SURVIVAL PORTENTA. THE UNLEASHED VIRUS EST, ET IAM ZOMBIE MORTUI AMBULABUNT SUPER TERRAM. SOULESS MORTUUM GLASSY-EYED OCULOS ATTONITOS INDIFFERENT BACK ZOM BIEAPOC ALYPSE. AN HOC DEAD SNOW BRAAAIIIINS SOCIOPATHIC INCIPERE CLAIRVIUS NARCISSE, AN ANTE? IS BELLO MUNDI Z?\rIN CRAVEN OMNI MEMORIA PATRIAE ZOMBIELAND CLAIRVIUS NARCISSE RELIGIONIS SUNT DIRI UNDEAD HISTORIARUM. GOLUMS, ZOMBIES UNRELENTING ET RAIMI FASCINATI BEHEADING. MALEFICIA! VEL CEMETERY MAN A MODERN BURSTING EYEBALLS PERHSAPS MORBI. A TERRENTI FLESH CONTAGIUM. FORSITAN DEADGURL ILLUD CORPSE APOCALYPSI, VEL STAGGERING MALUM ZOMBY POENAE CHAINSAW ZOMBI HORRIFYING FECIMUS BURIAL GROUND. INDEFLEXUS SHOTGUN COUP DE POUDRE MONSTRA PER PLATEAS CURRERE. FIT DE DECAY NOSTRA CARNE UNDEAD. POENITENTIAM VIOLENT ZOM BIEHIG HWAY AGITE RE:DEAD PŒNITENTIAM! VIVENS MORTUA SUNT APUD NOS NIGHT OF THE LIVING DEAD.\rWHYT ZOMBY UT FAMES AFTER DEATH CEREBRO VIRUS ENIM CARNIS GRUSOME, VISCERA ET ORGANA VIVENTIUM. SICUT SPARGIT VIRUS AD IMPETUM, QUI SUPERSUMUS FLESH EATING. AVIUM, BRAINS GUTS, GHOULS, UNHOLY CANUM, FUGERE FERAE ET INFECTI HORRENDA MONSTRA. VIDEMUS TWENTY-EIGHT DEFORMIS PALE, HORRENDA DAEMONUM. PANDUNTUR BRAINS PORTAE ROTTING INFERI. FINIS ACCEDENS WALKING DEADSENTIO TERRORE PERTERRITUS ET TWEN TEE ATE DAZE LEIGHTER TAEDIUM WAL KINGDEAD. THE HORROR, MONSTRA EPIDEMIC SIGNIFICANT FINEM. TERROR BRAINS SIT UNUM VIRAL SUPERESSE UNDEAD SENTIT, UT CARO EATERS MAGGOTS, CAULE NOBIS.\r\n'),
	(9, '2f146b96d7533bd09e6319ad174d122e', 'ARTICLE TITLE 3\r\nZOMBIES REVERSUS AB INFERNO, NAM MALUM CEREBRO...\r\n\rZOMBIES REVERSUS AB INFERNO, NAM MALUM CEREBRO. DE CARNE ANIMATA CORPORA QUAERITIS. SUMMUS SIT​​, MORBO VEL MALEFICIA? DE APOCALYPSI UNDEAD DICTUM MAURIS. HI MORTUIS SOULLESS CREATURAS, IMO MONSTRA ADVENTUS VULTUS COMEDAT CEREBELLA VIVENTIUM. QUI OFFENDERIT RAPTO, TERRIBILEM INCESSU. THE VOODOO SACERDOS SUSCITAT MORTUOS COMEDERE CARNEM. SEARCH FOR SOLUM OCULI EORUM DEFUNCTIS CEREBRO. NESCIO AN UNDEAD ZOMBIES. SICUT MALUS MOVIE HORROR.\rCUM HORRIBILEM RESURGERE DE SEPULCRIS CREATURIS, SICUT DE IRIDE ET SERPENS. PESTILENTIA, IPSA SCREAMS. PESTILENTIA EST HAEC AMBULABAT MORTUOS. SICUT MALUS VOODOO. AENEAN A DOLOR VULNERUM APERIRE ACCEDUNT, MORTUI IAM VIVAM. QUI TARDIUS MOVERI, SED IN MAGNA COPIA SINT TERRIBILES LEGIONIS. ALII MISSING OCULIS ALIORUM SICUT SERPERE CRABS NOSTRAM. PUTRIDI ODORES AERE IMPLENT.\rTREMOR EST VIVOS MAGNA. EXPANSIS ULNIS VIDEO MISSING CARNEM ARMIS CAERULEUM IN LOCIS. A MORBO AMARUS IN AURAS. NIHIL HORUM SAGITTIS TINCIDUNT, GELIDA PORTENTA. THE UNLEASHED VIRUS EST, ET IAM MORTUI AMBULABUNT SUPER TERRAM. SOULESS MORTUUM OCULOS ATTONITOS BACK ZOMBIES. AN HOC INCIPERE CLAIRVIUS NARCISSE, AN ANTE? IS BELLO MUNDI Z?\rIN OMNI MEMORIA PATRIAE RELIGIONIS SUNT DIRI UNDEAD HISTORIARUM. GOLUMS, ZOMBIES ET FASCINATI. MALEFICIA! VEL A MODERN PERHSAPS MORBI. A TERRENTI CONTAGIUM. FORSITAN ILLUD APOCALYPSI, VEL MALUM POENAE HORRIFYING FECIMUS. INDEFLEXUS MONSTRA PER PLATEAS CURRERE. FIT DE NOSTRA CARNE UNDEAD. POENITENTIAM AGITE PŒNITENTIAM! VIVENS MORTUA SUNT APUD NOS.\rUT FAMES CEREBRO ENIM CARNIS, VISCERA ET ORGANA VIVENTIUM. SICUT SPARGIT VIRUS AD IMPETUM, QUI SUPERSUMUS. AVIUM, CANUM, FUGERE FERAE ET INFECTI HORRENDA MONSTRA. VIDEMUS DEFORMIS HORRENDA DAEMONUM. PANDUNTUR PORTAE INFERI. FINIS ACCEDENS SENTIO TERRORE PERTERRITUS ET TAEDIUM. THE HORROR, MONSTRA SIGNIFICANT FINEM. TERROR SIT UNUM SUPERESSE SENTIT, UT CARO EATERS CAULE NOBIS.\r\n'),
	(10, '7da52dd113bfdb125a7935469be0e66f', 'ARTICLE TITLE 4\r\nBACON IPSUM DOLOR AMET JERKY DRUMSTICK BURGDOGGEN...\r\n\rBACON IPSUM DOLOR AMET JERKY DRUMSTICK BURGDOGGEN BUFFALO LANDJAEGER JOWL PANCETTA TURKEY SHOULDER. PORK CHOP CHISLIC SHANK KEVIN. PORK CHOP FLANK ALCATRA, PORK BELLY HAM HOCK TURDUCKEN CAPICOLA CUPIM TONGUE RUMP HAM BILTONG. CHICKEN PORCHETTA JOWL, RIBEYE BILTONG SPARE RIBS TURKEY ANDOUILLE PANCETTA BUFFALO MEATLOAF SHANK RUMP SAUSAGE.\rANDOUILLE COW CHICKEN SHANK BRISKET MEATBALL TURDUCKEN TAIL DONER VENISON. FLANK PROSCIUTTO BEEF RIBS PORCHETTA BUFFALO DRUMSTICK SHOULDER BRESAOLA. PORCHETTA BRESAOLA TURDUCKEN, PANCETTA COW JERKY PORK LOIN. PROSCIUTTO BRISKET CHUCK PORK BELLY SAUSAGE PORK LOIN TURKEY LEBERKAS STRIP STEAK ALCATRA MEATBALL RUMP BILTONG CAPICOLA. CHISLIC BRESAOLA TAIL, FILET MIGNON BALL TIP CHUCK FRANKFURTER MEATLOAF LEBERKAS SPARE RIBS SIRLOIN SALAMI PIG.\rJOWL STRIP STEAK TURKEY, BACON PORK LOIN BRISKET DRUMSTICK LEBERKAS RIBEYE PIG. PASTRAMI JERKY FATBACK DRUMSTICK SHORT LOIN BEEF. BACON LEBERKAS SHORT LOIN, TAIL SAUSAGE SPARE RIBS SHOULDER. TRI-TIP MEATBALL BRESAOLA SPARE RIBS SHORT LOIN SHANKLE HAM T-BONE. TURDUCKEN BRISKET STRIP STEAK FRANKFURTER, DRUMSTICK TRI-TIP PORK JOWL TENDERLOIN MEATBALL CHUCK PORK BELLY. PORCHETTA FLANK BALL TIP PANCETTA RIBEYE LANDJAEGER.\rGROUND ROUND COW CAPICOLA BEEF RIBS RUMP SHORT RIBS CORNED BEEF PIG. SHOULDER SPARE RIBS LANDJAEGER PICANHA, PROSCIUTTO STRIP STEAK MEATLOAF FILET MIGNON PIG LEBERKAS SHORT LOIN T-BONE CAPICOLA ANDOUILLE. LANDJAEGER ANDOUILLE MEATBALL PIG PORCHETTA PASTRAMI TURKEY, BILTONG PANCETTA FRANKFURTER. JERKY BILTONG SHANKLE FATBACK HAM HOCK BACON, TURKEY BURGDOGGEN BRISKET BOUDIN PASTRAMI. DONER JOWL BILTONG SALAMI TRI-TIP BEEF, PORK CHOP PASTRAMI STRIP STEAK MEATLOAF. CHICKEN VENISON MEATLOAF, PANCETTA JERKY ALCATRA FILET MIGNON DONER PIG SHORT RIBS.\rPORK CHOP FLANK PROSCIUTTO BURGDOGGEN. CAPICOLA SAUSAGE COW, CHUCK TURKEY LEBERKAS CHISLIC MEATLOAF VENISON JOWL PROSCIUTTO. FATBACK COW BOUDIN CHICKEN BILTONG SAUSAGE STRIP STEAK PORCHETTA CORNED BEEF. PORK ANDOUILLE CHUCK SALAMI SHANK HAM HOCK FATBACK T-BONE PROSCIUTTO RIBEYE FRANKFURTER JOWL BRISKET BEEF. BOUDIN SHORT RIBS CHICKEN, CAPICOLA SHORT LOIN MEATBALL FILET MIGNON TENDERLOIN RUMP TAIL. LEBERKAS FATBACK DRUMSTICK PORK BELLY, PICANHA FLANK PANCETTA SAUSAGE BOUDIN SHORT RIBS. PORK JERKY SALAMI KIELBASA PORCHETTA DRUMSTICK PANCETTA BEEF RIBS.\r\n'),
	(11, 'f244e1c4c51d9d31aff90ea65812b466', 'ARTICLE TITLE 5\r\nAPPLE PIE DRAGÉE JELLY MUFFIN CHOCOLATE...\r\n\rAPPLE PIE DRAGÉE JELLY MUFFIN CHOCOLATE. CHEESECAKE CANDY CANES CHEESECAKE LEMON DROPS APPLE PIE PASTRY SOUFFLÉ. LEMON DROPS GINGERBREAD FRUITCAKE CROISSANT SOUFFLÉ CHEESECAKE POWDER BONBON COOKIE. DANISH DONUT TART LIQUORICE. TART HALVAH DESSERT TIRAMISU. BONBON JELLY BEANS LEMON DROPS CHUPA CHUPS PASTRY. GUMMIES CANDY CAKE. MARSHMALLOW POWDER MUFFIN COTTON CANDY. BROWNIE CUPCAKE CARROT CAKE CHOCOLATE. CROISSANT CHOCOLATE CAKE JUJUBES DANISH MUFFIN CARAMELS FRUITCAKE CARROT CAKE COOKIE. GINGERBREAD CHOCOLATE CAKE DONUT BEAR CLAW JUJUBES BISCUIT. JELLY-O CANDY CANES CHOCOLATE BAR DESSERT JELLY MARZIPAN DRAGÉE. PUDDING CHOCOLATE CAKE BONBON PUDDING DESSERT ICING ICE CREAM.\rLOLLIPOP GINGERBREAD GUMMI BEARS DRAGÉE TART TOFFEE CANDY CANES CHOCOLATE CROISSANT. GINGERBREAD BONBON TIRAMISU JELLY BEANS CHOCOLATE BAR. DRAGÉE TOPPING MUFFIN TIRAMISU SWEET. POWDER TART CAKE LOLLIPOP BEAR CLAW APPLE PIE TART. PIE SWEET ROLL CANDY DANISH DANISH PUDDING CANDY. MARSHMALLOW SUGAR PLUM TART JELLY BEANS BEAR CLAW CUPCAKE CHUPA CHUPS JELLY DESSERT. TOPPING CHUPA CHUPS CHOCOLATE CAKE LIQUORICE. JELLY-O JUJUBES CARROT CAKE CAKE DONUT LOLLIPOP CANDY CANES BEAR CLAW. COTTON CANDY ICING TOOTSIE ROLL PASTRY. SUGAR PLUM POWDER COOKIE CANDY JELLY CARROT CAKE CAKE PASTRY CANDY CANES. LEMON DROPS PIE CHOCOLATE CAKE CANDY CANES CHOCOLATE CAKE. GUMMI BEARS GUMMIES WAFER JELLY-O CARROT CAKE MARZIPAN. CAKE CHEESECAKE CANDY CANES GUMMI BEARS JELLY.\rTOPPING TART GINGERBREAD DESSERT. CHOCOLATE CAKE DRAGÉE POWDER TOPPING FRUITCAKE. LIQUORICE APPLE PIE WAFER MARSHMALLOW BISCUIT DONUT HALVAH PUDDING CHEESECAKE. FRUITCAKE JUJUBES TOOTSIE ROLL BONBON. LIQUORICE MUFFIN OAT CAKE TOFFEE CHUPA CHUPS LIQUORICE FRUITCAKE. MACAROON SOUFFLÉ JELLY-O CARAMELS DONUT CUPCAKE PUDDING PIE. ICING LIQUORICE CHEESECAKE SWEET ROLL SWEET ROLL DESSERT. BONBON CHEESECAKE CANDY CAKE. TOPPING SOUFFLÉ CHOCOLATE CARROT CAKE MARSHMALLOW MACAROON TART CROISSANT. CHEESECAKE COTTON CANDY CROISSANT CARAMELS LOLLIPOP CAKE SOUFFLÉ CHOCOLATE BAR MARZIPAN. APPLE PIE POWDER BEAR CLAW. CUPCAKE LOLLIPOP LEMON DROPS PIE WAFER ICE CREAM DANISH. APPLE PIE GINGERBREAD JELLY BEANS BISCUIT TART. DANISH FRUITCAKE FRUITCAKE LIQUORICE.\rPUDDING DRAGÉE GINGERBREAD CHUPA CHUPS BROWNIE FRUITCAKE FRUITCAKE CHEESECAKE PUDDING. CHOCOLATE BAR DANISH SWEET ROLL CAKE SUGAR PLUM SESAME SNAPS TOFFEE LIQUORICE. COTTON CANDY JELLY CANDY CANES BISCUIT CHOCOLATE SWEET. MUFFIN TART MARSHMALLOW LIQUORICE DESSERT SOUFFLÉ CHOCOLATE BAR TART CUPCAKE. MUFFIN CAKE MARZIPAN JUJUBES PIE GINGERBREAD. COOKIE CUPCAKE PASTRY CHEESECAKE CHEESECAKE LEMON DROPS GUMMIES. CANDY PUDDING GUMMI BEARS. MUFFIN SWEET ROLL SWEET DANISH WAFER COTTON CANDY. WAFER TART CHOCOLATE BAR. TART TOFFEE JELLY BEANS BISCUIT POWDER. COTTON CANDY LOLLIPOP SUGAR PLUM BONBON SWEET GUMMI BEARS. BEAR CLAW TOOTSIE ROLL LEMON DROPS COTTON CANDY CHEESECAKE. BONBON TOPPING DANISH SWEET ROLL MACAROON LOLLIPOP. ICE CREAM DANISH BROWNIE LOLLIPOP DONUT LEMON DROPS BISCUIT DRAGÉE.\rTIRAMISU GUMMI BEARS PASTRY JELLY. SWEET ROLL CARROT CAKE LIQUORICE BONBON CHOCOLATE TIRAMISU DANISH OAT CAKE LEMON DROPS. CHOCOLATE CAKE WAFER MUFFIN CHUPA CHUPS. MACAROON CUPCAKE PASTRY BROWNIE CHOCOLATE BAR POWDER CHEESECAKE MARZIPAN. PIE CHUPA CHUPS CHOCOLATE CAKE GUMMI BEARS FRUITCAKE SESAME SNAPS FRUITCAKE BISCUIT CAKE. PASTRY SUGAR PLUM MUFFIN. LOLLIPOP LEMON DROPS BEAR CLAW TOPPING LOLLIPOP CAKE. MARSHMALLOW DONUT SUGAR PLUM LOLLIPOP MARZIPAN. BEAR CLAW CANDY CANES CAKE GUMMI BEARS GUMMIES JELLY. ICING CAKE POWDER GUMMI BEARS CUPCAKE. CARROT CAKE ICE CREAM SOUFFLÉ JELLY BEANS. SUGAR PLUM BEAR CLAW PIE DANISH ICING CUPCAKE CHOCOLATE DESSERT TIRAMISU. HALVAH SWEET ROLL TIRAMISU SUGAR PLUM LOLLIPOP JUJUBES CUPCAKE OAT CAKE.\r\n'),
	(12, '190899441255f9c5150e9128503a508e', 'ARTICLE TITLE 6\r\nYEAH WELL, YOU SHOULDN\'T DRINK...\r\n\rYEAH WELL, YOU SHOULDN\'T DRINK. MAYOR GOLDIE WILSON, I LIKE THE SOUND OF THAT. OH HEY, BIFF, HEY, GUYS, HOW ARE YOU DOING? WHAT DO YOU MEAN YOU\'VE SEEN THIS, IT\'S BRAND NEW. YOU\'RE GONNA BE IN THE CAR WITH HER.\rSHIT. HELLO, HELLO, ANYBODY HOME? THINK, MCFLY, THINK. I GOTTA HAVE TIME TO GET THEM RE-TYPED. DO YOU REALIZE WHAT WOULD HAPPEN IF I HAND IN MY REPORTS IN YOUR HANDWRITING. I\'LL GET FIRED. YOU WOULDN\'T WANT THAT TO HAPPEN WOULD YOU? WOULD YOU? DOC, YOU GOTTA HELP- OH, THEN I WANNA GIVE HER A CALL, I DON\'T WANT HER TO WORRY ABOUT YOU. I DON\'T KNOW, I CAN\'T KEEP UP WITH ALL OF YOUR BOYFRIENDS.\rEXCUSE ME. WHOA, THEY REALLY CLEANED THIS PLACE UP, LOOKS BRAND NEW. BUT I CAN\'T GO TO THE DANCE, I\'LL MISS MY FAVORITE TELEVISION PROGRAM, SCIENCE FICTION THEATER. WILL YOU TAKE CARE OF THAT? WATCH THIS. NOT ME, THE CAR, THE CAR. MY CALCULATIONS ARE CORRECT, WHEN THIS BABY HITS EIGHTY-EIGHT MILES PER HOUR, YOUR GONNA SEE SOME SERIOUS SHIT. WATCH THIS, WATCH THIS. HA, WHAT DID I TELL YOU, EIGHTY-EIGHT MILES PER HOUR. THE TEMPORAL DISPLACEMENT OCCURRED AT EXACTLY 1:20 A.M. AND ZERO SECONDS.\rUH, WELL, ACTUALLY, I FIGURED SINCE IT WASN\'T DUE TILL MONDAY- I THINK IT\'S TERRIBLE. GIRLS CHASING BOYS. WHEN I WAS YOUR AGE I NEVER CHASED A BOY, OR CALLED A BOY, OR SAT IN A PARKED CAR WITH A BOY. LOOK, I\'M JUST NOT READY TO ASK LORRAINE OUT TO THE DANCE, AND NOT YOU, NOR ANYBODY ELSE ON THIS PLANET IS GONNA MAKE ME CHANGE MY MIND. WAIT A MINUTE. WAIT A MINUTE, DOC. ARE YOU TELLING ME THAT IT\'S 8:25? GOOD EVENING, I\'M DOCTOR EMMETT BROWN. I\'M STANDING ON THE PARKING LOT OF TWIN PINES MALL. IT\'S SATURDAY MORNING, OCTOBER 26, 1985, 1:18 A.M. AND THIS IS TEMPORAL EXPERIMENT NUMBER ONE. C\'MON, EINY, HEY HEY BOY, GET IN THERE, THAT A BOY, IN YOU GO, GET DOWN, THAT\'S IT.\rTHAT\'S A FLORENCE NIGHTINGALE EFFECT. IT HAPPENS IN HOSPITALS WHEN NURSES FALL IN LOVE WITH THEIR PATIENTS. GO TO IT, KID. WHOA, THEY REALLY CLEANED THIS PLACE UP, LOOKS BRAND NEW. NO. AW YEAH, EVERYTHING IS GREAT. DON\'T PAY ANY ATTENTION TO HIM, HE\'S IN ONE OF HIS MOODS. SAM, QUIT FIDDLING WITH THAT THING, COME IN HERE TO DINNER. NOW LET\'S SEE, YOU ALREADY KNOW LORRAINE, THIS IS MILTON, THIS IS SALLY, THAT\'S TOBY, AND OVER THERE IN THE PLAYPEN IS LITTLE BABY JOEY.\r\n'),
	(13, '2f93af4285ec0cc04a1a0d45f7fa36a0', 'ARTICLE TITLE 7\r\nBUSEY IPSUM DOLOR SIT AMET...\r\n\rBUSEY IPSUM DOLOR SIT AMET. HAVE YOU URINATED? HAVE YOU DRAINED YOUR BLADDER? ARE YOU FREE? BECAUSE IF YOU HAVEN\'T IT WILL ONLY COME OUT LATER. I\'M GIVING YOU SOME INFORMATION THAT YOUR BODILY FLUIDS MAY PENETRATE YOUR CLOTHING FIBRE\'S WITHOUT WARNING.YOU EVER ROASTED DOUGHNUTS?\rYOU EVER ROASTED DOUGHNUTS?THE BEST WAY TO COMMUNICATE IS COMPATIBLE. COMPATIBLE COMMUNICATION IS LISTENING WITH OPEN EARS AND AN OPEN MIND, AND NOT BEING FEARFUL OR JUDGEMENTAL ABOUT WHAT YOU\'RE HEARING.SOMETIMES HORSES COUGH AND FART AT THE SAME TIME, SO STAY OUT OF THE RANGE OF ITS BUTT MUSCLE BECAUSE A HORSES BUTT MUSCLE IS THICK.\rGO WITH THE FEELING OF THE NATURE. TAKE IT EASY. KNOW WHY YOU\'RE HERE. AND REMEMBER TO BALANCE YOUR INTERNAL ENERGY WITH THE ENVIRONMENT.THE BEST WAY TO COMMUNICATE IS COMPATIBLE. COMPATIBLE COMMUNICATION IS LISTENING WITH OPEN EARS AND AN OPEN MIND, AND NOT BEING FEARFUL OR JUDGEMENTAL ABOUT WHAT YOU\'RE HEARING.\rIT\'S GOOD TO YELL AT PEOPLE AND TELL PEOPLE THAT YOU\'RE FROM TENNESEE, SO THAT WAY YOU\'LL BE SAFE.THE BEST WAY TO COMMUNICATE IS COMPATIBLE. COMPATIBLE COMMUNICATION IS LISTENING WITH OPEN EARS AND AN OPEN MIND, AND NOT BEING FEARFUL OR JUDGEMENTAL ABOUT WHAT YOU\'RE HEARING.\rDID YOU FEEL THAT? LOOK AT ME - I\'M NOT OUT OF BREATH ANYMORE!WHEN YOU GET LOST IN YOUR IMAGINATORY VAGUENESS, YOUR FORESIGHT WILL BECOME A NIMBLE VAGRANT.GO WITH THE FEELING OF THE NATURE. TAKE IT EASY. KNOW WHY YOU\'RE HERE. AND REMEMBER TO BALANCE YOUR INTERNAL ENERGY WITH THE ENVIRONMENT.\r\n'),
	(14, '0474adcfd65215c33ee66721e6067f98', 'ARTICLE TITLE 8\r\nLISTEN TO THE SILENCE...\r\n\rBUSEY IPSUM DOLOR SIT AMET. LISTEN TO THE SILENCE. AND WHEN THE SILENCE IS DEAFENING, YOU\'RE IN THE CENTER OF YOUR OWN UNIVERSE.I WRESTLED A BEAR ONCE. A 750LBS BLACK BEAR.THE MAGIC INDIAN IS A MYSTERIOUS SPIRITUAL FORCE, AND WE\'RE GOING TO CATHEDRAL ROCK, AND THAT\'S THE VORTEX OF THE HEART.\rHAVE YOU URINATED? HAVE YOU DRAINED YOUR BLADDER? ARE YOU FREE? BECAUSE IF YOU HAVEN\'T IT WILL ONLY COME OUT LATER. I\'M GIVING YOU SOME INFORMATION THAT YOUR BODILY FLUIDS MAY PENETRATE YOUR CLOTHING FIBRE\'S WITHOUT WARNING.IT\'S OK TO GET RIB-GREASE ON YOUR FACE, BECAUSE YOU\'RE ALLOWING PEOPLE TO SEE THAT YOU\'RE PROUD OF THESE RIBS.\rI WOULD LIKE TO GIVE YOU A BACKSTAGE PASS TO MY IMAGINATION.LISTEN TO THE SILENCE. AND WHEN THE SILENCE IS DEAFENING, YOU\'RE IN THE CENTER OF YOUR OWN UNIVERSE.HAVE YOU URINATED? HAVE YOU DRAINED YOUR BLADDER? ARE YOU FREE? BECAUSE IF YOU HAVEN\'T IT WILL ONLY COME OUT LATER. I\'M GIVING YOU SOME INFORMATION THAT YOUR BODILY FLUIDS MAY PENETRATE YOUR CLOTHING FIBRE\'S WITHOUT WARNING.\rTHE MAGIC INDIAN IS A MYSTERIOUS SPIRITUAL FORCE, AND WE\'RE GOING TO CATHEDRAL ROCK, AND THAT\'S THE VORTEX OF THE HEART.I WRESTLED A BEAR ONCE. A 750LBS BLACK BEAR.LISTEN TO THE SILENCE. AND WHEN THE SILENCE IS DEAFENING, YOU\'RE IN THE CENTER OF YOUR OWN UNIVERSE.\rYOU GOTTA GO THROUGH IT TO SEE THERE AIN\'T NOTHING TO IT.IT\'S GOOD TO YELL AT PEOPLE AND TELL PEOPLE THAT YOU\'RE FROM TENNESEE, SO THAT WAY YOU\'LL BE SAFE.THE BEST WAY TO COMMUNICATE IS COMPATIBLE. COMPATIBLE COMMUNICATION IS LISTENING WITH OPEN EARS AND AN OPEN MIND, AND NOT BEING FEARFUL OR JUDGEMENTAL ABOUT WHAT YOU\'RE HEARING.\r\n'),
	(15, '7d1b81ca612cb1e361a9c3f9944e56b3', 'ARTICLE TITLE 9\r\nVEGGIES ES BONUS VOBIS, PROINDE VOS POSTULO...\r\n\rVEGGIES ES BONUS VOBIS, PROINDE VOS POSTULO ESSUM MAGIS KOHLRABI WELSH ONION DAIKON AMARANTH TATSOI TOMATILLO MELON AZUKI BEAN GARLIC.\rGUMBO BEET GREENS CORN SOKO ENDIVE GUMBO GOURD. PARSLEY SHALLOT COURGETTE TATSOI PEA SPROUTS FAVA BEAN COLLARD GREENS DANDELION OKRA WAKAME TOMATO. DANDELION CUCUMBER EARTHNUT PEA PEANUT SOKO ZUCCHINI.\rTURNIP GREENS YARROW RICEBEAN RUTABAGA ENDIVE CAULIFLOWER SEA LETTUCE KOHLRABI AMARANTH WATER SPINACH AVOCADO DAIKON NAPA CABBAGE ASPARAGUS WINTER PURSLANE KALE. CELERY POTATO SCALLION DESERT RAISIN HORSERADISH SPINACH CARROT SOKO. LOTUS ROOT WATER SPINACH FENNEL KOMBU MAIZE BAMBOO SHOOT GREEN BEAN SWISS CHARD SEAKALE PUMPKIN ONION CHICKPEA GRAM CORN PEA. BRUSSELS SPROUT CORIANDER WATER CHESTNUT GOURD SWISS CHARD WAKAME KOHLRABI BEETROOT CARROT WATERCRESS. CORN AMARANTH SALSIFY BUNYA NUTS NORI AZUKI BEAN CHICKWEED POTATO BELL PEPPER ARTICHOKE.\rNORI GRAPE SILVER BEET BROCCOLI KOMBU BEET GREENS FAVA BEAN POTATO QUANDONG CELERY. BUNYA NUTS BLACK-EYED PEA PRAIRIE TURNIP LEEK LENTIL TURNIP GREENS PARSNIP. SEA LETTUCE LETTUCE WATER CHESTNUT EGGPLANT WINTER PURSLANE FENNEL AZUKI BEAN EARTHNUT PEA SIERRA LEONE BOLOGI LEEK SOKO CHICORY CELTUCE PARSLEY JÍCAMA SALSIFY.\rCELERY QUANDONG SWISS CHARD CHICORY EARTHNUT PEA POTATO. SALSIFY TARO CATSEAR GARLIC GRAM CELERY BITTERLEAF WATTLE SEED COLLARD GREENS NORI. GRAPE WATTLE SEED KOMBU BEETROOT HORSERADISH CARROT SQUASH BRUSSELS SPROUT CHARD.\rPEA HORSERADISH AZUKI BEAN LETTUCE AVOCADO ASPARAGUS OKRA. KOHLRABI RADISH OKRA AZUKI BEAN CORN FAVA BEAN MUSTARD TIGERNUT JÍCAMA GREEN BEAN CELTUCE COLLARD GREENS AVOCADO QUANDONG FENNEL GUMBO BLACK-EYED PEA. GRAPE SILVER BEET WATERCRESS POTATO TIGERNUT CORN GROUNDNUT. CHICKWEED OKRA PEA WINTER PURSLANE CORIANDER YARROW SWEET PEPPER RADISH GARLIC BRUSSELS SPROUT GROUNDNUT SUMMER PURSLANE EARTHNUT PEA TOMATO SPRING ONION AZUKI BEAN GOURD. GUMBO KAKADU PLUM KOMATSUNA BLACK-EYED PEA GREEN BEAN ZUCCHINI GOURD WINTER PURSLANE SILVER BEET ROCK MELON RADISH ASPARAGUS SPINACH.\rBEETROOT WATER SPINACH OKRA WATER CHESTNUT RICEBEAN PEA CATSEAR COURGETTE SUMMER PURSLANE. WATER SPINACH ARUGULA PEA TATSOI AUBERGINE SPRING ONION BUSH TOMATO KALE RADICCHIO TURNIP CHICORY SALSIFY PEA SPROUTS FAVA BEAN. DANDELION ZUCCHINI BURDOCK YARROW CHICKPEA DANDELION SORREL COURGETTE TURNIP GREENS TIGERNUT SOYBEAN RADISH ARTICHOKE WATTLE SEED ENDIVE GROUNDNUT BROCCOLI ARUGULA.\rSOKO RADICCHIO BUNYA NUTS GRAM DULSE SILVER BEET PARSNIP NAPA CABBAGE LOTUS ROOT SEA LETTUCE BRUSSELS SPROUT CABBAGE. CATSEAR CAULIFLOWER GARBANZO YARROW SALSIFY CHICORY GARLIC BELL PEPPER NAPA CABBAGE LETTUCE TOMATO KALE ARUGULA MELON SIERRA LEONE BOLOGI RUTABAGA TIGERNUT. SEA LETTUCE GUMBO GRAPE KALE KOMBU CAULIFLOWER SALSIFY KOHLRABI OKRA SEA LETTUCE BROCCOLI CELERY LOTUS ROOT CARROT WINTER PURSLANE TURNIP GREENS GARLIC. JÍCAMA GARLIC COURGETTE CORIANDER RADICCHIO PLANTAIN SCALLION CAULIFLOWER FAVA BEAN DESERT RAISIN SPRING ONION CHICORY BUNYA NUTS. SEA LETTUCE WATER SPINACH GRAM FAVA BEAN LEEK DANDELION SILVER BEET EGGPLANT BUSH TOMATO.\r\n'),
	(16, '318d21048b3b819e39b9c974839b4dd2', 'ARTICLE TITLE 10\r\nPOMMY IPSUM ELEMENTARY MY DEAR WATSON...\r\n\rPOMMY IPSUM ELEMENTARY MY DEAR WATSON ASK YOUR MOTHER IF DOWN THE VILLAGE GREEN A TOTAL JESSIE IT\'S ME PEEPERS, SMEG 10 PENCE MIX NAFF OFF SHEPHERD\'S PIE. GOT HIS END AWAY THROW A PADDY CONKED HIM ONE ON THE NOSE A REET BOBBYDAZZLER, 10 PENCE MIX HALF-INCH IT UNION JACK, WIND UP CHALLENGE YOU TO A DUEL. MIDDLE CLASS COBBLES WORKING CLASS CORGI EY UP CHUCK ON HIS TOD, PANTS DOING MY HEAD IN UPPER CLASS ON THE PULL SLING ONE\'S HOOK, TERRIBLY SCONES BARMY NOSE RAG. HALF-INCH IT PENNYBOY BAD WOLF IN THE JACKSY FLABBERGASTED GOLLY GOSH BLOKE I COULD REET FANCY A, PORK DRIPPING HEDGEHOG BECAUSE THERE WAS NOTHING ON THE GOGGLEBOX TALLY-HO THE BLACK DEATH ALRIGHT DUCK, CORGI DOWN THE LOCAL FOOTBALL WHIZZ MUSH A BOTTLE OF PLONK.\rFANCIED A FLUTTER APPLE AND PEARS CONKERS RATHER SCATTERBRAINED CHALLENGE YOU TO A DUEL IT\'S NICKED FOOTBALL RIDICULOUS, FRIED TOAST SCATTERBRAINED DOCTOR WHO BOSSY BRITCHES PANTS EY UP DUCK. HAVE A GANDER RIVETTING STUFF IT\'S THE BEES KNEES UTTER SHAMBLES AMELIA POND FLOG A DEAD HORSE PORKY-PIES SPIFFING CHAV, GUTTED WILLY THAT\'S ACE MORRIS DANCERS SCALLY MEAT AND TWO VEG. SLING ONE\'S HOOK DAMN HAVE A BUTCHER\'S AT THIS BENT AS A NINE BOB NOTE BIG LIGHT KATE AND WILL SUPERB, GIVE YOU A BELL YOU \'AVIN A LAUGH FISH AND CHIPS SOD\'S LAW THE FUZZ GOD SAVE THE QUEEN DARLING, PULLED A RIGHT CORKER DOING MY HEAD IN AT THE BOOZER IS SHE \'AVIN A LAUGH ABSOLUTE TWODDLE.\rDOWN THE VILLAGE GREEN MORIARTY JOLLY BOWLER HAT BARGAIN BETTY, ESSEX GIRLS SCROTE BEEFEATER. DARLING TERRIBLY LUG HOLE SWEET FANNY ADAMS AND THUS KATE AND WILL, DAFT COW SORTED IT CUP OF TEA IT\'S NICKED. VICTORIA SPONGE CAKE 221B BAKER STREET BAG EGG\'S OLD BOY HAD A BARNEY WITH THE INLAWS PICALILLY A BOTTLE OF PLONK COTTON ON, NARKY EY UP CHUCK RAMBUNCTIOUS BOBBY GRAVY CHEESE AND CHIPS DOWN THE LOCAL, VICTORIA SPONGE CAKE COCKNEY RIDICULE I\'M OFF TO BEDFORDSHIRE BOVVER BOOTS. ESSEX GIRLS THE LAKES BRILLIANT BOG ROLL FOOTBALL SCONES BISCUITS, WIBBLY-WOBBLY TIMEY-WIMEY STUFF ROUND OUR GAFF THE CHIPPY PILLOCK SCONES A RIGHT TOFF FISH AND CHIPS, SKIVE REAL ALE DOOFER OFF WITH HER HEAD SCONES.\rOLD GIRL A REET BOBBYDAZZLER COLLYWOBBLES SCONES LOO ONE FEELS THAT, POT NOODLE UP NORTH KNACKERED APPLE AND PEARS. SUPERB NONSENSE DRIVING A MINI LOST HER MARBLES NUMPTY EE BAH GUM BAFFLED HAVE A KIP, THROW A SPANNER IN THE WORKS COULD MURDER A PINT DOOLALLY BOSSY BRITCHES CHAV INDEED. CHUFFED COR BLIMEY\' CLOCK ROUND THE EARHOLE BLACK PUDDING GOBSMACKED IT\'S CRACKING FLAGS SLING ONE\'S HOOK, A RIGHT ROYAL KNEES UP CHAPS WEEPING ANGELS TWIGLETS AMELIA POND GUINNESS, EVER SO LOVELY BOTTLED IT DEVONSHIRE CREAM TEA BLUMMIN\' ESSEX GIRLS. COMPLETELY CRACKERS QUID WELLIES A WEEK ON SUNDAY GOSH GOLLY WELL FIT, WHAT A DODDLE JOLLY GOOD PIE-EYED COPPER ACCORDINGLY EASY PEASY, PRINCE CHARLES ABSOLUTE ON HIS TOD OFF WITH HER HEAD CORNISH PASTY.\rTHE HOUNDS OF BASKERVILLE NOSH TAKING THE MICK OFF T\'SHOP SEE A MAN ABOUT A DOG, BROWN SAUCE ARGY-BARGY CLOCK ROUND THE EARHOLE SOUTHENERS PULLED A RIGHT CORKER, WHAT A MUG OFF WITH HER HEAD CONKERS. DR. WATSON PIE-EYED FLABBERGASTED WHAT A LOAD OF COBBLERS HAVE A GANDER GUINNESS OOPSY-DAISIES, BOVVER BOOTS OFF THE HOOK A RIGHT CORKER IT\'S ME PEEPERS. A WEEK ON SUNDAY CHAP ABSOLUTE NOSE RAG FLOG, NARKY ALRIGHT GEEZER.\r\n');
/*!40000 ALTER TABLE `b_search_content_text` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_search_content_title
DROP TABLE IF EXISTS `b_search_content_title`;
CREATE TABLE IF NOT EXISTS `b_search_content_title` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `POS` int(11) NOT NULL,
  `WORD` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_TITLE` (`SITE_ID`,`WORD`,`SEARCH_CONTENT_ID`,`POS`),
  KEY `IND_B_SEARCH_CONTENT_TITLE` (`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;

-- Дамп данных таблицы rusrobotics_bitrix.b_search_content_title: ~34 rows (приблизительно)
/*!40000 ALTER TABLE `b_search_content_title` DISABLE KEYS */;
REPLACE INTO `b_search_content_title` (`SEARCH_CONTENT_ID`, `SITE_ID`, `POS`, `WORD`) VALUES
	(7, 's1', 14, '1'),
	(16, 's1', 14, '10'),
	(8, 's1', 14, '2'),
	(9, 's1', 14, '3'),
	(10, 's1', 14, '4'),
	(11, 's1', 14, '5'),
	(12, 's1', 14, '6'),
	(13, 's1', 14, '7'),
	(14, 's1', 14, '8'),
	(15, 's1', 14, '9'),
	(7, 's1', 0, 'ARTICLE'),
	(8, 's1', 0, 'ARTICLE'),
	(9, 's1', 0, 'ARTICLE'),
	(10, 's1', 0, 'ARTICLE'),
	(11, 's1', 0, 'ARTICLE'),
	(12, 's1', 0, 'ARTICLE'),
	(13, 's1', 0, 'ARTICLE'),
	(14, 's1', 0, 'ARTICLE'),
	(15, 's1', 0, 'ARTICLE'),
	(16, 's1', 0, 'ARTICLE'),
	(3, 's1', 3, 'BLOG'),
	(3, 's1', 0, 'RR'),
	(7, 's1', 8, 'TITLE'),
	(8, 's1', 8, 'TITLE'),
	(9, 's1', 8, 'TITLE'),
	(10, 's1', 8, 'TITLE'),
	(11, 's1', 8, 'TITLE'),
	(12, 's1', 8, 'TITLE'),
	(13, 's1', 8, 'TITLE'),
	(14, 's1', 8, 'TITLE'),
	(15, 's1', 8, 'TITLE'),
	(16, 's1', 8, 'TITLE'),
	(5, 's1', 0, 'СТАТЬЯ'),
	(6, 's1', 0, 'СТАТЬЯ');
/*!40000 ALTER TABLE `b_search_content_title` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_search_custom_rank
DROP TABLE IF EXISTS `b_search_custom_rank`;
CREATE TABLE IF NOT EXISTS `b_search_custom_rank` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `APPLIED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `RANK` int(11) NOT NULL DEFAULT '0',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `PARAM1` text COLLATE utf8_unicode_ci,
  `PARAM2` text COLLATE utf8_unicode_ci,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IND_B_SEARCH_CUSTOM_RANK` (`SITE_ID`,`MODULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_search_custom_rank: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_search_custom_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_custom_rank` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_search_phrase
DROP TABLE IF EXISTS `b_search_phrase`;
CREATE TABLE IF NOT EXISTS `b_search_phrase` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` datetime NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `RESULT_COUNT` int(11) NOT NULL,
  `PAGES` int(11) NOT NULL,
  `SESSION_ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `PHRASE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAGS` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_TO` text COLLATE utf8_unicode_ci,
  `URL_TO_404` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_TO_SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STAT_SESS_ID` int(18) DEFAULT NULL,
  `EVENT1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IND_PK_B_SEARCH_PHRASE_SESS_PH` (`SESSION_ID`,`PHRASE`(50)),
  KEY `IND_PK_B_SEARCH_PHRASE_SESS_TG` (`SESSION_ID`,`TAGS`(50)),
  KEY `IND_PK_B_SEARCH_PHRASE_TIME` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_search_phrase: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_search_phrase` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_phrase` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_search_stem
DROP TABLE IF EXISTS `b_search_stem`;
CREATE TABLE IF NOT EXISTS `b_search_stem` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STEM` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_B_SEARCH_STEM` (`STEM`)
) ENGINE=InnoDB AUTO_INCREMENT=1323 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_search_stem: ~1 322 rows (приблизительно)
/*!40000 ALTER TABLE `b_search_stem` DISABLE KEYS */;
REPLACE INTO `b_search_stem` (`ID`, `STEM`) VALUES
	(1, 'СТАТ'),
	(2, 'НОМЕР'),
	(3, 'АНОНС'),
	(4, 'ПОДРОБН'),
	(5, 'ОПИСАН'),
	(6, 'RR'),
	(7, 'BLOG'),
	(8, 'TEXT'),
	(9, 'HERE'),
	(10, 'ARTICLE'),
	(11, 'TITLE'),
	(12, 'LOREM'),
	(13, 'IPSUM'),
	(14, 'DOLOR'),
	(15, 'SIT'),
	(16, 'AMET'),
	(17, 'CONSECTETUR'),
	(18, 'ADIPISCING'),
	(19, 'ELIT'),
	(20, 'SED'),
	(21, 'DO'),
	(22, 'EIUSMOD'),
	(23, 'TEMPOR'),
	(24, 'INCIDIDUNT'),
	(25, 'UT'),
	(26, 'LABORE'),
	(27, 'ET'),
	(28, 'DOLORE'),
	(29, 'MAGNA'),
	(30, 'ALIQUA'),
	(31, 'LOBORTIS'),
	(32, 'FEUGIAT'),
	(33, 'VIVAMUS'),
	(34, 'AT'),
	(35, 'AUGUE'),
	(36, 'EGET'),
	(37, 'ALIQUET'),
	(38, 'NEC'),
	(39, 'ULLAMCORPER'),
	(40, 'RISUS'),
	(41, 'DIGNISSIM'),
	(42, 'ENIM'),
	(43, 'VENENATIS'),
	(44, 'URNA'),
	(45, 'CURSUS'),
	(46, 'TURPIS'),
	(47, 'EGESTAS'),
	(48, 'PRETIUM'),
	(49, 'AENEAN'),
	(50, 'PHARETRA'),
	(51, 'AC'),
	(52, 'PLACERAT'),
	(53, 'TEMPUS'),
	(54, 'MASSA'),
	(55, 'ULTRICIES'),
	(56, 'NULLAM'),
	(57, 'FELIS'),
	(58, 'NUNC'),
	(59, 'VEL'),
	(60, 'EROS'),
	(61, 'DONEC'),
	(62, 'ODIO'),
	(63, 'ORCI'),
	(64, 'DAPIBUS'),
	(65, 'ULTRICES'),
	(66, 'IN'),
	(67, 'QUISQUE'),
	(68, 'ID'),
	(69, 'DIAM'),
	(70, 'QUAM'),
	(71, 'FAUCIBUS'),
	(72, 'MOLESTIE'),
	(73, 'LECTUS'),
	(74, 'VESTIBULUM'),
	(75, 'MATTIS'),
	(76, 'SUSPENDISSE'),
	(77, 'INTERDUM'),
	(78, 'POSUERE'),
	(79, 'NON'),
	(80, 'EUISMOD'),
	(81, 'LACINIA'),
	(82, 'QUIS'),
	(83, 'PURUS'),
	(84, 'VIVERRA'),
	(85, 'ACCUMSAN'),
	(86, 'NISL'),
	(87, 'NISI'),
	(88, 'SEMPER'),
	(89, 'AUCTOR'),
	(90, 'NEQUE'),
	(91, 'VITAE'),
	(92, 'PELLENTESQUE'),
	(93, 'NAM'),
	(94, 'ALIQUAM'),
	(95, 'LUCTUS'),
	(96, 'POTENTI'),
	(97, 'TORTOR'),
	(98, 'ARCU'),
	(99, 'BLANDIT'),
	(100, 'LIBERO'),
	(101, 'VOLUTPAT'),
	(102, 'CRAS'),
	(103, 'ORNARE'),
	(104, 'DUI'),
	(105, 'SCELERISQUE'),
	(106, 'MAURIS'),
	(107, 'PULVINAR'),
	(108, 'HABITANT'),
	(109, 'MORBI'),
	(110, 'PRAESENT'),
	(111, 'NIBH'),
	(112, 'CONSEQUAT'),
	(113, 'HENDRERIT'),
	(114, 'GRAVIDA'),
	(115, 'RUTRUM'),
	(116, 'LACUS'),
	(117, 'CONGUE'),
	(118, 'EU'),
	(119, 'NULLA'),
	(120, 'MALESUADA'),
	(121, 'CUM'),
	(122, 'SOCIIS'),
	(123, 'NATOQUE'),
	(124, 'PENATIBUS'),
	(125, 'SAPIEN'),
	(126, 'SAGITTIS'),
	(127, 'LEO'),
	(128, 'INTEGER'),
	(129, 'VELIT'),
	(130, 'DUIS'),
	(131, 'TRISTIQUE'),
	(132, 'SOLLICITUDIN'),
	(133, 'ETIAM'),
	(134, 'SODALES'),
	(135, 'SEM'),
	(136, 'FRINGILLA'),
	(137, 'VARIUS'),
	(138, 'METUS'),
	(139, 'VULPUTATE'),
	(140, 'IMPERDIET'),
	(141, 'PROIN'),
	(142, 'BIBENDUM'),
	(143, 'ERAT'),
	(144, 'PORTA'),
	(145, 'MOLLIS'),
	(146, 'ELEMENTUM'),
	(147, 'FUSCE'),
	(148, 'CONDIMENTUM'),
	(149, 'FERMENTUM'),
	(150, 'COMMODO'),
	(151, 'PORTTITOR'),
	(152, 'MAGNIS'),
	(153, 'DIS'),
	(154, 'PARTURIENT'),
	(155, 'FACILISIS'),
	(156, 'EST'),
	(157, 'TELLUS'),
	(158, 'FAMES'),
	(159, 'FACILISI'),
	(160, 'RIDICULUS'),
	(161, 'MUS'),
	(162, 'NETUS'),
	(163, 'IACULIS'),
	(164, 'RHONCUS'),
	(165, 'DICTUM'),
	(166, 'CURABITUR'),
	(167, 'ZOMBIE'),
	(168, 'REVERSUS'),
	(169, 'AB'),
	(170, 'VIRAL'),
	(171, 'INFERNO'),
	(172, 'RICK'),
	(173, 'GRIMES'),
	(174, 'MALUM'),
	(175, 'CEREBRO'),
	(176, 'DE'),
	(177, 'CARNE'),
	(178, 'LUMBERING'),
	(179, 'ANIMATA'),
	(180, 'CORPORA'),
	(181, 'QUAERITIS'),
	(182, 'SUMMUS'),
	(183, 'BRAINS'),
	(184, 'MORBO'),
	(185, 'MALEFICIA'),
	(186, 'APOCALYPSI'),
	(187, 'GORGER'),
	(188, 'OMERO'),
	(189, 'UNDEAD'),
	(190, 'SURVIVOR'),
	(191, 'HI'),
	(192, 'MINDLESS'),
	(193, 'MORTUIS'),
	(194, 'SOULLESS'),
	(195, 'CREATURAS'),
	(196, 'IMO'),
	(197, 'EVIL'),
	(198, 'STALKING'),
	(199, 'MONSTRA'),
	(200, 'ADVENTUS'),
	(201, 'RESI'),
	(202, 'DENTEVIL'),
	(203, 'VULTUS'),
	(204, 'COMEDAT'),
	(205, 'CEREBELLA'),
	(206, 'VIVENTIUM'),
	(207, 'QUI'),
	(208, 'ANIMATED'),
	(209, 'CORPSE'),
	(210, 'CRICKET'),
	(211, 'BAT'),
	(212, 'MAX'),
	(213, 'BRUCKS'),
	(214, 'TERRIBILEM'),
	(215, 'INCESSU'),
	(216, 'ZOMBY'),
	(217, 'THE'),
	(218, 'VOODOO'),
	(219, 'SACERDOS'),
	(220, 'FLESH'),
	(221, 'EATER'),
	(222, 'SUSCITAT'),
	(223, 'MORTUOS'),
	(224, 'COMEDERE'),
	(225, 'CARNEM'),
	(226, 'VIRUS'),
	(227, 'ZONBI'),
	(228, 'TATTERED'),
	(229, 'FOR'),
	(230, 'SOLUM'),
	(231, 'OCULI'),
	(232, 'EORUM'),
	(233, 'DEFUNCTIS'),
	(234, 'GO'),
	(235, 'LUM'),
	(236, 'NESCIO'),
	(237, 'AN'),
	(238, 'ZOMBIES'),
	(239, 'SICUT'),
	(240, 'MALUS'),
	(241, 'PUTRID'),
	(242, 'HORROR'),
	(243, 'NIGH'),
	(244, 'TOFTH'),
	(245, 'ELIV'),
	(246, 'INGDEAD'),
	(247, 'HORRIBILEM'),
	(248, 'WALKING'),
	(249, 'DEAD'),
	(250, 'RESURGERE'),
	(251, 'CRAZED'),
	(252, 'SEPULCRIS'),
	(253, 'CREATURIS'),
	(254, 'GRAVE'),
	(255, 'FEEDING'),
	(256, 'IRIDE'),
	(257, 'SERPENS'),
	(258, 'PESTILENTIA'),
	(259, 'SHAUN'),
	(260, 'OFTHE'),
	(261, 'SCYTHE'),
	(262, 'CORPSES'),
	(263, 'IPSA'),
	(264, 'SCREAMS'),
	(265, 'PLAGUE'),
	(266, 'HAEC'),
	(267, 'DECAYING'),
	(268, 'AMBULABAT'),
	(269, 'ZEDER'),
	(270, 'APATHETIC'),
	(271, 'PLAN'),
	(272, 'TERROR'),
	(273, 'VULNERUM'),
	(274, 'CONTAGIUM'),
	(275, 'ACCEDUNT'),
	(276, 'MORTUI'),
	(277, 'IAM'),
	(278, 'VIVAM'),
	(279, 'UNLIFE'),
	(280, 'TARDIUS'),
	(281, 'MOVERI'),
	(282, 'BRID'),
	(283, 'EOF'),
	(284, 'REANIMATOR'),
	(285, 'COPIA'),
	(286, 'SINT'),
	(287, 'TERRIBILES'),
	(288, 'UNDEATH'),
	(289, 'LEGIONIS'),
	(290, 'ALII'),
	(291, 'MISSING'),
	(292, 'OCULIS'),
	(293, 'ALIORUM'),
	(294, 'SERPERE'),
	(295, 'CRABS'),
	(296, 'NOSTRAM'),
	(297, 'PUTRIDI'),
	(298, 'BRAINDEAD'),
	(299, 'ODORES'),
	(300, 'KILL'),
	(301, 'AND'),
	(302, 'INFECT'),
	(303, 'AERE'),
	(304, 'IMPLENT'),
	(305, 'LEFT'),
	(306, 'FOUR'),
	(307, 'LUCIO'),
	(308, 'FULCI'),
	(309, 'TREMOR'),
	(310, 'DARK'),
	(311, 'VIVOS'),
	(312, 'EXPANSIS'),
	(313, 'CREEPY'),
	(314, 'ARM'),
	(315, 'YOF'),
	(316, 'DARKNESS'),
	(317, 'ULNIS'),
	(318, 'WITCHCRAFT'),
	(319, 'ARMIS'),
	(320, 'KIRKMAN'),
	(321, 'MOORE'),
	(322, 'ADLARD'),
	(323, 'CAERULEUM'),
	(324, 'LOCIS'),
	(325, 'ROMERO'),
	(326, 'CONGRESS'),
	(327, 'AMARUS'),
	(328, 'AURAS'),
	(329, 'NIHIL'),
	(330, 'HORUM'),
	(331, 'TINCIDUNT'),
	(332, 'SLACK-JAWED'),
	(333, 'GELIDA'),
	(334, 'SURVIVAL'),
	(335, 'PORTENTA'),
	(336, 'UNLEASHED'),
	(337, 'AMBULABUNT'),
	(338, 'SUPER'),
	(339, 'TERRAM'),
	(340, 'SOULESS'),
	(341, 'MORTUUM'),
	(342, 'GLASSY-EYED'),
	(343, 'OCULOS'),
	(344, 'ATTONITOS'),
	(345, 'INDIFFERENT'),
	(346, 'BACK'),
	(347, 'ZOM'),
	(348, 'BIEAPOC'),
	(349, 'ALYPSE'),
	(350, 'HOC'),
	(351, 'SNOW'),
	(352, 'BRAAAIIIINS'),
	(353, 'SOCIOPATHIC'),
	(354, 'INCIPERE'),
	(355, 'CLAIRVIUS'),
	(356, 'NARCISSE'),
	(357, 'ANTE'),
	(358, 'IS'),
	(359, 'BELLO'),
	(360, 'MUNDI'),
	(361, 'CRAVEN'),
	(362, 'OMNI'),
	(363, 'MEMORIA'),
	(364, 'PATRIAE'),
	(365, 'ZOMBIELAND'),
	(366, 'RELIGIONIS'),
	(367, 'SUNT'),
	(368, 'DIRI'),
	(369, 'HISTORIARUM'),
	(370, 'GOLUMS'),
	(371, 'UNRELENTING'),
	(372, 'RAIMI'),
	(373, 'FASCINATI'),
	(374, 'BEHEADING'),
	(375, 'CEMETERY'),
	(376, 'MAN'),
	(377, 'MODERN'),
	(378, 'BURSTING'),
	(379, 'EYEBALLS'),
	(380, 'PERHSAPS'),
	(381, 'TERRENTI'),
	(382, 'FORSITAN'),
	(383, 'DEADGURL'),
	(384, 'ILLUD'),
	(385, 'STAGGERING'),
	(386, 'POENAE'),
	(387, 'CHAINSAW'),
	(388, 'ZOMBI'),
	(389, 'HORRIFYING'),
	(390, 'FECIMUS'),
	(391, 'BURIAL'),
	(392, 'GROUND'),
	(393, 'INDEFLEXUS'),
	(394, 'SHOTGUN'),
	(395, 'COUP'),
	(396, 'POUDRE'),
	(397, 'PER'),
	(398, 'PLATEAS'),
	(399, 'CURRERE'),
	(400, 'FIT'),
	(401, 'DECAY'),
	(402, 'NOSTRA'),
	(403, 'POENITENTIAM'),
	(404, 'VIOLENT'),
	(405, 'BIEHIG'),
	(406, 'HWAY'),
	(407, 'AGITE'),
	(408, 'RE'),
	(409, 'PŒNITENTIAM'),
	(410, 'VIVENS'),
	(411, 'MORTUA'),
	(412, 'APUD'),
	(413, 'NOS'),
	(414, 'NIGHT'),
	(415, 'OF'),
	(416, 'LIVING'),
	(417, 'WHYT'),
	(418, 'AFTER'),
	(419, 'DEATH'),
	(420, 'CARNIS'),
	(421, 'GRUSOME'),
	(422, 'VISCERA'),
	(423, 'ORGANA'),
	(424, 'SPARGIT'),
	(425, 'AD'),
	(426, 'IMPETUM'),
	(427, 'SUPERSUMUS'),
	(428, 'EATING'),
	(429, 'AVIUM'),
	(430, 'GUTS'),
	(431, 'GHOULS'),
	(432, 'UNHOLY'),
	(433, 'CANUM'),
	(434, 'FUGERE'),
	(435, 'FERAE'),
	(436, 'INFECTI'),
	(437, 'HORRENDA'),
	(438, 'VIDEMUS'),
	(439, 'TWENTY-EIGHT'),
	(440, 'DEFORMIS'),
	(441, 'PALE'),
	(442, 'DAEMONUM'),
	(443, 'PANDUNTUR'),
	(444, 'PORTAE'),
	(445, 'ROTTING'),
	(446, 'INFERI'),
	(447, 'FINIS'),
	(448, 'ACCEDENS'),
	(449, 'DEADSENTIO'),
	(450, 'TERRORE'),
	(451, 'PERTERRITUS'),
	(452, 'TWEN'),
	(453, 'TEE'),
	(454, 'ATE'),
	(455, 'DAZE'),
	(456, 'LEIGHTER'),
	(457, 'TAEDIUM'),
	(458, 'WAL'),
	(459, 'KINGDEAD'),
	(460, 'EPIDEMIC'),
	(461, 'SIGNIFICANT'),
	(462, 'FINEM'),
	(463, 'UNUM'),
	(464, 'SUPERESSE'),
	(465, 'SENTIT'),
	(466, 'CARO'),
	(467, 'EATERS'),
	(468, 'MAGGOTS'),
	(469, 'CAULE'),
	(470, 'NOBIS'),
	(471, 'OFFENDERIT'),
	(472, 'RAPTO'),
	(473, 'SEARCH'),
	(474, 'MOVIE'),
	(475, 'APERIRE'),
	(476, 'VIDEO'),
	(477, 'SENTIO'),
	(478, 'BACON'),
	(479, 'JERKY'),
	(480, 'DRUMSTICK'),
	(481, 'BURGDOGGEN'),
	(482, 'BUFFALO'),
	(483, 'LANDJAEGER'),
	(484, 'JOWL'),
	(485, 'PANCETTA'),
	(486, 'TURKEY'),
	(487, 'SHOULDER'),
	(488, 'PORK'),
	(489, 'CHOP'),
	(490, 'CHISLIC'),
	(491, 'SHANK'),
	(492, 'KEVIN'),
	(493, 'FLANK'),
	(494, 'ALCATRA'),
	(495, 'BELLY'),
	(496, 'HAM'),
	(497, 'HOCK'),
	(498, 'TURDUCKEN'),
	(499, 'CAPICOLA'),
	(500, 'CUPIM'),
	(501, 'TONGUE'),
	(502, 'RUMP'),
	(503, 'BILTONG'),
	(504, 'CHICKEN'),
	(505, 'PORCHETTA'),
	(506, 'RIBEYE'),
	(507, 'SPARE'),
	(508, 'RIBS'),
	(509, 'ANDOUILLE'),
	(510, 'MEATLOAF'),
	(511, 'SAUSAGE'),
	(512, 'COW'),
	(513, 'BRISKET'),
	(514, 'MEATBALL'),
	(515, 'TAIL'),
	(516, 'DONER'),
	(517, 'VENISON'),
	(518, 'PROSCIUTTO'),
	(519, 'BEEF'),
	(520, 'BRESAOLA'),
	(521, 'LOIN'),
	(522, 'CHUCK'),
	(523, 'LEBERKAS'),
	(524, 'STRIP'),
	(525, 'STEAK'),
	(526, 'FILET'),
	(527, 'MIGNON'),
	(528, 'BALL'),
	(529, 'TIP'),
	(530, 'FRANKFURTER'),
	(531, 'SIRLOIN'),
	(532, 'SALAMI'),
	(533, 'PIG'),
	(534, 'PASTRAMI'),
	(535, 'FATBACK'),
	(536, 'SHORT'),
	(537, 'TRI-TIP'),
	(538, 'SHANKLE'),
	(539, 'T-BONE'),
	(540, 'TENDERLOIN'),
	(541, 'ROUND'),
	(542, 'CORNED'),
	(543, 'PICANHA'),
	(544, 'BOUDIN'),
	(545, 'KIELBASA'),
	(546, 'APPLE'),
	(547, 'PIE'),
	(548, 'DRAGÉE'),
	(549, 'JELLY'),
	(550, 'MUFFIN'),
	(551, 'CHOCOLATE'),
	(552, 'CHEESECAKE'),
	(553, 'CANDY'),
	(554, 'CANES'),
	(555, 'LEMON'),
	(556, 'DROPS'),
	(557, 'PASTRY'),
	(558, 'SOUFFLÉ'),
	(559, 'GINGERBREAD'),
	(560, 'FRUITCAKE'),
	(561, 'CROISSANT'),
	(562, 'POWDER'),
	(563, 'BONBON'),
	(564, 'COOKIE'),
	(565, 'DANISH'),
	(566, 'DONUT'),
	(567, 'TART'),
	(568, 'LIQUORICE'),
	(569, 'HALVAH'),
	(570, 'DESSERT'),
	(571, 'TIRAMISU'),
	(572, 'BEANS'),
	(573, 'CHUPA'),
	(574, 'CHUPS'),
	(575, 'GUMMIES'),
	(576, 'CAKE'),
	(577, 'MARSHMALLOW'),
	(578, 'COTTON'),
	(579, 'BROWNIE'),
	(580, 'CUPCAKE'),
	(581, 'CARROT'),
	(582, 'JUJUBES'),
	(583, 'CARAMELS'),
	(584, 'BEAR'),
	(585, 'CLAW'),
	(586, 'BISCUIT'),
	(587, 'JELLY-O'),
	(588, 'BAR'),
	(589, 'MARZIPAN'),
	(590, 'PUDDING'),
	(591, 'ICING'),
	(592, 'ICE'),
	(593, 'CREAM'),
	(594, 'LOLLIPOP'),
	(595, 'GUMMI'),
	(596, 'BEARS'),
	(597, 'TOFFEE'),
	(598, 'TOPPING'),
	(599, 'SWEET'),
	(600, 'ROLL'),
	(601, 'SUGAR'),
	(602, 'PLUM'),
	(603, 'TOOTSIE'),
	(604, 'WAFER'),
	(605, 'OAT'),
	(606, 'MACAROON'),
	(607, 'SESAME'),
	(608, 'SNAPS'),
	(609, 'YEAH'),
	(610, 'WELL'),
	(611, 'YOU'),
	(612, 'SHOULDN'),
	(613, 'DRINK'),
	(614, 'MAYOR'),
	(615, 'GOLDIE'),
	(616, 'WILSON'),
	(617, 'LIKE'),
	(618, 'SOUND'),
	(619, 'THAT'),
	(620, 'OH'),
	(621, 'HEY'),
	(622, 'BIFF'),
	(623, 'GUYS'),
	(624, 'HOW'),
	(625, 'ARE'),
	(626, 'DOING'),
	(627, 'WHAT'),
	(628, 'MEAN'),
	(629, 'VE'),
	(630, 'SEEN'),
	(631, 'THIS'),
	(632, 'IT'),
	(633, 'BRAND'),
	(634, 'NEW'),
	(635, 'GONNA'),
	(636, 'BE'),
	(637, 'CAR'),
	(638, 'WITH'),
	(639, 'HER'),
	(640, 'SHIT'),
	(641, 'HELLO'),
	(642, 'ANYBODY'),
	(643, 'HOME'),
	(644, 'THINK'),
	(645, 'MCFLY'),
	(646, 'GOTTA'),
	(647, 'HAVE'),
	(648, 'TIME'),
	(649, 'TO'),
	(650, 'GET'),
	(651, 'THEM'),
	(652, 'RE-TYPED'),
	(653, 'REALIZE'),
	(654, 'WOULD'),
	(655, 'HAPPEN'),
	(656, 'IF'),
	(657, 'HAND'),
	(658, 'MY'),
	(659, 'REPORTS'),
	(660, 'YOUR'),
	(661, 'HANDWRITING'),
	(662, 'LL'),
	(663, 'FIRED'),
	(664, 'WOULDN'),
	(665, 'WANT'),
	(666, 'DOC'),
	(667, 'HELP-'),
	(668, 'THEN'),
	(669, 'WANNA'),
	(670, 'GIVE'),
	(671, 'CALL'),
	(672, 'DON'),
	(673, 'WORRY'),
	(674, 'ABOUT'),
	(675, 'KNOW'),
	(676, 'CAN'),
	(677, 'KEEP'),
	(678, 'UP'),
	(679, 'ALL'),
	(680, 'BOYFRIENDS'),
	(681, 'EXCUSE'),
	(682, 'ME'),
	(683, 'WHOA'),
	(684, 'THEY'),
	(685, 'REALLY'),
	(686, 'CLEANED'),
	(687, 'PLACE'),
	(688, 'LOOKS'),
	(689, 'BUT'),
	(690, 'DANCE'),
	(691, 'MISS'),
	(692, 'FAVORITE'),
	(693, 'TELEVISION'),
	(694, 'PROGRAM'),
	(695, 'SCIENCE'),
	(696, 'FICTION'),
	(697, 'THEATER'),
	(698, 'WILL'),
	(699, 'TAKE'),
	(700, 'CARE'),
	(701, 'WATCH'),
	(702, 'NOT'),
	(703, 'CALCULATIONS'),
	(704, 'CORRECT'),
	(705, 'WHEN'),
	(706, 'BABY'),
	(707, 'HITS'),
	(708, 'EIGHTY-EIGHT'),
	(709, 'MILES'),
	(710, 'HOUR'),
	(711, 'SEE'),
	(712, 'SOME'),
	(713, 'SERIOUS'),
	(714, 'HA'),
	(715, 'DID'),
	(716, 'TELL'),
	(717, 'TEMPORAL'),
	(718, 'DISPLACEMENT'),
	(719, 'OCCURRED'),
	(720, 'EXACTLY'),
	(721, '20'),
	(722, 'ZERO'),
	(723, 'SECONDS'),
	(724, 'UH'),
	(725, 'ACTUALLY'),
	(726, 'FIGURED'),
	(727, 'SINCE'),
	(728, 'WASN'),
	(729, 'DUE'),
	(730, 'TILL'),
	(731, 'MONDAY-'),
	(732, 'TERRIBLE'),
	(733, 'GIRLS'),
	(734, 'CHASING'),
	(735, 'BOYS'),
	(736, 'WAS'),
	(737, 'AGE'),
	(738, 'NEVER'),
	(739, 'CHASED'),
	(740, 'BOY'),
	(741, 'OR'),
	(742, 'CALLED'),
	(743, 'SAT'),
	(744, 'PARKED'),
	(745, 'LOOK'),
	(746, 'JUST'),
	(747, 'READY'),
	(748, 'ASK'),
	(749, 'LORRAINE'),
	(750, 'OUT'),
	(751, 'NOR'),
	(752, 'ELSE'),
	(753, 'ON'),
	(754, 'PLANET'),
	(755, 'MAKE'),
	(756, 'CHANGE'),
	(757, 'MIND'),
	(758, 'WAIT'),
	(759, 'MINUTE'),
	(760, 'TELLING'),
	(761, '25'),
	(762, 'GOOD'),
	(763, 'EVENING'),
	(764, 'DOCTOR'),
	(765, 'EMMETT'),
	(766, 'BROWN'),
	(767, 'STANDING'),
	(768, 'PARKING'),
	(769, 'LOT'),
	(770, 'TWIN'),
	(771, 'PINES'),
	(772, 'MALL'),
	(773, 'SATURDAY'),
	(774, 'MORNING'),
	(775, 'OCTOBER'),
	(776, '26'),
	(777, '1985'),
	(778, '18'),
	(779, 'EXPERIMENT'),
	(780, 'NUMBER'),
	(781, 'ONE'),
	(782, 'MON'),
	(783, 'EINY'),
	(784, 'THERE'),
	(785, 'DOWN'),
	(786, 'FLORENCE'),
	(787, 'NIGHTINGALE'),
	(788, 'EFFECT'),
	(789, 'HAPPENS'),
	(790, 'HOSPITALS'),
	(791, 'NURSES'),
	(792, 'FALL'),
	(793, 'LOVE'),
	(794, 'THEIR'),
	(795, 'PATIENTS'),
	(796, 'KID'),
	(797, 'NO'),
	(798, 'AW'),
	(799, 'EVERYTHING'),
	(800, 'GREAT'),
	(801, 'PAY'),
	(802, 'ANY'),
	(803, 'ATTENTION'),
	(804, 'HIM'),
	(805, 'HE'),
	(806, 'HIS'),
	(807, 'MOODS'),
	(808, 'SAM'),
	(809, 'QUIT'),
	(810, 'FIDDLING'),
	(811, 'THING'),
	(812, 'COME'),
	(813, 'DINNER'),
	(814, 'NOW'),
	(815, 'LET'),
	(816, 'ALREADY'),
	(817, 'MILTON'),
	(818, 'SALLY'),
	(819, 'TOBY'),
	(820, 'OVER'),
	(821, 'PLAYPEN'),
	(822, 'LITTLE'),
	(823, 'JOEY'),
	(824, 'BUSEY'),
	(825, 'URINATED'),
	(826, 'DRAINED'),
	(827, 'BLADDER'),
	(828, 'FREE'),
	(829, 'BECAUSE'),
	(830, 'HAVEN'),
	(831, 'ONLY'),
	(832, 'LATER'),
	(833, 'GIVING'),
	(834, 'INFORMATION'),
	(835, 'BODILY'),
	(836, 'FLUIDS'),
	(837, 'MAY'),
	(838, 'PENETRATE'),
	(839, 'CLOTHING'),
	(840, 'FIBRE'),
	(841, 'WITHOUT'),
	(842, 'WARNING'),
	(843, 'EVER'),
	(844, 'ROASTED'),
	(845, 'DOUGHNUTS'),
	(846, 'BEST'),
	(847, 'WAY'),
	(848, 'COMMUNICATE'),
	(849, 'COMPATIBLE'),
	(850, 'COMMUNICATION'),
	(851, 'LISTENING'),
	(852, 'OPEN'),
	(853, 'EARS'),
	(854, 'BEING'),
	(855, 'FEARFUL'),
	(856, 'JUDGEMENTAL'),
	(857, 'HEARING'),
	(858, 'SOMETIMES'),
	(859, 'HORSES'),
	(860, 'COUGH'),
	(861, 'FART'),
	(862, 'SAME'),
	(863, 'SO'),
	(864, 'STAY'),
	(865, 'RANGE'),
	(866, 'ITS'),
	(867, 'BUTT'),
	(868, 'MUSCLE'),
	(869, 'THICK'),
	(870, 'FEELING'),
	(871, 'NATURE'),
	(872, 'EASY'),
	(873, 'WHY'),
	(874, 'REMEMBER'),
	(875, 'BALANCE'),
	(876, 'INTERNAL'),
	(877, 'ENERGY'),
	(878, 'ENVIRONMENT'),
	(879, 'YELL'),
	(880, 'PEOPLE'),
	(881, 'FROM'),
	(882, 'TENNESEE'),
	(883, 'SAFE'),
	(884, 'FEEL'),
	(885, 'BREATH'),
	(886, 'ANYMORE'),
	(887, 'LOST'),
	(888, 'IMAGINATORY'),
	(889, 'VAGUENESS'),
	(890, 'FORESIGHT'),
	(891, 'BECOME'),
	(892, 'NIMBLE'),
	(893, 'VAGRANT'),
	(894, 'LISTEN'),
	(895, 'SILENCE'),
	(896, 'DEAFENING'),
	(897, 'CENTER'),
	(898, 'OWN'),
	(899, 'UNIVERSE'),
	(900, 'WRESTLED'),
	(901, 'ONCE'),
	(902, '750LBS'),
	(903, 'BLACK'),
	(904, 'MAGIC'),
	(905, 'INDIAN'),
	(906, 'MYSTERIOUS'),
	(907, 'SPIRITUAL'),
	(908, 'FORCE'),
	(909, 'WE'),
	(910, 'GOING'),
	(911, 'CATHEDRAL'),
	(912, 'ROCK'),
	(913, 'VORTEX'),
	(914, 'HEART'),
	(915, 'OK'),
	(916, 'RIB-GREASE'),
	(917, 'FACE'),
	(918, 'ALLOWING'),
	(919, 'PROUD'),
	(920, 'THESE'),
	(921, 'BACKSTAGE'),
	(922, 'PASS'),
	(923, 'IMAGINATION'),
	(924, 'THROUGH'),
	(925, 'AIN'),
	(926, 'NOTHING'),
	(927, 'VEGGIES'),
	(928, 'ES'),
	(929, 'BONUS'),
	(930, 'VOBIS'),
	(931, 'PROINDE'),
	(932, 'VOS'),
	(933, 'POSTULO'),
	(934, 'ESSUM'),
	(935, 'MAGIS'),
	(936, 'KOHLRABI'),
	(937, 'WELSH'),
	(938, 'ONION'),
	(939, 'DAIKON'),
	(940, 'AMARANTH'),
	(941, 'TATSOI'),
	(942, 'TOMATILLO'),
	(943, 'MELON'),
	(944, 'AZUKI'),
	(945, 'BEAN'),
	(946, 'GARLIC'),
	(947, 'GUMBO'),
	(948, 'BEET'),
	(949, 'GREENS'),
	(950, 'CORN'),
	(951, 'SOKO'),
	(952, 'ENDIVE'),
	(953, 'GOURD'),
	(954, 'PARSLEY'),
	(955, 'SHALLOT'),
	(956, 'COURGETTE'),
	(957, 'PEA'),
	(958, 'SPROUTS'),
	(959, 'FAVA'),
	(960, 'COLLARD'),
	(961, 'DANDELION'),
	(962, 'OKRA'),
	(963, 'WAKAME'),
	(964, 'TOMATO'),
	(965, 'CUCUMBER'),
	(966, 'EARTHNUT'),
	(967, 'PEANUT'),
	(968, 'ZUCCHINI'),
	(969, 'TURNIP'),
	(970, 'YARROW'),
	(971, 'RICEBEAN'),
	(972, 'RUTABAGA'),
	(973, 'CAULIFLOWER'),
	(974, 'SEA'),
	(975, 'LETTUCE'),
	(976, 'WATER'),
	(977, 'SPINACH'),
	(978, 'AVOCADO'),
	(979, 'NAPA'),
	(980, 'CABBAGE'),
	(981, 'ASPARAGUS'),
	(982, 'WINTER'),
	(983, 'PURSLANE'),
	(984, 'KALE'),
	(985, 'CELERY'),
	(986, 'POTATO'),
	(987, 'SCALLION'),
	(988, 'DESERT'),
	(989, 'RAISIN'),
	(990, 'HORSERADISH'),
	(991, 'LOTUS'),
	(992, 'ROOT'),
	(993, 'FENNEL'),
	(994, 'KOMBU'),
	(995, 'MAIZE'),
	(996, 'BAMBOO'),
	(997, 'SHOOT'),
	(998, 'GREEN'),
	(999, 'SWISS'),
	(1000, 'CHARD'),
	(1001, 'SEAKALE'),
	(1002, 'PUMPKIN'),
	(1003, 'CHICKPEA'),
	(1004, 'GRAM'),
	(1005, 'BRUSSELS'),
	(1006, 'SPROUT'),
	(1007, 'CORIANDER'),
	(1008, 'CHESTNUT'),
	(1009, 'BEETROOT'),
	(1010, 'WATERCRESS'),
	(1011, 'SALSIFY'),
	(1012, 'BUNYA'),
	(1013, 'NUTS'),
	(1014, 'NORI'),
	(1015, 'CHICKWEED'),
	(1016, 'BELL'),
	(1017, 'PEPPER'),
	(1018, 'ARTICHOKE'),
	(1019, 'GRAPE'),
	(1020, 'SILVER'),
	(1021, 'BROCCOLI'),
	(1022, 'QUANDONG'),
	(1023, 'BLACK-EYED'),
	(1024, 'PRAIRIE'),
	(1025, 'LEEK'),
	(1026, 'LENTIL'),
	(1027, 'PARSNIP'),
	(1028, 'EGGPLANT'),
	(1029, 'SIERRA'),
	(1030, 'LEONE'),
	(1031, 'BOLOGI'),
	(1032, 'CHICORY'),
	(1033, 'CELTUCE'),
	(1034, 'JÍCAMA'),
	(1035, 'TARO'),
	(1036, 'CATSEAR'),
	(1037, 'BITTERLEAF'),
	(1038, 'WATTLE'),
	(1039, 'SEED'),
	(1040, 'SQUASH'),
	(1041, 'RADISH'),
	(1042, 'MUSTARD'),
	(1043, 'TIGERNUT'),
	(1044, 'GROUNDNUT'),
	(1045, 'SUMMER'),
	(1046, 'SPRING'),
	(1047, 'KAKADU'),
	(1048, 'KOMATSUNA'),
	(1049, 'ARUGULA'),
	(1050, 'AUBERGINE'),
	(1051, 'BUSH'),
	(1052, 'RADICCHIO'),
	(1053, 'BURDOCK'),
	(1054, 'SORREL'),
	(1055, 'SOYBEAN'),
	(1056, 'DULSE'),
	(1057, 'GARBANZO'),
	(1058, 'PLANTAIN'),
	(1059, '10'),
	(1060, 'POMMY'),
	(1061, 'ELEMENTARY'),
	(1062, 'DEAR'),
	(1063, 'WATSON'),
	(1064, 'MOTHER'),
	(1065, 'VILLAGE'),
	(1066, 'TOTAL'),
	(1067, 'JESSIE'),
	(1068, 'PEEPERS'),
	(1069, 'SMEG'),
	(1070, 'PENCE'),
	(1071, 'MIX'),
	(1072, 'NAFF'),
	(1073, 'OFF'),
	(1074, 'SHEPHERD'),
	(1075, 'GOT'),
	(1076, 'END'),
	(1077, 'AWAY'),
	(1078, 'THROW'),
	(1079, 'PADDY'),
	(1080, 'CONKED'),
	(1081, 'NOSE'),
	(1082, 'REET'),
	(1083, 'BOBBYDAZZLER'),
	(1084, 'HALF-INCH'),
	(1085, 'UNION'),
	(1086, 'JACK'),
	(1087, 'WIND'),
	(1088, 'CHALLENGE'),
	(1089, 'DUEL'),
	(1090, 'MIDDLE'),
	(1091, 'CLASS'),
	(1092, 'COBBLES'),
	(1093, 'WORKING'),
	(1094, 'CORGI'),
	(1095, 'EY'),
	(1096, 'TOD'),
	(1097, 'PANTS'),
	(1098, 'HEAD'),
	(1099, 'UPPER'),
	(1100, 'PULL'),
	(1101, 'SLING'),
	(1102, 'HOOK'),
	(1103, 'TERRIBLY'),
	(1104, 'SCONES'),
	(1105, 'BARMY'),
	(1106, 'RAG'),
	(1107, 'PENNYBOY'),
	(1108, 'BAD'),
	(1109, 'WOLF'),
	(1110, 'JACKSY'),
	(1111, 'FLABBERGASTED'),
	(1112, 'GOLLY'),
	(1113, 'GOSH'),
	(1114, 'BLOKE'),
	(1115, 'COULD'),
	(1116, 'FANCY'),
	(1117, 'DRIPPING'),
	(1118, 'HEDGEHOG'),
	(1119, 'GOGGLEBOX'),
	(1120, 'TALLY-HO'),
	(1121, 'ALRIGHT'),
	(1122, 'DUCK'),
	(1123, 'LOCAL'),
	(1124, 'FOOTBALL'),
	(1125, 'WHIZZ'),
	(1126, 'MUSH'),
	(1127, 'BOTTLE'),
	(1128, 'PLONK'),
	(1129, 'FANCIED'),
	(1130, 'FLUTTER'),
	(1131, 'PEARS'),
	(1132, 'CONKERS'),
	(1133, 'RATHER'),
	(1134, 'SCATTERBRAINED'),
	(1135, 'NICKED'),
	(1136, 'RIDICULOUS'),
	(1137, 'FRIED'),
	(1138, 'TOAST'),
	(1139, 'WHO'),
	(1140, 'BOSSY'),
	(1141, 'BRITCHES'),
	(1142, 'GANDER'),
	(1143, 'RIVETTING'),
	(1144, 'STUFF'),
	(1145, 'BEES'),
	(1146, 'KNEES'),
	(1147, 'UTTER'),
	(1148, 'SHAMBLES'),
	(1149, 'AMELIA'),
	(1150, 'POND'),
	(1151, 'FLOG'),
	(1152, 'HORSE'),
	(1153, 'PORKY-PIES'),
	(1154, 'SPIFFING'),
	(1155, 'CHAV'),
	(1156, 'GUTTED'),
	(1157, 'WILLY'),
	(1158, 'ACE'),
	(1159, 'MORRIS'),
	(1160, 'DANCERS'),
	(1161, 'SCALLY'),
	(1162, 'MEAT'),
	(1163, 'TWO'),
	(1164, 'VEG'),
	(1165, 'DAMN'),
	(1166, 'BUTCHER'),
	(1167, 'BENT'),
	(1168, 'AS'),
	(1169, 'NINE'),
	(1170, 'BOB'),
	(1171, 'NOTE'),
	(1172, 'BIG'),
	(1173, 'LIGHT'),
	(1174, 'KATE'),
	(1175, 'SUPERB'),
	(1176, 'AVIN'),
	(1177, 'LAUGH'),
	(1178, 'FISH'),
	(1179, 'CHIPS'),
	(1180, 'SOD'),
	(1181, 'LAW'),
	(1182, 'FUZZ'),
	(1183, 'GOD'),
	(1184, 'SAVE'),
	(1185, 'QUEEN'),
	(1186, 'DARLING'),
	(1187, 'PULLED'),
	(1188, 'RIGHT'),
	(1189, 'CORKER'),
	(1190, 'BOOZER'),
	(1191, 'SHE'),
	(1192, 'ABSOLUTE'),
	(1193, 'TWODDLE'),
	(1194, 'MORIARTY'),
	(1195, 'JOLLY'),
	(1196, 'BOWLER'),
	(1197, 'HAT'),
	(1198, 'BARGAIN'),
	(1199, 'BETTY'),
	(1200, 'ESSEX'),
	(1201, 'SCROTE'),
	(1202, 'BEEFEATER'),
	(1203, 'LUG'),
	(1204, 'HOLE'),
	(1205, 'FANNY'),
	(1206, 'ADAMS'),
	(1207, 'THUS'),
	(1208, 'DAFT'),
	(1209, 'SORTED'),
	(1210, 'CUP'),
	(1211, 'TEA'),
	(1212, 'VICTORIA'),
	(1213, 'SPONGE'),
	(1214, '221B'),
	(1215, 'BAKER'),
	(1216, 'STREET'),
	(1217, 'BAG'),
	(1218, 'EGG'),
	(1219, 'OLD'),
	(1220, 'HAD'),
	(1221, 'BARNEY'),
	(1222, 'INLAWS'),
	(1223, 'PICALILLY'),
	(1224, 'NARKY'),
	(1225, 'RAMBUNCTIOUS'),
	(1226, 'BOBBY'),
	(1227, 'GRAVY'),
	(1228, 'CHEESE'),
	(1229, 'COCKNEY'),
	(1230, 'RIDICULE'),
	(1231, 'BEDFORDSHIRE'),
	(1232, 'BOVVER'),
	(1233, 'BOOTS'),
	(1234, 'LAKES'),
	(1235, 'BRILLIANT'),
	(1236, 'BOG'),
	(1237, 'BISCUITS'),
	(1238, 'WIBBLY-WOBBLY'),
	(1239, 'TIMEY-WIMEY'),
	(1240, 'OUR'),
	(1241, 'GAFF'),
	(1242, 'CHIPPY'),
	(1243, 'PILLOCK'),
	(1244, 'TOFF'),
	(1245, 'SKIVE'),
	(1246, 'REAL'),
	(1247, 'ALE'),
	(1248, 'DOOFER'),
	(1249, 'GIRL'),
	(1250, 'COLLYWOBBLES'),
	(1251, 'LOO'),
	(1252, 'FEELS'),
	(1253, 'POT'),
	(1254, 'NOODLE'),
	(1255, 'NORTH'),
	(1256, 'KNACKERED'),
	(1257, 'NONSENSE'),
	(1258, 'DRIVING'),
	(1259, 'MINI'),
	(1260, 'MARBLES'),
	(1261, 'NUMPTY'),
	(1262, 'EE'),
	(1263, 'BAH'),
	(1264, 'GUM'),
	(1265, 'BAFFLED'),
	(1266, 'KIP'),
	(1267, 'SPANNER'),
	(1268, 'WORKS'),
	(1269, 'MURDER'),
	(1270, 'PINT'),
	(1271, 'DOOLALLY'),
	(1272, 'INDEED'),
	(1273, 'CHUFFED'),
	(1274, 'COR'),
	(1275, 'BLIMEY'),
	(1276, 'CLOCK'),
	(1277, 'EARHOLE'),
	(1278, 'GOBSMACKED'),
	(1279, 'CRACKING'),
	(1280, 'FLAGS'),
	(1281, 'ROYAL'),
	(1282, 'CHAPS'),
	(1283, 'WEEPING'),
	(1284, 'ANGELS'),
	(1285, 'TWIGLETS'),
	(1286, 'GUINNESS'),
	(1287, 'LOVELY'),
	(1288, 'BOTTLED'),
	(1289, 'DEVONSHIRE'),
	(1290, 'BLUMMIN'),
	(1291, 'COMPLETELY'),
	(1292, 'CRACKERS'),
	(1293, 'QUID'),
	(1294, 'WELLIES'),
	(1295, 'WEEK'),
	(1296, 'SUNDAY'),
	(1297, 'DODDLE'),
	(1298, 'PIE-EYED'),
	(1299, 'COPPER'),
	(1300, 'ACCORDINGLY'),
	(1301, 'PEASY'),
	(1302, 'PRINCE'),
	(1303, 'CHARLES'),
	(1304, 'CORNISH'),
	(1305, 'PASTY'),
	(1306, 'HOUNDS'),
	(1307, 'BASKERVILLE'),
	(1308, 'NOSH'),
	(1309, 'TAKING'),
	(1310, 'MICK'),
	(1311, 'SHOP'),
	(1312, 'DOG'),
	(1313, 'SAUCE'),
	(1314, 'ARGY-BARGY'),
	(1315, 'SOUTHENERS'),
	(1316, 'MUG'),
	(1317, 'DR'),
	(1318, 'LOAD'),
	(1319, 'COBBLERS'),
	(1320, 'OOPSY-DAISIES'),
	(1321, 'CHAP'),
	(1322, 'GEEZER');
/*!40000 ALTER TABLE `b_search_stem` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_search_suggest
DROP TABLE IF EXISTS `b_search_suggest`;
CREATE TABLE IF NOT EXISTS `b_search_suggest` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `FILTER_MD5` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `PHRASE` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `RATE` float NOT NULL,
  `TIMESTAMP_X` datetime NOT NULL,
  `RESULT_COUNT` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IND_B_SEARCH_SUGGEST` (`FILTER_MD5`,`PHRASE`(50),`RATE`),
  KEY `IND_B_SEARCH_SUGGEST_PHRASE` (`PHRASE`(50),`RATE`),
  KEY `IND_B_SEARCH_SUGGEST_TIME` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_search_suggest: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_search_suggest` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_suggest` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_search_tags
DROP TABLE IF EXISTS `b_search_tags`;
CREATE TABLE IF NOT EXISTS `b_search_tags` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`SEARCH_CONTENT_ID`,`SITE_ID`,`NAME`),
  KEY `IX_B_SEARCH_TAGS_0` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;

-- Дамп данных таблицы rusrobotics_bitrix.b_search_tags: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_search_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_tags` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_search_user_right
DROP TABLE IF EXISTS `b_search_user_right`;
CREATE TABLE IF NOT EXISTS `b_search_user_right` (
  `USER_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_USER_RIGHT` (`USER_ID`,`GROUP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_search_user_right: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_search_user_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_user_right` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_seo_adv_autolog
DROP TABLE IF EXISTS `b_seo_adv_autolog`;
CREATE TABLE IF NOT EXISTS `b_seo_adv_autolog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `CAMPAIGN_XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `BANNER_XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CAUSE_CODE` int(11) DEFAULT '0',
  `SUCCESS` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_adv_autolog1` (`ENGINE_ID`),
  KEY `ix_b_seo_adv_autolog2` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_seo_adv_autolog: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_seo_adv_autolog` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_autolog` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_seo_adv_banner
DROP TABLE IF EXISTS `b_seo_adv_banner`;
CREATE TABLE IF NOT EXISTS `b_seo_adv_banner` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` mediumtext COLLATE utf8_unicode_ci,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) DEFAULT NULL,
  `AUTO_QUANTITY_OFF` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `AUTO_QUANTITY_ON` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_banner` (`ENGINE_ID`,`XML_ID`),
  KEY `ix_b_seo_adv_banner1` (`CAMPAIGN_ID`),
  KEY `ix_b_seo_adv_banner2` (`AUTO_QUANTITY_OFF`,`AUTO_QUANTITY_ON`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_seo_adv_banner: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_seo_adv_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_banner` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_seo_adv_campaign
DROP TABLE IF EXISTS `b_seo_adv_campaign`;
CREATE TABLE IF NOT EXISTS `b_seo_adv_campaign` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `SETTINGS` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_campaign` (`ENGINE_ID`,`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_seo_adv_campaign: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_seo_adv_campaign` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_campaign` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_seo_adv_group
DROP TABLE IF EXISTS `b_seo_adv_group`;
CREATE TABLE IF NOT EXISTS `b_seo_adv_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `CAMPAIGN_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_group` (`ENGINE_ID`,`XML_ID`),
  KEY `ix_b_seo_adv_group1` (`CAMPAIGN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_seo_adv_group: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_seo_adv_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_group` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_seo_adv_link
DROP TABLE IF EXISTS `b_seo_adv_link`;
CREATE TABLE IF NOT EXISTS `b_seo_adv_link` (
  `LINK_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `LINK_ID` int(18) NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  PRIMARY KEY (`LINK_TYPE`,`LINK_ID`,`BANNER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_seo_adv_link: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_seo_adv_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_link` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_seo_adv_log
DROP TABLE IF EXISTS `b_seo_adv_log`;
CREATE TABLE IF NOT EXISTS `b_seo_adv_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `REQUEST_URI` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `REQUEST_DATA` text COLLATE utf8_unicode_ci,
  `RESPONSE_TIME` float NOT NULL,
  `RESPONSE_STATUS` int(5) DEFAULT NULL,
  `RESPONSE_DATA` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_adv_log1` (`ENGINE_ID`),
  KEY `ix_b_seo_adv_log2` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_seo_adv_log: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_seo_adv_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_log` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_seo_adv_order
DROP TABLE IF EXISTS `b_seo_adv_order`;
CREATE TABLE IF NOT EXISTS `b_seo_adv_order` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `ORDER_ID` int(11) NOT NULL,
  `SUM` float DEFAULT '0',
  `PROCESSED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_order` (`ENGINE_ID`,`CAMPAIGN_ID`,`BANNER_ID`,`ORDER_ID`),
  KEY `ix_b_seo_adv_order1` (`ORDER_ID`,`PROCESSED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_seo_adv_order: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_seo_adv_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_order` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_seo_adv_region
DROP TABLE IF EXISTS `b_seo_adv_region`;
CREATE TABLE IF NOT EXISTS `b_seo_adv_region` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `PARENT_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_region` (`ENGINE_ID`,`XML_ID`),
  KEY `ix_b_seo_adv_region1` (`PARENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_seo_adv_region: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_seo_adv_region` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_region` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_seo_keywords
DROP TABLE IF EXISTS `b_seo_keywords`;
CREATE TABLE IF NOT EXISTS `b_seo_keywords` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KEYWORDS` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_keywords_url` (`URL`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_seo_keywords: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_seo_keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_keywords` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_seo_search_engine
DROP TABLE IF EXISTS `b_seo_search_engine`;
CREATE TABLE IF NOT EXISTS `b_seo_search_engine` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SORT` int(5) DEFAULT '100',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CLIENT_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLIENT_SECRET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REDIRECT_URI` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_search_engine_code` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_seo_search_engine: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `b_seo_search_engine` DISABLE KEYS */;
REPLACE INTO `b_seo_search_engine` (`ID`, `CODE`, `ACTIVE`, `SORT`, `NAME`, `CLIENT_ID`, `CLIENT_SECRET`, `REDIRECT_URI`, `SETTINGS`) VALUES
	(1, 'google', 'Y', 200, 'Google', '868942902147-qrrd6ce1ajfkpse8ieq4gkpdeanvtnno.apps.googleusercontent.com', 'EItMlJpZLC2WRPKB6QsA5bV9', 'urn:ietf:wg:oauth:2.0:oob', NULL),
	(2, 'yandex', 'Y', 300, 'Yandex', 'f848c7bfc1d34a94ba6d05439f81bbd7', 'da0e73b2d9cc4e809f3170e49cb9df01', 'https://oauth.yandex.ru/verification_code', NULL),
	(3, 'yandex_direct', 'Y', 400, 'Yandex.Direct', '', '', 'https://oauth.yandex.ru/verification_code', NULL);
/*!40000 ALTER TABLE `b_seo_search_engine` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_seo_service_log
DROP TABLE IF EXISTS `b_seo_service_log`;
CREATE TABLE IF NOT EXISTS `b_seo_service_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime NOT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `GROUP_ID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_seo_service_log: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_seo_service_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_service_log` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_seo_service_rtg_queue
DROP TABLE IF EXISTS `b_seo_service_rtg_queue`;
CREATE TABLE IF NOT EXISTS `b_seo_service_rtg_queue` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CLIENT_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCOUNT_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUDIENCE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CONTACT_TYPE` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTION` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_AUTO_REMOVE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_SEO_SRV_RTG_QUEUE_1` (`ACTION`,`DATE_AUTO_REMOVE`),
  KEY `IX_B_SEO_SRV_RTG_QUEUE_2` (`TYPE`,`ACTION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_seo_service_rtg_queue: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_seo_service_rtg_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_service_rtg_queue` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_seo_service_subscription
DROP TABLE IF EXISTS `b_seo_service_subscription`;
CREATE TABLE IF NOT EXISTS `b_seo_service_subscription` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GROUP_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CALLBACK_SERVER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HAS_AUTH` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `IX_B_SEO_SERVICE_SUB_1` (`TYPE`,`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_seo_service_subscription: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_seo_service_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_service_subscription` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_seo_service_webhook
DROP TABLE IF EXISTS `b_seo_service_webhook`;
CREATE TABLE IF NOT EXISTS `b_seo_service_webhook` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SECURITY_CODE` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_SEO_SERVICE_WEBHOOK_1` (`TYPE`,`EXTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_seo_service_webhook: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_seo_service_webhook` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_service_webhook` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_seo_sitemap
DROP TABLE IF EXISTS `b_seo_sitemap`;
CREATE TABLE IF NOT EXISTS `b_seo_sitemap` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_RUN` datetime DEFAULT NULL,
  `SETTINGS` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_seo_sitemap: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_seo_sitemap` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_sitemap` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_seo_sitemap_entity
DROP TABLE IF EXISTS `b_seo_sitemap_entity`;
CREATE TABLE IF NOT EXISTS `b_seo_sitemap_entity` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENTITY_TYPE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `SITEMAP_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_sitemap_entity_1` (`ENTITY_TYPE`,`ENTITY_ID`),
  KEY `ix_b_seo_sitemap_entity_2` (`SITEMAP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_seo_sitemap_entity: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_seo_sitemap_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_sitemap_entity` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_seo_sitemap_iblock
DROP TABLE IF EXISTS `b_seo_sitemap_iblock`;
CREATE TABLE IF NOT EXISTS `b_seo_sitemap_iblock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int(11) NOT NULL,
  `SITEMAP_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_sitemap_iblock_1` (`IBLOCK_ID`),
  KEY `ix_b_seo_sitemap_iblock_2` (`SITEMAP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_seo_sitemap_iblock: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_seo_sitemap_iblock` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_sitemap_iblock` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_seo_sitemap_runtime
DROP TABLE IF EXISTS `b_seo_sitemap_runtime`;
CREATE TABLE IF NOT EXISTS `b_seo_sitemap_runtime` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PID` int(11) NOT NULL,
  `PROCESSED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ITEM_PATH` varchar(700) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEM_ID` int(11) DEFAULT NULL,
  `ITEM_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'D',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `ACTIVE_ELEMENT` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `ix_seo_sitemap_runtime1` (`PID`,`PROCESSED`,`ITEM_TYPE`,`ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_seo_sitemap_runtime: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_seo_sitemap_runtime` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_sitemap_runtime` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_seo_yandex_direct_stat
DROP TABLE IF EXISTS `b_seo_yandex_direct_stat`;
CREATE TABLE IF NOT EXISTS `b_seo_yandex_direct_stat` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `DATE_DAY` date NOT NULL,
  `CURRENCY` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUM` float DEFAULT '0',
  `SUM_SEARCH` float DEFAULT '0',
  `SUM_CONTEXT` float DEFAULT '0',
  `CLICKS` int(7) DEFAULT '0',
  `CLICKS_SEARCH` int(7) DEFAULT '0',
  `CLICKS_CONTEXT` int(7) DEFAULT '0',
  `SHOWS` int(7) DEFAULT '0',
  `SHOWS_SEARCH` int(7) DEFAULT '0',
  `SHOWS_CONTEXT` int(7) DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_seo_yandex_direct_stat` (`BANNER_ID`,`DATE_DAY`),
  KEY `ix_seo_yandex_direct_stat1` (`CAMPAIGN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_seo_yandex_direct_stat: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_seo_yandex_direct_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_yandex_direct_stat` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_short_uri
DROP TABLE IF EXISTS `b_short_uri`;
CREATE TABLE IF NOT EXISTS `b_short_uri` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `URI` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `URI_CRC` int(18) NOT NULL,
  `SHORT_URI` varbinary(250) NOT NULL,
  `SHORT_URI_CRC` int(18) NOT NULL,
  `STATUS` int(18) NOT NULL DEFAULT '301',
  `MODIFIED` datetime NOT NULL,
  `LAST_USED` datetime DEFAULT NULL,
  `NUMBER_USED` int(18) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ux_b_short_uri_1` (`SHORT_URI_CRC`),
  KEY `ux_b_short_uri_2` (`URI_CRC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_short_uri: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_short_uri` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_short_uri` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_site_template
DROP TABLE IF EXISTS `b_site_template`;
CREATE TABLE IF NOT EXISTS `b_site_template` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `TEMPLATE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_site_template_site` (`SITE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_site_template: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `b_site_template` DISABLE KEYS */;
REPLACE INTO `b_site_template` (`ID`, `SITE_ID`, `CONDITION`, `SORT`, `TEMPLATE`) VALUES
	(2, 's1', '', 1, 'blog_rr'),
	(3, 's1', 'CSite::InDir(\'/article.php\')', 2, 'blog_rr_detail_article');
/*!40000 ALTER TABLE `b_site_template` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_smile
DROP TABLE IF EXISTS `b_smile`;
CREATE TABLE IF NOT EXISTS `b_smile` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `SET_ID` int(18) NOT NULL DEFAULT '0',
  `SORT` int(10) NOT NULL DEFAULT '150',
  `TYPING` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLICKABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `HIDDEN` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IMAGE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `IMAGE_DEFINITION` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SD',
  `IMAGE_WIDTH` int(11) NOT NULL DEFAULT '0',
  `IMAGE_HEIGHT` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_smile: ~24 rows (приблизительно)
/*!40000 ALTER TABLE `b_smile` DISABLE KEYS */;
REPLACE INTO `b_smile` (`ID`, `TYPE`, `SET_ID`, `SORT`, `TYPING`, `CLICKABLE`, `HIDDEN`, `IMAGE`, `IMAGE_DEFINITION`, `IMAGE_WIDTH`, `IMAGE_HEIGHT`) VALUES
	(1, 'S', 2, 100, ':) :-)', 'Y', 'N', 'bx_smile_smile.png', 'UHD', 20, 20),
	(2, 'S', 2, 105, ';) ;-)', 'Y', 'N', 'bx_smile_wink.png', 'UHD', 20, 20),
	(3, 'S', 2, 110, ':D :-D', 'Y', 'N', 'bx_smile_biggrin.png', 'UHD', 20, 20),
	(4, 'S', 2, 115, '8-)', 'Y', 'N', 'bx_smile_cool.png', 'UHD', 20, 20),
	(5, 'S', 2, 120, ':facepalm:', 'Y', 'N', 'bx_smile_facepalm.png', 'UHD', 20, 20),
	(6, 'S', 2, 125, ':{} :-{}', 'Y', 'N', 'bx_smile_kiss.png', 'UHD', 20, 20),
	(7, 'S', 2, 130, ':( :-(', 'Y', 'N', 'bx_smile_sad.png', 'UHD', 20, 20),
	(8, 'S', 2, 135, ':| :-|', 'Y', 'N', 'bx_smile_neutral.png', 'UHD', 20, 20),
	(9, 'S', 2, 140, ':oops:', 'Y', 'N', 'bx_smile_redface.png', 'UHD', 20, 20),
	(10, 'S', 2, 145, ':cry: :~(', 'Y', 'N', 'bx_smile_cry.png', 'UHD', 20, 20),
	(11, 'S', 2, 150, ':evil: >:-<', 'Y', 'N', 'bx_smile_evil.png', 'UHD', 20, 20),
	(12, 'S', 2, 155, ':o :-o :shock:', 'Y', 'N', 'bx_smile_eek.png', 'UHD', 20, 20),
	(13, 'S', 2, 160, ':/ :-/', 'Y', 'N', 'bx_smile_confuse.png', 'UHD', 20, 20),
	(14, 'S', 2, 165, ':idea:', 'Y', 'N', 'bx_smile_idea.png', 'UHD', 20, 20),
	(15, 'S', 2, 170, ':?:', 'Y', 'N', 'bx_smile_question.png', 'UHD', 20, 20),
	(16, 'S', 2, 175, ':!:', 'Y', 'N', 'bx_smile_exclaim.png', 'UHD', 20, 20),
	(17, 'S', 2, 180, ':like:', 'Y', 'N', 'bx_smile_like.png', 'UHD', 20, 20),
	(18, 'I', 2, 175, 'ICON_NOTE', 'Y', 'N', 'bx_icon_1.gif', 'SD', 15, 15),
	(19, 'I', 2, 180, 'ICON_DIRRECTION', 'Y', 'N', 'bx_icon_2.gif', 'SD', 15, 15),
	(20, 'I', 2, 185, 'ICON_IDEA', 'Y', 'N', 'bx_icon_3.gif', 'SD', 15, 15),
	(21, 'I', 2, 190, 'ICON_ATTANSION', 'Y', 'N', 'bx_icon_4.gif', 'SD', 15, 15),
	(22, 'I', 2, 195, 'ICON_QUESTION', 'Y', 'N', 'bx_icon_5.gif', 'SD', 15, 15),
	(23, 'I', 2, 200, 'ICON_BAD', 'Y', 'N', 'bx_icon_6.gif', 'SD', 15, 15),
	(24, 'I', 2, 205, 'ICON_GOOD', 'Y', 'N', 'bx_icon_7.gif', 'SD', 15, 15);
/*!40000 ALTER TABLE `b_smile` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_smile_lang
DROP TABLE IF EXISTS `b_smile_lang`;
CREATE TABLE IF NOT EXISTS `b_smile_lang` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `SID` int(11) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_SMILE_SL` (`TYPE`,`SID`,`LID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_smile_lang: ~38 rows (приблизительно)
/*!40000 ALTER TABLE `b_smile_lang` DISABLE KEYS */;
REPLACE INTO `b_smile_lang` (`ID`, `TYPE`, `SID`, `LID`, `NAME`) VALUES
	(1, 'P', 1, 'ru', 'Стандартная галерея'),
	(2, 'P', 1, 'en', 'Standard gallery'),
	(3, 'G', 2, 'ru', 'Основной набор'),
	(4, 'G', 2, 'en', 'Default pack'),
	(5, 'S', 1, 'ru', 'С улыбкой'),
	(6, 'S', 1, 'en', 'Smile'),
	(7, 'S', 2, 'ru', 'Шутливо'),
	(8, 'S', 2, 'en', 'Wink'),
	(9, 'S', 3, 'ru', 'Широкая улыбка'),
	(10, 'S', 3, 'en', 'Big grin'),
	(11, 'S', 4, 'ru', 'Здорово'),
	(12, 'S', 4, 'en', 'Cool'),
	(13, 'S', 5, 'ru', 'Разочарование'),
	(14, 'S', 5, 'en', 'Facepalm'),
	(15, 'S', 6, 'ru', 'Поцелуй'),
	(16, 'S', 6, 'en', 'Kiss'),
	(17, 'S', 7, 'ru', 'Печально'),
	(18, 'S', 7, 'en', 'Sad'),
	(19, 'S', 8, 'ru', 'Скептически'),
	(20, 'S', 8, 'en', 'Skeptic'),
	(21, 'S', 9, 'ru', 'Смущенный'),
	(22, 'S', 9, 'en', 'Embarrassed'),
	(23, 'S', 10, 'ru', 'Очень грустно'),
	(24, 'S', 10, 'en', 'Crying'),
	(25, 'S', 11, 'ru', 'Со злостью'),
	(26, 'S', 11, 'en', 'Angry'),
	(27, 'S', 12, 'ru', 'Удивленно'),
	(28, 'S', 12, 'en', 'Surprised'),
	(29, 'S', 13, 'ru', 'Смущенно'),
	(30, 'S', 13, 'en', 'Confused'),
	(31, 'S', 14, 'ru', 'Идея'),
	(32, 'S', 14, 'en', 'Idea'),
	(33, 'S', 15, 'ru', 'Вопрос'),
	(34, 'S', 15, 'en', 'Question'),
	(35, 'S', 16, 'ru', 'Восклицание'),
	(36, 'S', 16, 'en', 'Exclamation'),
	(37, 'S', 17, 'ru', 'Нравится'),
	(38, 'S', 17, 'en', 'Like');
/*!40000 ALTER TABLE `b_smile_lang` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_smile_set
DROP TABLE IF EXISTS `b_smile_set`;
CREATE TABLE IF NOT EXISTS `b_smile_set` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'G',
  `PARENT_ID` int(18) NOT NULL DEFAULT '0',
  `STRING_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(10) NOT NULL DEFAULT '150',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_smile_set: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `b_smile_set` DISABLE KEYS */;
REPLACE INTO `b_smile_set` (`ID`, `TYPE`, `PARENT_ID`, `STRING_ID`, `SORT`) VALUES
	(1, 'P', 0, 'bitrix', 150),
	(2, 'G', 1, 'bitrix_main', 150);
/*!40000 ALTER TABLE `b_smile_set` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_sms_template
DROP TABLE IF EXISTS `b_sms_template`;
CREATE TABLE IF NOT EXISTS `b_sms_template` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SENDER` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RECEIVER` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_sms_message_name` (`EVENT_NAME`(50))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_sms_template: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `b_sms_template` DISABLE KEYS */;
REPLACE INTO `b_sms_template` (`ID`, `EVENT_NAME`, `ACTIVE`, `SENDER`, `RECEIVER`, `MESSAGE`, `LANGUAGE_ID`) VALUES
	(1, 'SMS_USER_CONFIRM_NUMBER', 'Y', '#DEFAULT_SENDER#', '#USER_PHONE#', 'Код подтверждения #CODE#', NULL),
	(2, 'SMS_USER_RESTORE_PASSWORD', 'Y', '#DEFAULT_SENDER#', '#USER_PHONE#', 'Код для восстановления пароля #CODE#', NULL);
/*!40000 ALTER TABLE `b_sms_template` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_sms_template_site
DROP TABLE IF EXISTS `b_sms_template_site`;
CREATE TABLE IF NOT EXISTS `b_sms_template_site` (
  `TEMPLATE_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`TEMPLATE_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_sms_template_site: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `b_sms_template_site` DISABLE KEYS */;
REPLACE INTO `b_sms_template_site` (`TEMPLATE_ID`, `SITE_ID`) VALUES
	(1, 's1'),
	(2, 's1');
/*!40000 ALTER TABLE `b_sms_template_site` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_sm_version_history
DROP TABLE IF EXISTS `b_sm_version_history`;
CREATE TABLE IF NOT EXISTS `b_sm_version_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime DEFAULT NULL,
  `VERSIONS` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_sm_version_history: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_sm_version_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sm_version_history` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_socialservices_ap
DROP TABLE IF EXISTS `b_socialservices_ap`;
CREATE TABLE IF NOT EXISTS `b_socialservices_ap` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` int(11) NOT NULL,
  `DOMAIN` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ENDPOINT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOGIN` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PASSWORD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_AUTHORIZE` datetime DEFAULT NULL,
  `SETTINGS` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_socialservices_ap1` (`USER_ID`,`DOMAIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_socialservices_ap: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_socialservices_ap` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_ap` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_socialservices_contact
DROP TABLE IF EXISTS `b_socialservices_contact`;
CREATE TABLE IF NOT EXISTS `b_socialservices_contact` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` int(11) NOT NULL,
  `CONTACT_USER_ID` int(11) DEFAULT NULL,
  `CONTACT_XML_ID` int(11) DEFAULT NULL,
  `CONTACT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTACT_LAST_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTACT_PHOTO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_AUTHORIZE` datetime DEFAULT NULL,
  `NOTIFY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `ix_b_socialservices_contact1` (`USER_ID`),
  KEY `ix_b_socialservices_contact2` (`CONTACT_USER_ID`),
  KEY `ix_b_socialservices_contact3` (`TIMESTAMP_X`),
  KEY `ix_b_socialservices_contact4` (`LAST_AUTHORIZE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_socialservices_contact: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_socialservices_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_contact` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_socialservices_contact_connect
DROP TABLE IF EXISTS `b_socialservices_contact_connect`;
CREATE TABLE IF NOT EXISTS `b_socialservices_contact_connect` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CONTACT_ID` int(11) DEFAULT NULL,
  `LINK_ID` int(11) DEFAULT NULL,
  `CONTACT_PROFILE_ID` int(11) NOT NULL,
  `CONTACT_PORTAL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONNECT_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT 'P',
  `LAST_AUTHORIZE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_socialservices_contact_connect1` (`CONTACT_ID`),
  KEY `ix_b_socialservices_contact_connect2` (`LINK_ID`),
  KEY `ix_b_socialservices_contact_connect3` (`LAST_AUTHORIZE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_socialservices_contact_connect: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_socialservices_contact_connect` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_contact_connect` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_socialservices_message
DROP TABLE IF EXISTS `b_socialservices_message`;
CREATE TABLE IF NOT EXISTS `b_socialservices_message` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `SOCSERV_USER_ID` int(11) NOT NULL,
  `PROVIDER` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INSERT_DATE` datetime DEFAULT NULL,
  `SUCCES_SENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_socialservices_message: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_socialservices_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_message` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_socialservices_user
DROP TABLE IF EXISTS `b_socialservices_user`;
CREATE TABLE IF NOT EXISTS `b_socialservices_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGIN` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PHOTO` int(11) DEFAULT NULL,
  `EXTERNAL_AUTH_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `XML_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CAN_DELETE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `PERSONAL_WWW` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERMISSIONS` varchar(555) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OATOKEN` varchar(3000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OATOKEN_EXPIRES` int(11) DEFAULT NULL,
  `OASECRET` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REFRESH_TOKEN` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEND_ACTIVITY` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SITE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INITIALIZED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_SOCIALSERVICES_USER` (`XML_ID`,`EXTERNAL_AUTH_ID`),
  KEY `IX_B_SOCIALSERVICES_US_1` (`USER_ID`),
  KEY `IX_B_SOCIALSERVICES_US_3` (`LOGIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_socialservices_user: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_socialservices_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_user` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_socialservices_user_link
DROP TABLE IF EXISTS `b_socialservices_user_link`;
CREATE TABLE IF NOT EXISTS `b_socialservices_user_link` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `SOCSERV_USER_ID` int(11) NOT NULL,
  `LINK_USER_ID` int(11) DEFAULT NULL,
  `LINK_UID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LINK_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_LAST_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_PICTURE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_socialservices_user_link_5` (`SOCSERV_USER_ID`),
  KEY `ix_b_socialservices_user_link_6` (`LINK_USER_ID`,`TIMESTAMP_X`),
  KEY `ix_b_socialservices_user_link_7` (`LINK_UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_socialservices_user_link: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_socialservices_user_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_user_link` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_sticker
DROP TABLE IF EXISTS `b_sticker`;
CREATE TABLE IF NOT EXISTS `b_sticker` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAGE_URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PAGE_TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `MODIFIED_BY` int(18) NOT NULL,
  `CREATED_BY` int(18) NOT NULL,
  `PERSONAL` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CONTENT` text COLLATE utf8_unicode_ci,
  `POS_TOP` int(11) DEFAULT NULL,
  `POS_LEFT` int(11) DEFAULT NULL,
  `WIDTH` int(11) DEFAULT NULL,
  `HEIGHT` int(11) DEFAULT NULL,
  `COLOR` int(11) DEFAULT NULL,
  `COLLAPSED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `COMPLETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CLOSED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DELETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `MARKER_TOP` int(11) DEFAULT NULL,
  `MARKER_LEFT` int(11) DEFAULT NULL,
  `MARKER_WIDTH` int(11) DEFAULT NULL,
  `MARKER_HEIGHT` int(11) DEFAULT NULL,
  `MARKER_ADJUST` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_sticker: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_sticker` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sticker` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_sticker_group_task
DROP TABLE IF EXISTS `b_sticker_group_task`;
CREATE TABLE IF NOT EXISTS `b_sticker_group_task` (
  `GROUP_ID` int(11) NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  PRIMARY KEY (`GROUP_ID`,`TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_sticker_group_task: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_sticker_group_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sticker_group_task` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_task
DROP TABLE IF EXISTS `b_task`;
CREATE TABLE IF NOT EXISTS `b_task` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LETTER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SYS` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BINDING` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'module',
  PRIMARY KEY (`ID`),
  KEY `ix_task` (`MODULE_ID`,`BINDING`,`LETTER`,`SYS`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_task: ~49 rows (приблизительно)
/*!40000 ALTER TABLE `b_task` DISABLE KEYS */;
REPLACE INTO `b_task` (`ID`, `NAME`, `LETTER`, `MODULE_ID`, `SYS`, `DESCRIPTION`, `BINDING`) VALUES
	(1, 'main_denied', 'D', 'main', 'Y', NULL, 'module'),
	(2, 'main_change_profile', 'P', 'main', 'Y', NULL, 'module'),
	(3, 'main_view_all_settings', 'R', 'main', 'Y', NULL, 'module'),
	(4, 'main_view_all_settings_change_profile', 'T', 'main', 'Y', NULL, 'module'),
	(5, 'main_edit_subordinate_users', 'V', 'main', 'Y', NULL, 'module'),
	(6, 'main_full_access', 'W', 'main', 'Y', NULL, 'module'),
	(7, 'fm_folder_access_denied', 'D', 'main', 'Y', NULL, 'file'),
	(8, 'fm_folder_access_read', 'R', 'main', 'Y', NULL, 'file'),
	(9, 'fm_folder_access_write', 'W', 'main', 'Y', NULL, 'file'),
	(10, 'fm_folder_access_full', 'X', 'main', 'Y', NULL, 'file'),
	(11, 'fm_folder_access_workflow', 'U', 'main', 'Y', NULL, 'file'),
	(12, 'bitrixcloud_deny', 'D', 'bitrixcloud', 'Y', NULL, 'module'),
	(13, 'bitrixcloud_control', 'W', 'bitrixcloud', 'Y', NULL, 'module'),
	(14, 'clouds_denied', 'D', 'clouds', 'Y', NULL, 'module'),
	(15, 'clouds_browse', 'F', 'clouds', 'Y', NULL, 'module'),
	(16, 'clouds_upload', 'U', 'clouds', 'Y', NULL, 'module'),
	(17, 'clouds_full_access', 'W', 'clouds', 'Y', NULL, 'module'),
	(18, 'fileman_denied', 'D', 'fileman', 'Y', '', 'module'),
	(19, 'fileman_allowed_folders', 'F', 'fileman', 'Y', '', 'module'),
	(20, 'fileman_full_access', 'W', 'fileman', 'Y', '', 'module'),
	(21, 'medialib_denied', 'D', 'fileman', 'Y', '', 'medialib'),
	(22, 'medialib_view', 'F', 'fileman', 'Y', '', 'medialib'),
	(23, 'medialib_only_new', 'R', 'fileman', 'Y', '', 'medialib'),
	(24, 'medialib_edit_items', 'V', 'fileman', 'Y', '', 'medialib'),
	(25, 'medialib_editor', 'W', 'fileman', 'Y', '', 'medialib'),
	(26, 'medialib_full', 'X', 'fileman', 'Y', '', 'medialib'),
	(27, 'stickers_denied', 'D', 'fileman', 'Y', '', 'stickers'),
	(28, 'stickers_read', 'R', 'fileman', 'Y', '', 'stickers'),
	(29, 'stickers_edit', 'W', 'fileman', 'Y', '', 'stickers'),
	(30, 'hblock_denied', 'D', 'highloadblock', 'Y', NULL, 'module'),
	(31, 'hblock_read', 'R', 'highloadblock', 'Y', NULL, 'module'),
	(32, 'hblock_write', 'W', 'highloadblock', 'Y', NULL, 'module'),
	(33, 'iblock_deny', 'D', 'iblock', 'Y', NULL, 'iblock'),
	(34, 'iblock_read', 'R', 'iblock', 'Y', NULL, 'iblock'),
	(35, 'iblock_element_add', 'E', 'iblock', 'Y', NULL, 'iblock'),
	(36, 'iblock_admin_read', 'S', 'iblock', 'Y', NULL, 'iblock'),
	(37, 'iblock_admin_add', 'T', 'iblock', 'Y', NULL, 'iblock'),
	(38, 'iblock_limited_edit', 'U', 'iblock', 'Y', NULL, 'iblock'),
	(39, 'iblock_full_edit', 'W', 'iblock', 'Y', NULL, 'iblock'),
	(40, 'iblock_full', 'X', 'iblock', 'Y', NULL, 'iblock'),
	(41, 'landing_right_denied', 'D', 'landing', 'Y', NULL, 'module'),
	(42, 'landing_right_read', 'R', 'landing', 'Y', NULL, 'module'),
	(43, 'landing_right_edit', 'U', 'landing', 'Y', NULL, 'module'),
	(44, 'landing_right_sett', 'V', 'landing', 'Y', NULL, 'module'),
	(45, 'landing_right_public', 'W', 'landing', 'Y', NULL, 'module'),
	(46, 'landing_right_delete', 'X', 'landing', 'Y', NULL, 'module'),
	(47, 'seo_denied', 'D', 'seo', 'Y', '', 'module'),
	(48, 'seo_edit', 'F', 'seo', 'Y', '', 'module'),
	(49, 'seo_full_access', 'W', 'seo', 'Y', '', 'module');
/*!40000 ALTER TABLE `b_task` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_task_operation
DROP TABLE IF EXISTS `b_task_operation`;
CREATE TABLE IF NOT EXISTS `b_task_operation` (
  `TASK_ID` int(18) NOT NULL,
  `OPERATION_ID` int(18) NOT NULL,
  PRIMARY KEY (`TASK_ID`,`OPERATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_task_operation: ~194 rows (приблизительно)
/*!40000 ALTER TABLE `b_task_operation` DISABLE KEYS */;
REPLACE INTO `b_task_operation` (`TASK_ID`, `OPERATION_ID`) VALUES
	(2, 2),
	(2, 3),
	(3, 2),
	(3, 4),
	(3, 5),
	(3, 6),
	(3, 7),
	(4, 2),
	(4, 3),
	(4, 4),
	(4, 5),
	(4, 6),
	(4, 7),
	(5, 2),
	(5, 3),
	(5, 5),
	(5, 6),
	(5, 7),
	(5, 8),
	(5, 9),
	(6, 2),
	(6, 3),
	(6, 4),
	(6, 5),
	(6, 6),
	(6, 7),
	(6, 10),
	(6, 11),
	(6, 12),
	(6, 13),
	(6, 14),
	(6, 15),
	(6, 16),
	(6, 17),
	(6, 18),
	(8, 19),
	(8, 20),
	(8, 21),
	(9, 19),
	(9, 20),
	(9, 21),
	(9, 22),
	(9, 23),
	(9, 24),
	(9, 25),
	(9, 26),
	(9, 27),
	(9, 28),
	(9, 29),
	(9, 30),
	(9, 31),
	(9, 32),
	(9, 33),
	(9, 34),
	(10, 19),
	(10, 20),
	(10, 21),
	(10, 22),
	(10, 23),
	(10, 24),
	(10, 25),
	(10, 26),
	(10, 27),
	(10, 28),
	(10, 29),
	(10, 30),
	(10, 31),
	(10, 32),
	(10, 33),
	(10, 34),
	(10, 35),
	(11, 19),
	(11, 20),
	(11, 21),
	(11, 24),
	(11, 28),
	(13, 36),
	(13, 37),
	(13, 38),
	(15, 39),
	(16, 39),
	(16, 40),
	(17, 39),
	(17, 40),
	(17, 41),
	(19, 44),
	(19, 45),
	(19, 46),
	(19, 47),
	(19, 48),
	(19, 49),
	(19, 50),
	(19, 52),
	(19, 53),
	(20, 42),
	(20, 43),
	(20, 44),
	(20, 45),
	(20, 46),
	(20, 47),
	(20, 48),
	(20, 49),
	(20, 50),
	(20, 51),
	(20, 52),
	(20, 53),
	(20, 54),
	(22, 55),
	(23, 55),
	(23, 56),
	(23, 60),
	(24, 55),
	(24, 60),
	(24, 61),
	(24, 62),
	(25, 55),
	(25, 56),
	(25, 57),
	(25, 58),
	(25, 60),
	(25, 61),
	(25, 62),
	(26, 55),
	(26, 56),
	(26, 57),
	(26, 58),
	(26, 59),
	(26, 60),
	(26, 61),
	(26, 62),
	(28, 63),
	(29, 63),
	(29, 64),
	(29, 65),
	(29, 66),
	(31, 67),
	(32, 68),
	(32, 69),
	(34, 70),
	(34, 71),
	(35, 72),
	(36, 70),
	(36, 71),
	(36, 73),
	(37, 70),
	(37, 71),
	(37, 72),
	(37, 73),
	(38, 70),
	(38, 71),
	(38, 72),
	(38, 73),
	(38, 74),
	(38, 75),
	(38, 76),
	(38, 77),
	(39, 70),
	(39, 71),
	(39, 72),
	(39, 73),
	(39, 74),
	(39, 75),
	(39, 76),
	(39, 77),
	(39, 78),
	(39, 79),
	(39, 80),
	(39, 81),
	(40, 70),
	(40, 71),
	(40, 72),
	(40, 73),
	(40, 74),
	(40, 75),
	(40, 76),
	(40, 77),
	(40, 78),
	(40, 79),
	(40, 80),
	(40, 81),
	(40, 82),
	(40, 83),
	(40, 84),
	(40, 85),
	(40, 86),
	(40, 87),
	(42, 88),
	(43, 89),
	(44, 90),
	(45, 91),
	(46, 92),
	(48, 94),
	(49, 93),
	(49, 94);
/*!40000 ALTER TABLE `b_task_operation` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_undo
DROP TABLE IF EXISTS `b_undo`;
CREATE TABLE IF NOT EXISTS `b_undo` (
  `ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UNDO_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UNDO_HANDLER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTENT` mediumtext COLLATE utf8_unicode_ci,
  `USER_ID` int(11) DEFAULT NULL,
  `TIMESTAMP_X` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_undo: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `b_undo` DISABLE KEYS */;
REPLACE INTO `b_undo` (`ID`, `MODULE_ID`, `UNDO_TYPE`, `UNDO_HANDLER`, `CONTENT`, `USER_ID`, `TIMESTAMP_X`) VALUES
	('1514bd4cb1ce120f2dd5de6da04f7ba6a', 'fileman', 'edit_file', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:48:"G:/server/WORK/blog-rusrobotics-bitrix/index.php";s:7:"content";s:1744:"<?\nrequire($_SERVER["DOCUMENT_ROOT"] . "/bitrix/header.php");\n$APPLICATION->SetTitle("RR Blog");\n?><?$APPLICATION->IncludeComponent(\n	"bitrix:news.list",\n	"rr_blog",\n	Array(\n		"ACTIVE_DATE_FORMAT" => "d.m.Y",\n		"ADD_SECTIONS_CHAIN" => "Y",\n		"AJAX_MODE" => "N",\n		"AJAX_OPTION_ADDITIONAL" => "",\n		"AJAX_OPTION_HISTORY" => "N",\n		"AJAX_OPTION_JUMP" => "N",\n		"AJAX_OPTION_STYLE" => "Y",\n		"CACHE_FILTER" => "N",\n		"CACHE_GROUPS" => "Y",\n		"CACHE_TIME" => "36000000",\n		"CACHE_TYPE" => "N",\n		"CHECK_DATES" => "Y",\n		"DETAIL_URL" => "",\n		"DISPLAY_BOTTOM_PAGER" => "Y",\n		"DISPLAY_DATE" => "Y",\n		"DISPLAY_NAME" => "Y",\n		"DISPLAY_PICTURE" => "Y",\n		"DISPLAY_PREVIEW_TEXT" => "Y",\n		"DISPLAY_TOP_PAGER" => "N",\n		"FIELD_CODE" => array("",""),\n		"FILTER_NAME" => "",\n		"HIDE_LINK_WHEN_NO_DETAIL" => "N",\n		"IBLOCK_ID" => "1",\n		"IBLOCK_TYPE" => "articles",\n		"INCLUDE_IBLOCK_INTO_CHAIN" => "Y",\n		"INCLUDE_SUBSECTIONS" => "Y",\n		"MESSAGE_404" => "",\n		"NEWS_COUNT" => "20",\n		"PAGER_BASE_LINK_ENABLE" => "N",\n		"PAGER_DESC_NUMBERING" => "N",\n		"PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",\n		"PAGER_SHOW_ALL" => "N",\n		"PAGER_SHOW_ALWAYS" => "N",\n		"PAGER_TEMPLATE" => ".default",\n		"PAGER_TITLE" => "Новости",\n		"PARENT_SECTION" => "",\n		"PARENT_SECTION_CODE" => "",\n		"PREVIEW_TRUNCATE_LEN" => "",\n		"PROPERTY_CODE" => array("",""),\n		"SET_BROWSER_TITLE" => "Y",\n		"SET_LAST_MODIFIED" => "N",\n		"SET_META_DESCRIPTION" => "Y",\n		"SET_META_KEYWORDS" => "Y",\n		"SET_STATUS_404" => "N",\n		"SET_TITLE" => "Y",\n		"SHOW_404" => "N",\n		"SORT_BY1" => "ACTIVE_FROM",\n		"SORT_BY2" => "SORT",\n		"SORT_ORDER1" => "DESC",\n		"SORT_ORDER2" => "ASC",\n		"STRICT_SECTION_CHECK" => "N"\n	)\n);?><? require($_SERVER["DOCUMENT_ROOT"] . "/bitrix/footer.php"); ?>";}', 1, 1577613667),
	('19b8de6f95918f4b8b26872ac399a3c57', 'fileman', 'edit_menu', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:52:"G:/server/WORK/blog-rusrobotics-bitrix/.top.menu.php";s:7:"content";s:29:"<?\n$aMenuLinks = Array(\n);\n?>";}', 1, 1577614820),
	('1ecc903ea90bb4c2ba2c0431fd4c46eb7', 'fileman', 'edit_menu', 'CFileman::UndoNewFile', 'a:3:{s:7:"absPath";s:52:"G:/server/WORK/blog-rusrobotics-bitrix/.top.menu.php";s:4:"path";s:14:"/.top.menu.php";s:4:"site";s:2:"s1";}', 1, 1577614752);
/*!40000 ALTER TABLE `b_undo` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_urlpreview_metadata
DROP TABLE IF EXISTS `b_urlpreview_metadata`;
CREATE TABLE IF NOT EXISTS `b_urlpreview_metadata` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `URL` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `DATE_INSERT` datetime NOT NULL,
  `DATE_EXPIRE` datetime DEFAULT NULL,
  `TITLE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `IMAGE_ID` int(11) DEFAULT NULL,
  `IMAGE` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMBED` mediumtext COLLATE utf8_unicode_ci,
  `EXTRA` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `IX_URLPREVIEW_METADATA_URL` (`URL`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_urlpreview_metadata: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_urlpreview_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_urlpreview_metadata` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_urlpreview_route
DROP TABLE IF EXISTS `b_urlpreview_route`;
CREATE TABLE IF NOT EXISTS `b_urlpreview_route` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROUTE` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CLASS` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `PARAMETERS` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_URLPREVIEW_ROUTE_ROUTE` (`ROUTE`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_urlpreview_route: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_urlpreview_route` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_urlpreview_route` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_user
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE IF NOT EXISTS `b_user` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `LOGIN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CHECKWORD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_LOGIN` datetime DEFAULT NULL,
  `DATE_REGISTER` datetime NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PROFESSION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_WWW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_ICQ` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_GENDER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_BIRTHDATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PHOTO` int(18) DEFAULT NULL,
  `PERSONAL_PHONE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_FAX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_MOBILE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PAGER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_STREET` text COLLATE utf8_unicode_ci,
  `PERSONAL_MAILBOX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_CITY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_STATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_ZIP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_COUNTRY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_NOTES` text COLLATE utf8_unicode_ci,
  `WORK_COMPANY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_DEPARTMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_POSITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_WWW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PHONE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_FAX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PAGER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_STREET` text COLLATE utf8_unicode_ci,
  `WORK_MAILBOX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_CITY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_STATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_ZIP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_COUNTRY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PROFILE` text COLLATE utf8_unicode_ci,
  `WORK_LOGO` int(18) DEFAULT NULL,
  `WORK_NOTES` text COLLATE utf8_unicode_ci,
  `ADMIN_NOTES` text COLLATE utf8_unicode_ci,
  `STORED_HASH` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_BIRTHDAY` date DEFAULT NULL,
  `EXTERNAL_AUTH_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHECKWORD_TIME` datetime DEFAULT NULL,
  `SECOND_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONFIRM_CODE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOGIN_ATTEMPTS` int(18) DEFAULT NULL,
  `LAST_ACTIVITY_DATE` datetime DEFAULT NULL,
  `AUTO_TIME_ZONE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIME_ZONE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIME_ZONE_OFFSET` int(18) DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BX_USER_ID` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_login` (`LOGIN`,`EXTERNAL_AUTH_ID`),
  KEY `ix_b_user_email` (`EMAIL`),
  KEY `ix_b_user_activity_date` (`LAST_ACTIVITY_DATE`),
  KEY `IX_B_USER_XML_ID` (`XML_ID`),
  KEY `ix_user_last_login` (`LAST_LOGIN`),
  KEY `ix_user_date_register` (`DATE_REGISTER`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_user: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `b_user` DISABLE KEYS */;
REPLACE INTO `b_user` (`ID`, `TIMESTAMP_X`, `LOGIN`, `PASSWORD`, `CHECKWORD`, `ACTIVE`, `NAME`, `LAST_NAME`, `EMAIL`, `LAST_LOGIN`, `DATE_REGISTER`, `LID`, `PERSONAL_PROFESSION`, `PERSONAL_WWW`, `PERSONAL_ICQ`, `PERSONAL_GENDER`, `PERSONAL_BIRTHDATE`, `PERSONAL_PHOTO`, `PERSONAL_PHONE`, `PERSONAL_FAX`, `PERSONAL_MOBILE`, `PERSONAL_PAGER`, `PERSONAL_STREET`, `PERSONAL_MAILBOX`, `PERSONAL_CITY`, `PERSONAL_STATE`, `PERSONAL_ZIP`, `PERSONAL_COUNTRY`, `PERSONAL_NOTES`, `WORK_COMPANY`, `WORK_DEPARTMENT`, `WORK_POSITION`, `WORK_WWW`, `WORK_PHONE`, `WORK_FAX`, `WORK_PAGER`, `WORK_STREET`, `WORK_MAILBOX`, `WORK_CITY`, `WORK_STATE`, `WORK_ZIP`, `WORK_COUNTRY`, `WORK_PROFILE`, `WORK_LOGO`, `WORK_NOTES`, `ADMIN_NOTES`, `STORED_HASH`, `XML_ID`, `PERSONAL_BIRTHDAY`, `EXTERNAL_AUTH_ID`, `CHECKWORD_TIME`, `SECOND_NAME`, `CONFIRM_CODE`, `LOGIN_ATTEMPTS`, `LAST_ACTIVITY_DATE`, `AUTO_TIME_ZONE`, `TIME_ZONE`, `TIME_ZONE_OFFSET`, `TITLE`, `BX_USER_ID`, `LANGUAGE_ID`) VALUES
	(1, NULL, 'admin', '0tigsie1e11ca4274879d4b9d503d380b17ce79c', 'A3CjtTIx00804f0184db3e18984e014ceeb0df46', 'Y', '', '', 'music.dll@mail.ru', '2019-12-30 11:50:53', '2019-12-27 14:22:41', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-27 14:22:41', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `b_user` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_user_access
DROP TABLE IF EXISTS `b_user_access`;
CREATE TABLE IF NOT EXISTS `b_user_access` (
  `USER_ID` int(11) DEFAULT NULL,
  `PROVIDER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCESS_CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `ix_ua_user_provider` (`USER_ID`,`PROVIDER_ID`),
  KEY `ix_ua_user_access` (`USER_ID`,`ACCESS_CODE`),
  KEY `ix_ua_access` (`ACCESS_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_user_access: ~6 rows (приблизительно)
/*!40000 ALTER TABLE `b_user_access` DISABLE KEYS */;
REPLACE INTO `b_user_access` (`USER_ID`, `PROVIDER_ID`, `ACCESS_CODE`) VALUES
	(0, 'group', 'G2'),
	(1, 'group', 'G1'),
	(1, 'group', 'G3'),
	(1, 'group', 'G4'),
	(1, 'group', 'G2'),
	(1, 'user', 'U1');
/*!40000 ALTER TABLE `b_user_access` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_user_access_check
DROP TABLE IF EXISTS `b_user_access_check`;
CREATE TABLE IF NOT EXISTS `b_user_access_check` (
  `USER_ID` int(11) DEFAULT NULL,
  `PROVIDER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `ix_uac_user_provider` (`USER_ID`,`PROVIDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_user_access_check: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `b_user_access_check` DISABLE KEYS */;
REPLACE INTO `b_user_access_check` (`USER_ID`, `PROVIDER_ID`) VALUES
	(1, 'group'),
	(1, 'user');
/*!40000 ALTER TABLE `b_user_access_check` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_user_auth_action
DROP TABLE IF EXISTS `b_user_auth_action`;
CREATE TABLE IF NOT EXISTS `b_user_auth_action` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `PRIORITY` int(11) NOT NULL DEFAULT '100',
  `ACTION` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTION_DATE` datetime NOT NULL,
  `APPLICATION_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_auth_action_user` (`USER_ID`,`PRIORITY`),
  KEY `ix_auth_action_date` (`ACTION_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_user_auth_action: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_user_auth_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_auth_action` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_user_counter
DROP TABLE IF EXISTS `b_user_counter`;
CREATE TABLE IF NOT EXISTS `b_user_counter` (
  `USER_ID` int(18) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '**',
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CNT` int(18) NOT NULL DEFAULT '0',
  `LAST_DATE` datetime DEFAULT NULL,
  `TIMESTAMP_X` datetime NOT NULL DEFAULT '3000-01-01 00:00:00',
  `TAG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci,
  `SENT` char(1) COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`USER_ID`,`SITE_ID`,`CODE`),
  KEY `ix_buc_tag` (`TAG`),
  KEY `ix_buc_code` (`CODE`),
  KEY `ix_buc_ts` (`TIMESTAMP_X`),
  KEY `ix_buc_sent_userid` (`SENT`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_user_counter: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_user_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_counter` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_user_digest
DROP TABLE IF EXISTS `b_user_digest`;
CREATE TABLE IF NOT EXISTS `b_user_digest` (
  `USER_ID` int(11) NOT NULL,
  `DIGEST_HA1` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_user_digest: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_user_digest` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_digest` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_user_field
DROP TABLE IF EXISTS `b_user_field`;
CREATE TABLE IF NOT EXISTS `b_user_field` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD_NAME` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) DEFAULT NULL,
  `MULTIPLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `MANDATORY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SHOW_FILTER` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SHOW_IN_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EDIT_IN_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `IS_SEARCHABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SETTINGS` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_user_type_entity` (`ENTITY_ID`,`FIELD_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_user_field: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_user_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_field` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_user_field_confirm
DROP TABLE IF EXISTS `b_user_field_confirm`;
CREATE TABLE IF NOT EXISTS `b_user_field_confirm` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(18) NOT NULL,
  `DATE_CHANGE` timestamp NULL DEFAULT NULL,
  `FIELD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FIELD_VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONFIRM_CODE` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `ATTEMPTS` int(18) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ix_b_user_field_confirm1` (`USER_ID`,`CONFIRM_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_user_field_confirm: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_user_field_confirm` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_field_confirm` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_user_field_enum
DROP TABLE IF EXISTS `b_user_field_enum`;
CREATE TABLE IF NOT EXISTS `b_user_field_enum` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_FIELD_ID` int(11) DEFAULT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_user_field_enum` (`USER_FIELD_ID`,`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_user_field_enum: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_user_field_enum` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_field_enum` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_user_field_lang
DROP TABLE IF EXISTS `b_user_field_lang`;
CREATE TABLE IF NOT EXISTS `b_user_field_lang` (
  `USER_FIELD_ID` int(11) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `EDIT_FORM_LABEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_COLUMN_LABEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_FILTER_LABEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ERROR_MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HELP_MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`USER_FIELD_ID`,`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_user_field_lang: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_user_field_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_field_lang` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_user_group
DROP TABLE IF EXISTS `b_user_group`;
CREATE TABLE IF NOT EXISTS `b_user_group` (
  `USER_ID` int(18) NOT NULL,
  `GROUP_ID` int(18) NOT NULL,
  `DATE_ACTIVE_FROM` datetime DEFAULT NULL,
  `DATE_ACTIVE_TO` datetime DEFAULT NULL,
  UNIQUE KEY `ix_user_group` (`USER_ID`,`GROUP_ID`),
  KEY `ix_user_group_group` (`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_user_group: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `b_user_group` DISABLE KEYS */;
REPLACE INTO `b_user_group` (`USER_ID`, `GROUP_ID`, `DATE_ACTIVE_FROM`, `DATE_ACTIVE_TO`) VALUES
	(1, 1, NULL, NULL),
	(1, 3, NULL, NULL),
	(1, 4, NULL, NULL);
/*!40000 ALTER TABLE `b_user_group` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_user_hit_auth
DROP TABLE IF EXISTS `b_user_hit_auth`;
CREATE TABLE IF NOT EXISTS `b_user_hit_auth` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(18) NOT NULL,
  `HASH` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_USER_HIT_AUTH_1` (`HASH`),
  KEY `IX_USER_HIT_AUTH_2` (`USER_ID`),
  KEY `IX_USER_HIT_AUTH_3` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_user_hit_auth: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_user_hit_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_hit_auth` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_user_index
DROP TABLE IF EXISTS `b_user_index`;
CREATE TABLE IF NOT EXISTS `b_user_index` (
  `USER_ID` int(11) NOT NULL,
  `SEARCH_USER_CONTENT` text COLLATE utf8_unicode_ci,
  `SEARCH_DEPARTMENT_CONTENT` text COLLATE utf8_unicode_ci,
  `SEARCH_ADMIN_CONTENT` text COLLATE utf8_unicode_ci,
  `NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECOND_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_POSITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UF_DEPARTMENT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  FULLTEXT KEY `IXF_B_USER_INDEX_1` (`SEARCH_USER_CONTENT`),
  FULLTEXT KEY `IXF_B_USER_INDEX_2` (`SEARCH_DEPARTMENT_CONTENT`),
  FULLTEXT KEY `IXF_B_USER_INDEX_3` (`SEARCH_ADMIN_CONTENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_user_index: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `b_user_index` DISABLE KEYS */;
REPLACE INTO `b_user_index` (`USER_ID`, `SEARCH_USER_CONTENT`, `SEARCH_DEPARTMENT_CONTENT`, `SEARCH_ADMIN_CONTENT`, `NAME`, `LAST_NAME`, `SECOND_NAME`, `WORK_POSITION`, `UF_DEPARTMENT_NAME`) VALUES
	(1, '001', '', '001 zhfvp qyy znvy zhfvp.qyy@znvy.eh nqzva', '', '', '', '', '');
/*!40000 ALTER TABLE `b_user_index` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_user_index_selector
DROP TABLE IF EXISTS `b_user_index_selector`;
CREATE TABLE IF NOT EXISTS `b_user_index_selector` (
  `USER_ID` int(11) NOT NULL,
  `SEARCH_SELECTOR_CONTENT` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`USER_ID`),
  FULLTEXT KEY `IXF_B_USER_INDEX_SELECTOR_1` (`SEARCH_SELECTOR_CONTENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_user_index_selector: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `b_user_index_selector` DISABLE KEYS */;
REPLACE INTO `b_user_index_selector` (`USER_ID`, `SEARCH_SELECTOR_CONTENT`) VALUES
	(1, '');
/*!40000 ALTER TABLE `b_user_index_selector` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_user_option
DROP TABLE IF EXISTS `b_user_option`;
CREATE TABLE IF NOT EXISTS `b_user_option` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `CATEGORY` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` mediumtext COLLATE utf8_unicode_ci,
  `COMMON` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_user_category_name` (`USER_ID`,`CATEGORY`,`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_user_option: ~19 rows (приблизительно)
/*!40000 ALTER TABLE `b_user_option` DISABLE KEYS */;
REPLACE INTO `b_user_option` (`ID`, `USER_ID`, `CATEGORY`, `NAME`, `VALUE`, `COMMON`) VALUES
	(1, 0, 'intranet', '~gadgets_admin_index', 'a:1:{i:0;a:1:{s:7:"GADGETS";a:8:{s:20:"ADMIN_INFO@333333333";a:3:{s:6:"COLUMN";i:0;s:3:"ROW";i:0;s:4:"HIDE";s:1:"N";}s:19:"HTML_AREA@444444444";a:5:{s:6:"COLUMN";i:0;s:3:"ROW";i:1;s:4:"HIDE";s:1:"N";s:8:"USERDATA";a:1:{s:7:"content";s:797:"<table class="bx-gadgets-info-site-table" cellspacing="0"><tr>	<td class="bx-gadget-gray">Создатель сайта:</td>	<td>Группа компаний &laquo;1С-Битрикс&raquo;.</td>	<td class="bx-gadgets-info-site-logo" rowspan="5"><img src="/bitrix/components/bitrix/desktop/templates/admin/images/site_logo.png"></td></tr><tr>	<td class="bx-gadget-gray">Адрес сайта:</td>	<td><a href="http://www.1c-bitrix.ru">www.1c-bitrix.ru</a></td></tr><tr>	<td class="bx-gadget-gray">Сайт сдан:</td>	<td>12 декабря 2010 г.</td></tr><tr>	<td class="bx-gadget-gray">Ответственное лицо:</td>	<td>Иван Иванов</td></tr><tr>	<td class="bx-gadget-gray">E-mail:</td>	<td><a href="mailto:info@1c-bitrix.ru">info@1c-bitrix.ru</a></td></tr></table>";}s:8:"SETTINGS";a:1:{s:9:"TITLE_STD";s:34:"Информация о сайте";}}s:25:"ADMIN_CHECKLIST@777888999";a:3:{s:6:"COLUMN";i:0;s:3:"ROW";i:2;s:4:"HIDE";s:1:"N";}s:19:"RSSREADER@777777777";a:4:{s:6:"COLUMN";i:1;s:3:"ROW";i:3;s:4:"HIDE";s:1:"N";s:8:"SETTINGS";a:3:{s:9:"TITLE_STD";s:33:"Новости 1С-Битрикс";s:3:"CNT";i:10;s:7:"RSS_URL";s:45:"https://www.1c-bitrix.ru/about/life/news/rss/";}}s:24:"ADMIN_SECURITY@555555555";a:3:{s:6:"COLUMN";i:1;s:3:"ROW";i:0;s:4:"HIDE";s:1:"N";}s:25:"ADMIN_SITESPEED@666666777";a:3:{s:6:"COLUMN";i:1;s:3:"ROW";i:1;s:4:"HIDE";s:1:"N";}s:23:"ADMIN_PERFMON@666666666";a:3:{s:6:"COLUMN";i:1;s:3:"ROW";i:2;s:4:"HIDE";s:1:"N";}s:23:"ADMIN_MARKETPALCE@22549";a:3:{s:6:"COLUMN";i:1;s:3:"ROW";i:3;s:4:"HIDE";s:1:"N";}}}}', 'Y'),
	(2, 1, 'admin_panel', 'settings', 'a:1:{s:4:"edit";s:3:"off";}', 'N'),
	(3, 1, 'hot_keys', 'user_defined', 'b:1;', 'N'),
	(4, 1, 'favorite', 'favorite_menu', 'a:1:{s:5:"stick";s:1:"N";}', 'N'),
	(6, 1, 'admin_menu', 'pos', 'a:3:{s:8:"sections";s:81:"menu_iblock,iblock_admin,menu_system,menu_site,menu_iblock_/articles,menu_fileman";s:5:"width";s:3:"319";s:3:"ver";s:2:"on";}', 'N'),
	(9, 1, 'main.interface.grid', 'tbl_iblock_admin_508c75c8507a2ae5223dfd2faeb98122', 'a:3:{s:5:"views";a:1:{s:7:"default";a:3:{s:7:"columns";s:0:"";s:13:"columns_sizes";a:2:{s:6:"expand";i:1;s:7:"columns";a:0:{}}s:15:"sticked_columns";a:0:{}}}s:7:"filters";a:0:{}s:12:"current_view";s:7:"default";}', 'N'),
	(10, 1, 'main.interface.grid', 'tbl_iblock_admin_126ac9f6149081eb0e97c2e939eaad52', 'a:3:{s:5:"views";a:1:{s:7:"default";a:3:{s:7:"columns";s:0:"";s:13:"columns_sizes";a:2:{s:6:"expand";i:1;s:7:"columns";a:0:{}}s:15:"sticked_columns";a:0:{}}}s:7:"filters";a:0:{}s:12:"current_view";s:7:"default";}', 'N'),
	(11, 1, 'main.interface.grid', 'tbl_iblock_admin_dba5d91846ce1a5e63734dfcbcb481cb', 'a:3:{s:5:"views";a:1:{s:7:"default";a:3:{s:7:"columns";s:0:"";s:13:"columns_sizes";a:2:{s:6:"expand";i:1;s:7:"columns";a:0:{}}s:15:"sticked_columns";a:0:{}}}s:7:"filters";a:0:{}s:12:"current_view";s:7:"default";}', 'N'),
	(12, 1, 'main.interface.grid', 'tbl_iblock_admin_750dd17d83198dd551018232269fa242', 'a:3:{s:5:"views";a:1:{s:7:"default";a:3:{s:7:"columns";s:0:"";s:13:"columns_sizes";a:2:{s:6:"expand";i:1;s:7:"columns";a:0:{}}s:15:"sticked_columns";a:0:{}}}s:7:"filters";a:0:{}s:12:"current_view";s:7:"default";}', 'N'),
	(17, 1, 'checklist', 'autotest_start', 's:1:"Y";', 'N'),
	(18, 1, 'checklist', 'show_hidden', 's:1:"Y";', 'N'),
	(24, 1, 'fileman', 'code_editor', 'a:1:{s:5:"theme";s:5:"light";}', 'N'),
	(28, 1, 'main.ui.filter', 'tbl_iblock_section_729f69bbdbc6c423526ea2cb8dac177b', 'a:6:{s:14:"use_pin_preset";b:1;s:15:"deleted_presets";a:0:{}s:15:"default_presets";a:0:{}s:7:"default";s:14:"default_filter";s:6:"filter";s:14:"default_filter";s:7:"filters";a:1:{s:10:"tmp_filter";a:2:{s:6:"fields";a:1:{s:10:"SECTION_ID";s:1:"0";}s:11:"filter_rows";s:10:"SECTION_ID";}}}', 'N'),
	(34, 1, 'main.interface.grid', 'tbl_iblock_section_729f69bbdbc6c423526ea2cb8dac177b', 'a:3:{s:5:"views";a:1:{s:7:"default";a:3:{s:7:"columns";s:0:"";s:13:"columns_sizes";a:2:{s:6:"expand";i:1;s:7:"columns";a:0:{}}s:15:"sticked_columns";a:0:{}}}s:7:"filters";a:0:{}s:12:"current_view";s:7:"default";}', 'N'),
	(41, 1, 'main.ui.filter', 'tbl_iblock_element_729f69bbdbc6c423526ea2cb8dac177b', 'a:6:{s:14:"use_pin_preset";b:1;s:15:"deleted_presets";a:0:{}s:15:"default_presets";a:0:{}s:7:"default";s:14:"default_filter";s:6:"filter";s:14:"default_filter";s:7:"filters";a:1:{s:14:"default_filter";a:0:{}}}', 'N'),
	(46, 1, 'main.interface.grid', 'tbl_iblock_element_729f69bbdbc6c423526ea2cb8dac177b', 'a:3:{s:5:"views";a:1:{s:7:"default";a:3:{s:7:"columns";s:0:"";s:13:"columns_sizes";a:2:{s:6:"expand";i:1;s:7:"columns";a:0:{}}s:15:"sticked_columns";a:0:{}}}s:7:"filters";a:0:{}s:12:"current_view";s:7:"default";}', 'N'),
	(67, 1, 'html_editor', 'user_settings_', 'a:1:{s:13:"taskbar_shown";s:1:"1";}', 'N'),
	(75, 1, 'fileman', 'last_pathes', 's:53:"a:2:{i:0;s:17:"/bitrix/templates";i:1;s:7:"/bitrix";}";', 'N'),
	(89, 1, 'main', 'fileinput', 'a:1:{s:4:"mode";s:9:"mode-pict";}', 'N');
/*!40000 ALTER TABLE `b_user_option` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_user_phone_auth
DROP TABLE IF EXISTS `b_user_phone_auth`;
CREATE TABLE IF NOT EXISTS `b_user_phone_auth` (
  `USER_ID` int(11) NOT NULL,
  `PHONE_NUMBER` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `OTP_SECRET` text COLLATE utf8_unicode_ci,
  `ATTEMPTS` int(11) DEFAULT '0',
  `CONFIRMED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `DATE_SENT` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  UNIQUE KEY `ix_user_phone_auth_number` (`PHONE_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_user_phone_auth: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_user_phone_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_phone_auth` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_user_profile_history
DROP TABLE IF EXISTS `b_user_profile_history`;
CREATE TABLE IF NOT EXISTS `b_user_profile_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `EVENT_TYPE` int(11) DEFAULT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_AGENT` text COLLATE utf8_unicode_ci,
  `REQUEST_URI` text COLLATE utf8_unicode_ci,
  `UPDATED_BY_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_profile_history_user` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_user_profile_history: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_user_profile_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_profile_history` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_user_profile_record
DROP TABLE IF EXISTS `b_user_profile_record`;
CREATE TABLE IF NOT EXISTS `b_user_profile_record` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HISTORY_ID` int(11) NOT NULL,
  `FIELD` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATA` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `ix_profile_record_history_field` (`HISTORY_ID`,`FIELD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_user_profile_record: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `b_user_profile_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_profile_record` ENABLE KEYS */;

-- Дамп структуры для таблица rusrobotics_bitrix.b_user_stored_auth
DROP TABLE IF EXISTS `b_user_stored_auth`;
CREATE TABLE IF NOT EXISTS `b_user_stored_auth` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(18) NOT NULL,
  `DATE_REG` datetime NOT NULL,
  `LAST_AUTH` datetime NOT NULL,
  `STORED_HASH` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `TEMP_HASH` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IP_ADDR` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ux_user_hash` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы rusrobotics_bitrix.b_user_stored_auth: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `b_user_stored_auth` DISABLE KEYS */;
REPLACE INTO `b_user_stored_auth` (`ID`, `USER_ID`, `DATE_REG`, `LAST_AUTH`, `STORED_HASH`, `TEMP_HASH`, `IP_ADDR`) VALUES
	(1, 1, '2019-12-27 14:22:41', '2019-12-27 14:22:41', 'aa9284603bb8506af3a28e578b2ce7b2', 'N', 2130706433),
	(2, 1, '2019-12-28 11:42:45', '2019-12-28 11:42:45', 'ec4691086992d0ea66e14c24498ea5b1', 'N', 2130706433),
	(3, 1, '2019-12-28 11:45:28', '2019-12-30 11:50:53', 'e754b97df4f14318e0dab3e26ca72f9d', 'N', 2130706433);
/*!40000 ALTER TABLE `b_user_stored_auth` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
