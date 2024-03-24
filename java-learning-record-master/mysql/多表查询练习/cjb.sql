/*
 Navicat Premium Data Transfer

 Source Server         : 1
 Source Server Type    : MySQL
 Source Server Version : 80034 (8.0.34)
 Source Host           : localhost:3306
 Source Schema         : zgt

 Target Server Type    : MySQL
 Target Server Version : 80034 (8.0.34)
 File Encoding         : 65001

 Date: 22/03/2024 11:43:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cjb
-- ----------------------------
DROP TABLE IF EXISTS `cjb`;
CREATE TABLE `cjb`  (
  `XH` int NULL DEFAULT NULL,
  `KCH` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `CJ` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cjb
-- ----------------------------
INSERT INTO `cjb` VALUES (103, '3-245', '86');
INSERT INTO `cjb` VALUES (105, '3-245', '75');
INSERT INTO `cjb` VALUES (109, '3-245', '68');
INSERT INTO `cjb` VALUES (103, '3-105', '92');
INSERT INTO `cjb` VALUES (105, '3-105', '88');
INSERT INTO `cjb` VALUES (109, '3-105', '76');
INSERT INTO `cjb` VALUES (101, '3-105', '64');
INSERT INTO `cjb` VALUES (107, '3-105', '91');
INSERT INTO `cjb` VALUES (108, '3-105', '78');
INSERT INTO `cjb` VALUES (101, '6-166', '85');
INSERT INTO `cjb` VALUES (107, '6-166', '79');
INSERT INTO `cjb` VALUES (108, '6-166', '81');

SET FOREIGN_KEY_CHECKS = 1;
