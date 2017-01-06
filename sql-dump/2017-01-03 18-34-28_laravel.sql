/*
SQLyog Ultimate v12.2.1 (64 bit)
MySQL - 5.7.14 : Database - laravel
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`laravel` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `laravel`;

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`migration`,`batch`) values 
('2014_10_12_000000_create_users_table',1),
('2014_10_12_100000_create_password_resets_table',1),
('2016_09_24_213739_create_test_scaffolds_table',1),
('2016_12_29_063232_laratrust_setup_tables',2);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `permission_role` */

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `permission_role` */

insert  into `permission_role`(`permission_id`,`role_id`) values 
(1,1),
(1,2),
(2,1),
(2,2),
(3,1),
(3,2),
(4,1),
(4,2),
(5,1),
(6,1),
(7,1),
(8,1),
(9,1),
(9,2),
(9,3),
(10,1),
(10,2),
(10,3);

/*Table structure for table `permissions` */

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `permissions` */

insert  into `permissions`(`id`,`name`,`display_name`,`description`,`created_at`,`updated_at`) values 
(1,'users-create','Create Users','Create Users','2016-12-29 06:39:21','2016-12-29 06:39:21'),
(2,'users-read','Read Users','Read Users','2016-12-29 06:39:21','2016-12-29 06:39:21'),
(3,'users-update','Update Users','Update Users','2016-12-29 06:39:21','2016-12-29 06:39:21'),
(4,'users-delete','Delete Users','Delete Users','2016-12-29 06:39:21','2016-12-29 06:39:21'),
(5,'acl-create','Create Acl','Create Acl','2016-12-29 06:39:21','2016-12-29 06:39:21'),
(6,'acl-read','Read Acl','Read Acl','2016-12-29 06:39:21','2016-12-29 06:39:21'),
(7,'acl-update','Update Acl','Update Acl','2016-12-29 06:39:21','2016-12-29 06:39:21'),
(8,'acl-delete','Delete Acl','Delete Acl','2016-12-29 06:39:21','2016-12-29 06:39:21'),
(9,'profile-read','Read Profile','Read Profile','2016-12-29 06:39:21','2016-12-29 06:39:21'),
(10,'profile-update','Update Profile','Update Profile','2016-12-29 06:39:21','2016-12-29 06:39:21');

/*Table structure for table `role_user` */

DROP TABLE IF EXISTS `role_user`;

CREATE TABLE `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `role_user` */

insert  into `role_user`(`user_id`,`role_id`) values 
(1,1),
(2,2),
(3,3),
(4,1);

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `roles` */

insert  into `roles`(`id`,`name`,`display_name`,`description`,`created_at`,`updated_at`) values 
(1,'superadministrator','Superadministrator','Superadministrator','2016-12-29 06:39:21','2016-12-29 06:39:21'),
(2,'administrator','Administrator','Administrator','2016-12-29 06:39:21','2016-12-29 06:39:21'),
(3,'user','User','User','2016-12-29 06:39:21','2016-12-29 06:39:21');

/*Table structure for table `test_scaffolds` */

DROP TABLE IF EXISTS `test_scaffolds`;

CREATE TABLE `test_scaffolds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `writer_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `test_scaffolds_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `test_scaffolds` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`password`,`remember_token`,`created_at`,`updated_at`) values 
(1,'Superadministrator','superadministrator@app.com','$2y$10$rokSNlvxlnB0aZnDVOdiVe6fp4mYcwmJiQqksy6PqtBKl/i1ubX0K','0MRUwNcZSAq4mEr60JnkAFiMQg0qrDpG3HzVbp6z35uTd5zJFwSq7xVvnE7M','2016-12-29 06:39:21','2016-12-29 07:39:12'),
(2,'Administrator','administrator@app.com','$2y$10$KuSE5CmawGTZJf3dZ1UvDOhfU8tNraPJQhbVii3zEGu/jptbVYDP6','2aXUYuVVTJ','2016-12-29 06:39:21','2016-12-29 06:39:21'),
(3,'User','user@app.com','$2y$10$XIiEm29YXI3AJYRgZ2gLqe9VmWe.RB0bGEJ/HcD5yyajTRIkA2XZy','cUOR7w5aQk','2016-12-29 06:39:21','2016-12-29 06:39:21'),
(4,'Angelo V. Escasio','avescasio@gmail.com','$2y$10$Z5C1iY5HOaQZtheZJaNSYeWJB3BGS3w99npGA3MsW7iqOjuleZzNO','tI58oHSs6w5ZgYSB04ws0rmm9LcPiB2PDvLIpaMwbhCsrKSUor4cBrMfOsvd','2016-12-29 07:39:50','2016-12-31 21:58:09'),
(5,'User','user@email.com','$2y$10$0PJpwsovBkfZWDART5EJAuukzbLpTkxXdvVBL7.PFKhS8doUBKNGG',NULL,'2016-12-29 08:49:09','2016-12-29 08:49:09');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
