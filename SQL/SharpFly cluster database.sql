/*
Navicat MySQL Data Transfer

Source Server         : local XAMPP
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : sharpfly_cluster

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2016-11-01 20:40:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `character`
-- ----------------------------
DROP TABLE IF EXISTS `character`;
CREATE TABLE `character` (
  `characterId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `clusterId` int(10) unsigned NOT NULL,
  `classId` tinyint(3) unsigned NOT NULL,
  `hairStyle` tinyint(4) NOT NULL,
  `hairColor` tinyint(3) unsigned NOT NULL,
  `face` tinyint(3) unsigned NOT NULL,
  `gender` tinyint(3) unsigned NOT NULL,
  `strength` int(10) unsigned NOT NULL,
  `stamina` int(10) unsigned NOT NULL,
  `dexterity` int(11) NOT NULL,
  `intelligence` int(10) unsigned NOT NULL,
  `skillpoints` int(10) unsigned NOT NULL,
  `statpoints` int(10) unsigned NOT NULL,
  `level` int(10) unsigned NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `map` int(10) unsigned NOT NULL,
  `x` double unsigned NOT NULL,
  `y` double unsigned NOT NULL,
  `z` double unsigned NOT NULL,
  `orientation` double unsigned NOT NULL,
  `penya` int(10) unsigned NOT NULL,
  `flyingLevel` int(10) unsigned NOT NULL,
  `flyingExp` int(10) unsigned NOT NULL,
  `hp` int(10) unsigned NOT NULL,
  `mp` int(10) unsigned NOT NULL,
  `size` int(10) unsigned NOT NULL,
  `pvpPoints` int(10) unsigned NOT NULL,
  `pkPoints` int(10) unsigned NOT NULL,
  `guildId` int(10) unsigned NOT NULL,
  `bag1TimeLeft` int(10) unsigned NOT NULL,
  `bag2TimeLeft` int(10) unsigned NOT NULL,
  `msgState` int(10) unsigned NOT NULL,
  `motionFlags` int(10) unsigned NOT NULL,
  `movementFlags` int(10) unsigned NOT NULL,
  `playerFlags` int(10) unsigned NOT NULL,
  PRIMARY KEY (`characterId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of character
-- ----------------------------

-- ----------------------------
-- Table structure for `character_actionbar`
-- ----------------------------
DROP TABLE IF EXISTS `character_actionbar`;
CREATE TABLE `character_actionbar` (
  `characterId` int(11) NOT NULL,
  `actionSlotSkillId` varchar(255) NOT NULL,
  `actionSlotOption` varchar(255) NOT NULL,
  `actionBarProgress` int(11) NOT NULL,
  PRIMARY KEY (`characterId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of character_actionbar
-- ----------------------------

-- ----------------------------
-- Table structure for `character_bank`
-- ----------------------------
DROP TABLE IF EXISTS `character_bank`;
CREATE TABLE `character_bank` (
  `characterId` int(11) NOT NULL,
  `bankPassword` varchar(255) NOT NULL,
  `bank0Penya` int(11) NOT NULL DEFAULT '0',
  `bank1Penya` int(11) NOT NULL DEFAULT '0',
  `bank2Penya` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`characterId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of character_bank
-- ----------------------------

-- ----------------------------
-- Table structure for `character_slot`
-- ----------------------------
DROP TABLE IF EXISTS `character_slot`;
CREATE TABLE `character_slot` (
  `characterId` int(10) unsigned NOT NULL,
  `slotId` tinyint(3) unsigned NOT NULL,
  `accountId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`characterId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of character_slot
-- ----------------------------
