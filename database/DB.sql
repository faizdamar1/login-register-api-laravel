/*
 Navicat Premium Data Transfer

 Source Server         : MysqlLocal
 Source Server Type    : MySQL
 Source Server Version : 100138
 Source Host           : localhost:3306
 Source Schema         : belajar_flutter_backend_login

 Target Server Type    : MySQL
 Target Server Version : 100138
 File Encoding         : 65001

 Date: 14/06/2020 17:52:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `userName` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstName` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'faiz', 'damar', 'admin@mail.com', '$2y$10$APTksct2CZbLqre0Ijh3/eX8Vih6xcQzO.xsb4Y4yPquOICdZ0gSe', '089655058301', NULL, '2020-05-27 01:46:58', '2020-05-27 01:46:58');
INSERT INTO `users` VALUES (3, 'admin', 'hernanda', 'damar', 'admin1@mail.com', '$2y$10$quSlSYMJQ3BG4Utmbfc2Cezx2LE1BDMInfmiR1tdx3QM1/tUyQ5.u', '089655058301', NULL, '2020-05-27 01:49:30', '2020-05-27 01:49:30');
INSERT INTO `users` VALUES (4, 'faizdamar1', 'faiz', 'damar', 'faizdamar123@gmail.com', '$2y$10$Jgxc2AM0JU2gVbfsqacN0.BMYwD8roda6CphUAfXpJIU/krbOx41y', '0812345', NULL, '2020-06-12 06:34:11', '2020-06-12 06:34:11');
INSERT INTO `users` VALUES (5, 'faizdamar2', 'faiz', 'damar', 'faizdamar@gmail.com', '$2y$10$z8fffHTMqVcurcVPCgGcA.256BQuQxrb7sQ1vdDx8yvxt3JEg3Sum', '0812345', NULL, '2020-06-12 06:42:49', '2020-06-12 06:42:49');
INSERT INTO `users` VALUES (8, 'admin656', 'admin', 'tok', 'admin12@mail.com', '$2y$10$sobDM.hSemoOAB2Mjy0EGekWrib2nlOeo7sFHeC0kcnSuGe5yecJa', '123456900', NULL, '2020-06-12 06:49:52', '2020-06-12 06:49:52');

SET FOREIGN_KEY_CHECKS = 1;
