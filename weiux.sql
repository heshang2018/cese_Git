/*
 Navicat Premium Data Transfer

 Source Server         : django
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : localhost:3306
 Source Schema         : weiux

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 25/01/2020 16:56:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for apis_app
-- ----------------------------
DROP TABLE IF EXISTS `apis_app`;
CREATE TABLE `apis_app`  (
  `appid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `application` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `publish_date` date NOT NULL,
  `url` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`appid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of apis_app
-- ----------------------------
INSERT INTO `apis_app` VALUES ('', '', '', '', '0000-00-00', '', '');
INSERT INTO `apis_app` VALUES ('549eaaf72cb23716e2b1313acfaed23c', 'life', 'backup-image', '图片备份', '2018-10-02', '/service/image', 'this is a backup image app.');
INSERT INTO `apis_app` VALUES ('644f03422c364745d1932073121dcf6c', 'TestCategory', 'TestApp', 'TestApp', '2020-01-14', '/test', 'This is a test app');
INSERT INTO `apis_app` VALUES ('7b27422f98f13eb2610f1996ec757be7', 'life', 'stock', '股票', '2018-10-05', '/service/stock', 'this is a stock app.');
INSERT INTO `apis_app` VALUES ('833cfd91bc1ac638ecd3764715b443ef', 'life', 'joke', '每日笑话', '2018-10-06', '/service/joke', 'this is a joke app.');
INSERT INTO `apis_app` VALUES ('a381d410bea99d3618cc6cd431c32b0f', 'life', 'constellation', '星座运势', '2018-10-06', '/service/constellation', 'this is a constellation app.');
INSERT INTO `apis_app` VALUES ('f18ba49825b634f44e8cdfb694ecaa13', 'life', 'weather', '天气', '2018-10-01', '/service/weather', 'this is a weather app.');

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (5, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (8, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (9, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (10, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (11, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (12, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (17, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (18, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (19, 'Can add app', 7, 'add_app');
INSERT INTO `auth_permission` VALUES (20, 'Can change app', 7, 'change_app');
INSERT INTO `auth_permission` VALUES (21, 'Can delete app', 7, 'delete_app');
INSERT INTO `auth_permission` VALUES (22, 'Can add user', 8, 'add_user');
INSERT INTO `auth_permission` VALUES (23, 'Can change user', 8, 'change_user');
INSERT INTO `auth_permission` VALUES (24, 'Can delete user', 8, 'delete_user');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$100000$aGS5NGfUslo8$RKhqimHS3yN54hziKx8Mnp1U939gbElol23g8DUbkyQ=', '2020-01-19 14:43:25', 1, 'root', '', '', '', 1, 1, '2020-01-19 14:35:39');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for authorization_user
-- ----------------------------
DROP TABLE IF EXISTS `authorization_user`;
CREATE TABLE `authorization_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `open_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nickname` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `focus_cities` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `focus_constellations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `focus_stocks` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `open_id`(`open_id`) USING BTREE,
  INDEX `authorizati_open_id_5cfcc1_idx`(`open_id`, `nickname`(191)) USING BTREE,
  INDEX `authorization_user_nickname_248a4fcf`(`nickname`(191)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of authorization_user
-- ----------------------------
INSERT INTO `authorization_user` VALUES (1, 'ooYMN5KZvgS-IBjBIFq7NGmU6LDw', '。', '[{\"province\": \"\\u5e7f\\u4e1c\\u7701\", \"city\": \"\\u73e0\\u6d77\\u5e02\", \"area\": \"\\u9999\\u6d32\\u533a\"}, {\"province\": \"\\u5e7f\\u4e1c\\u7701\", \"city\": \"\\u6df1\\u5733\\u5e02\", \"area\": \"\\u5b9d\\u5b89\\u533a\"}, {\"province\": \"\\u5e7f\\u897f\\u58ee\\u65cf\\u81ea\\u6cbb\\u533a\", \"city\": \"\\u5357\\u5b81\\u5e02\", \"area\": \"\\u5174\\u5b81\\u533a\"}]', '[\"\\u767d\\u7f8a\\u5ea7\", \"\\u53cc\\u5b50\\u5ea7\"]', '[{\"code\": \"000002\", \"name\": \"\\u4e07 \\u79d1\\uff21\", \"fullInfo\": \"\\u6df1\\u4ea4\\u6240-\\u4e07 \\u79d1\\uff21(000002)\", \"market\": \"sz\"}, {\"code\": \"000004\", \"name\": \"\\u56fd\\u519c\\u79d1\\u6280\", \"fullInfo\": \"\\u6df1\\u4ea4\\u6240-\\u56fd\\u519c\\u79d1\\u6280(000004)\", \"market\": \"sz\"}, {\"code\": \"000005\", \"name\": \"\\u4e16\\u7eaa\\u661f\\u6e90\", \"fullInfo\": \"\\u6df1\\u4ea4\\u6240-\\u4e16\\u7eaa\\u661f\\u6e90(000005)\", \"market\": \"sz\"}]');
INSERT INTO `authorization_user` VALUES (2, 'test_open_id', 'test_nickname', '[]', '[]', '[]');
INSERT INTO `authorization_user` VALUES (3, 'test_open_id2', 'test_nickname2', '[]', '[]', '[]');
INSERT INTO `authorization_user` VALUES (4, '1Hp0TS06GV6xKy7V6TvGHK9mz0014C4d', 'pe7Avd8h3j', '[]', '[]', '[]');
INSERT INTO `authorization_user` VALUES (5, '2sU9e7RF3Y5kfPIwD5bRwPIdjNL0lu86', '4MCa0EbOkg', '[]', '[]', '[]');
INSERT INTO `authorization_user` VALUES (6, '5dDPCzVBLKfLgL9G9yC1Ir0MjbwUjtGL', 'yhLcXQTdVY', '[]', '[]', '[]');
INSERT INTO `authorization_user` VALUES (7, '01Z62S9bmb02FFoMULZtqxwuZpiA1cNC', '7Btk7ZVitg', '[]', '[]', '[]');
INSERT INTO `authorization_user` VALUES (8, '450ui7kRsCvnA7p0zm8A4o7y9izQzg5V', 'R6MaQnPmnv', '[]', '[]', '[]');
INSERT INTO `authorization_user` VALUES (9, 'yUSkslVajzjoOx3EhbfnSGFeVQXrqy9N', 'jQIdVs3Vtt', '[]', '[]', '[]');
INSERT INTO `authorization_user` VALUES (10, 'zlxA9kIt4p06atjru361l1nNPH4epC7Q', 'tykq1CNgYk', '[]', '[]', '[]');
INSERT INTO `authorization_user` VALUES (11, 'ocsQqvSO3jgymYdbb6Dj5Euqao5JNSBy', 'bDTMtTIiLz', '[]', '[]', '[]');
INSERT INTO `authorization_user` VALUES (12, 'gZT69dN8jcsiPFyVDWp9PMHWt1roaanL', '7AWFa416Fg', '[]', '[]', '[]');
INSERT INTO `authorization_user` VALUES (13, 'elNkhLiy2Ct6WE4JjLCP939osqczve1i', 'ttGD3lwkPK', '[]', '[]', '[]');
INSERT INTO `authorization_user` VALUES (14, 'OfKcPwYu4o0bZF91NH5SbmuaUzyCHMts', 'PD1rHgMVgf', '[]', '[]', '[]');
INSERT INTO `authorization_user` VALUES (15, 'mej85T2ZeICxFBZYup7YkVht5XPBngMu', 'pjwaPVFY70', '[]', '[]', '[]');
INSERT INTO `authorization_user` VALUES (16, 'Vc7fEKZ0RTL4DIqwRncJo5F6eb6vXTuq', 'gjbL5Dn4l1', '[]', '[]', '[]');
INSERT INTO `authorization_user` VALUES (17, 'N24wk4L6sDv0CnNdBajvjCWeL0gDfgQJ', 'cJcxqy0w4D', '[]', '[]', '[]');
INSERT INTO `authorization_user` VALUES (18, 'VIYFJJLU8bAs11NZB1O0WTZP6UzX2YPH', 'RWiXWRy2Vc', '[]', '[]', '[]');
INSERT INTO `authorization_user` VALUES (19, 'yDMa2x1lDkpYqV3Mqz9npCKUgXiZDoBT', 'qNPwvbr6HH', '[]', '[]', '[]');
INSERT INTO `authorization_user` VALUES (20, 'ipTAQ20VJUzp0NAHx8MbhgwgmjKf1Qwj', 'mkVYJwAjcr', '[]', '[]', '[]');
INSERT INTO `authorization_user` VALUES (21, '5wHsM7kcAy0QHTvGc24k1MwQCieDQD4M', 'brQI70ofv3', '[]', '[]', '[]');
INSERT INTO `authorization_user` VALUES (22, 'W4tm8ERBsCuT3ynRqS5IHf5JqlhTzGNX', 'dw0ktPDzYL', '[]', '[]', '[]');
INSERT INTO `authorization_user` VALUES (23, 'pIFSk4SobjuPnL2YqmdFHQ7Crd2p3U8B', 'rQmvIKkzhW', '[]', '[]', '[]');

-- ----------------------------
-- Table structure for authorization_user_menu
-- ----------------------------
DROP TABLE IF EXISTS `authorization_user_menu`;
CREATE TABLE `authorization_user_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `app_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `authorization_user_menu_user_id_app_id_4d3d9382_uniq`(`user_id`, `app_id`) USING BTREE,
  INDEX `authorization_user_menu_app_id_13ca5893_fk_apis_app_appid`(`app_id`) USING BTREE,
  CONSTRAINT `authorization_user_menu_app_id_13ca5893_fk_apis_app_appid` FOREIGN KEY (`app_id`) REFERENCES `apis_app` (`appid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `authorization_user_m_user_id_b7aaa9f0_fk_authoriza` FOREIGN KEY (`user_id`) REFERENCES `authorization_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of authorization_user_menu
-- ----------------------------
INSERT INTO `authorization_user_menu` VALUES (1, 1, '549eaaf72cb23716e2b1313acfaed23c');
INSERT INTO `authorization_user_menu` VALUES (2, 1, '7b27422f98f13eb2610f1996ec757be7');
INSERT INTO `authorization_user_menu` VALUES (3, 1, '833cfd91bc1ac638ecd3764715b443ef');
INSERT INTO `authorization_user_menu` VALUES (4, 1, 'f18ba49825b634f44e8cdfb694ecaa13');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2020-01-20 08:24:59', '644f03422c364745d1932073121dcf6c', 'TestApp(TestApp)', 1, '[{\"added\": {}}]', 7, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (7, 'apis', 'app');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (8, 'authorization', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-01-14 08:29:02');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2020-01-14 08:29:05');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2020-01-14 08:29:06');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2020-01-14 08:29:06');
INSERT INTO `django_migrations` VALUES (5, 'apis', '0001_initial', '2020-01-14 08:29:06');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2020-01-14 08:29:06');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2020-01-14 08:29:07');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2020-01-14 08:29:07');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2020-01-14 08:29:07');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2020-01-14 08:29:07');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2020-01-14 08:29:07');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2020-01-14 08:29:07');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2020-01-14 08:29:08');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2020-01-14 08:29:08');
INSERT INTO `django_migrations` VALUES (15, 'authorization', '0001_initial', '2020-01-14 08:29:10');
INSERT INTO `django_migrations` VALUES (16, 'sessions', '0001_initial', '2020-01-14 08:29:10');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('0ujhitito935idl77olv96eku4irymxy', 'N2M5NGJhNTI5OTZhMDUzZTlkYWNhMzRhMTc0MWRmMTQ3MjgxZWY0YTp7Im9wZW5faWQiOiJvb1lNTjVLWnZnUy1JQmpCSUZxN05HbVU2TER3IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=', '2020-01-21 15:29:40');
INSERT INTO `django_session` VALUES ('1cs9ipmmzs3138afw8t94ttdwbw41p7n', 'N2M5NGJhNTI5OTZhMDUzZTlkYWNhMzRhMTc0MWRmMTQ3MjgxZWY0YTp7Im9wZW5faWQiOiJvb1lNTjVLWnZnUy1JQmpCSUZxN05HbVU2TER3IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=', '2020-01-21 15:29:43');
INSERT INTO `django_session` VALUES ('2fgbmib7lbm2nejrsav6tuv1in9psx7y', 'MTYzNTE5NGZlOTQ1OTAxZjcyNjA0MzZiMjk4ZDcwZTZiNmNkZmIxYjp7fQ==', '2020-01-15 15:40:14');
INSERT INTO `django_session` VALUES ('2vcazfo33xh77vchm2jc8cduxva6qtgm', 'N2M5NGJhNTI5OTZhMDUzZTlkYWNhMzRhMTc0MWRmMTQ3MjgxZWY0YTp7Im9wZW5faWQiOiJvb1lNTjVLWnZnUy1JQmpCSUZxN05HbVU2TER3IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=', '2020-01-21 15:29:40');
INSERT INTO `django_session` VALUES ('3d3381rxr36de9qrweu4z3th3mg0nclj', 'N2M5NGJhNTI5OTZhMDUzZTlkYWNhMzRhMTc0MWRmMTQ3MjgxZWY0YTp7Im9wZW5faWQiOiJvb1lNTjVLWnZnUy1JQmpCSUZxN05HbVU2TER3IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=', '2020-01-15 17:09:55');
INSERT INTO `django_session` VALUES ('3rw6dbi8qkj7ohkyddelgt8g1yd06ywi', 'MjFmMGQwMmFhN2ZjMjFiOWUxMDk3MjI1ZmQ5OTEwMjJlYzE3YWFiYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MjZkNDdiYmNhNTc1NDYwM2IwM2IxNWEyZjNhYjA4YTY5YTdkMWQ0In0=', '2020-01-20 14:43:25');
INSERT INTO `django_session` VALUES ('4c76kqhml2uk7z3f97td9wvgculiatxj', 'N2M5NGJhNTI5OTZhMDUzZTlkYWNhMzRhMTc0MWRmMTQ3MjgxZWY0YTp7Im9wZW5faWQiOiJvb1lNTjVLWnZnUy1JQmpCSUZxN05HbVU2TER3IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=', '2020-01-21 15:00:12');
INSERT INTO `django_session` VALUES ('4w04z9sh31ry6eyhx2u5vty7o7tlowq2', 'MTYzNTE5NGZlOTQ1OTAxZjcyNjA0MzZiMjk4ZDcwZTZiNmNkZmIxYjp7fQ==', '2020-01-21 13:52:12');
INSERT INTO `django_session` VALUES ('5n1y84zxt2b0k2unr5vd6vc3fzd3yhxy', 'N2M5NGJhNTI5OTZhMDUzZTlkYWNhMzRhMTc0MWRmMTQ3MjgxZWY0YTp7Im9wZW5faWQiOiJvb1lNTjVLWnZnUy1JQmpCSUZxN05HbVU2TER3IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=', '2020-01-21 15:29:40');
INSERT INTO `django_session` VALUES ('5rp1hxf0unybikjltcvrcyp3gtm16snv', 'MTYzNTE5NGZlOTQ1OTAxZjcyNjA0MzZiMjk4ZDcwZTZiNmNkZmIxYjp7fQ==', '2020-01-15 17:15:14');
INSERT INTO `django_session` VALUES ('740p2rx3rrqf21ihmwxqhozgmf05m2yj', 'MTYzNTE5NGZlOTQ1OTAxZjcyNjA0MzZiMjk4ZDcwZTZiNmNkZmIxYjp7fQ==', '2020-01-15 15:32:42');
INSERT INTO `django_session` VALUES ('ca7vyk0j99i3v0cbs0wccv79rv4j41xb', 'MTYzNTE5NGZlOTQ1OTAxZjcyNjA0MzZiMjk4ZDcwZTZiNmNkZmIxYjp7fQ==', '2020-01-15 17:14:08');
INSERT INTO `django_session` VALUES ('ct3o1159a8anl70bvgsyc629rozm1onq', 'N2M5NGJhNTI5OTZhMDUzZTlkYWNhMzRhMTc0MWRmMTQ3MjgxZWY0YTp7Im9wZW5faWQiOiJvb1lNTjVLWnZnUy1JQmpCSUZxN05HbVU2TER3IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=', '2020-01-21 15:29:40');
INSERT INTO `django_session` VALUES ('ed11w268dk0mhk4vv24pf3c7o2cl26db', 'MTYzNTE5NGZlOTQ1OTAxZjcyNjA0MzZiMjk4ZDcwZTZiNmNkZmIxYjp7fQ==', '2020-01-21 14:36:38');
INSERT INTO `django_session` VALUES ('hsuej52uma05px5xuhy0vonqghkn6lel', 'MjFmMGQwMmFhN2ZjMjFiOWUxMDk3MjI1ZmQ5OTEwMjJlYzE3YWFiYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MjZkNDdiYmNhNTc1NDYwM2IwM2IxNWEyZjNhYjA4YTY5YTdkMWQ0In0=', '2020-01-20 14:36:24');
INSERT INTO `django_session` VALUES ('mi0zegmjx8bvd4p4otcs44wgazjgpwfb', 'N2M5NGJhNTI5OTZhMDUzZTlkYWNhMzRhMTc0MWRmMTQ3MjgxZWY0YTp7Im9wZW5faWQiOiJvb1lNTjVLWnZnUy1JQmpCSUZxN05HbVU2TER3IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=', '2020-01-15 17:15:15');
INSERT INTO `django_session` VALUES ('mqw5xm9w6yenvh69b08aexrj25wt9mvg', 'N2M5NGJhNTI5OTZhMDUzZTlkYWNhMzRhMTc0MWRmMTQ3MjgxZWY0YTp7Im9wZW5faWQiOiJvb1lNTjVLWnZnUy1JQmpCSUZxN05HbVU2TER3IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=', '2020-01-21 15:29:40');
INSERT INTO `django_session` VALUES ('q6cvbxf729che2l3ip0kaa7ruw647lv1', 'N2M5NGJhNTI5OTZhMDUzZTlkYWNhMzRhMTc0MWRmMTQ3MjgxZWY0YTp7Im9wZW5faWQiOiJvb1lNTjVLWnZnUy1JQmpCSUZxN05HbVU2TER3IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=', '2020-01-15 16:34:31');
INSERT INTO `django_session` VALUES ('s4j32cc176dq7nu9dxw35ynq4eez4u3n', 'MTYzNTE5NGZlOTQ1OTAxZjcyNjA0MzZiMjk4ZDcwZTZiNmNkZmIxYjp7fQ==', '2020-01-21 13:54:20');
INSERT INTO `django_session` VALUES ('uect1lcxv2tzhdcav4t6cevj5058rgtr', 'N2M5NGJhNTI5OTZhMDUzZTlkYWNhMzRhMTc0MWRmMTQ3MjgxZWY0YTp7Im9wZW5faWQiOiJvb1lNTjVLWnZnUy1JQmpCSUZxN05HbVU2TER3IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=', '2020-01-21 15:29:40');
INSERT INTO `django_session` VALUES ('ujgkfgejt6d9wjmhi42xxr8wz1vae87m', 'MTYzNTE5NGZlOTQ1OTAxZjcyNjA0MzZiMjk4ZDcwZTZiNmNkZmIxYjp7fQ==', '2020-01-15 09:28:21');
INSERT INTO `django_session` VALUES ('w6ouesekvq764xg3mnt1kmiqde8rdq3t', 'MTYzNTE5NGZlOTQ1OTAxZjcyNjA0MzZiMjk4ZDcwZTZiNmNkZmIxYjp7fQ==', '2020-01-15 17:13:57');
INSERT INTO `django_session` VALUES ('wcop1ioxo23vp40mb9ysco9hhgphud89', 'N2M5NGJhNTI5OTZhMDUzZTlkYWNhMzRhMTc0MWRmMTQ3MjgxZWY0YTp7Im9wZW5faWQiOiJvb1lNTjVLWnZnUy1JQmpCSUZxN05HbVU2TER3IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=', '2020-01-15 15:45:22');
INSERT INTO `django_session` VALUES ('ww58kon0n9nk7ewwg6espfdggs7dftov', 'MTYzNTE5NGZlOTQ1OTAxZjcyNjA0MzZiMjk4ZDcwZTZiNmNkZmIxYjp7fQ==', '2020-01-15 15:45:21');
INSERT INTO `django_session` VALUES ('ygthhfjuz5pk1ky7fih71hp6utq66cjj', 'MTYzNTE5NGZlOTQ1OTAxZjcyNjA0MzZiMjk4ZDcwZTZiNmNkZmIxYjp7fQ==', '2020-01-15 08:39:14');
INSERT INTO `django_session` VALUES ('z3sthuv1oyvwjlkr57jh191dqgw1hfpr', 'N2M5NGJhNTI5OTZhMDUzZTlkYWNhMzRhMTc0MWRmMTQ3MjgxZWY0YTp7Im9wZW5faWQiOiJvb1lNTjVLWnZnUy1JQmpCSUZxN05HbVU2TER3IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=', '2020-01-21 15:29:40');

SET FOREIGN_KEY_CHECKS = 1;
