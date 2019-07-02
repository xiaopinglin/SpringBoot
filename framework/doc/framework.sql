/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50560
 Source Host           : 127.0.0.1:3306
 Source Schema         : framework

 Target Server Type    : MySQL
 Target Server Version : 50560
 File Encoding         : 65001

 Date: 01/07/2019 17:52:55
*/

-- ----------------------------
-- Table structure for ass_auto_code
-- ----------------------------
DROP TABLE IF EXISTS `ass_auto_code`;
CREATE TABLE `ass_auto_code`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `moduleName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模块名称',
  `moduleMath` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模块简写',
  `packagePath` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '包路径',
  `tableCode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `queryColumn` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '查询数据项',
  `listColumn` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列表数据项',
  `editColumn` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编辑数据项',
  `mainPath` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '首页面路径',
  `editPath` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编辑页面路径'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码自动生成' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ass_auto_code
-- ----------------------------
INSERT INTO `ass_auto_code` VALUES ('18091015010928655250000000000001', '代码生成器', 'assist', 'com.lxp', 'ass_auto_code', 'moduleName,tableCode', 'moduleName,moduleMath,packagePath,queryColumn,listColumn,editColumn,mainPath,editPath', 'moduleName,moduleMath,id,packagePath,tableCode,queryColumn,listColumn,editColumn,mainPath,editPath', 'auto_code_main', 'auto_code_edit');

