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

 Date: 22/03/2024 11:43:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for zgb
-- ----------------------------
DROP TABLE IF EXISTS `zgb`;
CREATE TABLE `zgb`  (
  `BH` int NOT NULL COMMENT '教工编号',
  `XM` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '教工姓名',
  `XB` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  `CSNY` datetime NULL DEFAULT NULL COMMENT '出生年月',
  `ZC` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职称',
  `SZBM` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所在部门',
  PRIMARY KEY (`BH`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of zgb
-- ----------------------------
INSERT INTO `zgb` VALUES (804, '李诚', '男', '1958-12-02 00:00:00', '副教授', '计算机系');
INSERT INTO `zgb` VALUES (825, '王萍', '女', '1972-05-05 00:00:00', '助教', '计算机系');
INSERT INTO `zgb` VALUES (831, '刘冰', '女', '1977-08-14 00:00:00', '助教', '电子工程系');
INSERT INTO `zgb` VALUES (856, '张旭', '男', '1969-03-12 00:00:00', '讲师', '电子工程系');

SET FOREIGN_KEY_CHECKS = 1;
