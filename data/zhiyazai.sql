/*
Navicat MySQL Data Transfer

Source Server         : 本地连接
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : zhiyazai

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-10-23 18:48:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for zyz_admin
-- ----------------------------
DROP TABLE IF EXISTS `zyz_admin`;
CREATE TABLE `zyz_admin` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(30) DEFAULT '' COMMENT '姓名',
  `account` varchar(30) DEFAULT '' COMMENT '账号',
  `pwd` varchar(50) DEFAULT '' COMMENT '密码',
  `create_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(10) DEFAULT NULL COMMENT '更新时间',
  `salt` varchar(10) DEFAULT '' COMMENT '密码盐',
  `login_time` int(10) DEFAULT NULL COMMENT '登录时间',
  PRIMARY KEY (`id`),
  KEY `account` (`account`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of zyz_admin
-- ----------------------------
INSERT INTO `zyz_admin` VALUES ('1', '管理员', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '1538744362', '1538744362', '', '1540280236');
INSERT INTO `zyz_admin` VALUES ('2', '知丫仔', 'zhiyazai', '4a97261e864e850acd0b2366301b4dba', '1539343698', '1539343698', '607dc9b7', '1539343780');

-- ----------------------------
-- Table structure for zyz_article
-- ----------------------------
DROP TABLE IF EXISTS `zyz_article`;
CREATE TABLE `zyz_article` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(60) DEFAULT '' COMMENT '标题',
  `keyword` varchar(255) DEFAULT '' COMMENT '关键字',
  `description` varchar(500) DEFAULT '' COMMENT '描述',
  `content` text COMMENT '内容',
  `rank` smallint(5) DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) DEFAULT '0' COMMENT '0锁定1正常',
  `cate_id` smallint(4) DEFAULT '0' COMMENT '栏目id',
  `admin_id` smallint(4) DEFAULT '0' COMMENT '发布人id',
  `create_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(10) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of zyz_article
-- ----------------------------

-- ----------------------------
-- Table structure for zyz_category
-- ----------------------------
DROP TABLE IF EXISTS `zyz_category`;
CREATE TABLE `zyz_category` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(60) DEFAULT '' COMMENT '名称',
  `keyword` varchar(255) DEFAULT '' COMMENT '关键字',
  `description` varchar(500) DEFAULT '' COMMENT '描述',
  `content` text COMMENT '内容',
  `rank` smallint(5) DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) DEFAULT '0' COMMENT '0锁定1正常',
  `pid` smallint(5) DEFAULT '0' COMMENT '父id',
  `create_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(10) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of zyz_category
-- ----------------------------
INSERT INTO `zyz_category` VALUES ('1', '前端课程', '前端课程', '前端课程', '<p>前端课程</p><p><br></p>', '0', '1', '0', '1540272933', '1540272933');
INSERT INTO `zyz_category` VALUES ('2', 'PHP课程', 'PHP课程', 'PHP课程', '<p>PHP课程</p><p><br></p>', '1', '1', '0', '1540272962', '1540272962');
INSERT INTO `zyz_category` VALUES ('3', 'Python课程', 'Python课程', 'Python课程', '<p>Python课程</p><p><br></p>', '2', '1', '0', '1540272984', '1540272984');
INSERT INTO `zyz_category` VALUES ('4', '编程笔记', '编程笔记', '编程笔记', '<p>编程笔记</p><p><br></p>', '4', '1', '0', '1540273010', '1540273010');
INSERT INTO `zyz_category` VALUES ('5', '数学笔记', '数学笔记', '数学笔记', '<p>数学笔记</p><p><br></p>', '5', '1', '0', '1540273033', '1540273033');
INSERT INTO `zyz_category` VALUES ('6', '万花筒', '万花筒', '万花筒', '<p>万花筒</p><p><br></p>', '6', '1', '0', '1540273050', '1540273050');
INSERT INTO `zyz_category` VALUES ('7', 'html课程', 'html课程', 'html课程', '<p>html课程</p><p><br></p>', '1', '1', '1', '1540273120', '1540273120');
INSERT INTO `zyz_category` VALUES ('8', 'css课程', 'css课程', 'css课程', '<p>css课程</p><p><br></p>', '2', '1', '1', '1540273139', '1540273139');
INSERT INTO `zyz_category` VALUES ('9', 'javascript课程', 'javascript课程', 'javascript课程', '<p>javascript课程</p><p><br></p>', '3', '1', '1', '1540273154', '1540273154');
INSERT INTO `zyz_category` VALUES ('10', 'html笔记', 'html笔记', 'html笔记', '<p>html笔记</p><p><br></p>', '1', '1', '4', '1540273176', '1540273176');
INSERT INTO `zyz_category` VALUES ('11', 'css笔记', 'css笔记', 'css笔记', '<p>css笔记</p><p><br></p>', '2', '1', '4', '1540273199', '1540273199');
INSERT INTO `zyz_category` VALUES ('12', 'javascript笔记', 'javascript笔记', 'javascript笔记', '<p>javascript笔记</p><p><br></p>', '3', '1', '4', '1540273220', '1540273220');
INSERT INTO `zyz_category` VALUES ('13', 'php笔记', 'php笔记', 'php笔记', '<p>php笔记</p><p><br></p>', '4', '1', '4', '1540273241', '1540273241');
INSERT INTO `zyz_category` VALUES ('14', 'python笔记', 'python笔记', 'python笔记', '<p>python笔记</p><p><br></p>', '5', '1', '4', '1540273266', '1540273266');
INSERT INTO `zyz_category` VALUES ('15', 'WEB服务器', 'WEB服务器', 'WEB服务器', '', '1', '1', '2', '1540275629', '1540275629');
INSERT INTO `zyz_category` VALUES ('16', 'PHP的基本语法', 'PHP的基本语法', 'PHP的基本语法', '', '2', '1', '2', '1540275666', '1540275666');
INSERT INTO `zyz_category` VALUES ('17', 'PHP的语言结构', 'PHP的语言结构', 'PHP的语言结构', '', '3', '1', '2', '1540275686', '1540275686');
INSERT INTO `zyz_category` VALUES ('18', 'PHP中的函数', 'PHP中的函数', 'PHP中的函数', '<p></p><h2><br></h2><p><br></p>', '4', '1', '2', '1540275718', '1540275718');
INSERT INTO `zyz_category` VALUES ('19', 'PHP中的数组与数据结构', 'PHP中的数组与数据结构', 'PHP中的数组与数据结构', '', '5', '1', '2', '1540275747', '1540275747');
INSERT INTO `zyz_category` VALUES ('20', 'PHP字符串处理', 'PHP字符串处理', 'PHP字符串处理', '', '6', '1', '2', '1540275774', '1540275774');
INSERT INTO `zyz_category` VALUES ('21', 'PHP正则表达式', 'PHP正则表达式', 'PHP正则表达式', '', '7', '1', '2', '1540275794', '1540275794');
INSERT INTO `zyz_category` VALUES ('22', 'PHP常用功能模块', 'PHP常用功能模块', 'PHP常用功能模块', '', '8', '1', '2', '1540275823', '1540275823');
INSERT INTO `zyz_category` VALUES ('23', 'PHP文件系统处理', 'PHP文件系统处理', 'PHP文件系统处理', '', '9', '1', '2', '1540276061', '1540276082');
INSERT INTO `zyz_category` VALUES ('24', 'Mysql数据库设计', 'Mysql数据库设计', 'Mysql数据库设计', '', '10', '1', '2', '1540276105', '1540276105');
INSERT INTO `zyz_category` VALUES ('25', 'PHP面向对象编程', 'PHP面向对象编程', 'PHP面向对象编程', '', '11', '1', '2', '1540276125', '1540276125');
INSERT INTO `zyz_category` VALUES ('26', '项目开发', '项目开发', '项目开发', '', '12', '1', '2', '1540276170', '1540276170');
INSERT INTO `zyz_category` VALUES ('27', 'LNMP/LAMP产品级别环境搭建', 'LNMP/LAMP产品级别环境搭建', 'LNMP/LAMP产品级别环境搭建', '', '13', '1', '2', '1540276258', '1540276258');
INSERT INTO `zyz_category` VALUES ('28', 'Javascript单页应用技术开发实战', 'Javascript单页应用技术开发实战', 'Javascript单页应用技术开发实战', '', '14', '1', '2', '1540276277', '1540276277');
INSERT INTO `zyz_category` VALUES ('29', '商业项目实战', '商业项目实战', '商业项目实战', '', '22', '1', '2', '1540276308', '1540279054');
INSERT INTO `zyz_category` VALUES ('30', 'Web服务器端环境搭建', 'Web服务器端环境搭建', 'Web服务器端环境搭建', '', '1', '1', '15', '1540276516', '1540276516');
INSERT INTO `zyz_category` VALUES ('31', 'PHP语法格式', 'PHP语法格式', 'PHP语法格式', '<p></p><div><br></div><p><br></p>', '1', '1', '16', '1540276639', '1540276639');
INSERT INTO `zyz_category` VALUES ('32', 'PHP变量', 'PHP变量', 'PHP变量', '', '2', '1', '16', '1540276670', '1540276670');
INSERT INTO `zyz_category` VALUES ('33', 'PHP的数据类型', 'PHP的数据类型', 'PHP的数据类型', '', '3', '1', '16', '1540276699', '1540276699');
INSERT INTO `zyz_category` VALUES ('34', 'PHP常量定义和使用', 'PHP常量定义和使用', 'PHP常量定义和使用', '', '4', '1', '16', '1540276727', '1540276727');
INSERT INTO `zyz_category` VALUES ('35', 'PHP中的运算符', 'PHP中的运算符', 'PHP中的运算符', '', '5', '1', '16', '1540276752', '1540276752');
INSERT INTO `zyz_category` VALUES ('36', '流程控制', '流程控制', '流程控制', '', '1', '1', '17', '1540276792', '1540276792');
INSERT INTO `zyz_category` VALUES ('37', '网页版计算器、在成绩分支判断、网站会员登录验证、后台权限等级判断', '网页版计算器、在成绩分支判断、网站会员登录验证、后台权限等级判断', '网页版计算器、在成绩分支判断、网站会员登录验证、后台权限等级判断', '', '2', '1', '17', '1540276819', '1540276819');
INSERT INTO `zyz_category` VALUES ('38', '数值累加计算实例、各种九九乘法表输出、指定星阵图案输出', '数值累加计算实例、各种九九乘法表输出、指定星阵图案输出', '数值累加计算实例、各种九九乘法表输出、指定星阵图案输出', '', '3', '1', '17', '1540276839', '1540276839');
INSERT INTO `zyz_category` VALUES ('39', '自定义求和函数、自定义各种聚合统计函数', '自定义求和函数、自定义各种聚合统计函数', '自定义求和函数、自定义各种聚合统计函数', '<p></p><ul><li><br></li></ul><p><br></p>', '1', '1', '18', '1540276892', '1540276892');
INSERT INTO `zyz_category` VALUES ('40', '用数组实现学生信息管理', '用数组实现学生信息管理', '用数组实现学生信息管理', '', '1', '1', '19', '1540276973', '1540276973');
INSERT INTO `zyz_category` VALUES ('41', '学生信息的格式化输出、学生信息的统计与汇总', '学生信息的格式化输出、学生信息的统计与汇总', '学生信息的格式化输出、学生信息的统计与汇总', '', '2', '1', '19', '1540276997', '1540276997');
INSERT INTO `zyz_category` VALUES ('42', '预定义数组', '预定义数组', '预定义数组', '', '3', '1', '19', '1540277023', '1540277023');
INSERT INTO `zyz_category` VALUES ('43', '自定义数组键值操作函数、自定义数组统计函数、自定义数组过滤函数、自定义数组排序函数', '自定义数组键值操作函数、自定义数组统计函数、自定义数组过滤函数、自定义数组排序函数', '自定义数组键值操作函数、自定义数组统计函数、自定义数组过滤函数、自定义数组排序函数', '', '4', '1', '19', '1540277056', '1540277056');
INSERT INTO `zyz_category` VALUES ('44', '在线文本式留言板、在线新闻信息管理系统', '在线文本式留言板、在线新闻信息管理系统', '在线文本式留言板、在线新闻信息管理系统', '', '1', '1', '20', '1540277082', '1540277082');
INSERT INTO `zyz_category` VALUES ('45', '使用正则实现表单验证、实现网上在线数据采集、正则实现数据过滤', '使用正则实现表单验证、实现网上在线数据采集、正则实现数据过滤', '使用正则实现表单验证、实现网上在线数据采集、正则实现数据过滤', '', '1', '1', '21', '1540277114', '1540277114');
INSERT INTO `zyz_category` VALUES ('46', '使用正则动态修改配置文件实战', '使用正则动态修改配置文件实战', '使用正则动态修改配置文件实战', '', '2', '1', '21', '1540277139', '1540277139');
INSERT INTO `zyz_category` VALUES ('47', '错误处理在项目中应用万年历实战、验证码实战', '错误处理在项目中应用万年历实战、验证码实战', '错误处理在项目中应用万年历实战、验证码实战', '', '1', '1', '22', '1540277184', '1540277184');
INSERT INTO `zyz_category` VALUES ('48', '在线文件管理系统、自定义递归统计目录函数、自定义递归赋值目录函数、自定义目录复制函数', '在线文件管理系统、自定义递归统计目录函数、自定义递归赋值目录函数、自定义目录复制函数', '在线文件管理系统、自定义递归统计目录函数、自定义递归赋值目录函数、自定义目录复制函数', '', '1', '1', '23', '1540277214', '1540277214');
INSERT INTO `zyz_category` VALUES ('49', '自定义文件复制函数、优化在线文件管理系统', '自定义文件复制函数、优化在线文件管理系统', '自定义文件复制函数、优化在线文件管理系统', '', '2', '1', '23', '1540277234', '1540277234');
INSERT INTO `zyz_category` VALUES ('50', '个人在线相册实战、网络U盘实战', '个人在线相册实战、网络U盘实战', '个人在线相册实战、网络U盘实战', '', '3', '1', '23', '1540277262', '1540277262');
INSERT INTO `zyz_category` VALUES ('51', '数据库管理', '数据库管理', '数据库管理', '', '1', '1', '24', '1540277283', '1540277283');
INSERT INTO `zyz_category` VALUES ('52', 'MySQL数据库中数据表的设计', 'MySQL数据库中数据表的设计', 'MySQL数据库中数据表的设计', '', '2', '1', '24', '1540277307', '1540277307');
INSERT INTO `zyz_category` VALUES ('53', 'SQL语言设计', 'SQL语言设计', 'SQL语言设计', '', '3', '1', '24', '1540277330', '1540277330');
INSERT INTO `zyz_category` VALUES ('54', '学生信息类的定义和使用、自定义文件处理类、使用PDO类实现学生信息管理', '学生信息类的定义和使用、自定义文件处理类、使用PDO类实现学生信息管理', '学生信息类的定义和使用、自定义文件处理类、使用PDO类实现学生信息管理', '', '1', '1', '25', '1540277356', '1540277356');
INSERT INTO `zyz_category` VALUES ('55', '自定义Model类实战', '自定义Model类实战', '自定义Model类实战', '', '2', '1', '25', '1540277403', '1540277403');
INSERT INTO `zyz_category` VALUES ('56', '自定义数据分页类实战', '自定义数据分页类实战', '自定义数据分页类实战', '', '3', '1', '25', '1540277432', '1540277432');
INSERT INTO `zyz_category` VALUES ('57', '自定义文件上传类实战、常见的关键字和魔术方法', '自定义文件上传类实战、常见的关键字和魔术方法', '自定义文件上传类实战、常见的关键字和魔术方法', '', '4', '1', '25', '1540277457', '1540277457');
INSERT INTO `zyz_category` VALUES ('58', '自定义图片处理类实战、与类和对象有关的系统函数和异常处理', '自定义图片处理类实战、与类和对象有关的系统函数和异常处理', '自定义图片处理类实战、与类和对象有关的系统函数和异常处理', '', '5', '1', '25', '1540277484', '1540277484');
INSERT INTO `zyz_category` VALUES ('59', '优化自定义Model类实战', '优化自定义Model类实战', '优化自定义Model类实战', '', '7', '1', '25', '1540277516', '1540277569');
INSERT INTO `zyz_category` VALUES ('60', '综合实战（使用功能类编写）', '综合实战（使用功能类编写）', '综合实战（使用功能类编写）', '', '6', '1', '25', '1540277537', '1540277537');
INSERT INTO `zyz_category` VALUES ('61', '项目分析与设计', '项目分析与设计', '项目分析与设计', '', '1', '1', '26', '1540277603', '1540277603');
INSERT INTO `zyz_category` VALUES ('62', 'Cookie的应用', 'Cookie的应用', 'Cookie的应用', '', '2', '1', '26', '1540277622', '1540277622');
INSERT INTO `zyz_category` VALUES ('63', 'Session的应用', 'Session的应用', 'Session的应用', '', '3', '1', '26', '1540277641', '1540277641');
INSERT INTO `zyz_category` VALUES ('64', '用户管理', '用户管理', '用户管理', '', '4', '1', '26', '1540277679', '1540277679');
INSERT INTO `zyz_category` VALUES ('65', '分类管理', '分类管理', '分类管理', '', '5', '1', '26', '1540277708', '1540277708');
INSERT INTO `zyz_category` VALUES ('66', '商品管理', '商品管理', '商品管理', '', '6', '1', '26', '1540277732', '1540277732');
INSERT INTO `zyz_category` VALUES ('67', '订单管理', '订单管理', '订单管理', '', '7', '1', '26', '1540277757', '1540277757');
INSERT INTO `zyz_category` VALUES ('68', '会员中心', '会员中心', '会员中心', '', '8', '1', '26', '1540277788', '1540277788');
INSERT INTO `zyz_category` VALUES ('69', '商品展示', '商品展示', '商品展示', '', '9', '1', '26', '1540277820', '1540277820');
INSERT INTO `zyz_category` VALUES ('70', '购物流程', '购物流程', '购物流程', '', '10', '1', '26', '1540277848', '1540277848');
INSERT INTO `zyz_category` VALUES ('71', '页面设计', '页面设计', '页面设计', '', '11', '1', '26', '1540277874', '1540277874');
INSERT INTO `zyz_category` VALUES ('72', '扩展功能', '扩展功能', '扩展功能', '', '12', '1', '26', '1540277893', '1540277893');
INSERT INTO `zyz_category` VALUES ('73', 'Linux常用命令', 'Linux常用命令', 'Linux常用命令', '', '1', '1', '27', '1540278573', '1540278573');
INSERT INTO `zyz_category` VALUES ('74', 'Linux系统管理', 'Linux系统管理', 'Linux系统管理', '', '2', '1', '27', '1540278596', '1540278596');
INSERT INTO `zyz_category` VALUES ('75', 'Linux网络应用', 'Linux网络应用', 'Linux网络应用', '', '3', '1', '27', '1540278631', '1540278631');
INSERT INTO `zyz_category` VALUES ('76', 'LAMP环境编译及Apache配置', 'LAMP环境编译及Apache配置', 'LAMP环境编译及Apache配置', '', '4', '1', '27', '1540278654', '1540278654');
INSERT INTO `zyz_category` VALUES ('77', 'Nginx服务', 'Nginx服务', 'Nginx服务', '', '5', '1', '27', '1540278680', '1540278680');
INSERT INTO `zyz_category` VALUES ('78', 'iptables防火墙', 'iptables防火墙', 'iptables防火墙', '', '6', '1', '27', '1540278701', '1540278701');
INSERT INTO `zyz_category` VALUES ('79', 'App单页实战', 'App单页实战', 'App单页实战', '', '1', '1', '28', '1540278733', '1540278733');
INSERT INTO `zyz_category` VALUES ('80', '二次开发', '二次开发', '二次开发', '', '15', '1', '2', '1540278809', '1540278884');
INSERT INTO `zyz_category` VALUES ('81', '非关系型数据库应用实战', '非关系型数据库应用实战', '非关系型数据库应用实战', '', '16', '1', '2', '1540278920', '1540278920');
INSERT INTO `zyz_category` VALUES ('82', 'X关系型数据库查询统计与分析实战', 'X关系型数据库查询统计与分析实战', 'X关系型数据库查询统计与分析实战', '', '17', '1', '2', '1540278946', '1540278946');
INSERT INTO `zyz_category` VALUES ('83', '长连接与网页推送技术实战', '长连接与网页推送技术实战', '长连接与网页推送技术实战', '', '18', '1', '2', '1540278967', '1540278967');
INSERT INTO `zyz_category` VALUES ('84', '微信应用开发实战', '微信应用开发实战', '微信应用开发实战', '', '19', '1', '2', '1540278986', '1540278986');
INSERT INTO `zyz_category` VALUES ('85', '产品标准化', '产品标准化', '产品标准化', '', '20', '1', '2', '1540279007', '1540279007');
INSERT INTO `zyz_category` VALUES ('86', 'swoole', 'swoole', 'swoole', '', '21', '1', '2', '1540279040', '1540279040');
INSERT INTO `zyz_category` VALUES ('87', '商城或公司网站', '商城或公司网站', '商城或公司网站', '', '1', '1', '80', '1540279166', '1540279166');
INSERT INTO `zyz_category` VALUES ('88', '在线电影院订票系统', '在线电影院订票系统', '在线电影院订票系统', '', '1', '1', '81', '1540279203', '1540279203');
INSERT INTO `zyz_category` VALUES ('89', 'ERP财务软件的数据库设计和优化', 'ERP财务软件的数据库设计和优化', 'ERP财务软件的数据库设计和优化', '', '1', '1', '82', '1540279238', '1540279238');
INSERT INTO `zyz_category` VALUES ('90', '多用户在线聊天室', '多用户在线聊天室', '多用户在线聊天室', '', '1', '1', '83', '1540279271', '1540279271');
INSERT INTO `zyz_category` VALUES ('91', '个人博客系统实战', '个人博客系统实战', '个人博客系统实战', '', '1', '1', '84', '1540279529', '1540279529');
INSERT INTO `zyz_category` VALUES ('92', '使用Laravel框架开发自己的个人博客系统', '使用Laravel框架开发自己的个人博客系统', '使用Laravel框架开发自己的个人博客系统', '', '1', '1', '85', '1540279557', '1540279557');
INSERT INTO `zyz_category` VALUES ('93', '使用swoole框架构建PHP异步网络通信', '使用swoole框架构建PHP异步网络通信', '使用swoole框架构建PHP异步网络通信', '', '1', '1', '86', '1540279583', '1540279583');
INSERT INTO `zyz_category` VALUES ('94', '项目开始前期准备工作', '项目开始前期准备工作', '项目开始前期准备工作', '', '1', '1', '29', '1540279620', '1540279620');
INSERT INTO `zyz_category` VALUES ('95', '项目需求分析', '项目需求分析', '项目需求分析', '', '2', '1', '29', '1540279643', '1540279643');
INSERT INTO `zyz_category` VALUES ('96', '项目数据库设计', '项目数据库设计', '项目数据库设计', '', '3', '1', '29', '1540279662', '1540279662');
INSERT INTO `zyz_category` VALUES ('97', '项目程序设计', '项目程序设计', '项目程序设计', '', '4', '1', '29', '1540279688', '1540279688');
INSERT INTO `zyz_category` VALUES ('98', 'Laravel框架及组件', 'Laravel框架及组件', 'Laravel框架及组件', '', '5', '1', '29', '1540279718', '1540279718');
INSERT INTO `zyz_category` VALUES ('99', '代码编写与测试', '代码编写与测试', '代码编写与测试', '', '6', '1', '29', '1540279742', '1540279742');
INSERT INTO `zyz_category` VALUES ('100', '项目验收与生产部署', '项目验收与生产部署', '项目验收与生产部署', '', '7', '1', '29', '1540279766', '1540279766');
INSERT INTO `zyz_category` VALUES ('101', '项目后期维护与优化', '项目后期维护与优化', '项目后期维护与优化', '', '8', '1', '29', '1540279789', '1540279789');
INSERT INTO `zyz_category` VALUES ('102', '其它内容扩展', '其它内容扩展', '其它内容扩展', '', '9', '1', '29', '1540279824', '1540279824');

-- ----------------------------
-- Table structure for zyz_member
-- ----------------------------
DROP TABLE IF EXISTS `zyz_member`;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of zyz_member
-- ----------------------------
INSERT INTO `zyz_member` VALUES ('1', '焦伟佳', 'jiaoweijia', 'b8137188fe687bdf3d8052fcd41317b4', '1b8f12ef', '1', '1539712439', '1539712439', null);
INSERT INTO `zyz_member` VALUES ('2', '牛云飞', 'niuyunfei', '2a178fedd0ab95219312e0e4c4f3ec42', 'd9c8fa6c', '1', '1539712491', '1539712491', null);
INSERT INTO `zyz_member` VALUES ('3', '陶甜', 'taotian', '216e71307caf2f730c66618809079f92', 'a5d06cd7', '1', '1539712520', '1539712520', null);
INSERT INTO `zyz_member` VALUES ('4', '侯凯', 'houkai', '17a5b3e27ac09f745702cd367aaef741', 'feb876c5', '1', '1539712545', '1539712567', null);

-- ----------------------------
-- Table structure for zyz_statistics
-- ----------------------------
DROP TABLE IF EXISTS `zyz_statistics`;
CREATE TABLE `zyz_statistics` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `tablename` varchar(30) DEFAULT '' COMMENT '表名',
  `quantity` mediumint(7) DEFAULT '1' COMMENT '数量',
  `type` tinyint(1) DEFAULT '0' COMMENT '类型',
  `create_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(10) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='统计表';

-- ----------------------------
-- Records of zyz_statistics
-- ----------------------------
INSERT INTO `zyz_statistics` VALUES ('1', 'admin', '2', '0', '1539697600', '1539712673');
INSERT INTO `zyz_statistics` VALUES ('2', 'member', '4', '0', '1539712440', '1539712618');
INSERT INTO `zyz_statistics` VALUES ('3', 'category', '102', '0', '1539932982', '1540279824');
