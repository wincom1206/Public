/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.44.120
 Source Server Type    : MySQL
 Source Server Version : 90400
 Source Host           : 192.168.44.120:3306
 Source Schema         : mdb

 Target Server Type    : MySQL
 Target Server Version : 90400
 File Encoding         : 65001

 Date: 19/09/2025 16:32:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for addresses
-- ----------------------------
DROP TABLE IF EXISTS `addresses`;
CREATE TABLE `addresses`  (
  `id` bigint NULL DEFAULT NULL,
  `parent_id` bigint NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `level` smallint NULL DEFAULT NULL,
  `status` smallint NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dtproperties
-- ----------------------------
DROP TABLE IF EXISTS `dtproperties`;
CREATE TABLE `dtproperties`  (
  `id` int NOT NULL,
  `objectid` int NULL DEFAULT NULL,
  `property` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `uvalue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lvalue` longblob NULL,
  `version` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`, `property`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for iptable
-- ----------------------------
DROP TABLE IF EXISTS `iptable`;
CREATE TABLE `iptable`  (
  `ID` int NOT NULL,
  `StartIPNum` float NOT NULL,
  `StartIPText` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `EndIPNum` float NOT NULL,
  `EndIPText` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Local` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mccmnc
-- ----------------------------
DROP TABLE IF EXISTS `mccmnc`;
CREATE TABLE `mccmnc`  (
  `MCCMNC` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `MCC` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `MNC` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `国家代码` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `国家名称英文` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '_utf8mb4\\\'\\\'',
  `国家名称中文` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `运营商英文` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `运营商中文` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for rmtauthorization
-- ----------------------------
DROP TABLE IF EXISTS `rmtauthorization`;
CREATE TABLE `rmtauthorization`  (
  `ID` int NOT NULL,
  `登录码` int NULL DEFAULT NULL,
  `端口` int NULL DEFAULT NULL,
  `验证码` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sql数据维护
-- ----------------------------
DROP TABLE IF EXISTS `sql数据维护`;
CREATE TABLE `sql数据维护`  (
  `ID` int NOT NULL,
  `名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `SQL语句` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `说明` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\''
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_menu1
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu1`;
CREATE TABLE `sys_menu1`  (
  `id` bigint NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sort` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `create_at` datetime NULL DEFAULT NULL,
  `update_at` datetime NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_menu2
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu2`;
CREATE TABLE `sys_menu2`  (
  `id` bigint NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `menu1_id` bigint NULL DEFAULT NULL,
  `sort` int NULL DEFAULT NULL,
  `status` smallint NULL DEFAULT 'NULL',
  `create_at` datetime NULL DEFAULT NULL,
  `update_at` datetime NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_menu3
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu3`;
CREATE TABLE `sys_menu3`  (
  `id` bigint NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `menu1_id` bigint NOT NULL,
  `menu2_id` bigint NOT NULL,
  `sort` int NULL DEFAULT NULL,
  `status` smallint NULL DEFAULT NULL,
  `create_at` datetime NULL DEFAULT NULL,
  `update_at` datetime NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_privilege
-- ----------------------------
DROP TABLE IF EXISTS `sys_privilege`;
CREATE TABLE `sys_privilege`  (
  `id` bigint NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` smallint NULL DEFAULT NULL,
  `create_at` datetime NULL DEFAULT NULL,
  `update_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` smallint NULL DEFAULT NULL,
  `create_at` datetime NULL DEFAULT NULL,
  `update_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_role_ref_privilege
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_ref_privilege`;
CREATE TABLE `sys_role_ref_privilege`  (
  `id` bigint NOT NULL,
  `role_Id` bigint NOT NULL,
  `privilege_id` bigint NOT NULL,
  `status` smallint NULL DEFAULT 'NULL',
  `create_at` datetime NULL DEFAULT 'NULL',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` int NULL DEFAULT NULL,
  `create_at` datetime NULL DEFAULT NULL,
  `update_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user_ref_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_ref_role`;
CREATE TABLE `sys_user_ref_role`  (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  `status` smallint NULL DEFAULT NULL,
  `create_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tcp服务器
-- ----------------------------
DROP TABLE IF EXISTS `tcp服务器`;
CREATE TABLE `tcp服务器`  (
  `ID` int NOT NULL,
  `服务器名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `服务器地址` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `监听端口` int NOT NULL DEFAULT 9001,
  `激活` tinyint(1) NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 全国地级市$
-- ----------------------------
DROP TABLE IF EXISTS `全国地级市$`;
CREATE TABLE `全国地级市$`  (
  `序号` float NULL DEFAULT NULL,
  `DISTRICTNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `OTHERNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `provice_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `TELAREACODE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 原始数据
-- ----------------------------
DROP TABLE IF EXISTS `原始数据`;
CREATE TABLE `原始数据`  (
  `ID` int NOT NULL,
  `时间` datetime NULL DEFAULT NULL,
  `发送终端` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `数据` varchar(800) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `转发链路` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 外部程序
-- ----------------------------
DROP TABLE IF EXISTS `外部程序`;
CREATE TABLE `外部程序`  (
  `ID` int NOT NULL,
  `程序名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `操作类型` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `文件名` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `运行参数` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `默认目录` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `显示方式` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `说明信息` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\''
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 定位标签
-- ----------------------------
DROP TABLE IF EXISTS `定位标签`;
CREATE TABLE `定位标签`  (
  `ID` int NOT NULL,
  `标签名称` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `标签ID` int NULL DEFAULT NULL,
  `标签图标` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 实时曲线
-- ----------------------------
DROP TABLE IF EXISTS `实时曲线`;
CREATE TABLE `实时曲线`  (
  `ID` int NOT NULL,
  `曲线名称` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `数据源` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'è®¾å¤éé\\\'',
  `时间长度` int NOT NULL DEFAULT 24,
  `项目名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `采发设备名称` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `通道0` tinyint(1) NOT NULL DEFAULT 0,
  `通道1` tinyint(1) NOT NULL DEFAULT 0,
  `通道2` tinyint(1) NOT NULL DEFAULT 0,
  `通道3` tinyint(1) NOT NULL DEFAULT 0,
  `通道4` tinyint(1) NOT NULL DEFAULT 0,
  `通道5` tinyint(1) NOT NULL DEFAULT 0,
  `通道6` tinyint(1) NOT NULL DEFAULT 0,
  `通道7` tinyint(1) NOT NULL DEFAULT 0,
  `通道8` tinyint(1) NOT NULL DEFAULT 0,
  `通道9` tinyint(1) NOT NULL DEFAULT 0,
  `通道10` tinyint(1) NOT NULL DEFAULT 0,
  `通道11` tinyint(1) NOT NULL DEFAULT 0,
  `通道12` tinyint(1) NOT NULL DEFAULT 0,
  `通道13` tinyint(1) NOT NULL DEFAULT 0,
  `通道14` tinyint(1) NOT NULL DEFAULT 0,
  `通道15` tinyint(1) NOT NULL DEFAULT 0,
  `通道16` tinyint(1) NOT NULL DEFAULT 0,
  `通道17` tinyint(1) NOT NULL DEFAULT 0,
  `通道18` tinyint(1) NOT NULL DEFAULT 0,
  `通道19` tinyint(1) NOT NULL DEFAULT 0,
  `通道20` tinyint(1) NOT NULL DEFAULT 0,
  `通道21` tinyint(1) NOT NULL DEFAULT 0,
  `通道22` tinyint(1) NOT NULL DEFAULT 0,
  `通道23` tinyint(1) NOT NULL DEFAULT 0,
  `通道24` tinyint(1) NOT NULL DEFAULT 0,
  `通道25` tinyint(1) NOT NULL DEFAULT 0,
  `通道26` tinyint(1) NOT NULL DEFAULT 0,
  `通道27` tinyint(1) NOT NULL DEFAULT 0,
  `通道28` tinyint(1) NOT NULL DEFAULT 0,
  `通道29` tinyint(1) NOT NULL DEFAULT 0,
  `通道30` tinyint(1) NOT NULL DEFAULT 0,
  `通道31` tinyint(1) NOT NULL DEFAULT 0,
  `通道32` tinyint(1) NOT NULL DEFAULT 0,
  `检索语句` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `X轴` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\''
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 实时项目数据
-- ----------------------------
DROP TABLE IF EXISTS `实时项目数据`;
CREATE TABLE `实时项目数据`  (
  `ID` int NOT NULL,
  `时间` datetime NOT NULL,
  `项目名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `采发设备名称` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `电池电压` decimal(10, 3) NOT NULL,
  `太阳能电压` decimal(10, 3) NOT NULL,
  `信号强度` decimal(10, 3) NOT NULL,
  `设备温度` decimal(10, 3) NOT NULL,
  `经度` decimal(10, 3) NOT NULL,
  `纬度` decimal(10, 3) NOT NULL,
  `高程` decimal(10, 3) NOT NULL,
  `通道0` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道1` decimal(18, 3) NOT NULL,
  `通道2` decimal(18, 3) NOT NULL,
  `通道3` decimal(10, 3) NOT NULL,
  `通道4` decimal(10, 3) NOT NULL,
  `通道5` decimal(10, 3) NOT NULL,
  `通道6` decimal(10, 3) NOT NULL,
  `通道7` decimal(10, 3) NOT NULL,
  `通道8` decimal(10, 3) NOT NULL,
  `通道9` decimal(10, 3) NOT NULL,
  `通道10` decimal(10, 3) NOT NULL,
  `通道11` decimal(10, 3) NOT NULL,
  `通道12` decimal(10, 3) NOT NULL,
  `通道13` decimal(10, 3) NOT NULL,
  `通道14` decimal(10, 3) NOT NULL,
  `通道15` decimal(10, 3) NOT NULL,
  `通道16` decimal(10, 3) NOT NULL,
  `通道17` decimal(10, 3) NOT NULL,
  `通道18` decimal(10, 3) NOT NULL,
  `通道19` decimal(10, 3) NOT NULL,
  `通道20` decimal(10, 3) NOT NULL,
  `通道21` decimal(10, 3) NOT NULL,
  `通道22` decimal(10, 3) NOT NULL,
  `通道23` decimal(10, 3) NOT NULL,
  `通道24` decimal(10, 3) NOT NULL,
  `通道25` decimal(10, 3) NOT NULL,
  `通道26` decimal(10, 3) NOT NULL,
  `通道27` decimal(10, 3) NOT NULL,
  `通道28` decimal(10, 3) NOT NULL,
  `通道29` decimal(10, 3) NOT NULL,
  `通道30` decimal(10, 3) NOT NULL,
  `通道31` decimal(10, 3) NOT NULL,
  `通道32` decimal(10, 3) NOT NULL,
  `发送终端` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `转发链路` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\''
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 客户端访问记录
-- ----------------------------
DROP TABLE IF EXISTS `客户端访问记录`;
CREATE TABLE `客户端访问记录`  (
  `ID` int NOT NULL,
  `时间` datetime NULL DEFAULT NULL,
  `用户名` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `IP地址` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `操作内容` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 常用短信
-- ----------------------------
DROP TABLE IF EXISTS `常用短信`;
CREATE TABLE `常用短信`  (
  `ID` int NOT NULL,
  `名称` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `内容` varchar(140) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'TEST\\\'',
  `说明` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\''
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 快速检索
-- ----------------------------
DROP TABLE IF EXISTS `快速检索`;
CREATE TABLE `快速检索`  (
  `ID` int NOT NULL,
  `检索名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `检索语句` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `说明` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 收发设备
-- ----------------------------
DROP TABLE IF EXISTS `收发设备`;
CREATE TABLE `收发设备`  (
  `ID` int NOT NULL,
  `设备名称` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `设备型号` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `端口名称` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `端口参数` int NOT NULL,
  `本机号码` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `TCP最大连接数` int NOT NULL DEFAULT 100,
  `数据功能` tinyint(1) NOT NULL DEFAULT 1,
  `语音功能` tinyint(1) NOT NULL DEFAULT 1,
  `启用` tinyint(1) NOT NULL,
  `备注说明` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\''
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 数据库维护计划
-- ----------------------------
DROP TABLE IF EXISTS `数据库维护计划`;
CREATE TABLE `数据库维护计划`  (
  `ID` int NOT NULL,
  `计划名称` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `计划类型` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'æè®¡å\\\'',
  `月` int NOT NULL DEFAULT 1,
  `日` int NOT NULL DEFAULT 1,
  `时` int NOT NULL DEFAULT 0,
  `分` int NOT NULL DEFAULT 0,
  `指令语句` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\''
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 数据转发历史记录
-- ----------------------------
DROP TABLE IF EXISTS `数据转发历史记录`;
CREATE TABLE `数据转发历史记录`  (
  `ID` int NOT NULL,
  `转发时间` datetime NULL DEFAULT NULL,
  `转发方向` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'æ¥æ¶\\\'',
  `转发源` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `转发目标` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `数据类型` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'ç©çæ°æ®\\\'',
  `数据关键字` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '13012345678',
  `转发结果` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'å¤±è´¥\\\''
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 标签轨迹
-- ----------------------------
DROP TABLE IF EXISTS `标签轨迹`;
CREATE TABLE `标签轨迹`  (
  `ID` int NOT NULL,
  `时间` datetime NULL DEFAULT NULL,
  `标签ID` int NULL DEFAULT NULL,
  `项目区域` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `X` decimal(18, 0) NULL DEFAULT NULL,
  `Y` decimal(18, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 测试连接
-- ----------------------------
DROP TABLE IF EXISTS `测试连接`;
CREATE TABLE `测试连接`  (
  `ID` int NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 物理单位
-- ----------------------------
DROP TABLE IF EXISTS `物理单位`;
CREATE TABLE `物理单位`  (
  `ID` int NOT NULL,
  `物理单位` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `备注说明` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 物理数据
-- ----------------------------
DROP TABLE IF EXISTS `物理数据`;
CREATE TABLE `物理数据`  (
  `ID` int NOT NULL,
  `时间` datetime NOT NULL,
  `设备识别码` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `所属项目` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `电池电压` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `太阳能电压` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `信号强度` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `设备温度` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `经度` decimal(10, 6) NOT NULL DEFAULT 0.000,
  `纬度` decimal(10, 6) NOT NULL DEFAULT 0.000,
  `高程` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道0` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道1` decimal(18, 3) NOT NULL DEFAULT 0.000,
  `通道2` decimal(18, 3) NOT NULL DEFAULT 0.000,
  `通道3` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道4` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道5` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道6` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道7` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道8` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道9` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道10` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道11` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道12` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道13` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道14` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道15` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道16` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道17` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道18` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道19` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道20` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道21` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道22` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道23` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道24` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道25` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道26` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道27` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道28` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道29` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道30` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道31` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `通道32` decimal(10, 3) NOT NULL DEFAULT 0.000,
  `发送终端` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `转发链路` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `channel_id` bigint NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 物理量类别
-- ----------------------------
DROP TABLE IF EXISTS `物理量类别`;
CREATE TABLE `物理量类别`  (
  `ID` int NOT NULL,
  `名称` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 用户报表
-- ----------------------------
DROP TABLE IF EXISTS `用户报表`;
CREATE TABLE `用户报表`  (
  `ID` int NOT NULL,
  `报表名称` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `报表模板` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `报表说明` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\''
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 用户文件
-- ----------------------------
DROP TABLE IF EXISTS `用户文件`;
CREATE TABLE `用户文件`  (
  `ID` int NOT NULL,
  `文件类别` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `文件类型` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `文件名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `上传时间` datetime NOT NULL,
  `上传用户` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `有效范围` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `备注` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 电话区号
-- ----------------------------
DROP TABLE IF EXISTS `电话区号`;
CREATE TABLE `电话区号`  (
  `DISTRICTNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `OTHERNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `provice_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `TELAREACODE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 电话本
-- ----------------------------
DROP TABLE IF EXISTS `电话本`;
CREATE TABLE `电话本`  (
  `ID` int NOT NULL,
  `电话名称` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `电话类别` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'å¸¸è§èç³»äºº\\\'',
  `企业名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `职务` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `手机号码` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `办公电话` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `邮箱地址` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `备注说明` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\''
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 监测点_gnss
-- ----------------------------
DROP TABLE IF EXISTS `监测点_gnss`;
CREATE TABLE `监测点_gnss`  (
  `ID` int NOT NULL,
  `测点名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `所属项目` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `设备识别码` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `图上坐标X1` int NOT NULL DEFAULT 10,
  `图上坐标Y1` int NOT NULL DEFAULT 10,
  `图上坐标X2` int NOT NULL DEFAULT 10,
  `图上坐标Y2` int NOT NULL DEFAULT 10,
  `说明信息` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `附加信息` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `equipment_id` bigint NULL DEFAULT NULL,
  `project_id` bigint NULL DEFAULT NULL,
  `status` smallint NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 监测点_地表裂缝
-- ----------------------------
DROP TABLE IF EXISTS `监测点_地表裂缝`;
CREATE TABLE `监测点_地表裂缝`  (
  `ID` int NOT NULL,
  `测点名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `所属项目` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `设备识别码` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `通道号` int NOT NULL,
  `图上坐标X1` int NOT NULL DEFAULT 10,
  `图上坐标Y1` int NOT NULL DEFAULT 10,
  `图上坐标X2` int NOT NULL DEFAULT 10,
  `图上坐标Y2` int NOT NULL DEFAULT 10,
  `说明信息` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '_utf8mb4\\\'\\\'',
  `附加信息` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 监测点_振弦
-- ----------------------------
DROP TABLE IF EXISTS `监测点_振弦`;
CREATE TABLE `监测点_振弦`  (
  `ID` int NOT NULL,
  `测点名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `所属项目` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `设备识别码` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `通道号` int NOT NULL,
  `传感器编号` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `初始频率值` float NOT NULL,
  `系数` float NOT NULL,
  `预警值` float NOT NULL,
  `控制值` float NOT NULL,
  `发布预警` tinyint(1) NOT NULL,
  `图上坐标X1` int NOT NULL,
  `图上坐标Y1` int NOT NULL,
  `图上坐标X2` int NULL DEFAULT NULL,
  `图上坐标Y2` int NULL DEFAULT NULL,
  `说明信息` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `附加信息` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 监测点_振弦监测
-- ----------------------------
DROP TABLE IF EXISTS `监测点_振弦监测`;
CREATE TABLE `监测点_振弦监测`  (
  `ID` int NOT NULL,
  `测点名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `所属项目` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `设备识别码` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `通道号` int NOT NULL,
  `传感器编号` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  `初始频率值` float NOT NULL DEFAULT 0.0,
  `系数` float NOT NULL DEFAULT 1.0,
  `预警值` float NOT NULL DEFAULT 1.0,
  `控制值` float NOT NULL DEFAULT 1,
  `发布预警` float NOT NULL DEFAULT 1,
  `图上坐标X1` int NOT NULL DEFAULT 10,
  `图上坐标Y1` int NOT NULL DEFAULT 10,
  `图上坐标X2` int NOT NULL DEFAULT 10,
  `图上坐标Y2` int NOT NULL DEFAULT 10,
  `说明信息` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `附加信息` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 监测点_收敛
-- ----------------------------
DROP TABLE IF EXISTS `监测点_收敛`;
CREATE TABLE `监测点_收敛`  (
  `ID` int NOT NULL,
  `测点名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `所属项目` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `设备识别码` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `通道号` int NOT NULL,
  `预警值` float NOT NULL DEFAULT 10,
  `控制值` float NOT NULL DEFAULT 15,
  `发布预警` tinyint(1) NOT NULL DEFAULT 0,
  `图上坐标X1` int NOT NULL DEFAULT 10,
  `图上坐标Y1` int NOT NULL DEFAULT 10,
  `图上坐标X2` int NOT NULL DEFAULT 10,
  `图上坐标Y2` int NOT NULL DEFAULT 10,
  `说明信息` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `附加信息` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 监测点_沉降
-- ----------------------------
DROP TABLE IF EXISTS `监测点_沉降`;
CREATE TABLE `监测点_沉降`  (
  `ID` int NOT NULL,
  `测点名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `所属项目` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `设备识别码` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '15888888888',
  `通道号` int NOT NULL,
  `基准点通道号` int NOT NULL DEFAULT 9,
  `预警值` float NOT NULL DEFAULT 8,
  `控制值` float NOT NULL DEFAULT 10,
  `发布预警` tinyint(1) NOT NULL DEFAULT 0,
  `图上坐标X1` int NOT NULL DEFAULT 10,
  `图上坐标Y1` int NOT NULL DEFAULT 10,
  `图上坐标X2` int NOT NULL DEFAULT 10,
  `图上坐标Y2` int NOT NULL DEFAULT 10,
  `说明信息` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `附加信息` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 监测点_深部位移
-- ----------------------------
DROP TABLE IF EXISTS `监测点_深部位移`;
CREATE TABLE `监测点_深部位移`  (
  `ID` int NOT NULL,
  `测点名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `所属项目` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `设备识别码` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `钻孔深度` decimal(18, 0) NOT NULL DEFAULT 10,
  `位移传感器通道` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `位移传感器深度` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `主倾斜传感器通道` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `主倾斜传感器深度` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `副倾斜传感器通道` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `副倾斜传感器深度` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `图上坐标X1` int NOT NULL DEFAULT 10,
  `图上坐标Y1` int NOT NULL DEFAULT 10,
  `图上坐标X2` int NOT NULL DEFAULT 10,
  `图上坐标Y2` int NOT NULL DEFAULT 10,
  `说明信息` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `附加信息` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '_utf8mb4\\\'\\\'',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 监测点_类型定义
-- ----------------------------
DROP TABLE IF EXISTS `监测点_类型定义`;
CREATE TABLE `监测点_类型定义`  (
  `ID` int NOT NULL,
  `名称` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `说明信息` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 监测点_轴力
-- ----------------------------
DROP TABLE IF EXISTS `监测点_轴力`;
CREATE TABLE `监测点_轴力`  (
  `ID` int NOT NULL,
  `测点名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `所属项目` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `设备识别码` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `通道号` int NOT NULL,
  `传感器编号` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  `初始频率值` float NOT NULL DEFAULT 0.0,
  `系数` float NOT NULL DEFAULT 1.0,
  `预警值` float NOT NULL DEFAULT 1.0,
  `控制值` float NOT NULL DEFAULT 1.0,
  `发布预警` tinyint(1) NOT NULL DEFAULT 0,
  `图上坐标X1` int NOT NULL DEFAULT 10,
  `图上坐标Y1` int NOT NULL DEFAULT 10,
  `图上坐标X2` int NULL DEFAULT 10,
  `图上坐标Y2` int NULL DEFAULT 10,
  `说明信息` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `附加信息` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 监测点_降雨量
-- ----------------------------
DROP TABLE IF EXISTS `监测点_降雨量`;
CREATE TABLE `监测点_降雨量`  (
  `ID` int NOT NULL,
  `测点名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `所属项目` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `设备识别码` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `通道号` int NOT NULL,
  `图上坐标X1` int NOT NULL DEFAULT 10,
  `图上坐标Y1` int NOT NULL DEFAULT 10,
  `图上坐标X2` int NOT NULL DEFAULT 10,
  `图上坐标Y2` int NOT NULL DEFAULT 10,
  `说明信息` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `附加信息` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 监测点日志
-- ----------------------------
DROP TABLE IF EXISTS `监测点日志`;
CREATE TABLE `监测点日志`  (
  `ID` int NOT NULL,
  `监测项目` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `测点类型` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `测点名称` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `日志时间` datetime NULL DEFAULT NULL,
  `日志内容` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `管理员` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `填写人` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 监测类型
-- ----------------------------
DROP TABLE IF EXISTS `监测类型`;
CREATE TABLE `监测类型`  (
  `ID` int NOT NULL,
  `名称` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `备注说明` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 监测项目
-- ----------------------------
DROP TABLE IF EXISTS `监测项目`;
CREATE TABLE `监测项目`  (
  `ID` int NOT NULL,
  `项目名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `项目简称` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `一级行政` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `二级行政` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `三级行政` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `经度` decimal(10, 6) NULL DEFAULT NULL,
  `纬度` decimal(10, 6) NULL DEFAULT NULL,
  `责任单位` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `负责人` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `负责人电话` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `执班电话` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `项目概况URL` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `项目概述` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `WD报表模板` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `项目图片` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `起始里程` decimal(18, 2) NULL DEFAULT NULL,
  `终止里程` decimal(18, 2) NULL DEFAULT NULL,
  `隧道宽度` decimal(18, 0) NULL DEFAULT NULL,
  `status` smallint NULL DEFAULT NULL,
  `start_at` datetime NULL DEFAULT NULL,
  `end_at` datetime NULL DEFAULT NULL,
  `区域码` int NULL DEFAULT NULL,
  `pic` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `属性1名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `属性1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `属性1内容` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `属性2名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `属性2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `属性2内容` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `属性3名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `属性3` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `属性3内容` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `属性4名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `属性4` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `属性4内容` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `属性5名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `属性5` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `属性5内容` int NULL DEFAULT NULL,
  `属性6名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `属性6` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `属性6内容` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `属性7名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `属性7` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `属性7内容` decimal(18, 2) NULL DEFAULT NULL,
  `属性8名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `属性8` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `属性8内容` decimal(18, 2) NULL DEFAULT NULL,
  `属性9名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `属性9` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `属性9内容` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 短信记录
-- ----------------------------
DROP TABLE IF EXISTS `短信记录`;
CREATE TABLE `短信记录`  (
  `ID` int NOT NULL,
  `本机时间` datetime NOT NULL,
  `短信中心时间` datetime NOT NULL,
  `传输方向` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'åé\\\'',
  `本地电话名称` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `本地电话号码` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `远程电话名称` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `远程电话号码` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `远程号码类别` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'éåè®¾å¤\\\'',
  `信息类型` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'è¿ç¨æä»¤\\\'',
  `收发方式` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'èªå¨\\\'',
  `收发结果` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `信息编码` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'UNICODE\\\'',
  `信息内容` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `已读` tinyint(1) NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 移动客户端
-- ----------------------------
DROP TABLE IF EXISTS `移动客户端`;
CREATE TABLE `移动客户端`  (
  `ID` int NOT NULL,
  `设备识别码` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `姓名` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `企业名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `职务` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `联系电话` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `备注说明` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 管理员
-- ----------------------------
DROP TABLE IF EXISTS `管理员`;
CREATE TABLE `管理员`  (
  `ID` int NOT NULL,
  `用户名` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `密码` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `角色` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `项目` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `备注说明` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `经度` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `纬度` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `缩放大小` float NULL DEFAULT NULL,
  `banner路径` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `logo路径` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `已激活` tinyint(1) NULL DEFAULT NULL,
  `头像` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `登录时间` datetime NULL DEFAULT NULL,
  `项目限制` int NULL DEFAULT NULL,
  `设备限制` int NULL DEFAULT NULL,
  `测点限制` int NULL DEFAULT NULL,
  `预警限制` int NULL DEFAULT NULL,
  `文件限制` int NULL DEFAULT NULL,
  `测试工具` tinyint(1) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 结果$
-- ----------------------------
DROP TABLE IF EXISTS `结果$`;
CREATE TABLE `结果$`  (
  `ID` float NULL DEFAULT NULL,
  `时间` datetime NULL DEFAULT NULL,
  `设备识别码` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `所属项目` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `电池电压` float NULL DEFAULT NULL,
  `太阳能电压` float NULL DEFAULT NULL,
  `信号强度` float NULL DEFAULT NULL,
  `设备温度` float NULL DEFAULT NULL,
  `经度` float NULL DEFAULT NULL,
  `纬度` float NULL DEFAULT NULL,
  `高程` float NULL DEFAULT NULL,
  `通道0` float NULL DEFAULT NULL,
  `通道1` float NULL DEFAULT NULL,
  `通道2` float NULL DEFAULT NULL,
  `通道3` float NULL DEFAULT NULL,
  `通道4` float NULL DEFAULT NULL,
  `通道5` float NULL DEFAULT NULL,
  `通道6` float NULL DEFAULT NULL,
  `通道7` float NULL DEFAULT NULL,
  `通道8` float NULL DEFAULT NULL,
  `通道9` float NULL DEFAULT NULL,
  `通道10` float NULL DEFAULT NULL,
  `通道11` float NULL DEFAULT NULL,
  `通道12` float NULL DEFAULT NULL,
  `通道13` float NULL DEFAULT NULL,
  `通道14` float NULL DEFAULT NULL,
  `通道15` float NULL DEFAULT NULL,
  `通道16` float NULL DEFAULT NULL,
  `通道17` float NULL DEFAULT NULL,
  `通道18` float NULL DEFAULT NULL,
  `通道19` float NULL DEFAULT NULL,
  `通道20` float NULL DEFAULT NULL,
  `通道21` float NULL DEFAULT NULL,
  `通道22` float NULL DEFAULT NULL,
  `通道23` float NULL DEFAULT NULL,
  `通道24` float NULL DEFAULT NULL,
  `通道25` float NULL DEFAULT NULL,
  `通道26` float NULL DEFAULT NULL,
  `通道27` float NULL DEFAULT NULL,
  `通道28` float NULL DEFAULT NULL,
  `通道29` float NULL DEFAULT NULL,
  `通道30` float NULL DEFAULT NULL,
  `通道31` float NULL DEFAULT NULL,
  `通道32` float NULL DEFAULT NULL,
  `发送终端` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `转发链路` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `channel_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 编码映射
-- ----------------------------
DROP TABLE IF EXISTS `编码映射`;
CREATE TABLE `编码映射`  (
  `ID` int NOT NULL,
  `IMEI` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `设备识别码` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `equipment_id` bigint NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 脚本分组
-- ----------------------------
DROP TABLE IF EXISTS `脚本分组`;
CREATE TABLE `脚本分组`  (
  `ID` int NOT NULL,
  `名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `说明信息` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\''
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 脚本定义
-- ----------------------------
DROP TABLE IF EXISTS `脚本定义`;
CREATE TABLE `脚本定义`  (
  `ID` int NOT NULL,
  `脚本名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `所属分组` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `语言名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `脚本文件` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `过程名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `说明信息` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `grouping_id` bigint NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 行政区划1
-- ----------------------------
DROP TABLE IF EXISTS `行政区划1`;
CREATE TABLE `行政区划1`  (
  `ProvinceID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ProvinceName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 行政区划2
-- ----------------------------
DROP TABLE IF EXISTS `行政区划2`;
CREATE TABLE `行政区划2`  (
  `CityID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `CityName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ProvinceID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 行政区划3
-- ----------------------------
DROP TABLE IF EXISTS `行政区划3`;
CREATE TABLE `行政区划3`  (
  `CityID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `RegionalismID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `RegionalismName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 解析数据2
-- ----------------------------
DROP TABLE IF EXISTS `解析数据2`;
CREATE TABLE `解析数据2`  (
  `ID` int NOT NULL,
  `时间` datetime NOT NULL,
  `设备识别码` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `所属项目` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `电池电压` int NOT NULL,
  `太阳能电压` int NOT NULL,
  `信号强度` int NOT NULL,
  `设备温度` int NOT NULL,
  `经度` bigint NOT NULL,
  `纬度` bigint NOT NULL,
  `高程` bigint NOT NULL,
  `通道0` int NOT NULL,
  `通道1` int NOT NULL,
  `通道2` int NOT NULL,
  `通道3` int NOT NULL,
  `通道4` int NOT NULL,
  `通道5` int NOT NULL,
  `通道6` int NOT NULL,
  `通道7` int NOT NULL,
  `通道8` int NOT NULL,
  `通道9` int NOT NULL,
  `通道10` int NOT NULL,
  `通道11` int NOT NULL,
  `通道12` int NOT NULL,
  `通道13` int NOT NULL,
  `通道14` int NOT NULL,
  `通道15` int NOT NULL,
  `通道16` int NOT NULL,
  `通道17` int NOT NULL,
  `通道18` int NOT NULL,
  `通道19` int NOT NULL,
  `通道20` int NOT NULL,
  `通道21` int NOT NULL,
  `通道22` int NOT NULL,
  `通道23` int NOT NULL,
  `通道24` int NOT NULL,
  `通道25` int NOT NULL,
  `通道26` int NOT NULL,
  `通道27` int NOT NULL,
  `通道28` int NOT NULL,
  `通道29` int NOT NULL,
  `通道30` int NOT NULL,
  `通道31` int NOT NULL,
  `通道32` int NOT NULL,
  `发送终端` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `转发链路` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 解析数据_沉降发布
-- ----------------------------
DROP TABLE IF EXISTS `解析数据_沉降发布`;
CREATE TABLE `解析数据_沉降发布`  (
  `ID` int NOT NULL,
  `时间` datetime NULL DEFAULT NULL,
  `设备识别码` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `所属项目` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `电池电压` int NULL DEFAULT NULL,
  `太阳能电压` int NULL DEFAULT NULL,
  `信号强度` int NULL DEFAULT NULL,
  `设备温度` int NULL DEFAULT NULL,
  `经度` bigint NULL DEFAULT NULL,
  `纬度` bigint NULL DEFAULT NULL,
  `高程` bigint NULL DEFAULT NULL,
  `通道0` int NULL DEFAULT NULL,
  `通道1` float NULL DEFAULT NULL,
  `通道2` float NULL DEFAULT NULL,
  `通道3` float NULL DEFAULT NULL,
  `通道4` float NULL DEFAULT NULL,
  `通道5` float NULL DEFAULT NULL,
  `通道6` float NULL DEFAULT NULL,
  `通道7` float NULL DEFAULT NULL,
  `通道8` float NULL DEFAULT NULL,
  `通道9` float NULL DEFAULT NULL,
  `通道10` float NULL DEFAULT NULL,
  `通道11` int NULL DEFAULT NULL,
  `通道12` int NULL DEFAULT NULL,
  `通道13` int NULL DEFAULT NULL,
  `通道14` int NULL DEFAULT NULL,
  `通道15` int NULL DEFAULT NULL,
  `通道16` int NULL DEFAULT NULL,
  `通道17` float NULL DEFAULT NULL,
  `通道18` float NULL DEFAULT NULL,
  `通道19` int NULL DEFAULT NULL,
  `通道20` int NULL DEFAULT NULL,
  `通道21` int NULL DEFAULT NULL,
  `通道22` int NULL DEFAULT NULL,
  `通道23` int NULL DEFAULT NULL,
  `通道24` int NULL DEFAULT NULL,
  `通道25` int NULL DEFAULT NULL,
  `通道26` int NULL DEFAULT NULL,
  `通道27` int NULL DEFAULT NULL,
  `通道28` int NULL DEFAULT NULL,
  `通道29` int NULL DEFAULT NULL,
  `通道30` int NULL DEFAULT NULL,
  `通道31` int NULL DEFAULT NULL,
  `通道32` int NULL DEFAULT NULL,
  `发送终端` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `转发链路` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 计划任务
-- ----------------------------
DROP TABLE IF EXISTS `计划任务`;
CREATE TABLE `计划任务`  (
  `ID` int NOT NULL,
  `任务名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `激活` tinyint(1) NOT NULL DEFAULT 1,
  `任务类别` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'ç¨æ·æ¥è¡¨\\\'',
  `任务关键字` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `周期` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'æ¯æ¥\\\'',
  `启动时运行` tinyint(1) NOT NULL DEFAULT 0,
  `关闭时运行` tinyint(1) NOT NULL DEFAULT 0,
  `年` int NOT NULL DEFAULT 2017,
  `月` int NOT NULL DEFAULT 1,
  `周` int NOT NULL DEFAULT 1,
  `日` int NOT NULL DEFAULT 1,
  `时` int NOT NULL DEFAULT 8,
  `分` int NOT NULL DEFAULT 0,
  `任务说明` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\''
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 运行日志
-- ----------------------------
DROP TABLE IF EXISTS `运行日志`;
CREATE TABLE `运行日志`  (
  `ID` int NOT NULL,
  `时间` datetime NULL DEFAULT NULL,
  `用户` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `事件` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `内容` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `结果` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `备注` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 远程数据服务器
-- ----------------------------
DROP TABLE IF EXISTS `远程数据服务器`;
CREATE TABLE `远程数据服务器`  (
  `ID` int NOT NULL,
  `服务器名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `服务器地址` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `服务端口` int NOT NULL,
  `数据库` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `密码` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 通知信息
-- ----------------------------
DROP TABLE IF EXISTS `通知信息`;
CREATE TABLE `通知信息`  (
  `ID` int NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `begtime` datetime NOT NULL,
  `endtime` datetime NOT NULL,
  `createuser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `createtime` datetime NULL DEFAULT NULL,
  `projectnames` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `isshow` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `contents` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 通知消息2
-- ----------------------------
DROP TABLE IF EXISTS `通知消息2`;
CREATE TABLE `通知消息2`  (
  `ID` int NOT NULL,
  `标题` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `内容` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `用户范围` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `已读用户` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `开始时间` datetime NOT NULL,
  `结束时间` datetime NOT NULL,
  `总是弹出` tinyint(1) NOT NULL,
  `优先级` int NOT NULL,
  `创建人` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '_utf8mb4\\\'\\\''
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 通话记录
-- ----------------------------
DROP TABLE IF EXISTS `通话记录`;
CREATE TABLE `通话记录`  (
  `ID` int NOT NULL,
  `时间` datetime NOT NULL,
  `呼叫方向` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'å¼åº\\\'',
  `本地电话名称` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `本地电话号码` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `远程电话名称` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `远程电话号码` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `远程电话类别` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'æ§ç­çµè¯\\\'',
  `通话类型` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'å·¡æ£\\\'',
  `拨打方式` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'æå¨\\\'',
  `拨打结果` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'æ äººæ¥å¬\\\'',
  `通话时长` int NOT NULL DEFAULT 0,
  `是否录音` tinyint(1) NOT NULL DEFAULT 0,
  `录音文件` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\''
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 邮政区号
-- ----------------------------
DROP TABLE IF EXISTS `邮政区号`;
CREATE TABLE `邮政区号`  (
  `id` float NULL DEFAULT NULL,
  `city_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `areacode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `postcode` float NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 采发设备
-- ----------------------------
DROP TABLE IF EXISTS `采发设备`;
CREATE TABLE `采发设备`  (
  `ID` int NOT NULL,
  `设备名称` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `设备识别码` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `数据识别码` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `设备型号` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `所属项目` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `需要应答` tinyint(1) NOT NULL,
  `应答码` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `连续存储限制` int NOT NULL DEFAULT 0,
  `预计超时时长` int NOT NULL DEFAULT 3600,
  `电池电压公式` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `太阳能电压公式` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `信号强度公式` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `设备温度公式` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `经度公式` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `纬度公式` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `高程公式` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `备注说明` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `project_id` bigint NULL DEFAULT NULL,
  `status` smallint NULL DEFAULT NULL,
  `断面里程` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `定位基站ID` int NOT NULL DEFAULT 1,
  `pic` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 采发设备数据转发
-- ----------------------------
DROP TABLE IF EXISTS `采发设备数据转发`;
CREATE TABLE `采发设备数据转发`  (
  `ID` int NOT NULL,
  `转发名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `设备识别码` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'çæµé¡¹ç®æ°æ®\\\'',
  `TCP服务器` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `已转发ID` int NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 项目图片
-- ----------------------------
DROP TABLE IF EXISTS `项目图片`;
CREATE TABLE `项目图片`  (
  `ID` int NOT NULL,
  `pic` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `xiangmu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 项目模板报表
-- ----------------------------
DROP TABLE IF EXISTS `项目模板报表`;
CREATE TABLE `项目模板报表`  (
  `ID` int NOT NULL,
  `项目名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `报表说明` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `报表模板` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `被替换字符串组` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `替换后字符串组` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\''
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 预警规则
-- ----------------------------
DROP TABLE IF EXISTS `预警规则`;
CREATE TABLE `预警规则`  (
  `ID` int NOT NULL,
  `预警名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `激活` tinyint(1) NOT NULL DEFAULT 0,
  `预警数据源` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'çæµç¹\\\'',
  `监测项目名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `采发设备名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `通道名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `预设预警值` float NOT NULL DEFAULT 1000,
  `预警值类型` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'ç»å¯¹å¼\\\'',
  `实时预警值` float NOT NULL DEFAULT 0.0,
  `相对预警参考值` float NOT NULL DEFAULT 0.0,
  `速率预警区间` int NOT NULL DEFAULT 24,
  `最后预警时间` datetime NULL DEFAULT NULL,
  `SQL语句` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `桌面预警` tinyint(1) NOT NULL DEFAULT 1,
  `预警音频文件` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `串口预警` tinyint(1) NOT NULL DEFAULT 1,
  `端口名称` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '_utf8mb4\\\'\\\'',
  `预警指令` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '_utf8mb4\\\'\\\'',
  `短信预警` tinyint(1) NOT NULL DEFAULT 0,
  `短信设备名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `短信目标号码` varchar(110) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `TCP预警` tinyint(1) NOT NULL DEFAULT 0,
  `TCP服务器名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `邮件预警` tinyint(1) NULL DEFAULT NULL,
  `邮箱地址` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `循环预警` tinyint(1) NOT NULL DEFAULT 1,
  `循环预警间隔` int NOT NULL DEFAULT 3600,
  `预警文本` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\'',
  `预警规则说明` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '_utf8mb4\\\'\\\''
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 预警规则2
-- ----------------------------
DROP TABLE IF EXISTS `预警规则2`;
CREATE TABLE `预警规则2`  (
  `ID` int NOT NULL,
  `预警名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `激活` tinyint(1) NOT NULL,
  `监测项目名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `采发设备名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `通道名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `预警类型` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `绝对值下限` float NOT NULL,
  `绝对值上限` float NOT NULL,
  `速率值` float NOT NULL,
  `速率时间跨度` int NOT NULL,
  `上次预警时间` datetime NOT NULL,
  `重复预警间隔` int NOT NULL,
  `预警方式` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `预警标题` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `预警内容` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `预警落款` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `预警目标手机号` varchar(110) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `预警邮箱地址` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `备注说明` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 预警记录
-- ----------------------------
DROP TABLE IF EXISTS `预警记录`;
CREATE TABLE `预警记录`  (
  `ID` int NOT NULL,
  `预警时间` datetime NOT NULL,
  `预警名称` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `预警值` float NOT NULL,
  `预警类型` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `预警方式` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `预警目标` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `预警内容` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
