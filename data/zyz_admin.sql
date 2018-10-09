/*
Navicat MySQL Data Transfer

Source Server         : erp系统
Source Server Version : 50505
Source Host           : 192.168.9.4:3306
Source Database       : shi

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-09-30 10:22:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for zyz_admin
-- ----------------------------
CREATE TABLE `zyz_admin` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(30) DEFAULT '' COMMENT '姓名',
  `account` varchar(30) DEFAULT '' COMMENT '账号',
  `pwd` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(10) DEFAULT '' COMMENT '密码盐',
  `create_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(10) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `account` (`account`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='管理员表';

alter table zyz_admin add login_time int(10) DEFAULT NULL COMMENT '登陆时间';
