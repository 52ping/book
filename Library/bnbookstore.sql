/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50168
Source Host           : localhost:3306
Source Database       : bnbookstore

Target Server Type    : MYSQL
Target Server Version : 50168
File Encoding         : 65001

Date: 2016-06-19 11:56:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `address`
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int(36) NOT NULL AUTO_INCREMENT,
  `tel` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `region` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `userid` int(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '13052107901', '小谭', '上海市浦东新区龙阳广场2000号', '2');
INSERT INTO `address` VALUES ('3', '13052107901', '小建', '湖北省荆州市石首市横市镇，XXXXX村X组', '2');

-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(36) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `author` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `pricep` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `prices` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `publish` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `number` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '7684117', '三国演义', '作者1', '20', '25', '2016-05-24', '98');
INSERT INTO `book` VALUES ('2', '7684118', '水浒传', '作者2', '22', '29.9', '2016-05-24', '99');

-- ----------------------------
-- Table structure for `cart`
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(36) NOT NULL AUTO_INCREMENT,
  `userid` int(36) DEFAULT NULL,
  `bookid` int(36) DEFAULT NULL,
  `number` int(36) DEFAULT NULL,
  `state` int(36) DEFAULT NULL,
  `addressid` int(36) DEFAULT NULL,
  `time` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('1', '2', '1', '7', '1', '1', '2016-06-19 11:51:53');
INSERT INTO `cart` VALUES ('2', '2', '2', '2', '1', '3', '2016-06-19 11:51:53');
INSERT INTO `cart` VALUES ('3', '2', '2', '4', '1', '3', '2016-06-19 11:51:53');
INSERT INTO `cart` VALUES ('4', '6', '2', '1', '1', '1', '2016-06-19 11:51:53');
INSERT INTO `cart` VALUES ('6', '2', '1', '3', '1', '1', '2016-06-19 01:50:27');
INSERT INTO `cart` VALUES ('7', '2', '2', '3', '0', '1', '2016-06-19 11:51:53');
INSERT INTO `cart` VALUES ('8', '5', '2', '3', '0', '0', '2016-06-19 11:51:53');

-- ----------------------------
-- Table structure for `feedback`
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id` int(36) NOT NULL AUTO_INCREMENT,
  `tite` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `content` varchar(3000) COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `time` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES ('1', '其他', 'ewwqefdoijlksdjflksdjlkfjsldjflksdjlfkjsdlkflsjdfsdfsdfsdf', 'ls', '2016-06-19 11:51:53');
INSERT INTO `feedback` VALUES ('2', '其他', '为什么没有书籍', 'ls2', '2016-06-19 01:04:35');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(36) NOT NULL AUTO_INCREMENT,
  `username` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `per` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123456', '0');
INSERT INTO `user` VALUES ('2', 'ls', '123456', '1');
INSERT INTO `user` VALUES ('3', 'pt', '123456', '1');
INSERT INTO `user` VALUES ('4', 'pt2', '123456', '1');
INSERT INTO `user` VALUES ('5', 'ls2', '123456', '1');
INSERT INTO `user` VALUES ('6', 'aa2', '123456', '1');
