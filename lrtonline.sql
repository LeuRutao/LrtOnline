/*
 Navicat Premium Data Transfer

 Source Server         : testdjango
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : lrtonline

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 10/09/2018 16:29:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (5, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (8, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (9, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (10, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (11, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (12, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (13, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (14, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (15, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (16, 'Can add 用户信息', 6, 'add_userprofile');
INSERT INTO `auth_permission` VALUES (17, 'Can change 用户信息', 6, 'change_userprofile');
INSERT INTO `auth_permission` VALUES (18, 'Can delete 用户信息', 6, 'delete_userprofile');
INSERT INTO `auth_permission` VALUES (19, 'Can add 轮播图', 7, 'add_banner');
INSERT INTO `auth_permission` VALUES (20, 'Can change 轮播图', 7, 'change_banner');
INSERT INTO `auth_permission` VALUES (21, 'Can delete 轮播图', 7, 'delete_banner');
INSERT INTO `auth_permission` VALUES (22, 'Can add 邮箱验证码', 8, 'add_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (23, 'Can change 邮箱验证码', 8, 'change_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (24, 'Can delete 邮箱验证码', 8, 'delete_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (25, 'Can add 视频', 9, 'add_video');
INSERT INTO `auth_permission` VALUES (26, 'Can change 视频', 9, 'change_video');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 视频', 9, 'delete_video');
INSERT INTO `auth_permission` VALUES (28, 'Can add 课程', 10, 'add_course');
INSERT INTO `auth_permission` VALUES (29, 'Can change 课程', 10, 'change_course');
INSERT INTO `auth_permission` VALUES (30, 'Can delete 课程', 10, 'delete_course');
INSERT INTO `auth_permission` VALUES (31, 'Can add 章节', 11, 'add_lesson');
INSERT INTO `auth_permission` VALUES (32, 'Can change 章节', 11, 'change_lesson');
INSERT INTO `auth_permission` VALUES (33, 'Can delete 章节', 11, 'delete_lesson');
INSERT INTO `auth_permission` VALUES (34, 'Can add 课程资源', 12, 'add_courseresource');
INSERT INTO `auth_permission` VALUES (35, 'Can change 课程资源', 12, 'change_courseresource');
INSERT INTO `auth_permission` VALUES (36, 'Can delete 课程资源', 12, 'delete_courseresource');
INSERT INTO `auth_permission` VALUES (37, 'Can add 课程机构', 13, 'add_courseorg');
INSERT INTO `auth_permission` VALUES (38, 'Can change 课程机构', 13, 'change_courseorg');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 课程机构', 13, 'delete_courseorg');
INSERT INTO `auth_permission` VALUES (40, 'Can add 教师', 14, 'add_teacher');
INSERT INTO `auth_permission` VALUES (41, 'Can change 教师', 14, 'change_teacher');
INSERT INTO `auth_permission` VALUES (42, 'Can delete 教师', 14, 'delete_teacher');
INSERT INTO `auth_permission` VALUES (43, 'Can add 城市', 15, 'add_citydict');
INSERT INTO `auth_permission` VALUES (44, 'Can change 城市', 15, 'change_citydict');
INSERT INTO `auth_permission` VALUES (45, 'Can delete 城市', 15, 'delete_citydict');
INSERT INTO `auth_permission` VALUES (46, 'Can add 用户咨询', 16, 'add_userask');
INSERT INTO `auth_permission` VALUES (47, 'Can change 用户咨询', 16, 'change_userask');
INSERT INTO `auth_permission` VALUES (48, 'Can delete 用户咨询', 16, 'delete_userask');
INSERT INTO `auth_permission` VALUES (49, 'Can add 课程评论', 17, 'add_coursecomments');
INSERT INTO `auth_permission` VALUES (50, 'Can change 课程评论', 17, 'change_coursecomments');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 课程评论', 17, 'delete_coursecomments');
INSERT INTO `auth_permission` VALUES (52, 'Can add 用户收藏', 18, 'add_userfavorite');
INSERT INTO `auth_permission` VALUES (53, 'Can change 用户收藏', 18, 'change_userfavorite');
INSERT INTO `auth_permission` VALUES (54, 'Can delete 用户收藏', 18, 'delete_userfavorite');
INSERT INTO `auth_permission` VALUES (55, 'Can add 用户课程', 19, 'add_usercourse');
INSERT INTO `auth_permission` VALUES (56, 'Can change 用户课程', 19, 'change_usercourse');
INSERT INTO `auth_permission` VALUES (57, 'Can delete 用户课程', 19, 'delete_usercourse');
INSERT INTO `auth_permission` VALUES (58, 'Can add 用户消息', 20, 'add_usermessage');
INSERT INTO `auth_permission` VALUES (59, 'Can change 用户消息', 20, 'change_usermessage');
INSERT INTO `auth_permission` VALUES (60, 'Can delete 用户消息', 20, 'delete_usermessage');
INSERT INTO `auth_permission` VALUES (61, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (62, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (63, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (64, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (65, 'Can view 课程', 10, 'view_course');
INSERT INTO `auth_permission` VALUES (66, 'Can view 课程资源', 12, 'view_courseresource');
INSERT INTO `auth_permission` VALUES (67, 'Can view 章节', 11, 'view_lesson');
INSERT INTO `auth_permission` VALUES (68, 'Can view 视频', 9, 'view_video');
INSERT INTO `auth_permission` VALUES (69, 'Can view 课程评论', 17, 'view_coursecomments');
INSERT INTO `auth_permission` VALUES (70, 'Can view 用户咨询', 16, 'view_userask');
INSERT INTO `auth_permission` VALUES (71, 'Can view 用户课程', 19, 'view_usercourse');
INSERT INTO `auth_permission` VALUES (72, 'Can view 用户收藏', 18, 'view_userfavorite');
INSERT INTO `auth_permission` VALUES (73, 'Can view 用户消息', 20, 'view_usermessage');
INSERT INTO `auth_permission` VALUES (74, 'Can view 城市', 15, 'view_citydict');
INSERT INTO `auth_permission` VALUES (75, 'Can view 课程机构', 13, 'view_courseorg');
INSERT INTO `auth_permission` VALUES (76, 'Can view 教师', 14, 'view_teacher');
INSERT INTO `auth_permission` VALUES (77, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (78, 'Can view 轮播图', 7, 'view_banner');
INSERT INTO `auth_permission` VALUES (79, 'Can view 邮箱验证码', 8, 'view_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (80, 'Can view 用户信息', 6, 'view_userprofile');
INSERT INTO `auth_permission` VALUES (81, 'Can add Bookmark', 21, 'add_bookmark');
INSERT INTO `auth_permission` VALUES (82, 'Can change Bookmark', 21, 'change_bookmark');
INSERT INTO `auth_permission` VALUES (83, 'Can delete Bookmark', 21, 'delete_bookmark');
INSERT INTO `auth_permission` VALUES (84, 'Can add User Setting', 22, 'add_usersettings');
INSERT INTO `auth_permission` VALUES (85, 'Can change User Setting', 22, 'change_usersettings');
INSERT INTO `auth_permission` VALUES (86, 'Can delete User Setting', 22, 'delete_usersettings');
INSERT INTO `auth_permission` VALUES (87, 'Can add User Widget', 23, 'add_userwidget');
INSERT INTO `auth_permission` VALUES (88, 'Can change User Widget', 23, 'change_userwidget');
INSERT INTO `auth_permission` VALUES (89, 'Can delete User Widget', 23, 'delete_userwidget');
INSERT INTO `auth_permission` VALUES (90, 'Can add log entry', 24, 'add_log');
INSERT INTO `auth_permission` VALUES (91, 'Can change log entry', 24, 'change_log');
INSERT INTO `auth_permission` VALUES (92, 'Can delete log entry', 24, 'delete_log');
INSERT INTO `auth_permission` VALUES (93, 'Can view Bookmark', 21, 'view_bookmark');
INSERT INTO `auth_permission` VALUES (94, 'Can view log entry', 24, 'view_log');
INSERT INTO `auth_permission` VALUES (95, 'Can view User Setting', 22, 'view_usersettings');
INSERT INTO `auth_permission` VALUES (96, 'Can view User Widget', 23, 'view_userwidget');
INSERT INTO `auth_permission` VALUES (97, 'Can add captcha store', 25, 'add_captchastore');
INSERT INTO `auth_permission` VALUES (98, 'Can change captcha store', 25, 'change_captchastore');
INSERT INTO `auth_permission` VALUES (99, 'Can delete captcha store', 25, 'delete_captchastore');
INSERT INTO `auth_permission` VALUES (100, 'Can view captcha store', 25, 'view_captchastore');
INSERT INTO `auth_permission` VALUES (101, 'Can add 轮播课程', 10, 'add_bannercourse');
INSERT INTO `auth_permission` VALUES (102, 'Can change 轮播课程', 10, 'change_bannercourse');
INSERT INTO `auth_permission` VALUES (103, 'Can delete 轮播课程', 10, 'delete_bannercourse');
INSERT INTO `auth_permission` VALUES (104, 'Can view 轮播课程', 26, 'view_bannercourse');
COMMIT;

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for courses_course
-- ----------------------------
DROP TABLE IF EXISTS `courses_course`;
CREATE TABLE `courses_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` varchar(300) NOT NULL,
  `detail` longtext NOT NULL,
  `degree` varchar(2) NOT NULL,
  `learn_times` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_org_id` int(11) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `tag` varchar(10) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `teacher_tell` varchar(300) NOT NULL,
  `youneed_know` varchar(300) NOT NULL,
  `announcement` varchar(300) NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_course_course_org_id_4d2c4aab_fk_organizat` (`course_org_id`),
  KEY `courses_course_teacher_id_846fa526_fk_organization_teacher_id` (`teacher_id`),
  CONSTRAINT `courses_course_course_org_id_4d2c4aab_fk_organizat` FOREIGN KEY (`course_org_id`) REFERENCES `organization_courseorg` (`id`),
  CONSTRAINT `courses_course_teacher_id_846fa526_fk_organization_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organization_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_course
-- ----------------------------
BEGIN;
INSERT INTO `courses_course` VALUES (1, 'python入门', 'python入门', '<p>python入门</p>', 'cj', 120, 32, 1, 'courses/2018/09/540e57300001d6d906000338-240-135_MSIqfvw.jpg', 115, '2018-09-07 11:33:00.000000', 3, '编程语言', 'python', 1, '能学到python基础、函数、类和网络编程', '需要有一定的计算机基础知识', '', 1);
INSERT INTO `courses_course` VALUES (2, 'java入门', 'java入门', 'java入门', 'cj', 200, 0, 0, 'courses/2018/09/57035ff200014b8a06000338-240-135_0nFiBSI.jpg', 3, '2018-09-08 00:35:00.000000', 12, NULL, NULL, 1, '能学到java基础、函数、类和网络编程', '需要有一定的计算机基础知识', '', 1);
INSERT INTO `courses_course` VALUES (3, 'mysql从0开始', 'mysql从0开始', 'mysql从0开始', 'cj', 150, 0, 0, 'courses/2018/09/mysql.jpg', 6, '2018-09-08 00:37:00.000000', 13, NULL, NULL, NULL, '能学到mysql基础', '需要有一定的计算机基础知识', '', 1);
INSERT INTO `courses_course` VALUES (4, 'python错误与异常', 'python错误与异常', 'python错误与异常', 'zj', 100, 0, 1, 'courses/2018/09/python错误和异常.jpg', 15, '2018-09-08 00:38:00.000000', 6, '编程语言', 'python', NULL, '', '', '', 0);
INSERT INTO `courses_course` VALUES (5, 'python面向对象', 'python面向对象', 'python面向对象', 'gj', 200, 0, 1, 'courses/2018/09/python面向对象.jpg', 40, '2018-09-08 00:39:00.000000', 8, '编程语言', 'python', NULL, '', '', '', 0);
INSERT INTO `courses_course` VALUES (6, 'python文件处理', 'python文件处理', 'python文件处理', 'gj', 90, 0, 0, 'courses/2018/09/python文件处理.jpg', 2, '2018-09-08 00:40:00.000000', 11, '编程语言', 'python', NULL, '', '', '', 0);
INSERT INTO `courses_course` VALUES (7, 'mysql2', 'mysql2', 'mysql2', 'zj', 140, 0, 0, 'courses/2018/09/mysql_hSzYBUJ.jpg', 1, '2018-09-08 00:41:00.000000', 4, NULL, NULL, 1, '能学到mysql基础', '需要有一定的计算机基础知识', '', 0);
INSERT INTO `courses_course` VALUES (8, 'mysql3', 'mysql3', 'mysql3', 'gj', 200, 0, 0, 'courses/2018/09/mysql_c3PgR8A.jpg', 4, '2018-09-08 00:42:00.000000', 10, NULL, NULL, 1, '能学到mysql基础', '需要有一定的计算机基础知识', '', 0);
INSERT INTO `courses_course` VALUES (9, 'mysql4', 'mysql4', 'mysql4', 'zj', 190, 0, 0, 'courses/2018/09/mysql_jp5Ue7y.jpg', 4, '2018-09-08 00:42:00.000000', 7, NULL, NULL, 1, '能学到mysql基础', '需要有一定的计算机基础知识', '', 0);
INSERT INTO `courses_course` VALUES (10, 'mysql5', 'mysql5', 'mysql5', 'gj', 800, 0, 0, 'courses/2018/09/mysql_VWqmriH.jpg', 0, '2018-09-08 00:42:00.000000', 9, '', '', NULL, '', '', '', 0);
INSERT INTO `courses_course` VALUES (11, 'mysql6', 'mysql6', 'mysql6', 'cj', 130, 0, 0, 'courses/2018/09/mysql_5x9dk4k.jpg', 2, '2018-09-08 01:54:00.000000', 13, '数据库', 'mysql', NULL, '', '', '', 0);
COMMIT;

-- ----------------------------
-- Table structure for courses_courseresource
-- ----------------------------
DROP TABLE IF EXISTS `courses_courseresource`;
CREATE TABLE `courses_courseresource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `download` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_courseresource_course_id_5eba1332_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_courseresource_course_id_5eba1332_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_courseresource
-- ----------------------------
BEGIN;
INSERT INTO `courses_courseresource` VALUES (1, '第一章 附件', 'course/resource/2018/09/media.zip', '2018-09-08 10:37:00.000000', 1);
COMMIT;

-- ----------------------------
-- Table structure for courses_lesson
-- ----------------------------
DROP TABLE IF EXISTS `courses_lesson`;
CREATE TABLE `courses_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_lesson_course_id_16bc4882_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_lesson_course_id_16bc4882_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_lesson
-- ----------------------------
BEGIN;
INSERT INTO `courses_lesson` VALUES (1, '第一章 基础', '2018-09-08 10:10:00.000000', 1);
INSERT INTO `courses_lesson` VALUES (2, '第二章 数据类型', '2018-09-08 10:12:00.000000', 1);
INSERT INTO `courses_lesson` VALUES (3, '第三章 函数', '2018-09-08 10:13:00.000000', 1);
INSERT INTO `courses_lesson` VALUES (4, '第四章 类的介绍', '2018-09-08 10:13:00.000000', 1);
INSERT INTO `courses_lesson` VALUES (5, '第五章 模块', '2018-09-08 10:13:00.000000', 1);
INSERT INTO `courses_lesson` VALUES (6, '第六章 socket网络编程', '2018-09-08 10:13:00.000000', 1);
COMMIT;

-- ----------------------------
-- Table structure for courses_video
-- ----------------------------
DROP TABLE IF EXISTS `courses_video`;
CREATE TABLE `courses_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  `learn_times` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` (`lesson_id`),
  CONSTRAINT `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_video
-- ----------------------------
BEGIN;
INSERT INTO `courses_video` VALUES (1, '1.1 python介绍', '2018-09-08 10:14:00.000000', 1, 'http://p96dsgm7r.bkt.clouddn.com/%E7%AC%AC%E4%B8%80%E7%AB%A0~2.mp4', 13);
INSERT INTO `courses_video` VALUES (2, '1.2 python安装', '2018-09-08 10:18:00.000000', 1, 'http://p96dsgm7r.bkt.clouddn.com/%E7%AC%AC%E4%B8%80%E7%AB%A0~2.mp4', 13);
INSERT INTO `courses_video` VALUES (3, '2.1 python中的数据类型', '2018-09-08 10:20:00.000000', 2, 'http://p96dsgm7r.bkt.clouddn.com/%E7%AC%AC%E4%B8%80%E7%AB%A0~2.mp4', 0);
INSERT INTO `courses_video` VALUES (4, '2.2 python中定义字符串', '2018-09-08 10:20:00.000000', 2, 'http://p96dsgm7r.bkt.clouddn.com/%E7%AC%AC%E4%B8%80%E7%AB%A0~2.mp4', 0);
INSERT INTO `courses_video` VALUES (5, '3.1 python之什么是函数', '2018-09-08 10:21:00.000000', 3, 'http://p96dsgm7r.bkt.clouddn.com/%E7%AC%AC%E4%B8%80%E7%AB%A0~2.mp4', 0);
INSERT INTO `courses_video` VALUES (6, '4.1 python之什么是类', '2018-09-08 10:22:00.000000', 4, 'http://p96dsgm7r.bkt.clouddn.com/%E7%AC%AC%E4%B8%80%E7%AB%A0~2.mp4', 0);
INSERT INTO `courses_video` VALUES (7, '5.1 模块介绍', '2018-09-08 10:23:00.000000', 5, 'http://p96dsgm7r.bkt.clouddn.com/%E7%AC%AC%E4%B8%80%E7%AB%A0~2.mp4', 0);
INSERT INTO `courses_video` VALUES (8, '6.1 socket原理', '2018-09-08 10:24:00.000000', 6, 'http://p96dsgm7r.bkt.clouddn.com/%E7%AC%AC%E4%B8%80%E7%AB%A0~2.mp4', 0);
COMMIT;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (25, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (26, 'courses', 'bannercourse');
INSERT INTO `django_content_type` VALUES (10, 'courses', 'course');
INSERT INTO `django_content_type` VALUES (12, 'courses', 'courseresource');
INSERT INTO `django_content_type` VALUES (11, 'courses', 'lesson');
INSERT INTO `django_content_type` VALUES (9, 'courses', 'video');
INSERT INTO `django_content_type` VALUES (17, 'operation', 'coursecomments');
INSERT INTO `django_content_type` VALUES (16, 'operation', 'userask');
INSERT INTO `django_content_type` VALUES (19, 'operation', 'usercourse');
INSERT INTO `django_content_type` VALUES (18, 'operation', 'userfavorite');
INSERT INTO `django_content_type` VALUES (20, 'operation', 'usermessage');
INSERT INTO `django_content_type` VALUES (15, 'organization', 'citydict');
INSERT INTO `django_content_type` VALUES (13, 'organization', 'courseorg');
INSERT INTO `django_content_type` VALUES (14, 'organization', 'teacher');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (7, 'users', 'banner');
INSERT INTO `django_content_type` VALUES (8, 'users', 'emailverifyrecord');
INSERT INTO `django_content_type` VALUES (6, 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES (21, 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES (24, 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES (22, 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES (23, 'xadmin', 'userwidget');
COMMIT;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2018-09-06 15:28:11.673848');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2018-09-06 15:28:11.714196');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2018-09-06 15:28:11.852107');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2018-09-06 15:28:11.872149');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2018-09-06 15:28:11.878430');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2018-09-06 15:28:11.884722');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2018-09-06 15:28:11.891136');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2018-09-06 15:28:11.893238');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2018-09-06 15:28:11.902017');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2018-09-06 15:28:11.909307');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2018-09-06 15:28:11.915208');
INSERT INTO `django_migrations` VALUES (12, 'users', '0001_initial', '2018-09-06 15:28:12.094624');
INSERT INTO `django_migrations` VALUES (13, 'admin', '0001_initial', '2018-09-06 15:28:12.161985');
INSERT INTO `django_migrations` VALUES (14, 'admin', '0002_logentry_remove_auto_add', '2018-09-06 15:28:12.171931');
INSERT INTO `django_migrations` VALUES (15, 'sessions', '0001_initial', '2018-09-06 15:28:12.197430');
INSERT INTO `django_migrations` VALUES (16, 'users', '0002_auto_20180906_1550', '2018-09-06 15:50:28.862643');
INSERT INTO `django_migrations` VALUES (17, 'courses', '0001_initial', '2018-09-06 15:52:02.245629');
INSERT INTO `django_migrations` VALUES (18, 'operation', '0001_initial', '2018-09-06 15:52:02.459314');
INSERT INTO `django_migrations` VALUES (19, 'organization', '0001_initial', '2018-09-06 15:52:02.557869');
INSERT INTO `django_migrations` VALUES (20, 'xadmin', '0001_initial', '2018-09-07 00:22:38.067887');
INSERT INTO `django_migrations` VALUES (21, 'xadmin', '0002_log', '2018-09-07 00:22:38.157020');
INSERT INTO `django_migrations` VALUES (22, 'xadmin', '0003_auto_20160715_0100', '2018-09-07 00:22:38.190839');
INSERT INTO `django_migrations` VALUES (23, 'captcha', '0001_initial', '2018-09-07 01:32:39.648770');
INSERT INTO `django_migrations` VALUES (24, 'organization', '0002_auto_20180907_0839', '2018-09-07 08:39:53.024143');
INSERT INTO `django_migrations` VALUES (25, 'organization', '0003_auto_20180907_1015', '2018-09-07 10:15:33.924276');
INSERT INTO `django_migrations` VALUES (26, 'courses', '0002_course_course_org', '2018-09-07 11:32:13.516855');
INSERT INTO `django_migrations` VALUES (27, 'organization', '0004_teacher_image', '2018-09-07 12:24:19.178720');
INSERT INTO `django_migrations` VALUES (28, 'courses', '0003_course_category', '2018-09-08 01:26:07.671853');
INSERT INTO `django_migrations` VALUES (29, 'courses', '0004_course_tag', '2018-09-08 01:48:29.485837');
INSERT INTO `django_migrations` VALUES (30, 'courses', '0005_auto_20180908_0152', '2018-09-08 01:52:39.830613');
INSERT INTO `django_migrations` VALUES (31, 'courses', '0006_video_url', '2018-09-08 10:09:27.366402');
INSERT INTO `django_migrations` VALUES (32, 'courses', '0007_video_learn_times', '2018-09-08 10:31:24.886840');
INSERT INTO `django_migrations` VALUES (33, 'courses', '0008_auto_20180908_1050', '2018-09-08 10:50:08.250880');
INSERT INTO `django_migrations` VALUES (34, 'courses', '0009_auto_20180908_1102', '2018-09-08 11:02:09.272792');
INSERT INTO `django_migrations` VALUES (35, 'organization', '0005_auto_20180908_1102', '2018-09-08 11:02:09.285086');
INSERT INTO `django_migrations` VALUES (36, 'courses', '0010_auto_20180909_0831', '2018-09-09 08:31:13.104184');
INSERT INTO `django_migrations` VALUES (37, 'organization', '0006_teacher_teacher_age', '2018-09-09 08:31:13.190185');
INSERT INTO `django_migrations` VALUES (38, 'courses', '0011_auto_20180909_0833', '2018-09-09 08:33:48.963776');
INSERT INTO `django_migrations` VALUES (39, 'courses', '0012_course_announcement', '2018-09-09 11:03:22.937199');
INSERT INTO `django_migrations` VALUES (40, 'users', '0003_auto_20180909_1600', '2018-09-09 16:00:10.449939');
INSERT INTO `django_migrations` VALUES (41, 'users', '0004_auto_20180909_1658', '2018-09-09 16:58:32.413173');
INSERT INTO `django_migrations` VALUES (42, 'courses', '0013_course_is_banner', '2018-09-10 08:02:37.124266');
INSERT INTO `django_migrations` VALUES (43, 'organization', '0007_courseorg_tag', '2018-09-10 08:02:37.213178');
INSERT INTO `django_migrations` VALUES (44, 'courses', '0014_auto_20180910_1545', '2018-09-10 15:45:22.453779');
INSERT INTO `django_migrations` VALUES (45, 'organization', '0008_auto_20180910_1545', '2018-09-10 15:45:22.469215');
COMMIT;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
BEGIN;
INSERT INTO `django_session` VALUES ('0cuu1rlgejcv2em7kah6rpdrl75e81gh', 'OTdmY2JiOTMwM2Q1ZjMyNGE3ZWE4NGQ4MTViYmI1NGExNWQxZGU3Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImU1NTRjYTM0YThhOGNiMjgzZTRhNmI3YWU0MDQ4ODM0YzA0OGE4YzIifQ==', '2018-09-22 14:56:22.033701');
INSERT INTO `django_session` VALUES ('bbqoqwb7upzaghp8o1v6ct69lpg9q6qb', 'ZTQ2ZTVhNWY0NmI2MTg0NWJhODFmZjNlMzg4NTAwOTAzNDU1YjRjNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjgyNTEyNDVmMmE2ZGU4NDBkZDM5YjFhMmM1NmYzZWNkZjc3ZGQyNTgiLCJMSVNUX1FVRVJZIjpbWyJvcmdhbml6YXRpb24iLCJjb3Vyc2VvcmciXSwiIl19', '2018-09-24 15:47:07.938485');
INSERT INTO `django_session` VALUES ('mab3h7r1xntk0qb5kv8qmz4uemnv72w3', 'YmVjNGU5YmE2MTlhMGJiNTU0OGY0OWM0MjFhMWUzZDlhMjEzNWYyZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjgyNTEyNDVmMmE2ZGU4NDBkZDM5YjFhMmM1NmYzZWNkZjc3ZGQyNTgiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwiY291cnNlIl0sIiJdfQ==', '2018-09-24 08:29:01.411871');
COMMIT;

-- ----------------------------
-- Table structure for operation_coursecomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_coursecomments`;
CREATE TABLE `operation_coursecomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id` (`course_id`),
  KEY `operation_coursecomm_user_id_f5ff70b3_fk_users_use` (`user_id`),
  CONSTRAINT `operation_coursecomm_user_id_f5ff70b3_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_coursecomments
-- ----------------------------
BEGIN;
INSERT INTO `operation_coursecomments` VALUES (1, '讲得真好', '2018-09-08 14:10:38.748977', 1, 1);
INSERT INTO `operation_coursecomments` VALUES (2, '棒棒的', '2018-09-08 14:10:45.594730', 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for operation_userask
-- ----------------------------
DROP TABLE IF EXISTS `operation_userask`;
CREATE TABLE `operation_userask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for operation_usercourse
-- ----------------------------
DROP TABLE IF EXISTS `operation_usercourse`;
CREATE TABLE `operation_usercourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` (`course_id`),
  KEY `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_usercourse
-- ----------------------------
BEGIN;
INSERT INTO `operation_usercourse` VALUES (1, '2018-09-08 01:37:00.000000', 1, 1);
INSERT INTO `operation_usercourse` VALUES (2, '2018-09-08 14:56:56.482113', 5, 1);
INSERT INTO `operation_usercourse` VALUES (3, '2018-09-08 14:58:01.136528', 3, 1);
COMMIT;

-- ----------------------------
-- Table structure for operation_userfavorite
-- ----------------------------
DROP TABLE IF EXISTS `operation_userfavorite`;
CREATE TABLE `operation_userfavorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_userfavorite
-- ----------------------------
BEGIN;
INSERT INTO `operation_userfavorite` VALUES (61, 1, 1, '2018-09-09 10:55:00.299785', 1);
INSERT INTO `operation_userfavorite` VALUES (66, 1, 3, '2018-09-09 18:53:46.522575', 1);
INSERT INTO `operation_userfavorite` VALUES (70, 5, 1, '2018-09-10 07:31:23.898910', 1);
INSERT INTO `operation_userfavorite` VALUES (73, 4, 1, '2018-09-10 07:36:36.594004', 1);
INSERT INTO `operation_userfavorite` VALUES (75, 2, 3, '2018-09-10 07:36:47.849207', 1);
INSERT INTO `operation_userfavorite` VALUES (76, 3, 2, '2018-09-10 07:36:53.635003', 1);
INSERT INTO `operation_userfavorite` VALUES (77, 7, 2, '2018-09-10 07:37:03.426595', 1);
INSERT INTO `operation_userfavorite` VALUES (78, 5, 2, '2018-09-10 07:37:09.655017', 1);
COMMIT;

-- ----------------------------
-- Table structure for operation_usermessage
-- ----------------------------
DROP TABLE IF EXISTS `operation_usermessage`;
CREATE TABLE `operation_usermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_usermessage
-- ----------------------------
BEGIN;
INSERT INTO `operation_usermessage` VALUES (1, 1, '欢迎来到Lrt在线网', 1, '2018-09-09 22:22:00.000000');
COMMIT;

-- ----------------------------
-- Table structure for organization_citydict
-- ----------------------------
DROP TABLE IF EXISTS `organization_citydict`;
CREATE TABLE `organization_citydict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_citydict
-- ----------------------------
BEGIN;
INSERT INTO `organization_citydict` VALUES (1, '北京市', '中国首都', '2018-09-07 08:31:00.000000');
INSERT INTO `organization_citydict` VALUES (2, '上海市', '中国的金融中心', '2018-09-07 08:34:00.000000');
INSERT INTO `organization_citydict` VALUES (3, '广州市', '中国第三大城市', '2018-09-07 08:34:00.000000');
INSERT INTO `organization_citydict` VALUES (4, '深圳市', '经济特区', '2018-09-07 08:34:00.000000');
INSERT INTO `organization_citydict` VALUES (5, '天津市', '天津市', '2018-09-07 09:06:00.000000');
INSERT INTO `organization_citydict` VALUES (6, '徐州市', '徐州市', '2018-09-07 09:22:00.000000');
INSERT INTO `organization_citydict` VALUES (7, '南京市', '南京市', '2018-09-07 09:23:00.000000');
COMMIT;

-- ----------------------------
-- Table structure for organization_courseorg
-- ----------------------------
DROP TABLE IF EXISTS `organization_courseorg`;
CREATE TABLE `organization_courseorg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` longtext NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `city_id` int(11) NOT NULL,
  `category` varchar(20) NOT NULL,
  `course_nums` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `tag` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_courseo_city_id_4a842f85_fk_organizat` (`city_id`),
  CONSTRAINT `organization_courseo_city_id_4a842f85_fk_organizat` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_courseorg
-- ----------------------------
BEGIN;
INSERT INTO `organization_courseorg` VALUES (3, '慕课网', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n    慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。 [1] \r\n    4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。', 5, 1, 'org/2018/09/imooc.png', '北京市', '2018-09-07 09:19:00.000000', 1, 'pxjg', 1, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (4, '慕课网001', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n    慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。 [1] \r\n    4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。', 0, 0, 'org/2018/09/imooc_MYooOOX.png', '北京市', '2018-09-07 09:21:00.000000', 1, 'pxjg', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (5, '慕课网002', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n    慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。 [1] \r\n    4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。', 1, 1, 'org/2018/09/imooc_s0WvdKB.png', '北京市', '2018-09-07 09:21:00.000000', 1, 'pxjg', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (6, '慕课网003', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n    慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。 [1] \r\n    4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。', 0, 0, 'org/2018/09/imooc_gEytA1q.png', '上海市', '2018-09-07 09:21:00.000000', 2, 'pxjg', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (7, '慕课网004', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n    慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。 [1] \r\n    4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。', 2, 1, 'org/2018/09/imooc_rqUEFeZ.png', '广州市', '2018-09-07 09:21:00.000000', 3, 'pxjg', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (8, '慕课网005', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n    慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。 [1] \r\n    4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。', 0, 0, 'org/2018/09/imooc_W0IRQ1C.png', '深圳市', '2018-09-07 09:22:00.000000', 4, 'pxjg', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (9, '慕课网006', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n    慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。 [1] \r\n    4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。', 0, 0, 'org/2018/09/imooc_YoEd8RF.png', '天津市', '2018-09-07 09:22:00.000000', 5, 'pxjg', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (10, '慕课网008', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n    慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。 [1] \r\n    4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。', 0, 0, 'org/2018/09/imooc_YAXJYOP.png', '南京市', '2018-09-07 09:22:00.000000', 7, 'pxjg', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (11, '北京大学', '北京大学（Peking University）简称“北大”，诞生于1898年，初名京师大学堂，是中国近代第一所国立大学，也是最早以“大学”之名创办的学校，其成立标志着中国近代高等教育的开端。北大是中国近代以来唯一以国家最高学府身份创立的学校，最初也是国家最高教育行政机关，行使教育部职能，统管全国教育。北大催生了中国最早的现代学制，开创了中国最早的文科、理科、社科、农科、医科等大学学科，是近代以来中国高等教育的奠基者 [1-3]  。', 0, 0, 'org/2018/09/bjdx.jpg', '北京市', '2018-09-07 09:25:00.000000', 1, 'gx', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (12, '清华大学', '清华大学（Tsinghua University），简称“清华”，由中华人民共和国教育部直属，中央直管副部级建制，位列“211工程”、“985工程”、“世界一流大学和一流学科”，入选“基础学科拔尖学生培养试验计划”、“高等学校创新能力提升计划”、“高等学校学科创新引智计划”，为九校联盟、中国大学校长联谊会、东亚研究型大学协会、亚洲大学联盟、环太平洋大学联盟、清华—剑桥—MIT低碳大学联盟成员，被誉为“红色工程师的摇篮”。\r\n    清华大学的前身清华学堂始建于1911年，因水木清华而得名，是清政府设立的留美预备学校，其建校的资金源于1908年美国退还的部分庚子赔款。1912年更名为清华学校。1928年更名为国立清华大学。1937年抗日战争全面爆发后南迁长沙，与北京大学、南开大学组建国立长沙临时大学，1938年迁至昆明改名为国立西南联合大学。1946年迁回清华园。1949年中华人民共和国成立，清华大学进入了新的发展阶段。1952年全国高等学校院系调整后成为多科性工业大学。1978年以来逐步恢复和发展为综合性的研究型大学。\r\n    水木清华，钟灵毓秀，清华大学秉持“自强不息、厚德载物”的校训和“行胜于言”的校风，坚持“中西融汇、古今贯通、文理渗透”的办学风格和“又红又专、全面发展”的培养特色，弘扬“爱国奉献、追求卓越”传统和“人文日新”精神。恰如清华园工字厅内对联所书——“槛外山光，历春夏秋冬、万千变幻，都非凡境；窗中云影，任东西南北、去来澹荡，洵是仙居”。 [1]', 0, 0, 'org/2018/09/qhdx-logo.png', '北京市', '2018-09-07 09:26:00.000000', 1, 'gx', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (13, '南京大学', '<p>&nbsp;&nbsp;&nbsp;&nbsp;南京大学（Nanjing University），简称“南大”，是中华人民共和国教育部直属、中央直管副部级建制的综合性全国重点大学，是历史悠久、声誉卓著的百年名校。位列首批国家“双一流“世界一流大学A类建设高校、”211工程“、”985工程”，入选“珠峰计划”、“111计划”、“2011计划”、“卓越工程师教育培养计划”、“卓越医生教育培养计划”、“卓越法律人才教育培养计划”，是九校联盟、中国大学校长联谊会、环太平洋大学联盟、21世纪学术联盟和东亚研究型大学协会成员。 [1] \r\n &nbsp; &nbsp;南京大学其学脉可追溯自孙吴永安元年（258年）的南京太学，近代校史肇始于1902年创建的三江师范学堂，此后历经两江师范学堂、南京高等师范学校、国立东南大学等历史时期，1949年由民国时期中国最高学府“国立中央大学”易名“国立南京大学”，1950年径称“南京大学”并沿用至今。1920年在中国国立高等学府中首开“女禁”，引领男女同校之风。最早在中国开展现代学术研究，建立中国最早的现代科学研究实验室，成为中国第一所以大学自治、学术自由、文理为基本兼有农工商等专门应用科、集教学和研究于一体的现代大学，被国际上誉为“东方教育的中心”。 [1] \r\n &nbsp; &nbsp;南京大学是中国现代科学的发祥地之一，是哈佛大学白碧德主义影响下的中国“学衡派”的雅集地，被誉为“中国科学社的大本营和科学发展的主要基地”，是“985工程”首批九所高水平大学中唯一未合并其他院校的高校，坚持“内涵发展”，赢得社会“中国最温和的大学”之美誉。</p>', 4, 0, 'org/2018/09/njdx.jpg', '南京市', '2018-09-07 09:27:00.000000', 7, 'gx', 0, 0, '全国知名');
COMMIT;

-- ----------------------------
-- Table structure for organization_teacher
-- ----------------------------
DROP TABLE IF EXISTS `organization_teacher`;
CREATE TABLE `organization_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_company` varchar(50) NOT NULL,
  `work_position` varchar(50) NOT NULL,
  `points` varchar(50) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `org_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `teacher_age` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_teacher_org_id_cd000a1a_fk_organizat` (`org_id`),
  CONSTRAINT `organization_teacher_org_id_cd000a1a_fk_organizat` FOREIGN KEY (`org_id`) REFERENCES `organization_courseorg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_teacher
-- ----------------------------
BEGIN;
INSERT INTO `organization_teacher` VALUES (1, '胡明佳', 3, 'xxx', 'python工程师', '生动有趣，高效', 0, 1, '2018-09-07 11:32:00.000000', 3, 'teacher/2018/09/aobama.png', 25);
INSERT INTO `organization_teacher` VALUES (2, '李申', 5, 'xxx', 'java工程师', '注重方法', 2, 1, '2018-09-07 11:32:00.000000', 3, 'teacher/2018/09/mayun.png', 23);
COMMIT;

-- ----------------------------
-- Table structure for users_banner
-- ----------------------------
DROP TABLE IF EXISTS `users_banner`;
CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_banner
-- ----------------------------
BEGIN;
INSERT INTO `users_banner` VALUES (1, '第一个', 'banner/2018/09/57a801860001c34b12000460_z4Vb8zl_gsiX0vo.jpg', 'https://www.imooc.com', 1, '2018-09-10 08:04:00.000000');
INSERT INTO `users_banner` VALUES (2, '第二个', 'banner/2018/09/57aa86a0000145c512000460_GXIBATC.jpg', 'https://www.imooc.com', 2, '2018-09-10 08:08:00.000000');
INSERT INTO `users_banner` VALUES (3, '第三个', 'banner/2018/09/57a801860001c34b12000460.jpg', 'https://www.imooc.com', 3, '2018-09-10 08:11:00.000000');
INSERT INTO `users_banner` VALUES (4, '第四个', 'banner/2018/09/57aa86a0000145c512000460_nMwvoQD.jpg', 'https://www.imooc.com', 100, '2018-09-10 08:11:00.000000');
INSERT INTO `users_banner` VALUES (5, '第五个', 'banner/2018/09/57aa86a0000145c512000460.jpg', 'https://www.imooc.com', 5, '2018-09-10 08:11:00.000000');
COMMIT;

-- ----------------------------
-- Table structure for users_emailverifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverifyrecord`;
CREATE TABLE `users_emailverifyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `send_type` varchar(30) NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_emailverifyrecord
-- ----------------------------
BEGIN;
INSERT INTO `users_emailverifyrecord` VALUES (1, 'SFUaEiec3IwjnkKK', 'lrt578001@sina.com', 'register', '2018-09-07 02:14:13.179926');
INSERT INTO `users_emailverifyrecord` VALUES (2, 'xYJSqZ3thFhhdSRA', 'lrt578001@sina.com', 'forget', '2018-09-07 02:53:38.348035');
INSERT INTO `users_emailverifyrecord` VALUES (3, 'tGsXPGMeo2z1GJk5', 'lrt578001@sina.com', 'forget', '2018-09-07 02:59:19.597093');
INSERT INTO `users_emailverifyrecord` VALUES (4, 'wyOd9g57kKaV65yy', '781130743@qq.com', 'register', '2018-09-09 16:14:01.619624');
INSERT INTO `users_emailverifyrecord` VALUES (5, 't078Yeabc7PgtTAN', '781130743@qq.com', 'register', '2018-09-09 16:41:55.111324');
INSERT INTO `users_emailverifyrecord` VALUES (6, 'JKWK9rEjfThzNB5J', '781130743@qq.com', 'forget', '2018-09-09 16:43:44.101254');
INSERT INTO `users_emailverifyrecord` VALUES (7, 'ls8gssMPBCLbGnud', '781130743@qq.com', 'update_email', '2018-09-09 16:58:46.188546');
INSERT INTO `users_emailverifyrecord` VALUES (8, 'FqAYKB7pBpXkgc9Z', '781130743@qq.com', 'update_email', '2018-09-09 16:59:29.929128');
INSERT INTO `users_emailverifyrecord` VALUES (9, 'VhWJ', '781130743@qq.com', 'update_email', '2018-09-09 17:01:36.726315');
INSERT INTO `users_emailverifyrecord` VALUES (10, 'TP3r', 'lrt578002@qq.com', 'update_email', '2018-09-09 17:03:45.385488');
INSERT INTO `users_emailverifyrecord` VALUES (11, 'OsiE', 'lrtonline@qq.com', 'update_email', '2018-09-09 17:05:46.994950');
INSERT INTO `users_emailverifyrecord` VALUES (12, 'zRGB', 'lrtonline@sina.com', 'update_email', '2018-09-09 17:08:37.379519');
INSERT INTO `users_emailverifyrecord` VALUES (13, 'PFnE', '781130743@qq.com', 'update_email', '2018-09-09 17:09:18.244735');
INSERT INTO `users_emailverifyrecord` VALUES (14, 'I5TI', 'lrt578002@sina.com', 'update_email', '2018-09-09 17:12:21.580422');
INSERT INTO `users_emailverifyrecord` VALUES (15, 's1rg', '781130743@qq.com', 'update_email', '2018-09-09 17:13:49.888714');
COMMIT;

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nick_name` varchar(50) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
BEGIN;
INSERT INTO `users_userprofile` VALUES (1, 'pbkdf2_sha256$100000$osuo8vtsQWct$rbltKLqx5HOZV+HKu6FF3IemWjbqGrOAoe0E+c5mzIk=', '2018-09-10 14:09:59.474330', 1, 'luorutao', '', '', '781130743@qq.com', 1, 1, '2018-09-06 16:01:00.000000', '涛哥', '1997-05-05', 'male', '江苏省徐州市中国矿业大学南湖校区', '15505198236', 'image/2018/09/default_big_14.png');
INSERT INTO `users_userprofile` VALUES (2, 'pbkdf2_sha256$100000$Cemv3n6daT7Y$uGFHMsQyYC8AlWMaBSiJflrRTTVQaihwvZ/15Ary0Mk=', NULL, 0, 'leu', '', '', '', 0, 1, '2018-09-07 00:25:08.242758', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (3, 'pbkdf2_sha256$100000$sVnOdbAm3hYk$ezgNToEvA5OMfOjkHsqvznJUoj+uF1vbd3IBudBiJoI=', '2018-09-09 15:52:39.046521', 0, 'lrt578001@sina.com', '', '', 'lrt578001@sina.com', 0, 1, '2018-09-07 02:14:13.087652', '', NULL, 'female', '', NULL, 'image/default.png');
COMMIT;

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_us_permission_id_393136b6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
BEGIN;
INSERT INTO `xadmin_log` VALUES (1, '2018-09-07 00:25:08.335498', '127.0.0.1', '2', 'leu', 'create', '已添加。', 6, 1);
INSERT INTO `xadmin_log` VALUES (2, '2018-09-07 08:34:13.931265', '127.0.0.1', '1', 'CityDict object (1)', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (3, '2018-09-07 08:34:30.724992', '127.0.0.1', '2', 'CityDict object (2)', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (4, '2018-09-07 08:34:41.685950', '127.0.0.1', '3', 'CityDict object (3)', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (5, '2018-09-07 08:35:02.856535', '127.0.0.1', '4', 'CityDict object (4)', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (6, '2018-09-07 09:06:54.449471', '127.0.0.1', '5', 'CityDict object (5)', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (7, '2018-09-07 09:07:21.193373', '127.0.0.1', '4', 'CityDict object (4)', 'change', '修改 name', 15, 1);
INSERT INTO `xadmin_log` VALUES (8, '2018-09-07 09:07:30.663610', '127.0.0.1', '3', 'CityDict object (3)', 'change', '修改 name', 15, 1);
INSERT INTO `xadmin_log` VALUES (9, '2018-09-07 09:07:36.066933', '127.0.0.1', '2', 'CityDict object (2)', 'change', '修改 name', 15, 1);
INSERT INTO `xadmin_log` VALUES (10, '2018-09-07 09:16:26.392030', '127.0.0.1', '1', '慕课网', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (11, '2018-09-07 09:18:36.895720', '127.0.0.1', '2', '慕课网', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (12, '2018-09-07 09:19:21.148594', '127.0.0.1', '3', '慕课网', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (13, '2018-09-07 09:21:08.321982', '127.0.0.1', '4', '慕课网001', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (14, '2018-09-07 09:21:19.241436', '127.0.0.1', '5', '慕课网002', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (15, '2018-09-07 09:21:44.287823', '127.0.0.1', '6', '慕课网003', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (16, '2018-09-07 09:22:01.958271', '127.0.0.1', '7', '慕课网004', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (17, '2018-09-07 09:22:21.609365', '127.0.0.1', '8', '慕课网005', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (18, '2018-09-07 09:22:36.302139', '127.0.0.1', '9', '慕课网006', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (19, '2018-09-07 09:22:58.104235', '127.0.0.1', '6', '徐州市', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (20, '2018-09-07 09:23:06.721935', '127.0.0.1', '10', '慕课网006', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (21, '2018-09-07 09:23:28.326750', '127.0.0.1', '10', '慕课网007', 'change', '修改 name 和 image', 13, 1);
INSERT INTO `xadmin_log` VALUES (22, '2018-09-07 09:24:03.985711', '127.0.0.1', '7', '南京市', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (23, '2018-09-07 09:24:05.852568', '127.0.0.1', '10', '慕课网008', 'change', '修改 name，image 和 city', 13, 1);
INSERT INTO `xadmin_log` VALUES (24, '2018-09-07 09:24:35.649566', '127.0.0.1', '10', '慕课网008', 'change', '修改 image 和 address', 13, 1);
INSERT INTO `xadmin_log` VALUES (25, '2018-09-07 09:26:07.304747', '127.0.0.1', '11', '北京大学', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (26, '2018-09-07 09:27:08.609274', '127.0.0.1', '12', '清华大学', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (27, '2018-09-07 09:27:53.002322', '127.0.0.1', '13', '南京大学', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (28, '2018-09-07 11:32:54.909746', '127.0.0.1', '1', '[慕课网]的教师: 胡明佳', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (29, '2018-09-07 11:33:11.398984', '127.0.0.1', '2', '[慕课网]的教师: 李申', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (30, '2018-09-07 11:38:12.726037', '127.0.0.1', '1', 'python入门', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (31, '2018-09-07 12:26:02.982428', '127.0.0.1', '1', '[慕课网]的教师: 胡明佳', 'change', '修改 image', 14, 1);
INSERT INTO `xadmin_log` VALUES (32, '2018-09-07 12:30:43.432060', '127.0.0.1', '2', '[慕课网]的教师: 李申', 'change', '修改 image', 14, 1);
INSERT INTO `xadmin_log` VALUES (33, '2018-09-08 00:36:57.918707', '127.0.0.1', '2', 'java入门', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (34, '2018-09-08 00:38:10.750542', '127.0.0.1', '3', 'mysql从0开始', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (35, '2018-09-08 00:39:19.707596', '127.0.0.1', '4', 'python错误与异常', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (36, '2018-09-08 00:40:06.625846', '127.0.0.1', '5', 'python面向对象', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (37, '2018-09-08 00:40:42.696794', '127.0.0.1', '6', 'python文件处理', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (38, '2018-09-08 00:42:08.617010', '127.0.0.1', '7', 'mysql2', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (39, '2018-09-08 00:42:31.283380', '127.0.0.1', '8', 'mysql3', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (40, '2018-09-08 00:42:57.596361', '127.0.0.1', '9', 'mysql4', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (41, '2018-09-08 00:43:20.446808', '127.0.0.1', '10', 'mysql5', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (42, '2018-09-08 01:38:02.719378', '127.0.0.1', '1', 'UserCourse object (1)', 'create', '已添加。', 19, 1);
INSERT INTO `xadmin_log` VALUES (43, '2018-09-08 01:40:33.850458', '127.0.0.1', '1', 'luorutao', 'change', '修改 last_login，nick_name，gender，address 和 image', 6, 1);
INSERT INTO `xadmin_log` VALUES (44, '2018-09-08 01:56:54.085989', '127.0.0.1', '11', 'mysql6', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (45, '2018-09-08 01:57:47.404840', '127.0.0.1', '1', 'python入门', 'change', '修改 tag 和 category', 10, 1);
INSERT INTO `xadmin_log` VALUES (46, '2018-09-08 01:59:10.571170', '127.0.0.1', '4', 'python错误与异常', 'change', '修改 tag 和 category', 10, 1);
INSERT INTO `xadmin_log` VALUES (47, '2018-09-08 01:59:32.508106', '127.0.0.1', '5', 'python面向对象', 'change', '修改 tag 和 category', 10, 1);
INSERT INTO `xadmin_log` VALUES (48, '2018-09-08 01:59:39.340997', '127.0.0.1', '6', 'python文件处理', 'change', '修改 tag 和 category', 10, 1);
INSERT INTO `xadmin_log` VALUES (49, '2018-09-08 02:04:38.785496', '127.0.0.1', '11', 'mysql6', 'change', '修改 image', 10, 1);
INSERT INTO `xadmin_log` VALUES (50, '2018-09-08 10:10:44.541790', '127.0.0.1', '1', '《python入门》课程的章节 >> 第一章 基础', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (51, '2018-09-08 10:13:01.786626', '127.0.0.1', '2', '《python入门》课程的章节 >> 第二章 数据类型', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (52, '2018-09-08 10:13:10.706895', '127.0.0.1', '3', '《python入门》课程的章节 >> 第三章 函数', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (53, '2018-09-08 10:13:22.810062', '127.0.0.1', '4', '《python入门》课程的章节 >> 类的介绍', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (54, '2018-09-08 10:13:30.911683', '127.0.0.1', '4', '《python入门》课程的章节 >> 第四章 类的介绍', 'change', '修改 name', 11, 1);
INSERT INTO `xadmin_log` VALUES (55, '2018-09-08 10:13:41.171824', '127.0.0.1', '5', '《python入门》课程的章节 >> 第五章 模块', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (56, '2018-09-08 10:13:54.939255', '127.0.0.1', '6', '《python入门》课程的章节 >> 第六章 socket网络编程', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (57, '2018-09-08 10:18:44.232184', '127.0.0.1', '1', 'Video object (1)', 'create', '已添加。', 9, 1);
INSERT INTO `xadmin_log` VALUES (58, '2018-09-08 10:19:06.506908', '127.0.0.1', '2', 'Video object (2)', 'create', '已添加。', 9, 1);
INSERT INTO `xadmin_log` VALUES (59, '2018-09-08 10:20:34.598372', '127.0.0.1', '3', 'Video object (3)', 'create', '已添加。', 9, 1);
INSERT INTO `xadmin_log` VALUES (60, '2018-09-08 10:21:08.554723', '127.0.0.1', '4', 'Video object (4)', 'create', '已添加。', 9, 1);
INSERT INTO `xadmin_log` VALUES (61, '2018-09-08 10:22:11.843318', '127.0.0.1', '5', 'Video object (5)', 'create', '已添加。', 9, 1);
INSERT INTO `xadmin_log` VALUES (62, '2018-09-08 10:22:52.398218', '127.0.0.1', '6', 'Video object (6)', 'create', '已添加。', 9, 1);
INSERT INTO `xadmin_log` VALUES (63, '2018-09-08 10:23:49.186806', '127.0.0.1', '7', 'Video object (7)', 'create', '已添加。', 9, 1);
INSERT INTO `xadmin_log` VALUES (64, '2018-09-08 10:24:37.343934', '127.0.0.1', '8', 'Video object (8)', 'create', '已添加。', 9, 1);
INSERT INTO `xadmin_log` VALUES (65, '2018-09-08 10:39:14.947502', '127.0.0.1', '1', 'CourseResource object (1)', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (66, '2018-09-08 10:51:08.645411', '127.0.0.1', '1', 'python入门', 'change', '修改 teacher', 10, 1);
INSERT INTO `xadmin_log` VALUES (67, '2018-09-08 11:00:45.983289', '127.0.0.1', '2', '[慕课网]的教师: 李申', 'change', '修改 work_position', 14, 1);
INSERT INTO `xadmin_log` VALUES (68, '2018-09-08 11:00:54.914653', '127.0.0.1', '1', '[慕课网]的教师: 胡明佳', 'change', '修改 work_position', 14, 1);
INSERT INTO `xadmin_log` VALUES (69, '2018-09-08 11:05:25.929605', '127.0.0.1', '1', '[慕课网]的教师: 胡明佳', 'change', '没有字段被修改。', 14, 1);
INSERT INTO `xadmin_log` VALUES (70, '2018-09-08 11:08:07.149461', '127.0.0.1', '1', 'python入门', 'change', '修改 youneed_know 和 teacher_tell', 10, 1);
INSERT INTO `xadmin_log` VALUES (71, '2018-09-08 14:17:26.549195', '127.0.0.1', '1', 'python入门', 'change', '修改 click_nums', 10, 1);
INSERT INTO `xadmin_log` VALUES (72, '2018-09-08 16:16:06.596809', '127.0.0.1', '1', 'Video object (1)', 'change', '修改 url 和 learn_times', 9, 1);
INSERT INTO `xadmin_log` VALUES (73, '2018-09-08 16:16:15.515787', '127.0.0.1', '2', 'Video object (2)', 'change', '修改 url 和 learn_times', 9, 1);
INSERT INTO `xadmin_log` VALUES (74, '2018-09-08 16:16:19.692344', '127.0.0.1', '3', 'Video object (3)', 'change', '修改 url', 9, 1);
INSERT INTO `xadmin_log` VALUES (75, '2018-09-08 16:16:23.545321', '127.0.0.1', '4', 'Video object (4)', 'change', '修改 url', 9, 1);
INSERT INTO `xadmin_log` VALUES (76, '2018-09-08 16:16:28.122791', '127.0.0.1', '5', 'Video object (5)', 'change', '修改 url', 9, 1);
INSERT INTO `xadmin_log` VALUES (77, '2018-09-08 16:16:31.598670', '127.0.0.1', '6', 'Video object (6)', 'change', '修改 url', 9, 1);
INSERT INTO `xadmin_log` VALUES (78, '2018-09-08 16:16:35.068044', '127.0.0.1', '7', 'Video object (7)', 'change', '修改 url', 9, 1);
INSERT INTO `xadmin_log` VALUES (79, '2018-09-08 16:16:38.787203', '127.0.0.1', '8', 'Video object (8)', 'change', '修改 url', 9, 1);
INSERT INTO `xadmin_log` VALUES (80, '2018-09-09 09:53:21.786932', '127.0.0.1', '2', 'java入门', 'change', '修改 teacher，youneed_know 和 teacher_tell', 10, 1);
INSERT INTO `xadmin_log` VALUES (81, '2018-09-09 09:53:46.594455', '127.0.0.1', '7', 'mysql2', 'change', '修改 teacher，youneed_know 和 teacher_tell', 10, 1);
INSERT INTO `xadmin_log` VALUES (82, '2018-09-09 09:53:55.665887', '127.0.0.1', '8', 'mysql3', 'change', '修改 teacher，youneed_know 和 teacher_tell', 10, 1);
INSERT INTO `xadmin_log` VALUES (83, '2018-09-09 09:54:04.320307', '127.0.0.1', '9', 'mysql4', 'change', '修改 teacher，youneed_know 和 teacher_tell', 10, 1);
INSERT INTO `xadmin_log` VALUES (84, '2018-09-09 10:42:40.344577', '127.0.0.1', '1', '[慕课网]的教师: 胡明佳', 'change', '修改 points', 14, 1);
INSERT INTO `xadmin_log` VALUES (85, '2018-09-09 10:44:04.081040', '127.0.0.1', '2', '[慕课网]的教师: 李申', 'change', '修改 points 和 teacher_age', 14, 1);
INSERT INTO `xadmin_log` VALUES (86, '2018-09-09 22:22:37.207699', '127.0.0.1', '1', 'UserMessage object (1)', 'create', '已添加。', 20, 1);
INSERT INTO `xadmin_log` VALUES (87, '2018-09-10 08:08:17.610936', '127.0.0.1', '1', 'Banner object (1)', 'create', '已添加。', 7, 1);
INSERT INTO `xadmin_log` VALUES (88, '2018-09-10 08:08:53.415092', '127.0.0.1', '2', 'Banner object (2)', 'create', '已添加。', 7, 1);
INSERT INTO `xadmin_log` VALUES (89, '2018-09-10 08:11:02.467371', '127.0.0.1', '1', 'Banner object (1)', 'change', '修改 image 和 url', 7, 1);
INSERT INTO `xadmin_log` VALUES (90, '2018-09-10 08:11:34.181459', '127.0.0.1', '3', 'Banner object (3)', 'create', '已添加。', 7, 1);
INSERT INTO `xadmin_log` VALUES (91, '2018-09-10 08:11:51.288003', '127.0.0.1', '4', 'Banner object (4)', 'create', '已添加。', 7, 1);
INSERT INTO `xadmin_log` VALUES (92, '2018-09-10 08:12:09.059159', '127.0.0.1', '5', 'Banner object (5)', 'create', '已添加。', 7, 1);
INSERT INTO `xadmin_log` VALUES (93, '2018-09-10 08:26:14.683240', '127.0.0.1', '1', 'python入门', 'change', '修改 is_banner', 10, 1);
INSERT INTO `xadmin_log` VALUES (94, '2018-09-10 08:26:19.549732', '127.0.0.1', '2', 'java入门', 'change', '修改 is_banner', 10, 1);
INSERT INTO `xadmin_log` VALUES (95, '2018-09-10 08:27:07.628480', '127.0.0.1', '3', 'mysql从0开始', 'change', '修改 youneed_know，teacher_tell 和 is_banner', 10, 1);
INSERT INTO `xadmin_log` VALUES (96, '2018-09-10 08:28:23.443102', '127.0.0.1', '1', 'python入门', 'change', '修改 is_banner', 10, 1);
INSERT INTO `xadmin_log` VALUES (97, '2018-09-10 08:29:01.304710', '127.0.0.1', '1', 'python入门', 'change', '修改 is_banner', 10, 1);
INSERT INTO `xadmin_log` VALUES (98, '2018-09-10 14:33:04.273109', '127.0.0.1', '1', 'python入门', 'change', '没有字段被修改。', 10, 1);
INSERT INTO `xadmin_log` VALUES (99, '2018-09-10 15:45:43.920478', '127.0.0.1', '13', '南京大学', 'change', '修改 desc', 13, 1);
INSERT INTO `xadmin_log` VALUES (100, '2018-09-10 15:47:07.832765', '127.0.0.1', '13', '南京大学', 'change', '修改 desc', 13, 1);
COMMIT;

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
BEGIN;
INSERT INTO `xadmin_usersettings` VALUES (1, 'dashboard:home:pos', '', 1);
INSERT INTO `xadmin_usersettings` VALUES (2, 'site-theme', '/static/xadmin/css/themes/bootstrap-xadmin.css', 1);
COMMIT;

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
