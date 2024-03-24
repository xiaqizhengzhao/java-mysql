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

 Date: 22/03/2024 11:43:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for xsb
-- ----------------------------
DROP TABLE IF EXISTS `xsb`;
CREATE TABLE `xsb`  (
  `XHID` int NOT NULL AUTO_INCREMENT,
  `XSXM` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `XB` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `CSRQ` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `BJ` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`XHID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xsb
-- ----------------------------
INSERT INTO `xsb` VALUES (101, '李军', '男', '1976-02-20', '95033');
INSERT INTO `xsb` VALUES (103, '陆军', '男', '1974-06-03', '95031');
INSERT INTO `xsb` VALUES (105, '匡明', '男', '1975-10-02', '95031');
INSERT INTO `xsb` VALUES (107, '王丽', '女', '1976-01-23', '95033');
INSERT INTO `xsb` VALUES (108, '曾华', '男', '1977-09-01', '95033');
INSERT INTO `xsb` VALUES (109, '王芳', '女', '1975-02-10', '95031');

SET FOREIGN_KEY_CHECKS = 1;
