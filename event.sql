/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 23/02/2021 16:08:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for event
-- ----------------------------
DROP TABLE IF EXISTS `event`;
CREATE TABLE `event`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '活动id',
  `creator_id` int(0) NOT NULL COMMENT '活动创建人id',
  `create_time` datetime(0) NOT NULL COMMENT '活动创建日期',
  `updator_id` int(0) NOT NULL COMMENT '活动更新人id',
  `update_time` datetime(0) NOT NULL COMMENT '活动更新日期',
  `is_active` bit(1) NOT NULL DEFAULT b'0' COMMENT '活动是否启动',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '活动名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '活动描述',
  `budget` int(0) NOT NULL COMMENT '活动预算',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of event
-- ----------------------------
INSERT INTO `event` VALUES (4, 110104, '2021-02-23 02:45:55', 6366, '2021-02-23 07:55:41', b'1', '22UPD', '你很好!', 10000);
INSERT INTO `event` VALUES (5, 110104, '2021-02-23 07:57:09', 110104, '2021-02-23 07:57:09', b'0', 'test04', NULL, 100);
INSERT INTO `event` VALUES (6, 110104, '2021-02-23 07:57:10', 110104, '2021-02-23 07:57:10', b'0', 'test04', NULL, 100);
INSERT INTO `event` VALUES (7, 110104, '2021-02-23 07:57:10', 110104, '2021-02-23 07:57:10', b'0', 'test04', NULL, 100);
INSERT INTO `event` VALUES (8, 110104, '2021-02-23 07:57:11', 110104, '2021-02-23 07:57:11', b'0', 'test04', NULL, 100);
INSERT INTO `event` VALUES (9, 110104, '2021-02-23 07:57:11', 110104, '2021-02-23 07:57:11', b'0', 'test04', '第一位的货物耳', 100);
INSERT INTO `event` VALUES (10, 110104, '2021-02-23 07:57:12', 110104, '2021-02-23 07:57:12', b'0', 'test04', '恩格斯、', 100);
INSERT INTO `event` VALUES (11, 110104, '2021-02-23 07:57:12', 110104, '2021-02-23 07:57:12', b'0', 'test04', 'cl♥syn', 100);
INSERT INTO `event` VALUES (12, 110104, '2021-02-23 07:57:13', 110104, '2021-02-23 07:57:13', b'0', 'test04', NULL, 100);
INSERT INTO `event` VALUES (13, 404, '2021-02-23 07:58:05', 404, '2021-02-23 07:58:05', b'1', 'HUEG GRZRFVDHJ  嗯好的v与公共事务', '没有description', 98765100);
INSERT INTO `event` VALUES (14, 404, '2021-02-23 07:58:07', 404, '2021-02-23 07:58:07', b'1', 'HUEG GRZRFVDHJ  嗯好的v与公共事务', '没有description', 98765100);

SET FOREIGN_KEY_CHECKS = 1;
