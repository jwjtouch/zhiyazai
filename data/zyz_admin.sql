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


CREATE TABLE `zyz_member` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(30) DEFAULT '' COMMENT '姓名',
  `account` varchar(30) DEFAULT '' COMMENT '账号',
  `pwd` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(10) DEFAULT '' COMMENT '密码盐',
  `status` tinyint(1) DEFAULT '1' COMMENT '0锁定1正常',
  `create_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(10) DEFAULT NULL COMMENT '更新时间',
  `login_time` int(10) DEFAULT NULL COMMENT '登录时间',
  PRIMARY KEY (`id`),
  KEY `account` (`account`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='会员表';



CREATE TABLE `zyz_category` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(60) DEFAULT '' COMMENT '名称',
  `keyword` varchar(255) DEFAULT '' COMMENT '关键字',
  `description` varchar(500) DEFAULT '' COMMENT '描述',
  `content` text DEFAULT '' COMMENT '内容',
  `rank` tinyint(3) DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) DEFAULT '0' COMMENT '0锁定1正常',
  `pid` smallint(4) DEFAULT '0' COMMENT '父id',
  `create_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(10) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='栏目表';



CREATE TABLE `zyz_statistics` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `tablename` varchar(30) DEFAULT '' COMMENT '表名',
  `quantity` mediumint(7) DEFAULT '1' COMMENT '数量',
  `type` tinyint(1) DEFAULT '0' COMMENT '类型',
  `create_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(10) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='统计表';