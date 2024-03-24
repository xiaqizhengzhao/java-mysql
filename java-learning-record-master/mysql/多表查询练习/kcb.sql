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

 Date: 22/03/2024 11:43:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for kcb
-- ----------------------------
DROP TABLE IF EXISTS `kcb`;
CREATE TABLE `kcb`  (
  `KCH` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '课程号',
  `KCM` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '课程名称',
  `ZGBH` int NULL DEFAULT NULL COMMENT '职工编号'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kcb
-- ----------------------------
INSERT INTO `kcb` VALUES ('3-105', '计算机导论', 825);
INSERT INTO `kcb` VALUES ('3-245', '操作系统', 804);
INSERT INTO `kcb` VALUES ('6-166', '数字电路', 856);
INSERT INTO `kcb` VALUES ('9-888', '高等数学', 831);

SET FOREIGN_KEY_CHECKS = 1;
