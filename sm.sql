-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.38-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for sm
CREATE DATABASE IF NOT EXISTS `sm` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sm`;

-- Dumping structure for table sm.accesstoken
CREATE TABLE IF NOT EXISTS `accesstoken` (
  `id` varchar(255) NOT NULL,
  `ttl` int(11) DEFAULT NULL,
  `scopes` text,
  `created` datetime DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sm.accesstoken: ~17 rows (approximately)
/*!40000 ALTER TABLE `accesstoken` DISABLE KEYS */;
INSERT INTO `accesstoken` (`id`, `ttl`, `scopes`, `created`, `userId`) VALUES
	('2nT8mo9CDNkZg875xy18ATDUKikNr3SGbjSha61CKYES3c5Xgg5iB1jLwbhYSpfd', 1209600, NULL, '2019-04-12 10:25:16', 1),
	('4uXsj5AXQHjaVcl8Axhh4c6Mv7T2BXsBWQuZIFKPF4DOGsIm02FgmRBWbbG0ZIf5', 1209600, NULL, '2019-04-13 12:48:10', 1),
	('6i9iJ709mu5Ltv6eQc5VjnmApKrhoL5j2dgMlqfxClFY3uoGj4ZVE2CYu2aBbwvd', 1209600, NULL, '2019-04-14 02:35:38', 1),
	('BZw11wN5WxaqcFtWcDcxQDFRgNEGuqXyLlFm6SrbiMwZJpBkxTU9B4CCQfOPBCt2', 1209600, NULL, '2019-04-18 13:18:37', 1),
	('Cm8wb8wNBkPPrHiqjQ8MUgUNDmjc91x06eDGGcHA2eVtY0hpoVqnkT0WHZtn3ja9', 1209600, NULL, '2019-04-14 16:06:30', 1),
	('egDwJzr7u84gD9FvOzIwU6eFFwtAOWWpyjVKEOeeigXaxDuwsTmkzkADOeKUcot5', 1209600, NULL, '2019-04-13 03:04:48', 1),
	('JE6BaGWtFVNK3keTkqNccZcW9pef0JQM2PqWjCbywCuWv8ZcICSz6EPcLL7EXttQ', 1209600, NULL, '2019-04-17 09:32:23', 1),
	('kK6lBRC6Eu5A8KuMGeWYxbXhT0lhvpyd5jP4t9tloqnHHRlrYedMc4OYtR5NtKJ0', 1209600, NULL, '2019-04-12 10:21:13', 1),
	('kRu0cqSJSJHxPjF0ICX8MLQE8AQ4pZ7AkBcfPSEcLbXVytkyYd9bvye9W7PKTrDK', 1209600, NULL, '2019-04-18 13:22:19', 1),
	('NivFAWivpRx2ZBM5jU9cnyr7jE7dyomE4zHCxeXR1amFxrn2ZOm97HArqsf2v4lW', 1209600, NULL, '2019-04-15 09:47:09', 1),
	('oGk2QeqkIIjCtf287uVTxDMhEHihNnlqXzJtlbKqR5GUMrw5sCZF9Z9kZ7yCvsDS', 1209600, NULL, '2019-04-18 12:28:51', 1),
	('PAInfeezFiq1qEEr5z8oAKchcLyZB2AfC3glCAPytVpuIe8t57qmusHFBP1karT9', 1209600, NULL, '2019-04-12 10:54:54', 1),
	('q5PDsaytK0ZfFxvCrp03R78tmKI56TbOpAyOY7k3OpyD44I83PjdTc9SCgccxfa0', 1209600, NULL, '2019-04-17 23:09:24', 1),
	('rEfEfMFuIJqWalAAVNo4ZxzFxAi4KNhxdF1q0WMnX7vjO41Esks8z90UHw6y6icd', 1209600, NULL, '2019-04-13 18:05:18', 1),
	('tbm8qwb9WJ7mXzzihhup8glQZYrFw4f3wmt4q019PWhT8MeAmO8m6xQUriusQmgW', 1209600, NULL, '2019-04-18 22:58:30', 1),
	('voAWtq65CwtjmWWjwSqfzZHMktZcFlHmpEePMDAaxvToSJ5SMDPCyUb5uK0aJlo0', 1209600, NULL, '2019-04-17 02:23:45', 1),
	('VqXvDleF3NClhszmAR5JCPvoWpvmb4kaL4heio5Nc7qkbPM8NaGXUD4Q5FtTJfR8', 1209600, NULL, '2019-04-15 03:35:55', 1),
	('xaU8VyDBkSiwvGq1nIeo4qLFdhN3MFiDFxa7ZW7uAGCdCSiZI0jNhRWiWoZ5xCmV', 1209600, NULL, '2019-04-16 08:24:28', 1),
	('YFhnXGnHUsrlQbBnU5egvHE74XRiv2GW4z8mlU5g7d1gXryFftjaZut1FAPJ7jjq', 1209600, NULL, '2019-04-16 02:16:49', 1);
/*!40000 ALTER TABLE `accesstoken` ENABLE KEYS */;

-- Dumping structure for table sm.acl
CREATE TABLE IF NOT EXISTS `acl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(512) DEFAULT NULL,
  `property` varchar(512) DEFAULT NULL,
  `accessType` varchar(512) DEFAULT NULL,
  `permission` varchar(512) DEFAULT NULL,
  `principalType` varchar(512) DEFAULT NULL,
  `principalId` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sm.acl: ~0 rows (approximately)
