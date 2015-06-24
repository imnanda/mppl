/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : mppl

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2015-06-23 07:44:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_dosen
-- ----------------------------
DROP TABLE IF EXISTS `t_dosen`;
CREATE TABLE `t_dosen` (
  `id_dosen` int(20) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `no_tlp` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `jenis_dosen` enum('Tetap','Luar biasa') DEFAULT NULL,
  PRIMARY KEY (`id_dosen`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_dosen
-- ----------------------------
INSERT INTO `t_dosen` VALUES ('1', 'Asmunanda', '085721075933', 'asmunanda.imams@gmail.com', 'Tetap');
INSERT INTO `t_dosen` VALUES ('3', 'Kurniawan', '085721075933', 'asmunanda.imam@yahoo.co.id', 'Luar biasa');
INSERT INTO `t_dosen` VALUES ('4', 'M resna P', '085721075933', 'asmunanda.imams@gmail.com', 'Tetap');

-- ----------------------------
-- Table structure for t_email
-- ----------------------------
DROP TABLE IF EXISTS `t_email`;
CREATE TABLE `t_email` (
  `id_email` int(20) NOT NULL AUTO_INCREMENT,
  `isi` varchar(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_email
-- ----------------------------
INSERT INTO `t_email` VALUES ('1', 'ini pesan email', null);
INSERT INTO `t_email` VALUES ('2', 'ini pesan email lewt task schejuller', null);
INSERT INTO `t_email` VALUES ('3', 'ini pesan email lewt task schejuller', null);
INSERT INTO `t_email` VALUES ('4', 'kirim pesan ke yahoo', null);
INSERT INTO `t_email` VALUES ('5', 'kirim pesan ke yahoo', null);
INSERT INTO `t_email` VALUES ('6', 'kirim pesan ke yahoo', null);
INSERT INTO `t_email` VALUES ('7', 'kirim pesan ke yahoo', null);
INSERT INTO `t_email` VALUES ('8', '', null);

-- ----------------------------
-- Table structure for t_outbox_email
-- ----------------------------
DROP TABLE IF EXISTS `t_outbox_email`;
CREATE TABLE `t_outbox_email` (
  `id_outbox_email` int(20) NOT NULL AUTO_INCREMENT,
  `id_email` varchar(255) NOT NULL,
  `waktu_terkirim_email` datetime NOT NULL,
  `status_email` varchar(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id_outbox_email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_outbox_email
-- ----------------------------
INSERT INTO `t_outbox_email` VALUES ('1', '1', '2015-06-22 22:51:15', 't', 'asmunanda.imams@gmail.com');
INSERT INTO `t_outbox_email` VALUES ('2', '1', '2015-06-22 22:51:15', 't', 'asmunanda.imams@gmail.com');
INSERT INTO `t_outbox_email` VALUES ('3', '2', '2015-06-23 00:19:09', 't', 'asmunanda.imams@gmail.com');
INSERT INTO `t_outbox_email` VALUES ('4', '2', '2015-06-23 00:19:09', 't', 'asmunanda.imams@gmail.com');
INSERT INTO `t_outbox_email` VALUES ('5', '3', '2015-06-23 00:29:44', 't', 'asmunanda.imams@gmail.com');
INSERT INTO `t_outbox_email` VALUES ('6', '3', '2015-06-23 00:29:44', 't', 'asmunanda.imams@gmail.com');
INSERT INTO `t_outbox_email` VALUES ('7', '4', '2015-06-23 00:34:24', 't', 'asmunanda.imam@yahoo.co.id');
INSERT INTO `t_outbox_email` VALUES ('8', '5', '2015-06-23 00:35:31', 't', 'asmunanda.imam@yahoo.co.id');
INSERT INTO `t_outbox_email` VALUES ('9', '6', '2015-06-23 01:01:57', 't', 'asmunanda.imams@gmail.com');
INSERT INTO `t_outbox_email` VALUES ('10', '6', '2015-06-23 01:01:57', 't', 'asmunanda.imam@yahoo.co.id');
INSERT INTO `t_outbox_email` VALUES ('11', '7', '2015-06-23 01:09:14', 't', 'asmunanda.imams@gmail.com');
INSERT INTO `t_outbox_email` VALUES ('12', '7', '2015-06-23 01:09:14', 'p', 'asmunanda.imam@yahoo.co.id');

-- ----------------------------
-- Table structure for t_outbox_sms
-- ----------------------------
DROP TABLE IF EXISTS `t_outbox_sms`;
CREATE TABLE `t_outbox_sms` (
  `id_outbox_sms` int(20) NOT NULL AUTO_INCREMENT,
  `id_sms` varchar(255) NOT NULL,
  `waktu_terkirim_sms` datetime NOT NULL,
  `status_sms` varchar(5) NOT NULL,
  `no_tpl` varchar(50) NOT NULL,
  PRIMARY KEY (`id_outbox_sms`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_outbox_sms
-- ----------------------------
INSERT INTO `t_outbox_sms` VALUES ('16', '13', '2015-06-22 10:14:20', 'P', '085721075933');
INSERT INTO `t_outbox_sms` VALUES ('17', '13', '2015-06-22 10:14:20', 'P', '085721075933');

-- ----------------------------
-- Table structure for t_sms
-- ----------------------------
DROP TABLE IF EXISTS `t_sms`;
CREATE TABLE `t_sms` (
  `id_sms` int(20) NOT NULL AUTO_INCREMENT,
  `isi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_sms`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_sms
-- ----------------------------
INSERT INTO `t_sms` VALUES ('1', 'asdasdassadas');
INSERT INTO `t_sms` VALUES ('2', 'asdasdassadas');
INSERT INTO `t_sms` VALUES ('3', 'asdasdassadas');
INSERT INTO `t_sms` VALUES ('4', 'asdasdassadas');
INSERT INTO `t_sms` VALUES ('5', 'asdasdas');
INSERT INTO `t_sms` VALUES ('6', 'asdasdas');
INSERT INTO `t_sms` VALUES ('7', 'asdasdas');
INSERT INTO `t_sms` VALUES ('8', 'asdasdas');
INSERT INTO `t_sms` VALUES ('9', 'kirim ali');
INSERT INTO `t_sms` VALUES ('10', 'kirim ali');
INSERT INTO `t_sms` VALUES ('11', 'kirim ali');
INSERT INTO `t_sms` VALUES ('12', 'kirim ali');
INSERT INTO `t_sms` VALUES ('13', 'kirim ali ');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `key_forgot` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user
-- ----------------------------