-- ----------------------------
-- Table structure for ass_auto_code_set
-- ----------------------------
DROP TABLE IF EXISTS `ass_auto_code_set`;
CREATE TABLE `ass_auto_code_set`  (
  `id` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL COMMENT '主键',
  `columnGps` varchar(1) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '字段定位',
  `columnCode` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '字段名',
  `columnName` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '字段名称',
  `columnType` varchar(1) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT '1' COMMENT '字段类型',
  `columnFlag` varchar(1) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT '0' COMMENT '字段状态',
  `columnList` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '字段数据组',
  `fid` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL COMMENT '外键',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci COMMENT = '代码生成字段配置' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ass_auto_code_set
-- ----------------------------
INSERT INTO `ass_auto_code_set` VALUES ('18100818015092047790000000000001', '1', 'moduleName', '模块名称', '1', '0', '', '18091015010928655250000000000001');
INSERT INTO `ass_auto_code_set` VALUES ('18100818015092082790000000000001', '1', 'tableCode', '表名', '1', '0', '', '18091015010928655250000000000001');
INSERT INTO `ass_auto_code_set` VALUES ('18100818015092130000000000000001', '2', 'packagePath', '包路径', '1', '0', '', '18091015010928655250000000000001');
INSERT INTO `ass_auto_code_set` VALUES ('18100818015092134480000000000001', '2', 'moduleName', '模块名称', '1', '0', '', '18091015010928655250000000000001');
INSERT INTO `ass_auto_code_set` VALUES ('18100818015092142470000000000001', '2', 'moduleMath', '模块简写', '1', '0', '', '18091015010928655250000000000001');
INSERT INTO `ass_auto_code_set` VALUES ('18100818015092210010000000000001', '2', 'listColumn', '列表数据项', '1', '0', '', '18091015010928655250000000000001');
INSERT INTO `ass_auto_code_set` VALUES ('18100818015092210200000000000001', '2', 'queryColumn', '查询数据项', '1', '0', '', '18091015010928655250000000000001');
INSERT INTO `ass_auto_code_set` VALUES ('18100818015092222990000000000001', '2', 'editPath', '编辑页面路径', '1', '0', '', '18091015010928655250000000000001');
INSERT INTO `ass_auto_code_set` VALUES ('18100818015092251180000000000001', '2', 'mainPath', '首页面路径', '1', '0', '', '18091015010928655250000000000001');
INSERT INTO `ass_auto_code_set` VALUES ('18100818015092283720000000000001', '2', 'editColumn', '编辑数据项', '1', '0', '', '18091015010928655250000000000001');
INSERT INTO `ass_auto_code_set` VALUES ('18100818015092326690000000000001', '3', 'moduleMath', '模块简写', '1', '0', '', '18091015010928655250000000000001');
INSERT INTO `ass_auto_code_set` VALUES ('18100818015092344750000000000001', '3', 'id', '主键', '1', '1', '', '18091015010928655250000000000001');
INSERT INTO `ass_auto_code_set` VALUES ('18100818015092384260000000000001', '3', 'moduleName', '模块名称', '1', '0', '', '18091015010928655250000000000001');
INSERT INTO `ass_auto_code_set` VALUES ('18100818015092427570000000000001', '3', 'queryColumn', '查询数据项', '4', '4', 'querySel', '18091015010928655250000000000001');
INSERT INTO `ass_auto_code_set` VALUES ('18100818015092482470000000000001', '3', 'listColumn', '列表数据项', '4', '4', 'listSel', '18091015010928655250000000000001');
INSERT INTO `ass_auto_code_set` VALUES ('18100818015092486000000000000001', '3', 'tableCode', '表名', '4', '0', 'tableList', '18091015010928655250000000000001');
INSERT INTO `ass_auto_code_set` VALUES ('18100818015092491400000000000001', '3', 'packagePath', '包路径', '1', '0', '', '18091015010928655250000000000001');
INSERT INTO `ass_auto_code_set` VALUES ('18100818015092520390000000000001', '3', 'editPath', '编辑页面路径', '1', '0', '', '18091015010928655250000000000001');
INSERT INTO `ass_auto_code_set` VALUES ('18100818015092542070000000000001', '3', 'mainPath', '首页面路径', '1', '0', '', '18091015010928655250000000000001');
INSERT INTO `ass_auto_code_set` VALUES ('18100818015092545210000000000001', '3', 'editColumn', '编辑数据项', '4', '4', 'editSel', '18091015010928655250000000000001');

-- ----------------------------
-- Table structure for ass_workflow_instance
-- ----------------------------
DROP TABLE IF EXISTS `ass_workflow_instance`;
CREATE TABLE `ass_workflow_instance`  (
  `id` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_code
-- ----------------------------
DROP TABLE IF EXISTS `sys_code`;
CREATE TABLE `sys_code`  (
  `id` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `code` varchar(10) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci COMMENT = '系统代码表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `deptId` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL COMMENT '主键',
  `deptCode` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '部门编码',
  `deptName` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '部门名称',
  `deptPid` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '上级部门',
  `orgId` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '所属机构',
  `deptStatus` varchar(1) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT '1' COMMENT '部门状态',
  `deptSid` int(11) NULL DEFAULT NULL COMMENT '部门排序',
  `deptRemark` varchar(500) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '部门描述',
  `createTime` date NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '创建人',
  `updateTime` date NULL DEFAULT NULL COMMENT '修改时间',
  `updator` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`deptId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci COMMENT = '系统部门' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('18081416563002048000000000000001', 'BM0001', '综合部', 'ORG001', '18081311344055176000000000000001', '1', 1, '电子信息集团--综合管理部', '2018-08-14', 'admin', '2018-09-27', 'admin');

-- ----------------------------
-- Table structure for sys_dmb
-- ----------------------------
DROP TABLE IF EXISTS `sys_dmb`;
CREATE TABLE `sys_dmb`  (
  `DM` varchar(10) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `DMNR` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci COMMENT = '数据字典' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `ntId` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `ntTitle` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `ntContent` varchar(2000) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `ifTop` varchar(1) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT '0',
  `createTime` date NULL DEFAULT NULL,
  `creator` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `updateTime` date NULL DEFAULT NULL,
  `updator` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci COMMENT = '通知公告' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('18082210504668918220000000000001', '习近平在全国宣传思想工作会议上发表重要讲话', '12013年8月19日，习近平在全国宣传思想工作会议上发表重要讲话。党的十八大以来，以习近平同志为核心的党中央高度重视宣传思想工作。习近平总书记多次对宣传思想工作作出重要部署，鼓舞着广大新闻工作者不忘初心、继续前进。如何做好宣传思想工作？在8·19重要讲话五周年之际，新时代学习工作室带您回顾习近平总书记关于宣传思想工作的重要论述。', '0', '2018-08-22', 'admin', '2018-09-27', 'admin');

-- ----------------------------
-- Table structure for sys_organ
-- ----------------------------
DROP TABLE IF EXISTS `sys_organ`;
CREATE TABLE `sys_organ`  (
  `orgId` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL COMMENT '主键',
  `orgCode` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '机构编码',
  `orgName` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '机构名称',
  `orgStatus` varchar(1) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT '1' COMMENT '机构状态',
  `orgRemark` varchar(500) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '机构描述',
  `orgSid` int(11) NULL DEFAULT NULL COMMENT '机构排序',
  `createTime` date NULL DEFAULT NULL COMMENT '创建日期',
  `creator` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '创建人',
  `updateTime` date NULL DEFAULT NULL COMMENT '更新日期',
  `updator` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`orgId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci COMMENT = '组织机构' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_organ
-- ----------------------------
INSERT INTO `sys_organ` VALUES ('18081311344055176000000000000001', 'ORG001', '电子信息集团', '1', '福建省电子技术研究所（以下简称电研所）成立于1975年，开办资金（注册资本金）为221万元，2006年前为省信息产业厅所属事业单位，2006年至2015年4月由省电子产品监督检验所和省无线电监测站托管', 1, '2018-08-13', 'admin', '2018-08-15', 'admin');

-- ----------------------------
-- Table structure for sys_resources
-- ----------------------------
DROP TABLE IF EXISTS `sys_resources`;
CREATE TABLE `sys_resources`  (
  `resId` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL COMMENT '主键',
  `resCode` varchar(10) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '资源编码',
  `resName` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '资源名称',
  `resPid` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '上级资源ID',
  `resType` varchar(1) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '资源类型：1菜单，2按钮',
  `resStatus` varchar(1) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT '1' COMMENT '是否可用:1可用，0禁用',
  `resIfChild` varchar(1) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '是否子节点',
  `resUrl` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '资源访问地址',
  `resIcon` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '资源图标',
  `resSid` int(11) NULL DEFAULT NULL COMMENT '排序',
  `sysId` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL COMMENT '所属系统',
  `resRemark` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '备注',
  `createTime` date NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '创建人',
  `updateTime` date NULL DEFAULT NULL COMMENT '修改时间',
  `updator` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`resId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci COMMENT = '系统资源' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_resources
-- ----------------------------
INSERT INTO `sys_resources` VALUES ('18071909494785758000000000000001', 'ZY001', '基础模块', 'XT001', '1', '1', '0', '', '&#xe63c', 1, '18071909494785770000000000000001', '', '2018-07-16', 'admin', '2018-08-15', 'admin');
INSERT INTO `sys_resources` VALUES ('18071909494785780000000000000001', 'ZY007', '系统管理', 'ZY001', '1', '1', '1', '/sys/system/main', '&#xe632', 1, '18071909494785770000000000000001', NULL, '2018-07-24', 'admin', NULL, NULL);
INSERT INTO `sys_resources` VALUES ('18071909494785790000000000000001', 'ZY002', '资源管理', 'ZY001', '1', '1', '1', '/sys/resources/main', '&#xe66b', 2, '18071909494785770000000000000001', '', '2018-07-16', 'admin', '2018-08-24', 'admin');
INSERT INTO `sys_resources` VALUES ('18071909494785890000000000000001', 'ZY004', '机构管理', 'ZY001', '1', '1', '1', '/sys/organ/main', '&#xe62a', 3, '18071909494785770000000000000001', '', '2018-07-16', 'admin', '2018-08-13', 'admin');
INSERT INTO `sys_resources` VALUES ('18071909494785891000000000000001', 'ZY003', '部门管理', 'ZY001', '1', '1', '1', '/sys/dept/main', '&#xe63c', 4, '18071909494785770000000000000001', '', '2018-07-16', 'admin', '2018-08-13', 'admin');
INSERT INTO `sys_resources` VALUES ('18071909494785894000000000000001', 'ZY006', '角色管理', 'ZY001', '1', '1', '1', '/sys/roles/main', '&#xe632', 5, '18071909494785770000000000000001', '', '2018-07-16', 'admin', '2018-08-15', 'admin');
INSERT INTO `sys_resources` VALUES ('18071909494785895000000000000001', 'ZY005', '用户管理', 'ZY001', '1', '1', '1', '/sys/users/main', '&#xe65f', 6, '18071909494785770000000000000001', '', '2018-07-16', 'admin', '2018-08-17', 'admin');
INSERT INTO `sys_resources` VALUES ('18072614412117663000000000000001', 'ZY008', '辅助模块', 'XT001', '1', '1', '0', '', '&#xe656;', 2, '18071909494785770000000000000001', '辅助管理辅助管理辅助管理', '2018-07-26', 'admin', '2018-08-15', 'admin');
INSERT INTO `sys_resources` VALUES ('18072614433795728000000000000001', 'ZY009', '工作流引擎', 'ZY008', '1', '1', '1', '/ass/workflow/main', '&#xe653;', 2, '18071909494785770000000000000001', '', '2018-07-26', 'admin', '2018-11-22', 'admin');
INSERT INTO `sys_resources` VALUES ('18072717185976376000000000000001', 'ZY010', '代码生成器', 'ZY008', '1', '1', '1', '/ass/autocode/main', '&#xe664;', 1, '18071909494785770000000000000001', '12', '2018-07-27', 'admin', '2018-08-14', 'admin');
INSERT INTO `sys_resources` VALUES ('18080609353600383000000000000001', 'ZY011', '公告管理', 'ZY001', '1', '1', '1', '/sys/notice/main', '&#xe667;', 7, '18071909494785770000000000000001', '', '2018-08-06', 'admin', '2018-08-21', 'admin');
INSERT INTO `sys_resources` VALUES ('18111911225436875610000000000001', 'ZY012', '考试题库', 'ZY008', '1', '1', '1', '/ass/exam/main', '&#xe705;', 3, '18071909494785770000000000000001', '', '2018-11-19', 'admin', '2019-02-12', 'admin');

-- ----------------------------
-- Table structure for sys_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles`;
CREATE TABLE `sys_roles`  (
  `roleId` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL COMMENT '主键',
  `roleCode` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '角色编码',
  `roleName` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '角色名称',
  `roleStatus` varchar(1) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '角色状态',
  `roleRemark` varchar(500) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '备注',
  `createTime` date NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '创建人',
  `updateTime` date NULL DEFAULT NULL COMMENT '修改时间',
  `updator` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`roleId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci COMMENT = '系统角色' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_roles
-- ----------------------------
INSERT INTO `sys_roles` VALUES ('18081515504110263000000000000001', 'R001', '超级管理员', '1', '超级管理员admin', '2018-08-15', 'admin', '2018-08-21', 'admin');
INSERT INTO `sys_roles` VALUES ('18082111410763811140000000000001', 'R002', '系统管理员', '1', '系统管理员系统管理员', '2018-08-21', 'admin', '2018-08-21', 'admin');

-- ----------------------------
-- Table structure for sys_roles_ref
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles_ref`;
CREATE TABLE `sys_roles_ref`  (
  `id` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `roleId` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `resId` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `roleId`(`roleId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci COMMENT = '角色资源权限' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_roles_ref
-- ----------------------------
INSERT INTO `sys_roles_ref` VALUES ('18082115040605231690000000000001', '18081515504110263000000000000001', '18071909494785780000000000000001');
INSERT INTO `sys_roles_ref` VALUES ('18082115040605252760000000000001', '18081515504110263000000000000001', '18071909494785890000000000000001');
INSERT INTO `sys_roles_ref` VALUES ('18082115040605282750000000000001', '18081515504110263000000000000001', '18071909494785758000000000000001');
INSERT INTO `sys_roles_ref` VALUES ('18082115040605287710000000000001', '18081515504110263000000000000001', '18071909494785790000000000000001');
INSERT INTO `sys_roles_ref` VALUES ('18082115040605317240000000000001', '18081515504110263000000000000001', '18072614412117663000000000000001');
INSERT INTO `sys_roles_ref` VALUES ('18082115040605335110000000000001', '18081515504110263000000000000001', '18072614433795728000000000000001');
INSERT INTO `sys_roles_ref` VALUES ('18082115040605352300000000000001', '18081515504110263000000000000001', '18071909494785895000000000000001');
INSERT INTO `sys_roles_ref` VALUES ('18082115040605360320000000000001', '18081515504110263000000000000001', '18080609353600383000000000000001');
INSERT INTO `sys_roles_ref` VALUES ('18082115040605365810000000000001', '18081515504110263000000000000001', '18071909494785891000000000000001');
INSERT INTO `sys_roles_ref` VALUES ('18082115040605372280000000000001', '18081515504110263000000000000001', '18071909494785894000000000000001');
INSERT INTO `sys_roles_ref` VALUES ('18082115040605390730000000000001', '18081515504110263000000000000001', '18072717185976376000000000000001');
INSERT INTO `sys_roles_ref` VALUES ('18082115041002215490000000000001', '18082111410763811140000000000001', '18071909494785890000000000000001');
INSERT INTO `sys_roles_ref` VALUES ('18082115041002216050000000000001', '18082111410763811140000000000001', '18071909494785894000000000000001');
INSERT INTO `sys_roles_ref` VALUES ('18082115041002217000000000000001', '18082111410763811140000000000001', '18071909494785780000000000000001');
INSERT INTO `sys_roles_ref` VALUES ('18082115041002228220000000000001', '18082111410763811140000000000001', '18071909494785895000000000000001');
INSERT INTO `sys_roles_ref` VALUES ('18082115041002233940000000000001', '18082111410763811140000000000001', '18071909494785790000000000000001');
INSERT INTO `sys_roles_ref` VALUES ('18082115041002236190000000000001', '18082111410763811140000000000001', '18080609353600383000000000000001');
INSERT INTO `sys_roles_ref` VALUES ('18082115041002244400000000000001', '18082111410763811140000000000001', '18072614412117663000000000000001');
INSERT INTO `sys_roles_ref` VALUES ('18082115041002282540000000000001', '18082111410763811140000000000001', '18072717185976376000000000000001');
INSERT INTO `sys_roles_ref` VALUES ('18082115041002286070000000000001', '18082111410763811140000000000001', '18072614433795728000000000000001');
INSERT INTO `sys_roles_ref` VALUES ('18082115041002290110000000000001', '18082111410763811140000000000001', '18071909494785758000000000000001');
INSERT INTO `sys_roles_ref` VALUES ('18082115041002291510000000000001', '18082111410763811140000000000001', '18071909494785891000000000000001');

-- ----------------------------
-- Table structure for sys_system
-- ----------------------------
DROP TABLE IF EXISTS `sys_system`;
CREATE TABLE `sys_system`  (
  `sysId` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL COMMENT '系统主键',
  `sysCode` varchar(10) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '系统编码',
  `sysName` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '系统名称',
  `sysStatus` varchar(1) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT '1' COMMENT '系统状态：1启用，0禁用',
  `sysIcon` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '系统图标',
  `sysSid` int(11) NULL DEFAULT NULL COMMENT '排序号',
  `sysRemark` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '系统描述',
  `createTime` date NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '创建人',
  `updateTime` date NULL DEFAULT NULL COMMENT '修改时间',
  `updator` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`sysId`) USING BTREE,
  INDEX `sysSid`(`sysSid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci COMMENT = '系统列表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_system
-- ----------------------------
INSERT INTO `sys_system` VALUES ('18071909494785770000000000000001', 'XT001', '综合系统', '1', '&#xe7ae;', 1, '一般的原因是Mapper interface和xml文件的定义对应不上，需要检查包名，namespace，函数名称     需要比较细致的对比，我经常就是写错了一两个字母搞的很长时间找不到错误一般1', '2018-07-23', 'admin', '2018-09-11', 'admin');

-- ----------------------------
-- Table structure for sys_users
-- ----------------------------
DROP TABLE IF EXISTS `sys_users`;
CREATE TABLE `sys_users`  (
  `userId` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL COMMENT '主键',
  `userCode` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '用户编号',
  `userName` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '用户名称',
  `userAccount` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '登录账号',
  `userPwd` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '登录密码（加密）',
  `userPwdBak` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '登录密码（明文）',
  `userMobile` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '用户联系方式',
  `userEmail` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '电子邮件',
  `userStatus` varchar(1) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT '1' COMMENT '用户状态：1启用，0禁用',
  `orgId` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '所属部门',
  `deptId` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '所属机构',
  `userRemark` varchar(500) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '用户备注',
  `lastLoginIp` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '最新一次登录IP',
  `lastLoginTime` date NULL DEFAULT NULL COMMENT '最新一次登录时间',
  `ifDelete` varchar(1) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT '0' COMMENT '是否假删除：1 是，0否',
  `ifAdmin` varchar(1) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT '0' COMMENT '是否管理员：1是，0否',
  `errorNum` int(11) NULL DEFAULT 0 COMMENT '登录错误次数',
  `createTime` date NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '创建人',
  `updateTime` date NULL DEFAULT NULL COMMENT '修改时间',
  `updator` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci COMMENT = '系统用户' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_users
-- ----------------------------
INSERT INTO `sys_users` VALUES ('18082110392212010900000000000001', 'YH00001', '超级管理员', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '123456', '18850413505', '137708567@qq.com', '1', '18081311344055176000000000000001', '18081416563002048000000000000001', '', '127.0.0.1', '2019-02-13', '0', '0', 0, '2018-08-21', 'admin', '2018-08-23', 'admin');
INSERT INTO `sys_users` VALUES ('18082110392325010900000000000001', 'YH00002', '涨三', 'zhangsan1', 'e10adc3949ba59abbe56e057f20f883e', '123456', '13852345645', '123445@qq.com', '1', '18081311344055176000000000000001', '18081416563002048000000000000001', '测试用户11', NULL, NULL, '0', '0', 0, '2018-08-21', 'admin', '2018-08-21', 'admin');
INSERT INTO `sys_users` VALUES ('18090610154491731190000000000001', 'YH00003', '12696211', '1212', 'c4ca4238a0b923820dcc509a6f75849b', '123456', '18850413505', '11@qq.com', '1', '18081311344055176000000000000001', '18081416563002048000000000000001', '12', NULL, NULL, NULL, NULL, NULL, '2018-09-06', 'admin', NULL, NULL);

-- ----------------------------
-- Table structure for sys_users_ref
-- ----------------------------
DROP TABLE IF EXISTS `sys_users_ref`;
CREATE TABLE `sys_users_ref`  (
  `id` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `userId` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `resId` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `userId`(`userId`) USING BTREE,
  INDEX `resId`(`resId`) USING BTREE,
  CONSTRAINT `resId` FOREIGN KEY (`resId`) REFERENCES `sys_resources` (`resId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `sys_users` (`userId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci COMMENT = '用户资源权限' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_users_ref
-- ----------------------------
INSERT INTO `sys_users_ref` VALUES ('18082115065823034150000000000001', '18082110392212010900000000000001', '18071909494785758000000000000001');
INSERT INTO `sys_users_ref` VALUES ('18082115065823121040000000000001', '18082110392212010900000000000001', '18072614433795728000000000000001');
INSERT INTO `sys_users_ref` VALUES ('18082115065823138320000000000001', '18082110392212010900000000000001', '18072614412117663000000000000001');
INSERT INTO `sys_users_ref` VALUES ('18082115065823142690000000000001', '18082110392212010900000000000001', '18080609353600383000000000000001');
INSERT INTO `sys_users_ref` VALUES ('18082115065823142760000000000001', '18082110392212010900000000000001', '18071909494785894000000000000001');
INSERT INTO `sys_users_ref` VALUES ('18082115065823145890000000000001', '18082110392212010900000000000001', '18071909494785780000000000000001');
INSERT INTO `sys_users_ref` VALUES ('18082115065823151270000000000001', '18082110392212010900000000000001', '18071909494785891000000000000001');
INSERT INTO `sys_users_ref` VALUES ('18082115065823178160000000000001', '18082110392212010900000000000001', '18071909494785890000000000000001');
INSERT INTO `sys_users_ref` VALUES ('18082115065823181750000000000001', '18082110392212010900000000000001', '18072717185976376000000000000001');
INSERT INTO `sys_users_ref` VALUES ('18082115065823186590000000000001', '18082110392212010900000000000001', '18071909494785895000000000000001');
INSERT INTO `sys_users_ref` VALUES ('18082115065823198500000000000001', '18082110392212010900000000000001', '18071909494785790000000000000001');

-- ----------------------------
-- Table structure for sys_users_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_users_roles`;
CREATE TABLE `sys_users_roles`  (
  `id` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `userId` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `roleId` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci COMMENT = '用户角色权限' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_users_roles
-- ----------------------------
INSERT INTO `sys_users_roles` VALUES ('18082115065823557980000000000001', '18082110392212010900000000000001', '18081515504110263000000000000001');

-- ----------------------------
-- Table structure for t_eaxm
-- ----------------------------
DROP TABLE IF EXISTS `t_eaxm`;
CREATE TABLE `t_eaxm`  (
  `title` varchar(2000) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '题目',
  `x_a` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT 'A选项',
  `x_b` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT 'B选项',
  `x_c` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT 'C选项',
  `x_d` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT 'D选项',
  `x_e` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT 'E选项',
  `d_a` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '答案',
  `sn` int(11) NULL DEFAULT NULL,
  `nper` varchar(10) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `type` varchar(10) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_eaxm
-- ----------------------------
INSERT INTO `t_eaxm` VALUES ('患者，女性，40岁，车祸时头部受伤，出现头痛、呕吐而急诊入院。为预防脑水肿，降低颅内压，应采取的体位是？', '端坐卧位', '头高足低位', '半坐卧位', '头低足高位', '中凹卧位', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者，女性，30岁，丈夫因车祸突然去世后出现活动受限，生活不能自理等。其主要原因是？', '神经系统功能障碍', '心理因素', '内分泌改变', '生理因素', '严重疾病', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者，男性，68岁，肝性脑病昏迷2个月，近期发现其骶尾部呈紫红色，皮下有硬结和水疱，病人的压疮处于？', '淤血红润期', '炎性红润器', '炎性浸润器', '淤血浸润器', '坏死溃疡期', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患儿，男，4岁，不慎将果冻误吸入气管，出现“三凹症”，其呼吸困难为？', '吸气性呼吸困难', '呼吸性呼吸困难', '混合性呼吸困难', '换气性呼吸困难', '呼气性呼吸困难', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患儿，女，6岁，近2个月来出现异食癖，喜食纸张，患儿缺乏的营养素是？', '钙', '铁', '钠', '钾 ', '磷', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者，男性，23岁，踝关节扭伤6小时，局部肿胀、疼痛明显，需进行冷敷，其目的是？', '使血管扩张，减轻深部组织充血', '促进炎症的消散', '减轻局部出血、疼痛', '促进炎症的局限', '促进末梢循环', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者，女性，33岁，于12时分娩一女婴，至19时主诉有尿意，但排尿困难，下列护理措施不正确的是？', '立即施行导尿术', '协助其坐起排尿', '用屏风遮挡床单位', '轻轻按摩下腹部', '让其听流水声', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者，女性，60岁，长期服用洋地黄类药物，护士在每次发药前应特别注意的是？', '仔细核对病人的床号、姓名', '叮嘱病人在饭后服药', '测量病人的脉搏', '叮嘱病人服药后多饮水', '发药到口', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('哌替啶50mg，IM，q6h，prn是？', '长期医嘱', '临时医嘱', '长期备用医嘱', '临时备用医嘱', '限时医嘱', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者，男性，35岁，车祸外伤后输入大量库存血后，出现心率缓慢、手足搐搦，血压下降、伤口渗血，出现以上症状的有关因素是？', '高血钾', '低血钾', '高血钙', '低血钙', '低血钠', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者，男性，13岁，患再生障碍性贫血。体温39 5~39 9℃1周，脉搏102次/分，呼吸28次/分，怀疑为败血症，需做血培养，其目的是？', '测定血清酶', '查找致病菌', '测定免疫功能', '测定凝血功能', '测定肝功能', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者，男性，59岁，病人胸闷气短，杵状指、桶状胸，叩诊过清音，听诊呼吸音减弱、P ?亢进，胸透见右心室大。最佳的吸氧方式是？', '持续高流量吸氧', '持续低流量吸氧', '加压给氧', '间断高流量吸氧', '间断低流量吸氧', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者，男性，66岁，肝癌晚期，肝痛剧烈，身体极度衰竭，对周围事物无兴趣，进入嗜睡状态，病人此时心理反应是属于？', '否认期', '愤怒期', '协议期', '忧郁期', '接受期', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('酒精性肝硬化的病理机制是？', '引起肝门静脉扩张', '可直接损伤肝细胞', '干扰酶的合成', '收缩肝内血管', '阻碍胆汁分泌', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('可导致消化性溃疡的病原菌是？', '衣原体', '链球菌', '冠状病毒', '支原体', '幽门螺杆菌', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('甲状腺功能亢进患者的大便次数多，是因为？', '肠蠕动过快', '甲状腺素过少', '基础代谢率高 ', '肠痉挛', '内分泌紊乱', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('下列可以导致里急后重的疾病是？', '直肠癌', '胃癌', '食管炎', '肠梗阻 ', '消化性溃疡', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('排出黑粪的疾病一般为？', '痔', '阑尾炎', '胆石症 ', '上消化道出血', '肠结核', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('关于心绞痛与急性心肌梗死疼痛特点的区别，描述正确的是？', '前者痛更重 ', '前者含硝酸甘油有效', '前者更持久', '疼痛性质不同', '疼痛部位不同', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('属于急性心肌梗死的主要原因是？', '感染', '冠状动脉痉挛', '冠状动脉堵塞', '颈动脉供血不足', '主动脉供血不足', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('血管栓塞易发生于二尖瓣狭窄患者是因为？', '体循环障碍', '下肢静脉淤血', '肺动脉淤血', '有感染病史', '心房颤动易致栓子', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('属于主动脉瓣关闭不全的体征是？', '水冲脉', '绌脉', '奇脉', '缓脉  ', '弦脉', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('肺炎球菌性肺炎特征性痰液为？', '黑色', '黄色', '白色', '铁锈色', '鲜红色', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('慢性阻塞性肺气肿失代偿期最主要的表现是？', '充血性心力衰竭', '肥厚型心肌病', 'Ⅰ型呼吸衰竭', '心包炎', 'Ⅱ型呼吸衰竭', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('硝苯地平可降低血压，其药理作用是？', '减少水、钠潴留', '抑制肾素释放', '阻止钙离子进入心肌细胞', '抑制血管紧张素Ⅱ产生', '阻止β受体', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('下面属于支气管哮喘发作的呼吸形式是？', '深大呼吸', '吸气性呼吸困难', '呼气性呼吸困难', '混合性呼吸困难', '点头式呼吸', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性白血病患者，发热38℃，主要原因是？', '感染', '吸收热', '化疗后反应', '白细胞破坏', '体温调节中枢受损', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('关于高渗性脱水的病例特点正确的是？', '体液以失钠为主', '体液以失水为主', '体液以失钾为主', '体液以失磷为主', '体液以失镁为主', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('抗肿瘤药氟尿嘧啶属于？', '生物碱类', '肿瘤疫苗', '抗生素类', '抗代谢类 ', '抗激素类', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('严重挤压伤导致肾衰竭的原因属于？', '肾前性', '心源性 ', '肾性  ', '肾前性及肾后性', '肾性及肾后性', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('胃、十二指肠溃疡大出血最好发的部位分别是？', '胃幽门和十二指肠球部前臂', '胃大弯和十二指肠升部', '胃窦和十二指肠球部前臂', '胃小弯和十二指肠球部后壁', '胃贲门和十二指肠球部', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('良性肿瘤于恶性肿瘤的根本区别是？', '与周围组织粘连与否', '细胞分化程度', '有无包膜', '表面光滑程度', '活动程度', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('心肺脑复苏时，应用20%甘露醇的主要作用是？', '防治脑水肿', '防治肺水肿 ', '防治酸中毒 ', '防治体循环淤血', '防止高血钾', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('腰麻后去枕平卧旨在避免？', '血压波动', '头晕 ', '呕吐误吸', '头痛  ', '脑水肿', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('颈部急性蜂窝织炎的最大危险是？', '引起纵膈内感染', '继发颅内感染', '窒息', '深部脓肿', '脓毒症', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('高钾血症病人应用钙剂的作用是？', '纠正肌无力', '对抗钾对心肌的抑制作用', '纠正酸碱平衡紊乱', '促进肠蠕动 ', '防止昏迷', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('处理肉芽过度增生的药物是？', '2%硝酸银', '0.9%氯化钠', '10%氯化钠', '0.1%依沙吖啶', '5%过氧化氢', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('在我国，门静脉高压症的主要原因是？', '酒精肝', '布卡综合征', '门静脉海绵窦样变', '胰腺肿瘤压迫', '肝炎后肝硬化', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('脑震荡的病例解剖改变是？', '脑挫伤', '无明显的器质性改变', '脑组织明显水肿', '脑组织萎缩', '脑组织内出血', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('门静脉高压症病人，门腔静脉交通支曲张，这4个交通支除外？', '胃底与食管下段交通支', '直肠下段与肛管交通支', '腹前壁交通支', '腹膜后交通支 ', '脾肾静脉交通支', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('下列骨折中最易引起股骨头坏死的是？', '股骨上段骨折', '股骨颈头下骨折', '股骨颈骨折', '股骨颈基底骨折', '股骨上1/3段骨折', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('属于深二度烫伤特点的是？', '深达真皮浅层', '10天左右愈合', '水疱破后，基底红润', '痛觉迟钝 ', '愈合仅有色素沉着', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('阑尾炎病人麦氏点压痛，该点的体表投影在？', '右髂前上棘与脐连线的中外1/3交界处', '右髂前上棘与脐连线的中内1/4交界处', '左髂前上棘与脐连线的中点', '左髂前上棘与脐连线的中外1/3交界处', '左髂最高点与脐连线的中内1/3交界处', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('股疝易嵌顿，主要是因为？', '病人年龄大', '腹内压过高', '股管解剖特点', '病人多为女性', '骨盆窄小', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('下列哪项是原发性腹膜炎的病因  ', '胃、十二指肠急性穿孔                     ', ' 腹腔内脏损伤   ', '急性阑尾炎穿孔', '病原菌经血行进入腹腔                    ', '胶窄性肠梗阻  ', 'D                        ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('原发性腹膜炎与继发性腹膜炎的主要区别是 ', '腹痛性质不同  ', '腹膜刺激征有无   ', '腹胀程度', ' 腹腔内有无原发性病变', '全身感染现象  ', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性腹膜炎术后，护士在护理过程中应特别注意', '各种管道的护理', '严密观察病情变化 ', '有无腹腔脓肿症状 ', '心理护理', '营养支持', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('以下哪种体位可减少腹腔毒素的吸收 ', '侧卧位', '俯卧位 ', '半卧位', '头低足高位', 'D', NULL, NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性腹膜炎的临床表现不包括', '腹痛 ', '恶心呕吐', ' 高热 ', '休克 ', '肾衰竭', 'E ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性化脓性腹膜炎手术治疗的主要目的是 ', '明确诊断', '去除病因 ', '清洗腹腔', '放置引流 ', '预防腹腔脓肿的发生 ', 'B ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性腹膜炎的最主要体征是', '肠鸣音减弱或消失', '压痛和反跳痛 ', '腹肌紧张', '肝浊音界缩小或消失', '腹式呼吸减弱或消失', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性腹膜炎术后腹腔安置引流管的护理，下列错误的是 ', '术后6h后接通引流管', '妥善固定 ', '保持通畅', '观察引流液性状  ', '记出入量', 'A ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('腹膜炎术后腹腔引流管拔管指征除外 ', '一般情况好转', ' 腹部症状缓解 ', '引流液减少', ' 引流液为稠脓', '腹部体征好转', 'D ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性腹膜炎，病情稳定的卧位是 ', '半卧位 ', '侧卧位', '上半身及下腹各抬高10°一30°', '平卧位 ', '侧卧位', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('继发性腹膜炎的腹痛特点是 ', '阵发性全腹绞痛', '逐渐加重的阵发性腹痛 ', '剧烈持续性全腹痛，原发部位显著', '高热后全腹痛 ', '疼痛与进食有关', 'C ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('腹膜炎的治疗最重要的是 ', '禁食、胃肠减压 ', '   抗生素的联合应用 ', '清理腹腔、吸尽腹腔脓液 ', '有效的腹腔引流 ', '腹膜炎的病灶处理', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性腹膜炎非手术治疗，不正确的是', '一般取半卧位 ', '禁食、胃肠减压 ', '静脉补液 ', '禁止应用止疼剂 ', '应用抗生素', 'D ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性弥漫性腹膜炎最重要的体征是 ', '明显腹胀 ', '叩诊移动性浊音 ', '压痛、反跳痛、肌紧张', '肠鸣音减弱 ', '全身中毒症状 ', 'C ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('引起继发性腹膜炎的最常见的致菌病是', '肺炎球菌', '变形杆菌', '大肠杆菌', '厌氧类杆菌', '链球菌', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性化脓性腹膜炎的最主要症状是', '腹痛', '发热 ', '恶心、呕吐 ', '心慌', '疲乏无力', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('腹膜炎的标志性体征是', '   腹式呼吸减弱或 ', '压痛、反跳痛、腹肌紧张 ', '肠鸣音消失 ', ' 移动性浊音阳性', '明显腹胀', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('继发性腹膜炎的腹痛特点是', '阵发性绞痛 ', '逐渐加重的腹痛', '疼痛与体位无关 ', '先发热后腹痛', '持续性剧烈腹痛，以原发病灶部位为显著', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('最重要的治疗腹膜炎的原则是', '  引流、排出脓性渗出物', '消除引起腹膜炎的病因', ' 禁食、胃肠减压 ', '解除腹痛 ', '减轻中毒症状', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('在生理情况下，人体血浆pH值为_______，过酸或过碱均可干扰血管,内膜的正常代谢和机能，引起静脉炎。', '3.95～6.85 ', '7.35～7.45 ', '6～8', '5～9', NULL, 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('静脉注射化疗药物极易引起血管内皮细胞的损伤，导致静脉炎。发疱剂外渗后可引起组织严重损伤，甚至坏死。下列药物不是发泡剂的是：', '   表阿霉素', '长春新碱', '丝裂霉素 ', '环磷酰胺', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('下列关于输血，错误的是：', '血液品不得加热，禁止随意内加入其他药物。', '输血时严格执行双人核对，包括受血者姓名、床号、住院号、血型（包括Rh因子）、血液成分、用血量、编号、交叉配血试验结果、血液的有效期、质量。', '输血结束后，应冲洗血管通路装置，清除残留在管道中的血液成分。', '血液输注前应在室温下放置30min以上。', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('药液中的微粒对人体存在严重的危害，下列哪项不是：', '血管栓塞', '血栓性静脉炎', '空气栓塞', '热原反应', NULL, 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('以下关于专科护士的描述不正确的是。', '临床护理专家 ', '需要资格认证 ', '  简单的操作者 ', '能在某些领域提供高质量的护理服务', NULL, 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('静脉输液专科护士在以下哪些方面从事静脉输液的技术研究与临床实践。', '体液与电解质 ', '感染控制', '抗肿瘤治疗 ', '以上都是', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('中华护理学会静脉输液专委会成立于（ ）年。', '1997', '1998', '1999', '2001', NULL, 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('(  )年，英国医生William Harvey发展了血液循环理论，奠定了静脉输液治疗的基础。。', '1626', '1628', '1629', '1636', NULL, 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('（   ）年，J.D.Major首次成功完成了人类静脉注射。', '1662', '1628', '1629', '1636', NULL, 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('（      ）年Landsteiner 发现人体不同血液混合时会起反应，此发现引起人类ABO血型系统确认。', '1910', '1900', '1905', '1901', NULL, 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('输血时，为了过滤血液中的纤维凝块，于（    ）年首次使用了过滤器。', '1945', '1946', '1943', '1947', NULL, 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('血管内膜的内皮细胞功能包括（    ）。', '维持血液系统的稳态', ' 隔离循环血液和其他组织 ', ' 调节血液流速', '以上都是', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('在静脉治疗中血管内膜内皮细胞的损伤与下列哪些因素有关(   )。', '机械刺激 ', '微生物 ', ' 刺激性药物 ', '以上都是', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('血管中膜由（   ）组成。', '   弹性纤维和肌纤维 ', '弹性纤维和疏松的结缔组织 ', ' 疏松的结缔组织和肌纤维', ' 疏松的结缔组织和弹性蛋白', NULL, 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES (' 静脉穿刺是否成功与下列哪项因素无关（   ）', '   弹性度 ', '脆性度 ', '充盈度 ', '血管能见度', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('静脉血管的充盈度与下列哪项因素无关（   ）', '   中外膜舒张力 ', '血容量', '适当的压力', '血流速度', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('静脉穿刺时，止血带结扎的时间应小于（    ）分钟。', '1', '1.5', '2', '2.5', NULL, 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('下例哪支血管中有静脉瓣（    ）', '   上肢静脉 ', '主动脉 ', ' 头部静脉 ', '肱动脉', NULL, 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('深静脉穿刺首选（     ）', '   左锁骨下静脉 ', '右锁骨下静脉', ' 颈内静脉', '颈外静脉', NULL, 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('一般静脉治疗首选（     )', '  指背静脉', '手背静脉 ', '肘正中静脉 ', '贵要静脉', NULL, 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('置入PICC首选(     )', '   肘正中静脉', ' 贵要静脉', '头静脉', '锁骨下静脉', NULL, 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('小隐静脉有(     )对静脉瓣。', '   6-7 ', '7-8', '8-9', '9-10', NULL, 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('股静脉不适用于（    )', '   婴幼儿静脉采血', '心导管检查术', '介入手术 ', '一般静脉治疗', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('静脉输液治疗的目的不包括（    ）', '   静脉给药 ', '维持水、电解质、酸碱平衡', '增加医院收入 ', '补充营养', NULL, 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('药物物理性质不包括（   ）', '  药物溶解度', '药物挥发性', '药物熔点 ', '氧化反应', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('发生药剂学相互作用的原因不包括（   ）', ' 溶媒组成的改变', '酸碱度的改变', '   敏化现象的作用', '盐析作用 ', NULL, 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES (' 肝素钠与下列哪种药物有配伍禁忌（     ）', '  阿米卡星', '葡萄糖酸钙 ', '灯盏细辛 ', '思美泰', NULL, 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('思美泰与下列哪种药物有配伍禁忌（    ）', '  易善复', '葡萄糖酸钙', '阿米卡星', '环丙沙星', NULL, 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('药物外渗会引起组织坏死的是（   ）', '  顺铂', '奥沙利铂 ', '氮芥 ', '依托泊苷', NULL, 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('以下药物外渗不会引起组织坏死的是（     ）', '   顺铂 ', '氮芥 ', '长春新碱 ', '紫杉醇', NULL, 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('以下关于皮肤毒性说法正确的是（    ） ', '   Ⅰ度正常 ', 'Ⅱ度水泡、瘙痒', ' Ⅲ度坏死 ', 'Ⅳ度湿性皮炎', NULL, 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('化疗药物外渗后不宜冷敷的药物是（    ）', '   长春花碱类 ', '紫杉醇', '氮芥', '蒽环类', NULL, 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('化疗药物外渗后处理措施不正确的是（   ）', '   立即停止输液 ', '疼痛者给予封闭注射', NULL, ' 硫酸镁湿敷 ', '湿敷温度50-55℃', NULL, NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('化疗药物外渗后可用硫代硫酸钠拮抗的是（    ）。', '  丝裂霉素', '蒽环类', '长春花碱类', '紫衫烷类', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('常见的输液反应有（   ）', '   急性肺水肿', '空气栓塞 ', '水中毒 ', '过敏反应', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('少见的输液反应有（    ）', '   热原反应', '微粒反应', '   空气栓塞', '细菌污染反应', NULL, 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('老年患者血管的特点不包括（     ）', ' 静脉管壁增厚变硬 ', '血管壁脆性增加', '血管弹性低 ', '自发性纤维蛋白溶解度升高', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('哪项不是老年患者的心理特点（     ）', '  焦虑', '恐惧', ' 抑郁', '独立性增强', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('哪项不是儿童患者的心理特点（    ）', '   恐惧 ', '抵触 ', '焦虑和不安全感', '信任', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患儿在静脉穿刺时的行为状态和心理反应分型不包括（   ）', '   主动型 ', '紧张型 ', '强迫型 ', '全面信任型', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患儿输液时无哭闹，能主动配合，属于（    ）', '   主动型', '焦虑型', '强迫型 ', '紧张型', NULL, 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患儿输液时哭声较大，穿刺时躁动较为明显，需有旁人协助，属于（   ）', '  主动型', '焦虑型', '强迫型', '紧张型', 'B', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES (' 患儿输液时哭声严重，需要旁人强行按压后才能穿刺，属于（     ）', '  焦虑', '恐惧', ' 抑郁', '独立性增强', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('关于手卫生，不正确的说法是（     ）', '  手部没有肉眼可见污染时，可使用快速手消毒双手代替洗手', '手部有血液等肉眼可见污染时 ，应用肥皂和流动水洗手', '直接接触患者后，应洗手 ', '接触患者前可不用洗手', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('3岁以下儿童常选用（    ）静脉输液', '  手背静脉', '大隐静脉', '   头皮静脉 ', '颈内静脉', NULL, 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('关于静脉输液穿刺部位消毒范围错误的是（    ）', '   外周静脉直径5cm ', '中心静脉置管直径16cm ', '留置针穿刺直径7cm ', 'PICC置管直径20cm', NULL, 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('标准预防的措施不包括：（     ）', '  执行输液时戴手套 ', '洗手', '   预防锐器刺伤 ', '没明显的污染可不用洗手', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('关于艾滋病病毒职业暴露后预防处理方法不正确的是：（     ）', '  用肥皂和水清洗沾污的皮肤', '用生理盐水冲洗粘膜 ', '轻轻挤压伤口，尽可能挤出损伤处的血液。', '伤口应用2%碘伏浸泡或涂抹消毒', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('艾滋病病毒职业暴露后监测时间描述不正确的是（    ）', '   暴露当天 ', '暴露后第二天', '暴露后第四周', '暴露后第八周', NULL, 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('静脉留置针适用于（    ）', '   需长期输液者', '静脉穿刺困难者 ', '化疗患者', '短期输液', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('卫生部颁布的《消毒技术规范》建议使用的消毒剂不包括：（     ）', '  含有效碘5000mg/L 的碘伏', '医用氯已定 ', '含有效碘500mg/L 的碘伏 ', '2%碘酊和75%酒精', NULL, 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('关于传统消毒法棉棒蘸液量不妥的是 （     ）', '   蘸液量为棉签头端的2/3为宜', '蘸液量为棉签头端1/2为宜 ', '蘸液量不形成水滴滴下为宜', '   蘸液量以消毒时皮肤表面形成极薄的一层消毒液为宜', NULL, 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('碘酊消毒后至少（      ）后行酒精脱碘。', '   5秒', ' 10秒 ', ' 8秒', '20秒', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('络合碘消毒后（     ）秒后再用无菌干棉签擦拭，能达到很好的消毒作用。', '10', '20', '30', '40', NULL, 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('喷雾式消毒法在喷洒药液后（    ）秒内进行静脉穿刺。', '43393', '15-25 ', ' 25-35', ' 20-25', NULL, 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('置入经皮动脉导管不适宜选择的血管是（    ）。', '   桡动脉 ', '股动脉 ', '肱动脉', '颈动脉', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('血液透析导管留置时间是（     ）小时.', '20—30', '35—45', '48—72', '72—96', NULL, 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('留置针常规（   ）小时更换。', '  24-48', '48-72', ' 60-72 ', '72-96', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('拔除PICC导管后错误的是（     ）', '  确定完整性', '防止空气栓塞', '覆盖无菌纱布', '经严格消毒后可以再次置入', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('置入式静脉输液港最严重的并发症是（    ）。', '  导管夹闭综合征 ', ' 纤维蛋白鞘形成', ' 血栓', ' 导管堵塞', NULL, 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('外周动脉导管应每(     )小时更换一次。', '24', '48', '72', '96', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('导致下肢静脉曲张的主要病因是', '原发性深静脉办膜关闭不全 ', '  深静脉血栓形成 ', '动静脉瘘', '下肢运动减少', '  静脉壁软弱、静脉办膜缺陷以及浅静脉内压力持续升高', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('间歇性跛行常见于', '血栓闭塞性脉管炎', '下肢外伤恢复期 ', '下肢静脉曲张早期', '急性下肢深静脉血栓形成', '血栓性静脉炎', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('决定下肢静脉曲张能否手术治疗的主要检查是', 'Perthes试验', 'Trendelcnburg试验', 'Buergr试验', '腰交感神经阻滞试验 ', 'Pratt试验', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('以下不符合肢体血运障碍的临床表现是', '动脉搏动减弱', '指尖苍白', '肢体肿胀', '局部麻木刺痛 ', '指尖温度升高', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('促使下肢静脉血回流心脏的因素不包括', '  胸腔内负压 ', '下肢肌收缩', '  有深浅静脉与动脉伴行 ', '心脏的搏动', '下肢静脉的单向阀门作用', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('陈先生，65岁。患左下肢静脉曲张20年，行大隐静脉高位结扎，加小腿静脉分段结扎。术后3小时下床行走时，小腿处伤口突然出血不止。紧急处理应 ', '就地包扎 ', '指压止血 ', '用止血带 ', '钳夹止血 ', '平卧，抬高患肢，加压包扎 ', 'E ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('对下肢静脉曲张病人伴小腿溃疡者正确的处理方法是 ', '先手术后治疗溃疡', '必须待溃疡治愈后再手术 ', '溃疡面植皮', '先换药，炎症消退后再手术 ', '结扎大隐静脉同时植皮', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('下肢静脉曲张后护理哪项是错误的', '抬高患肢', '使用弹力绷带 ', '术后鼓励早期下床活动', '不能做足背伸屈运动 ', '注意观察有无局部出血、感染', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('下肢静脉曲张手术前皮肤准备范围是', '按患侧腹股沟区手术范围，包括同侧整个下肢至足趾 ', '准备大腿内侧 ', '按患侧腹股沟区手术范围准备 ', '准备整个大腿． ', '准备曲张部分的皮肤 ', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('细菌性肝脓肿的主要临床症状为', '恶心.呕吐 ', '寒战，高热，肝肿大伴疼痛 ', '局部皮肤凹陷性水肿', '出现黄疸', '可见右膈升高、运动受限', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('关于细菌性肝脏脓肿下列叙述正确的是', '大部分是胆源性肝脏肿 ', '致病菌多为G十球菌', '股液多为棕褐色 ', '多由于溃疡性结肠炎所致 ', '手术引流是唯一有效的方法 ', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性.33岁，高热，右上腹痛7天。 B型超声波和CT检查提示肝脏肿，曾有胆道感染病史。引起该疾病的最可能原因是', '胆道化脓性感染', '坏瘟性阑尾炎 ', '开放性肝损伤', '右侧踊下且在肿', '肝包虫病 ', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性，36岁，因急性阑尾炎入院，人 院后拒绝手术.予以抗感染治疗后.出现寒战、高热、右上腹痛。体格检查:急性病容，巩膜黄疸，右上腹压痛.肝肿大，肝区叩击痛明显。实验室检查白细 胞数20 X 10^9/L，中性粒细胞比例 0.90 B型超声波检查提示肝占位病变。该患者可能的诊断是', '原发性肝癌', '继发性肝癌', '阿米巴性肝脏肿', '肝囊肿', '细菌性肝脏肿', 'E ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('普查和诊断胆道疾病的首选检查方法是 ', 'X线平片', ' B超', 'CT', 'DMRI', ' ERCP', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('B超检查胆囊前应常规禁食', '3小时', 'B4小时', ' 6小时', '8小时 ', ' 12小时', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('PTC术后应平卧', ' 2~3小时', ' 4~6小时', '8~ 10小时', '10~12小时', '24~36小时', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('经皮肝穿刺胆道造影(PTC)检查后，应重点观察', '呼吸、体温、意识', '血压、腹膜刺激征 ', '肠鸣音、肠蠕动波 ', '腹泻、呕吐、黄疸 ', '肝浊音界、腹胀 ', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('经皮肝穿刺胆道造影(PTC)术后最常见的并发症是', '呼吸困难', '内出血', '胰腺炎 ', '感染性休克 ', '肝性脑病 ', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('ERCP检查后应特别注意监测', '肝功能', '肾功能', '凝血酶原时间', '凝血因子', '血尿淀粉酶', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('腹部CT应于检查前多少时间口服泛影葡胺', 'l0分钟', '5分钟', '30分钟', '60分钟', ' 90分钟', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES (' MRI检查患者应取下所佩戴的哪类物品', '金属物品', '塑料制品 ', '橡胶制品', '宝石', '玻璃制品', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('T管造影后应开放引流多少小时以上', '4小时', '8小时', '10小时', '12小时', '24小时 ', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('放射性核素显像检查胆囊前应 ', '禁食4小时', '禁食8小时', '禁食12小时', '常规进早餐', '避免进高脂肪餐', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('在作碘过敏实验时,下列哪项反应于碘过敏无关：', '荨麻病 ', '黏膜水肿', '分泌物增多', '喉头水肿', '头痛', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('以下哪项不是急性胆囊炎的特征：', '右上腹痛', '疼痛向右肩部放射', '墨非征阳性', '可触及肿大胆囊', '黄疸明显', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('形成胆红素结石的主要原因是', '代谢异常', '反复胆道感染', '胆囊功能异常', '致石基因', '环境因素 ', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('墨菲氏征阳性见于', '急性阑尾炎　', '急性胆管炎　', '急性胆囊炎　', '急性胰腺炎', '胃十二指肠溃疡急性穿孔', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES (' Charcot三联征表现是 ', '腹痛、畏寒发热、呕吐 ', '腹痛、黄疸、胆囊肿大 ', '腹痛、寒战高热、黄疸', '腹痛、寒战高热、低血压 ', '腹痛、黄疸、休克', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('\"白胆汁\"见于', '急性单纯性胆囊炎', '化脓性胆囊炎 ', '坏疽性胆囊炎', '胆囊穿孔', '胆囊积液', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性重症胆总管炎病人梗阻原因主要是', '胆管结石???', '胆管畸形???', '胆管肿瘤???', '胆道狭窄???', '胆道蛔虫??', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性胆囊炎引起的腹痛常发生于', '睡眠时', '剧烈运动时', '空腹时', '油腻餐后', '紧张工作时 ', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性胆囊炎在非手术治疗期间若出现胆囊穿孔最主要的护理措施是 ', '做好紧急手术的准备', '药物止痛', '非药物止痛', '物理降温', '药物降温', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('多器官功能衰竭综合征并发于 ', '急性单纯性胆管炎 ', '急性梗阻性化脓性胆管炎 ', '急性胆管炎', '亚急性化脓性胆管炎 ', '慢性梗阻性胆管炎 ', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('AOSC的临床表现为', 'Charcot三联征', 'Reynolds五联征', 'MODS', 'Murphy征', 'Mirizzi综合征', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性梗阻性化脓性胆管炎最关键的治疗是', '输液输血', '静滴大量抗生素', '纠正酸中毒', '营养支持', '胆道减压手术', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性病人,60岁，患胆石症多年，2天前因腹痛寒战,高热和黄疸发作，经门诊用抗生素,输液治疗无效,今日住院护理中发现病人意志不清,血压10.5/8kpa(80/60mmHg),应考虑：', '急性坏疽性胆囊炎', '急性梗阻性化脓胆管炎 ', '胆总管结石症', '胆道蛔虫半感', '胆囊穿孔腹膜炎', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('梁先生，60岁，前日进油腻食物后始感右上腹不适，后为剧痛，并向右肩部放射，伴恶心、呕吐、畏寒、发热，尿呈浓茶色，巩膜黄染，检查：病人表情淡漠，脉搏120次／min，血压9.3／6.6kPa．', '急性阑尾炎', '急性胰腺炎', '急性胆囊炎', '急性重症胆管炎', '急性胃肠炎', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性，42岁。因“急性梗阻性化脓性胆管炎”，急诊入院，患者寒战、高热， 体温高达41°C，脉搏112次/分,血压 85/65mmHg，其休克类型是 ', '感染性休克', '低血容量性休克 ', '心源性休克', '神经性休克', '过敏性休克', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性，41岁，在ERCP检查后出现 腹部持续性疼痛,血清淀粉酶检查超过正常值.应考虑', '急性胆管炎', '急性胃炎 ', '急性肠炎', '急性胰腺炎', '急性胆管梗阻 ', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性.3岁.因慢性胆囊炎在门诊预约进行胆囊造影检查.护士为其讲解检查的方法.下列错误的是 ', '检查前一日中午进高脂肪餐，使胆囊排空 ', '检查前一日晚餐进无脂肪、低蛋白、 高糖', '晚餐后口服造影剂.禁食、禁烟至次日晨 ', '检查当日早餐进清淡饮食.可少量饮水 ', '第一次摄片如胆囊显影良好则进高 脂肪餐,30分钟后再摄片', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者女性.45岁。经检查诊断为急性胆囊炎胆石症并梗阻性化服性胆管炎.患者血压偏低.躁动不安.最好的处理是 ', '立即给镇静剂、输液，给升压药及大量抗生素保守治疗 ', '快速输液纠正水电解质失衡.等待 休克恢复再手术 ', '短时间的术前准备加胆总管探查引流术', '立即行单纯胆囊造口手术 ', '立即行胆囊切除术及胆总管切开探 查术 ', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性.40岁,急诊人院.神志不清. 出冷汗.脉搏细数.血压80/ 45mmHg. 诊断为“急性梗阻性化服性胆管炎”其体位应取', '半坐卧位', '坐位', '头低足高位', '头高足低位', '任意卧位', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女性病人，50岁，患胆石症多年，3天前因腹痛、寒战、高热和黄疸发作，经门诊用抗生素输液治疗无效，今日住院。护理中发现病人神志不清，血压10.5/6.7kpa,化验：白细胞12.4×109/L,核左移。该病人的临床诊断考虑：', '急性坏疽性胆囊炎 ', '胆总管结石 ', '胆道蛔虫半感染', '急性重症胆管炎 ', '胆囊穿孔腹膜炎', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女性病人，50岁，患胆石症多年，3天前因腹痛、寒战、高热和黄疸发作，经门诊用抗生素输液治疗无效，今日住院。护理中发现病人神志不清，血压10.5/6.7kpa,化验：白细胞12.4×109/L,核左移。该病人此时的治疗关键的哪一项', '快速补充血容量', '纠正酸中毒', '应用大剂量有效抗生素 ', '注射维生素K', '及时进入手术', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者女性，45岁。因急性胆囊炎入院， 给予抗感染、对症支持治疗,今晨输液后30 分钟出现发冷、寒战和发热，测体温38. 5°C。该患者可能发生了输液反应中的 ', '过敏反应', '急性肺水肿', '空气栓塞', '发热反应', '静脉炎 ', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者女性，45岁。因急性胆囊炎入院， 给予抗感染、对症支持治疗,今晨输液后30 分钟出现发冷、寒战和发热，测体温38. 5°C。护士在抢救护理患者时，提供的措施中不妥的是', '注意保暖', '密切观察体温变化 ', '严格执行无菌操作', '对症进行药物治疗', 'E将剩余溶液丢弃 ', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性，36岁，反复右上腹痛、寒战、黄疸5年，此次发病后黄疸持续不退。体检示:体温39. 5°C，脉搏122次/分钟，血压 125/85mmHg。右上腹压痛，肌紧张。实验室检查: WC15. 5 X 109/L中性粒细胞 0.85。血清总胆红素132μmol／L，谷丙转氨酶175U/L。 B超提示肝外胆管扩张，内有强光团伴声影。导致该患者腹痛的原因是', '胆囊剧烈收缩 ', '结石梗阻致胆总管痊挛和压力增高 ', '结石直接损伤胆囊 ', '结石直接损伤胆总管 ', '胃及十二指肠痊挛', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性，36岁，反复右上腹痛、寒战、黄疸5年，此次发病后黄疸持续不退。体检示:体温39. 5°C，脉搏122次/分钟，血压 125/85mmHg。右上腹压痛，肌紧张。实验室检查: WC15. 5 X 109/L中性粒细胞 0.85。血清总胆红素132μmol／L，谷丙转氨酶175U/L。 B超提示肝外胆管扩张，内有强光团伴声影。该患者的黄疸程度取决于 ', '梗阻的程度', '肝功能情况 ', '结石的种类', '有无并发症', '患者的肤色 ', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性，36岁，反复右上腹痛、寒战、黄疸5年，此次发病后黄疸持续不退。体检示:体温39. 5°C，脉搏122次/分钟，血压 125/85mmHg。右上腹压痛，肌紧张。实验室检查: WC15. 5 X 109/L中性粒细胞 0.85。血清总胆红素132μmol／L，谷丙转氨酶175U/L。 B超提示肝外胆管扩张，内有强光团伴声影。 该患者已出现哪个器官功能受损', '肾', '肝 ', '心', '脑', '胃', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性，36岁，反复右上腹痛、寒战、黄疸5年，此次发病后黄疸持续不退。体检示:体温39. 5°C，脉搏122次/分钟，血压 125/85mmHg。右上腹压痛，肌紧张。实验室检查: WC15. 5 X 109/L中性粒细胞 0.85。血清总胆红素132μmol／L，谷丙转氨酶175U/L。 B超提示肝外胆管扩张，内有强光团伴声影。 以下对该患者的护理诊断哪项不妥 ', '疼痛', '体温过高', '营养失调', '知识缺乏 ', '有皮肤完整性受损的危险 ', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性，36岁，反复右上腹痛、寒战、黄疸5年，此次发病后黄疸持续不退。体检示:体温39. 5°C，脉搏122次/分钟，血压 125/85mmHg。右上腹压痛，肌紧张。实验室检查: WC15. 5 X 109/L中性粒细胞 0.85。血清总胆红素132μmol／L，谷丙转氨酶175U/L。 B超提示肝外胆管扩张，内有强光团伴声影。若对该患者行手术治疗后，留置T管的护理措施哪项不正确 ', '妥善固定T管 ', '定期由近端向远端挤捏 ', '每日更换引流袋', '每日冲洗1次', '每日记录引流量 ', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性.41岁.反复上腹疼痛10余年: 因症状加重伴皮肤、巩膜黄染、畏寒、发热2天入院。体检示:神志淡漠，体温39. 5°C，脉搏125次/分钟，血压80/50mHgo上腹压痛. 肌紧张。实验室检查: WBC 25 X 109 /L，中性粒细胞O.95。血清总胆红素209μmol／L，谷丙转氨酶310U/L。 B超提示肝外胆管扩张，内有强光团伴声影。对该患者首先应考虑', '感染性休克', '肝性脑病', '胰腺炎', '重症肝炎', '脑血管意外', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性.41岁.反复上腹疼痛10余年: 因症状加重伴皮肤、巩膜黄染、畏寒、发热2天入院。体检示:神志淡漠，体温39. 5°C，脉搏125次/分钟，血压80/50mHgo上腹压痛. 肌紧张。实验室检查: WBC 25 X 109 /L，中性粒细胞O.95。血清总胆红素209μmol／L，谷丙转氨酶310U/L。 B超提示肝外胆管扩张，内有强光团伴声影。处理原则是', '密切观察病情变化', '择期手术', '非手术治疗', '中药治疗 ', '紧急手术解除胆道梗阻并引流', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性.41岁.反复上腹疼痛10余年: 因症状加重伴皮肤、巩膜黄染、畏寒、发热2天入院。体检示:神志淡漠，体温39. 5°C，脉搏125次/分钟，血压80/50mHgo上腹压痛. 肌紧张。实验室检查: WBC 25 X 109 /L，中性粒细胞O.95。血清总胆红素209μmol／L，谷丙转氨酶310U/L。 B超提示肝外胆管扩张，内有强光团伴声影。该患者目前最重要的护理诊断或问题是', '组织灌注量改变', '体温过高', '营养失调', '知识缺乏', '活动无耐力 ', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性.41岁.反复上腹疼痛10余年: 因症状加重伴皮肤、巩膜黄染、畏寒、发热2天入院。体检示:神志淡漠，体温39. 5°C，脉搏125次/分钟，血压80/50mHgo上腹压痛. 肌紧张。实验室检查: WBC 25 X 109 /L，中性粒细胞O.95。血清总胆红素209μmol／L，谷丙转氨酶310U/L。 B超提示肝外胆管扩张，内有强光团伴声影,若对该患者拟行手术治疗.术前护理措施的关键在于', '观察病情', '有效止痛 ', '肠道准备', '抗休克治疗', '皮肤准备', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性.41岁.反复上腹疼痛10余年: 因症状加重伴皮肤、巩膜黄染、畏寒、发热2天入院。体检示:神志淡漠，体温39. 5°C，脉搏125次/分钟，血压80/50mHgo上腹压痛. 肌紧张。实验室检查: WBC 25 X 109 /L，中性粒细胞O.95。血清总胆红素209μmol／L，谷丙转氨酶310U/L。 B超提示肝外胆管扩张，内有强光团伴声影,引起该患者感染的最可能的病原菌为', '金黄色葡萄球菌', '链球菌', '肠道病毒', '胆管病毒', '大肠杆菌', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性.41岁.反复上腹疼痛10余年: 因症状加重伴皮肤、巩膜黄染、畏寒、发热2天入院。体检示:神志淡漠，体温39. 5°C，脉搏125次/分钟，血压80/50mHgo上腹压痛. 肌紧张。实验室检查: WBC 25 X 109 /L，中性粒细胞O.95。血清总胆红素209μmol／L，谷丙转氨酶310U/L。 B超提示肝外胆管扩张，内有强光团伴声影,该患者发病的病理基础为', '胆道畸形', '胆道扩张 ', '胆道梗阻', '胆囊梗阻', '胆囊功能失调', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者女性，56岁，有慢性胃病史多年.伴消化不良，12年前曾行胆囊切除术。入院前2日有寒战、高热、右上腹持续性疼痛.伴巩膜轻度黄染。入院时患者神志淡漠.T : 39.1°C. P 98次/分钟，R 24次/分钟.BP 80/50mmHg;体检:右上腹轻压痛，肌卫(十) ;血常规WBC 16 X 109/L，中性粒细胞比例0.85 ，B超示胆总管结石。患者应考虑为', '急性梗阻性化脓性胆管炎 ', '胃溃疡穿孔', '急性阑尾炎', '右侧输尿管结石', '急性肠扭转', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者女性，56岁，有慢性胃病史多年.伴消化不良，12年前曾行胆囊切除术。入院前2日有寒战、高热、右上腹持续性疼痛.伴巩膜轻度黄染。入院时患者神志淡漠.T : 39.1°C. P 98次/分钟，R 24次/分钟.BP 80/50mmHg;体检:右上腹轻压痛，肌卫(十) ;血常规WBC 16 X 109/L，中性粒细胞比例0.85 ，B超示胆总管结石。目前最主要的处理应为', '纠正水、电解质紊乱 ', '使用足量有效的广谱抗生素 ', '恢复血容量 ', '改善和维持主要器官的功能', '抗休克治疗的同时，紧急手术', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者女性，56岁，有慢性胃病史多年.伴消化不良，12年前曾行胆囊切除术。入院前2日有寒战、高热、右上腹持续性疼痛.伴巩膜轻度黄染。入院时患者神志淡漠.T : 39.1°C. P 98次/分钟，R 24次/分钟.BP 80/50mmHg;体检:右上腹轻压痛，肌卫(十) ;血常规WBC 16 X 109/L，中性粒细胞比例0.85 ，B超示胆总管结石。该病的常见梗阻原因是', '胆道先天性畸形', '胆道炎性狭窄', '膜头癌', '胆道结石', '胆管癌', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('有关胆道疾病的护理叙述错误的是 ', '饮食应以低脂及富含蛋白质和维生素的食物为主 ', '阻塞性黄症患者应注意有无出血倾向', '对肝功能明显受损的患者忌用吗啡、巴比妥类药物 ', '对静脉胆道造影的患者需做腆过敏试验 ', '患者若短期内腹痛缓解，高热黄疸逐渐消退，即可出院修养，无需进一步检查和治疗', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('下列哪类患者常出现症状与体征不相符 ', '胆囊结石', '胆道结石', '胆道蛔虫病', '胆管癌', '胆囊癌', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('胆道蛔虫病腹痛的特点', '阵发性腹部绞痛', '持续性腹部胀痛 ', '持续性绞痛伴阵发性加重 ', '阵发性钻顶样绞痛', '刀割样腹痛 ', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女性病人，8岁，阵发性剑突下钻顶样疼痛半天，伴有恶心呕吐,既往有类似的发病史,查体体温37.50Ｃ，剑突下深压痛,无腹肌紧张,拟诊为：', '肝内胆管结石 ', '胆道蛔虫病', '胆总管结石 ', '急性胆管炎 ', '胆囊结石', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性.21岁.因突发剑突下钻顶样 剧烈疼痛而入院.自诉疼痛呈间歇性.发作日疼痛剧烈.辗转不安，大汗淋漓.可突然自行缓解，缓解期无任何症状。体检示剑突下有轻度深!王痛。WBC 11.5X 10^9 /L。根据该患者的临床表现,应考虑为', '急性胆囊炎', '急性胆管炎 ', '胆囊穿孔', '胆道蛔虫症', '慢性胆囊炎', 'D ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性.21岁.因突发剑突下钻顶样 剧烈疼痛而入院.自诉疼痛呈间歇性.发作日疼痛剧烈.辗转不安，大汗淋漓.可突然自行缓解，缓解期无任何症状。体检示剑突下有轻度深!王痛。WBC 11.5X 10^9 /L。为明确诊断.应首选哪项检查', 'X线腹部平片', 'CT', 'B超', 'MRI', 'PTC', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性.21岁.因突发剑突下钻顶样 剧烈疼痛而入院.自诉疼痛呈间歇性.发作日疼痛剧烈.辗转不安，大汗淋漓.可突然自行缓解，缓解期无任何症状。体检示剑突下有轻度深!王痛。WBC 11.5X 10^9 /L。血常规检查可见', '嗜碱性粒细胞比例升高', '嗜酸性粒细胞比例升高 ', '中性粒细胞比例升高 ', '淋巴细胞升高', '血小板升高', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性.21岁.因突发剑突下钻顶样 剧烈疼痛而入院.自诉疼痛呈间歇性.发作日疼痛剧烈.辗转不安，大汗淋漓.可突然自行缓解，缓解期无任何症状。体检示剑突下有轻度深!王痛。WBC 11.5X 10^9 /L。应采取哪项处理方案', '急诊手术', '择期手术', 'ERCP术', '中药治疗', '非手术治疗', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('胆总管切开取石术后腹腔引流液呈\"胆 汁\"样，应考虑', '正常引流液', '低蛋白血症', '胆瘘', '胰瘘 ', '肠瘘', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('坐位或站立时引流袋的位置应为', '不可高于腹部手术切口 ', '不可高于腋中线', '不可高于腋前线', '不可高于腋后线', '可在任意位置', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('胆道手术后.T管一般留置的时间是', ' 5天', ' 7天', '14天', ' 20天', ' 30天', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('胆道术后患者在T管拔管前，下列护理措施必不可少的是', '无菌盐水冲洗', 'B超', '抗生素', '试验管夹管1~2天 ', '检查血胆红素', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('胆总管下端有阻塞时，T管引出的胆汁为', '量过多', '量过少，色深', '浑浊', '量少而色淡', '棕色稠厚而清 ', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('胆总管引流术后，T管引流胆汁过多常提示', '肝细胞分泌亢进 ', '胆管分涩、胆汁过多 ', '胆囊浓缩功能减退', '胆道下端梗阻', '十二指肠反流', 'D ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('胆总管探查及引流术适用于下列哪些情况', '胆总管增粗、增厚? ', '有梗阻性黄疸史 ?', '胆管炎 ?', '有慢性胰腺炎史', '胆总管结石', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性.行胆总管切开取石、T管引流术。术后第3天，护士查房时发现T管无胆汁流出.患者诉腹部胀痛。首先应', '用无菌生理盐水冲洗T管', '检查T管是否受压扭曲 ', '用注射器抽吸T管 ', '准备T管造影 ', '继续观察，暂不处理', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者女性.56岁。右上腹刀割样绞痛.发热、黄瘟间歇性反复发作.最可能的诊断是', '胰头癌', '急性传染性肝炎', '肝癌', '胆总管结石', '阿米巴肝脓肿', 'D ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者女性.45岁·行胆总管切开取石、T管引流术后，T管引流液每天均在 2000ml左右，提示', '胆汁量过少', '阻汁量正常', '胆管下端梗阻', '胆管上端梗阻', '胆管中部梗阻', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者女性.35岁.诊断为肝外胆管结 石\"出现重度黄胆及皮肤瘙痒.对皮肤 的护理措施不恰当的是 ', '温水擦洗皮肤', '遵医嘱用药', '保持皮肤清沾', '防止皮肤损伤', '可用手抓挠 ', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('韩女士，39岁，胆总管切开引流术后，T形管引流2周，拔管前先试行夹管1～2d，应注意观察的内容是', '腹痛、发热、黄疸', '饮食情况 ', '睡眠、体重 ', '引流口有无渗液', '神志、血压、脉搏', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('赵先生，行胆总管切开取石、“T”管引流术。术后第3天，护士查房时发现“T”管无胆汁流出，病人诉腹部胀痛。首先应 ', '用无菌生理盐水冲洗“T”管', '检查“T”管是否受压扭曲', '用注射器抽吸“T”管', '准备“T”管造影', '继续观察，暂不处理 ', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女性，43岁，行胆总管切开取石。T形管引流术后12天，体温正常，无黄疸，每天引流透明黄色胆汁50ml.病人下床活动时不慎将T形管脱出，处理应是', '做好术前准备 ', '从瘘口插入T形管或设置引流管支持 ', '半卧位，胃肠减压', '输液，应用抗生素 ', '观察病情，暂不作处理', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性.35岁.在全麻下行胆总管切开取石、T管引流术，腹腔放置引流管。术毕返回病房.神志清醒。体检示:脉搏95次/分 ,血压125/170mmHg.腹腔引流液100ml。回病房1小时后腹腔引流液为210时，呈血性:脉搏110次分钟,血压105/65mmHg唇稍干燥。应重点观察下列哪项指标的变化', '患者体温', '补液速度', 'T管引流量', '腹腔引流量和色', '呼吸频率 ', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性.35岁.在全麻下行胆总管切开取石、T管引流术，腹腔放置引流管。术毕返回病房.神志清醒。体检示:脉搏95次/分 ,血压125/170mmHg.腹腔引流液100ml。回病房1小时后腹腔引流液为210时，呈血性:脉搏110次分钟,血压105/65mmHg唇稍干燥。根据该患者的病情.应疑为', '胆道出血', '腹腔内出血', '胆瘘', '呼吸困难', '消化道出血', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性.35岁.在全麻下行胆总管切开取石、T管引流术，腹腔放置引流管。术毕返回病房.神志清醒。体检示:脉搏95次/分 ,血压125/170mmHg.腹腔引流液100ml。回病房1小时后腹腔引流液为210时，呈血性:脉搏110次分钟,血压105/65mmHg唇稍干燥。此时应采取哪项护理措施', '立即报告医师', '记录引流量和色 ', '监测体温变化', '妥善固定引流管', '观察呼吸变化 ', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性.35岁.在全麻下行胆总管切开取石、T管引流术，腹腔放置引流管。术毕返回病房.神志清醒。体检示:脉搏95次/分 ,血压125/170mmHg.腹腔引流液100ml。回病房1小时后腹腔引流液为210时，呈血性:脉搏110次分钟,血压105/65mmHg唇稍干燥。该患者目前最主要的护理诊断或问题是', '疼痛', '焦虑', '体液过多', '体液不足', '活动无耐力 ', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者女性.31岁.行胆总管切开取石、T 管引流术，目前为术后第10天.T管引流液每日200ml左右。无腹胀、腹痛，手术切口已拆线。体检示:皮肤及巩膜黄疸逐渐消退，体温36.5°C.脉搏80次/分钟.血压105/ 60mmHg。根据患者术后时间及病情.可考虑', '拔除T管', '带T管出院 ', '继续保留T管1周', '继续保留T管2周 ', '继续保留T管6周 ', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者女性.31岁.行胆总管切开取石、T 管引流术，目前为术后第10天.T管引流液每日200ml左右。无腹胀、腹痛，手术切口已拆线。体检示:皮肤及巩膜黄疸逐渐消退，体温36.5°C.脉搏80次/分钟.血压105/ 60mmHg。拔除T管前应试行夹管', '12小时', '24/', '2~3天', '4~5天', '7天', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者女性.31岁.行胆总管切开取石、T 管引流术，目前为术后第10天.T管引流液每日200ml左右。无腹胀、腹痛，手术切口已拆线。体检示:皮肤及巩膜黄疸逐渐消退，体温36.5°C.脉搏80次/分钟.血压105/ 60mmHg。拔除T管后应重点观察有无下列哪项并发症', '肠瘘', '胰瘘 ', '胆瘘', '胃瘘', '腹腔脓肿 ', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者女性.31岁.行胆总管切开取石、T 管引流术，目前为术后第10天.T管引流液每日200ml左右。无腹胀、腹痛，手术切口已拆线。体检示:皮肤及巩膜黄疸逐渐消退，体温36.5°C.脉搏80次/分钟.血压105/ 60mmHg。对该患者的健康教育重点为', '定期随访', '活动量指导 ', '休息时间安排', '饮食指导', '注意腹壁切口的愈合 ', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性.65岁.诊断为胆道泥沙样结 石.拟行胆总管空肠RouxenY吻合术。 WBC 11 5X109/L中性粒细胞O. 75。血清 总胆红素162μmol/L.谷丙转氨酶215U/L 凝血酶原时间(PT)80s,在抗感染的基础上.下列措施最有针对性的是', '应用白蛋白', '补充电解质', '注射维生素K1', '增加营养', '输血', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性.65岁.诊断为胆道泥沙样结 石.拟行胆总管空肠RouxenY吻合术。 WBC 11 5X109/L中性粒细胞O. 75。血清 总胆红素162μmol/L.谷丙转氨酶215U/L 凝血酶原时间(PT)80s,术前多久开始口服肠道抗生素', '1天', '3天', '5天', '7天', '10天', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性.65岁.诊断为胆道泥沙样结 石.拟行胆总管空肠RouxenY吻合术。 WBC 11 5X109/L中性粒细胞O. 75。血清 总胆红素162μmol/L.谷丙转氨酶215U/L 凝血酶原时间(PT)80s,患者口服灌肠液的时间为', '术前5日晚', '术前4日晚 ', '术前3日晚', '术前2日晚', '术前1日晚 ', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性.65岁.诊断为胆道泥沙样结 石.拟行胆总管空肠RouxenY吻合术。 WBC 11 5X109/L中性粒细胞O. 75。血清 总胆红素162μmol/L.谷丙转氨酶215U/L 凝血酶原时间(PT)80s,该患者术前还必须进行哪项检查', ' B超', ' MRI', 'ERCP', 'CT', 'ECG', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者女性，56岁.小学文化，诊断为胆囊结石，拟在腹腔镜下行胆囊切除术.当患者得知手术方式后.反复向病友和医务人员打听腹腔镜手术的相关情况。经过积极的术前准，顺利地完成了手术，手术后出现腰背部，肩部疼痛。患者术前主要的护理诊断或问题是', '疼痛', '体温过高', '焦虑', '恐惧', '知识缺乏 ', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者女性，56岁.小学文化，诊断为胆囊结石，拟在腹腔镜下行胆囊切除术.当患者得知手术方式后.反复向病友和医务人员打听腹腔镜手术的相关情况。经过积极的术前准，顺利地完成了手术，手术后出现腰背部，肩部疼痛。 针对上述护理诊断或问题的主要护理措施是', '减轻或控制疼痛', '降低体温 ', '减轻焦虑', '消除恐惧', '提供相关知识', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者女性，56岁.小学文化，诊断为胆囊结石，拟在腹腔镜下行胆囊切除术.当患者得知手术方式后.反复向病友和医务人员打听腹腔镜手术的相关情况。经过积极的术前准，顺利地完成了手术，手术后出现腰背部，肩部疼痛。术后腰背及肩部疼痛的原因是', '手术体位不良所致', '腹腔镜损伤 ', '麻醉后反应', ' CO2产生的碳酸剌激', '组织缺氧', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者女性，56岁.小学文化，诊断为胆囊结石，拟在腹腔镜下行胆囊切除术.当患者得知手术方式后.反复向病友和医务人员打听腹腔镜手术的相关情况。经过积极的术前准，顺利地完成了手术，手术后出现腰背部，肩部疼痛。腰背及肩部疼痛的处理措施是', '解痉', '止痛', '消炎利胆', '微波治疗', '无需特殊处理', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者就诊6小时后出现高热，体温 39.5.C,腹痛加重为持续性剧痛，并出现神志淡漠.呼吸急促，全身发生绀，血压80/ 50mmHg。此时最可能的原因是', '继发急性梗阻性化脓性胆管炎 ', '胆囊穿孔继发腹膜炎 ', '并发急性重症膜腺炎', '并发败血症', 'MODS', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者就诊6小时后出现高热，体温 39.5.C,腹痛加重为持续性剧痛，并出现神志淡漠.呼吸急促，全身发生绀，血压80/ 50mmHg。入院后患者B超检查提示:胆囊结石、 胆总管结石.遂决定行手术治疗。此时应采取的手术方式是', '胆囊切除并胆总管切开引流 ', '胆囊切除并胆总管切开取石引流 ', '胆囊切除井胆总管切开取石.Oddi 括约肌成形 ', '胆囊切除并PTCD引流', ' 胆囊切除并胆总管十二指肠吻合', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者就诊6小时后出现高热，体温 39.5.C,腹痛加重为持续性剧痛，并出现神志淡漠.呼吸急促，全身发生绀，血压80/ 50mmHg。患者手术治疗后放置T型引流管一根， 其目的主要是', '引流渗血、渗液', '预防感染', '观察胆总管压力', '引流胆汁', '确保胆汁合成', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者就诊6小时后出现高热，体温 39.5.C,腹痛加重为持续性剧痛，并出现神志淡漠.呼吸急促，全身发生绀，血压80/ 50mmHg。患者术后第8天.24小时T管引流量为200ml.颜色透明金黄色.无脓无沉渣等.患者黄疸消退，无腹痛、发热，大便颜色正常，此时T管的处理为', '夹管试验', '拔管', 'T管造影，检查T管通畅度', 'T管抬高', '继续引流', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者就诊6小时后出现高热，体温 39.5.C,腹痛加重为持续性剧痛，并出现神志淡漠.呼吸急促，全身发生绀，血压80/ 50mmHg。胆道疾病手术后.患者饮食要求为', '低蛋白、低脂饮食 ', '低糖、低盐、低脂饮食', '低盐、低蛋白、低脂饮食 ', '高蛋白、低脂饮食', ' 高蛋白、低盐、低脂饮食', 'D ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者就诊6小时后出现高热，体温 39.5.C,腹痛加重为持续性剧痛，并出现神志淡漠.呼吸急促，全身发生绀，血压80/ 50mmHg。胆道手术后.发现胆瘘的主要依据为', '腹膜刺激症状', '急腹症表现', '发热、腹痛、黄疸', '急性腹膜炎表现 ', '腹腔引流管引出液的性质和胆红素含量', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者女性.41岁。胆囊结石病史2年. 主诉晚餐后突然出现右上腹阵发性剧烈疼痛.向右肩、背部放射.伴有腹胀、恶心、呕吐等症状。体检示:体温38. 9°C，脉搏112次/ 分钟，血压106/85mmHg。右上腹部有压痛、肌紧张、反跳痛。实验室检查: WBC 10.5 X 109 /L中性粒细胞O.79。 导致该患者突然腹痛的原因是', '胆囊收缩，结石排入十二指肠 ', '结石阻塞胆管下端、引起急性胰腺炎 ', '结石损伤胆囊黏膜 ', '结石损伤十二指肠 ', '结石嵌顿于胆囊颈致胆囊强烈收缩 ', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者女性.41岁。胆囊结石病史2年. 主诉晚餐后突然出现右上腹阵发性剧烈疼痛.向右肩、背部放射.伴有腹胀、恶心、呕吐等症状。体检示:体温38. 9°C，脉搏112次/ 分钟，血压106/85mmHg。右上腹部有压痛、肌紧张、反跳痛。实验室检查: WBC 10.5 X 109 /L中性粒细胞O.79。 该患者的体格检查可出现', 'Charcot三联征', ' Murphy征阳性', 'Reynolds五联征', 'MODS', ' MOF', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者女性.41岁。胆囊结石病史2年. 主诉晚餐后突然出现右上腹阵发性剧烈疼痛.向右肩、背部放射.伴有腹胀、恶心、呕吐等症状。体检示:体温38. 9°C，脉搏112次/ 分钟，血压106/85mmHg。右上腹部有压痛、肌紧张、反跳痛。实验室检查: WBC 10.5 X 109 /L中性粒细胞O.79。 下列哪项护理措施最为关键', '介绍病房环境', '介绍作息时间 ', '介绍饮食', '介绍疾病知识', '做好手术准备 ', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者女性.41岁。胆囊结石病史2年. 主诉晚餐后突然出现右上腹阵发性剧烈疼痛.向右肩、背部放射.伴有腹胀、恶心、呕吐等症状。体检示:体温38. 9°C，脉搏112次/ 分钟，血压106/85mmHg。右上腹部有压痛、肌紧张、反跳痛。实验室检查: WBC 10.5 X 109 /L中性粒细胞O.79。 在非手术治疗期间，减轻疼痛的护理措施不包括', '卧床休息', '胃肠减压 ', '消炎利胆', '注射吗啡', '注射654-2', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者女性.41岁。胆囊结石病史2年. 主诉晚餐后突然出现右上腹阵发性剧烈疼痛.向右肩、背部放射.伴有腹胀、恶心、呕吐等症状。体检示:体温38. 9°C，脉搏112次/ 分钟，血压106/85mmHg。右上腹部有压痛、肌紧张、反跳痛。实验室检查: WBC 10.5 X 109 /L中性粒细胞O.79。 在该患者非手术治疗期间下列哪项饮食指导不妥', '低脂饮食', '少量多餐 ', '不忌油炸食品', '避免过饱', '清淡饮食', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性膜腺炎患者,为减轻疼痛，可协助其采取的卧位是', '去枕平卧', '俯卧', '屈膝侧卧', '头低脚高', '半坐卧位', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性膜腺炎患者禁用的药物是', '阿托品', '哌替啶', '替啶', '吗啡', '施他宁 ', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性膜腺炎，首先升高的是', '血淀粉酶', '尿淀粉酶 ', '血脂肪酶', '血糖', '血钙', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性膜腺炎的首发症状是', '恶心', '发热 ', '腹痛', '休克', '呕吐', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('预防急性胰腺炎有重要意义的措施是', '注意饮食卫生', '经常应用抗生素预防感染', '防治胆道疾病', '经常服用消化酶类药物', '控制糖尿病', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('腹腔双套管护理哪项有错', '灌洗液滴入过程中避免空气进入 ', '引流液开始为暗红色混浊液体 ', '引流管堵塞可用无菌生理盐水冲洗', '保护引流管周围皮肤 ', '引流量减少即可拔管', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性水肿性胰腺炎的临床表现中，下列哪项一般不会发生', '腹痛??? ', '恶心、呕吐', '休克??? ', '腹胀', '腹膜炎体征', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('引起急性胰腺炎的主要病理机制为', '组织细胞破坏??? ', '消化酶缺乏', '胰腺的自我消化??? ', '消化酶生成过多', '?细胞自溶', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('在我国，引起急性胰腺炎的最常见原因是', '?梗阻因素???', '暴饮暴食???', '创伤因素 ', '高脂血症???', '感染因素?', 'A??', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性胰腺炎出现脉率快、腹水呈血性、血压低或休克时，应考虑为C', '?水肿性胰腺炎???', '出血性胰腺炎 ', '出血坏死性胰腺炎???', '胰腺炎合并腹腔感染 ', '胰腺炎合并腹腔内脏器官破裂', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者女性.43岁,中午饱餐后出现上腹 部绞痛.同时向腰背部呈带状放射，持续已6小时。怀疑为急性胰腺炎，此时 最具诊断意义的实验室检查为 ', '白细胞计数', '血清淀粉酶测定 ', '尿液淀粉酶测定', '血清脂肪酶测定', '血清谷丙转氨酶', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者女性.56岁，有胆石症病史15年。 上腹部剧痛4小时.呕吐3次.呕吐物中有胆汁。急诊入院.查血白细胞2X 10^9/L，中性粒细胞0.8，怀疑为急性膜腺炎。护士应严密观察的项目不包括', '生命体征', '神志变化', '2-小时出入量', '血、尿淀粉酶', '大便隐血试验', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者女性，41岁。既往有胆结石.晚餐后突然出现中上腹痛.阵发性加剧，频繁呕吐.呕吐物含胆汁，呕吐后腹痛未减轻，化验血淀粉酶为2500U/L.于今日住院治疗。饮食护理应为', '禁食', '少食多餐 ', '高脂饮食', '低蛋白饮食', '低纤维饮食', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性.36岁。既往有胆结石，今日午餐后突然出现中上腹痛，阵发性加剧，频繁呕吐，呕吐物含胆汁，呕吐后腹痛未减轻，化验血淀粉酶为2500U/L。初步诊断为', '急性胃炎', '急性胰腺炎', '急性胆囊炎 ', '消化性溃殇伴幽门梗阻', '急性肠炎 ', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者女性.56岁，有胆石症病史10年。上腹部剧痛4小时，呕吐3次.呕吐物中有胆汁。急诊入院，查血白细胞2X 10^9/L中性粒细胞0.8，疑为急性膜腺炎.饮食应给予', '禁食', '半流食', '易消化、富含纤维素饮食', '生、冷食物', '流食', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性.47岁。因急腹痛2天，诊断为急性膜腺炎。血淀粉酶2500U/L，血钙1.6mmol/L，主要症状表现为 ', '上腹部持续性疼痛，阵发性剧痛，反射至左肩部', '上腹胀痛伴呕吐、腹泻 ', '间歇性心窝部剧痛伴嗳气 ', '上腹中间或稍偏左疼痛伴脂肪泻 ', '进食后上腹胀痛伴反酸、暖气', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，45岁，饱餐后出现上腹持续性疼痛并向左肩、腰背部放射，伴有恶心呕吐，诊断为急性胰腺炎。入院后行手术治疗，术后腹腔内放置双套管灌洗引流。以下哪项护理措施不正确', '观察记录引流液量、性状', '若管腔堵塞，可用肝素液缓慢冲洗', '保护引流管周围皮肤', '妥善固定，保持引流通畅 ', '维持引流管内一定负压', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女性，54岁，胆源性胰腺炎发作数次，预防其胰腺炎再次发作的最有意义的措施是', '?注意饮食卫生??', '服用抗菌药 ', '经常服用消化酶??? ', '治疗胆道疾病', '控制血糖', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，60岁，进行性黄疸2个月。诊断为胰头癌，行胰十二指肠切除术，术后5天突然出现上腹疼痛，腹腔穿刺抽出含胆汁的液体少许。病人可能出现了膈下脓肿???', '术后急性腹膜炎', '嵌顿性疝???', '胆囊穿孔 ', '胰、空肠吻合口瘘', 'E', NULL, NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女性，50岁，因饱餐后突发上腹痛，伴恶心、呕吐4小时住院，经检查后被诊断为急性水肿性胰腺炎，下列哪项处理不正确', '禁食、胃肠减压??', '手术引流胰周渗出液', '补充液体??', '解痉、止痛', '应用抗菌药', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性，56岁，中午饮酒后突然出现上腹中部剧烈刀割样疼痛，向腰背部呈带状放射。继而呕出胆汁，伴高热。急诊人院体检:急性痛苦面容.全腹疼痛，腹肌紧张。 根据现有资料，该患者最可能的诊断是', '溃疡穿孔', '上消化道出血 ', '急性胆囊炎', '急性胰腺炎', '原发性肝癌', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性，56岁，中午饮酒后突然出现上腹中部剧烈刀割样疼痛，向腰背部呈带状放射。继而呕出胆汁，伴高热。急诊人院体检:急性痛苦面容.全腹疼痛，腹肌紧张。为进一步确诊，首选的检查是 ', '急诊内镜检查', 'B超检查', '血清淀粉酶测定', 'CT检查', 'X线腹部平片 ', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性.36岁.饱食后突感上腹部剧痛，迅即扩展至全腹，伴恶心、呕吐.呕吐后 腹痛无减轻.发病2小时后来院急诊。体 检:痛苦貌.血压85/50mmHg. P 124次/分钟，全腹肌紧张.压痛、反跳痛，肠鸣音消 失，白细胞16 X 109/L.中性粒细胞比例 0.90，既往身体健康，无消化性溃疡史、有胆石症病史考虑最可能为', '急性胰腺炎', '急性胆管炎 ', '急性阑尾炎', '十二指肠溃疡穿孔', '急性肠梗阻', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性.36岁.饱食后突感上腹部剧痛，迅即扩展至全腹，伴恶心、呕吐.呕吐后 腹痛无减轻.发病2小时后来院急诊。体 检:痛苦貌.血压85/50mmHg. P 124次/分钟，全腹肌紧张.压痛、反跳痛，肠鸣音消 失，白细胞16 X 109/L.中性粒细胞比例 0.90，既往身体健康，无消化性溃疡史、有胆石症病史', '静脉胆道造影', '腹部CT检查', '血、尿淀粉酶', '腹腔穿刺', '腹部B超', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性.36岁.饱食后突感上腹部剧痛，迅即扩展至全腹，伴恶心、呕吐.呕吐后 腹痛无减轻.发病2小时后来院急诊。体 检:痛苦貌.血压85/50mmHg. P 124次/分钟，全腹肌紧张.压痛、反跳痛，肠鸣音消 失，白细胞16 X 109/L.中性粒细胞比例 0.90，既往身体健康，无消化性溃疡史、有胆石症病史该患者导致上述疾病的主要诱因为', '急性外伤', '不洁饮食', '暴饮暴食和胆石症', '胆石症', '大量酬酒', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性.36岁.饱食后突感上腹部剧痛，迅即扩展至全腹，伴恶心、呕吐.呕吐后 腹痛无减轻.发病2小时后来院急诊。体 检:痛苦貌.血压85/50mmHg. P 124次/分钟，全腹肌紧张.压痛、反跳痛，肠鸣音消 失，白细胞16 X 109/L.中性粒细胞比例 0.90，既往身体健康，无消化性溃疡史、有胆石症病史,若诊断明确.最先采取的措施是', '禁食、胃肠喊压、抗休克同时使用胰酶抑制剂', '密切观察病情变化 ', '积极抗休克治疗.暂不宜手术 ', '积极抗感染治疗', '解痉镇痛治疗 ', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性.36岁.饱食后突感上腹部剧痛，迅即扩展至全腹，伴恶心、呕吐.呕吐后 腹痛无减轻.发病2小时后来院急诊。体 检:痛苦貌.血压85/50mmHg. P 124次/分钟，全腹肌紧张.压痛、反跳痛，肠鸣音消 失，白细胞16 X 109/L.中性粒细胞比例 0.90，既往身体健康，无消化性溃疡史、有胆石症病史,该患者目前主要的护理诊断不包括', '体液过多', '体液不足', '急性疼痛', '个人应对无效', '焦虑、恐惧', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('消化道出血临床最常见的病因是 ', '胃癌', '急性糜烂性胃炎 ', '消化性溃疡', '胃黏膜脱垂', '促胃液素瘤', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('三腔二囊管压迫止血持续压迫时间最长不超过', '10小时', '12小时', '24小时', '36小时', '72小时', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('消化道出血伴休克时，首要的治疗措施是 ', '禁食', '积极补充血容量 ', '胃镜止血', '介入治疗', '气囊管压迫止血 ', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('原发性腹膜炎与继发性腹膜炎的主要鉴别点是', '   发病的年龄', '腹痛、发热的先后顺序', '  有无腹部手术史', ' 腹腔内有无原发病灶 ', '腹膜刺激征的轻重', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，32岁。急性腹膜炎手术后l周，体温升高至38℃，伴腹泻、里急后重。下列检查最有意义的是', ' 内镜检查 ', ' 腹部X线平片', '大便常规化验', '腹腔穿刺术 ', ' 直肠指检', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，32岁，与朋友聚餐后，突发上腹部剧烈疼痛。体检：腹部膨隆，上腹压痛明显，有反跳痛和腹肌紧张。下列处理不正确的是', '禁食 ', '肠内外营养支持 ', '应用抗生素控制感染 ', '静脉输液', '半卧体位', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女性，58岁，急性化脓性腹膜炎术后第一天。病人对留置胃管的作用不理解，要求拔除。护士对胃管作用的解释不妥的是', '可以预防胃出血 ', '有利于胃肠功能的恢复', '可以减轻腹胀 ', '避免胃肠内积气积液', '有利于胃肠吻合口的愈合', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('正常门静脉的压力是', ' 小于1.3kPa(13cmH：()) ', ' 1.27—2.35kPa(13—24cmH!C))', '  2.4—3.0kPa(24—30cmH2())', '3.0—5.0kPa(30—50cmH2㈠)', '  4.0kPa(40cmHz()', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('门静脉高压症的侧支循环中，下列错误的是', '  由食管、胃底静脉人奇静脉', ' 由脐及脐旁静脉人腹壁上、下静脉', '  由直肠上静脉人直肠下静脉 ', '由腰静脉人腹膜后下腔静脉属支', '  腹膜后门、体静脉分支相吻合', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('引起门静脉高压症的最常见原因是', '肝炎后肝硬化', '血吸虫性肝硬化 ', '胆汁性肝硬化', '先天性门静脉狭窄 ', '肝包虫病', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('门静脉高压症分流术后护理，下列措施中错误的是', '  术后取平卧位，活动要少', '注意观察意识变化', '  给予高热量、高蛋白饮食 ', '保持大便通畅 ', '观察有无腹痛、腹胀、血便', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('门静脉高压症时腹水主要成因是', '抗利尿激素增多 ', '肝淋巴液外漏', '肝功能减退', '醛固酮体内增多 ', '门静脉系毛细血管床的静水压增加', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('门静脉高压症的主要临床表现为', '腹胀、食欲减退 ', '呕血和黑便', '白细胞、血小板计数减少 ', '肝肿大', '肝功能障碍', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('门静脉高压症合并食管、胃底静脉曲张手术治疗最主要的目的是 ', '预防肝癌 ', '预防上消化道出血 ', '防止肝功能衰竭 ', '减少腹水', '预防脾肿大 ', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('我国门静脉高压症常见的病因是 ', '血吸虫病 ', '门脉性肝硬变 ', '肝炎后肝硬变 ', '胆汁性肝硬变 ', '门静脉血栓形成', 'C ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('门静脉高压症最危急的并发症是', '食管胃底静脉曲张破裂', ' 肝性脑病 ', '脾功能亢进', '严重顽固性腹水 ', '肝功能衰竭', 'A ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('门静脉高压的交通支中，下列哪支是错误的 ', '胃底、食管下端交通支 ', '直肠下端交通支 ', '腹壁交通支', '肠系膜血管交通支', '腹膜后交通支 ', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，36岁，因硬化合并食管静脉曲张破裂出血用三腔管压迫后发现抽出胃内容物有鲜红色血液，病人血压不稳定，应采用', '口服去甲肾上腺素 ', '加大输血、输液量', '大剂量静脉点滴垂体后叶素 ', '加大三腔管压力', '立即行胃底贲门周围血管离断术', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，45岁，10年前有乙型肝炎病史，因呕血、黑便，伴头晕出冷汗而人院，经治疗后出血停止，但出现低蛋白血症和腹水，经常SGP丁升高，择期手术治疗的最主要目的是', ' 减轻肝性脑病', '纠正血小板减少', '预防腹水并发感染', '防治食管胃底静脉破裂出血', '治疗顽固性腹水', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('门静脉高压症的病理变化中，下列叙述错误的是(', '   脾肿大、脾功能亢进 ', '门静脉交通支扩张 ', '肝静脉淤积引起急性大出血', '肝功能损害，白蛋白合成障碍 ', '毛细血管滤过压增加，致使腹水形成', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('门静脉高压症最危急的并发症是', '  食管胃底静脉曲张破裂 ', '肝性脑病 ', '脾功能亢进', '严重顽固性腹水', '肝功能衰竭', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('门静脉高压症最下列措施错误的是', ' 不进粗糙、刺激性强的食物', ' 饮食温度要低', '术前常规插胃管 ', '口服药物应研粉冲服 ', '避免剧烈咳嗽、用力排便', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性患者，48岁，继往有乙型肝炎病史，此次因食管静脉曲张、上消化道出血脘。检查发现其肝功能轻度损害。对该病人的护理措施中，错误的是', '吸氧 ', '应用三腔管压迫止血', '应用硫酸镁溶液导泻 ', '补钾、控制钠的摄人量 ', '温生理盐水洗胃', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性患者，48岁，继往有乙型肝炎病史，此次因食管静脉曲张、上消化道出血脘。检查发现其肝功能轻度损害。有关门脉高压症、脾切除术后病人护理，下列措施中错误的是', '饮食要注意控制蛋白质摄人量', '有腹水者也要大量补充水和钠盐，以防水、电解质紊乱', '   应按重症手术后护理，注意血压、脉搏、呼吸的变化', '   手术后应严密观察病人意识变化，以防肝昏迷的发生', '   血压平稳后取半卧位', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，63岁，有上腹不适、恶心，呕血1000ml，既往无胃、十二指肠溃疡病史，有乙型肝炎病史10年。体检脉搏有力、不快，血压97．5／60mmHL,为明确出血部位，最适宜的检查是', '腹腔动脉造影 ', '钡餐检查', 'B超检查 ', '胃镜检查 ', '插三腔管明确出血部位', 'D ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，63岁，有上腹不适、恶心，呕血1000ml，既往无胃、十二指肠溃疡病史，有乙型肝炎病史10年。体检脉搏有力、不快，血压97．5／60mmHL,该病人肝硬化合并食管、胃底静脉曲张破裂出血已被证实。病人人院后又有大量呕血，此时最简单而有效的应急措施是', ' 口服止血药 ', '静脉滴注垂体后叶素', '内镜硬化剂注射', '三腔二囊管压迫', '急诊手术', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，63岁，有上腹不适、恶心，呕血1000ml，既往无胃、十二指肠溃疡病史，有乙型肝炎病史10年。体检脉搏有力、不快，血压97．5／60mmHL,病人出血后采取的措施中不正确的是', ' 输液、输血 ', '应用保肝药物 ', '静脉止血药的应用', '三腔二囊管压迫 ', '应用肥皂水灌肠', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，63岁，有上腹不适、恶心，呕血1000ml，既往无胃、十二指肠溃疡病史，有乙型肝炎病史10年。体检脉搏有力、不快，血压97．5／60mmHL,门静脉高压症胃底静脉曲张破裂出血的最主要死亡原因是', '失血性休克 ', '肝功能衰竭、肝昏迷', '肝肾综合征 ', '多器官功能衰竭 ', '感染', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，63岁，有上腹不适、恶心，呕血1000ml，既往无胃、十二指肠溃疡病史，有乙型肝炎病史10年。体检脉搏有力、不快，血压97．5／60mmHL,病人经积极治疗后出血停止，而病人腹水征逐渐明显，该病人的治疗计划', '长期内科治疗', '尽快作腹腔—静脉转流术', '待腹水征好转或稳定后考虑择期手术', '反复垂体后叶素静脉滴注，以降低门静脉压力 ', '再出血时内镜硬化剂注射治疗', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('关于继发性肝癌下列叙述错误的是', '  大多数病人有肝外癌病史', '有肝区痛的临床表现', '  与原发性肝癌难以鉴别', '一般均可采用手术切除 ', '预后不良', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('细菌性肝脓肿的主要临床症状为', '细菌性肝脓肿的主要临床症状为', '恶心，呕吐', '寒战，高热，肝肿大伴疼痛 ', '局部皮肤凹陷性水肿 ', '出现黄疸', '可见右膈升高、运动受限', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('细菌性肝脓肿常见护理诊断／问题不包括', '体温过高 ', '营养失调：低于机体需要量', '体液过多 ', '疼痛', '潜在并发症：腹膜炎、膈下脓肿、胸腔内感染、休克', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('关于细菌性肝脓肿，下列叙述正确的是', '大部分是胆源性肝脓肿', '致病菌多为G+球菌', '脓液多为棕褐色 ', '多由于溃疡性结肠炎所致 ', '手术引流是唯一有效的方法', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('在鉴别细菌性肝脓肿与阿米巴肝脓肿时，后者不出现下列表现', '脓液呈棕褐色 ', '中毒症状严重', '起病较缓慢 ', '血清学阿米巴抗体检测阳性', '中性粒细胞汁数可增高', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('阿米巴肝脓肿治疗中，下列处理正确的是', '一旦确诊均应手术治疗', '肝左叶肝脓肿可行穿刺治疗', '穿刺抽脓前应先完成抗阿米巴治疗', '继发性细菌感染者均应手术', '脓肿已穿破胸、腹腔或邻近内脏器官者，应先用非手术治疗', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('原发性肝癌多见于男性，好发年龄最多见的是', '30—40岁', '40—50岁', '50—60岁 ', '30—60岁', '40—60', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('原发性肝癌主要转移的部位', '  肝内 ', '肺', '左锁骨上淋巴结 ', '骨 ', '腹腔内种植', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('肝癌病人最常见和最主要的症状是', '  肝区疼痛 ', '低热 ', '腹胀，乏力', '食欲不振', '消瘦', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('为明确肝内占位病变的性质，下列检查项目最有意义的是', '   谷丙转氨酶', '谷草转氨酶 ', '甲胎蛋白 ', '   癌胚抗原', '乳酸脱氢酶', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('治疗早期原发性肝癌，最有效的方法是', '   手术切除', '肝动脉插管化疗', '肝动脉栓塞治疗', '放射治疗', '   部注射无水酒精疗法', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('肝癌病人术前肠道准备最主要的目的是', '预防术中污染', '有利切口愈合', '预防术后血氨增高', '预防术后肠道感染', '预防腹腔脓肿的形成', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('细菌性肝脓肿细菌侵入肝脏的主要途径是', '经肝动脉 ', '经胆道 ', '经门静脉', '开放性肝损伤细菌直接侵入 ', '淋巴系统', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('对确诊肝癌最有价值的检查是', 'B超检查 ', '放射性核素扫描', '肝血管造影 ', 'CT检查', '肝穿刺活检', 'E ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('门静脉高压症食管下端静脉曲张手术治疗的主要目的是', '防止肝癌发生', '防止出血 ', '防止肝衰竭', '减少腹水 ', '改善脾功能 ', 'B ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('脾功能亢进的表现是', '血白细胞减少', '血小板减少 ', '白细胞及血小板减少', '血红细胞增加 ', '脾肿大 ', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('甲胎蛋白(AFP)阳性最常见于', '原发性肝癌', '继发性肝癌', '肝硬化', '慢性活动性肝炎 ', '重症肝炎', 'A ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('普查早期原发性肝癌首选的检查是', '超声检查', '甲胎蛋白(AFP)测定', '碱性磷酸酶测定', 'γ一谷胺酰基转移测定', '腹腔镜检查', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('原发性肝癌早期重要的表现是', '肝区疼痛', '进行性肝大 ', '黄疸', '食欲减退 ', '体重减轻 ', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男，33岁，高热，右上腹痛7天。B超检查和CT检查提示肝脓肿，曾有胆道感染病史。引起该疾病的最可能原因是', '  胆道化脓性感染', '坏疽性阑尾炎', '开放性肝损伤', '右侧膈下脓肿 ', '肝包虫病', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，4l岁，乙肝史l0年余，近来自觉右上腹胀痛，首选的检查是', '  MRI', 'B型超声波检查 ', '肝动脉造影 ', '  核素肝扫描 ', '腹腔镜', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，49岁，高热，右上腹痛l周。体格检查：急性病容，可疑黄疸，右上腹压痛伴轻度肌卫，肝肿大。化验：白细胞数18X10’／乙中性粒细胞0．95，B型超声波检查和放射性核素扫描发现肝有占位病变。首先考虑的诊断为', '原发性肝癌', '胆道感染 ', '细菌性肝脓肿 ', '阿米巴性肝脓肿', '急性肝炎', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，49岁，高热，右上腹痛l周。体格检查：急性病容，可疑黄疸，右上腹压痛伴轻度肌卫，肝肿大。化验：白细胞数18X10’／乙中性粒细胞0．95，B型超声波检查和放射性核素扫描发现肝有占位病变。病人突然出现的剧烈胸痛，寒战、高热，气管向健侧移位，患侧胸壁凹陷性水肿，胸闷、气急伴呼吸音减低，可能合并发生', '急性肝炎', '急性胆囊炎 ', '急性胆管炎', '膈下脓肿', '急性胸膜炎', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，49岁，高热，右上腹痛l周。体格检查：急性病容，可疑黄疸，右上腹压痛伴轻度肌卫，肝肿大。化验：白细胞数18X10’／乙中性粒细胞0．95，B型超声波检查和放射性核素扫描发现肝有占位病变。为预防脱水，除须控制入水量者，应保证高热病人每天至少摄人的液体量为', '500ml ', '1000ml', '2000ml ', '3000m', '4000ml', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，50岁，右上腹胀痛3个月伴黄疽3周。体检：肝肋下3cm，剑突下4cm质硬，移动性浊音(+)。B超：肝内有一占位性病变。最可能的诊断为', '肝癌', '肝硬化', '细菌性肝脓肿 ', '胆总管结石', '肝炎', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，50岁，右上腹胀痛3个月伴黄疽3周。体检：肝肋下3cm，剑突下4cm质硬，移动性浊音(+)。B超：肝内有一占位性病变。最有助于诊断的检查是', '乙肝五项检查', '腹部X线检查', '功能检查', '甲胎蛋白B超检查', 'CT检查', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，50岁，右上腹胀痛3个月伴黄疽3周。体检：肝肋下3cm，剑突下4cm质硬，移动性浊音(+)。B超：肝内有一占位性病变。病人接受介人治疗前，以下护理措施错误的是', '备好所需物品及药品 ', '穿刺处皮肤准备 ', '纠正低蛋白血症', '术前禁食12h', '     了解出凝血时间、血象、肝肾功能、心电图等检查结果', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男，65岁，结肠癌术后1年，近来出现乏力、消瘦伴肝区隐痛。B超发现肝右前叶单个直径5cm占位。否认肝炎史,以下最可能阳性的指标是', '谷丙转氨酶', '谷草转氨酶', '甲胎蛋白 ', '癌胚抗原', '乳酸脱氢酶', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男，65岁，结肠癌术后1年，近来出现乏力、消瘦伴肝区隐痛。B超发现肝右前叶单个直径5cm占位。否认肝炎史,如确诊为转移性肝癌以下最不可能阳性的指标是', '甲胎蛋白', '谷草转氨酶', '谷丙转氨酶', '癌胚抗原 ', '乳酸脱氢酶', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男，65岁，结肠癌术后1年，近来出现乏力、消瘦伴肝区隐痛。B超发现肝右前叶单个直径5cm占位。否认肝炎史,关于继发性肝癌的论述正确的是', '多由腹腔内肿瘤转移', '多为单发结节', '多能找到原发病灶', 'AFP多阳性', '多能手术切除', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男，50岁，有慢性肝炎病史20年，4小时前吃苹果后，突然呕出暗红色液约400ml.查体BP6．7／4．0k．Pa(50／30mmHg),P140次／min，神志淡漠，贫血貌,皮肤巩膜无黄染,脾肋下5cm，质软，无压痛.移动性浊音阳性.诊断为食道胃底底静脉曲张破裂出血、失血性休克, 首先应做何处理 ', '密切观察生命体征，同时建立静脉通道 ', '吸氧 ', '测血压、脉搏、呼吸', '洗胃 ', '安慰病人', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男，50岁，有慢性肝炎病史20年，4小时前吃苹果后，突然呕出暗红色液约400ml.查体BP6．7／4．0k．Pa(50／30mmHg),P140次／min，神志淡漠，贫血貌,皮肤巩膜无黄染,脾肋下5cm，质软，无压痛.移动性浊音阳性.诊断为食道胃底底静脉曲张破裂出血、失血性休克,经药物治疗后，患者仍然吐血，可考虑下面哪一种措旋', '继续补液输血 ', ' 下三腔二囊管压迫止血 ', '下胃管', '下尿管 ', '静推止吐药物', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男，50岁，有慢性肝炎病史20年，4小时前吃苹果后，突然呕出暗红色液约400ml.查体BP6．7／4．0k．Pa(50／30mmHg),P140次／min，神志淡漠，贫血貌,皮肤巩膜无黄染,脾肋下5cm，质软，无压痛.移动性浊音阳性.诊断为食道胃底底静脉曲张破裂出血、失血性休克, 病人经上述治疗出血停止，出院后患者在饮食方面应注意什么', '正常饮食', '无渣软食 ', '低脂饮食', '不吃水果 ', '低糖饮食 ', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，56岁，过去有嗜酒及慢性肝炎史，近2个月食欲不振、低热、消瘦、乏力、右上腹胀痛并扪到肿块。体格检查：肝肋下3cm，质硬，无腹水。B超检查发现病人肝右叶中央单个10cmXl2cm占位，AFP升高，肝肾功能正常。诊断为原发性肝癌。与原发性肝癌的发生关系最大的是', '胆道感染', '肝炎后肝硬化', '血吸虫性肝硬化', '酒精中毒性肝硬化', '肝良性肿瘤', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，56岁，过去有嗜酒及慢性肝炎史，近2个月食欲不振、低热、消瘦、乏力、右上腹胀痛并扪到肿块。体格检查：肝肋下3cm，质硬，无腹水。B超检查发现病人肝右叶中央单个10cmXl2cm占位，AFP升高，肝肾功能正常。诊断为原发性肝癌。首选的治疗方案为', '手术切除 ', '全身化学治疗 ', '介入治疗 ', '局部无水酒精注射 ', '放射治疗', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，56岁，过去有嗜酒及慢性肝炎史，近2个月食欲不振、低热、消瘦、乏力、右上腹胀痛并扪到肿块。体格检查：肝肋下3cm，质硬，无腹水。B超检查发现病人肝右叶中央单个10cmXl2cm占位，AFP升高，肝肾功能正常。诊断为原发性肝癌。病人2h前突然全腹痛，出冷汗。检查发现病人有腹胀，右上腹轻压痛及反跳痛，移动性浊音阳性。可能的诊断为', '肝硬化、腹水继发感染 ', '应激性溃疡穿孔合并出血', '     肝癌破裂', '急性出血坏死性胰腺炎', '细菌性肝脓肿', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，56岁，过去有嗜酒及慢性肝炎史，近2个月食欲不振、低热、消瘦、乏力、右上腹胀痛并扪到肿块。体格检查：肝肋下3cm，质硬，无腹水。B超检查发现病人肝右叶中央单个10cmXl2cm占位，AFP升高，肝肾功能正常。诊断为原发性肝癌。病人2h前突然全腹痛，出冷汗。检查发现病人有腹胀，右上腹轻压痛及反跳痛，移动性浊音阳性。首先应采取的措施是', '及时通知医师', '测量生命体征 ', '补液，输血', '做好急诊手术的各项准备', '应用止血剂', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，56岁，过去有嗜酒及慢性肝炎史，近2个月食欲不振、低热、消瘦、乏力、右上腹胀痛并扪到肿块。体格检查：肝肋下3cm，质硬，无腹水。B超检查发现病人肝右叶中央单个10cmXl2cm占位，AFP升高，肝肾功能正常。诊断为原发性肝癌。病人经治疗后病情稳定，且经治疗肿瘤明显缩小至5cmX6cm，肝肾功能基本正常，无远处转移，行肝叶切除术，术后护理措施中错误的是', ' 常规需间歇吸氧 ', '专人护理', '早期下床活动', '口服新霉素或卡那霉素 ', '适量补充白蛋白和血浆', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，56岁，过去有嗜酒及慢性肝炎史，近2个月食欲不振、低热、消瘦、乏力、右上腹胀痛并扪到肿块。体格检查：肝肋下3cm，质硬，无腹水。B超检查发现病人肝右叶中央单个10cmXl2cm占位，AFP升高，肝肾功能正常。诊断为原发性肝癌。病人肝叶切除术后，出现嗜睡、烦躁不安', '膈下脓肿', '内出血', '肝性脑病 ', '胆汁性腹膜炎', '胆道感染', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('胆总管引流术后，T管引流胆汁过多常提示', '肝细胞分泌亢进', '胆管分泌胆汁过多', '胆囊浓缩功能减退 ', '胆道下端梗阻', '十二指肠反流', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('坐位或站立时引流袋的位置应为', '不可高于腹部手术切口', '不可高于腋中线', '不可高于腋前线 ', '不可高于腋后线 ', '可在任意位置', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('胆汁的排放方式为', '持续性', '定时 ', '间断性', '夜间', '空腹', ' C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('普查和诊断胆道疾病的首选检查方法是', 'X线平片', 'B超 ', 'CT', 'MRI ', 'ERCP', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('B超检查胆囊前应常规禁食水', '3h', '4h ', '6h ', '8h', '12h', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('AOSC的临床表现为', 'Charcot三联症', 'ReynOlds五联征', 'MODS综合征 ', 'Murphy征', 'Mirizzi综合征', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('典型的Charcot三联症为腹痛、寒战高热及', '呕吐', '腹泻 ', '黄疸', '腹水', '胸痛', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('多器官功能衰竭综合征并发于', '急性单纯性胆管炎 ', '急性梗阻性化脓性胆管炎', '急性胆管炎', '亚急性化脓性胆管炎', '慢性梗阻性胆管炎', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性胆囊炎在非手术治疗期间若出现胆囊穿孔，最主要的护理措施是', '做好紧急手术的准备', '药物止痛', '非药物止痛', '物理降温', '药物降温', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('T管造影后应开放引流多少小时以上', '4h', '8h', '10h', '2h', '24h', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性胆囊炎引起的腹痛常发生于', '睡眠时 ', '剧烈运动时', '空腹时 ', '油腻餐后', '紧张工作时', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('T型管拔除指征是 ', '引流管通畅，胆汁颜色正常', '引流胆汁量逐日减少 ', '大便颜色正常，食欲好转', '黄疸逐日消退、无发烧、腹痛 ', '造影无残余结石，夹管后机体无异常变化 ', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('胆道T管拔除前，夹管观察的内容是 ', '体温、血压、意识 ', '腹痛、血压、体温 ', '腹痛、呕吐、体温 ', '黄疸、血压、意识 ', '腹痛、体温、黄疸 ', 'E ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('胆道T型管引流和腹腔引流管的护理措施，二者不同的是', '保持引流管通畅', '每天更换引流瓶 ', '观察引流量和性状', '拔管前夹管观察1～2天', '引流瓶不得高于引流出口 ', 'D ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('典型Charcot三联征是指', '腹痛、发热、呕吐', '突发上腹部束带状剧痛、轻度黄疸、低血压 ', '突发上腹阵发性绞痛、呕吐、畏寒发热', '肝区持续性闷胀痛、寒战高热、低血压', '突发剑突下偏右阵发性绞痛、寒战高热、黄疸 ', 'E ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('以下哪项不是急性胆囊炎的特征 ', '右上腹痛', '疼痛向右肩胛部放射 ', '墨菲征阳性', '可触及肿大胆囊', '寒战和黄疸明显 ', 'E ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性胆囊炎最严重的并发症是', '细菌性肝脓肿', '胆囊积脓 ', '胆囊坏疽穿孔引起胆汁性腹膜炎', ' 并发急性胰腺炎', '胆囊、十二指肠内瘘 ', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男，40岁，急诊人院，神志不清，出冷汗脉搏细数，血压80／45nlmHg，诊断为“急性梗阻性化脓性胆管炎”，其体位应取', '半坐卧位 ', '坐位 ', '头低足高位', '头高足低位 ', '任意卧位', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女，45岁，行胆总管切开取石T管引流术后，T管引流液每天均在2000ml左右，提示', '胆汁量过少', '胆汁量正常', '胆管下端梗阻', '胆管上端梗阻', '胆管中部梗阻', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女性，45岁，因饱餐后出现右上腹疼痛而人院，诊断为胆囊结石，应禁食', '  蛋白食物', '纤维食物', '高热量食物', '油腻食物', '高维生素食物', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女性，35岁，诊断为“肝外胆管结石”，出现重度黄疸及皮肤瘙痒，对皮肤的护理措施不恰当的是', '遵医嘱用药', '保持皮肤清洁', '防止皮肤损伤', '可用手抓挠', 'E', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男，4l岁，在ERCP检查后出现腹部持续性疼痛，血清淀粉酶检查超过正常值，应考虑', '急性胆管炎', '急性胃炎', '急性肠炎', '急性胰腺炎', '急性胆管梗阻', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，45岁，诊断为胆总管结石，拟行胆总管切开取石T管引流术，放置T管的目的不包括', '引流胆汁', '引流残余结石 ', '引流腹腔渗液 ', '经T管造影 ', '支撑胆道', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男，35岁，在全麻下行胆总管切开取石、T管引流术，腹腔放置引流管。术毕返回病房，神志清醒。体检示：脉搏95次／分钟，血压125／70mmHg，腹腔引流液100ml。回病房l小时后腹腔引流液为210ml，呈血性；脉搏110次／分钟，血压105／65mmHg，唇稍干燥。应重点观察下列哪项指标的变化', '病人体温 ', '补液速度 ', 'T管引流量 ', '腹腔引流量和色 ', '呼吸频率', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男，35岁，在全麻下行胆总管切开取石、T管引流术，腹腔放置引流管。术毕返回病房，神志清醒。体检示：脉搏95次／分钟，血压125／70mmHg，腹腔引流液100ml。回病房l小时后腹腔引流液为210ml，呈血性；脉搏110次／分钟，血压105／65mmHg，唇稍干燥。根据该病人的病情，应疑为', '胆道出血', '腹腔内出血', '胆瘘 ', '呼吸困难 ', '消化道出血', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男，35岁，在全麻下行胆总管切开取石、T管引流术，腹腔放置引流管。术毕返回病房，神志清醒。体检示：脉搏95次／分钟，血压125／70mmHg，腹腔引流液100ml。回病房l小时后腹腔引流液为210ml，呈血性；脉搏110次／分钟，血压105／65mmHg，唇稍干燥。此时应采取哪项护理措施', '立即报告医师', '记录引流量和色', '监测体温变化', '妥善固定引流管', '观察呼吸变化', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男，35岁，在全麻下行胆总管切开取石、T管引流术，腹腔放置引流管。术毕返回病房，神志清醒。体检示：脉搏95次／分钟，血压125／70mmHg，腹腔引流液100ml。回病房l小时后腹腔引流液为210ml，呈血性；脉搏110次／分钟，血压105／65mmHg，唇稍干燥。该病人目前最主要的护理诊断／问题是', '疼痛 ', '焦虑 ', '体液过多', '体液不足', '活动无耐力', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女，31岁，行胆总管切开取石、T管引流术，目前为术后第l4天，T管引流液每日200m1左右。无腹胀、腹痛，手术切口已拆线。体检示：皮肤及巩膜黄疸逐渐消退，体温36．5℃，脉搏80次／分钟，血压105／60mmHg。根据病人术后时间及病情，可考虑', '拔除T管 ', '带T管出院', '继续保留T管1周', '继续保留T管2周 ', '继续保留T管6周', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女，31岁，行胆总管切开取石、T管引流术，目前为术后第l4天，T管引流液每日200m1左右。无腹胀、腹痛，手术切口已拆线。体检示：皮肤及巩膜黄疸逐渐消退，体温36．5℃，脉搏80次／分钟，血压105／60mmHg。拔除T管前应试行夹管', '12h', '24h ', '2—3天 ', '4—5天 ', '7天', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女，31岁，行胆总管切开取石、T管引流术，目前为术后第l4天，T管引流液每日200m1左右。无腹胀、腹痛，手术切口已拆线。体检示：皮肤及巩膜黄疸逐渐消退，体温36．5℃，脉搏80次／分钟，血压105／60mmHg。拔除T管后应重点观察有无下列哪项并发症', '肠瘘', '胰瘘', '胆瘘 ', '胃瘘', '腹腔脓肿', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女，31岁，行胆总管切开取石、T管引流术，目前为术后第l4天，T管引流液每日200m1左右。无腹胀、腹痛，手术切口已拆线。体检示：皮肤及巩膜黄疸逐渐消退，体温36．5℃，脉搏80次／分钟，血压105／60mmHg。对该病人的健康教育重点为', '定期随访 ', '活动量指导 ', '休息时间安排', '饮食指导 ', '注意腹壁切口的愈合', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男，65岁，诊断为胆道泥沙样结石，拟行胆总管空肠Roux—en—Y吻合术，WBC11.5×109／L,中性粒细胞0.75。血清总胆红素162umol／L，谷丙转氨酶215U／L,凝血酶原时间(PT)18s.在抗感染的基础上，下列哪项措施最有针对性', '应用白蛋白', '补充电解质', '注射维生素K1 ', '增加营养', '输血', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男，65岁，诊断为胆道泥沙样结石，拟行胆总管空肠Roux—en—Y吻合术，WBC11.5×109／L,中性粒细胞0.75。血清总胆红素162umol／L，谷丙转氨酶215U／L,凝血酶原时间(PT)18s.术前何时开始口服肠道抗生素', '1天 ', '3天 ', '5天', '7天', '10天', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男，65岁，诊断为胆道泥沙样结石，拟行胆总管空肠Roux—en—Y吻合术，WBC11.5×109／L,中性粒细胞0.75。血清总胆红素162umol／L，谷丙转氨酶215U／L,凝血酶原时间(PT)18s.病人口服灌肠液的时间为', '术前5日晚', '术前4日晚 ', '术前3日晚', '术前2日晚', '术前1日晚', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男，65岁，诊断为胆道泥沙样结石，拟行胆总管空肠Roux—en—Y吻合术，WBC11.5×109／L,中性粒细胞0.75。血清总胆红素162umol／L，谷丙转氨酶215U／L,凝血酶原时间(PT)18s.该病人术前还必须进行哪项检查', 'B超', 'MRI', 'ERCP', ' CT', 'EKG', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女，56岁，小学文化，诊断为胆囊结石，拟在腹腔镜下行胆囊切除术，当病人得知手术方式后，反复向病友和医务人员打听腹腔镜手术的相关情况。经过积极的术前准备，顺利的完成了手术，术后出现腰背部、肩部疼痛。病人术前主要的护理诊断／问题是', '疼痛', '体温过高 ', '焦虑 ', '经惧', '知识缺乏', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女，56岁，小学文化，诊断为胆囊结石，拟在腹腔镜下行胆囊切除术，当病人得知手术方式后，反复向病友和医务人员打听腹腔镜手术的相关情况。经过积极的术前准备，顺利的完成了手术，术后出现腰背部、肩部疼痛。针对上述护理诊断／问题，主要护理措施是', '减轻或控制疼痛', '降低体温 ', '减轻焦虑', '消除恐惧 ', '提供相关知识', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女，56岁，小学文化，诊断为胆囊结石，拟在腹腔镜下行胆囊切除术，当病人得知手术方式后，反复向病友和医务人员打听腹腔镜手术的相关情况。经过积极的术前准备，顺利的完成了手术，术后出现腰背部、肩部疼痛。术后腰背及肩部疼痛的原因是', '手术体位不良所致 ', '腹腔镜损伤', '麻醉后反应 ', 'CO2产生的碳酸刺激', '组织缺氧', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女，56岁，小学文化，诊断为胆囊结石，拟在腹腔镜下行胆囊切除术，当病人得知手术方式后，反复向病友和医务人员打听腹腔镜手术的相关情况。经过积极的术前准备，顺利的完成了手术，术后出现腰背部、肩部疼痛。腰背及肩部疼痛的处理措施是', '解痉 ', '止痛', '消炎利胆 ', '微波治疗', '无需特殊处理', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女性，41岁。胆囊结石病史2年，主诉晚餐后突然出现右上腹阵发性剧烈疼痛向右肩、背部放射，伴有腹胀、恶心、呕吐等症状。体检示：体温38．9℃，脉搏112次／分钟，血压106／85mmHg。右上腹部有压痛、肌紧张、反跳痛。实验室检查WBCl0．5X10’／L，中性粒细胞0.79。导致该病人突然腹痛的原因是', '胆囊收缩，结石排人十二指肠', '结石阻塞胆管下端、引起急性胰腺炎', '结石损伤胆囊黏膜', '结石损伤十二指肠', '结石嵌顿于胆囊颈致胆囊强烈收缩', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女性，41岁。胆囊结石病史2年，主诉晚餐后突然出现右上腹阵发性剧烈疼痛向右肩、背部放射，伴有腹胀、恶心、呕吐等症状。体检示：体温38．9℃，脉搏112次／分钟，血压106／85mmHg。右上腹部有压痛、肌紧张、反跳痛。实验室检查WBCl0．5X10’／L，中性粒细胞0.79。该病人的体格检查可出现', 'Charcot三联症 ', 'Murphy征阳性 ', 'Reynolds五联征', 'MODS征 ', 'MOF征', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女性，41岁。胆囊结石病史2年，主诉晚餐后突然出现右上腹阵发性剧烈疼痛向右肩、背部放射，伴有腹胀、恶心、呕吐等症状。体检示：体温38．9℃，脉搏112次／分钟，血压106／85mmHg。右上腹部有压痛、肌紧张、反跳痛。实验室检查WBCl0．5X10’／L，中性粒细胞0.79。下列哪项护理措施最为关键', '介绍病房环境 ', '介绍作息时间 ', '介绍饮食 ', '介绍疾病知识 ', '做好手术准备', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女性，41岁。胆囊结石病史2年，主诉晚餐后突然出现右上腹阵发性剧烈疼痛向右肩、背部放射，伴有腹胀、恶心、呕吐等症状。体检示：体温38．9℃，脉搏112次／分钟，血压106／85mmHg。右上腹部有压痛、肌紧张、反跳痛。实验室检查WBCl0．5X10’／L，中性粒细胞0.79。在非手术治疗期间，减轻疼痛的护理措施不包括', '卧床休息', '胃肠减压', '消炎利胆', '注射吗啡', '注射654—2', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女性，41岁。胆囊结石病史2年，主诉晚餐后突然出现右上腹阵发性剧烈疼痛向右肩、背部放射，伴有腹胀、恶心、呕吐等症状。体检示：体温38．9℃，脉搏112次／分钟，血压106／85mmHg。右上腹部有压痛、肌紧张、反跳痛。实验室检查WBCl0．5X10’／L，中性粒细胞0.79。在该病人非手术治疗期间下列哪项饮食指导不妥', '低脂饮食', '少量多餐', '不忌油炸食品', '避免过饱 ', '清淡饮食', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男，36岁，反复右上腹痛、寒战、黄疸5年，此次发病后黄疸持续不退。体检示：体温39．5℃，脉搏122次／分钟，血压125／85mmHL右上腹压痛，肌紧张。验室检查：WBCl5．5X109／L，中性粒细胞0．85。血清总胆红素132／umol／L谷丙转氨酶l75U／L。B超提示肝外胆管扩张，内有强光团伴声影。导致该病人腹痛的原因是', '胆囊剧烈收缩', '结石梗阻致胆总管痉挛和压力增高 ', '结石直接损伤胆囊', '结石直接损伤胆总管', '胃及十二指肠痉挛', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男，36岁，反复右上腹痛、寒战、黄疸5年，此次发病后黄疸持续不退。体检示：体温39．5℃，脉搏122次／分钟，血压125／85mmHL右上腹压痛，肌紧张。验室检查：WBCl5．5X109／L，中性粒细胞0．85。血清总胆红素132／umol／L谷丙转氨酶l75U／L。B超提示肝外胆管扩张，内有强光团伴声影。该病人的黄疽程度取决于', '梗阻的程度 ', '肝功能情况 ', '结石的种类 ', '有无并发症 ', '病人的肤色', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男，36岁，反复右上腹痛、寒战、黄疸5年，此次发病后黄疸持续不退。体检示：体温39．5℃，脉搏122次／分钟，血压125／85mmHL右上腹压痛，肌紧张。验室检查：WBCl5．5X109／L，中性粒细胞0．85。血清总胆红素132／umol／L谷丙转氨酶l75U／L。B超提示肝外胆管扩张，内有强光团伴声影。该病人已出现哪个器官功能受损', '肾', '肝 ', '心', '脑', '胃', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男，36岁，反复右上腹痛、寒战、黄疸5年，此次发病后黄疸持续不退。体检示：体温39．5℃，脉搏122次／分钟，血压125／85mmHL右上腹压痛，肌紧张。验室检查：WBCl5．5X109／L，中性粒细胞0．85。血清总胆红素132／umol／L谷丙转氨酶l75U／L。B超提示肝外胆管扩张，内有强光团伴声影。以下对该病人的护理诊断哪项不妥', '疼痛', '体温过高', '营养失调', '知识缺乏', '有皮肤完整性受损的危险', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男，36岁，反复右上腹痛、寒战、黄疸5年，此次发病后黄疸持续不退。体检示：体温39．5℃，脉搏122次／分钟，血压125／85mmHL右上腹压痛，肌紧张。验室检查：WBCl5．5X109／L，中性粒细胞0．85。血清总胆红素132／umol／L谷丙转氨酶l75U／L。B超提示肝外胆管扩张，内有强光团伴声影。若对该病人行手术治疗后，留置T管的护理措施哪项不正确', '妥善固定T管', '定期由近端向远端挤捏 ', '每日更换引流袋', '每日冲洗1次', '每日记录引流量', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('胰头癌的最主要症状和体征是', '    上腹痛', '    上腹部肿块', '消化不良、腹泻 ', '乏力和消瘦', '黄疸进行性加重', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('暴饮暴食或酗酒最易引起的急腹症是', '   肠扭转 ', '胆石症 ', '急性坏疽性阑尾炎', '急性胰腺炎', '粘连性肠梗阻', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('壶腹周围癌者最早出现的临床表现是', '   黄疽 ', '寒颤、发热 ', '贫血消瘦', '消化道症状', '上腹痛及腰背痛', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('胰腺癌常好发于 ', '胰体、尾部 ', '胰颈、体部', '全胰腺', '胰头、颈部', '胰尾', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性胰腺炎时，慎用', '  抗胆碱能药物', '吗啡止痛', '补充血容量 ', '给予钙盐 ', '胃肠减压', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('下列哪项不符合急性水肿性胰腺炎的临床表现', '  腹痛', '恶心、呕吐 ', '腹膜炎体征', '高度腹胀 ', '血、尿淀粉酶升高', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性胰腺炎时，血淀粉酶', '增高最早 ', '增高稍晚 ', '增高最晚', '不增高 ', '持续增高', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性水肿性胰腺炎的临床表现中下列哪项一般不会发生', '腹痛 ', '恶心、呕吐 ', '休克', '腹胀 ', '腹膜炎体征', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('引起急性胰腺炎的主要病理机制为', '组织细胞破坏 ', '消化酶缺乏 ', '胰腺的自我消化 ', '消化酶生成过多 ', '细胞自溶', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('在我国，引起急性胰腺炎的最常见原因是', '梗阻因素', '暴饮暴食', '创伤因素 ', '高脂血症', '感染因素', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性胰腺炎出现脉率快、腹水呈血性、血压低或休克时；应考虑为', '   水肿性胰腺炎 ', '出血性胰腺炎', '出血坏死性胰腺炎', '胰腺炎合并腹腔感染', '   胰腺炎合并腹腔内脏器官破裂', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('重症胰腺炎病人可出现血糖', '降低', '明显降低 ', '正常 ', '升高 ', '时高时低', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('暴饮暴食或酗酒最易引起的急腹症是', '肠扭转', '粘连性肠梗阻 ', '急性坏疽性阑尾炎 ', '急性胰腺炎 ', '胆石症', 'D ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('不符合急性胰腺炎腹痛的特征是', '饱餐或饮酒后发生', '疼痛位于中上腹', '伴频繁呕吐 ', '间歇发作性上腹剧痛', '疼痛可向左腰部放射', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('出血性胰腺炎的最常见的并发症是', '胰腺脓肿', '化脓性感染', '急性肾衰竭', '休克 ', '胰腺假性囊肿 ', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('关于急性坏死性胰腺炎，下列哪项是错误的 ', '神志模糊和谵妄 ', '血性腹水 ', '黄疸', '血糖>11．1mmol／L', '血钙>2．5mmol/L', 'E ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('关于水肿性胰腺炎，下列哪项是错误的', '脐周出现青紫瘀斑 ', '部分病人可见轻度黄疸 ', '病人出现恶心、呕吐 ', '持续性疼痛，阵发性加重 ', '血清淀粉酶值增高', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('最能提示急性胰腺炎后不良的一项是 ', '血淀粉酶增高 ', '尿淀粉酶增高', '血糖增高 ', '血钙降低 ', '体温增高(40℃) ', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('重症胰腺炎最常见的并发症是 ', '化脓性感染 ', '急性肾衰竭', 'ARDS ', '休克', '中毒性脑病', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性胰腺炎血清淀粉酶开始升高的时间是发病后', '1～2h', '3～12h', '15～20h', '20～24h', '24～48h ', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性胰腺炎的主要临床表现 ', '腹痛', '恶心呕吐', '腹膜炎体征', '腹胀 ', '体温升高 ', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性胰腺炎发病的最主要原因 ', '暴饮暴食 ', '胆道疾病 ', '乙醇中毒', '高血脂，高血钙 ', '外伤，手术 ', 'B ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性胰腺炎非手术治疗的主要措施是 ', '抑制胰液分泌 ', '静脉快速补液', '抗生素应用 ', '密切观察生命征 ', '纠正电解质紊乱', 'A ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性胰腺炎血清淀粉酶达高峰时间是发病后 ', '3～5h ', '6～8h ', '10～14h ', '15～20h', '24～48h ', 'E ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性胰腺炎尿淀粉酶开始上升的时间是发病后', '3～5h ', '6～7h', '8～10h', '12～24h', '36h以上', 'D ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性胰腺炎时，尿淀粉酶升高的规律是 ', '发病后6h开始上升且下降较缓慢 ', '发病后12～24h开始上升且下降较迅速 ', '发病后12-24h开始上升且下降较缓慢 ', '发病后48h开始上升且下降较迅速 ', '发病后48h开始上升且下降较缓慢 ', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('性，40岁。因腹痛住院，被诊断为慢性胰腺炎。经非手术治疗后好转。出院前护士应建议哪种饮食', '普通饮食，但除外酒类饮料 ', '普通饮食，允许少量酒类饮料', '低脂肪、热量充足、禁止酒类饮料 ', '素食，禁止酒类饮料', ' 低脂肪、低蛋白、严格禁止酒类饮料', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，45岁。饱餐后出现上腹持续性疼痛并向左肩、腰背部放射，伴有恶心，呕吐，诊断为急性胰腺炎。人院后行手术治疗，术后腹腔内放置双套管灌洗引流。以下哪项护理措施不正确', '观察记录引流液量、性状', '若管腔堵塞，可用肝素液缓慢冲洗', '保护引流管周围皮肤 ', '妥善固定，保持引流通畅 ', '维持引流管内一定负压', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女性，54岁。胆源性胰腺炎发作数次，预防其胰腺炎再次发作的最有意义的措施是', '注意饮食卫生 ', '服用抗菌药', '经常服用消化酶 ', '治疗胆道疾病', '控制血糖', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，60岁，进行性黄疽2个月。诊断为胰头癌，行胰十二指肠切除术，术后5天突然出现上腹疼痛，腹腔穿刺抽出含胆汁的液体少许。病人可能出现了', '膈下脓肿 ', '术后急性腹膜炎', '嵌顿性内疝 ', '胆囊穿孔', '胰、空肠吻合口瘘', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女性，50岁，因饱餐后突发上腹痛，伴恶心，呕吐4小时住院，经检查后被诊断为急性水肿性胰腺炎，下列哪项处理不正确', '  禁食、胃肠减压', '手术引流胰周渗出液 ', '补充液体', '.解痉、止痛 ', '应用抗菌药', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女性，56岁。12小时前出现上腹部绞痛，后呈持续性腹痛，伴腰背部沉重感及恶心、呕吐。1年前B超检查出胆总管结石，近半年来曾出现右上腹绞痛2分钟。无糖尿病史。体格检查：体温38．7℃，脉率120次／分钟，血压70／50mmH别巩膜黄染腹部膨隆，全腹肌紧张、压痛、反跳痛，移动性浊音阳性，肠鸣音减弱。实验室检查血白细胞计数18X109／L中性粒细胞0．82；血清淀粉酶120U／L，血钙1．2mmol／L，血糖15mmol／L,尿胆红素(十十)。首先考虑的诊断为', '胆道蛔虫症', '急性重症胰腺炎', '急性消化道穿孔', '水肿性胰腺炎 ', '急性重症胆管炎', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女性，56岁。12小时前出现上腹部绞痛，后呈持续性腹痛，伴腰背部沉重感及恶心、呕吐。1年前B超检查出胆总管结石，近半年来曾出现右上腹绞痛2分钟。无糖尿病史。体格检查：体温38．7℃，脉率120次／分钟，血压70／50mmH别巩膜黄染腹部膨隆，全腹肌紧张、压痛、反跳痛，移动性浊音阳性，肠鸣音减弱。实验室检查血白细胞计数18X109／L中性粒细胞0．82；血清淀粉酶120U／L，血钙1．2mmol／L，血糖15mmol／L,尿胆红素(十十)。首选的检查是', '进食、补液 ', '腹部B超', '腹部CT ', '细菌学检查', '放射性核素扫描', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女性，56岁。12小时前出现上腹部绞痛，后呈持续性腹痛，伴腰背部沉重感及恶心、呕吐。1年前B超检查出胆总管结石，近半年来曾出现右上腹绞痛2分钟。无糖尿病史。体格检查：体温38．7℃，脉率120次／分钟，血压70／50mmH别巩膜黄染腹部膨隆，全腹肌紧张、压痛、反跳痛，移动性浊音阳性，肠鸣音减弱。实验室检查血白细胞计数18X109／L中性粒细胞0．82；血清淀粉酶120U／L，血钙1．2mmol／L，血糖15mmol／L,尿胆红素(十十)。一旦确诊，最恰当的处理是', '进食、补液 ', '解痉、止痛', '抗休克 ', '积极抗休克治疗，争取急诊或早期手术', '非手术治疗', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女性，56岁。12小时前出现上腹部绞痛，后呈持续性腹痛，伴腰背部沉重感及恶心、呕吐。1年前B超检查出胆总管结石，近半年来曾出现右上腹绞痛2分钟。无糖尿病史。体格检查：体温38．7℃，脉率120次／分钟，血压70／50mmH别巩膜黄染腹部膨隆，全腹肌紧张、压痛、反跳痛，移动性浊音阳性，肠鸣音减弱。实验室检查血白细胞计数18X109／L中性粒细胞0．82；血清淀粉酶120U／L，血钙1．2mmol／L，血糖15mmol／L,尿胆红素(十十)。该病早期最常见的并发症是', '胰周围脓肿 ', '败血症', '呼吸功能障碍 ', '化脓性腹膜炎', '急性肾功能衰竭', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女性，50岁。6个月前因突发上腹痛，以急性胰腺炎住院，经非手术治疗痊愈。近3个月感上腹胀，腹部逐渐隆起。无腹痛和发热。体格检查：上腹部可扪及肿块，约20cm×16cm大，表面光滑，不活动，无压痛，有波动感。依据上述病史和体检结果，初步诊断为', '肠系膜囊肿', '胰腺囊腺瘤', '胰腺假性囊肿 ', '胰腺滞留性囊肿', '腹膜后肿瘤', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女性，50岁。6个月前因突发上腹痛，以急性胰腺炎住院，经非手术治疗痊愈。近3个月感上腹胀，腹部逐渐隆起。无腹痛和发热。体格检查：上腹部可扪及肿块，约20cm×16cm大，表面光滑，不活动，无压痛，有波动感。为明确诊断，最宜选择的检查方法是', 'X线钡餐检查 ', '血清淀粉酶', 'B超', 'CT ', 'ERCP', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女性，50岁。6个月前因突发上腹痛，以急性胰腺炎住院，经非手术治疗痊愈。近3个月感上腹胀，腹部逐渐隆起。无腹痛和发热。体格检查：上腹部可扪及肿块，约20cm×16cm大，表面光滑，不活动，无压痛，有波动感。影像学检查提示病变局限，结合病史，该病例应选择的最佳治疗方法是', '抗感染，营养支持 ', '继续观察', '服用利胆药物', '胆囊切除术', '手术引流 ', 'E ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女性，50岁。6个月前因突发上腹痛，以急性胰腺炎住院，经非手术治疗痊愈。近3个月感上腹胀，腹部逐渐隆起。无腹痛和发热。体格检查：上腹部可扪及肿块，约20cm×16cm大，表面光滑，不活动，无压痛，有波动感。术后第4天开始，腹腔引流量明显增加，每日300—600ml，测引流液淀粉酶达1000U／L考虑可能为', '胆瘘', '胰瘘', '急性胰腺炎 ', '胰腺假性囊肿', '肠瘘', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，42岁，酒宴后上腹部疼痛伴恶心、呕吐，病后6小时宋诊。体检：全腹肌紧张，压痛及反跳痛。血压75／50mmHg，腹腔穿刺抽出淡粉色液，白细胞18.4X109／L血清淀粉酶600U／L。初步诊断为', '急性阑尾炎', '急性胰腺炎 ', '急性胆囊炎', '急性肠梗阻', '重症胆管炎', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，42岁，酒宴后上腹部疼痛伴恶心、呕吐，病后6小时宋诊。体检：全腹肌紧张，压痛及反跳痛。血压75／50mmHg，腹腔穿刺抽出淡粉色液，白细胞18.4X109／L血清淀粉酶600U／L。下列哪项为其发病诱因', ' 暴饮暴食', '精神因素 ', '并发败血症', '甲状旁腺功能亢进', '胆道梗阻及胆汁逆流', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，42岁，酒宴后上腹部疼痛伴恶心、呕吐，病后6小时宋诊。体检：全腹肌紧张，压痛及反跳痛。血压75／50mmHg，腹腔穿刺抽出淡粉色液，白细胞18.4X109／L血清淀粉酶600U／L。给予该病人禁食、胃肠减压的主要目的是', '减轻腹胀', '减轻恶心、呕吐', '引流胃液 ', '减少胃酸分泌', '减轻腹胀、减少胃液和胰腺分泌', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，42岁，酒宴后上腹部疼痛伴恶心、呕吐，病后6小时宋诊。体检：全腹肌紧张，压痛及反跳痛。血压75／50mmHg，腹腔穿刺抽出淡粉色液，白细胞18.4X109／L血清淀粉酶600U／L。此病人可能发生的最常见的并发症是', '肝功能衰竭', '急性呼吸窘迫综合征', '心功能不全', '脑水肿 ', '消化道溃疡', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，42岁，酒宴后上腹部疼痛伴恶心、呕吐，病后6小时宋诊。体检：全腹肌紧张，压痛及反跳痛。血压75／50mmHg，腹腔穿刺抽出淡粉色液，白细胞18.4X109／L血清淀粉酶600U／L。病人一般不出现下列哪项体征', '脐周皮肤蓝色改变 ', '腰部皮肤蓝棕色改变', ' 腹部包块 ', '腹部移动性浊音', ' 低血糖综合征', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，42岁，酒宴后上腹部疼痛伴恶心、呕吐，病后6小时宋诊。体检：全腹肌紧张，压痛及反跳痛。血压75／50mmHg，腹腔穿刺抽出淡粉色液，白细胞18.4X109／L血清淀粉酶600U／L。若病人术后作腹腔双套管灌洗引流，常用的冲洗液为', '抗菌药', '生理盐水', '硼酸水', '生理盐水加抗菌药 ', '生理盐水加硼酸水', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('对疑有腹腔内脏损伤和生命体征不稳定的病人，观察期间下列哪项措施不妥', '禁食禁水', '观察病情', '用吗啡暂时止痛', '极做好手术准备', '不随意搬动病人', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('疑有空腔脏器损伤时，首选的影像学检查方法是', 'B超', 'CT检查', 'MRI检查', '介入检查', 'X线', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('实质性脏器损伤时最有助明确诊断的依据是', '腹膜刺激征', '肠鸣音亢进 ', '呕血', 'B超检查', '腹腔穿刺抽出不凝固血液', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('腹部损伤合并失血性休克时的处理原则是', '给予止血药物', '快速补充液体', '应用抗生素控制感染 ', '输新鲜血 ', '治疗休克同时手术探查止血', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('腹部损伤伴有少量肠管脱出时，首选的急救措施是', '迅速将肠管还纳腹腔 ', '用消毒纱布覆盖并包扎', '凡土林纱布覆盖并包扎 ', '用盐水纱布覆盖并包扎 ', '用消毒或清洁器皿覆盖并包扎', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('腹部损伤有合并以下问题时应优先处理', '窒息', '气胸 ', '昏迷 ', '出血 ', '休克', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('下列哪种脏器损伤的临床表现为细菌性腹膜炎', ' 肝 ', '脾 ', '胰 ', '肾 ', '胃', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('腹部损伤合并其他损伤时，以下列哪种合并伤不易延误腹腔内脏损伤的诊断', '颅脑伤', '胸外伤', '脊柱骨折', '窒息', '前臂骨折', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('腹部损伤腹腔内脏出血主要来自', '肝脾破裂 ', '腹主动脉破裂', '肠系膜血管破裂 ', '胰腺损伤 ', '胆囊损伤', 'A ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('腹部损伤的护理，下列哪项不正确', '严密观察病情变化，至少每半小时测血压、脉搏、呼吸、体温1次', '给予抗生素，开放性损伤应给破伤风抗毒血清', '观察期腹痛严重者，可给予吗啡止痛', '非手术治疗期间要求绝对卧床休息 ', '无内脏损伤者可给予流质或半流汁饮食 ', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('判断胃肠道破裂最有价值的发现是 ', 'A腹膜刺激征', '心率增快 ', '呕血', 'X线平片隔下游离气体', '腹胀', 'D ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，30岁.上腹部外伤史.2h后面色苍白,脉细弱120次/min，血压70／50mmHg.意识清，全腹腹膜刺激征，腹腔穿刺抽出不凝血液，诊断可能是 ', '胃破裂', '腹壁血肿', '肝脾破裂', '小肠破裂', '胆囊破裂', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('区别空腔脏器破裂与实质脏器破裂的最重要的依据是 ', '外伤史', '腹痛程度', '腹膜刺激征轻重', '有无移动性浊音 ', '腹腔穿刺液性状 ', 'E ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('对腹部闭合性损伤与内出血合并休克的病人应', '全力抢救休克 ', '立即手术 ', '休克改善后再行手术', '抢救休克同时手术', '手术止血后治疗休克 ', 'D ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男,30岁.5天前被汽車撞伤左上腹,當時腹痛伴局部压痛.今日上厕所時突然昏倒，面色苍白，脉细速.可能是 ', '肝破裂', '肠穿孔 ', '胆囊 ', '肾破裂', '脾破裂', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('上腹部被汽车撞伤3h，患者面色苍白，四肢厥冷，血压8／5．3kPa，P140次／min，全腹轻度压痛、反跳痛与肌紧张，首先应考虑 ', '胃破裂', '十二指肠破裂 ', '肝、脾破裂', '严重腹壁軟组织挫伤 ', '腹膜后血肿', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，42岁，因严重交通事故致全身多发性损伤，其急救措施不包括', '首先处理危及生命的损伤', '脱出的肠管应及时还纳', '置病人于恰当的体位', ' 及时包扎损伤部位', '对腹腔内脏破裂出血者应在抗休克同时手术止血', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女性，34岁，从马背上跌下，局部腹壁瘀斑，阵发性腹痛，住院期间若需手术探查，下列哪项指征属错误', '腹痛进行性加重', '血压明显下降', '全腹胀、肠鸣音消失', '线检查示膈下游离气体', '腹部透视发现胃扩张', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，28岁，以腹部闭合性损伤收住人院，腹腔穿刺未能确诊何种脏器损伤原因不包括', '穿刺针太粗 ', '空腔脏器穿孔较小', '实质性脏器被膜下破裂', '消化液漏出量少', '实质性脏器破裂出血量少', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，48岁，餐后l小时，被马踢伤中上腹后，突感上腹部剧烈疼痛呈持续性刀割样，短时间内腹痛逐渐扩至全腹，左上腹明显压痛、反跳痛、肌紧张，X线检查示膈下有游离气体。应首先考虑', '胃穿孔 ', '肾破裂', '脾破裂', '结肠破裂 ', '肝破裂', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，48岁，餐后l小时，被马踢伤中上腹后，突感上腹部剧烈疼痛呈持续性刀割样，短时间内腹痛逐渐扩至全腹，左上腹明显压痛、反跳痛、肌紧张，X线检查示膈下有游离气体。为进一步明确诊断，宜选以下何种辅助检查', 'B超', '实验室检查', '腹腔穿刺 ', 'MRI检查', 'CT检查', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，48岁，餐后l小时，被马踢伤中上腹后，突感上腹部剧烈疼痛呈持续性刀割样，短时间内腹痛逐渐扩至全腹，左上腹明显压痛、反跳痛、肌紧张，X线检查示膈下有游离气体。该病人目前最主要的护理诊断为', '体液不足', '焦虑 ', '体液过多 ', '疼痛 ', '躯体移动障碍', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，48岁，餐后l小时，被马踢伤中上腹后，突感上腹部剧烈疼痛呈持续性刀割样，短时间内腹痛逐渐扩至全腹，左上腹明显压痛、反跳痛、肌紧张，X线检查示膈下有游离气体。为缓解腹痛应首选采取以下何种卧位', '平卧位', '仰卧屈膝位', '头高脚低位 ', '头低脚高位', '半卧位', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，48岁，餐后l小时，被马踢伤中上腹后，突感上腹部剧烈疼痛呈持续性刀割样，短时间内腹痛逐渐扩至全腹，左上腹明显压痛、反跳痛、肌紧张，X线检查示膈下有游离气体。为尽快减少消化液的刺激', '禁食和胃肠减压', '避免随意搬动病人', '禁灌肠 ', '慎用止痛剂', '仰卧屈膝位', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男，30岁，因车祸撞伤腹部，诉腹痛，伴恶心、呕吐、呕吐物量少.X线透视见膈下游离气体，拟诊为胃肠道穿孔.该患者系空腹穿孔，拟保守治疗，下列那一项处理不正确', '监测生命体征', '监测腹部体征 ', '监测尿量', '解除患者疼痛 ', '应用抗生素', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男，30岁，因车祸撞伤腹部，诉腹痛，伴恶心、呕吐、呕吐物量少.X线透视见膈下游离气体，拟诊为胃肠道穿孔. 在观察过程中，出现下列情况说明病情恶化，考虑中转手术，但除哪项外 ', '原发病变严重，起病迅猛 ', '无局限趋势 ', '出现休克表现', '病情不缓解反而加重 ', '患者疲困无力', 'E ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男，30岁，因车祸撞伤腹部，诉腹痛，伴恶心、呕吐、呕吐物量少.X线透视见膈下游离气体，拟诊为胃肠道穿孔. 手术治疗，术中应做到 ', '清理腹腔', '吸净脓液', '尽可能去除原发病灶', '安置腹腔引流 ', '以上均是 ', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，40岁，多年胃、十二指肠溃疡病，近半月来胃病发作，饮食后突然全腹疼痛剧烈，刀割样，血压100／70mmHg(13．3／9．3kPa)脉搏100次／min，全腹压痛，反跳痛，肌紧张 ,初步诊断是', '急性阑尾炎', '急性阑尾炎穿孔腹膜炎 ', '胃、十二脂肠溃疡', '胃、十二指肠溃疡穿孔腹膜炎 ', '胆囊炎 ', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，40岁，多年胃、十二指肠溃疡病，近半月来胃病发作，饮食后突然全腹疼痛剧烈，刀割样，血压100／70mmHg(13．3／9．3kPa)脉搏100次／min，全腹压痛，反跳痛，肌紧张 ,下列哪项检查有助于诊断', '腹腔穿刺', '化验血白细胞 ', '化验血红细胞', '黄疸指数 ', '化验血胆红素', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，40岁，多年胃、十二指肠溃疡病，近半月来胃病发作，饮食后突然全腹疼痛剧烈，刀割样，血压100／70mmHg(13．3／9．3kPa)脉搏100次／min，全腹压痛，反跳痛，肌紧张  ,如果上述检查不能确诊，下列哪项检查更有助于确诊 ', 'B超 ', 'CT', 'X光', '核磁共振 ', '血管造影', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，40岁，多年胃、十二指肠溃疡病，近半月来胃病发作，饮食后突然全腹疼痛剧烈，刀割样，血压100／70mmHg(13．3／9．3kPa)脉搏100次／min，全腹压痛，反跳痛，肌紧张  ,确诊后处理原则是 ', '抗生素治疗 ', '输液治疗', '止痛治疗 ', '手术治疗 ', '针灸治疗', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('目前世界上在静脉输液领域的专业学术组织静脉输液护理学会（Infusion Nursing Society，INS）是在哪一年成立的？', ' 1900年', '    1920年', '1940年 ', ' 1972年', ' ', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('扎止血带的时间不宜超过：', '  160s', '200s', '120 s', '240s', NULL, 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('头皮针输液皮肤消毒范围为', '直径不小于5cm ', '直径不小于8cm ', '直径不小于12cm', '直径不小于20cm', NULL, 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('留置针输液皮肤的消毒范围为', '直径不小于5cm ', '直径不小于8cm ', ' 直径不小于12cm', '直径不小于20cm', NULL, 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('经外周中心静脉置管皮肤消毒范围为：', '直径不小于5cm ', '直径不小于8cm ', ' 直径不小于12cm', '直径不小于20cm', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('置针输液时关于血管的选择下列错误的是', '应选择富有弹性且粗直的静脉', '应选择瘫痪侧肢体的静脉', '肾病患者避免使用适合建立血透通路的前臂和上臂血管', '通常从上肢远端的血管开始，随后的穿刺点位于先前穿刺部位的近心端', NULL, 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('冲封管错误的描述为', '封管是将肝素稀释液注入导管内，防止血液回流、凝结阻管，从而保持导管的畅通。', '为了维护输液导管的通畅，避免药液刺激局部血管，必须对导管进行定期冲洗、封管。', '采用推一下、停一下的正压脉冲式冲管方法', '冲洗液量应少于导管容积的2倍', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('成人外周短导管保留时间', '72-96小时', ' 72-120小时', '36-72小时 ', '96-120小时', NULL, 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('输液治疗的感染控制和护理安全描述错误的是', '输液治疗时必须严格执行无菌技术操作规程，执行标准预防措施', '使用手套不能代替洗手', '为减少针刺伤的发生，选用防针刺伤的穿刺器具', '消毒剂用无菌棉签擦拭干净方可穿刺', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('当患者在输液过程中突发肺水肿时，下面处理正确的是', '立即加快输液速度，扩容补液 ', '立即置患者为头低足高位', '立即加压给氧 ', '吸氧时应在湿化瓶中加入50~75%的酒精', NULL, 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('当患者输液时发生空气栓塞时，应将患者置于', '中凹卧位 ', ' 左侧头低足高位', '右侧头低足高位 ', ' 半坐卧位', NULL, 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES (' PICC置管术首选静脉 ', '肘正中静脉', '头静脉 ', '贵要静脉', '锁骨下静脉 ', NULL, 'C ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('行导管相关性血流感染（CRBSI）监测时,拔除导管后，将导管尖端(  )做血培养。', '4cm', '5cm', '8cm ', '10cm', NULL, 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('下列关于外周静脉短导管说法正确的是：', '可作为常规血标本采集。', '可使用外周静脉短导管静脉推注或滴注刺激性、腐蚀性药物的持续性静脉滴注、PH值<5或>9、渗透压>600mOsm/L液体或药物。', '可以用于反复输血或血液制品。', '可使用外周静脉短导管持续给予肠胃外营养。', NULL, 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('下列关于中心血管通路装置错误的是：', '中心血管通路装置可用于短期或者长期、连续或者间歇的静脉输液给药，如抗肿瘤药物、持续腐蚀性药物、已知刺激性药物、肠胃外营养、PH值<5或>9、渗透压>600mOsm/L的液体或药物。', '中心血管通路装置可用于反复输血或血液制品。', '中心血管通路装置可用于血标本的采集。', '中心静脉导管（CVC）宜用于长期静脉输液治疗、血液动力学的监测，高压注射泵注射造影剂。', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('2011年INS标准建议连续性输液装置用于输注除脂肪、血液和血液制品以外的药液，更换频率不应短于_____每次。', '   24h', '48h', '72h', '96h', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('当间歇静脉输入脂肪乳剂时，______应更换输液装置一次. ', '4h ', '每使用一瓶 ', '24h', '96h', NULL, 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('2011年INS标准建议含有脂肪乳剂的肠外营养液宜在______内输完，否则弃去。', '4h ', '12h ', '24h', '96h', NULL, 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('输全血或成分血时，输血装置和附加装置应在每一个单位全血或成分血输入后更换1次，或每____更换1次。', '4h', '12h ', '24h', '96h', NULL, 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('血液透析用导管每一次使用后，应用____u/ml的肝素封管液封管。', '10', '125', '1000', '100', NULL, 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('中央血管通路穿刺部位护理的频率应根据敷料的类型来决定。透明的半透膜敷料（TSM）应该每____更换1次。', '1 天', '2天 ', '5-7天', '72-96小时', NULL, 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('下列关于血管通路装置的拔除错误的是：', '当疑似污染或出现并发症时，应立即拔除血管通路装置。', 'PICC的最佳保留时间尚未确定,应根据患者的状况、治疗的完成情况、是否存在感染、导管位置和功能有无异常情况等来确定是否拔除。', '紧急情况下放置的血管通路装置应在72小时内拔除。', '拔除外周中-长导管、中心静脉导管、PICC导管后应用指压法压迫穿刺点直至止血，穿刺点消毒，然后覆盖无菌敷料，以预防空气栓塞。', NULL, 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('静脉注射对比剂及黏稠度较高的药物时宜选择_______', '抗压导管或专用CT头皮针', '普通头皮针', '普通留置针', '不抗压的中心静脉导管', NULL, 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('下列关于冲管的时机错误的是:', '每次输液之前 ', '每次输液结束之后', '给予不相溶的药物或液体之间 ', '输液之前遇到阻力或者抽吸无回血，应进行冲管。', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('如何测量PICC置入导管长度 ', '病人上臂与身体成60度角, 自穿刺点至右胸锁关节，向下至第三肋间', '病人上臂与身体成90度角, 自穿刺点至右胸锁关节，向下至第二肋间', '病人上臂与身体成60度角, 自穿刺点至右胸锁关节，向下至第二肋间', '病人上臂与身体成90度角, 自穿刺点至右胸锁关节，向下至第三肋间', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('导管入口处红肿、硬结、流脓，有不明原因的发热和血象升高，应高度怀疑：', '静脉炎', '导管相关感染 ', '导管栓塞 ', '输液反应', NULL, 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('输液治疗时患者突然出现心慌气紧、呼吸困难、发绀、大汗、咳嗽、咳泡沫血痰、烦躁不安。听诊：肺部布满湿性啰音。应高度怀疑：', '循环负荷过重 ', '空气栓塞', '输液反应 ', '过敏反应', NULL, 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('输液部位出现疼痛，伴红肿，可触及条索状静脉。上述情况根据INS静脉炎分级可诊断为几级：', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('根据渗出的严重程度，按INS的标准，将液体渗出分为五级，下列哪项是渗出2级： ', '1级', '2级', '3级 ', '4级', NULL, 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('无症状', '无症状', '皮肤发白，水肿范围最大直径小于2.5cm，皮肤发凉，伴有或不伴有疼痛。', '皮肤发白，水肿范围最大直径在2.5~15cm，皮肤发凉，伴有或不伴有疼痛。', '皮肤发白，水肿范围最小直径大于l5cm，皮肤紧绷、半透明状、有渗出，皮肤变色、有瘀斑、肿胀，呈可凹性水肿，循环障碍，轻到中等程度的疼痛', NULL, 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('输血结束后，空血袋应保存_____小时，之后按医疗废物处理。', '4', '12', '24', '48', NULL, 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('医护人员应有计划地取血，从输血科（血库）取出的血液和血液制品应在______内输完。', '2h ', '4h', '12h', '24h', NULL, 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('静脉穿刺前，使用1-2%碘酊消毒皮肤，其起效时间为：', '即刻起效，2分钟达到最佳效果', '15秒起效', '1分钟起效 ', '2分钟起效', NULL, 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('静脉穿刺前，使用洗必泰消毒皮肤，其起效时间为：', '即刻起效，2分钟达到最佳效果 ', '15秒起效', '1分钟起效 ', '2分钟起效', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('光化是指药物在光的作用下，发生降解或外观色泽改变。这些药物在制备、贮存和应用中都需要注意避免强光的直接照射。下列易发生光化作用的药物是：', '硝普钠 ', '维生素C', '维生素K1 ', '青霉素', NULL, 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('下列关于药物配伍错误的是：', '混合注射和混合配制的药物种数应尽量少，因混合的药物种数越多，配伍禁忌发生的几率越大', '不清楚配伍情况时，不应贸然将药物相互混合，应分别单独使用', '药物混合后，放置的时间越长，发生配伍禁忌的可能性越大', '阳离子药物和阴离子药物配伍时不易发生变化。', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('人体血浆渗透压的正常范围为______mOsm/L：', '280～310 ', '180～220 ', '500～600', ' 300～600', NULL, 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('以工作为导向，按工作内容分配护理工作的护理工作方式是？', '个体护理', '功能制护理', '小组制护理', '责任制护理', '综合护理', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('护士为长期卧床的病人在床上擦浴，此时护士的角色是？', '健康照顾着', '健康教育者', '健康咨询者', '护理管理者', '护理研究者', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('下列哪项不属于护理技术操作前解释的内容？', '操作的目的', '病人需配合的内容', '操作过程', '给予心理上的安慰', '感谢病人的合作', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('下列属于语言性交流的是？', '手势', '沉默', '倾诉', '倾听', '眼神', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('护士协助病人进行康复锻炼属于纽曼保健系统模式中的？', '一级预防', '二级预防', '三级预防', '四级预防', '五级预防', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('根据马斯洛的人类需要层次论，下列描述正确的是？', '一般情况下，必须先满足高层次的需要，然后才考虑较低层次的需要', '不同层次的需要会出现重叠甚至颠倒', '所有需要都必须立即和持续地给予满足', '个体基本需要满足的程度与健康健康成反比', '各需要层次有其独立性不会相互影响', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('与病人交谈的正确方法是？', '不评论病人所谈到的内容', '及时陈述自己的观点和看法', '病人提问时应迅速做出解答', '病人叙述过多时及时转换话题', '病人担心预后时，应立即做出保证', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('护患沟通时正确的做法是？', '避免与病人有目光的接触', '及时纠正病人叙述的内容', '适当点头或轻声说“是”', '对病人谈话的内容及时做出是非判断', '不断提问引导谈话的进行', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('病人处于安全的需要最希望？', '负责任护士的照顾', '了解有关用药方面的知识', '家属的陪伴', '尽量不要用药物治疗', '获得一个安静的休养环境', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('护理程序以恢复和增进护理对象的健康为目标所进行的一系列有目的、有计划的护理过程，是一种？', '工作内容', '管理制度', '沟通模式', '健康模式', '工作程序', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('潜在的健康问题应如何陈述？', '潜在的……并发症:与……有关', '潜在的……并发症:由……引起', '潜在的……问题:与……有关', '潜在的……并发症:有……危险', '潜在的……并发症:有……可能', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('认为患病是一种惩罚,社会难以接受自己的病,病人此种心理反应是属于？', '焦虑与震惊', '羞辱和罪恶', '退化和依赖', '恐慌和退缩', '否认和排斥', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('以下关于焦虑的描述错误的是？', '焦虑病人可表现出心悸和血压升高', '焦虑是分为不同级别的', '是护理人员经常遇到的护理问题', '可以表现在情感及认知等方面', '与处于焦虑状态病人多接触，互相解脱', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急诊科护理工作的组织和管理不包括？', '制度化', '最优化', '规律化', '程序化', '标准化', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急救物品管理要求做到“五定”，其主要目的是？', '节约时', '责任到人', '便于管理', '急救物品准备完好率要求达到100%', '防止遗失', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('伤寒病人入院行卫生处置时，衣服的最佳处理方法是？', '存放在住院处', '交家属带回家', '消毒后再交回病人保管', '消毒后存放在住院处', '日光暴晒后存放病室', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('胰胆管造影时应协助病人采取的体位是？', '俯卧位', '截石位', '膝胸卧位 ', '侧卧位  ', '仰卧位', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('中凹卧位适用于？', '脑出血病人', '心包积液病人', '休克病人', '支气管哮喘病人', '虚脱病人', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('以下影响舒适的因素中，属于环境方面的因素是？', '焦虑', '人际关系', '疼痛', '角色改变 ', '自尊受损', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('对老年人活动的要求正确的是？', '老年病人应尽量少活动', '老年病人可任意活动', '健康老年人可任意活动', '健康老年人运动前不用进行评估', '老年病人根据身体状况选择活动', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('以下漱口溶液中，遇有机物放出新生氧气并能抗菌除臭的是？', '1%~3%过氧化氢', '2%~3%硼酸', '0 .1%醋酸', '1%~4%碳酸氢钠', '朵贝尔溶液', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('关于沐浴法的叙述正确的是？', '浴室温度在30℃左右', '水温调节在50~52℃', '应在餐后半小时进行', '浴室应闩门以保证隐私', '创伤病人不宜淋浴', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('保护骨隆突处，预防压疮不宜使用？', '海绵垫', '气垫', '软枕', '水褥 ', '橡胶气圈', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('可出现脉压增大的疾病是？', '心包积液', '糖尿病', '主动脉瓣关闭不全', '高血压', '主动脉瓣狭窄', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('测量血压操作错误的是？', '测量前病人需休息20~30分钟', '袖带松紧以能放入一指为宜', '袖带下缘应距肘窝2~3cm', '听诊器胸件置于肘横纹下2cm处', '以每秒钟4mmHg的速度放气', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('下列属于脂溶性的维生素是？', '维生素D', '维生素C', '维生素B12 ', '维生素PP', '维生素B6', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('下列病人中应给与鼻饲饮食的是？', '婴幼儿', '经常呕吐的病人', '拒绝进食的病人', '食欲低下的病人', '刚拔牙的病人', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('热疗的作用描述正确的是？', '促进浅表炎症消退和局限', '早期可防止炎症的扩散', '减轻局部出血', '传导发散体内的热  ', '提高痛觉神经的兴奋性', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('乙醇擦浴物理降温时，禁忌擦拭的部位是？', '头部', '肘窝', '腹股沟 ', '前胸', '两侧肾区', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('发现留置尿管导尿的病人出现尿液浑浊、沉淀时应？', '经常清洁尿道口', '拔出导尿管', '进行膀胱功能训练', '进行膀胱冲洗', '经常更换卧位', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('对尿液颜色的描述正确的是？', '胆红素尿呈酱油色', '乳糜尿呈乳白色', '肾癌尿液呈黄褐色', '菌尿呈棕红色', '溶血反应的尿液呈红色', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('病毒性肝炎病人使用过的化纤织物，最佳的消毒方法是？', '环氧乙烷气体消毒', '日光暴晒', '紫外线消毒', '过氧乙酸浸泡', '高压蒸汽灭菌', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('下列化学消毒剂中，对芽孢无效的？', '环氧乙烷', '氯已定（冼必泰）', '过氧乙酸浸泡', '甲醛 ', '戊二醛', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('无菌持物钳的使用方法正确的是？', '浸泡消毒液面在持物钳1/2处', '取放无菌持物钳时，钳端应闭合', '干燥存放时每日更换1次', '到远处取物时应速去速回 ', '持物钳钳端向上，不可跨越无菌区', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('某传染病病室，长5cm、宽4cm、高3cm，用纯乳酸进行空气消毒，纯乳酸用量是？', '9.6ml', '7.2ml ', '6.4ml ', '4.2ml   ', '2.4ml', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('超声雾化吸入法改善通气的机制是？', '抑制细胞活性', '减少局部血液', '降低神经细胞兴奋性', '刺激神经末梢', '解除呼吸道痉挛', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('注射时减轻疼痛的做法正确的是？', '病人注意力要集中', '刺激性强的药物先注射', '取侧卧位，上腿弯曲，下腿伸直', '推药的速度要稍快', '刺激性强的药物做深部注射', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('口服药物注意事项正确的是？', '同时服用多种药物时，应最先服用止咳糖浆，以免药效降低', '铁剂药物宜浓茶水送服', '促进食欲药物宜饭后服', '磺胺类的药物宜多饮水', '助消化药宜饭前服', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('如再次使用同一批号青霉素治疗，免做过敏试验要求间断时间不超过？', '1天', '2天', '3天 ', '5天', '7天', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('肺水肿病人加压吸氧的主要作用是？', '增加动脉血压分压减少毛细血管渗出', '减少肺泡内泡沫的表面张力', '使肺泡内压力增高减少肺泡毛细血管渗液', '增加肺泡表面张力改善肺部气体交换', '增加肺泡毛细血管渗出液的产生', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('大量输注库存血时要防止发生？', '碱中毒和低血钙', '碱中毒和高血钙', '低血钾和低血钙', '酸中毒和高血钙', '酸中毒和高血钾', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('护士为病人输血前的准备工作错误的是？', '做血型鉴定及交叉配血试验', '血制品不能加温，需自然复温', '与血库人员共同做好“三查八对”', '先输入复方氯化钠溶液', '血液从血库取出后勿剧烈振荡', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('留24小时尿标本做17-羟类固醇检查，为防止尿中激素被氧化，应加的防腐剂是？', '甲苯', '浓盐酸 ', '甲醛 ', '高锰酸钾  ', '乙醇', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('抢救室必备的设备不包括？', '心电监护仪', '壁灯', '洗胃机', '电源插座', '木板1块', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('PaO2?低于多少应给予吸氧？', '80mmHg（10 7kPa）', '70mmHg（9 3kPa）', '60mmHg（8 0kPa）', '50mmHg（6 6kPa）', '40mmHg（5 3kPa）', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('因误服药物引起急性中毒的病人，意识清醒时应首选？', '口服催吐洗胃法', '漏斗胃管洗胃法', '注洗器洗胃法', '电动吸引器洗胃法', '药物导泻清除法', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('对电击后心跳骤停的病人进行心肺复苏的步骤是？', '人工呼吸，人工循环，开放气道', '脑复苏，人工呼吸，人工循环', '人工循环，开放气道，人工呼吸', '人工呼吸，脑复苏，开放气道', '开放气道，人工呼吸，心脏除颤', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('脑水肿濒死期病人常出现高热不退，其主要原因是？', '下丘脑受抑制', '延髓受抑制', '大脑皮质受抑制', '脑桥受抑制', '脊髓受抑制', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('应首先执行的医嘱是？', '长期医嘱', '即刻医嘱 ', '临时备用医嘱', '长期备用医嘱', '停止医嘱', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('制订医院分级护理的主要依据是？', '诊断', '意识', '病种 ', '病情 ', '自理能力', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者，女性，65岁，脑血管意外，意识不清，长期卧床。根据奥瑞姆的自理模式，护士提供的护理应属于？', '全补偿系统', '部分补偿系统', '支持教育系统', '健康教育系统', '辅助系统', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者，女性，20岁，面部烧伤，恢复期，面部留有瘢痕。病人常有自卑感，不愿见人。护士应特别特别注意满足病人需要的层次是？', '生理需要', '安全需要', '社交的需要', '尊重的需要', '自我实现的需要', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者，男性，75岁，胃癌晚期，全身极度衰竭，意识有时模糊。为安慰病人，护士与其交流时应使用的距离是？', '亲密距离', '熟人距离', '社交距离', '工作距离', '演讲距离', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性心肌梗死病人需住院治疗，住院处护理人员首先？', '进行卫生处置', '进行护理诊断', '协助病人办理入院手续', '给予氧气吸入，立即平车送入病区', '留尿便标本检验', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者，男性，48岁，病人因晚期肝癌疼痛多日，导致多方面的反应。下列不属于疼痛所引起的反应是？', '血压升高、手掌出汗、面色苍白', '血钙升高、血糖升高、血钠降低', '胃肠功能紊乱', '皱眉、哭泣、呻吟', '退缩、抑郁、愤怒、依赖', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者，男性， 55岁，因脑血管意外急诊入院。经过3周治疗病情稳定，医生下医嘱出院，病人仍有左侧上、下肢麻木，活动受限等症状。出院指导的内容不恰当的是？', '注意情绪稳定', '注意生活规律', '每天饮酒两杯达活血目的', '掌握药物服用知识', '进行肢体功能锻炼', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者女性.60岁.有溃疡病史10余年。突然出现呕血约500ml.伴有黑便.急 诊人院。查体:神志清楚.血压100/ 60mmHg，心率110次/分。以下护理措施中正确的是', '焦虑、恐惧', NULL, NULL, NULL, NULL, NULL, NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('平卧位.头部略抬高 ', '平卧位.头部略抬高 ', '三腔二囊管压迫止血 ', '呕吐时头偏向一侧.防止误吸和 窒息', '快速滴人血管加压素 ', '暂时给予流质饮食', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性，46岁，诊断为\"上消化道出血\"收住院.为明确出血病因，首选的检查方法是', '大便隐血试验', 'X线钡剂造影 ', '内镜检查', '血常规检查', 'B超检查', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性，56岁，肝硬化病史2年。因上消化道大量出血急诊入院.后并发肝性脑病，出血后3天未排大便。应首选的措施是', '清水灌肠', '开塞露 ', '肥皂水灌肠', '口服番泻叶', '25%硫酸镁导泻+乳果糖口服', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性，52岁.因上消化道出血使用三腔二囊管为其止血。压迫3天后出 血停止，考虑拔管。此时需留管再观察的时间是', '6小时', '8小时', '12小时', '24小时', '48小时', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性，56岁.有肝硬化病史10余年。近日食欲明显减退，黄疸加重。今晨因剧烈咳嗽突然呕咖啡色液体约1200ml.黑便 2次.伴头晕、眼花、心悸。急诊人院。体检: 神志清楚.面色苍白.血压8O/60mmHg.心率110次/分。 患者上消化道出血最可能的原因是', '消化性溃疡出血 ', '食管胃底静脉曲张出血 ', '急性靡烂出血性胃炎', '应激性溃疡', '胃癌出血', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性，56岁.有肝硬化病史10余年。近日食欲明显减退，黄疸加重。今晨因剧烈咳嗽突然呕咖啡色液体约1200ml.黑便 2次.伴头晕、眼花、心悸。急诊人院。体检: 神志清楚.面色苍白.血压8O/60mmHg.心率110次/分。 对该患者紧急处理措施中首要的是', '内镜检查明确病因 ', '积极补充血容量 ', '立即采取止血措施', '手术治疗', '升压药提高血压 ', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性，56岁.有肝硬化病史10余年。近日食欲明显减退，黄疸加重。今晨因剧烈咳嗽突然呕咖啡色液体约1200ml.黑便 2次.伴头晕、眼花、心悸。急诊人院。体检: 神志清楚.面色苍白.血压8O/60mmHg.心率110次/分。 该患者止血治疗宜采用的药物是', 'H2受体拮抗剂', '质子泵抑制剂', '生长抑素', '去甲肾上腺素', '酚磺乙胺 ', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性，56岁.有肝硬化病史10余年。近日食欲明显减退，黄疸加重。今晨因剧烈咳嗽突然呕咖啡色液体约1200ml.黑便 2次.伴头晕、眼花、心悸。急诊人院。体检: 神志清楚.面色苍白.血压8O/60mmHg.心率110次/分。 该患者目前最主要的护理诊断是', '疼痛', '营养失调 ', '活动无耐力', '体液不足', '有感染的危险 ', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性，56岁.有肝硬化病史10余年。近日食欲明显减退，黄疸加重。今晨因剧烈咳嗽突然呕咖啡色液体约1200ml.黑便 2次.伴头晕、眼花、心悸。急诊人院。体检: 神志清楚.面色苍白.血压8O/60mmHg.心率110次/分。 若经过治疗.患者情况已基本稳定。下列选项提示出血停止的是', '听诊肠鸣音1~ 12次/分 ', '黑便次数增多.粪质稀薄 ', '血红蛋白测定下降 ', '尿量正常，血尿素氮持续增高 ', '血压基本维持在正常水平 ', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性，56岁.有肝硬化病史10余年。近日食欲明显减退，黄疸加重。今晨因剧烈咳嗽突然呕咖啡色液体约1200ml.黑便 2次.伴头晕、眼花、心悸。急诊人院。体检: 神志清楚.面色苍白.血压8O/60mmHg.心率110次/分。 若患者突然出现神志恍惚、嗜睡，提示可能出现', '消化道再出血', '脑出血', '低血容量性休克', '肝性脑病', '肝肾综合征', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('下列有关急腹症的说法哪项不正确', '急腹症是一类以急性腹痛为主要表现的疾病', '急腹症是一类必须早期诊断并紧急处理的疾病', '急腹症的特点为发病急、病情重、进展快、变化多', '急腹症的病因多与外科、妇产科和内科疾病有关', '急腹症仅指发生于腹部的急性疾病', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('内脏痛的特点是', '疼痛的传导速度快 ', '对压力和张力性刺激极为敏感', '与躯体痛同时出现 ', '感觉敏锐，定位准确', '感觉迟钝，定位准确', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性腹膜炎伴有休克病人宜采用的体位是', '头低脚高位 ', '头抬高20°～30°，脚抬高15°～20°', '半卧位 ', '平卧位', '侧卧位', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('给急腹症患者行直肠指检如指套染有血性黏液应考虑', '急性阑尾炎', '急性胆囊炎 ', '急性胰腺炎', '消化道出血', '肠管绞窄', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('炎性急腹症疼痛的特点是 ', '腹痛突然发生或加重，呈持续性剧痛 ', '起病缓慢，腹痛由轻至重，呈持续性 ', '腹痛较轻呈持续性 ', '起病急，呈持续性阵发性加重 ', '起病急，呈阵发性腹部绞痛', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急性腹痛诊断未明时严禁随意使用 ', '针灸', '解痉药', '舒适体位', '强效镇痛药', '局部热敷 ', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('对诊断尚未明确的急腹症患者，可以采取的措施是', '用吗啡止痛', '用阿托品解痉', '给患者灌肠', '使用腹泻药', '用热水袋热敷 ', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('下列属外科急腹症的特点的是 ', '先发热或先呕吐，后才腹痛 ', '先有腹痛，后出现发热等伴随症状 ', '无明显腹肌紧张 ', '有停经史，月经不规则 ', '腹痛或压痛部位不固定程度均较轻 ', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急腹症最突出的表现为', '腹痛', '败血症', '休克', '恶心、呕吐', '腹泻', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('以下不属于急腹症患者术前评估内容的是', '腹痛的发生时间 ', '腹痛的性质和程度 ', '腹痛的部位', '腹痛与饮食的关系 ', '有无腹痛的家族史', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('急腹症诊断未明确前.下述治疗措施不正确的为', '慎用吗啡类止痛剂 ', '严密观察生命体征的变化 ', '定时检查腹部体征的发展 ', '灌肠通便，观察大便的性质 ', '非手术治疗期间病情未见好转，甚至加剧者，需剖腹探查 ', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('给予消化道穿孔的急腹症患者禁食、胃肠减压的主要目的是', '减轻腹胀 ', '避免消化液和食物残渣继续流入腹腔', '减轻腹胀和腹痛', '减轻腹痛', '有利于穿孔闭合 ', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('对诊断腹腔内实质性器官破裂最有价值的辅助检查是', 'B超', '腹部X线摄片', 'CT/MRI', '腹腔穿刺', '血、尿淀粉酶 ', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('下列有关急腹症患者并发症的预防和护理措施错误的是', '遵医嘱应用抗菌药 ', '保持腹腔引流通畅', '注意观察引流液的量和性状', '预防性应用抗真菌药', '血压正常的外科急腹症患者取斜坡卧位', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者男性，50岁.左上腹撞伤伴腹痛4 小时。伤后曾呕吐1次,为少量胃内容物，无血液。体检:神志清，血压100/ 76mmHg.脉搏88次/分钟,上腹部有压痛、反跳痛及肌紧张.移动性浊音 (一) ，腹腔穿刺(一)。腹部平片示:两侧膈下有游离气体。考虑最可能为', '腹壁挫伤', '脾包膜下血肿 ', '胰腺损伤', '肝破裂', '腹腔内空腔器官破裂 ', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女性，9岁，有肾病史，1周前有上呼吸道感染史，经对症治疗后鼻塞流涕症状有所好转，但有咳嗽，昨起体温升高到39.5℃，伴恶心，呕吐，腹痛呈持续性。体检：神志清，两肺呼吸音粗，全腹膨隆、压痛，伴轻度反跳痛及肌紧张，肠鸣音减弱，白细胞计数19×109／L，中性粒细胞比例0.90。考虑最可能为', '肺炎 ', '肠道蛔虫症', '原发性腹膜炎', '肠系膜淋巴结炎', '急性机械性肠梗阻', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性，45岁，因突发性中上腹剧痛12小时来院急诊，体检发现板样腹，腹部立位平片示膈下有游离气体，生命体征尚平稳。既往有消化性溃疡病和不规则服药史。对该病人目前首先应采取的必要措施为', '高浓度吸氧', '使用镇痛药', '立即输血 ', '禁食并胃肠减压 ', '立即使用抗生素', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('可采取非手术治疗的肾损伤是', '肾挫伤', '肾全层裂伤', '肾蒂血管断裂', '严重肾部分裂伤 ', '肾损伤合并输尿管损伤', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('腹部实质性脏器破裂最主要的临床表现是', '肠麻痹', '胃肠道症状 ', '全身感染症状', '内出血征象', '腥膜剌激征 ', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('肝、脾破裂最首选的辅助检查措施是', 'B超检查', 'CT检查', '淀粉酶测定', '立位X线检查', 'MRI检查', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('腹部闭合性损伤时，最常见的实质性脏器损伤为', '肝', '肾 ', '脾', '胰 ', '膈', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('判断腹腔实质性脏器与空腔脏器破裂的最主要依据是', '腹痛性质 ', '腹腔穿刺液的性质 ', '腹部损伤程度 ', '腹膜刺激征程度', '影像学检查结果 ', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('对疑有腹腔内脏损伤和生命体征不稳定的病人，观察期间下列哪项措施不妥', '禁食禁水 ', '用吗啡暂时止痛 ', '观察病情 ', '不随意搬动病人 ', '积极做好术前准备', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('疑有空腔脏器损伤时，首选的影像学检查方法是', 'B超', 'CT检查', 'X线 ', '介入检查 ', 'MRI检查', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('实质性脏器损伤时最有助明确诊断的依据是', '腹膜刺激征 ', '腹腔穿刺抽出不凝血 ', '呕血', 'B超检查 ', '肠鸣音亢进', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('腹部损伤合并失血性休克时的处理原则是', '给予止血药物', '快速补充液体', '治疗休克同时手术探查止血', '输新鲜血', '应用抗生素控制感染', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('腹部损伤伴有少量肠管脱出时，首选的急救措施是', '迅速将肠管换纳入腹腔', '用消毒或清洁容器覆盖并包扎', '用凡士林纱布覆盖并包扎 ', '用盐水纱布覆盖并包扎', '用消毒纱布覆盖并包扎', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('腹部损伤合并以下问题时应优先处理 ', '窒息 ', '出血 ', '休克', '气胸', '昏迷 ', 'A ', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('下列哪种脏器损伤的临床表现为细菌性腹膜炎 ', '脾 ', '肝', '肾 ', '胃 ', '胰', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('腹部损伤合并其他损伤时，以下哪种合并伤不宜延误腹腔内脏损伤的诊断 ', '窒息 ', '胸外伤', '脊柱损伤', '前臂骨折 ', '颅脑损伤', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('患者女性，35岁。胃大部切除术后切口化脓.创面腋液量多，有臭味。换药处置', '3%氯化纳溶液湿敷 ', '70%乙醇湿敷 ', '优琐湿敷', '10%硝酸银烧灼', '过氧化氢溶液湿敷 ', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('男性患者，35岁，从高处跌下，局部腹壁淤斑，阵发性腹痛，若需手术探查，下列哪项指征属错误', '腹痛进行性加重', '腹部透视发现胃扩张 ', '全腹胀、肠鸣音消失 ', 'X线检查示膈下游离气体', '血压明显下降', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('女性，24岁，以腹部闭合性损伤收住人院，腹腔穿刺未能确诊何种脏器损伤的原因不包括', '消化液漏出量少', '空腔脏器穿孔较小 ', '实质性脏器被膜下破裂', '穿刺针太粗', '实质性脏器破裂出血量少', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('最常见的胰腺癌是', '  胰头癌', '胰体癌', ' 胰尾癌 ', '全胰癌', '胰腺泡细胞癌', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】刘先生，43岁。反复右上腹痛.寒战发热.黄疽8年，此次症状加重3d入院。查体：体温39．8℃，脉搏l20／rain，血压80／60mmH9，神志淡漠，右上腹压痛及肌紧张。血常规检查：WBC?27×109／L，中性粒细胞0．90。B超提示肝外胆管扩张，内有强光团声影,目前该患者最关键的治疗是', '静脉快速补液', '应用皮质激素', '纠正酸中毒', '应用大剂量抗生素', '紧急手术降低胆道压力', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】刘先生，43岁。反复右上腹痛.寒战发热.黄疽8年，此次症状加重3d入院。查体：体温39．8℃，脉搏l20／rain，血压80／60mmH9，神志淡漠，右上腹压痛及肌紧张。血常规检查：WBC?27×109／L，中性粒细胞0．90。B超提示肝外胆管扩张，内有强光团声影,当前该患者最重要的护理问题是', '体温过高', '知识缺乏', '组织灌注量减少', '活动无耐力', '疼痛', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】刘先生，43岁。反复右上腹痛.寒战发热.黄疽8年，此次症状加重3d入院。查体：体温39．8℃，脉搏l20／rain，血压80／60mmH9，神志淡漠，右上腹压痛及肌紧张。血常规检查：WBC?27×109／L，中性粒细胞0．90。B超提示肝外胆管扩张，内有强光团声影,如拟行手术，在术前准备阶段应补充的维生素是', '维生素D', '维生素A', '维生素K', '维生素C', '维生索B', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】王女士，37岁。因突发右上腹疼痛lh入院，患者晚餐进食较多油腻食物，lh后出现右上腹阵发性绞痛，可放射到右肩背，伴恶心.呕吐。查体：体温37.8℃，神志清急性痛苦面容，右上腹压痛伴轻度肌紧张。依据病史应考虑的临床诊断', '急性胆囊炎', '急性胰腺炎', '急性重症胆管炎', '胃十二指肠溃疡急性穿孔', '胆道蛔虫病', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】王女士，37岁。因突发右上腹疼痛lh入院，患者晚餐进食较多油腻食物，lh后出现右上腹阵发性绞痛，可放射到右肩背，伴恶心.呕吐。查体：体温37.8℃，神志清急性痛苦面容，右上腹压痛伴轻度肌紧张。该患者具有的临床特征中应排除的一项是', '明显黄疽', '右上腹触及肿大胆囊', 'Murphy征阳性', '白细胞计数升高', 'B超显示胆囊壁增厚', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】王女士，37岁。因突发右上腹疼痛lh入院，患者晚餐进食较多油腻食物，lh后出现右上腹阵发性绞痛，可放射到右肩背，伴恶心.呕吐。查体：体温37.8℃，神志清急性痛苦面容，右上腹压痛伴轻度肌紧张。该患者最佳治疗方案是', '服消炎利胆药', '应用抗菌药物', '禁食.胃肠减压', '胆囊切除术', '补充体液和营养物质', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】邓女士，33岁，上腹疼痛伴畏寒.发热3d人院。3d前突然出现上腹部偏右持续性刀割样疼痛，阵发性加剧，向右肩背部放射，伴恶心呕吐，厌食。1d后相继出现畏寒.发热，粪便呈淡黄色，尿少呈黄褐色。查体：体温39．2。c，脉搏110／min，血压120／80mmH9，神志清楚，皮肤.巩膜黄染，右上腹压痛，肌紧张。实验室检查：WBC?2．0×10／L，中性粒细胞0．85。血清总胆红素1521zmol／L。B超提示肝外胆管扩张，内有强光团声影。入院当晚，患者因腹痛剧烈难以入睡，护士执行用药医嘱时，忌用的药物是', '阿托品', '吗啡', '654～2', '33％硫酸镁', '哌替啶', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】邓女士，33岁，上腹疼痛伴畏寒.发热3d人院。3d前突然出现上腹部偏右持续性刀割样疼痛，阵发性加剧，向右肩背部放射，伴恶心呕吐，厌食。1d后相继出现畏寒.发热，粪便呈淡黄色，尿少呈黄褐色。查体：体温39．2。c，脉搏110／min，血压120／80mmH9，神志清楚，皮肤.巩膜黄染，右上腹压痛，肌紧张。实验室检查：WBC?2．0×10／L，中性粒细胞0．85。血清总胆红素1521zmol／L。B超提示肝外胆管扩张，内有强光团声影。导致该患者腹痛的原因是', '结石直接损伤胆总管', '胆囊剧烈收缩', '结石损伤十二指肠', '结石梗阻致括约肌痉挛和继发胆管炎', '结石梗阻引起急性胰腺炎', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】邓女士，33岁，上腹疼痛伴畏寒.发热3d人院。3d前突然出现上腹部偏右持续性刀割样疼痛，阵发性加剧，向右肩背部放射，伴恶心呕吐，厌食。1d后相继出现畏寒.发热，粪便呈淡黄色，尿少呈黄褐色。查体：体温39．2。c，脉搏110／min，血压120／80mmH9，神志清楚，皮肤.巩膜黄染，右上腹压痛，肌紧张。实验室检查：WBC?2．0×10／L，中性粒细胞0．85。血清总胆红素1521zmol／L。B超提示肝外胆管扩张，内有强光团声影。护士对该患者应重点观察的项目是', '尿量.尿色', '腹部症状.体征', '血压.精神', '恶心.呕吐', '体温变化', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】邓女士，33岁，上腹疼痛伴畏寒.发热3d人院。3d前突然出现上腹部偏右持续性刀割样疼痛，阵发性加剧，向右肩背部放射，伴恶心呕吐，厌食。1d后相继出现畏寒.发热，粪便呈淡黄色，尿少呈黄褐色。查体：体温39．2。c，脉搏110／min，血压120／80mmH9，神志清楚，皮肤.巩膜黄染，右上腹压痛，肌紧张。实验室检查：WBC?2．0×10／L，中性粒细胞0．85。血清总胆红素1521zmol／L。B超提示肝外胆管扩张，内有强光团声影。患者术后1周，每天从T管引流出胆汁量约800ml，此现象应考虑', '胆汁分泌量正常', '胆总管通畅', '胆总管上端梗阻', '胆总管下端梗阻', '肝功能差', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】患者，男性，56岁，中午饮酒后突然出现上腹中部剧烈刀割样疼痛，向腰背部呈带状放射。?继而呕出胆汁，伴高热。急诊人院体检：急性痛苦面容，全腹疼痛，腹肌紧张。根据现有资料，该患者最可能的诊断是', '溃疡穿孔', '上消化道出血', '急性胆囊炎', '急性胰腺炎', '原发性肝癌', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】患者，男性，56岁，中午饮酒后突然出现上腹中部剧烈刀割样疼痛，向腰背部呈带状放射。?继而呕出胆汁，伴高热。急诊人院体检：急性痛苦面容，全腹疼痛，腹肌紧张。为进一步确诊，首选的检查是', '急诊内镜检查', 'B超检查', '血清淀粉酶测定', 'cT检查', 'x线腹部平片', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】张先生，42岁，饮酒后突发性中上腹剧烈疼痛，伴恶心呕吐，有胆汁吐出，体检示：上腹部压痛，腹肌紧张，血清淀粉酶明显增高。对该患者的首先处理是', '禁食.胃肠减压', '补钾', '准备手术', '平卧位', '应用抗生素', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】张先生，42岁，饮酒后突发性中上腹剧烈疼痛，伴恶心呕吐，有胆汁吐出，体检示：上腹部压痛，腹肌紧张，血清淀粉酶明显增高。如果患者诊断为水肿性胰腺炎，患者不应出现的症状是', '腹痛', '腹胀', '休克', '呕吐', '发热', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】病人，男性，60岁。发作上腹隐痛，进行性黄疸2个月，伴乏力、纳差、厌油腻，体重减轻8kg。体检：消瘦，巩膜、皮肤明显黄染，肝肋下5cm，边缘钝，质中，无结节，无触痛，胆囊及脾均未触到，无移动性浊音。初步诊断为胰头或壶腹周围癌。该病的典型症状是', '消瘦乏力', '肝脾肿大', '进行性黄疸', '腹痛，腹部不适', '消化不良、厌食、恶心、腹泻', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】病人，男性，60岁。发作上腹隐痛，进行性黄疸2个月，伴乏力、纳差、厌油腻，体重减轻8kg。体检：消瘦，巩膜、皮肤明显黄染，肝肋下5cm，边缘钝，质中，无结节，无触痛，胆囊及脾均未触到，无移动性浊音。初步诊断为胰头或壶腹周围癌。治疗方法应选择', '抗感染、输液治疗', '全胃肠外营养支持治疗', '中药利胆加激素治疗', '门诊行肝活检加肝内胆管引流', '收入院行手术治疗', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】病人，男性，60岁。发作上腹隐痛，进行性黄疸2个月，伴乏力、纳差、厌油腻，体重减轻8kg。体检：消瘦，巩膜、皮肤明显黄染，肝肋下5cm，边缘钝，质中，无结节，无触痛，胆囊及脾均未触到，无移动性浊音。初步诊断为胰头或壶腹周围癌。关于术后的描述不正确的是', '禁食期间，静脉补充营养', '监测血糖', '注意观察休克征象', '胆瘘多发生于术后早期1～2d内', '每3～6个月复查一次', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】病人，男性，42岁。大量饮酒后突发上腹部疼痛伴恶心、呕吐，病后6h来诊。体检：全腹肌紧张，压痛及反跳痛。BP?75／50mmHg，腹腔穿刺抽出淡粉色液，白细胞18．4×10／L，血清淀粉酶600U／L。初步诊断为', '急性阑尾炎', '急性胰腺炎', '急性胆囊炎', '急性肠梗阻', '重症胆管炎', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】病人，男性，42岁。大量饮酒后突发上腹部疼痛伴恶心、呕吐，病后6h来诊。体检：全腹肌紧张，压痛及反跳痛。BP?75／50mmHg，腹腔穿刺抽出淡粉色液，白细胞18．4×10／L，血清淀粉酶600U／L。给予该病人禁食、胃肠减压的主要目的是', '减轻腹胀', '减轻恶心、呕吐', '引流胃液', '减少胃酸分泌', '减轻腹胀、减少胃液和胰腺分泌', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】病人，男性，42岁。大量饮酒后突发上腹部疼痛伴恶心、呕吐，病后6h来诊。体检：全腹肌紧张，压痛及反跳痛。BP?75／50mmHg，腹腔穿刺抽出淡粉色液，白细胞18．4×10／L，血清淀粉酶600U／L。此病人可能发生的最常见的并发症是', '肝功能衰竭', '急性呼吸窘迫综合征', '心功能不全', '脑水肿', '消化道溃疡', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】病人，男性，42岁。大量饮酒后突发上腹部疼痛伴恶心、呕吐，病后6h来诊。体检：全腹肌紧张，压痛及反跳痛。BP?75／50mmHg，腹腔穿刺抽出淡粉色液，白细胞18．4×10／L，血清淀粉酶600U／L。若病人术后作腹腔双套管灌洗引流，常用的冲洗液为', '抗生素', '生理盐水', '硼酸水', '生理盐水加抗菌药', '生理盐水加硼酸水', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】甲胎蛋白测定阳性时，对下列疾病哪种有意义', '慢性活动性肝炎', '肝硬化', '原发性肝癌', '肝转移癌', '肝性脑病', 'c', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】肝硬化患者应给与的饮食是', '高蛋白、低盐饮食', '低脂、适量蛋白饮食', '暂停蛋白饮食', '暂停蛋白饮食', '高蛋白适量脂肪', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】腹壁静脉曲张，脐以上腹壁静脉血流方向由下向上，脐以下亦由下向上，应考虑\"', '腹膜炎', '门静脉高压', '上腔静脉受阻', '下腔静脉受压', '脐静脉栓塞', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】急性胰腺炎时血清淀粉酶于起病后何时升高', '4-5小时', '5-6小时', '6-7小时', '6-8小时', '12小时', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】暴饮暴食及酗酒最易引起的急腹症是', '肠扭转', '粘连性肠梗阻', '急性坏疽性阑尾炎', '急性胰腺炎', '胆石症', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】肝昏迷时每日蛋白摄入为', '暂停', '20g', '30g', '40g', '50g', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】肝硬化伴门脉高压症的临床表现是', '黄疸、腹水、肝肿大', '腹水、脾肿大、肾功能衰竭', '黄疸、腹水、侧支循环形成', '腹水、脾肿大、侧支循环形成', '腹水、上消化道出血，侧支循环建立', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】患者男性，28岁，被汽车撞伤上腹部4小时，患者面色苍白，四肢阙冷，血压为6040mmHg,脉搏140次分，全腹有轻度压痛、跳痛及肌紧张，腹部透视无异常，首先应考虑\"', '胃破裂', '十二指肠破裂', '肝脾破裂', '严重腹壁软组织挫伤', '腹膜后血肿', 'c', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】肝性脑病患者，选用乳果糖口服的目的是', '促进胃肠运动，排毒增加', '乳果糖呈酸性，增加氨排出', '使肠内呈酸性，减少氨的形成和吸收', '乳果糖与NH3结合', '分解为乳糖、果糖，氨生成减少', 'c', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】消化道恶性肿瘤常经下列哪个途径首先转移至肝', '体静脉系统', '上腔静脉系统', '下腔静脉系统', '门静脉系统', '肝静脉系统', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】肝硬化腹水产生的机制不包括', '门静脉内压增高', '、血清白蛋白减少', '肾小球滤过减少', '醛固酮分泌增多', '脾功能亢进', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】肝性脑病躁动不安时不宜用', '安定', '东莨菪碱', '苯巴比妥钠', '副醛', '苯海拉明', 'c', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】下肢静脉曲张剥脱术后护理，正确的是', '卧床休息10天', '患肢制动', '只允许床上活动', '早期下床活动', '1周后方可行走', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】血栓闭塞性脉管炎的护理，不正确的是', '止痛，禁烟', '指导抬腿运动', '患肢用热水袋加温', '保持患肢干燥', '测皮温，观察疗效', 'c', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】下肢静脉曲张手术治疗后要指导病人适当地早期活动，其意义主要是', '防止肺部并发症', '防止皮肤褥疮', '防止下肢肌萎缩', '防止深静脉血栓形成', '防止泌尿系并发症', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】血栓闭塞性脉管炎病人组织营养障碍期的典型表现是', '休息痛', '间歇性跛行', '游走性静脉炎', '干性坏疽', '湿性坏疽', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】某病人因下肢静脉曲张行高位结扎及剥脱术后4h，因站立排尿，小腿部伤口处突然出血不止，紧急处理方法是', '指压止血', '用止血带', '于站立位包扎', '钳夹结扎', '平卧，抬高患肢，加压包扎', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】某病人做下肢静脉瓣膜功能试验，先平卧，抬高患肢，待曲张静脉淤血排空后，在大腿根部扎止血带。病人站立后，30s内曲张静脉迅速充盈，说明', '交通支瓣膜功能不全', '小隐静脉瓣膜功能不全', '深静脉瓣膜功能不全', '大隐静脉瓣膜功能不全', '血管内膜增生', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】低钾血症最早出现的症状是', '肠麻痹', '肌无力', '恶心、呕吐', '多尿、夜尿', '心电图出现T 波降低、变平或倒置', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】休克微循环痉挛期的主要变化，正确的是', '小静脉舒张', '微动脉舒张', '血压升高', '微静脉血流减少', '毛细血管网中血流明显减少', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】休克的主要致死原因是', '呼吸衰竭', '心力衰竭', 'DIC', 'MSOF', '肾衰竭', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】休克并发ARDS 时的典型表现是', '进行性呼吸困难', '代谢性酸中毒', '肺呼吸音降低', '肺湿性啰音', '发绀', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】关于休克的护理措施，不妥的是', '仰卧中凹位', '常规吸氧', '热水袋保暖', '观察每小时尿量', '每15min 测血压、脉搏1 次', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】术后早期活动的优点，不包括', '减少血栓性静脉炎的发生', '减少切口感染的机会', '减少肺部并发症', '防止腹胀、便秘', '促进排尿功能的恢复', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】术后患者痰黏稠、不易咳出，主要护理措施是', '戒烟', '鼓励翻身', '给镇咳药物', '给予抗生素', '超声雾化吸入', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】术后切口裂开，处理不妥的是', '安慰患者', '立即将内脏还纳', '立即用灭菌盐水纱布覆盖', '用腹带包扎', '送手术室缝合', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】关于术后并发症的叙述，错误的是', '深静脉血栓形成多见于下肢', '内出血常发生在术后3-4d', '呼吸道感染常见为肺不张', '切口感染与无菌操作不严格有关', '泌尿系统感染与长期卧床尿潴留有关', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】手术后出现深静脉血栓形成时，应禁忌', '抬高患肢', '局部热敷', '局部按摩', '理疗', '患肢制动', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】预防术后肺部感染的措施，不妥的是', '术前戒烟', '术后早期活动', '痰稠可给予祛痰药', '鼓励患者深呼吸', '应用镇咳药', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】胃肠减压的护理不正确的是', '患者应禁食', '保持减压管通畅', '胃管堵塞禁止冲洗', '注意口腔护理', '记录吸出液的量及性质', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】急性弥漫性腹膜炎体征，错误的是', '腹肌紧张', '全腹压痛', '反跳痛', '肠鸣音亢进', '腹式呼吸减弱', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】胃肠减压在腹膜炎的治疗中作用不包括', '减轻胃肠道积气', '减少胃肠道内容物继续流入腹腔', '促进胃肠道恢复蠕动', '增强胃肠道消化功能', '改善胃壁血供', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】腹部闭合性损伤患者诊断明确前的处理，不正确的是', '监测血常规', '监测生命体征', '给予镇痛药，减轻疼痛', '积极补充血容量，防止休克', '应用广谱抗生素', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】诊断腹腔实质性脏器损伤的主要依据是', '腹肌紧张', '腹腔穿刺抽出浑浊液体', '膈下游离气体', '进行性贫血', '腹腔穿刺抽出不凝血', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】腹部损伤合并休克的治疗原则，正确的是', '积极抗休克同时手术探查', '大量抗生素预防感染', '大量快速补液', '输血，恢复血容量', '给予充足镇痛药物', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】最有临床意义的门腔静脉交通支是', '胃底与食管下段静脉交通支', '脐旁与腹上深静脉交通支', '脐旁与腹下深静脉交通支', '腹膜后静脉交通支', '直肠下端与肛管静脉交通支', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】门静脉高压症的主要并发症不包括', '腹水', '消化道出血', '肺感染', '血细胞减少', '脾功能亢进', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】门静脉高压症形成后首先出现的是', '肝大', '脾大', '腹水', '呕血', '交通支扩张', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】门静脉高压症手术治疗主要目的是', '改善消化功能', '根除肝损害', '止血和防止出血', '消除腹水', '消除脾功能亢进', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】肝门静脉高压症的术后护理，错误的是', '定期监测生命体征', '观察腹腔引流液的性质及颜色', '分流术后应采取半卧位', '.卧床一周', '观察患者有无意识改变', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】原发性肝癌肝区疼痛的特点是', '烧灼样疼痛', '持续性胀痛', '阵发性绞痛', '间歇性隐痛', '刀割样疼痛', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】诊断原发性肝癌的特异性检查是', 'CT 检查', '超声检查', '放射性核素扫描', '肝动脉造影检查', '血清甲胎蛋白测定', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】肝癌术后护理，错误的是', '加强切口及引流管的护理', '常规吸氧', '进食期间给予静脉营养支持', '密切观察病情变化及并发症的发生', '早期下床活动', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】Reynolds 五联征是', '腹痛、寒战高热、黄疸、休克、呼吸衰竭', '腹痛、寒战高热、黄疸、休克、心力衰竭', '腹痛、寒战高热、黄疸、休克、肾衰竭', '腹痛、寒战高热、黄疸、休克、意识障碍', '腹痛、寒战高热、黄疸、休克、DIC', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】结石在胆囊中最易滞留的部位是', '胆囊底', '胆囊体', '胆囊管', '胆囊颈', '胆囊三角', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】Murphy 征阳性多见于', '急性胆囊炎', '急性胰腺炎', '胃十二指肠溃疡穿孔', '胆总管结石', '胆道蛔虫病', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】T 形管引流的护理，不正确的是', '妥善固定T 形管', '观察引流量和性状', '置管7d 可拔管', '引流不畅时可用无菌生理盐水冲洗导管', '拔管前须试行夹管1-2d', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】胆石症患者出现胆绞痛禁用的药物是', '33%硫酸镁', '阿托品', '硝酸甘油', '亚硝酸异戊酯', '吗啡', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】胆道感染最常见的致病菌是', '粪球菌', '链球菌', '金黄色葡萄球菌', '大肠埃希菌', '铜绿假单胞菌', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】出现上腹部绞痛、寒战高热、黄疸应首先考虑是', '急性胆囊炎', '胆道蛔虫', '先天性胆道闭锁', '胆总管囊肿', '胆总管结石合并感染', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】急性梗阻性化脓性胆管炎最常见的梗阻因素是', '胆管狭窄', '胆管肿瘤', '胆-肠吻合术后', 'T 形管造影术后', '胆管结石梗阻', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】胰头癌最主要的临床特点是', '食欲低下、消瘦', '腹部压痛', '持续腹痛', '黄疸', '肝大', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】胰头癌的首要症状和主要体征是', '食欲缺乏，黄疸', '发热，黄疸', '发热寒战，腹部压痛', '乏力消瘦，腹部肌紧张', '上腹痛和上腹饱胀不适', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】急性出血性坏死性胰腺炎最常见的并发症是', '休克', 'DIC', '胰腺假性脓肿', '胰腺脓肿', '化脓性感染', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】外科急腹症的特点是', '有停经和阴道出血史', '以呕吐、心悸为主要症状', '腹痛在前，发热、呕吐在后', '卧床休息后腹痛好转', '腹部压痛一般不明显', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】外科急腹症中最常见的是', '急性肠梗阻', '急性胆囊炎', '急性胰腺炎', '急性阑尾炎', '急性胃穿孔', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】鼓励下肢静脉曲张手术后患者早期活动，其主要目的是预防', '皮肤压疮', '肺部并发症', '泌尿系统感染', '下肢肌肉萎缩', '深静脉血栓形成', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】下肢静脉曲张的术后护理，错误的是', '抬高患肢', '使用弹性绷带', '术后鼓励早期下床活动', '不能做足背伸屈运动', '注意观察有无局部出血、感染', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】决定大隐静脉能否手术治疗，主要依据是', '检查深静脉有无阻塞', '浅静脉瓣是否良好', '交通支瓣膜功能是否良好', '静脉曲张严重程度', '有无经久不愈的慢性溃疡', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】间歇性跛行是血栓性闭塞性脉管炎的', 'Ⅰ期典型表现', 'Ⅱ期典型表现', 'Ⅲ期典型表现', 'Ⅳ期典型表现', 'Ⅴ期典型表现', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】男性，62 岁，肠穿孔修补术后2d，肛门未排气，腹胀明显。处理措施最重要的是', '胃肠减压', '半卧位', '禁食', '针刺穴位', '肛管排气', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】男性，30 岁，5d 前被汽车撞伤左上腹，当时腹痛伴局部压痛，今日上厕所时突然晕倒，面色苍白，脉细速。考虑是', '脾破裂', '肝破裂', '肾破裂', '胃破裂', '胆囊破裂', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】男性，20 岁，因车祸撞伤右上腹部，其表现有腹腔内出血症状，同时，伴有明显的腹膜刺激症。首先考虑', '脾破裂', '肝破裂', '肾破裂', '胃破裂', '胆囊破裂', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】7岁女孩，阵发性剑突下钻顶样痛4h，伴恶心呕吐，既往有类似发作史。查体：体温37.5℃，剑突下深压痛，无腹肌紧张。首先考虑为', '肝内胆管结石', '胆道蛔虫病', '胆总管结石', '急性胆管炎', '胆囊结石', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】男性，56 岁，主因3h 前呕血800ml，呈鲜红色而急诊入院，既往有肝硬化病史，查体：血压135/60mmHg 心率122/min。护理措施错误的是', '去枕平卧，头偏向一侧', '密切观察生命体征及甚至变化', '给予流质饮食', '立即建立静脉通道', '备好三腔气囊备用', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】男性，50 岁，因门静脉高压症进行脾肾切除术，出院时进行预防上消化道出血的健康指导，重要的是', '继续卧床休息', '服用护肝药物', '少吃脂肪和蛋白质类食物', '经常服用维生素K', '饮食细软，不过烫', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】男性，35 岁，长期吸烟，右下肢反复发作静脉炎，并伴有间歇性跛行。最可能的诊断是', '大动脉炎', '下肢静脉曲张', '动脉栓塞', '血栓闭塞性脉管炎', '动脉硬化性闭塞症', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】男性，52 岁，行胆总管切开取石、T 形管引流术，术后第三天，护士查房时发现T 型管无胆汁流出，患者诉腹部胀痛。首先应采取的处理措施是', '用无菌生理盐水冲洗T 型管', '检查T 型管是否受扭曲', '用注射器抽吸T 型管', '继续观察，不作处理', '准备T 型管造影', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】女性，42 岁，胆道手术后，T 型管引流2 周，准备拔管。拔管前先试行夹管1~2d，应注意观察的内容是', '大便情况', '腹痛、发热、黄疸', '神志、腹痛、血压', '腹痛、血压、黄疸', '饮食、睡眠', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】间歇性跛行见于', '血栓闭塞性脉管炎', '下肢静脉曲张', '下肢动脉硬化', '血栓性静脉炎', '下肢动脉血栓', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】关于大隐静脉剥脱术后护理，哪一项是错误的', '抬高患肢', '卧床1周', '患肢加压包扎', '保持敷料清', '术后12d拆线', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】下肢静脉曲张手术后错误的护理是', '适当休息，抬高患肢', '弹力绷带一般维持2周', '绷带从近心端向远心端包扎', '尽早进行下肢肌肉原位收缩活动', '1～2d后即可下床缓步行走', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】下列哪一项不属于血栓闭塞性脉管炎症状', '静息痛', '间歇性跛行', '患肢静脉隆起', '患肢皮肤苍白', '患肢麻木、怕冷', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】血栓闭塞性脉管炎局部缺血期典型症状是', '间歇性跛行', '肢端发绀，发凉', '肢端干性坏疽', '下肢肌肉萎缩', '下肢持续疼痛', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】血栓闭塞性脉管炎营养障碍期的特征性表现是', '问歇性跛行', '足背动脉搏动减弱', '肢体坏疽', '游走性浅静脉炎', '静息痛', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】血栓闭塞性脉管炎的护理，下列哪项不正确', '止痛、戒烟', '指导抬腿活动', '患肢用热水袋加温', '保持患肢干燥', '测皮温、观察疗效', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】伯格(Buerger)运动的目的是', '减慢肢体坏疽速度', '减轻下肢水肿', '促进病人舒适', '促进侧支循环建立', '提高病人的活动能力', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】血栓闭塞性脉管炎诱发因素不包括', '潮湿', '寒冷', '血压升高', '情绪激动', '外伤', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】血栓闭塞性脉管炎患者的护理措施是', '患肢局部加温保暖', '要求患者绝对戒烟', '尽量减少止痛剂的应用', '休息时抬高患肢，缓解疼痛', '指导晚期患者做伯尔格运动', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】血栓闭塞性脉管炎Ⅱ期的典型表现是', '静息痛', '间歇性跛行', '足背动脉搏动减弱', '患肢麻木发凉', '足趾溃疡坏死', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】急性阑尾炎出现明确的麦氏点疼痛属', '内脏性疼痛', '躯体性疼痛', '弥散性疼痛', '迟钝性疼痛', NULL, 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】急腹症的腹壁痛主要是壁腹膜受腹腔病变刺激所致，其疼痛类型是', '内脏性疼痛', '躯体性疼痛', '膨胀性疼痛', '痉挛性疼痛', '缺血性疼痛', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】对诊断尚未明确的急腹症病人，不可以采取的措施是', '禁食、胃肠减压', '用阿托品解痉', '给病人灌肠', '及时补液', '抽血查血常规', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】给一急腹症病人检查后发现有肝浊音界缩小，X线片见膈下游离气体，判断该病人为', '炎症性病变', '穿孔性病变', '出血性病变', '梗阻性病变', '绞窄性病变', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】下列急腹症病人必须做胃肠减压的是', '急性肠梗阻', '老年急腹症病人', '急腹症伴糖尿病', '急腹症伴腹膜刺激征', '急腹症伴移动性浊音', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】判断急腹症病因及其病情变化的简易有效的方法', '腹腔穿刺', '腹腔灌洗', 'X线、B超', '直肠指检', '腹腔镜', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】腹内实质性脏器破裂出血时，如腹部叩诊有移动性浊音说明腹腔积血为', '300ml以上', '400ml以上', '500ml以上', '600ml以上', '1000ml以上', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】炎性急腹症疼痛的特点是', '腹痛突然发生或加重，呈持续性剧痛', '起病缓慢，腹痛由轻至重，呈持续性', '腹痛较轻，呈持续性', '起病急，呈持续性阵发性加重', '起病急，呈阵发性腹部绞痛', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】急腹症最重要的局部体征是', '肠鸣音减弱', '腹膜刺激征', '腹式呼吸运动减弱', '腹壁肌肉紧张', '腹痛有移动性浊音', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】急腹症手术探查指征不包括', '怀疑消化道穿孔', '怀疑腹腔内进行性出血', '怀疑肠坏死', '腹膜刺激征明显者', '腹痛反复发作4h以上', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】下列叙述属于内科急腹症的特点是', '先发热或先呕吐后才腹痛，或呕吐腹痛同时发生', '先有腹痛，后出现发热等伴随症状', '可出现腹膜刺激征', '有停经史，月经不规则', '腹痛或压痛部位较固定，程度重', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】急腹症伴有大出血休克体征者应给予', '半卧位', '平卧位', '去枕仰卧位', '头低脚高位', '坐位', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】病人，男性，65岁。上腹部疼痛伴恶心、呕吐2h，体温不高。查体：痛苦面容，腹平软，肌紧张不明显，无明显压痛，以下处理不正确的是', '安置半卧位', '腹痛加重时给止痛药', '叮嘱禁饮食', '静脉补充液体', '观察病情变化', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】对于下肢急性深静脉血栓形成患者，正确的护理措施是', '床上活动', '卧床休息，患肢抬高', '行走练习', '患肢热敷', '按摩，促进血液循环', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】患者，男性，35岁。长期吸烟，右下肢反复发作静脉炎，并有间歇性跛行，最可能的诊断是', '雷诺病', '动脉栓塞', '大动脉炎', '血栓闭塞性脉管炎', '动脉硬化性闭塞症', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】患者，男性，47岁。久站后左下肢出现酸胀感，小腿内侧可见静脉突起，诊断为下肢静脉曲张。对此患者日常保健要求中不正确的是', '尽量避免久站', '尽量避免患肢外伤', '休息时抬高患肢', '使用弹力袜', '尽量减少下肢活动', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】患者，男性，46岁。检查时，嘱其站立，待下肢静脉曲张充盈后，在大腿上l／3扎止血带，伸屈膝关节活动20次，若曲张的静脉充盈明显减轻，则表示', '交通支瓣膜功能不全', '交通支瓣膜功能正常', '大隐静脉瓣膜功能不全?', '下肢深静脉通畅', '下肢深静脉瓣膜功能不全', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】患者平卧抬高下肢，排空静脉后，在大腿根部扎止血带阻断大隐静脉，然后让患者站立，10s内放开止血带，若出现自上而下的静脉逆向充盈，提示', '交通静脉瓣膜功能异常', '下肢深静脉通畅', '小隐静脉瓣膜功能不全', '大隐静脉瓣膜功能不全', '下肢浅静脉通畅', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】深静脉血栓形成的患者，急性期应绝对卧床休息l0～14d，床上活动时避免动作幅度过大，禁止按摩患肢，目的是', '防止血栓脱落', '预防出血', '促进静脉回流', '缓解疼痛', '防止再次血栓形成', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】一般洗手的洗手指征不包括', '直接接触患者前后', '无菌操作前后', '处理污染物品前后', '处理无菌物品之前', '穿脱隔离衣前后', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】外科手消毒的目的是', '消除指甲、手、前臂的污物和暂居菌', '消除指甲、手、前臂的污物和常居菌', '杀灭手部一切微生物', '去除手部皮肤污垢', NULL, 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】去除手部部分致病菌有关无菌持物钳的使用正确的是', '取放无菌钳时，钳端张开向下', '取远处物品时，保持钳端向下', '使用无菌钳时不能高于腰部', '无菌持物钳不能夹取油纱布', '打开包后的干镊子罐、持物钳应当6h 更换', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】打开包后的干镊子罐、持物钳应当6h 更换', '戴手套钳取下手表，洗手', '戴手套时应当注意未戴手套的手不可触及手套的外面', '戴手套后发现污染时，应当立即用消毒液擦拭污染部位', '戴手套后发现有破洞，应立即更换', '脱手套时，应当翻转脱下', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】为昏迷患者做口腔护理，错误的是', '开口处由臼齿处放入', '用血管夹夹紧棉球擦洗', '取下活动义齿，刷净后浸泡再冷水中', '用等渗盐水漱口', '局部溃疡用冰硼酸涂抹', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】胆道T管引流的病人胆道远端通畅的表现是', '腹痛和黄疸减轻，引流量增多', '体温正常，引流量增多', '上腹胀痛，引流量骤减', '食欲好转，黄疸消退，引流量减少', '黄疸消退，引流量增多，食欲无变化', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】肝癌术后护理，下列哪一项是错误的', '密切观察并发症.', '早期下床活动', '常规吸氧', '每日更换引流瓶?', NULL, 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】门静脉高压症分流术后病人的护理下列哪项是错误的', '适当控制蛋白质的摄入量', '观察肝性脑病的先兆', '合理应用保肝药', '术后一般情况平衡，应取侧卧位', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】急性消化道失液的病人，医嘱给予静脉补充下列液体，作为其责任护士，你考虑首先给其输入', '右旋糖酐', '5％葡萄糖液', '5％碳酸氢钠?', '10％葡萄糖液', '5％葡萄糖盐水?', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】PN最严重的代谢性并发症是', '空气栓塞', '高渗性非酮性昏迷', '低血糖', '脓毒症?', NULL, 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】长期胃肠外营养的病人置管的部位是', '手部静脉', '足部静脉', '股静脉', '上腔静脉', '下腔静脉', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】胰头癌最主要的临床表现是', '腹痛、腹胀', '进行性黄疸', '食欲不振', '消化不良', '乏力消瘦', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】急腹症病人未明确诊断前应禁用', '阿托品', '安眠药', '去痛片', '哌替啶', '镇静药?', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】肝叶切除术后避免过早活动的目的是', '保存体力', '减少能量消耗', '利于肝细胞再生', '利于有效引流', '避免肝断面出血', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】原发性腹膜炎与继发性腹膜炎最主要区别在于', '腹痛性质不同', '有无腹膜刺激征?', '全身感染轻重', '腹腔内有无原发病灶', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】门静脉高压症的病理变化中，下列哪项是错误的', '脾肿大，脾功能亢进', '门静脉交通支扩张', '肝静脉淤积引起急性大出血', '肝功能损害，白蛋白合成障碍', NULL, 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】门静脉高压症行分流术后病人，控制蛋白质摄人的主要理由是', '影响胶体渗透压', '减少血氨形成', '预防过敏反应', '预防消化不良', '防止加重肝脏负担', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】门静脉高压症病人的饮食护理，下列哪项是错误', '有食管静脉曲张者，应给无渣半流质饮食', '高蛋白饮食', '高糖，低脂饮食', '有腹水者，控制入水量', '食管静脉曲张破裂大出血者应禁食', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】门静脉高压症术前护理哪项有错', '避免劳累', '避免食物过热、过硬、刺激', '绝对卧床', '常规放置胃管', '避免腹压增加', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】门静脉高压症食管静脉曲张破裂出血最易并发', '肝坏死', '肝性脑病', '急性肾功能衰竭', '腹水、胸水', '脾大、脾功能亢进', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】防止门静脉高压症分流术后出血，手术后卧床', '1d', '3d', '1周', '2周', '1个月', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】门腔静脉分流术后2d内，应注意观察的并发症是', '血管吻合口破裂出血', '肝性脑病', '血小板过于增高', '肠系膜血管栓塞', '腹腔感染', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】下列哪一项不是门静脉高压症病人术前的护理诊断', '焦虑', '体液过多', '营养失调：低于机体需要量', '有出血的危险', '疼痛', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】在我国引起门静脉高压征的主要原因是', '酒精性肝硬化', '血吸虫病性肝硬化', '肝炎后肝硬化', 'Budd—Chiari征', '肝外门静脉血栓形成', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】肝性脑病患者暂停蛋白质饮食是为了', '减少氨的产生', '减少氨的吸收', '促使氨的转化', '降低血尿素氮', '降低肠道内pH值', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】双气囊三腔管用于治疗', '胃癌出血', '消化性溃疡出血', '应激性溃疡出血?', '食管胃底静脉曲张破裂出血', '急性糜烂出血性胃炎', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】肝硬化导致门脉高压的表现有', '腹水', '上腹饱胀', '蜘蛛痣', '大隐静脉曲张', '颈静脉怒张', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】有关门静脉高压征的手术前准备错误的是', '保肝治疗?', '无渣高糖饮食', '输新鲜血液', '肌内注射维生素K', '手术当天放置胃管', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】门静脉高压征引起的肛门疾病是', '痔', '肛裂', '肛瘘', '直肠脱垂', '直肠息肉', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】门静脉高压征肝性脑病饮食的护理措施错误的是', '高糖类', '高蛋白质', '高维生素', '低脂肪', '有食管静脉曲张者，避免过热.干硬食物', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】患者男性，55岁。因门静脉高压所致食管.胃底曲张静脉破裂出血，导致失血性休克。经抢救，中心静脉压为l4cmH2O，血压为120/80mmHg。此时的处理原则是', '适当补液', '充分补液', '舒张血管', '补液试验', '给强心药物', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】男性患者，36岁。因肝硬化并食管曲张静脉破裂出血第三次住院，拟择期行断流术。手术前护理正确的是', '鼓励活动，增强体质', '口服维生素K.B.C', '一般应给软质高蛋白饮食', '手术前常规肠道准备', '手术前2d使用广谱抗生素', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】男性，50岁，患乙型肝炎5年，2年来发现肝硬化并食管静脉曲张，曾大呕血1次，经非手术治疗后进行肠系膜上静脉和下腔静脉吻合术，在术后48h护理应注意', '每l5分钟测血压.脉搏.呼吸一次', '取平卧位，避免过多活动以防止出血', '预防肝性脑病', '血小板计数', '预防感染', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】与原发性肝癌发生关系最密切的疾病是', '甲型肝炎', '乙型肝炎', '肝脓肿', '中毒性肝炎', '肝棘球蚴病', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】原发性肝癌的主要相关因素是', '胆道感染', '肝炎后肝硬化', '血吸虫性肝硬化', '酒精性肝硬化', '肝脏良性肿瘤', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】肝癌最常见的转移途径是', '肝内血行转移', '肝外血行转移', '直接蔓延', '淋巴转移', '种植转移', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】按组织学分类，在我国原发性肝癌哪种类型最常见', '肝细胞型', '肝管细胞型', '混合型', '弥漫性', '巨块型', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】原发性肝癌普查常首选Ｂ', 'CT', 'AFP', 'MRI', 'AKP', 'B超', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】肝癌定位检查中首选的方法是', 'B超', 'CT', 'AFP测定', '选择性腹腔动脉造影', '肝穿刺针吸细胞学检查', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】诊断小肝癌和微小肝癌最佳的方法是', 'CT', 'AFP', 'MRI', '肝血管造影', 'B超', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】肝癌术前护理哪项是错误的', '高蛋白高脂肪高维生素饮食', '适量输血血浆或白蛋白', '术前3天口服肠道不吸收抗生素', '术前晚术晨清洁灌肠', '配血宜鲜血与库血各半', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】肝癌病人术前护理不正确的是', '给予维生素K', '适量输血和白蛋白', '便秘者给肥皂水灌肠', '全面检查肝功能和凝血功能', '术前3d口服肠道不吸收抗菌药', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】肝脏手术后最严重的并发症是', '出血', '肺部感染', '腹腔感染', '胆汁性腹膜炎', '腹水', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】下列哪一种不是胆石', '胆固醇结石', '胆红素结石', '胆固醇、胆红素混合结石', '草酸钙结石', '胆管结石', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】关于胆石病形成原因下列哪项是错误的', '胆汁淤滞', '胆道感染', '胆管异物', '胆汁成分改变', '肝炎', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】胆石病造成胆道最基本损害是', '胆道梗阻和感染', '肝脓肿', '胆道出血', '胆道狭窄', '急性胰腺炎', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】胆道疾病首选的检查方法是', 'B超', '腹部评估', '口服胆囊造影', '静脉胆道造影', '经皮肝穿刺胆管造影', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】胆道疾病做B超检查前应', '禁食水4h', '禁食水12h', '禁食8h，禁水4h', '禁食12h，禁水4h', '禁食12h，禁水8h?', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】口服胆囊造影(OCG)用于检查', '肝脏分泌胆汁功能', '胆囊收缩功能', '胆管排泄功能', '胰腺的分泌功能', '胆囊的储存功能', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】出现Murphy征表明', '胆囊感染', '胆道感染', '胆道梗阻', '急性肝炎', '急性阑尾炎', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】Charcot三联征是指', '胆绞痛、发热、寒战', '胆绞痛、黄疸、呕吐', '发热、寒战、黄疸', '胆绞痛、发热、黄疸', '高热、呕吐、腹泻', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】出现Charcot三联征表明', '有胆道急性梗阻和感染', '有急性胰腺炎', '有急性胆囊炎', '有急性肝炎', '有肝癌', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】雷诺(Reynold)五联征是指', '胆绞痛、高热、黄疸、呕吐、腹泻', '胆绞痛、高热、黄疸、休克、神志不清', '高热、黄疸、呕吐、腹泻、寒战', '休克、神志不清、黄疸、呕吐、发热', '都不是', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】出现雷诺五联征表明', '胆总管结石', '急性胆囊炎', '肝内胆管结石', '急性梗阻性化脓性胆管炎', '都不是', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】胆总管引流术后，T管引流胆汁过多常提示', '肝细胞分泌亢进', '胆管分泌胆汁过多', '胆囊浓缩功能减退', '胆道下端梗阻', '十二指肠反流', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】胆道手术后，T管一般留置的时间是', '5d', '7d', '14d', '20d', '30d', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】T管造影后应开放引流多少小时以上', '4h', '8h', '10h', '12h', '24h', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】胆道术后病人在T管拔管前，下列护理措施必不可少的是', '无菌冲洗', 'B超', '抗生素', '试验性夹管1～2d?E．检查血胆红素', '检查血胆红素', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】胆总管切开取石术后腹腔引流液呈“胆汁”样，应考虑', '正常引流液', '低蛋白血症', '胆瘘', '胰瘘', '肠瘘', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】胆总管下端有阻塞时，T管引出的胆汁会', '量过多', '量过少，色深', '浑浊', '量少而色淡', '棕色、稠厚而清', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】胆道手术后T管引流病人的护理，不正确的是', '妥善固定T管', '观察24h胆汁引流量', '如引流不畅每天按时加压冲洗', '置管12～14d可以拔管?', '拔管前须试行夹管1～2d?', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】胆道T管引流和腹腔引流管的护理措施，两者不同的是', '保持引流管通畅', '每天更换引流袋', '观察引流量和性状', '拔管前夹管观察1～2d', '引流袋不可高于引流出口', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】胰腺疾病和胆管疾病互相关联的解剖学基础是', '胆总管与主胰管汇合形成共同通道或共同开口', '胰腺炎或胰腺癌肿时可压迫胆总管', '胰腺和肝外胆管相毗邻，关系密切', '均受肝胆汁分泌的影响', '胆总管与副胰管汇合形成十二指肠乳头', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】胰腺癌常好发于', '胰体、尾部', '胰颈、体部', '全胰腺', '胰头部', '胰尾', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】应用最广泛、简易的诊断急性胰腺炎的方法是', 'B超', 'MRI.', '血清钙测定', '血气分析', '血、尿淀粉酶测定', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】急性胰腺炎时，血淀粉酶', '增高最早', '增高稍晚', '增高最晚', '不增高', '持续增高', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】预防急性胰腺炎有重要意义的措施是', '注意饮食卫生', '经常应用抗生素预防感染', '防治胆道疾病', '经常服用消化酶类药物', '控制糖尿病', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】急性胰腺炎非手术治疗过程中禁食与胃肠减压时间为', '2d', '3～5d', '2～3周', '4周', '1个月', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】急性胰腺炎病人禁食的目的是', '控制饮食', '避免胃扩张', '减少胃液分泌', '减少胰液分泌', '解除胰管痉挛', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】急性胰腺炎的治疗过程中应禁用', '抗胆碱能药物', '吗啡', '生长抑素', '钙剂', '胃肠减压', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】胰腺癌有明显黄疸病人术前需补充的维生素是', '维生素', '维生素C', '维生素B', '维生素D', '维生素K', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】下列哪项不符合急性水肿性胰腺炎的临床表现', '腹痛', '恶心、呕吐', '腹膜炎体征', '高度腹胀', '血、尿淀粉酶升高', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】急性水肿性胰腺炎的临床表现中，下列哪一项不易发生', '腹痛', '恶心、呕吐', '休克', '腹胀', '腹膜炎体征', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】急性胰腺炎出现脉率快、腹水呈血性、血压低或休克时，应考虑为', '水肿性胰腺炎', '胰腺炎合并腹腔内脏器官破裂', '出血坏死性胰腺炎', '胰腺炎合并腹腔感染', '出血性胰腺炎', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】重症胰腺炎病人可出现血糖', '降低', '明显降低', '正常', '升高', '时高时低', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】重症胰腺炎时Gre-Tumer征常见于病人', '胸部', '腰部', '脐周', '肩部', '臀部', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】急性胰腺炎时，慎用', '抗胆碱能药物', '吗啡止痛', '补充血容量', '给予钙盐', '胃肠减压', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】胰腺癌最常见的首发症状是', '上腹痛及上腹饱胀不适', '黄疸', '食欲不振', '消化不良', '乏力、消瘦', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】原发性下肢静脉曲张的原因为', '妊娠', '动静脉瘘', '深静脉阻塞', '先天性静脉壁薄弱', '深静脉瓣膜功能不全', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】关于下肢浅静脉描述正确的是', '下肢浅静脉主要为大隐静脉和小隐静脉', '大隐静脉起自足背静脉网的外侧', '小隐静脉起自足背静脉网的内侧', '大隐静脉在汇入股静脉前有3个属支．静脉壁外膜是决定静脉壁强弱的主要因素', NULL, 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】关于下肢静脉曲张的描述，正确的是', '好发于青壮年男性', '帼静脉曲张多见', '小隐静脉曲张多见', '继发性下肢静脉曲张多见', '继发性下肢静脉曲张最常见的病因是下肢深静脉病变', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】大隐静脉的属支不包括', '旋髂浅静脉', '腹壁浅静脉', '阴部内静脉', '股内侧静脉', '股外侧静脉', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】原发性下肢静脉曲张病因不包括', '先天性静脉壁薄弱', '浅静脉瓣膜发育不良', '经常参加游泳训练', '经常参加游泳训练', '长期站立工作', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】血栓闭塞性脉管炎病变主要位于下肢的', '大、中动脉', '大、中静脉', '中、小动静脉，而以动脉为主', '中、小动静脉，而以静脉为主', '小动静脉，而不发生于中动静脉', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】血管闭塞性脉管炎出现静息痛表示', '严重的缺血状态', '肌肉代谢增加', '肌肉血肿', '交感神经功能失调', '干性坏疽', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】V决定能否做大隐静脉结扎术的检查是', '浅静脉瓣膜功能试验', '深静脉瓣膜功能试验', '交通支瓣膜功能试验', '深静脉网流试验', '浅静脉通畅试验', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】判断下肢深静脉瓣膜功能不全最可靠的方法是', '下肢静脉造影术', '下肢静脉压测定', '大隐静脉瓣膜功能试验', '屈氏试验', '波氏试验', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】深静脉回流试验的检查目的是了解', '深静脉瓣膜功能是否正常', '大隐静脉瓣膜功能是否正常', '小隐静脉瓣膜功能是否正常', '交通支瓣膜功能是否正常', '下肢深静脉是否通畅', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】站立时在大腿中部扎止血带，让病人用力踢腿20次后，下肢深静脉充盈明显提示', '交通支瓣膜功能不全', '小隐静脉瓣膜功能不全', '下肢深静脉阻塞', '大隐静脉瓣膜功能不全', '下肢深静脉瓣膜功能不全', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】若双侧肢体对应部位皮肤温度相差2℃以上，提示', '皮温降低侧肢体动脉血流减少', '皮温降低侧肢体动脉血流增多', '皮温降低侧肢体静脉回流减少', '皮温降低侧肢体静脉回流增多', '皮温降低侧肢体淋巴回流不畅', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】大隐静脉曲张病人在下列哪种情况下，不可进行手术治疗', '小腿慢性溃疡', '患肢皮肤湿疹', '患肢深静脉回流不佳', '大隐静脉瓣膜功能不全', '交通支瓣膜功能不全', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】下肢静脉曲张的典型表现是', '下肢浅静脉隆起', '下肢酸胀乏力', '久站足部水肿', '肢端坏死', '足部皮肤苍白、发冷，肌肉萎缩', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】大隐静脉曲张手术后，防止深静脉血栓形成的护理要点是', '严格无菌操作', '手术后绷带包扎患肢', '术后抬高患肢', '防止伤口渗血', '早期进行患肢运动', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】患者，女性，48岁，踝部轻度肿胀，色索沉着，久站后出现酸胀，小腿有迂凰的静脉团，诊断为原发性大隐静脉曲张，Perthes试验阴性；宜采取的治疗方案是', '使用弹力绷带包扎', '局部注射硬化剂', '局部注射硬化荆', '大隐静脉瓣膜成形术', '大隐静脉高位结扎加分段剥脱术', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】患者，男性，41岁，在ERCP检查后出现腹部持续疼痛，血清淀粉酶栓查超过正常值，应考虑', '急性胆管炎', '急性胃炎', '急性肠炎', '急性胰腺炎', '急性胆管梗阻', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】患者，女性．43岁，中午饱餐后出现上腹部绞痛，同时向腰背部呈带状放射，已持续6h。怀疑为急性胰腺炎，此时最具诊断意义的实验室检查为', '白细胞计数', '血清淀粉酶测定', '尿液淀粉酶测定', '血清脂肪酶测定', '血清谷丙转氨酶', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】男性患者，35岁。既往有胆结石，今日晚餐后突然出现中上腹痛，阵发性加剧，频繁呕吐，呕吐物含胆汁，呕吐后腹痛未减轻，化验血淀粉酶为2500索氏单位。鉴于目前该患者情况，治疗原则应是', '胃肠减压', '流食', '应用吗啡止痛', '禁用生长抑素类药物', '禁用抑肽酶', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】患者，男性，47岁。因急腹痛2d，诊断为急性胰腺炎。血清淀粉酶2500U／L，血钙1．6mmol／L．主要症状表现为', '腹部持续性疼痛，阵发性剧痛，放射至左肩部', '腹胀痛伴呕吐.腹泻', '间歇性心窝部剧痛伴暖气', '上腹中间或稍偏左疼痛伴脂肪', '进食后上腹胀痛并反酸.嗳气', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】患者，女性，61岁，胰腺癌术后第l天，表情痛苦，心率加快，血压升高，多次询问后患者诉伤口疼痛严重。此时应首先给予的措施是', '鼓励患者忍受疼痛', '立即给予止痛药', '给予止痛指导', '继续观察', '分散患者注意力', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】患者，男性，42岁，因上腹饱胀不适，皮肤.巩膜轻度黄疸就渗。B超显示胰腺有2?5。。×2．5em肿块。初步诊断胰头癌。关于胰头癌的临床特点，哪项正确', '黄疸', '肝大', '胆囊肿大', '上腹部隐痛', '厌食.消瘦.乏力', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】男性，65岁，肝癌肝叶切除术后第1天，患者感腹痛.心慌.气促.出冷汗，血压90／60mmH9，首先应考虑为', '胆汁性腹膜炎', '肠梗阻', '肝断面出血', '膈下脓肿', '阑尾炎', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】男性，60岁，诊断为原发性肝癌，行肝叶切除术后第3天，出现嗜睡.烦躁不安.黄疽.少尿等，应考虑', '胆汁性腹膜炎', '膈下脓肿', '肝性脑病', '内出血', '休克', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】女性，37岁，乏力、纳差.右上腹部隐痛半年，既往HbsAg阳性l2年。4个月前查AFP121ng/ml，ALT?420U／L。治疗2个月后，症状有所好转，复查AFP?89ng/L，ALT?37U／L。可能的诊断是Ｃ', '慢性乙型肝炎，活动期', '肝炎后肝硬化', '原发性肝癌', '肝脓肿', '转移性肝癌', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】男性，39岁，8B超和CT检查发现右肝3cm×5cm占位性病变，性质不明，AFP阴性。哪项检查对明确诊断最有帮助', 'MRI', '肝动脉造影', '肝动脉造影+cT检查', '动态观察AFP变化', '肝脏穿刺+病理学检查', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】女性，36岁，体检发现右肝后叶3cm×5cm肝癌，一般状况良好。首选的治疗措施是', '以手术为主的综合治疗', '化疗', '肝动脉插管介入治疗', '生物和免疫治疗', '中医中药治疗', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】男性，42岁，食欲不振，尿色深两周，来院就诊。查体：皮肤.巩膜均黄染，肝大，肋下2cmt，轻度触痛，脾肋下未及；实验室检查：总胆红素l20umol／L，直接胆红素60umol／L，ALT?200U／L，ALP?l00U／L，GGT?l00U／L，尿胆红素及尿胆原均呈阳性，彩超检查无胆囊肿大及胆总管扩张。考虑其黄疽属于', '肝细胞性黄疸', '溶血性黄疸', '多吃胡萝h引起', '胰头癌肝#I-N管受压所致', '肝总管结石所致', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】男性，30岁，寒战高热，右上腹痛7d。曾有胆道感染病史。B超和CT检查提示肝脓肿．引起该疾病的最可能原因是', '胆道化脓性感染', '坏疽性阑尾炎', '开放性肝损伤', '右侧膈下脓肿', '肝包虫病', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】女性，45岁，因胆道蛔虫病并发细菌性肝脓肿。细菌性肝脓肿的主要临床症状', '恶心.呕吐', '寒战.高热；肝大伴疼痛', '局部皮肤凹陷性水肿', '出现黄疸', '可见右膈升高，运动受限', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】男性，60岁，细菌性肝脓肿引流术后，拔除引流管的主要指征是', '体温正常', '肝区疼痛消失', '血象正常', '引流管无脓液流出', 'B超显示脓腔消失', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】男性，32岁，突发性上腹剧痛4h，伴有恶心呕吐，吐出蛔虫l条，既往无溃疡病史。体格检查：全腹压痛，反跳痛及肌紧张，肝浊音界缩小，肠呜音消失，血淀粉酶250索氏单位。初步诊', '急性阑尾炎穿孔伴弥漫性腹膜炎', '胆道蛔虫病', '急性绞窄性肠梗阻', '急性消化性溃疡穿孔伴弥漫性腹膜炎', '急性出血性胰腺炎', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】男性患者，35岁，门静脉高压征患者，行脾切除术后5d，出现腹痛.腹胀血便，体温38．2℃，应首先考虑', '肠系膜静脉血栓形成', '盆腔脓肿', '腹膜炎', '阑尾炎', '肠间脓肿', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('对胰腺癌具有重要诊断意义的辅助检查是', 'CEA ', 'CAl9—9', 'PTC', 'MRCP ', 'ERCP', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('胰腺癌患者术前疼痛的原因是', '肿瘤压迫或侵犯腹膜后神经丛 ', '肿瘤压迫邻近脏器', '肿瘤诱发腹膜炎', '黄疸 ', '贫血', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('出现黄疸的胰腺癌患者术前应注意改善', '凝血功能 ', '皮肤、巩膜黄染', '心理状况', '疼痛', '营养', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('预防胰腺癌术后出现胆道感染的护理措施正确的是', '低脂饮食 ', '进食后坐位15～30分钟', '遵医嘱使用广谱抗生素', '监测体温变化', '头低足高卧位', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('下列哪项与胰腺癌的发病无关', '吸烟', '高蛋白饮食', '高脂肪饮食 ', '胆道疾病', '长期服用亚硝胺类物质', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('胰腺癌患者术前护理错误的是', '给予高蛋白、高脂肪饮食补充营养 ', '心理护理', '肠道准备', '有效镇痛', '禁烟', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('胰岛素瘤患者围手术期尤其应注意监测', '生命体征 ', '血糖', '体重 ', '疼痛情况 ', '肤色', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('下列除哪项外均可诱发胰岛素瘤患者发生低血糖', '劳累 ', '紧张', '发热', '饱食 ', '饥饿', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('胰头癌的最主要症状和体征是', '上腹痛', '上腹部肿块 ', '消化不良、腹泻', '乏力和消瘦', '黄瘟进行性加重 ', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】女性，9岁，有肾病史，1周前有上呼吸道感染史，经对症治疗后鼻塞流梯症状有所好转，但有咳嗽，昨起体温升高到39.5℃，伴恶心.呕吐，腹痛呈持续性。体检：神志清，两肺呼吸音粗，全腹膨隆压痛，伴轻度反跳痛及肌紧张，肠鸣音减弱，白细胞计数升高，中性粒细胞0.90。考虑最可能的诊断为', '肺炎', '肠道蛔虫症', '原发性腹膜炎', '肠系膜淋巴结炎', '急性机械性肠梗阻', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】患者，女性，60岁，体重51k9，因慢性胆石症发作，呕吐多次。目前生命体征稳定，尚无明显缺水征象，以下哪项护理诊断比较确切', '体液不足', '组织灌注流量改变', '有体液不足的危险', '心排血量减', '组织耗氧量增加', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】某患者因腹部外伤疼痛难忍，伴恶心呕吐，提示有腹腔内脏损伤的主要体征是', '腹式呼吸减弱', '腹膜刺激', '移动性浊音可疑', '肠鸣音减弱', '肝浊音界缩小', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】患者，男性，l6岁。腹部跌伤，腹痛8h。体检：一般情况好，血压l6/12kPa，脉搏l00/min，腹平坦，局部腹壁肿有擦伤痕迹，在肿胀部位腹部压痛明显，伴肌紧张，但无反跳痛。此时的处理原则', '腹壁局部涂外用药', '入院急诊行剖腹探查', '给予度冷丁镇痛', '禁食，输液并留院观察', '应用抗生素', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】男性，26岁，突然上腹剧痛，不能直腰，于发病30分钟后来诊，查BPll0/80mmH9，Pl00/min，痛苦面容，全腹压痛.反跳痛和肌紧张，以剑突下为著，肝浊音界位于右锁骨中线第6肋间，肠鸣音消失，血Hb：91dl，WBC?7．0×109／L，尿淀粉酶128U／L。进一步有意义的首选检查方法是', '腹部CT', '腹部立位X线片', '腹部B超', '腹腔灌洗', '生化检查', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】男性，50岁，已确诊晚期肝癌。突然右上腹痛，面色苍白，大汗。最可能的诊断是', '急性胆囊炎', '急性阑尾炎', '心肌梗死', '十二指肠溃疡穿孔', '肝癌破裂', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】男性，50岁，已确诊晚期肝癌。突然右上腹痛，面色苍白，大汗。腹部可能出现的体征除外', '腹式呼吸增强', '腹部膨隆', '肝浊音界消失', '移动性浊音阳性', '腹肌紧张压痛和反跳痛', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】男性，50岁，已确诊晚期肝癌。突然右上腹痛，面色苍白，大汗。若腹部移动性浊音阳性，哪项检查对明确诊断最为可靠', 'CT', 'B超', '腹部平片', '腹腔穿刺', '胃镜', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】血栓闭塞性脉管炎', '上肢对称性皮肤颜色改变', '下肢浅组静脉红、肿、硬，有压痛，足背动脉搏动减弱', '趾端坏死，血胆固醇增高', '下肢静脉淤血、水肿、慢性溃疡形成', '下肢变形、粗肿、肢端慢性溃疡形成', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】下肢静脉曲张', '上肢对称性皮肤颜色改变', '下肢浅组静脉红、肿、硬，有压痛，足背动脉搏动减弱', '趾端坏死，血胆固醇增高', '下肢静脉淤血、水肿、慢性溃疡形成', '下肢变形、粗肿、肢端慢性溃疡形成', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】患者，男性，46岁。自觉上腹部不适，恶心，1h前突然呕吐大量鲜血，内含少量残渣。既往有乙型肝炎病史。体检：一般情况较差，贫血貌，巩膜无黄染，血压l0．6／8kPa，脉搏116／rain。心肺无异常，腹平软，无压痛，肝肋下未触及，脾肋下可触及，无移动性浊音。血红蛋白709／L，血白细胞计数3．1×10’／L，血小板计数56×109／L，胆红素34．2mmo／L。该患者目前护理问题中最重要的是', '体液过多', '体液不足', '知识缺乏', '营养失调', '焦虑或恐惧', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】患者，男性，46岁。自觉上腹部不适，恶心，1h前突然呕吐大量鲜血，内含少量残渣。既往有乙型肝炎病史。体检：一般情况较差，贫血貌，巩膜无黄染，血压l0．6／8kPa，脉搏116／rain。心肺无异常，腹平软，无压痛，肝肋下未触及，脾肋下可触及，无移动性浊音。血红蛋白709／L，血白细胞计数3．1×10’／L，血小板计数56×109／L，胆红素34．2mmo／L。该患者的护理措施不正确的是', '立即配血，插三腔管', '开放较大静脉快速补液输血', '及时准确应用止血药', '限制液体输入，使用利尿剂', '加强病情观察，防止急性肝衰竭', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】赵女士，42岁。皮肤.巩膜出现明显黄染，粪便呈陶土色，尿液黄褐色，B超检查肝内外胆管无明显扩张，进一步检查应选择', '腹部x线平片', '口服胆囊造影', '静脉胆道造影', '内镜逆行胰胆管造影', '经皮肝穿刺胆道造影?', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】洪先生，49岁。饮酒后突然出现右上腹剧烈疼痛，伴呕吐，无畏寒.发热，查体Murphy征阳性，应首先考虑的疾病是', '急性胃肠炎', '急性胰腺炎', '急性胆囊炎', '急性胆管炎', '上消化道急性穿孔', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】赵女士，55岁。曾有胆囊结石病史5年，8h前突然出现剑突下偏右剧烈绞痛，寒战、高热、黄疽，并渐出现嗜睡，应考虑', '坏疽性胆囊炎', '急性梗阻性化脓性胆管炎', '胆道蛔虫病', '急性胆管炎', '急性胆囊炎', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】林女士，30岁。2d前因突发上腹部疼痛人院，经检查诊断为急性胆囊炎.胆囊结石，给予禁食.补液.抗感染等治疗无缓解，此时最佳治疗是', '胃肠减压', '加大抗生素用量', '调整抗菌药物', '作术前准备，行常规胆囊切除', '作术前准备，行腹腔镜胆囊切除', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】陈某，男性，l2岁。突发剑突下剧烈绞痛4h人院，腹痛呈阵发性，发作时患儿辗转哭闹，伴恶心.呕吐苦水，疼痛可突然停止，间歇期无不适。发病后未排便，无发热。体检：T?37℃，无黄疸，剑突下轻压痛,依据病史应考虑', '肠套叠', '急性胃肠炎', '急性胆囊炎', '胆道蛔虫病', '胆石病', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】陈某，男性，l2岁。突发剑突下剧烈绞痛4h人院，腹痛呈阵发性，发作时患儿辗转哭闹，伴恶心.呕吐苦水，疼痛可突然停止，间歇期无不适。发病后未排便，无发热。体检：T?37℃，无黄疸，剑突下轻压痛,为明确诊断应首选哪项检查', 'B超', '腹部X线摄片', 'PTC', 'MRI', 'CT', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】陈某，男性，l2岁。突发剑突下剧烈绞痛4h人院，腹痛呈阵发性，发作时患儿辗转哭闹，伴恶心.呕吐苦水，疼痛可突然停止，间歇期无不适。发病后未排便，无发热。体检：T?37℃，无黄疸，剑突下轻压痛,做血常规检查可查见', '白细胞计数明显升高', '嗜酸性粒细胞比例升高', '嗜碱性粒细胞比例升高', '中性粒细胞比例升高', '淋巴细胞比例升高', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】陈某，男性，l2岁。突发剑突下剧烈绞痛4h人院，腹痛呈阵发性，发作时患儿辗转哭闹，伴恶心.呕吐苦水，疼痛可突然停止，间歇期无不适。发病后未排便，无发热。体检：T?37℃，无黄疸，剑突下轻压痛,该患儿应采取的治疗方案是', '中药治疗', '择期手术', '急诊手术', 'ERCP术', '非手术治疗', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】潘女士，46岁，因胆囊结石继发胆总管结石3年入院，已行胆囊切除.胆总管切开取石.Ｔ管引流手术。现术后10d，每日T管引流量约200ml，患者无腹痛.发热，黄疽已消退，大便颏色正常。此时对T管的处理为', '拔管', '继续引流', '夹管试验', '经T管造影检查', '将T管放低以利引流', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】潘女士，46岁，因胆囊结石继发胆总管结石3年入院，已行胆囊切除.胆总管切开取石.Ｔ管引流手术。现术后10d，每日T管引流量约200ml，患者无腹痛.发热，黄疽已消退，大便颏色正常。术后T管拔除的指征', '术后1周，疼痛消失，体温正常', '术后２周，引流量减少', '术后10d，黄疸消退', '术后2周，引流量增多', '术后2周，胆道造影通畅', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】潘女士，46岁，因胆囊结石继发胆总管结石3年入院，已行胆囊切除.胆总管切开取石.Ｔ管引流手术。现术后10d，每日T管引流量约200ml，患者无腹痛.发热，黄疽已消退，大便颏色正常。T管拔除前试行夹管的时间为', '12h', '1～2d', '3～4d', '5—6d', '1周', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】潘女士，46岁，因胆囊结石继发胆总管结石3年入院，已行胆囊切除.胆总管切开取石.Ｔ管引流手术。现术后10d，每日T管引流量约200ml，患者无腹痛.发热，黄疽已消退，大便颏色正常。试行夹管期间护士重点观察的内容是', '血压.脉搏', '饮食.睡眠', '引流口周围存无胆汁渗漏', '大便的颜色', '腹痛.发热及黄疸', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】刘先生，43岁。反复右上腹痛.寒战发热.黄疽8年，此次症状加重3d入院。查体：体温39．8℃，脉搏l20／rain，血压80／60mmH9，神志淡漠，右上腹压痛及肌紧张。血常规检查：WBC?27×109／L，中性粒细胞0．90。B超提示肝外胆管扩张，内有强光团声影,依据病史应考虑的临床诊断为', '胆道蛔虫病', '急性重症胆管炎', '急性胰腺炎', '重症肝炎', '急性胃十二指肠穿孔', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】病人，男性，40岁，与朋友聚餐饮酒后6h出现剧烈而持续的中上腹痛，并向腰背部呈带状放射，伴恶心、呕吐，吐出食物和胆汁。检查：T:38℃，P?90次／min，BP?105／75mmHg，上腹部有压痛，临床诊断为急性胰腺炎。该病人发病的主要原因是', '胆道疾病', '高钙血症', '高脂血症', '暴饮暴食', '胰腺外伤', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】病人，男性，40岁，与朋友聚餐饮酒后6h出现剧烈而持续的中上腹痛，并向腰背部呈带状放射，伴恶心、呕吐，吐出食物和胆汁。检查：T:38℃，P?90次／min，BP?105／75mmHg，上腹部有压痛，临床诊断为急性胰腺炎。医生开出下列药物，其中能有效抑制胰腺分泌的', '西咪替丁', '阿托品', '生长抑素', '甲硝唑', '山莨菪碱', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】某男，41岁，饱餐、饮酒后突然出现中上腹持久剧烈疼痛，伴恶心，呕吐出胆汁。查体：上腹部压痛，腹壁轻度紧张，测血清淀粉酶明显增高，诊断为急性胰腺炎。对该病人首选的处理措施为', '禁食胃肠减压', '适当补钙补钾', '外科手术准备', '屈膝侧卧位', '应用抗生素', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】某男，41岁，饱餐、饮酒后突然出现中上腹持久剧烈疼痛，伴恶心，呕吐出胆汁。查体：上腹部压痛，腹壁轻度紧张，测血清淀粉酶明显增高，诊断为急性胰腺炎。该措施的目的是', '减少疼痛', '减少感染', '减少呕吐', '减少胰液分泌', '减少胃黏膜的刺激', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】某男，41岁，饱餐、饮酒后突然出现中上腹持久剧烈疼痛，伴恶心，呕吐出胆汁。查体：上腹部压痛，腹壁轻度紧张，测血清淀粉酶明显增高，诊断为急性胰腺炎。治疗后，病人腹痛、呕吐基本缓解，应给予的饮食为', '高脂高糖', '高脂低糖', '低脂高糖', '高脂低蛋白', '低脂低糖', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】张小姐，撞伤腹部4h，患者面色苍白，四肢厥冷，血压75／53mmH9，脉率140／min，全腹轻度压痛.反跳痛与肌紧张，腹部透视无异常。应考虑', '胃破裂', '肝脾破裂', '十二指肠破裂', '严重腹壁软组织挫伤', '腹膜后血肿', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】张小姐，撞伤腹部4h，患者面色苍白，四肢厥冷，血压75／53mmH9，脉率140／min，全腹轻度压痛.反跳痛与肌紧张，腹部透视无异常。以下处理哪项是错误的', '给氧', '避免活动', '给予流质或半流质饮食', '注意腹部症状和体征的变化', '观察生命体征', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】张小姐，撞伤腹部4h，患者面色苍白，四肢厥冷，血压75／53mmH9，脉率140／min，全腹轻度压痛.反跳痛与肌紧张，腹部透视无异常。在观察期间应禁用', '青霉素', '甲硝唑', '吗啡', '多巴胺', '酚磺乙胺(止血敏)', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】男性，40岁，3h前突发中上腹剧烈疼痛呈“刀割样”，查体发现全腹胀，全腹有压痛.反跳痛，以剑突下偏右以及右下腹最明显，全腹肌紧张。移动性浊音(±)。初步考虑', '急性阑尾炎', '急性胃十二指肠溃疡穿孔', '急性胆囊炎', '急性肠炎', '急性胰腺炎', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】男性，40岁，3h前突发中上腹剧烈疼痛呈“刀割样”，查体发现全腹胀，全腹有压痛.反跳痛，以剑突下偏右以及右下腹最明显，全腹肌紧张。移动性浊音(±)。此时最具诊断价值的检查方法是', '右上腹部B超', '右下腹部B超', '腹部x线平片', '腹腔穿刺，涂片检查', '血.尿淀粉酶测定', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】男性，40岁，3h前突发中上腹剧烈疼痛呈“刀割样”，查体发现全腹胀，全腹有压痛.反跳痛，以剑突下偏右以及右下腹最明显，全腹肌紧张。移动性浊音(±)。如上述检查结果为阳性，最合适的处理是', '选择有针对性的抗菌药物', '给予解痉止痛药物', '给予抑制胃酸分泌药物', '观察病情的变化', '立即手术', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】男性，40岁，3h前突发中上腹剧烈疼痛呈“刀割样”，查体发现全腹胀，全腹有压痛.反跳痛，以剑突下偏右以及右下腹最明显，全腹肌紧张。移动性浊音(±)。如选择手术，可选择', '胆囊切除术', '胃十二指肠溃疡穿孔修补术+腹腔引流术', '尾切除术+腹腔引流术', '胃大部切除+迷走神经干切除', '单纯腹腔引流术', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】患者，男性，l5岁，于3h前车祸撞伤右侧腹部，因腹部剧烈疼痛来院就诊。体检：脉搏115／rain，血压70／40mmH9。全腹压痛反跳痛，以右上腹为重，移动性浊音阳性，肠鸣音消失。为确诊，最有意义的检查是', '胸部x线片', '腹腔穿刺', '静脉肾盂造影', '测定肌酐.尿素氮', '心电图', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】患者，男性，l5岁，于3h前车祸撞伤右侧腹部，因腹部剧烈疼痛来院就诊。体检：脉搏115／rain，血压70／40mmH9。全腹压痛反跳痛，以右上腹为重，移动性浊音阳性，肠鸣音消失。根据病史，体格检查及腹腔穿刺抽出不凝血拟诊断为', '脾破裂', '小肠破裂', '肠系膜血肿', '肝破裂', '结肠破裂', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】患者，男性，l5岁，于3h前车祸撞伤右侧腹部，因腹部剧烈疼痛来院就诊。体检：脉搏115／rain，血压70／40mmH9。全腹压痛反跳痛，以右上腹为重，移动性浊音阳性，肠鸣音消失。首先考虑采取的措施是', '静脉输注血管收缩药物', '胸腔穿刺减压', '滴注利尿剂改善肾功能', '大剂量联合应用抗生素', '剖腹探查', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】患者，男性，38岁，吸烟15年，每天30支左右，冷库工作8年。近来，右小腿持续性剧烈疼痛，不能行走，夜间加重，到医院就诊，体检：右小腿皮肤苍白，肌萎缩，足背动脉搏动消失。可能的诊断是', '血栓闭塞性脉管炎', '动脉硬化闭塞', '下肢静脉血栓', '动脉栓塞', '动静脉瘘', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】患者，男性，38岁，吸烟15年，每天30支左右，冷库工作8年。近来，右小腿持续性剧烈疼痛，不能行走，夜间加重，到医院就诊，体检：右小腿皮肤苍白，肌萎缩，足背动脉搏动消失。目前该患者的病变属于哪一分期', 'I期', 'Il期', 'Ⅲ期', '1V期', '晚期', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】患者，男性，38岁，吸烟15年，每天30支左右，冷库工作8年。近来，右小腿持续性剧烈疼痛，不能行走，夜间加重，到医院就诊，体检：右小腿皮肤苍白，肌萎缩，足背动脉搏动消失。目前该患者最主要的护理诊断是', '知识缺乏', '组织灌注量改变', '潜在皮肤完整性受损', '舒适的改变：疼痛', '有外伤出血的危险', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】患者，男性，38岁，吸烟15年，每天30支左右，冷库工作8年。近来，右小腿持续性剧烈疼痛，不能行走，夜间加重，到医院就诊，体检：右小腿皮肤苍白，肌萎缩，足背动脉搏动消失。为缓解症状，重要的护理措施是', '患肢用热水袋保温', '要求患者绝对戒烟', '抬高患肢', '减少麻醉性镇痛药的应用', '鼓励患者增加运动锻炼', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】患者，女性，48岁，理发员。下肢酸胀沉重5年，活动或休息后减轻。体检见小腿内侧有蚓状团块，足靴区有色素沉着。可能的诊断是', '小隐静脉曲张', '大隐静脉抽张', '深静脉血栓形成', '血栓闭塞性脉管炎', '动脉硬化性闭塞症', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】患者，女性，48岁，理发员。下肢酸胀沉重5年，活动或休息后减轻。体检见小腿内侧有蚓状团块，足靴区有色素沉着。该患者出现此病的主要诱因是', '深静脉阻塞', '动脉硬化', '循环血量增多', '长期站立工作', '静脉瓣膜缺陷', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】患者，女性，48岁，理发员。下肢酸胀沉重5年，活动或休息后减轻。体检见小腿内侧有蚓状团块，足靴区有色素沉着。预防此病的措施为', '坐时避免双膝交叉过久', '穿紧身衣裤', '休息时双足下垂', '经常坐位或站立，减少活动', '尽量减少运动锻炼', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】患者，女性，48岁，理发员。下肢酸胀沉重5年，活动或休息后减轻。体检见小腿内侧有蚓状团块，足靴区有色素沉着。若采取手术治疗，必须是', '交通静脉试验阳性', '深静脉通畅试验阳性', '交通静脉试验阴性??', '深静脉通畅试验阴性', '腰交感神经阻滞试验阴性', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】患者，女性，48岁，理发员。下肢酸胀沉重5年，活动或休息后减轻。体检见小腿内侧有蚓状团块，足靴区有色素沉着。目前患者最主要的护理诊断是', '知识缺乏', '活动无耐力', '疼痛', '潜在并发症：出血', '潜在的皮肤完整性受损', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】患者，女性，48岁，理发员。下肢酸胀沉重5年，活动或休息后减轻。体检见小腿内侧有蚓状团块，足靴区有色素沉着。若对该患者行手术治疗，术后的主要护理措施有', '弹力绷带包扎2d后拆除', '休息时双足下垂', '术后12h内下地活动', '绝对卧床l周', '观察患肢远端皮肤的温度.颜色及是否有肿胀', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】病人，男性，45岁。左小腿有数条蚯蚓状血管团，内有硬结，症状逐年加重，诊断为左下肢静脉曲张。检查患肢深静脉是否通畅选用', '波氏试验', '屈氏试验I', '屈氏试验Ⅱ', '肢体抬高试验', '闭孔内肌试验', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】病人，男性，45岁。左小腿有数条蚯蚓状血管团，内有硬结，症状逐年加重，诊断为左下肢静脉曲张。该病人深静脉通畅，拟行大隐静脉高位结扎+剥脱术，手术前皮肤准备范围是', '曲张部位的皮肤', '整个左下肢', '双下肢', '左侧腹股沟区手术范围', '左侧腹股沟区手术范围及左侧整个下肢至足趾', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】病人，男性，45岁。左小腿有数条蚯蚓状血管团，内有硬结，症状逐年加重，诊断为左下肢静脉曲张。术后护理措施中错误的是', '抬高患肢30', '定时做足背伸屈运动', '卧床休息1周', '患肢穿弹力袜', '观察是否出现并发症', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】肝外胆道不包括', '肝左管', '肝右管', '胆囊管', '胰管', '肝总管', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】肝蒂内结构不包括', '左肝管', '右肝管', '肝静脉', '肝固有动脉分支', '门静脉及其分支', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】关于肝门静脉的描述，正确的是', '为肝脏的营养血管', '肝门静脉系的两端均为毛细血管', '直接注入下腔静脉', '收集腹腔所有不成对的脏器的静脉血', '血管内静脉瓣丰富', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】男性，63岁，有上腹不适、恶心，呕血1000ml，既往无胃、十二指肠溃疡病史，有乙型肝炎病史10年。体检脉搏有力、不快，血压97．5／60mmHL，为明确出血部位，最适宜的检查是', '腹腔动脉造影', '钡餐检查', 'B超检查', '胃镜检查', '插三腔管明确出血部位', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】男性，63岁，有上腹不适、恶心，呕血1000ml，既往无胃、十二指肠溃疡病史，有乙型肝炎病史10年。体检脉搏有力、不快，血压97．5／60mmHL,该病人肝硬化合并食管、胃底静脉曲张破裂出血已被证实。病人人院后又有大量呕血，此时最简单而有效的应急措施是', '口服止血药', '静脉滴注垂体后叶素', '内镜硬化剂注射', '三腔二囊管压迫', '急诊手术', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】男性，63岁，有上腹不适、恶心，呕血1000ml，既往无胃、十二指肠溃疡病史，有乙型肝炎病史10年。体检脉搏有力、不快，血压97．5／60mmHL,病人出血后采取的措施中不正确的是', '输液、输血', '应用保肝药物', '静脉止血药的应用', '三腔二囊管压迫', '应用肥皂水灌肠', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】男性，63岁，有上腹不适、恶心，呕血1000ml，既往无胃、十二指肠溃疡病史，有乙型肝炎病史10年。体检脉搏有力、不快，血压97．5／60mmHL,门静脉高压症胃底静脉曲张破裂出血的最主要死亡原因是', '失血性休克', '肝功能衰竭、肝昏迷', '肝肾综合征', '多器官功能衰竭', '感染', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】男性，63岁，有上腹不适、恶心，呕血1000ml，既往无胃、十二指肠溃疡病史，有乙型肝炎病史10年。体检脉搏有力、不快，血压97．5／60mmHL,病人经积极治疗后出血停止，而病人腹水征逐渐明显，该病人的治疗计划', '长期内科治疗', '尽快作腹腔—静脉转流术', '待腹水征好转或稳定后考虑择期手术', '反复垂体后叶素静脉滴注，以降低门静脉压力', '再出血时内镜硬化剂注射治疗', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】男性，56岁，过去有嗜酒及慢性肝炎史，近2个月食欲不振、低热、消瘦、乏力、右上腹胀痛并扪到肿块。体格检查：肝肋下3cm，质硬，无腹水。B超检查发现病人肝右叶中央单个10cmXl2cm占位，AFP升高，肝肾功能正常。诊断为原发性肝癌。与原发性肝癌的发生关系最大的是', '胆道感染', '肝炎后肝硬化', '血吸虫性肝硬化', '酒精中毒性肝硬化', '肝良性肿瘤', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】男性，56岁，过去有嗜酒及慢性肝炎史，近2个月食欲不振、低热、消瘦、乏力、右上腹胀痛并扪到肿块。体格检查：肝肋下3cm，质硬，无腹水。B超检查发现病人肝右叶中央单个10cmXl2cm占位，AFP升高，肝肾功能正常。诊断为原发性肝癌。首选的治疗方案为', '手术切除', '全身化学治疗', '介入治疗', '局部无水酒精注射', '放射治疗', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】男性，56岁，过去有嗜酒及慢性肝炎史，近2个月食欲不振、低热、消瘦、乏力、右上腹胀痛并扪到肿块。体格检查：肝肋下3cm，质硬，无腹水。B超检查发现病人肝右叶中央单个10cmXl2cm占位，AFP升高，肝肾功能正常。诊断为原发性肝癌。病人2h前突然全腹痛，出冷汗。检查发现病人有腹胀，右上腹轻压痛及反跳痛，移动性浊音阳性。可能的诊断为', '肝硬化、腹水继发感染', '应激性溃疡穿孔合并出血', '肝癌破裂', '急性出血坏死性胰腺炎', '细菌性肝脓肿', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】男性，56岁，过去有嗜酒及慢性肝炎史，近2个月食欲不振、低热、消瘦、乏力、右上腹胀痛并扪到肿块。体格检查：肝肋下3cm，质硬，无腹水。B超检查发现病人肝右叶中央单个10cmXl2cm占位，AFP升高，肝肾功能正常。诊断为原发性肝癌。病人2h前突然全腹痛，出冷汗。检查发现病人有腹胀，右上腹轻压痛及反跳痛，移动性浊音阳性。首先应采取的措施是', '及时通知医师', '测量生命体征', '补液，输血', '做好急诊手术的各项准备', '应用止血剂', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】女性，41岁。胆囊结石病史2年，主诉晚餐后突然出现右上腹阵发性剧烈疼痛向右肩、背部放射，伴有腹胀、恶心、呕吐等症状。体检示：体温38．9℃，脉搏112次／分钟，血压106／85mmHg。右上腹部有压痛、肌紧张、反跳痛。实验室检查WBCl0．5X10’／L，中性粒细胞0.79。导致该病人突然腹痛的原因是', '胆囊收缩，结石排人十二指肠', '结石阻塞胆管下端、引起急性胰腺炎', '结石损伤胆囊黏膜', '结石损伤十二指肠', '结石嵌顿于胆囊颈致胆囊强烈收缩', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】女性，41岁。胆囊结石病史2年，主诉晚餐后突然出现右上腹阵发性剧烈疼痛向右肩、背部放射，伴有腹胀、恶心、呕吐等症状。体检示：体温38．9℃，脉搏112次／分钟，血压106／85mmHg。右上腹部有压痛、肌紧张、反跳痛。实验室检查WBCl0．5X10’／L，中性粒细胞0.79。该病人的体格检查可出现', 'Charcot三联症', 'Murphy征阳性', 'Reynolds五联征', 'MODS征', 'MOF征', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】女性，41岁。胆囊结石病史2年，主诉晚餐后突然出现右上腹阵发性剧烈疼痛向右肩、背部放射，伴有腹胀、恶心、呕吐等症状。体检示：体温38．9℃，脉搏112次／分钟，血压106／85mmHg。右上腹部有压痛、肌紧张、反跳痛。实验室检查WBCl0．5X10’／L，中性粒细胞0.79。下列哪项护理措施最为关键', '介绍病房环境', '介绍作息时间', '介绍饮食', '介绍疾病知识', '做好手术准备', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【案例单选】女性，41岁。胆囊结石病史2年，主诉晚餐后突然出现右上腹阵发性剧烈疼痛向右肩、背部放射，伴有腹胀、恶心、呕吐等症状。体检示：体温38．9℃，脉搏112次／分钟，血压106／85mmHg。右上腹部有压痛、肌紧张、反跳痛。实验室检查WBCl0．5X10’／L，中性粒细胞0.79。在非手术治疗期间，减轻疼痛的护理措施不包括', '卧床休息', '胃肠减压', '消炎利胆', '注射吗啡', '注射654—2', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】按感染病程分类，急性感染是指病程在', '3周以内', '2周以内', '1个月以内', '15天之内', NULL, 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】中心静脉压的正常值', '5-20cmH2O?', '10-20cmH2O?', '5-10cmH2O', '15-20cmH2O', '5-15cmH2O', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】α-AFP升高可见于', '肝癌?', '恶性畸胎瘤??', '鼻咽癌?', '肺癌', '胃癌', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】肝硬化并发上消化道出血最常见的原因为', '并发消化道溃疡', '食管胃底静脉曲张破裂', '脾功能亢进', '急性糜烂出血性胃炎', '血小板减少', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】原发性肝癌早期重要的表现是', '肝区疼痛', '进行性肝大', '黄疸', '食欲减退', '蜘蛛痣', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】急性胆囊炎最严重的并发症是', '细菌性肝脓肿', '胆囊积脓', '胆囊坏疽穿孔引起胆汁性腹膜炎', '并发急性胰腺炎', '胆囊胆管瘘', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】门静脉高压症主要临床表现哪一项是错误的', '脾肿大?', '腹水', '食道静脉曲张', '血小板增多', '黄疸', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】\"Ｔ\"形管引流注意事项，哪一项是错误的', '引流装置应保持无菌', '注意勿使\"Ｔ\"形管脱落', '观察瓶记录引流液的量和性质', '肠鸣音恢复后即拔管', '保持引流管通畅', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】原发性肝癌多见于男性，好发年龄最多见的是', '30—40岁', '40—50岁', '50—60岁', '30—60岁', '40—60岁', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】肝性脑病前驱期的主要表现为', '意识模糊', '精神失常', '性格、行为改变', '呼吸时有肝臭', '腱反射亢进', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】诊断恶性肿瘤最可靠的依据是', '实验室检查', 'B型超声波', '放射性核素检查', '病理检查', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】\"Ｔ\"形管引流注意事项，哪一项是错误的', '引流装置应保持无菌', '注意勿使\"Ｔ\"形管脱落', '观察瓶记录引流液的量和性质', '肠鸣音恢复后即拔管', '保持引流管通畅', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】应放置T形管引流的手术是', '胆囊切除术', '肝叶切除术', '胆总管探查术', '门－腔静脉吻合术', NULL, 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】门静脉高压病人术前护理，错误的是', '给予高碳水化合物，高维生素、低脂饮食', '有腹水者应控制水和钠入量', '应避免进食干硬、剌激性强或含有鱼剌、骨渣的食物', '常规放置胃管', NULL, 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】急性水肿型胰腺炎治疗和护理，下列哪一项错误', '密切观察病情变化，定时测BP、P、T', '紧急手术治疗', '禁食和胃肠减压', '输液纠正水电解质和酸碱紊乱', NULL, 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】急性胆囊炎最严重的并发症是', '细菌性肝脓肿', '胆囊积脓', '胆囊坏疽穿孔引起胆汁性腹膜炎', '并发急性胰腺炎', NULL, 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【多选题】急性胰腺炎非手术治疗的措施有', '抑制胰液分泌', '静脉快速补液', '抗生素应用', '密切观察生命征', '纠正电解质紊乱', 'ABCDE', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【多选题】胆囊切除术后饮食正确的有', '清淡、易消化、低脂饮食', '低胆固醇、高维生素、高热量、高蛋白的饮食', '忌暴饮暴食', '多吃动物内脏、豆腐等', '低脂饮食', 'ABCE', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【多选题】肝胆手术术前应完成的术前准备包括', '血 、尿 、大便标本常规检查', '心、肺、肾功能检查', '肝胆影像学检查', '凝血功能检查', '备皮', 'ABCDE', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【多选题】男性，45岁。饱餐后出现上腹持续性疼痛并向右肩、腰背部放射，伴有恶心、呕吐，诊断为急性胰腺炎。入院后行手术治疗，术后放置双套管灌洗引流。以下哪些护理措施正确', '观察记录引流液量、性状', '若管腔阻塞，可用肝素液缓慢冲洗', '定期试夹闭管道', '妥善固定，保持引流通畅', '维持引流管内一定负压', 'ABDE', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】为昏迷患者做口腔护理，错误的是', '开口处由臼齿处放入', '用血管夹夹紧棉球擦洗', '取下活动义齿，刷净后浸泡再冷水中', '用等渗盐水漱口', '局部溃疡用冰硼酸涂抹', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】口腔真菌感染应该选择的漱口溶液应该为', '甲硝唑溶液', '氯己定溶液（洗必泰）', '呋喃西林溶液', '碳酸氢钠溶液', '复方硼砂溶液', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】口腔护理应该注意的问题，错误的是', '昏迷患者禁止漱口，以免引起误吸', '长期应用抗生素者，注意观察有无真菌感染', '擦次过程中动作要轻柔，避免金属钳端碰到牙', '有活动义齿者，应取下，用消毒液浸泡', '护士操作前后应当清点棉球数量', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】对患者进行口腔卫生指导，错误的是', '早晚刷牙，餐后漱口', '牙刷应每隔6 个月更换一次', '口腔过于干燥时，鼓励患者多饮水', '牙膏不宜常用一种，应轮换使用', '每次刷牙时间以3min 为宜', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】为患者床上洗头的目的不包括', '促进头皮血液循环', '除去污垢和头屑', '使患者头发清洁、舒适', '预防头虱', '治疗头皮感染', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】为患者床上擦浴的目的错误的是', '去除皮肤污垢，保持皮肤清洁', '促进皮肤血液循环，抑制皮肤腺、汗腺排泄功能', '预防皮肤感染和压疮等并发症的发生', '增强皮肤对外界刺激的敏感性', '防止关节僵硬和肌肉挛缩等并发症的发生', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】为患者床上擦浴的适宜水温为', '39~41℃', '45~48℃', '50~52℃', '53~55℃', '60~62℃', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】关于测量体温的叙述，错误的是', '测试前将汞柱甩至35℃一下', '测腋温的时间为5~10min', '测肛温的时间为5min', '测口温前15~30min 勿进食过冷、过热的食物', '极度消瘦的患者不适应测量腋温', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】关于测量脉搏的叙述，错误的是', '诊脉前患者有剧烈活动者应休息10min 后再测量', '不可用拇指诊断', '对心脏病患者应测脉搏1min', '为偏瘫患者测量脉搏，应选择健侧肢体', '脉搏短绌的患者，由两人同时测量脉搏与心率1min', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】关于测量呼吸的叙述，错误的是', '一般与测脉搏同时进行', '计数30s，乘以2 即为呼吸频率', '测量时应告诉患者，取得配合', '呼吸不规律的患者或者婴儿应当测量1min', '如患者由、有剧烈运动、紧张等，需稳定后测量', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】协助患者翻身错误的是', '翻身时不可拖拉，以免擦伤皮肤', '移动身体后，需用软枕垫好，以维持舒适位置', '两人协调翻身时，注意动作协调、轻稳', '手术后患者分泌物浸湿敷料时，应先翻身后换药', '颅脑手术后，头部翻转不可剧烈', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】协助患者由床上移至平车的叙述，错误的是', '搬运患者时动作轻稳，协调一致', '尽量使患者靠近搬运者，已达到节力', '将患者头部置于平车的小轮端，方便推送', '下坡时应使患者头部在高处一段', '骨折患者，应在平车上垫木板，并固定好骨折部位再搬运', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】用平车搬运骨折患者，下列叙述错误的是', '车上垫木板', '先做好骨折部位的固定', '宜用四人搬运法', '下坡时头在后', '让家属推车，护士在傍密切观察', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】协助患者更衣的叙述，错误的是', '注意保暖，避免患者受凉', '注意皮肤及患侧肢体情况', '先脱近侧，后脱对策', '先穿对侧，后穿近侧', '肢体有伤口或疼痛，先穿健侧，后穿患侧', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】须执行接触隔离的疾病是', '甲型肝炎', '破伤风', '斑疹伤寒', '狂犬病', '麻疹', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】压疮淤血红润期的主要护理措施是', '除去病因，定时翻身', '局部使用抗生素，避免感染', '厚层滑石粉包扎，减少摩擦', '清洁创面防腐生新', '红外线照射，干燥创面', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】压疮的预防措施，不妥的是', '活动能力受限的患者，定时被动变换体位，每2 小时1 次', '受压皮肤在解除压力30min 后，压红不消退者，应延长翻身时间', '长期卧床患者可以使用充气气垫床', '骨突出皮肤使用透明贴或者减压帖保护', '躁动者有导致局部皮肤受伤的危险，可用透明贴膜予以局部保护', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】冰袋降温多长时间应测体温', '使用后20min', '使用后30min', '使用后40min', '使用后50min', '使用后60min', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】下列哪种疾病可采用热疗', '腰痛', '急腹症', '牙痛', '脑外伤', '鼻翼处感染', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】一般患者在软组织扭伤、挫伤几小时后才能使用治疗', '12h', '24h', '48h', '72h', '96h', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】物理降温时应避开的部位是', '腋窝', '腑窝', '腹股沟', '腘窝', '足底', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】2岁以上儿童使用热水袋的温度，正确的是', '39~41℃', '48~50℃', '50~55℃', '60~70℃', '75~80℃', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】热水坐浴适宜的水温是', 'A．37~38℃', '38~39℃', '40~45℃', '48~50℃', '50~55℃', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】发口服药不符合要求的是', '根据医嘱给药', '做好心理护理', '鼻饲患者暂缓发药', '患者提出质问须重新核对', '危重患者要喂服', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】抢救青霉素过敏性休克最首要的措施是', '立即平卧', '氧气吸入', '注意保暖', '停止用药', '皮下注射肾上腺素', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】下列皮试液1ml 含量，错误的是', '青霉素：50U', '链霉素：2500U', '破伤风抗毒素：150U', '头孢菌素：5mg', '普鲁卡因：2.5mg', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】下列注射部位错误的是', '皮内注射——三角肌下缘', '皮下注射——大腿外侧方', '肌内注射——臀大肌', '静脉注射——正中静脉', '股静脉注射——股三角区股动脉外侧0.5cm 处', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】皮下注射胰岛素时，告知患者注射后多长时间开始进食', '10min', '15min', '20min', '30min', '60min', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】肌内注射侧卧位的体位准备，正确的是', '两腿伸直，足尖相对', '两腿伸直，足跟相对', '上腿弯曲，下腿伸直', '下腿弯曲，上腿伸直', '两腿弯曲，放松', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】坐浴温度一般是', '36-37 摄氏度', '38-40 摄氏度', '41-42 摄氏度', '43-44 摄氏度', '45-50 摄氏度', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】属于腹膜外位器官的是', '子宫', '直肠', '胰', '降结肠', '充盈的膀胱', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】属于腹膜间位器官的是', '直肠上段', '胃', '胰', '阑尾', '十二指肠下部', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】关于肘正中静脉的描述，正确的是', '属于深静脉', '属于浅静脉', '起于手背静脉网正中', '连接桡静脉和尺静脉', '大多注入肱静脉', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】大隐静脉行于', '内踝后方', '外踝后方', '内踝前方', '外踝前方', '腘窝内', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】属于等渗溶液的是', '0.9%NaCl 溶液', '0.8%NaCl 溶液', '8%葡萄糖溶液', '0.5%NaCl 溶液', '15%葡萄糖溶液', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】关于红细胞的叙述，错误的是', '使血液中数量最多的血细胞', '正常成年男性的红细胞数高于女性', '主要功能是吞噬、杀菌、参与免疫反应', '红细胞破裂，血红蛋白可逸出', '血液中红细胞数或血红蛋白含量低于正常，称为贫血', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】关于血浆的描述，错误的是', '血液自然凝固后，析出淡黄色液体是血浆', '血液凝固后上层淡黄色透明液体是血浆', '下层深红色不透明的是血细胞', '是血细胞的细胞外液，是机体内环境的重要组成部分', '血清与血浆的主要区别在于前者不含纤维蛋白原和某些凝血因子', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】血小板的生理功能不包括', '释放血管活性物质', '维持血管内皮的完整性', '参与止血', '促进凝血', '吞噬病原微生物，识别和杀伤肿瘤细胞', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】左侧心力衰竭时发生淤血的脏器是', '脾', '脑', '肝', '肺', '肾', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】槟榔肝形成的原因是', '肝细胞肿胀', '肝细胞脂肪变性', '慢性肝淤血', '肝硬化', '肝细胞萎缩', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】构成血栓头部的主要成分是', '血小板', '红细胞', '中性粒细胞', '纤维蛋白', '单核细胞', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】脂肪栓塞易发生于', '输血时', '外伤骨折时', '静脉注射时', '潜水作业时', '分娩时', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】血栓由肉芽组织取代的过程称为', '机化', '溶解', '吸收', '钙化', '再通', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】来自门静脉的栓子随血流运行，首先栓塞于', '肾', '肠', '肝', '脑', '肺', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】蜂窝织炎发生在', '肺', '心', '皮下组织', '肝', '脑', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】炎症的基本病变是', '细胞的变性、坏死', '炎性充血、水肿', '变质、渗出、增生', '红肿热痛，功能障碍', '周围血液中白细胞增多和体温升高', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】原位癌与早期浸润癌的主要区别在于', '肿瘤大小', '边界清晰程度', '基膜是否受侵犯', '淋巴管有无瘤栓', '有无浸润血管', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】低分子右旋糖酐的主要作用是', '扩充血容量，改善微循环', '提高血浆胶体渗透压', '补充营养和水分', '保持酸碱平衡', '补充蛋白质', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】过敏性休克首选药物是', '去甲肾上腺素', '肾上腺素', '异丙肾上腺素', '阿托品', '多巴胺', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】禁忌静脉推注的药液是', '50%葡萄糖', '10%氯化钾', '10%葡萄糖酸钙', '30%泛影葡胺', '氨茶碱', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】哌替啶的临床用途不包括', '各种锐痛', '麻醉前给药', '人工冬眠', '心源性哮喘', '止泻', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】阿托品解痉作用最好的是', '支气管平滑肌', '子宫平滑肌', '胃肠道平滑肌', '胆道平滑肌', '输尿管平滑肌', 'C', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】哌替啶作为吗啡代用品用于各种剧痛的原因是', '镇痛作用比吗啡强', '成瘾性较吗啡弱', '不引起直立性低血压', '作用时间较吗啡长', '便秘的不良反应轻', 'B', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】属于抗胆碱药的是', '阿托品', '麻黄碱', '沙丁胺醇', '异丙肾上腺素', '阿司匹林', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】有关地西泮的叙述，错误的是', '抗焦虑作用时间长，是临床上常用的抗焦虑药', '是一种长效催眠药物', '在临床上可用于治疗大脑麻痹', '抗癫作用强，可用于治疗癫痫小发作', '抗惊厥作用强，可用于治疗破伤风', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】对利多卡因无效的心律失常是', '心肌梗死引起的室性期前收缩', '强心苷中毒引起的室性期前收缩', '室性心动过速', '室上性心动过速', '心室纤颤', 'D', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】氢氯噻嗪的主要作用部位在', '近曲小管', '集合管', '髓襻升支', '髓襻升支粗段', '远曲小管的近端', 'E', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【单选题】硝普钠主要用于', '高血压危象', '中度高血压伴肾功能不全', '重度高血压', '轻、中度高血压', '中、中度高血压', 'A', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【多选题】原发性肝癌的转移途径有哪些？', '肝内血行转移', '淋巴转移', '种植转移', '肝外血行转移', '直接蔓延', 'ABCDE', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【多选题】T型管拔管的指征是', '黄疸减退', '体温正常', '无腹痛', '大便颜色正常', 'T型管造影显示胆道通畅', 'ABCDE', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【多选题】胆结石术后取半卧位的目的是', '减少术后出血', '利用腹腔引流', '减轻伤口缝合张力', '减轻疼痛', '减轻腹胀', 'BCD', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【多选题】T型引流管的护理要点包括', '保持无菌', '保持通畅，定时冲洗', '观察，记录引流量及性质', '每日更换引流袋', '注意观察病人的食欲及大便颜色变化', 'ACDE', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【多选题】T型引流管的作用包括', '防止胆汁性腹膜炎', '减轻胆总管缝合张力', '促进炎症的消退', '防止胆管狭窄，梗阻等并发症', '利于Oddi括约肌水肿消退', 'ABCDE', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【多选题】T型引流管拔管后应注意观察', '食欲和消化情况', '大便色泽', '黄疸情况', '腹痛和发热', '肝功能', 'ABCD', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【多选题】胆囊结石引起腹痛常常发生于', '饥饿时', '夜间平卧时', '高脂饮食后', '精神紧张时', '运动后', 'BC', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【多选题】急性胰腺炎下列处理正确的是', '绝对卧床休息', '禁食水，补充血容量', '严密观察病情及时发现并发症', '做好胃肠减压护理', '疼痛时可用吗啡止痛', 'ABCD', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【多选题】急性坏死性胰腺炎的并发症有', '休克', '化脓性腹膜炎', '胰腺良性囊肿', '慢性胰腺炎', '慢性胆囊炎', 'ABCD', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【多选题】急性胰腺炎疼痛的特点是', '进食后疼痛缓解', '向腰背部放射', '疼痛剧烈而持续', '疼痛常位于上腹正中', '弓腰屈膝可减轻疼痛', 'BCDE', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【多选题】急性胰腺炎发病原因包括', '胆总管梗阻', '酒精中毒', '暴饮暴食', '外伤', '病毒感染', 'ABCDE', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【多选题】急性坏死性胰腺炎的临床表现包括', '急性腹膜炎症状体征', '血、尿淀粉酶增高', '神志模糊', '高度腹胀', '血钙升高', 'ABCD', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【多选题】急性胰腺炎非手术治疗期间使用药物可抑制胰腺分泌的是', '雷尼替丁', '胰酶抑制剂', '生长抑素', '塞替派', '阿托品', 'ACE', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【多选题】下肢静脉曲张的病因为', '重体力劳动', '妊娠', '慢性咳嗽', '慢性腹泻', '长期站立工作', 'ABCE', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【多选题】血栓闭塞性脉管炎的护理措施包括', '止痛', '保护患肢', '测皮温', '心理护理', '健康指导', 'ABCDE', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【多选题】静脉血栓形成的发病因素', '长期卧床', '长期吸烟', '烧伤、割伤', '静脉注射刺激性药物', NULL, 'ACD', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【多选题】下肢静脉曲张术后护理应', '绝对禁烟', '用弹力绷带加压包扎', '鼓励病人术后48小时后下床行走', '避免站立过久', NULL, 'BCD', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【多选题】血栓闭塞性脉管炎诱发因素', '长期吸烟', '寒冷', '潮湿', '外伤感染', NULL, 'ABCD', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【多选题】大多位于中上腹的腹痛的疾病有', '阑尾病变', '胆道病变', '胰腺病变', '胃、十二指肠病变', NULL, 'BCD', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【多选题】ERCP禁忌', '碘过敏', '急性胰腺炎', '慢性胰腺炎', '胆囊炎', NULL, 'AB', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【多选题】急性胰腺炎潜在并发症有', '休克', 'MODS', '感染', '出血', NULL, 'ABCD', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【多选题】原发性肝癌的癌旁综合征表现', '低血糖', '红细胞增多症', '高胆固醇血症', '高钙血症', NULL, 'ABCD', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【多选题】门脉高压的病人为预防肝性脑病，可服用肠道不吸收的抗生素有', '庆大霉素', '新霉素', '链霉素', '青霉素', NULL, 'BC', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【多选题】手术后拆线时间依据哪些情况而定', '性别', '年龄', '伤口部位', '局部血液供应情况', NULL, 'BCD', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【多选题】具体部位正确的拆线时间为', '四肢10-12天', '胸部7-9天', '减张缝合10天', '面部3-6天', NULL, 'AB', NULL, '八月份考试题', '1');
INSERT INTO `t_eaxm` VALUES ('【多选题】手术后注射止痛剂应评估', '疼痛的部位、性质、强度', '血压', '是否腹胀', '膀胱是否充盈', NULL, 'ABCD', NULL, '八月份考试题', '1');