/*!40000 ALTER TABLE `acl` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl` ENABLE KEYS */;

-- Dumping structure for table sm.assessments
CREATE TABLE IF NOT EXISTS `assessments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('baseline','midline','endline') COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_score` smallint(6) DEFAULT NULL,
  `parent_assessment_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `assessments_parent_assessment_id_foreign` (`parent_assessment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sm.assessments: ~2 rows (approximately)
/*!40000 ALTER TABLE `assessments` DISABLE KEYS */;
INSERT INTO `assessments` (`id`, `name`, `type`, `total_score`, `parent_assessment_id`, `created_at`, `updated_at`) VALUES
	(14, 'English', 'midline', 100, 0, '2019-04-18 13:19:42', '2019-04-18 13:20:06'),
	(15, 'Science', 'endline', 200, 0, '2019-04-18 13:24:17', NULL);
/*!40000 ALTER TABLE `assessments` ENABLE KEYS */;

-- Dumping structure for table sm.role
CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(512) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sm.role: ~0 rows (approximately)
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

-- Dumping structure for table sm.rolemapping
CREATE TABLE IF NOT EXISTS `rolemapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `principalType` varchar(512) DEFAULT NULL,
  `principalId` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `principalId` (`principalId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sm.rolemapping: ~0 rows (approximately)
/*!40000 ALTER TABLE `rolemapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `rolemapping` ENABLE KEYS */;

-- Dumping structure for table sm.schools
CREATE TABLE IF NOT EXISTS `schools` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sm.schools: ~0 rows (approximately)
/*!40000 ALTER TABLE `schools` DISABLE KEYS */;
INSERT INTO `schools` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(21, 'Domnic School', '2019-04-18 14:21:26', NULL),
	(22, 'SHMS', '2019-04-18 22:58:58', '2019-04-18 22:59:02');
/*!40000 ALTER TABLE `schools` ENABLE KEYS */;

-- Dumping structure for view sm.studentassessmentsview
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `studentassessmentsview` (
	`id` INT(10) UNSIGNED NOT NULL,
	`student` VARCHAR(255) NULL COLLATE 'utf8mb4_unicode_ci',
	`assessment` VARCHAR(191) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`volunteer` VARCHAR(191) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`score` TINYINT(4) NULL,
	`assessment_date` DATE NOT NULL,
	`created_at` DATETIME NULL,
	`updated_at` DATETIME NULL
) ENGINE=MyISAM;

