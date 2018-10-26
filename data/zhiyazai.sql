/*
Navicat MySQL Data Transfer

Source Server         : 本地连接
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : zhiyazai

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-10-26 20:00:06
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of zyz_admin
-- ----------------------------
INSERT INTO `zyz_admin` VALUES ('1', '管理员', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '1538744362', '1538744362', '', '1540551337');
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
) ENGINE=MyISAM AUTO_INCREMENT=342 DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of zyz_article
-- ----------------------------
INSERT INTO `zyz_article` VALUES ('1', 'html+css基本入门知识', 'html+css基本入门知识', 'html+css基本入门知识', '', '0', '1', '103', '1', '1540525756', '1540525756');
INSERT INTO `zyz_article` VALUES ('2', '网站运行原理', '网站运行原理', '网站运行原理', '', '0', '1', '103', '1', '1540525770', '1540525770');
INSERT INTO `zyz_article` VALUES ('3', 'html常用标签、表单新类型、网页seo优化', 'html常用标签、表单新类型、网页seo优化', 'html常用标签、表单新类型、网页seo优化', '', '0', '1', '103', '1', '1540525815', '1540525815');
INSERT INTO `zyz_article` VALUES ('4', 'html5语义化标签、音视频标签', 'html5语义化标签、音视频标签', 'html5语义化标签、音视频标签', '', '0', '1', '103', '1', '1540525840', '1540525840');
INSERT INTO `zyz_article` VALUES ('5', 'css选择器', 'css选择器-基本、层级、属性、伪类、伪状态', 'css选择器-基本、层级、属性、伪类、伪状态', '', '0', '1', '103', '1', '1540525877', '1540525877');
INSERT INTO `zyz_article` VALUES ('6', 'css常用样式属性', 'css常用样式属性', 'css常用样式属性', '', '0', '1', '103', '1', '1540525896', '1540525896');
INSERT INTO `zyz_article` VALUES ('7', 'css3过渡、变换、动画', 'css3过渡、变换、动画', 'css3过渡、变换、动画', '', '0', '1', '103', '1', '1540525919', '1540525919');
INSERT INTO `zyz_article` VALUES ('8', 'css3 3D场景搭建与应用', 'css3 3D场景搭建与应用', 'css3 3D场景搭建与应用', '', '0', '1', '103', '1', '1540525933', '1540525933');
INSERT INTO `zyz_article` VALUES ('9', '精灵图（雪碧图）的原理以及实现', '精灵图（雪碧图）的原理以及实现', '精灵图（雪碧图）的原理以及实现', '', '0', '1', '103', '1', '1540525946', '1540525946');
INSERT INTO `zyz_article` VALUES ('10', 'Iconfont字体图标（阿里巴巴矢量字体图标库）原理以及实现', 'Iconfont字体图标（阿里巴巴矢量字体图标库）原理以及实现', 'Iconfont字体图标（阿里巴巴矢量字体图标库）原理以及实现', '', '0', '1', '103', '1', '1540525962', '1540525962');
INSERT INTO `zyz_article` VALUES ('11', 'media媒体响应式布局', 'media媒体响应式布局', 'media媒体响应式布局', '', '0', '1', '103', '1', '1540525990', '1540525990');
INSERT INTO `zyz_article` VALUES ('12', 'flex弹性盒子布局', 'flex弹性盒子布局', 'flex弹性盒子布局', '', '0', '1', '103', '1', '1540526013', '1540526013');
INSERT INTO `zyz_article` VALUES ('13', 'photoshop基本切图', 'photoshop基本切图', 'photoshop基本切图', '', '0', '1', '103', '1', '1540526027', '1540526027');
INSERT INTO `zyz_article` VALUES ('15', 'ECMAScript核心语法结构', 'ECMAScript核心语法结构', 'ECMAScript核心语法结构', '', '0', '1', '104', '1', '1540530008', '1540530008');
INSERT INTO `zyz_article` VALUES ('16', '变量声明优先级（var/function）', '变量声明优先级（var/function）', '变量声明优先级（var/function）', '', '0', '1', '104', '1', '1540530040', '1540530040');
INSERT INTO `zyz_article` VALUES ('17', '函数详解', '格式、作用域、作用域链、回调、闭包、匿名、递归', '格式、作用域、作用域链、回调、闭包、匿名、递归', '<p>格式、作用域、作用域链、回调、闭包、匿名、递归</p><p><br></p>', '0', '1', '104', '1', '1540530064', '1540530064');
INSERT INTO `zyz_article` VALUES ('18', '对象详解', '格式、内置对象、原型、原型链', '格式、内置对象、原型、原型链', '<p>格式、内置对象、原型、原型链</p><p><br></p>', '0', '1', '104', '1', '1540530091', '1540530091');
INSERT INTO `zyz_article` VALUES ('19', '事件（event）', '事件（event）', '事件（event）', '', '0', '1', '104', '1', '1540530103', '1540530103');
INSERT INTO `zyz_article` VALUES ('20', 'DOM文档对象模型', 'DOM文档对象模型', 'DOM文档对象模型', '', '0', '1', '104', '1', '1540530115', '1540530115');
INSERT INTO `zyz_article` VALUES ('21', 'BOM浏览器对象模型', 'BOM浏览器对象模型', 'BOM浏览器对象模型', '', '0', '1', '104', '1', '1540530127', '1540530127');
INSERT INTO `zyz_article` VALUES ('22', 'jQuery的概念与基本使用', 'jQuery的概念与基本使用', 'jQuery的概念与基本使用', '', '0', '1', '104', '1', '1540530138', '1540530138');
INSERT INTO `zyz_article` VALUES ('23', 'jQuery元素节点操作', 'jQuery元素节点操作', 'jQuery元素节点操作', '', '0', '1', '104', '1', '1540530154', '1540530154');
INSERT INTO `zyz_article` VALUES ('24', 'jQuery的事件绑定与链式操作', 'jQuery的事件绑定与链式操作', 'jQuery的事件绑定与链式操作', '', '0', '1', '104', '1', '1540530167', '1540530167');
INSERT INTO `zyz_article` VALUES ('25', 'jQuery元素属性与样式操作', 'jQuery元素属性与样式操作', 'jQuery元素属性与样式操作', '', '0', '1', '104', '1', '1540530178', '1540530178');
INSERT INTO `zyz_article` VALUES ('26', 'Ajax原理以及应用场景', 'Ajax原理以及应用场景', 'Ajax原理以及应用场景', '', '0', '1', '105', '1', '1540530287', '1540530287');
INSERT INTO `zyz_article` VALUES ('27', '原生Ajax的运行原理与实现', '原生Ajax的运行原理与实现', '原生Ajax的运行原理与实现', '', '0', '1', '105', '1', '1540530301', '1540530301');
INSERT INTO `zyz_article` VALUES ('28', '异步操作与同步操作原理与区别', '异步操作与同步操作原理与区别', '异步操作与同步操作原理与区别', '', '0', '1', '105', '1', '1540530311', '1540530311');
INSERT INTO `zyz_article` VALUES ('29', 'Ajax请求同源策略布局', 'Ajax请求同源策略布局', 'Ajax请求同源策略布局', '', '0', '1', '105', '1', '1540530324', '1540530324');
INSERT INTO `zyz_article` VALUES ('30', 'JSONP跨域请求原理以及实现方式', 'JSONP跨域请求原理以及实现方式', 'JSONP跨域请求原理以及实现方式', '', '0', '1', '105', '1', '1540530335', '1540530335');
INSERT INTO `zyz_article` VALUES ('31', 'jQuery封装的Ajax调用和JSONP数据跨域请求原理和实现', 'jQuery封装的Ajax调用和JSONP数据跨域请求原理和实现', 'jQuery封装的Ajax调用和JSONP数据跨域请求原理和实现', '', '0', '1', '105', '1', '1540530349', '1540530349');
INSERT INTO `zyz_article` VALUES ('32', '任选电商类、游戏类、论坛类、门户类网站，完成整站开发', '任选电商类、游戏类、论坛类、门户类网站，完成整站开发', '任选电商类、游戏类、论坛类、门户类网站，完成整站开发', '', '0', '1', '106', '1', '1540530511', '1540530511');
INSERT INTO `zyz_article` VALUES ('33', '实现Ajax后台数据交互', '实现Ajax后台数据交互', '实现Ajax后台数据交互', '', '0', '1', '106', '1', '1540530522', '1540530522');
INSERT INTO `zyz_article` VALUES ('34', '实现网站常见页面布局以及JS特效开发', '实现网站常见页面布局以及JS特效开发', '实现网站常见页面布局以及JS特效开发', '', '0', '1', '106', '1', '1540530534', '1540530534');
INSERT INTO `zyz_article` VALUES ('35', '完成移动端页面布局（fex弹性盒子、rem布局）', '完成移动端页面布局（fex弹性盒子、rem布局）', '完成移动端页面布局（fex弹性盒子、rem布局）', '<p>完成移动端页面布局（fex弹性盒子、rem布局）</p><p><br></p>', '0', '1', '106', '1', '1540530548', '1540530548');
INSERT INTO `zyz_article` VALUES ('36', '打包移动端项目，真机运行', '打包移动端项目，真机运行', '打包移动端项目，真机运行', '', '0', '1', '106', '1', '1540530559', '1540530559');
INSERT INTO `zyz_article` VALUES ('37', 'PC端项目放入GitHub社区，在线运行', 'PC端项目放入GitHub社区，在线运行', 'PC端项目放入GitHub社区，在线运行', '<p>PC端项目放入GitHub社区，在线运行</p><p><br></p>', '0', '1', '106', '1', '1540530573', '1540530573');
INSERT INTO `zyz_article` VALUES ('38', 'let const 语法', 'let const 语法', 'let const 语法', '', '0', '1', '107', '1', '1540530587', '1540530587');
INSERT INTO `zyz_article` VALUES ('39', '解构赋值', '解构赋值', '解构赋值', '', '0', '1', '107', '1', '1540530598', '1540530598');
INSERT INTO `zyz_article` VALUES ('40', 'for of 语法', 'for of 语法', 'for of 语法', '', '0', '1', '107', '1', '1540530611', '1540530611');
INSERT INTO `zyz_article` VALUES ('41', '模板字符串', '模板字符串', '模板字符串', '', '0', '1', '107', '1', '1540530628', '1540530628');
INSERT INTO `zyz_article` VALUES ('42', '箭头函数', '箭头函数', '箭头函数', '', '0', '1', '107', '1', '1540530640', '1540530640');
INSERT INTO `zyz_article` VALUES ('43', '新增数组操作', '新增数组操作', '新增数组操作', '', '0', '1', '107', '1', '1540530655', '1540530655');
INSERT INTO `zyz_article` VALUES ('44', '新增对象操作', '新增对象操作', '新增对象操作', '', '0', '1', '107', '1', '1540530672', '1540530672');
INSERT INTO `zyz_article` VALUES ('45', 'set  map数据类型', 'set  map数据类型', 'set  map数据类型', '', '0', '1', '107', '1', '1540530750', '1540530750');
INSERT INTO `zyz_article` VALUES ('46', 'promise 的原理和应用', 'promise 的原理和应用', 'promise 的原理和应用', '', '0', '1', '107', '1', '1540530762', '1540530762');
INSERT INTO `zyz_article` VALUES ('47', 'class 语法', 'class 语法', 'class 语法', '', '0', '1', '107', '1', '1540530774', '1540530774');
INSERT INTO `zyz_article` VALUES ('48', 'ES6  Module', 'ES6  Module', 'ES6  Module', '', '0', '1', '107', '1', '1540530786', '1540530786');
INSERT INTO `zyz_article` VALUES ('49', 'nodeJS介绍及使用', 'nodeJS介绍及使用', 'nodeJS介绍及使用', '', '0', '1', '108', '1', '1540530805', '1540530805');
INSERT INTO `zyz_article` VALUES ('50', '环境搭建', '环境搭建', '环境搭建', '', '0', '1', '108', '1', '1540530819', '1540530819');
INSERT INTO `zyz_article` VALUES ('51', 'NPM 包管理器', 'NPM 包管理器', 'NPM 包管理器', '', '0', '1', '108', '1', '1540530831', '1540530831');
INSERT INTO `zyz_article` VALUES ('52', 'CommonJS规范、模块化思想及操作', 'CommonJS规范、模块化思想及操作', 'CommonJS规范、模块化思想及操作', '', '0', '1', '108', '1', '1540530846', '1540530846');
INSERT INTO `zyz_article` VALUES ('53', '文件模块', '文件模块', '文件模块', '', '0', '1', '108', '1', '1540530859', '1540530859');
INSERT INTO `zyz_article` VALUES ('54', 'http、URL、querystring', 'http、URL、querystring', 'http、URL、querystring', '', '0', '1', '108', '1', '1540530871', '1540530871');
INSERT INTO `zyz_article` VALUES ('55', 'path等模块', 'path等模块', 'path等模块', '', '0', '1', '108', '1', '1540530882', '1540530882');
INSERT INTO `zyz_article` VALUES ('56', 'HTTP模块、WEB开发框架介绍', 'HTTP模块、WEB开发框架介绍', 'HTTP模块、WEB开发框架介绍', '', '0', '1', '108', '1', '1540530894', '1540530894');
INSERT INTO `zyz_article` VALUES ('57', 'noSQL基础概念', 'noSQL基础概念', 'noSQL基础概念', '', '0', '1', '108', '1', '1540530907', '1540530907');
INSERT INTO `zyz_article` VALUES ('58', 'MongoDB简介、安装数据库、集合、文档概念', 'MongoDB简介、安装数据库、集合、文档概念', 'MongoDB简介、安装数据库、集合、文档概念', '', '0', '1', '108', '1', '1540530921', '1540530921');
INSERT INTO `zyz_article` VALUES ('59', '文档CURD操作', '文档CURD操作', '文档CURD操作', '', '0', '1', '108', '1', '1540530933', '1540530933');
INSERT INTO `zyz_article` VALUES ('60', 'nodeJS操作MongoDB', 'nodeJS操作MongoDB', 'nodeJS操作MongoDB', '', '0', '1', '108', '1', '1540530944', '1540530944');
INSERT INTO `zyz_article` VALUES ('61', 'Express 的安装、使用', 'Express 的安装、使用', 'Express 的安装、使用', '', '0', '1', '108', '1', '1540530957', '1540530996');
INSERT INTO `zyz_article` VALUES ('62', '使用模板引擎', '使用模板引擎', '使用模板引擎', '', '0', '1', '108', '1', '1540530969', '1540530969');
INSERT INTO `zyz_article` VALUES ('63', 'Express中间件', 'Express中间件', 'Express中间件', '', '0', '1', '108', '1', '1540530983', '1540530983');
INSERT INTO `zyz_article` VALUES ('64', 'Express路由', 'Express路由', 'Express路由', '', '0', '1', '108', '1', '1540531012', '1540531012');
INSERT INTO `zyz_article` VALUES ('65', 'Bootstrap的介绍和使用', 'Bootstrap的介绍和使用', 'Bootstrap的介绍和使用', '', '0', '1', '108', '1', '1540531025', '1540531025');
INSERT INTO `zyz_article` VALUES ('66', 'Express + MongoDB + BootStrap 搭建博客系统实战', 'Express + MongoDB + BootStrap 搭建博客系统实战', 'Express + MongoDB + BootStrap 搭建博客系统实战', '', '0', '1', '108', '1', '1540531041', '1540531041');
INSERT INTO `zyz_article` VALUES ('67', '多媒体API', '多媒体API', '多媒体API', '', '0', '1', '109', '1', '1540531108', '1540531108');
INSERT INTO `zyz_article` VALUES ('68', '地理定位（Geolocation）', '地理定位（Geolocation）', '地理定位（Geolocation）', '', '0', '1', '109', '1', '1540531120', '1540531120');
INSERT INTO `zyz_article` VALUES ('69', '拖拽API', '拖拽API', '拖拽API', '', '0', '1', '109', '1', '1540531130', '1540531130');
INSERT INTO `zyz_article` VALUES ('70', '文件API（FileReader）', '文件API（FileReader）', '文件API（FileReader）', '', '0', '1', '109', '1', '1540531144', '1540531144');
INSERT INTO `zyz_article` VALUES ('71', 'xhr2 / FormData', 'xhr2 / FormData', 'xhr2 / FormData', '', '0', '1', '109', '1', '1540531157', '1540531157');
INSERT INTO `zyz_article` VALUES ('72', 'localStorage / sessionStorage 本地存储', 'localStorage / sessionStorage 本地存储', 'localStorage / sessionStorage 本地存储', '', '0', '1', '109', '1', '1540531169', '1540531169');
INSERT INTO `zyz_article` VALUES ('73', 'ApplicationCache 应用程序缓存', 'ApplicationCache 应用程序缓存', 'ApplicationCache 应用程序缓存', '', '0', '1', '109', '1', '1540531181', '1540531181');
INSERT INTO `zyz_article` VALUES ('74', 'WebWorks 多线程', 'WebWorks 多线程', 'WebWorks 多线程', '', '0', '1', '109', '1', '1540531193', '1540531193');
INSERT INTO `zyz_article` VALUES ('75', 'Websocket', 'Websocket', 'Websocket', '', '0', '1', '109', '1', '1540531207', '1540531207');
INSERT INTO `zyz_article` VALUES ('76', 'userMediaAPI调用摄像头、麦克风', 'userMediaAPI调用摄像头、麦克风', 'userMediaAPI调用摄像头、麦克风', '', '0', '1', '109', '1', '1540531218', '1540531218');
INSERT INTO `zyz_article` VALUES ('77', 'SVG矢量图', 'SVG矢量图', 'SVG矢量图', '', '0', '1', '109', '1', '1540531231', '1540531231');
INSERT INTO `zyz_article` VALUES ('78', 'Canvas绘图', 'Canvas绘图', ' Canvas绘图\r\n\r\n', '', '0', '1', '109', '1', '1540531246', '1540531246');
INSERT INTO `zyz_article` VALUES ('79', 'Vue实例', 'Vue实例', 'Vue实例', '', '0', '1', '110', '1', '1540531269', '1540531269');
INSERT INTO `zyz_article` VALUES ('80', 'Vue生命周期', 'Vue生命周期', 'Vue生命周期', '', '0', '1', '110', '1', '1540531288', '1540531288');
INSERT INTO `zyz_article` VALUES ('81', '模板语法', '模板语法', '模板语法', '', '0', '1', '110', '1', '1540531307', '1540531307');
INSERT INTO `zyz_article` VALUES ('82', '计算属性computed', '计算属性computed', '计算属性computed', '', '0', '1', '110', '1', '1540531332', '1540531332');
INSERT INTO `zyz_article` VALUES ('83', '条件和列表渲染', '条件和列表渲染', '条件和列表渲染', '', '0', '1', '110', '1', '1540531346', '1540531346');
INSERT INTO `zyz_article` VALUES ('84', '事件处理器', '事件处理器', '事件处理器', '', '0', '1', '110', '1', '1540531358', '1540531358');
INSERT INTO `zyz_article` VALUES ('85', '组件定义和使用、组件间的通信', '组件定义和使用、组件间的通信', '组件定义和使用、组件间的通信', '', '0', '1', '110', '1', '1540531370', '1540531370');
INSERT INTO `zyz_article` VALUES ('86', '自定义指令、单文件组件', '自定义指令、单文件组件', '自定义指令、单文件组件', '', '0', '1', '110', '1', '1540531383', '1540531383');
INSERT INTO `zyz_article` VALUES ('87', '脚手架 vue-cli', '脚手架 vue-cli', '脚手架 vue-cli', '', '0', '1', '110', '1', '1540531395', '1540531395');
INSERT INTO `zyz_article` VALUES ('88', '路由 vue-router', '路由 vue-router', '路由 vue-router', '', '0', '1', '110', '1', '1540531406', '1540531406');
INSERT INTO `zyz_article` VALUES ('89', 'vueX状态管理', 'vueX状态管理', 'vueX状态管理', '', '0', '1', '110', '1', '1540531419', '1540531419');
INSERT INTO `zyz_article` VALUES ('90', '数据请求axios', '数据请求axios', '数据请求axios', '', '0', '1', '110', '1', '1540531433', '1540531433');
INSERT INTO `zyz_article` VALUES ('91', 'Vue todoList 实战', 'Vue todoList 实战', 'Vue todoList 实战', '', '0', '1', '110', '1', '1540531446', '1540531446');
INSERT INTO `zyz_article` VALUES ('92', 'TypeScrip', 'TypeScrip', 'TypeScrip', '', '0', '1', '111', '1', '1540531464', '1540531464');
INSERT INTO `zyz_article` VALUES ('93', 'angular-cli 构建工具', 'angular-cli 构建工具', 'angular-cli 构建工具', '', '0', '1', '111', '1', '1540531489', '1540531489');
INSERT INTO `zyz_article` VALUES ('94', '属性型指令（attribute directive）', '属性型指令（attribute directive）', '属性型指令（attribute directive）', '', '0', '1', '111', '1', '1540531507', '1540531507');
INSERT INTO `zyz_article` VALUES ('95', '封装桶（barrel）', '封装桶（barrel）', '封装桶（barrel）', '', '0', '1', '111', '1', '1540531522', '1540531522');
INSERT INTO `zyz_article` VALUES ('96', '装饰器（decorator）', '装饰器（decorator）', '装饰器（decorator）', '', '0', '1', '111', '1', '1540531534', '1540531534');
INSERT INTO `zyz_article` VALUES ('97', '注入器（injector）', '注入器（injector）', '注入器（injector）', '', '0', '1', '111', '1', '1540531545', '1540531545');
INSERT INTO `zyz_article` VALUES ('98', '插值表达式（interpolation）', '插值表达式（interpolation）', '插值表达式（interpolation）', '', '0', '1', '111', '1', '1540531558', '1540531558');
INSERT INTO `zyz_article` VALUES ('99', '即时编译（JiT）', '即时编译（JiT）', '即时编译（JiT）', '', '0', '1', '111', '1', '1540531570', '1540531570');
INSERT INTO `zyz_article` VALUES ('100', '生命周期钩子（lifecycle hook）', '生命周期钩子（lifecycle hook）', '生命周期钩子（lifecycle hook）', '', '0', '1', '111', '1', '1540531581', '1540531581');
INSERT INTO `zyz_article` VALUES ('101', '可观察对象（observable）', '可观察对象（observable）', '可观察对象（observable）', '', '0', '1', '111', '1', '1540531592', '1540531592');
INSERT INTO `zyz_article` VALUES ('102', '管道（pipe）', '管道（pipe）', '管道（pipe）', '', '0', '1', '111', '1', '1540531604', '1540531604');
INSERT INTO `zyz_article` VALUES ('103', '提供商（provider）', '提供商（provider）', '提供商（provider）', '', '0', '1', '111', '1', '1540531614', '1540531614');
INSERT INTO `zyz_article` VALUES ('104', '路由器（router）', '路由器（router）', '路由器（router）', '', '0', '1', '111', '1', '1540531625', '1540531625');
INSERT INTO `zyz_article` VALUES ('105', '路由器模块（router module）、路由组', '路由器模块（router module）、路由组', '路由器模块（router module）、路由组', '', '0', '1', '111', '1', '1540531637', '1540531637');
INSERT INTO `zyz_article` VALUES ('106', 'angular todoList 实战', 'angular todoList 实战', 'angular todoList 实战', '', '0', '1', '111', '1', '1540531647', '1540531647');
INSERT INTO `zyz_article` VALUES ('107', 'react介绍', 'react介绍', 'react介绍', '', '0', '1', '112', '1', '1540531659', '1540531659');
INSERT INTO `zyz_article` VALUES ('108', '虚拟Virtual-DOM', '虚拟Virtual-DOM', '虚拟Virtual-DOM', '', '0', '1', '112', '1', '1540531671', '1540531671');
INSERT INTO `zyz_article` VALUES ('109', '单向数据流', '单向数据流', '单向数据流', '', '0', '1', '112', '1', '1540531681', '1540531681');
INSERT INTO `zyz_article` VALUES ('110', 'JSX', 'JSX', 'JSX', '', '0', '1', '112', '1', '1540531693', '1540531693');
INSERT INTO `zyz_article` VALUES ('111', '结构渲染 render', '结构渲染 render', '结构渲染 render', '', '0', '1', '112', '1', '1540531704', '1540531704');
INSERT INTO `zyz_article` VALUES ('112', '组件通信', '组件通信', '组件通信', '', '0', '1', '112', '1', '1540531718', '1540531718');
INSERT INTO `zyz_article` VALUES ('113', '组件嵌套', '组件嵌套', '组件嵌套', '', '0', '1', '112', '1', '1540531729', '1540531729');
INSERT INTO `zyz_article` VALUES ('114', '数组储存结构', '数组储存结构', '数组储存结构', '', '0', '1', '112', '1', '1540531760', '1540531760');
INSERT INTO `zyz_article` VALUES ('115', '事件规则', '事件规则', '事件规则', '', '0', '1', '112', '1', '1540531770', '1540531770');
INSERT INTO `zyz_article` VALUES ('116', 'ref', 'ref', 'ref', '', '0', '1', '112', '1', '1540531782', '1540531782');
INSERT INTO `zyz_article` VALUES ('117', '组件状态state', '组件状态state', '组件状态state', '', '0', '1', '112', '1', '1540531793', '1540531793');
INSERT INTO `zyz_article` VALUES ('118', '更新视图 setState', '更新视图 setState', '更新视图 setState', '', '0', '1', '112', '1', '1540531805', '1540531805');
INSERT INTO `zyz_article` VALUES ('119', '生命周期 lifeCycle', '生命周期 lifeCycle', '生命周期 lifeCycle', '', '0', '1', '112', '1', '1540531816', '1540531816');
INSERT INTO `zyz_article` VALUES ('120', '路由 react-router', '路由 react-router', '路由 react-router', '', '0', '1', '112', '1', '1540531828', '1540531828');
INSERT INTO `zyz_article` VALUES ('121', 'React  todoList 实战', 'React  todoList 实战', 'React  todoList 实战', '', '0', '1', '112', '1', '1540531840', '1540531840');
INSERT INTO `zyz_article` VALUES ('122', '微信开发介绍以及公众号、小程序的注册', '微信开发介绍以及公众号、小程序的注册', '微信开发介绍以及公众号、小程序的注册', '', '0', '1', '113', '1', '1540531862', '1540531862');
INSERT INTO `zyz_article` VALUES ('123', 'JSSDK接口注入权限验证', 'JSSDK接口注入权限验证', 'JSSDK接口注入权限验证', '', '0', '1', '113', '1', '1540531874', '1540531874');
INSERT INTO `zyz_article` VALUES ('124', 'JSSDK分享接口、图像接口、音频接口，地理位置接口等接口的使用', 'JSSDK分享接口、图像接口、音频接口，地理位置接口等接口的使用', 'JSSDK分享接口、图像接口、音频接口，地理位置接口等接口的使用', '', '0', '1', '113', '1', '1540531886', '1540531886');
INSERT INTO `zyz_article` VALUES ('125', '小程序目录结构讲解', '小程序目录结构讲解', '小程序目录结构讲解', '', '0', '1', '113', '1', '1540531896', '1540531896');
INSERT INTO `zyz_article` VALUES ('126', '小程序配置讲解', '小程序配置讲解', '小程序配置讲解', '', '0', '1', '113', '1', '1540531909', '1540531909');
INSERT INTO `zyz_article` VALUES ('127', '小程序逻辑层讲解、注册', '小程序逻辑层讲解、注册', '小程序逻辑层讲解、注册', '', '0', '1', '113', '1', '1540531919', '1540531919');
INSERT INTO `zyz_article` VALUES ('128', '程序、注册页面、路由', '程序、注册页面、路由', '程序、注册页面、路由', '', '0', '1', '113', '1', '1540531930', '1540531930');
INSERT INTO `zyz_article` VALUES ('129', '小程序视图层：数据绑定、列表渲染、条件渲染、事件、模板', '小程序视图层：数据绑定、列表渲染、条件渲染、事件、模板', '小程序视图层：数据绑定、列表渲染、条件渲染、事件、模板', '', '0', '1', '113', '1', '1540531943', '1540531943');
INSERT INTO `zyz_article` VALUES ('130', '小程序组件讲解', '小程序组件讲解', '小程序组件讲解', '', '0', '1', '113', '1', '1540531954', '1540531954');
INSERT INTO `zyz_article` VALUES ('131', '自定义小程序组件', '自定义小程序组件', '自定义小程序组件', '', '0', '1', '113', '1', '1540531964', '1540531964');
INSERT INTO `zyz_article` VALUES ('132', '小程序网络请求API', '小程序网络请求API', '小程序网络请求API', '', '0', '1', '113', '1', '1540531976', '1540531976');
INSERT INTO `zyz_article` VALUES ('133', '设备API、文件API、多媒体API等各种API的应用', '设备API、文件API、多媒体API等各种API的应用', '设备API、文件API、多媒体API等各种API的应用', '', '0', '1', '113', '1', '1540531988', '1540531988');
INSERT INTO `zyz_article` VALUES ('134', '最新PHP7.0或MySQL5.5环境介绍', '最新PHP7.0或MySQL5.5环境介绍', '最新PHP7.0或MySQL5.5环境介绍', '', '0', '1', '30', '1', '1540534190', '1540534190');
INSERT INTO `zyz_article` VALUES ('135', '开发环境WAMP或Zend Server的安装', '开发环境WAMP或Zend Server的安装', '开发环境WAMP或Zend Server的安装', '', '0', '1', '30', '1', '1540534225', '1540534225');
INSERT INTO `zyz_article` VALUES ('137', 'Apache服务的运行原理', 'Apache服务的运行原理', 'Apache服务的运行原理', '', '0', '1', '30', '1', '1540534256', '1540534256');
INSERT INTO `zyz_article` VALUES ('138', 'MySQL服务的运行原理', 'MySQL服务的运行原理', 'MySQL服务的运行原理', '', '0', '1', '30', '1', '1540534287', '1540534287');
INSERT INTO `zyz_article` VALUES ('139', '开发环境目录结构介绍', '开发环境目录结构介绍', '开发环境目录结构介绍', '', '0', '1', '30', '1', '1540534302', '1540534302');
INSERT INTO `zyz_article` VALUES ('140', '各种服务配置文件说明', '各种服务配置文件说明', '各种服务配置文件说明', '', '0', '1', '30', '1', '1540534314', '1540534314');
INSERT INTO `zyz_article` VALUES ('141', 'Apache和MySQL服务的开启和关闭', 'Apache和MySQL服务的开启和关闭', 'Apache和MySQL服务的开启和关闭', '', '0', '1', '30', '1', '1540534327', '1540534327');
INSERT INTO `zyz_article` VALUES ('142', 'PHP引擎常用配置介绍', 'PHP引擎常用配置介绍', 'PHP引擎常用配置介绍', '', '0', '1', '30', '1', '1540534339', '1540534339');
INSERT INTO `zyz_article` VALUES ('143', 'PHP在Web开发中的应用', 'PHP在Web开发中的应用', 'PHP在Web开发中的应用', '', '0', '1', '31', '1', '1540534379', '1540534379');
INSERT INTO `zyz_article` VALUES ('144', 'PHP的运行环境介绍', 'PHP的运行环境介绍', 'PHP的运行环境介绍', '', '0', '1', '31', '1', '1540534404', '1540534404');
INSERT INTO `zyz_article` VALUES ('145', 'PHP语言标记使用', 'PHP语言标记使用', 'PHP语言标记使用', '', '0', '1', '31', '1', '1540534415', '1540534415');
INSERT INTO `zyz_article` VALUES ('146', '指令分隔符“分号”', '指令分隔符“分号”', '指令分隔符“分号”', '', '0', '1', '31', '1', '1540534428', '1540534428');
INSERT INTO `zyz_article` VALUES ('147', 'PHP程序中的注释', 'PHP程序中的注释', 'PHP程序中的注释', '', '0', '1', '31', '1', '1540534472', '1540534472');
INSERT INTO `zyz_article` VALUES ('148', '在程序中使用空白的处理', '在程序中使用空白的处理', '在程序中使用空白的处理', '', '0', '1', '31', '1', '1540534483', '1540534483');
INSERT INTO `zyz_article` VALUES ('149', 'PHP代码编写规范', 'PHP代码编写规范', 'PHP代码编写规范', '', '0', '1', '31', '1', '1540534496', '1540534496');
INSERT INTO `zyz_article` VALUES ('151', 'PHP中变量的声明、赋值和使用', 'PHP中变量的声明、赋值和使用', 'PHP中变量的声明、赋值和使用', '', '0', '1', '32', '1', '1540534610', '1540534610');
INSERT INTO `zyz_article` VALUES ('152', 'PHP变量的命名规范', 'PHP变量的命名规范', 'PHP变量的命名规范', '<p><br></p><p><br></p>', '0', '1', '32', '1', '1540534807', '1540534807');
INSERT INTO `zyz_article` VALUES ('153', 'PHP的可变变量', 'PHP的可变变量', 'PHP的可变变量', '', '0', '1', '32', '1', '1540534821', '1540534821');
INSERT INTO `zyz_article` VALUES ('154', '变量的引用赋值', '变量的引用赋值', '变量的引用赋值', '', '0', '1', '32', '1', '1540534831', '1540534831');
INSERT INTO `zyz_article` VALUES ('155', 'PHP的数据类型介绍', 'PHP的数据类型介绍', 'PHP的数据类型介绍', '', '0', '1', '33', '1', '1540534845', '1540534845');
INSERT INTO `zyz_article` VALUES ('156', '布尔值（boolean）', '布尔值（boolean）', '布尔值（boolean）', '', '0', '1', '33', '1', '1540534858', '1540534858');
INSERT INTO `zyz_article` VALUES ('157', '整型（integer）', '整型（integer）', '整型（integer）', '', '0', '1', '33', '1', '1540534980', '1540534980');
INSERT INTO `zyz_article` VALUES ('158', '浮点型（float或double）', '浮点型（float或double）', '浮点型（float或double）', '', '0', '1', '33', '1', '1540534996', '1540534996');
INSERT INTO `zyz_article` VALUES ('159', '字符串（string）', '字符串（string）', '字符串（string）', '', '0', '1', '33', '1', '1540535006', '1540535006');
INSERT INTO `zyz_article` VALUES ('160', '数组（array）', '数组（array）', '数组（array）', '', '0', '1', '33', '1', '1540535021', '1540535021');
INSERT INTO `zyz_article` VALUES ('161', '对象（object）', '对象（object）', '对象（object）', '', '0', '1', '33', '1', '1540535036', '1540535036');
INSERT INTO `zyz_article` VALUES ('162', '资源类型（resource）', '资源类型（resource）', '资源类型（resource）', '', '0', '1', '33', '1', '1540535046', '1540535046');
INSERT INTO `zyz_article` VALUES ('163', 'NULL类型', 'NULL类型', 'NULL类型', '', '0', '1', '33', '1', '1540535058', '1540535058');
INSERT INTO `zyz_article` VALUES ('164', '伪类型介绍', '伪类型介绍', '伪类型介绍', '', '0', '1', '33', '1', '1540535068', '1540535068');
INSERT INTO `zyz_article` VALUES ('165', '数据类型之间相互转换', '数据类型之间相互转换', '数据类型之间相互转换', '', '0', '1', '33', '1', '1540535079', '1540535079');
INSERT INTO `zyz_article` VALUES ('166', '常量的定义和使用', '常量的定义和使用', '常量的定义和使用', '', '0', '1', '34', '1', '1540535092', '1540535092');
INSERT INTO `zyz_article` VALUES ('167', '常量和变量', '常量和变量', '常量和变量', '', '0', '1', '34', '1', '1540535103', '1540535103');
INSERT INTO `zyz_article` VALUES ('168', '预定义常量', '预定义常量', '预定义常量', '', '0', '1', '34', '1', '1540535113', '1540535113');
INSERT INTO `zyz_article` VALUES ('169', '算术运算符', '算术运算符', '算术运算符', '', '0', '1', '35', '1', '1540535160', '1540535160');
INSERT INTO `zyz_article` VALUES ('170', '字符串运算符', '字符串运算符', '字符串运算符', '', '0', '1', '35', '1', '1540535172', '1540535172');
INSERT INTO `zyz_article` VALUES ('171', '赋值运算符', '赋值运算符', '赋值运算符', '', '0', '1', '35', '1', '1540535182', '1540535182');
INSERT INTO `zyz_article` VALUES ('172', '比较运算符', '比较运算符', '比较运算符', '', '0', '1', '35', '1', '1540535191', '1540535191');
INSERT INTO `zyz_article` VALUES ('173', '逻辑运算符', '逻辑运算符', '逻辑运算符', '', '0', '1', '35', '1', '1540535202', '1540535202');
INSERT INTO `zyz_article` VALUES ('174', '位运算符', '位运算符', '位运算符', '', '0', '1', '35', '1', '1540535211', '1540535211');
INSERT INTO `zyz_article` VALUES ('175', '其它运算符', '其它运算符', '其它运算符', '', '0', '1', '35', '1', '1540535240', '1540535240');
INSERT INTO `zyz_article` VALUES ('176', '运算符的优先级', '运算符的优先级', '运算符的优先级', '', '0', '1', '35', '1', '1540535254', '1540535254');
INSERT INTO `zyz_article` VALUES ('177', '表达式', '表达式', '表达式', '', '0', '1', '35', '1', '1540535266', '1540535266');
INSERT INTO `zyz_article` VALUES ('178', '流程控制概述', '流程控制概述', '流程控制概述', '', '0', '1', '36', '1', '1540535357', '1540535357');
INSERT INTO `zyz_article` VALUES ('179', '单一条件分支结构（if）', '单一条件分支结构（if）', '单一条件分支结构（if）', '', '0', '1', '37', '1', '1540535371', '1540535371');
INSERT INTO `zyz_article` VALUES ('180', '双向条件分支结构（else子句）', '双向条件分支结构（else子句）', '双向条件分支结构（else子句）', '', '0', '1', '37', '1', '1540535382', '1540535382');
INSERT INTO `zyz_article` VALUES ('181', '多向条件分支结构（elseif子句）', '多向条件分支结构（elseif子句）', '多向条件分支结构（elseif子句）', '', '0', '1', '37', '1', '1540535395', '1540535395');
INSERT INTO `zyz_article` VALUES ('182', '多项条件分支结构（switch语句） 巢状条件分支结构', '多项条件分支结构（switch语句） 巢状条件分支结构', '多项条件分支结构（switch语句） 巢状条件分支结构', '', '0', '1', '37', '1', '1540535406', '1540535406');
INSERT INTO `zyz_article` VALUES ('183', 'while语句', 'while语句', 'while语句', '', '0', '1', '38', '1', '1540535419', '1540535419');
INSERT INTO `zyz_article` VALUES ('184', 'do...while循环', 'do...while循环', 'do...while循环', '', '0', '1', '38', '1', '1540535429', '1540535429');
INSERT INTO `zyz_article` VALUES ('185', 'for语句', 'for语句', 'for语句', '', '0', '1', '38', '1', '1540535439', '1540535439');
INSERT INTO `zyz_article` VALUES ('186', '特殊的流程控制语句', '特殊的流程控制语句', '特殊的流程控制语句', '', '0', '1', '38', '1', '1540535451', '1540535451');
INSERT INTO `zyz_article` VALUES ('187', '函数的定义', '函数的定义', '函数的定义', '', '0', '1', '39', '1', '1540535495', '1540535495');
INSERT INTO `zyz_article` VALUES ('188', '自定义函数', '自定义函数', '自定义函数', '', '0', '1', '39', '1', '1540535506', '1540535506');
INSERT INTO `zyz_article` VALUES ('189', '函数的工作原理和结构化编程', '函数的工作原理和结构化编程', '函数的工作原理和结构化编程', '', '0', '1', '39', '1', '1540535515', '1540535515');
INSERT INTO `zyz_article` VALUES ('190', 'PHP变量的范围', 'PHP变量的范围', 'PHP变量的范围', '', '0', '1', '39', '1', '1540535524', '1540535524');
INSERT INTO `zyz_article` VALUES ('191', '函数中参数的传递方式', '函数中参数的传递方式', '函数中参数的传递方式', '', '0', '1', '39', '1', '1540535533', '1540535533');
INSERT INTO `zyz_article` VALUES ('192', '函数值传递和引用传递的区别', '函数值传递和引用传递的区别', '函数值传递和引用传递的区别', '', '0', '1', '39', '1', '1540535547', '1540535547');
INSERT INTO `zyz_article` VALUES ('193', 'PHP中的变量函数', 'PHP中的变量函数', 'PHP中的变量函数', '', '0', '1', '39', '1', '1540535556', '1540535556');
INSERT INTO `zyz_article` VALUES ('194', '递归函数定义和使用', '递归函数定义和使用', '递归函数定义和使用', '', '0', '1', '39', '1', '1540535567', '1540535567');
INSERT INTO `zyz_article` VALUES ('195', '使用自定义函数库', '使用自定义函数库', '使用自定义函数库', '', '0', '1', '39', '1', '1540535576', '1540535576');
INSERT INTO `zyz_article` VALUES ('196', '使用系统函数库', '使用系统函数库', '使用系统函数库', '', '0', '1', '39', '1', '1540535586', '1540535586');
INSERT INTO `zyz_article` VALUES ('197', 'require()和require_once()', 'require()和require_once()', 'require()和require_once()', '', '0', '1', '39', '1', '1540535597', '1540535597');
INSERT INTO `zyz_article` VALUES ('198', 'include()和include_once()', 'include()和include_once()', 'include()和include_once()', '', '0', '1', '39', '1', '1540535607', '1540535607');
INSERT INTO `zyz_article` VALUES ('199', '数组的分类：索引式和关联式数组', '数组的分类：索引式和关联式数组', '数组的分类：索引式和关联式数组', '', '0', '1', '40', '1', '1540535631', '1540535631');
INSERT INTO `zyz_article` VALUES ('200', '直接赋值的方式声明数组', '直接赋值的方式声明数组', '直接赋值的方式声明数组', '', '0', '1', '40', '1', '1540535642', '1540535642');
INSERT INTO `zyz_article` VALUES ('201', '使用array()语言结构新建数组', '使用array()语言结构新建数组', '使用array()语言结构新建数组', '', '0', '1', '40', '1', '1540535651', '1540535651');
INSERT INTO `zyz_article` VALUES ('202', '多维数组的声明', '多维数组的声明', '多维数组的声明', '', '0', '1', '40', '1', '1540535660', '1540535660');
INSERT INTO `zyz_article` VALUES ('203', '使用for语句循环遍历数组', '使用for语句循环遍历数组', '使用for语句循环遍历数组', '', '0', '1', '41', '1', '1540536246', '1540536246');
INSERT INTO `zyz_article` VALUES ('204', '使用foreach语句遍历数组', '使用foreach语句遍历数组', '使用foreach语句遍历数组', '', '0', '1', '41', '1', '1540536255', '1540536255');
INSERT INTO `zyz_article` VALUES ('205', '联合使用list()、each()和while循环遍历数组', '联合使用list()、each()和while循环遍历数组', '联合使用list()、each()和while循环遍历数组', '', '0', '1', '41', '1', '1540536267', '1540536267');
INSERT INTO `zyz_article` VALUES ('206', '使用数组的内部指针控制函数遍历数组', '使用数组的内部指针控制函数遍历数组', '使用数组的内部指针控制函数遍历数组', '', '0', '1', '41', '1', '1540536277', '1540536277');
INSERT INTO `zyz_article` VALUES ('207', '服务器变量：$_SERVER', '服务器变量：$_SERVER', '服务器变量：$_SERVER', '', '0', '1', '42', '1', '1540536306', '1540536306');
INSERT INTO `zyz_article` VALUES ('208', '环境变量：$_ENV', '环境变量：$_ENV', '环境变量：$_ENV', '', '0', '1', '42', '1', '1540536316', '1540536316');
INSERT INTO `zyz_article` VALUES ('209', 'HTTP GET 变量：$_GET', 'HTTP GET 变量：$_GET', 'HTTP GET 变量：$_GET', '', '0', '1', '42', '1', '1540536325', '1540536325');
INSERT INTO `zyz_article` VALUES ('210', 'HTTP POST变量：$_POST', 'HTTP POST变量：$_POST', 'HTTP POST变量：$_POST', '', '0', '1', '42', '1', '1540536335', '1540536335');
INSERT INTO `zyz_article` VALUES ('211', 'request 变量：$_REQUEST', 'request 变量：$_REQUEST', 'request 变量：$_REQUEST', '', '0', '1', '42', '1', '1540536350', '1540536350');
INSERT INTO `zyz_article` VALUES ('212', 'request 变量：$_REQUEST', 'request 变量：$_REQUEST', 'request 变量：$_REQUEST', '', '0', '1', '42', '1', '1540536350', '1540536350');
INSERT INTO `zyz_article` VALUES ('213', 'HTTP文件上传变量：$_FILES', 'HTTP文件上传变量：$_FILES', 'HTTP文件上传变量：$_FILES', '', '0', '1', '42', '1', '1540536361', '1540536361');
INSERT INTO `zyz_article` VALUES ('214', 'HTTP Cookies：$_COOKIE', 'HTTP Cookies：$_COOKIE', 'HTTP Cookies：$_COOKIE', '', '0', '1', '42', '1', '1540536371', '1540536371');
INSERT INTO `zyz_article` VALUES ('215', 'Session变量：$_SESSION', 'Session变量：$_SESSION', 'Session变量：$_SESSION', '', '0', '1', '42', '1', '1540536381', '1540536381');
INSERT INTO `zyz_article` VALUES ('216', 'Global变量：$GLOBALS', 'Global变量：$GLOBALS', 'Global变量：$GLOBALS', '', '0', '1', '42', '1', '1540536390', '1540536390');
INSERT INTO `zyz_article` VALUES ('217', '数组的键/值操作函数', '数组的键/值操作函数', '数组的键/值操作函数', '', '0', '1', '43', '1', '1540536418', '1540536418');
INSERT INTO `zyz_article` VALUES ('218', '统计数组元素的个数和唯一性', '统计数组元素的个数和唯一性', '统计数组元素的个数和唯一性', '', '0', '1', '43', '1', '1540536427', '1540536427');
INSERT INTO `zyz_article` VALUES ('219', '使用回调函数处理数组的函数', '使用回调函数处理数组的函数', '使用回调函数处理数组的函数', '', '0', '1', '43', '1', '1540536437', '1540536437');
INSERT INTO `zyz_article` VALUES ('220', '数组的排序函数', '数组的排序函数', '数组的排序函数', '', '0', '1', '43', '1', '1540540418', '1540540418');
INSERT INTO `zyz_article` VALUES ('221', '拆分、合并、分解和接合数组', '拆分、合并、分解和接合数组', '拆分、合并、分解和接合数组', '', '0', '1', '43', '1', '1540540442', '1540540442');
INSERT INTO `zyz_article` VALUES ('222', '数组与数据结构', '数组与数据结构', '数组与数据结构', '', '0', '1', '43', '1', '1540540455', '1540540455');
INSERT INTO `zyz_article` VALUES ('223', '其他有用的数组处理函数', '其他有用的数组处理函数', '其他有用的数组处理函数', '', '0', '1', '43', '1', '1540540464', '1540540464');
INSERT INTO `zyz_article` VALUES ('224', '字符串定义方式', '字符串定义方式', '字符串定义方式', '', '0', '1', '44', '1', '1540551552', '1540551552');
INSERT INTO `zyz_article` VALUES ('225', '字符串的处理方式', '字符串的处理方式', '字符串的处理方式', '', '0', '1', '44', '1', '1540551566', '1540551566');
INSERT INTO `zyz_article` VALUES ('226', '字符串类型的特点', '字符串类型的特点', '字符串类型的特点', '', '0', '1', '44', '1', '1540551579', '1540551579');
INSERT INTO `zyz_article` VALUES ('227', '常用的字符串格式化函数', '常用的字符串格式化函数', '常用的字符串格式化函数', '', '0', '1', '44', '1', '1540551590', '1540551590');
INSERT INTO `zyz_article` VALUES ('228', '去除空格和字符串填补函数', '去除空格和字符串填补函数', '去除空格和字符串填补函数', '', '0', '1', '44', '1', '1540551601', '1540551601');
INSERT INTO `zyz_article` VALUES ('229', '字符串大小写的转换', '字符串大小写的转换', '字符串大小写的转换', '', '0', '1', '44', '1', '1540551611', '1540551611');
INSERT INTO `zyz_article` VALUES ('230', '和HTML标签相关的字符串格式化', '和HTML标签相关的字符串格式化', '和HTML标签相关的字符串格式化', '', '0', '1', '44', '1', '1540551631', '1540551631');
INSERT INTO `zyz_article` VALUES ('231', '其他字符串格式化函数', '其他字符串格式化函数', '其他字符串格式化函数', '', '0', '1', '44', '1', '1540551658', '1540551658');
INSERT INTO `zyz_article` VALUES ('232', '按字节顺序进行字符串比较', '按字节顺序进行字符串比较', '按字节顺序进行字符串比较', '', '0', '1', '44', '1', '1540551669', '1540551669');
INSERT INTO `zyz_article` VALUES ('233', '按自然排序进行字符串比较', '按自然排序进行字符串比较', '按自然排序进行字符串比较', '', '0', '1', '44', '1', '1540551681', '1540551681');
INSERT INTO `zyz_article` VALUES ('234', '正则表达式简介', '正则表达式简介', '正则表达式简介', '', '0', '1', '45', '1', '1540551727', '1540551727');
INSERT INTO `zyz_article` VALUES ('235', '正则表达式的语法规则', '正则表达式的语法规则', '正则表达式的语法规则', '', '0', '1', '45', '1', '1540551737', '1540551737');
INSERT INTO `zyz_article` VALUES ('236', '正则中的定界符和原子', '正则中的定界符和原子', '正则中的定界符和原子', '', '0', '1', '45', '1', '1540551749', '1540551749');
INSERT INTO `zyz_article` VALUES ('237', '正则中的元字符介绍', '正则中的元字符介绍', '正则中的元字符介绍', '', '0', '1', '45', '1', '1540551760', '1540551760');
INSERT INTO `zyz_article` VALUES ('238', '正则中的模式修正符', '正则中的模式修正符', '正则中的模式修正符', '', '0', '1', '45', '1', '1540551771', '1540551771');
INSERT INTO `zyz_article` VALUES ('239', 'PHP中正则表达式函数介绍', 'PHP中正则表达式函数介绍', 'PHP中正则表达式函数介绍', '', '0', '1', '46', '1', '1540551785', '1540551785');
INSERT INTO `zyz_article` VALUES ('240', '字符串的正则匹配与查找', '字符串的正则匹配与查找', '字符串的正则匹配与查找', '', '0', '1', '46', '1', '1540551796', '1540551796');
INSERT INTO `zyz_article` VALUES ('241', '字符串的正则替换', '字符串的正则替换', '字符串的正则替换', '', '0', '1', '46', '1', '1540551807', '1540551807');
INSERT INTO `zyz_article` VALUES ('242', '字符串的正则分割和连接', '字符串的正则分割和连接', '字符串的正则分割和连接', '', '0', '1', '46', '1', '1540551815', '1540551815');
INSERT INTO `zyz_article` VALUES ('243', 'PHP中常用正则表达式实例讲解', 'PHP中常用正则表达式实例讲解', 'PHP中常用正则表达式实例讲解', '', '0', '1', '46', '1', '1540551824', '1540551824');
INSERT INTO `zyz_article` VALUES ('244', 'PHP中常见错误分类介绍', 'PHP中常见错误分类介绍', 'PHP中常见错误分类介绍', '', '0', '1', '47', '1', '1540551841', '1540551841');
INSERT INTO `zyz_article` VALUES ('245', 'PHP中的错误报告级别', 'PHP中的错误报告级别', 'PHP中的错误报告级别', '', '0', '1', '47', '1', '1540551853', '1540551853');
INSERT INTO `zyz_article` VALUES ('246', '使用trigger_error()函数来替代die()', '使用trigger_error()函数来替代die()', '使用trigger_error()函数来替代die()', '', '0', '1', '47', '1', '1540551887', '1540551887');
INSERT INTO `zyz_article` VALUES ('247', '自定义错误处理', '自定义错误处理', '自定义错误处理', '', '0', '1', '47', '1', '1540551897', '1540551897');
INSERT INTO `zyz_article` VALUES ('248', 'PHP的错误日志记录', 'PHP的错误日志记录', 'PHP的错误日志记录', '', '0', '1', '47', '1', '1540551906', '1540551906');
INSERT INTO `zyz_article` VALUES ('249', 'UNIX时间戳', 'UNIX时间戳', 'UNIX时间戳', '', '0', '1', '47', '1', '1540551964', '1540551964');
INSERT INTO `zyz_article` VALUES ('250', '在PHP中获取日期和时间', '在PHP中获取日期和时间', '在PHP中获取日期和时间', '', '0', '1', '47', '1', '1540551974', '1540551974');
INSERT INTO `zyz_article` VALUES ('251', '日期和时间格式化输出', '日期和时间格式化输出', '日期和时间格式化输出', '', '0', '1', '47', '1', '1540551985', '1540551985');
INSERT INTO `zyz_article` VALUES ('252', '修改PHP的默认时区', '修改PHP的默认时区', '修改PHP的默认时区', '', '0', '1', '47', '1', '1540551995', '1540551995');
INSERT INTO `zyz_article` VALUES ('253', '使用微妙计算PHP脚本执行时间', '使用微妙计算PHP脚本执行时间', '使用微妙计算PHP脚本执行时间', '', '0', '1', '47', '1', '1540552004', '1540552004');
INSERT INTO `zyz_article` VALUES ('254', '万年历实例', '万年历实例', '万年历实例', '', '0', '1', '47', '1', '1540552014', '1540552014');
INSERT INTO `zyz_article` VALUES ('255', 'PHP中GD库的配置和使用', 'PHP中GD库的配置和使用', 'PHP中GD库的配置和使用', '', '0', '1', '47', '1', '1540552023', '1540552023');
INSERT INTO `zyz_article` VALUES ('256', 'PHP中GD的绘图原理介绍', 'PHP中GD的绘图原理介绍', 'PHP中GD的绘图原理介绍', '', '0', '1', '47', '1', '1540552036', '1540552036');
INSERT INTO `zyz_article` VALUES ('257', '在图像中绘制文字', '在图像中绘制文字', '在图像中绘制文字', '', '0', '1', '47', '1', '1540552047', '1540552047');
INSERT INTO `zyz_article` VALUES ('258', '使用GD库实现验证码实例', '使用GD库实现验证码实例', '使用GD库实现验证码实例', '', '0', '1', '47', '1', '1540552056', '1540552056');
INSERT INTO `zyz_article` VALUES ('259', 'GD库实现图片的裁剪、缩放实例', 'GD库实现图片的裁剪、缩放实例', 'GD库实现图片的裁剪、缩放实例', '', '0', '1', '47', '1', '1540552067', '1540552067');
INSERT INTO `zyz_article` VALUES ('260', 'JpGraph的安装和配置', 'JpGraph的安装和配置', 'JpGraph的安装和配置', '', '0', '1', '47', '1', '1540552076', '1540552076');
INSERT INTO `zyz_article` VALUES ('261', 'JpGraph实际应用-数据报表', 'JpGraph实际应用-数据报表', 'JpGraph实际应用-数据报表', '', '0', '1', '47', '1', '1540552085', '1540552085');
INSERT INTO `zyz_article` VALUES ('262', '文件类型介绍', '文件类型介绍', '文件类型介绍', '', '0', '1', '48', '1', '1540552516', '1540552516');
INSERT INTO `zyz_article` VALUES ('263', '文件的属性介绍', '文件的属性介绍', '文件的属性介绍', '', '0', '1', '48', '1', '1540552528', '1540552528');
INSERT INTO `zyz_article` VALUES ('264', '常见的文件属性函数', '常见的文件属性函数', '常见的文件属性函数', '', '0', '1', '48', '1', '1540552540', '1540552540');
INSERT INTO `zyz_article` VALUES ('265', '解析目录路径', '解析目录路径', '解析目录路径', '', '0', '1', '48', '1', '1540552551', '1540552551');
INSERT INTO `zyz_article` VALUES ('266', '遍历目录函数', '遍历目录函数', '遍历目录函数', '', '0', '1', '48', '1', '1540552563', '1540552563');
INSERT INTO `zyz_article` VALUES ('267', '递归统计目录大小实例', '递归统计目录大小实例', '递归统计目录大小实例', '', '0', '1', '48', '1', '1540552572', '1540552572');
INSERT INTO `zyz_article` VALUES ('268', '建立和删除目录', '建立和删除目录', '建立和删除目录', '', '0', '1', '48', '1', '1540552582', '1540552582');
INSERT INTO `zyz_article` VALUES ('269', '递归删除目录实例', '递归删除目录实例', '递归删除目录实例', '', '0', '1', '48', '1', '1540552592', '1540552592');
INSERT INTO `zyz_article` VALUES ('270', '递归复制或移动目录实例', '递归复制或移动目录实例', '递归复制或移动目录实例', '', '0', '1', '48', '1', '1540552602', '1540552602');
INSERT INTO `zyz_article` VALUES ('271', '文件的打开与关闭', '文件的打开与关闭', '文件的打开与关闭', '', '0', '1', '49', '1', '1540552615', '1540552615');
INSERT INTO `zyz_article` VALUES ('272', '写入文件', '写入文件', '写入文件', '', '0', '1', '49', '1', '1540552624', '1540552624');
INSERT INTO `zyz_article` VALUES ('273', '读取文件内容', '读取文件内容', '读取文件内容', '', '0', '1', '49', '1', '1540552633', '1540552633');
INSERT INTO `zyz_article` VALUES ('274', '访问远程文件', '访问远程文件', '访问远程文件', '', '0', '1', '49', '1', '1540552648', '1540552648');
INSERT INTO `zyz_article` VALUES ('275', '移动文件指针', '移动文件指针', '移动文件指针', '', '0', '1', '49', '1', '1540552658', '1540552658');
INSERT INTO `zyz_article` VALUES ('276', '文件的锁定机制', '文件的锁定机制', '文件的锁定机制', '', '0', '1', '49', '1', '1540552667', '1540552667');
INSERT INTO `zyz_article` VALUES ('277', '文件的一些基本操作函数', '文件的一些基本操作函数', '文件的一些基本操作函数', '', '0', '1', '49', '1', '1540552677', '1540552677');
INSERT INTO `zyz_article` VALUES ('278', '文件上传', '文件上传', '文件上传', '', '0', '1', '50', '1', '1540552689', '1540552689');
INSERT INTO `zyz_article` VALUES ('279', '处理多个文件上传', '处理多个文件上传', '处理多个文件上传', '', '0', '1', '50', '1', '1540552700', '1540552700');
INSERT INTO `zyz_article` VALUES ('280', '文件下载', '文件下载', '文件下载', '', '0', '1', '50', '1', '1540552709', '1540552709');
INSERT INTO `zyz_article` VALUES ('281', '在线相册或网络U盘实例', '在线相册或网络U盘实例', '在线相册或网络U盘实例', '', '0', '1', '50', '1', '1540552719', '1540552719');
INSERT INTO `zyz_article` VALUES ('282', '数据库管理系统', '数据库管理系统', '数据库管理系统', '', '0', '1', '51', '1', '1540552734', '1540552734');
INSERT INTO `zyz_article` VALUES ('283', '结构化查询语言', '结构化查询语言', '结构化查询语言', '', '0', '1', '51', '1', '1540552747', '1540552747');
INSERT INTO `zyz_article` VALUES ('284', 'MsSQL数据库的连接与关闭', 'MsSQL数据库的连接与关闭', 'MsSQL数据库的连接与关闭', '', '0', '1', '51', '1', '1540552757', '1540552757');
INSERT INTO `zyz_article` VALUES ('285', '创建、选择及查看数据库', '创建、选择及查看数据库', '创建、选择及查看数据库', '', '0', '1', '51', '1', '1540552767', '1540552767');
INSERT INTO `zyz_article` VALUES ('286', '数据表 table', '数据表 table', '数据表 table', '', '0', '1', '52', '1', '1540552779', '1540552779');
INSERT INTO `zyz_article` VALUES ('287', '数据值和列类型', '数据值和列类型', '数据值和列类型', '', '0', '1', '52', '1', '1540552788', '1540552788');
INSERT INTO `zyz_article` VALUES ('288', '数据字段属性', '数据字段属性', '数据字段属性', '', '0', '1', '52', '1', '1540552798', '1540552798');
INSERT INTO `zyz_article` VALUES ('289', '创建、修改及删除表', '创建、修改及删除表', '创建、修改及删除表', '', '0', '1', '52', '1', '1540552808', '1540552808');
INSERT INTO `zyz_article` VALUES ('290', '数据表的类型及存储位置', '数据表的类型及存储位置', '数据表的类型及存储位置', '', '0', '1', '52', '1', '1540552817', '1540552817');
INSERT INTO `zyz_article` VALUES ('291', '数据表的默认字符集', '数据表的默认字符集', '数据表的默认字符集', '', '0', '1', '52', '1', '1540552827', '1540552827');
INSERT INTO `zyz_article` VALUES ('292', '创建索引', '创建索引', '创建索引', '', '0', '1', '52', '1', '1540552835', '1540552835');
INSERT INTO `zyz_article` VALUES ('293', '执行DDL命令操作数据对象', '执行DDL命令操作数据对象', '执行DDL命令操作数据对象', '', '0', '1', '53', '1', '1540552880', '1540552880');
INSERT INTO `zyz_article` VALUES ('294', '使用DML命令操作数据表中的数据记录', '使用DML命令操作数据表中的数据记录', '使用DML命令操作数据表中的数据记录', '', '0', '1', '53', '1', '1540552892', '1540552892');
INSERT INTO `zyz_article` VALUES ('295', '通过DQL命令查询数据表中的数据', '通过DQL命令查询数据表中的数据', '通过DQL命令查询数据表中的数据', '', '0', '1', '53', '1', '1540552906', '1540552906');
INSERT INTO `zyz_article` VALUES ('296', '类和对象之间的关系', '类和对象之间的关系', '类和对象之间的关系', '', '0', '1', '54', '1', '1540552924', '1540552924');
INSERT INTO `zyz_article` VALUES ('297', '面向对象的程序设计', '面向对象的程序设计', '面向对象的程序设计', '', '0', '1', '54', '1', '1540552936', '1540552936');
INSERT INTO `zyz_article` VALUES ('298', '类的声明', '类的声明', '类的声明', '', '0', '1', '54', '1', '1540552944', '1540552944');
INSERT INTO `zyz_article` VALUES ('299', '成员属性', '成员属性', '成员属性', '', '0', '1', '54', '1', '1540552954', '1540552954');
INSERT INTO `zyz_article` VALUES ('300', '成员方法', '成员方法', '成员方法', '', '0', '1', '54', '1', '1540552963', '1540552963');
INSERT INTO `zyz_article` VALUES ('301', '创建对象', '创建对象', '创建对象', '', '0', '1', '54', '1', '1540552984', '1540552984');
INSERT INTO `zyz_article` VALUES ('302', '对象类型在内存中的分配', '对象类型在内存中的分配', '对象类型在内存中的分配', '', '0', '1', '54', '1', '1540552997', '1540552997');
INSERT INTO `zyz_article` VALUES ('303', '对象中成员的访问', '对象中成员的访问', '对象中成员的访问', '', '0', '1', '54', '1', '1540553007', '1540553007');
INSERT INTO `zyz_article` VALUES ('304', '特殊的对象引用\"$this\"', '特殊的对象引用\"$this\"', '特殊的对象引用\"$this\"', '', '0', '1', '54', '1', '1540553017', '1540553017');
INSERT INTO `zyz_article` VALUES ('305', '构造方法与析构方法', '构造方法与析构方法', '构造方法与析构方法', '', '0', '1', '54', '1', '1540553027', '1540553027');
INSERT INTO `zyz_article` VALUES ('306', '使用PDO连接Mysql数据库', '使用PDO连接Mysql数据库', '使用PDO连接Mysql数据库', '', '0', '1', '54', '1', '1540553038', '1540553038');
INSERT INTO `zyz_article` VALUES ('307', '设置私有成员', '设置私有成员', '设置私有成员', '', '0', '1', '55', '1', '1540553064', '1540553064');
INSERT INTO `zyz_article` VALUES ('308', '私有成员的访问', '私有成员的访问', '私有成员的访问', '', '0', '1', '55', '1', '1540553081', '1540553081');
INSERT INTO `zyz_article` VALUES ('309', '魔术方法：__set() 和  __get()', '魔术方法：__set() 和  __get()', '魔术方法：__set() 和  __get()', '', '0', '1', '55', '1', '1540553093', '1540553093');
INSERT INTO `zyz_article` VALUES ('310', '魔术方法：__isset() 和 __unset()', '魔术方法：__isset() 和 __unset()', '魔术方法：__isset() 和 __unset()', '', '0', '1', '55', '1', '1540553103', '1540553103');
INSERT INTO `zyz_article` VALUES ('311', '类继承的应用', '类继承的应用', '类继承的应用', '', '0', '1', '56', '1', '1540553115', '1540553115');
INSERT INTO `zyz_article` VALUES ('312', '访问类型控制', '访问类型控制', '访问类型控制', '', '0', '1', '56', '1', '1540553125', '1540553125');
INSERT INTO `zyz_article` VALUES ('313', '子类中重载父类的方法', '子类中重载父类的方法', '子类中重载父类的方法', '', '0', '1', '56', '1', '1540553134', '1540553134');
INSERT INTO `zyz_article` VALUES ('315', 'final 关键字的应用', 'final 关键字的应用', 'final 关键字的应用', '', '0', '1', '57', '1', '1540553172', '1540553172');
INSERT INTO `zyz_article` VALUES ('316', 'static 和 const关键字的使用', 'static 和 const关键字的使用', 'static 和 const关键字的使用', '', '0', '1', '57', '1', '1540553190', '1540553190');
INSERT INTO `zyz_article` VALUES ('317', '克隆对象', '克隆对象', '克隆对象', '', '0', '1', '57', '1', '1540553200', '1540553200');
INSERT INTO `zyz_article` VALUES ('318', '类中通用的方法__toString()', '类中通用的方法__toString()', '类中通用的方法__toString()', '', '0', '1', '57', '1', '1540553211', '1540553211');
INSERT INTO `zyz_article` VALUES ('319', '通过__call()方法处理错误调用', '通过__call()方法处理错误调用', '通过__call()方法处理错误调用', '', '0', '1', '57', '1', '1540553220', '1540553220');
INSERT INTO `zyz_article` VALUES ('320', '自动加载类', '自动加载类', '自动加载类', '', '0', '1', '57', '1', '1540553229', '1540553229');
INSERT INTO `zyz_article` VALUES ('321', '对象串行化', '对象串行化', '对象串行化', '', '0', '1', '57', '1', '1540553237', '1540553237');
INSERT INTO `zyz_article` VALUES ('322', '与类有关的系统函数', '与类有关的系统函数', '与类有关的系统函数', '', '0', '1', '58', '1', '1540553252', '1540553252');
INSERT INTO `zyz_article` VALUES ('323', '与对象有关的系统函数', '与对象有关的系统函数', '与对象有关的系统函数', '', '0', '1', '58', '1', '1540553262', '1540553262');
INSERT INTO `zyz_article` VALUES ('324', '异常处理原理', '异常处理原理', '异常处理原理', '', '0', '1', '58', '1', '1540554777', '1540554777');
INSERT INTO `zyz_article` VALUES ('325', '如何抛出一个异常 throw', '如何抛出一个异常 throw', '如何抛出一个异常 throw', '', '0', '1', '58', '1', '1540554789', '1540554789');
INSERT INTO `zyz_article` VALUES ('326', '如何做异常处理 try...catch', '如何做异常处理 try...catch', '如何做异常处理 try...catch', '', '0', '1', '58', '1', '1540554800', '1540554800');
INSERT INTO `zyz_article` VALUES ('327', '如何自定义异常处理类', '如何自定义异常处理类', '如何自定义异常处理类', '', '0', '1', '58', '1', '1540554821', '1540554821');
INSERT INTO `zyz_article` VALUES ('328', '多重异常处理', '多重异常处理', '多重异常处理', '', '0', '1', '58', '1', '1540554832', '1540554832');
INSERT INTO `zyz_article` VALUES ('331', '了解PDOStatement对象', '了解PDOStatement对象', '了解PDOStatement对象', '', '0', '1', '59', '1', '1540555047', '1540555047');
INSERT INTO `zyz_article` VALUES ('332', '准备语句', '准备语句', '准备语句', '', '0', '1', '59', '1', '1540555058', '1540555058');
INSERT INTO `zyz_article` VALUES ('333', '绑定参数', '绑定参数', '绑定参数', '', '0', '1', '59', '1', '1540555069', '1540555069');
INSERT INTO `zyz_article` VALUES ('334', '执行准备好的查询', '执行准备好的查询', '执行准备好的查询', '', '0', '1', '59', '1', '1540555080', '1540555080');
INSERT INTO `zyz_article` VALUES ('335', '获取数据', '获取数据', '获取数据', '', '0', '1', '59', '1', '1540555090', '1540555090');
INSERT INTO `zyz_article` VALUES ('336', 'PDO的事务处理方式', 'PDO的事务处理方式', 'PDO的事务处理方式', '', '0', '1', '59', '1', '1540555098', '1540555098');
INSERT INTO `zyz_article` VALUES ('337', '分页类', '分页类', '分页类', '', '0', '1', '60', '1', '1540555109', '1540555109');
INSERT INTO `zyz_article` VALUES ('338', '验证码类', '验证码类', '验证码类', '', '0', '1', '60', '1', '1540555117', '1540555117');
INSERT INTO `zyz_article` VALUES ('339', '图像处理类', '图像处理类', '图像处理类', '', '0', '1', '60', '1', '1540555126', '1540555126');
INSERT INTO `zyz_article` VALUES ('340', '文件上传类', '文件上传类', '文件上传类', '', '0', '1', '60', '1', '1540555136', '1540555136');
INSERT INTO `zyz_article` VALUES ('341', '数据验证类', '数据验证类', '数据验证类', '', '0', '1', '60', '1', '1540555144', '1540555144');

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
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of zyz_category
-- ----------------------------
INSERT INTO `zyz_category` VALUES ('1', '前端课程', '前端课程', '前端课程', '<p>前端课程</p><p><br></p>', '0', '1', '0', '1540272933', '1540272933');
INSERT INTO `zyz_category` VALUES ('2', 'PHP课程', 'PHP课程', 'PHP课程', '<p>PHP课程</p><p><br></p>', '1', '1', '0', '1540272962', '1540272962');
INSERT INTO `zyz_category` VALUES ('3', 'Python课程', 'Python课程', 'Python课程', '<p>Python课程</p><p><br></p>', '2', '1', '0', '1540272984', '1540272984');
INSERT INTO `zyz_category` VALUES ('4', '编程笔记', '编程笔记', '编程笔记', '<p>编程笔记</p><p><br></p>', '4', '1', '0', '1540273010', '1540273010');
INSERT INTO `zyz_category` VALUES ('5', '数学笔记', '数学笔记', '数学笔记', '<p>数学笔记</p><p><br></p>', '5', '1', '0', '1540273033', '1540273033');
INSERT INTO `zyz_category` VALUES ('6', '万花筒', '万花筒', '万花筒', '<p>万花筒</p><p><br></p>', '6', '1', '0', '1540273050', '1540273050');
INSERT INTO `zyz_category` VALUES ('7', 'H5全栈工程师', 'H5全栈工程师', 'H5全栈工程师', '<p><br></p><p><br></p>', '1', '1', '1', '1540273120', '1540524741');
INSERT INTO `zyz_category` VALUES ('8', '针对后台开发人员的前端课程', '针对后台开发人员的前端课程', '针对后台开发人员的前端课程', '<p>针对后台开发人员的前端课程</p><p><br></p>', '2', '1', '1', '1540273139', '1540524839');
INSERT INTO `zyz_category` VALUES ('103', 'HTML5+CSS3', 'HTML5+CSS3', 'HTML5+CSS3', '<p>HTML5+CSS3</p><p><br></p>', '1', '1', '7', '1540524900', '1540524959');
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
INSERT INTO `zyz_category` VALUES ('59', '优化自定义Model类实战', '优化自定义Model类实战', '优化自定义Model类实战', '', '6', '1', '25', '1540277516', '1540554931');
INSERT INTO `zyz_category` VALUES ('60', '综合实战（使用功能类编写）', '综合实战（使用功能类编写）', '综合实战（使用功能类编写）', '', '7', '1', '25', '1540277537', '1540554949');
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
INSERT INTO `zyz_category` VALUES ('104', 'javascript+jquery', 'javascript+jquery', 'javascript+jquery', '', '2', '1', '7', '1540524928', '1540524945');
INSERT INTO `zyz_category` VALUES ('105', 'PHP+Ajax+JSONP', 'PHP+Ajax+JSONP', 'PHP+Ajax+JSONP', '', '3', '1', '7', '1540524988', '1540524988');
INSERT INTO `zyz_category` VALUES ('106', '项目实战考核', '项目实战考核', '项目实战考核', '', '4', '1', '7', '1540525004', '1540525004');
INSERT INTO `zyz_category` VALUES ('107', 'ES6的语法结构', 'ES6的语法结构', 'ES6的语法结构', '', '5', '1', '7', '1540525025', '1540525025');
INSERT INTO `zyz_category` VALUES ('108', 'Node.js+MongoDB+Express+Bootstrap', 'Node.js+MongoDB+Express+Bootstrap', 'Node.js+MongoDB+Express+Bootstrap', '', '6', '1', '7', '1540525052', '1540525052');
INSERT INTO `zyz_category` VALUES ('109', 'H5新特性', 'H5新特性', 'H5新特性', '', '7', '1', '7', '1540525072', '1540525072');
INSERT INTO `zyz_category` VALUES ('110', 'Vue.js', 'Vue.js', 'Vue.js', '', '8', '1', '7', '1540525092', '1540525092');
INSERT INTO `zyz_category` VALUES ('111', 'Angular', 'Angular', 'Angular', '', '9', '1', '7', '1540525109', '1540525109');
INSERT INTO `zyz_category` VALUES ('112', 'React.js', 'React.js', 'React.js', '', '10', '1', '7', '1540525127', '1540525127');
INSERT INTO `zyz_category` VALUES ('113', '微信小程序+微信JS-SDK', '微信小程序+微信JS-SDK', '微信小程序+微信JS-SDK', '', '11', '1', '7', '1540525150', '1540525150');
INSERT INTO `zyz_category` VALUES ('114', '项目实战考核', '项目实战考核', '项目实战考核', '<p>vue.js 、angular  、react 、微信小程序项目。实战项目：可开发商城类、论坛类、音乐播放类、视频播放类、小说阅读类、天气查询、物流快递查询类、汇率查询等APP应用</p><p><br></p>', '12', '1', '7', '1540525169', '1540532031');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of zyz_member
-- ----------------------------
INSERT INTO `zyz_member` VALUES ('1', '焦伟佳', 'jiaoweijia', 'b8137188fe687bdf3d8052fcd41317b4', '1b8f12ef', '1', '1539712439', '1539712439', '1540525201');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='统计表';

-- ----------------------------
-- Records of zyz_statistics
-- ----------------------------
INSERT INTO `zyz_statistics` VALUES ('1', 'admin', '2', '0', '1539697600', '1539712673');
INSERT INTO `zyz_statistics` VALUES ('2', 'member', '4', '0', '1539712440', '1539712618');
INSERT INTO `zyz_statistics` VALUES ('3', 'category', '113', '0', '1539932982', '1540525170');
INSERT INTO `zyz_statistics` VALUES ('4', 'article', '335', '0', '1540360705', '1540555144');
INSERT INTO `zyz_statistics` VALUES ('5', 'article', '13', '103', '1540527509', '1540527530');
INSERT INTO `zyz_statistics` VALUES ('6', 'article', '11', '104', '1540530008', '1540530178');
INSERT INTO `zyz_statistics` VALUES ('7', 'article', '6', '105', '1540530287', '1540530349');
INSERT INTO `zyz_statistics` VALUES ('8', 'article', '6', '106', '1540530511', '1540530573');
INSERT INTO `zyz_statistics` VALUES ('9', 'article', '11', '107', '1540530587', '1540530787');
INSERT INTO `zyz_statistics` VALUES ('10', 'article', '18', '108', '1540530805', '1540531041');
INSERT INTO `zyz_statistics` VALUES ('11', 'article', '12', '109', '1540531108', '1540531246');
INSERT INTO `zyz_statistics` VALUES ('12', 'article', '13', '110', '1540531269', '1540531446');
INSERT INTO `zyz_statistics` VALUES ('13', 'article', '15', '111', '1540531464', '1540531647');
INSERT INTO `zyz_statistics` VALUES ('14', 'article', '15', '112', '1540531659', '1540531840');
INSERT INTO `zyz_statistics` VALUES ('15', 'article', '12', '113', '1540531862', '1540531988');
INSERT INTO `zyz_statistics` VALUES ('16', 'article', '8', '30', '1540534191', '1540534339');
INSERT INTO `zyz_statistics` VALUES ('17', 'article', '7', '31', '1540534379', '1540534577');
INSERT INTO `zyz_statistics` VALUES ('18', 'article', '4', '32', '1540534610', '1540534832');
INSERT INTO `zyz_statistics` VALUES ('19', 'article', '11', '33', '1540534845', '1540535079');
INSERT INTO `zyz_statistics` VALUES ('20', 'article', '3', '34', '1540535093', '1540535113');
INSERT INTO `zyz_statistics` VALUES ('21', 'article', '9', '35', '1540535160', '1540535267');
INSERT INTO `zyz_statistics` VALUES ('22', 'article', '1', '36', '1540535357', '1540535357');
INSERT INTO `zyz_statistics` VALUES ('23', 'article', '4', '37', '1540535371', '1540535406');
INSERT INTO `zyz_statistics` VALUES ('24', 'article', '4', '38', '1540535419', '1540535451');
INSERT INTO `zyz_statistics` VALUES ('25', 'article', '12', '39', '1540535495', '1540535607');
INSERT INTO `zyz_statistics` VALUES ('26', 'article', '4', '40', '1540535631', '1540535660');
INSERT INTO `zyz_statistics` VALUES ('27', 'article', '4', '41', '1540536246', '1540536277');
INSERT INTO `zyz_statistics` VALUES ('28', 'article', '10', '42', '1540536306', '1540536390');
INSERT INTO `zyz_statistics` VALUES ('29', 'article', '7', '43', '1540536418', '1540540465');
INSERT INTO `zyz_statistics` VALUES ('30', 'article', '10', '44', '1540551552', '1540551681');
INSERT INTO `zyz_statistics` VALUES ('31', 'article', '5', '45', '1540551728', '1540551771');
INSERT INTO `zyz_statistics` VALUES ('32', 'article', '5', '46', '1540551785', '1540551824');
INSERT INTO `zyz_statistics` VALUES ('33', 'article', '18', '47', '1540551841', '1540552085');
INSERT INTO `zyz_statistics` VALUES ('34', 'article', '9', '48', '1540552517', '1540552603');
INSERT INTO `zyz_statistics` VALUES ('35', 'article', '7', '49', '1540552615', '1540552677');
INSERT INTO `zyz_statistics` VALUES ('36', 'article', '4', '50', '1540552689', '1540552719');
INSERT INTO `zyz_statistics` VALUES ('37', 'article', '4', '51', '1540552734', '1540552767');
INSERT INTO `zyz_statistics` VALUES ('38', 'article', '7', '52', '1540552779', '1540552836');
INSERT INTO `zyz_statistics` VALUES ('39', 'article', '3', '53', '1540552880', '1540552906');
INSERT INTO `zyz_statistics` VALUES ('40', 'article', '11', '54', '1540552924', '1540553039');
INSERT INTO `zyz_statistics` VALUES ('41', 'article', '4', '55', '1540553064', '1540553103');
INSERT INTO `zyz_statistics` VALUES ('42', 'article', '3', '56', '1540553115', '1540553152');
INSERT INTO `zyz_statistics` VALUES ('43', 'article', '7', '57', '1540553172', '1540553237');
INSERT INTO `zyz_statistics` VALUES ('44', 'article', '7', '58', '1540553252', '1540554832');
INSERT INTO `zyz_statistics` VALUES ('45', 'article', '5', '60', '1540554850', '1540555144');
INSERT INTO `zyz_statistics` VALUES ('46', 'article', '6', '59', '1540555047', '1540555098');
