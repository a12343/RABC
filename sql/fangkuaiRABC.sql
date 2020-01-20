/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50549
Source Host           : localhost:3306
Source Database       : imms-server

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2020-01-20 02:03:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for imms_department
-- ----------------------------
DROP TABLE IF EXISTS `imms_department`;
CREATE TABLE `imms_department` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imms_department
-- ----------------------------
INSERT INTO `imms_department` VALUES ('171031202691371008', 'admin', '2019-11-23 13:56:32', '0', 'admin', '2019-11-23 13:56:32', '0', '设计部', '设计专用的部门', '74043587333484544');
INSERT INTO `imms_department` VALUES ('74043587333484544', 'admin', '2019-02-28 22:42:22', '0', 'admin', '2019-06-13 14:17:20', '3', '生技部', '生技部', 'NULL');

-- ----------------------------
-- Table structure for imms_dict
-- ----------------------------
DROP TABLE IF EXISTS `imms_dict`;
CREATE TABLE `imms_dict` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `entity_name` varchar(255) DEFAULT NULL,
  `filed` varchar(255) DEFAULT NULL,
  `hierarchy` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imms_dict
-- ----------------------------

-- ----------------------------
-- Table structure for imms_employee
-- ----------------------------
DROP TABLE IF EXISTS `imms_employee`;
CREATE TABLE `imms_employee` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `department_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imms_employee
-- ----------------------------
INSERT INTO `imms_employee` VALUES ('170686513210564608', 'admin', '2019-11-22 15:06:51', '0', 'admin', '2019-11-22 15:06:51', '0', '71822581871505408', 'NULL', '支与', 'NULL', '1356488889888');

-- ----------------------------
-- Table structure for imms_resource
-- ----------------------------
DROP TABLE IF EXISTS `imms_resource`;
CREATE TABLE `imms_resource` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `resource_name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imms_resource
-- ----------------------------
INSERT INTO `imms_resource` VALUES ('73678539561922560', 'admin', '2019-02-27 22:31:48', '0', 'admin', '2019-02-27 22:47:27', '2', '/department', '/department', '73678539561922561', 'NULL', '部门管理', '1');
INSERT INTO `imms_resource` VALUES ('73684498409615360', 'admin', '2019-02-27 23:15:46', '0', 'admin', '2019-02-27 22:47:27', '1', '/department', 'show', '73678539561922560', 'NULL', '查看', '2');
INSERT INTO `imms_resource` VALUES ('73841745114722304', 'admin', '2019-02-28 09:20:19', '0', 'admin', '2019-03-19 10:55:34', '1', '/employee', '/employee', '73683780244107264', 'NULL', '员工管理', '1');
INSERT INTO `imms_resource` VALUES ('73841863628976128', 'admin', '2019-02-28 09:20:19', '0', 'admin', '2019-03-19 10:55:34', '0', null, 'add', '73841745114722304', null, '添加', '2');

-- ----------------------------
-- Table structure for imms_role
-- ----------------------------
DROP TABLE IF EXISTS `imms_role`;
CREATE TABLE `imms_role` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `group_code` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imms_role
-- ----------------------------
INSERT INTO `imms_role` VALUES ('71824615131672576', 'admin', '2019-02-22 11:44:58', '0', 'admin', '6', 'NULL', 'ROLE_ADMIN', '0', '2019-11-20 09:06:19');

-- ----------------------------
-- Table structure for imms_t_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `imms_t_role_resource`;
CREATE TABLE `imms_t_role_resource` (
  `role_id` varchar(255) NOT NULL,
  `resource_id` varchar(255) NOT NULL,
  PRIMARY KEY (`role_id`,`resource_id`),
  KEY `id` (`role_id`,`resource_id`) USING BTREE,
  KEY `fr2` (`resource_id`),
  CONSTRAINT `fr1` FOREIGN KEY (`role_id`) REFERENCES `imms_role` (`id`),
  CONSTRAINT `fr2` FOREIGN KEY (`resource_id`) REFERENCES `imms_resource` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imms_t_role_resource
-- ----------------------------
INSERT INTO `imms_t_role_resource` VALUES ('71824615131672576', '73678539561922560');
INSERT INTO `imms_t_role_resource` VALUES ('71824615131672576', '73684498409615360');
INSERT INTO `imms_t_role_resource` VALUES ('71824615131672576', '73841745114722304');
INSERT INTO `imms_t_role_resource` VALUES ('71824615131672576', '73841863628976128');

-- ----------------------------
-- Table structure for imms_t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `imms_t_user_role`;
CREATE TABLE `imms_t_user_role` (
  `user_id` varchar(255) NOT NULL,
  `role_id` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `id` (`user_id`,`role_id`) USING BTREE,
  KEY `fu2` (`role_id`),
  CONSTRAINT `fu1` FOREIGN KEY (`user_id`) REFERENCES `imms_user` (`id`),
  CONSTRAINT `fu2` FOREIGN KEY (`role_id`) REFERENCES `imms_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imms_t_user_role
-- ----------------------------
INSERT INTO `imms_t_user_role` VALUES ('169865050567462912', '71824615131672576');

-- ----------------------------
-- Table structure for imms_user
-- ----------------------------
DROP TABLE IF EXISTS `imms_user`;
CREATE TABLE `imms_user` (
  `id` varchar(255) NOT NULL COMMENT '主键id',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `version` bigint(20) DEFAULT NULL COMMENT '版本',
  `employee_id` varchar(255) DEFAULT NULL COMMENT '员工id',
  `last_password_reset` datetime DEFAULT NULL COMMENT '上一次密码修改时间',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `status` int(11) NOT NULL COMMENT '用户状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `di` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imms_user
-- ----------------------------
INSERT INTO `imms_user` VALUES ('169865050567462911', 'admin', '2020-01-14 13:34:40', 'admin', '2019-12-25 20:09:38', '0', '170686513210564608', '2019-12-02 20:10:36', '$2a$10$yzb.0FlvXLvGqG6lRpxhnOSjRxv4ooMdHAmO9nNnZkO1pPhMEwo2.', 'linzi', '0');
INSERT INTO `imms_user` VALUES ('169865050567462912', 'admin', '2019-11-20 08:42:39', 'admin', '2019-12-25 20:09:38', '0', '170686513210564608', '2019-12-02 20:10:36', '$2a$10$yzb.0FlvXLvGqG6lRpxhnOSjRxv4ooMdHAmO9nNnZkO1pPhMEwo2.', 'admin', '0');