-- Dumping structure for table sm.students
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batch_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_joining` date DEFAULT NULL,
  `gender` enum('M','F') COLLATE utf8mb4_unicode_ci NOT NULL,
  `medium` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_occupation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_occupation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locality` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_siblings` smallint(6) NOT NULL,
  `shoe_size` smallint(6) NOT NULL,
  `shirt_size` smallint(6) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `students_role_no_unique` (`role_no`),
  KEY `NAME` (`name`(191)),
  KEY `student_name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sm.students: ~1 rows (approximately)
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` (`id`, `name`, `batch_no`, `role_no`, `date_of_joining`, `gender`, `medium`, `father_name`, `father_occupation`, `father_phone_number`, `mother_name`, `mother_occupation`, `mother_phone_number`, `address`, `locality`, `area`, `city`, `no_of_siblings`, `shoe_size`, `shirt_size`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(9, 'kamleshh', 'QWERTY', '123', '2019-04-18', 'F', 'Englishh', 'harishh', 'services', '9876543123', 'geeta', 'housewife', '8989889898', 'mumumumu', 'mum', 'mumum', 'mmm', 9, 9, 9, 'active', '2019-04-18 13:41:43', '2019-04-18 14:41:20', '2019-04-18 14:42:39');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;

-- Dumping structure for table sm.student_assessments
CREATE TABLE IF NOT EXISTS `student_assessments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(10) unsigned NOT NULL,
  `assessment_id` int(10) unsigned NOT NULL,
  `volunteer_id` int(10) unsigned NOT NULL,
  `score` tinyint(4) DEFAULT NULL,
  `assessment_date` date NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `student_assessments_assessment_id_foreign` (`assessment_id`),
  KEY `student_assessments_student_id_foreign` (`student_id`),
  KEY `student_assessments_volunteer_id_foreign` (`volunteer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sm.student_assessments: ~1 rows (approximately)
/*!40000 ALTER TABLE `student_assessments` DISABLE KEYS */;
INSERT INTO `student_assessments` (`id`, `student_id`, `assessment_id`, `volunteer_id`, `score`, `assessment_date`, `created_at`, `updated_at`) VALUES
	(19, 9, 14, 20, 10, '2019-04-18', '2019-04-18 15:30:41', '2019-04-18 15:30:50');
/*!40000 ALTER TABLE `student_assessments` ENABLE KEYS */;

-- Dumping structure for table sm.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `realm` varchar(512) DEFAULT NULL,
  `username` varchar(512) DEFAULT NULL,
  `password` varchar(512) NOT NULL,
  `email` varchar(512) NOT NULL,
  `emailVerified` tinyint(1) DEFAULT NULL,
  `verificationToken` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table sm.user: ~0 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `realm`, `username`, `password`, `email`, `emailVerified`, `verificationToken`) VALUES
	(1, 'admin', 'admin', '$2a$10$CUQXiGOcgq5OMsQtdx3od.dQaY9NqVaDq/LwQT8KwCM.B/I8dskp6', 'admin@admin.com', 1, NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- Dumping structure for table sm.volunteers
CREATE TABLE IF NOT EXISTS `volunteers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sm.volunteers: ~0 rows (approximately)
/*!40000 ALTER TABLE `volunteers` DISABLE KEYS */;
INSERT INTO `volunteers` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(20, 'Rav', '2019-04-18 13:24:42', '2019-04-18 13:24:53');
/*!40000 ALTER TABLE `volunteers` ENABLE KEYS */;

-- Dumping structure for view sm.studentassessmentsview
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `studentassessmentsview`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `studentassessmentsview` AS SELECT student_assessments.id, students.NAME AS student,
            assessments.NAME AS assessment, volunteers.NAME AS volunteer, 
            student_assessments.score, student_assessments.assessment_date, 
            student_assessments.created_at, student_assessments.updated_at
            FROM student_assessments, students, assessments, volunteers
            WHERE student_assessments.student_id = students.id
            AND student_assessments.assessment_id = assessments.id
            AND student_assessments.volunteer_id = volunteers.id ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
