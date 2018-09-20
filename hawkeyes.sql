/*
Navicat MySQL Data Transfer

Date: 2018-09-20 10:39:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for eye_corporation_info
-- ----------------------------
DROP TABLE IF EXISTS `eye_corporation_info`;
CREATE TABLE `eye_corporation_info` (
  `merchant_id` int(5) NOT NULL AUTO_INCREMENT,
  `corporation_name` varchar(100) DEFAULT NULL,
  `corporation_address` varchar(255) NOT NULL,
  `corporation_keys` varchar(50) DEFAULT NULL,
  `corporation_status` int(2) DEFAULT '1' COMMENT '1正常，0禁止',
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`merchant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_corporation_info
-- ----------------------------
INSERT INTO `eye_corporation_info` VALUES ('1', '水上顠', '上海市1122', '7ea6c9b9f9f2f56c80524c74e0e2d190', '1', '2018-08-26 11:11:05', '2018-08-26 11:11:10');

-- ----------------------------
-- Table structure for eye_email_alarm_history
-- ----------------------------
DROP TABLE IF EXISTS `eye_email_alarm_history`;
CREATE TABLE `eye_email_alarm_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email_address` varchar(100) DEFAULT NULL,
  `alarm_title` varchar(100) DEFAULT NULL,
  `alarm_content` varchar(255) DEFAULT NULL,
  `merchant_id` int(5) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15493 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_email_alarm_history
-- ----------------------------

-- ----------------------------
-- Table structure for eye_email_smtp_server
-- ----------------------------
DROP TABLE IF EXISTS `eye_email_smtp_server`;
CREATE TABLE `eye_email_smtp_server` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL COMMENT '类型',
  `smtp_server` varchar(255) DEFAULT NULL COMMENT 'SMTP服务',
  `port` int(10) DEFAULT NULL COMMENT '端口',
  `title` varchar(255) DEFAULT NULL COMMENT '主题',
  `user_name` varchar(50) DEFAULT NULL COMMENT '账号',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `from_email` varchar(50) DEFAULT NULL COMMENT '发送邮件',
  `merchant_id` int(5) DEFAULT NULL COMMENT '商家ID',
  `is_default` int(11) DEFAULT '0' COMMENT '1默认配置',
  `creator` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_email_smtp_server
-- ----------------------------

-- ----------------------------
-- Table structure for eye_email_template
-- ----------------------------
DROP TABLE IF EXISTS `eye_email_template`;
CREATE TABLE `eye_email_template` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `email_code` varchar(50) DEFAULT NULL COMMENT '短信模版CODE',
  `email_template_name` varchar(100) DEFAULT NULL COMMENT '短信模版名称',
  `email_template_text` varchar(300) DEFAULT NULL COMMENT '短信模版内容',
  `is_delete` int(2) DEFAULT '0' COMMENT '是否删除0未删除1已删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `merchant_id` int(5) DEFAULT NULL COMMENT '公司 ID',
  `creator` varchar(50) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_email_template
-- ----------------------------
INSERT INTO `eye_email_template` VALUES ('16', 'email_code_1', 'HTTP应用异常提醒', 'Notification Type:  PROBLEM</br>Service: {1}</br>Ip: {2}</br>CheckUrl: {3}</br>Charge_person: {4}</br>Phone: {5}</br>Date/Time:{6}</br>HTTP Connection refused', '0', '2018-09-11 15:14:11', '1', '水哥');
INSERT INTO `eye_email_template` VALUES ('17', 'email_code_2', 'HTTP应用恢复提醒', 'Notification Type:  RECOVERY</br>Service: {1}</br>Ip: {2}</br>CheckUrl: {3}</br>Charge_person: {4}</br>Phone: {5}</br>Date/Time:{6}</br>HTTP OK', '0', '2018-09-11 15:15:27', '1', '水哥');
INSERT INTO `eye_email_template` VALUES ('18', 'email_code_3', 'TCP应用异常提醒', 'Notification Type:  PROBLEM</br>Service: {1}</br>Ip: {2}</br>Port: {3}</br>Charge_person: {4}</br>Phone: {5}</br>Date/Time:{6}</br>Telnet Connection refused', '0', '2018-09-11 15:30:19', '1', '水哥');
INSERT INTO `eye_email_template` VALUES ('19', 'email_code_4', 'TCP应用恢复提醒', 'Notification Type:  RECOVERY</br>Service: {1}</br>Ip: {2}</br>Port: {3}</br>Charge_person: {4}</br>Phone: {5}</br>Date/Time:{6}</br>Telnet OK', '0', '2018-09-11 15:31:01', '1', '水哥');
INSERT INTO `eye_email_template` VALUES ('20', 'email_code_5', 'Redis应用内存使用超过设定值提醒', 'Notification Type:  PROBLEM</br>Service: {1}</br>Ip: {2}</br>Redis_port: {3}</br>Used_memory: {4}M</br>Date/Time: {5}</br>Used Memory Rate: {6}', '0', '2018-09-11 16:35:42', '1', '水哥');
INSERT INTO `eye_email_template` VALUES ('21', 'email_code_6', 'Redis应用内存使用恢复提醒', 'Notification Type:   RECOVERY</br>Service: {1}</br>Ip: {2}</br>Redis_port: {3}</br>Used_memory: {4}M</br>Date/Time: {5}</br>Used Memory Rate: {6}', '0', '2018-09-11 16:36:46', '1', '水哥');
INSERT INTO `eye_email_template` VALUES ('22', 'email_code_7', 'Redis应用连接数超过设定值提醒', 'Notification Type:  PROBLEM</br>Service: {1}</br>Ip: {2}</br>Redis_port: {3}</br>Connection_clients: {4}M</br>Date/Time: {5}</br>超过 Clients: {6}', '0', '2018-09-11 16:39:16', '1', '水哥');
INSERT INTO `eye_email_template` VALUES ('23', 'email_code_8', 'Redis应用连接数恢复提醒', 'Notification Type:   RECOVERY</br>Service: {1}</br>Ip: {2}</br>Redis_port: {3}</br>Connection_clients: {4}M</br>Date/Time: {5}</br> Clients: {6}', '0', '2018-09-11 16:39:35', '1', '水哥');
INSERT INTO `eye_email_template` VALUES ('24', 'email_code_9', 'Mysql应用连接数超过设定值提醒', 'Notification Type:  PROBLEM</br>Service: {1}</br>Ip: {2}</br>Mysql_Port: {3}</br>Connections: {4}</br>Date/Time: {5}</br>超过 Clients: {6}', '0', '2018-09-11 16:41:54', '1', '水哥');
INSERT INTO `eye_email_template` VALUES ('25', 'email_code_10', 'Mysql应用连接数恢复提醒', 'Notification Type:   RECOVERY</br>Service: {1}</br>Ip: {2}</br>Mysql_Port: {3}</br>Connections: {4}</br>Date/Time: {5}</br> Clients: {6}', '0', '2018-09-11 16:59:05', '1', '水哥');
INSERT INTO `eye_email_template` VALUES ('26', 'email_code_11', '主机内存超过设定值提醒', 'Notification Type:  PROBLEM</br>Ip: {1}</br>Total_memory: {2}</br>Used_Memory: {3}</br>Memory_Rate: {4}%</br>Date/Time: {5}</br>超过 : {6}%', '0', '2018-09-11 17:04:23', '1', '水哥');
INSERT INTO `eye_email_template` VALUES ('27', 'email_code_12', '主机内存恢复设定值提醒', 'Notification Type:   RECOVERY</br>Ip: {1}</br>Total_memory: {2}</br>Used_Memory: {3}</br>Memory_Rate: {4}%</br>Date/Time: {5}</br> {6}%', '0', '2018-09-11 17:04:58', '1', '水哥');
INSERT INTO `eye_email_template` VALUES ('28', 'email_code_13', '主机磁盘空间超过设定值提醒', 'Notification Type:  PROBLEM</br>Ip: {1}</br>Total_Disk: {2}</br>Used_Disk: {3}</br>Disk_rate: {4}%</br>Date/Time: {5}</br>超过 : {6}%', '0', '2018-09-11 17:16:01', '1', '水哥');
INSERT INTO `eye_email_template` VALUES ('29', 'email_code_14', '主机磁盘空间恢复提醒', 'Notification Type:   RECOVERY</br>Ip: {1}</br>Total_Disk: {2}</br>Used_Disk: {3}</br>Disk_rate: {4}%</br>Date/Time: {5}</br>设定值: {6}%', '0', '2018-09-11 17:17:20', '1', '水哥');
INSERT INTO `eye_email_template` VALUES ('30', 'email_code_15', '主机CPU超过设定值提醒', 'Notification Type:  PROBLEM</br>Ip: {1}</br>Cpu_Cores: {2}</br>One_Load: {3}</br>Five_Load: {4}</br>Date/Time: {5}</br>超过 : {6}%', '0', '2018-09-11 17:19:01', '1', '水哥');
INSERT INTO `eye_email_template` VALUES ('31', 'email_code_16', '主机CPU恢复提醒', 'Notification Type:   RECOVERY</br>Ip: {1}</br>Cpu_Cores: {2}</br>One_Load: {3}</br>Five_Load: {4}</br>Date/Time: {5}</br>设置值 : {6}%', '0', '2018-09-11 17:19:38', '1', '水哥');
INSERT INTO `eye_email_template` VALUES ('32', 'email_code_17', 'Redis应用连接异常', 'Notification Type:  PROBLEM</br>Service: {1}</br>Ip: {2}</br>Redis_port: {3}</br>Date/Time: {4}</br>Redis Connection refused', '0', '2018-09-11 18:17:26', '1', '水哥');
INSERT INTO `eye_email_template` VALUES ('33', 'email_code_18', 'Mysql应用连接异常', 'Notification Type:  PROBLEM</br>Service: {1}</br>Ip: {2}</br>Mysql_Port: {3}</br>Date/Time:{4}</br>连接异常，请及时查看！', '0', '2018-09-17 17:04:58', '1', '水哥');
INSERT INTO `eye_email_template` VALUES ('34', 'email_code_19', 'Mysql应用恢复正常', 'Notification Type:   RECOVERY</br>Service: {1}</br>Ip: {2}</br>Mysql_Port: {3}</br>Date/Time:{4}</br>应用恢复正常，请知悉！', '0', '2018-09-17 17:38:04', '1', '水哥');

-- ----------------------------
-- Table structure for eye_host
-- ----------------------------
DROP TABLE IF EXISTS `eye_host`;
CREATE TABLE `eye_host` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(30) DEFAULT NULL,
  `cpu_num` int(5) DEFAULT NULL,
  `cpu_model` varchar(50) DEFAULT NULL,
  `host_name` varchar(50) DEFAULT NULL,
  `memory` double(10,2) DEFAULT NULL,
  `total_disk` varchar(30) DEFAULT NULL COMMENT '磁盘容量',
  `agent_version` varchar(30) DEFAULT NULL,
  `os_version` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `status` int(3) DEFAULT '1',
  `merchant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_host
-- ----------------------------

-- ----------------------------
-- Table structure for eye_info
-- ----------------------------
DROP TABLE IF EXISTS `eye_info`;
CREATE TABLE `eye_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_name` varchar(100) DEFAULT NULL,
  `service_ip` varchar(50) DEFAULT NULL,
  `service_port` varchar(20) DEFAULT NULL,
  `check_url` varchar(100) DEFAULT NULL,
  `check_type` varchar(10) DEFAULT NULL,
  `spend_time` varchar(100) DEFAULT NULL,
  `service_status` varchar(10) DEFAULT NULL,
  `is_notice` int(5) DEFAULT '0' COMMENT '通知1， 不通知0',
  `last_time` datetime DEFAULT NULL,
  `checked_times` int(10) DEFAULT '1',
  `check_times` int(10) DEFAULT '2',
  `application_status` int(2) DEFAULT '1',
  `charge_people` varchar(30) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `merchant_id` int(5) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=357 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_info
-- ----------------------------

-- ----------------------------
-- Table structure for eye_info_tcp
-- ----------------------------
DROP TABLE IF EXISTS `eye_info_tcp`;
CREATE TABLE `eye_info_tcp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_name` varchar(100) DEFAULT NULL,
  `service_ip` varchar(50) DEFAULT NULL,
  `service_port` varchar(10) DEFAULT NULL,
  `check_type` varchar(10) DEFAULT '2',
  `spend_time` varchar(100) DEFAULT NULL,
  `service_status` varchar(10) DEFAULT NULL,
  `is_notice` int(5) DEFAULT '0' COMMENT '通知1， 不通知0',
  `last_time` datetime DEFAULT NULL,
  `checked_times` int(10) DEFAULT '1',
  `check_times` int(10) DEFAULT '2',
  `application_status` int(2) DEFAULT '1',
  `charge_people` varchar(30) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `merchant_id` int(5) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=371 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_info_tcp
-- ----------------------------

-- ----------------------------
-- Table structure for eye_linux_alarm_number
-- ----------------------------
DROP TABLE IF EXISTS `eye_linux_alarm_number`;
CREATE TABLE `eye_linux_alarm_number` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `alarm_memory_rate` int(15) DEFAULT '50' COMMENT '警告内存，百分比',
  `alarm_connection_client` int(15) DEFAULT '150' COMMENT '警告连接数，单位个',
  `alarm_disk_rate` int(10) DEFAULT '50' COMMENT '默认使用率50%',
  `alarm_cpu_five_load` double(10,2) DEFAULT NULL,
  `alarm_network_speed` int(10) DEFAULT '10' COMMENT '默认10M报警',
  `merchant_id` int(5) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_linux_alarm_number
-- ----------------------------
INSERT INTO `eye_linux_alarm_number` VALUES ('2', '90', '1000', '85', '10.00', '1000', '1', '2018-09-12 18:06:37', '2018-09-12 15:27:32');

-- ----------------------------
-- Table structure for eye_linux_cpu
-- ----------------------------
DROP TABLE IF EXISTS `eye_linux_cpu`;
CREATE TABLE `eye_linux_cpu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) DEFAULT NULL,
  `cpu_cores` varchar(5) DEFAULT NULL,
  `one_load` varchar(10) DEFAULT NULL,
  `five_load` varchar(10) DEFAULT NULL,
  `fifteen_load` varchar(10) DEFAULT NULL,
  `status` int(2) DEFAULT '1' COMMENT '1正常，2警告，3紧急',
  `is_notice` int(2) DEFAULT '1' COMMENT '1通知，0不通知',
  `merchant_id` int(5) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_linux_cpu
-- ----------------------------

-- ----------------------------
-- Table structure for eye_linux_cpu_detail
-- ----------------------------
DROP TABLE IF EXISTS `eye_linux_cpu_detail`;
CREATE TABLE `eye_linux_cpu_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) DEFAULT NULL,
  `cpu_cores` varchar(5) DEFAULT NULL,
  `one_load` varchar(10) DEFAULT NULL,
  `five_load` varchar(10) DEFAULT NULL,
  `fifteen_load` varchar(10) DEFAULT NULL,
  `merchant_id` int(5) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_linux_cpu_detail
-- ----------------------------

-- ----------------------------
-- Table structure for eye_linux_disk
-- ----------------------------
DROP TABLE IF EXISTS `eye_linux_disk`;
CREATE TABLE `eye_linux_disk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) DEFAULT NULL,
  `total_disk` varchar(20) DEFAULT NULL,
  `used_disk` varchar(20) DEFAULT NULL,
  `free_disk` varchar(20) DEFAULT NULL,
  `disk_rate` varchar(20) DEFAULT NULL,
  `status` int(2) DEFAULT '1' COMMENT '1正常，2警告，3紧急',
  `is_notice` int(2) DEFAULT '1' COMMENT '1通知，0不通知',
  `merchant_id` int(5) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_linux_disk
-- ----------------------------

-- ----------------------------
-- Table structure for eye_linux_disk_detail
-- ----------------------------
DROP TABLE IF EXISTS `eye_linux_disk_detail`;
CREATE TABLE `eye_linux_disk_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) DEFAULT NULL,
  `total_disk` varchar(20) DEFAULT NULL,
  `used_disk` varchar(20) DEFAULT NULL,
  `free_disk` varchar(20) DEFAULT NULL,
  `disk_rate` varchar(20) DEFAULT NULL,
  `merchant_id` int(5) DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_linux_disk_detail
-- ----------------------------

-- ----------------------------
-- Table structure for eye_linux_disk_io
-- ----------------------------
DROP TABLE IF EXISTS `eye_linux_disk_io`;
CREATE TABLE `eye_linux_disk_io` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(30) DEFAULT NULL,
  `device` varchar(30) DEFAULT NULL,
  `rkBs` double(10,0) DEFAULT NULL,
  `wkBs` double(10,0) DEFAULT NULL,
  `rs` double(10,0) DEFAULT NULL,
  `ws` double(10,0) DEFAULT NULL,
  `svctm` double(10,0) DEFAULT NULL,
  `await` double(10,0) DEFAULT NULL COMMENT '平均处理时间',
  `status` int(2) DEFAULT '1' COMMENT '1正常，2警告，3异常',
  `util` double(10,0) DEFAULT NULL COMMENT '使用率',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `merchant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_linux_disk_io
-- ----------------------------

-- ----------------------------
-- Table structure for eye_linux_disk_io_history
-- ----------------------------
DROP TABLE IF EXISTS `eye_linux_disk_io_history`;
CREATE TABLE `eye_linux_disk_io_history` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(30) DEFAULT NULL,
  `device` varchar(30) DEFAULT NULL,
  `rkBs` varchar(10) DEFAULT NULL,
  `wkBs` varchar(10) DEFAULT NULL,
  `rs` varchar(10) DEFAULT NULL,
  `ws` varchar(10) DEFAULT NULL,
  `svctm` varchar(10) DEFAULT NULL,
  `await` varchar(10) DEFAULT NULL COMMENT '平均处理时间',
  `status` int(2) DEFAULT '1' COMMENT '1正常，2警告，3异常',
  `util` varchar(10) DEFAULT NULL COMMENT '使用率',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `merchant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_linux_disk_io_history
-- ----------------------------

-- ----------------------------
-- Table structure for eye_linux_host
-- ----------------------------
DROP TABLE IF EXISTS `eye_linux_host`;
CREATE TABLE `eye_linux_host` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) DEFAULT NULL,
  `host_name` varchar(30) DEFAULT NULL,
  `cpu_cores` varchar(5) DEFAULT NULL,
  `used_memory` varchar(20) DEFAULT '1',
  `total_memory` varchar(10) DEFAULT NULL,
  `total_disk` varchar(10) DEFAULT NULL,
  `disk_rate` varchar(10) DEFAULT NULL,
  `one_load` varchar(10) DEFAULT NULL,
  `five_load` varchar(10) DEFAULT NULL,
  `fifteen_load` varchar(10) DEFAULT NULL,
  `status` int(2) DEFAULT '1' COMMENT '1正常，2警告，3紧急',
  `is_notice` int(2) DEFAULT '1' COMMENT '1通知，0不通知',
  `merchant_id` int(5) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_linux_host
-- ----------------------------

-- ----------------------------
-- Table structure for eye_linux_memory
-- ----------------------------
DROP TABLE IF EXISTS `eye_linux_memory`;
CREATE TABLE `eye_linux_memory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) DEFAULT NULL,
  `total_memory` varchar(20) DEFAULT NULL,
  `used_memory` varchar(20) DEFAULT NULL,
  `free_memory` varchar(20) DEFAULT NULL,
  `cached_memory` varchar(20) DEFAULT NULL,
  `status` int(2) DEFAULT '1' COMMENT '1正常，2警告，3紧急',
  `is_notice` int(2) DEFAULT '1' COMMENT '1通知，0不通知',
  `merchant_id` int(5) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_linux_memory
-- ----------------------------

-- ----------------------------
-- Table structure for eye_linux_memory_detail
-- ----------------------------
DROP TABLE IF EXISTS `eye_linux_memory_detail`;
CREATE TABLE `eye_linux_memory_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) DEFAULT NULL,
  `total_memory` varchar(20) DEFAULT NULL,
  `used_memory` varchar(20) DEFAULT NULL,
  `free_memory` varchar(20) DEFAULT NULL,
  `cached_memory` varchar(20) DEFAULT NULL,
  `merchant_id` int(5) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_linux_memory_detail
-- ----------------------------

-- ----------------------------
-- Table structure for eye_linux_network
-- ----------------------------
DROP TABLE IF EXISTS `eye_linux_network`;
CREATE TABLE `eye_linux_network` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) DEFAULT NULL,
  `in_speed` double(20,3) DEFAULT NULL,
  `out_speed` double(20,3) DEFAULT NULL,
  `status` int(2) DEFAULT '1' COMMENT '1正常，2警告，3紧急',
  `is_notice` int(2) DEFAULT '1' COMMENT '1通知，0不通知',
  `merchant_id` int(5) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_linux_network
-- ----------------------------

-- ----------------------------
-- Table structure for eye_linux_network_detail
-- ----------------------------
DROP TABLE IF EXISTS `eye_linux_network_detail`;
CREATE TABLE `eye_linux_network_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) DEFAULT NULL,
  `in_speed` double(20,3) DEFAULT NULL,
  `out_speed` double(20,3) DEFAULT NULL,
  `merchant_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_linux_network_detail
-- ----------------------------

-- ----------------------------
-- Table structure for eye_mysql_server
-- ----------------------------
DROP TABLE IF EXISTS `eye_mysql_server`;
CREATE TABLE `eye_mysql_server` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `mysql_name` varchar(50) DEFAULT NULL COMMENT 'mysql名称',
  `mysql_ip` varchar(50) DEFAULT NULL COMMENT 'ip',
  `mysql_port` int(10) DEFAULT NULL COMMENT '连接端口',
  `mysql_username` varchar(30) DEFAULT NULL COMMENT '用户名',
  `mysql_password` varchar(30) DEFAULT NULL COMMENT '密码',
  `total_connections` bigint(10) DEFAULT '1' COMMENT '总连接数',
  `used_connection_rate` double(10,2) DEFAULT '0.00' COMMENT '连接数使用率',
  `threads_created` bigint(11) DEFAULT '0' COMMENT '创建用来处理连接的线程数',
  `threads_connected` bigint(11) DEFAULT '0' COMMENT '当前开放的连接',
  `threads_running` bigint(11) DEFAULT '0' COMMENT '当前运行的连接',
  `questions` bigint(11) DEFAULT '0' COMMENT '已经发送给服务器的查询的个数',
  `connection_errors_internal` bigint(11) DEFAULT '0' COMMENT '由服务器错误导致的失败连接数',
  `aborted_connects` bigint(11) DEFAULT '0' COMMENT '尝试与服务器进行连接结果失败的次数',
  `connection_errors_max_connections` bigint(11) DEFAULT '0' COMMENT '由max_connections 限制导致的失败连接数',
  `com_commit` bigint(11) DEFAULT '0' COMMENT '提交事务量',
  `com_rollback` bigint(11) DEFAULT '0' COMMENT '回滚事务量',
  `com_select` bigint(11) DEFAULT '0' COMMENT '查询分量',
  `com_insert` bigint(11) DEFAULT '0' COMMENT '插入数量',
  `com_update` bigint(11) DEFAULT '0' COMMENT '更新事务',
  `com_delete` bigint(11) DEFAULT '0' COMMENT '删除事务',
  `bytes_received` bigint(11) DEFAULT '0' COMMENT '从所有客户端接收到的字节数',
  `bytes_sent` bigint(11) DEFAULT '0' COMMENT '发送给所有客户端的字节数',
  `innodb_buffer_pool_pages_total` bigint(11) DEFAULT '1' COMMENT '缓存池总量',
  `innodb_buffer_pool_pages_used` bigint(11) DEFAULT '0' COMMENT '使用缓存数量',
  `innodb_buffer_pool_pages_used_rate` double(11,2) DEFAULT '0.00' COMMENT '缓存池使用率',
  `key_blocks_total` bigint(11) DEFAULT '1' COMMENT '缓存池总量',
  `key_blocks_used` bigint(11) DEFAULT '0' COMMENT '已使用的块',
  `key_blocks_used_rate` double(11,2) DEFAULT '0.00' COMMENT '缓存池使用率',
  `slow_queries` bigint(11) DEFAULT '0' COMMENT '慢查询数量',
  `uptime` bigint(11) DEFAULT '0' COMMENT '运行天数',
  `status` int(2) DEFAULT '0' COMMENT '0正常，1警告，2紧急',
  `reason` varchar(100) DEFAULT NULL COMMENT '异常原因',
  `is_notice` int(2) DEFAULT '0' COMMENT '0不通知，1通知',
  `merchant_id` int(5) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_mysql_server
-- ----------------------------

-- ----------------------------
-- Table structure for eye_mysql_server_alarm
-- ----------------------------
DROP TABLE IF EXISTS `eye_mysql_server_alarm`;
CREATE TABLE `eye_mysql_server_alarm` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `use_connection_alarm` int(3) DEFAULT '0' COMMENT '连接数使用率',
  `merchant_id` int(5) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_mysql_server_alarm
-- ----------------------------
INSERT INTO `eye_mysql_server_alarm` VALUES ('1', '50', '1', '水哥', '2018-09-17 15:29:25', '2018-09-18 00:03:17');

-- ----------------------------
-- Table structure for eye_mysql_server_history
-- ----------------------------
DROP TABLE IF EXISTS `eye_mysql_server_history`;
CREATE TABLE `eye_mysql_server_history` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `mysql_ip` varchar(50) DEFAULT NULL COMMENT 'ip',
  `mysql_port` int(10) DEFAULT NULL COMMENT '连接端口',
  `total_connections` bigint(10) DEFAULT '1' COMMENT '总连接数',
  `used_connection_rate` double(10,2) DEFAULT '0.00' COMMENT '连接数使用率',
  `threads_created` bigint(11) DEFAULT '0' COMMENT '创建用来处理连接的线程数',
  `threads_connected` bigint(11) DEFAULT '0' COMMENT '当前开放的连接',
  `threads_running` bigint(11) DEFAULT '0' COMMENT '当前运行的连接',
  `questions` bigint(11) DEFAULT '0' COMMENT '已经发送给服务器的查询的个数',
  `connection_errors_internal` bigint(11) DEFAULT '0' COMMENT '由服务器错误导致的失败连接数',
  `aborted_connects` bigint(11) DEFAULT '0' COMMENT '尝试与服务器进行连接结果失败的次数',
  `connection_errors_max_connections` bigint(11) DEFAULT '0' COMMENT '由max_connections 限制导致的失败连接数',
  `com_commit` bigint(11) DEFAULT '0' COMMENT '提交事务量',
  `com_rollback` bigint(11) DEFAULT '0' COMMENT '回滚事务量',
  `com_select` bigint(11) DEFAULT '0' COMMENT '查询分量',
  `com_insert` bigint(11) DEFAULT '0' COMMENT '插入数量',
  `com_update` bigint(11) DEFAULT '0' COMMENT '更新事务',
  `com_delete` bigint(11) DEFAULT '0' COMMENT '删除事务',
  `bytes_received` bigint(11) DEFAULT '0' COMMENT '从所有客户端接收到的字节数',
  `bytes_sent` bigint(11) DEFAULT '0' COMMENT '发送给所有客户端的字节数',
  `innodb_buffer_pool_pages_total` bigint(11) DEFAULT '1' COMMENT '缓存池总量',
  `innodb_buffer_pool_pages_used` bigint(11) DEFAULT '0' COMMENT '使用缓存数量',
  `innodb_buffer_pool_pages_used_rate` double(11,2) DEFAULT '0.00' COMMENT '缓存池使用率',
  `key_blocks_total` bigint(11) DEFAULT '1' COMMENT '缓存池总量',
  `key_blocks_used` bigint(11) DEFAULT '0' COMMENT '已使用的块',
  `key_blocks_used_rate` double(11,2) DEFAULT '0.00' COMMENT '缓存池使用率',
  `slow_queries` bigint(11) DEFAULT '0' COMMENT '慢查询数量',
  `merchant_id` int(5) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3295 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_mysql_server_history
-- ----------------------------

-- ----------------------------
-- Table structure for eye_phone_alarm_history
-- ----------------------------
DROP TABLE IF EXISTS `eye_phone_alarm_history`;
CREATE TABLE `eye_phone_alarm_history` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `phone_number` varchar(30) DEFAULT NULL,
  `alarm_content` varchar(255) DEFAULT NULL,
  `merchant_id` int(5) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32202 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_phone_alarm_history
-- ----------------------------

-- ----------------------------
-- Table structure for eye_ping
-- ----------------------------
DROP TABLE IF EXISTS `eye_ping`;
CREATE TABLE `eye_ping` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `eye_hosts` varchar(50) DEFAULT NULL,
  `ping_times` int(10) DEFAULT '0',
  `time_out` int(10) DEFAULT '0',
  `status` int(5) DEFAULT '0' COMMENT '0正常，1警告，2紧急',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_ping
-- ----------------------------

-- ----------------------------
-- Table structure for eye_port_num
-- ----------------------------
DROP TABLE IF EXISTS `eye_port_num`;
CREATE TABLE `eye_port_num` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(30) NOT NULL,
  `port` int(6) NOT NULL,
  `established` int(6) DEFAULT '0',
  `syn_sent` int(6) DEFAULT '0',
  `syn_recv` int(6) DEFAULT '0',
  `fin_wait1` int(6) DEFAULT '0',
  `fin_wait2` int(6) DEFAULT '0',
  `time_wait` int(6) DEFAULT '0',
  `closes` int(6) DEFAULT '0',
  `close_wait` int(6) DEFAULT '0',
  `last_ack` int(6) DEFAULT '0',
  `listen` int(6) DEFAULT '0',
  `closing` int(6) DEFAULT '0',
  `create_time` datetime DEFAULT '0000-00-00 00:00:00',
  `update_time` datetime DEFAULT '0000-00-00 00:00:00',
  `merchant_id` int(5) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_port_num
-- ----------------------------

-- ----------------------------
-- Table structure for eye_port_num_detail
-- ----------------------------
DROP TABLE IF EXISTS `eye_port_num_detail`;
CREATE TABLE `eye_port_num_detail` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(30) NOT NULL,
  `port` int(6) NOT NULL,
  `established` int(6) DEFAULT '0',
  `syn_sent` int(6) DEFAULT '0',
  `syn_recv` int(6) DEFAULT '0',
  `fin_wait1` int(6) DEFAULT '0',
  `fin_wait2` int(6) DEFAULT '0',
  `time_wait` int(6) DEFAULT '0',
  `closes` int(6) DEFAULT '0',
  `close_wait` int(6) DEFAULT '0',
  `last_ack` int(6) DEFAULT '0',
  `listen` int(6) DEFAULT '0',
  `closing` int(6) DEFAULT '0',
  `create_time` datetime DEFAULT '0000-00-00 00:00:00',
  `update_time` datetime DEFAULT '0000-00-00 00:00:00',
  `merchant_id` int(5) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_port_num_detail
-- ----------------------------

-- ----------------------------
-- Table structure for eye_redis_alarm_number
-- ----------------------------
DROP TABLE IF EXISTS `eye_redis_alarm_number`;
CREATE TABLE `eye_redis_alarm_number` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `alarm_memory` int(15) DEFAULT '100' COMMENT '警告内存，百分比',
  `alarm_connection_client` int(15) DEFAULT '10000' COMMENT '警告连接数，单位个',
  `merchant_id` int(5) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_redis_alarm_number
-- ----------------------------
INSERT INTO `eye_redis_alarm_number` VALUES ('1', '69', '6666', '1', '2018-09-03 23:10:15', '2018-09-03 23:08:03');

-- ----------------------------
-- Table structure for eye_redis_info
-- ----------------------------
DROP TABLE IF EXISTS `eye_redis_info`;
CREATE TABLE `eye_redis_info` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `redis_name` varchar(100) DEFAULT NULL,
  `redis_ip` varchar(50) DEFAULT NULL,
  `redis_port` int(8) DEFAULT NULL,
  `is_need_password` int(2) DEFAULT '1' COMMENT '是否需要密码，1不需要，2需要',
  `password_context` varchar(50) DEFAULT NULL,
  `redis_status` int(2) DEFAULT '1' COMMENT '1表示正常，2警告',
  `redis_keys` bigint(50) DEFAULT '0',
  `used_memory` double(50,0) DEFAULT '0' COMMENT '使用内存数量，B',
  `total_memory` double(50,0) DEFAULT NULL,
  `used_memory_rate` double(20,2) DEFAULT NULL,
  `memory_status` int(5) DEFAULT '1' COMMENT '1正常，2警告',
  `keyspace_hits` bigint(50) DEFAULT '0' COMMENT '命中 key 的次数',
  `keyspace_misses` bigint(50) DEFAULT '0' COMMENT '不命中的KEY数量',
  `redis_hit_rate` double(20,2) DEFAULT '0.00',
  `connected_clients` int(10) DEFAULT '0' COMMENT '连接客户端的数量',
  `connected_clients_status` int(5) DEFAULT '1' COMMENT '1正常，2警告',
  `is_notice` int(10) DEFAULT '0' COMMENT '默认通知1，不通知为0',
  `last_time` datetime DEFAULT NULL,
  `checked_times` int(10) DEFAULT '1',
  `check_times` int(10) DEFAULT '2',
  `merchant_id` int(5) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_redis_info
-- ----------------------------

-- ----------------------------
-- Table structure for eye_server_account
-- ----------------------------
DROP TABLE IF EXISTS `eye_server_account`;
CREATE TABLE `eye_server_account` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `creator` varchar(30) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `merchant_id` int(11) DEFAULT NULL,
  `status` int(5) DEFAULT '1',
  `is_delete` int(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_server_account
-- ----------------------------

-- ----------------------------
-- Table structure for eye_sms_template
-- ----------------------------
DROP TABLE IF EXISTS `eye_sms_template`;
CREATE TABLE `eye_sms_template` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `sms_code` varchar(50) DEFAULT NULL COMMENT '短信模版CODE',
  `sms_template_name` varchar(100) DEFAULT NULL COMMENT '短信模版名称',
  `sms_template_text` varchar(300) DEFAULT NULL COMMENT '短信模版内容',
  `is_delete` int(2) DEFAULT '0' COMMENT '是否删除0未删除1已删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `merchant_id` int(5) DEFAULT NULL COMMENT '公司 ID',
  `creator` varchar(50) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_sms_template
-- ----------------------------

-- ----------------------------
-- Table structure for eye_ssh_exec
-- ----------------------------
DROP TABLE IF EXISTS `eye_ssh_exec`;
CREATE TABLE `eye_ssh_exec` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) DEFAULT NULL,
  `port` int(6) DEFAULT NULL,
  `command` varchar(255) DEFAULT NULL,
  `status` int(3) DEFAULT NULL,
  `take_time` bigint(10) DEFAULT NULL,
  `creator` varchar(30) DEFAULT NULL,
  `exec_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `merchant_id` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_ssh_exec
-- ----------------------------

-- ----------------------------
-- Table structure for eye_ssh_exec_history
-- ----------------------------
DROP TABLE IF EXISTS `eye_ssh_exec_history`;
CREATE TABLE `eye_ssh_exec_history` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(11) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `command` varchar(255) DEFAULT NULL,
  `exec_result` varchar(255) DEFAULT NULL,
  `take_time` bigint(11) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `creator` varchar(30) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `merchant_id` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_ssh_exec_history
-- ----------------------------

-- ----------------------------
-- Table structure for eye_user
-- ----------------------------
DROP TABLE IF EXISTS `eye_user`;
CREATE TABLE `eye_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `real_name` varchar(50) DEFAULT NULL,
  `is_notice` int(10) DEFAULT '0' COMMENT '默认1为通知，0不通知',
  `is_email` int(10) DEFAULT '1' COMMENT '1通知，0不通知',
  `phone_number` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status` int(10) DEFAULT '0' COMMENT '0正常，1禁用',
  `merchant_id` int(5) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_login` int(2) DEFAULT '0',
  `account_id` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eye_user
-- ----------------------------
INSERT INTO `eye_user` VALUES ('14', 'admin', '21232f297a57a5a743894a0e4a801fc3', '水哥', '0', '0', '13800000000', '13800000000@qq.com', '0', '1', '2018-08-26 11:06:08', '0', null);

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `test_ip` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
