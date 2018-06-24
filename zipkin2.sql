/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50157
Source Host           : localhost:3306
Source Database       : zipkin2

Target Server Type    : MYSQL
Target Server Version : 50157
File Encoding         : 65001

Date: 2018-06-24 11:48:08
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `zipkin_annotations`
-- ----------------------------
DROP TABLE IF EXISTS `zipkin_annotations`;
CREATE TABLE `zipkin_annotations` (
  `trace_id_high` bigint(20) NOT NULL DEFAULT '0' COMMENT 'If non zero, this means the trace uses 128 bit traceIds instead of 64 bit',
  `trace_id` bigint(20) NOT NULL COMMENT 'coincides with zipkin_spans.trace_id',
  `span_id` bigint(20) NOT NULL COMMENT 'coincides with zipkin_spans.id',
  `a_key` varchar(255) NOT NULL COMMENT 'BinaryAnnotation.key or Annotation.value if type == -1',
  `a_value` blob COMMENT 'BinaryAnnotation.value(), which must be smaller than 64KB',
  `a_type` int(11) NOT NULL COMMENT 'BinaryAnnotation.type() or -1 if Annotation',
  `a_timestamp` bigint(20) DEFAULT NULL COMMENT 'Used to implement TTL; Annotation.timestamp or zipkin_spans.timestamp',
  `endpoint_ipv4` int(11) DEFAULT NULL COMMENT 'Null when Binary/Annotation.endpoint is null',
  `endpoint_ipv6` binary(16) DEFAULT NULL COMMENT 'Null when Binary/Annotation.endpoint is null, or no IPv6 address',
  `endpoint_port` smallint(6) DEFAULT NULL COMMENT 'Null when Binary/Annotation.endpoint is null',
  `endpoint_service_name` varchar(255) DEFAULT NULL COMMENT 'Null when Binary/Annotation.endpoint is null'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

-- ----------------------------
-- Records of zipkin_annotations
-- ----------------------------
INSERT INTO `zipkin_annotations` VALUES ('0', '6216657633082517953', '6216657633082517953', 'sr', null, '-1', '1529809088537000', '-1062730939', null, '80', 'cloud-simple-service');
INSERT INTO `zipkin_annotations` VALUES ('0', '6216657633082517953', '6216657633082517953', 'ss', null, '-1', '1529809089202000', '-1062730939', null, '80', 'cloud-simple-service');
INSERT INTO `zipkin_annotations` VALUES ('0', '6216657633082517953', '6216657633082517953', 'mvc.controller.class', 0x4C6F67696E436F6E74726F6C6C6572, '6', '1529809088537000', '-1062730939', null, '80', 'cloud-simple-service');
INSERT INTO `zipkin_annotations` VALUES ('0', '6216657633082517953', '6216657633082517953', 'mvc.controller.method', 0x766572696679, '6', '1529809088537000', '-1062730939', null, '80', 'cloud-simple-service');
INSERT INTO `zipkin_annotations` VALUES ('0', '6216657633082517953', '6216657633082517953', 'spring.instance_id', 0x77696E646F777331302E6D6963726F646F6E652E636E3A636C6F75642D73696D706C652D736572766963653A3830, '6', '1529809088537000', '-1062730939', null, '80', 'cloud-simple-service');
INSERT INTO `zipkin_annotations` VALUES ('0', '2883388841109363350', '2883388841109363350', 'sr', null, '-1', '1529809169405000', '-1062730939', null, '80', 'cloud-simple-service');
INSERT INTO `zipkin_annotations` VALUES ('0', '2883388841109363350', '2883388841109363350', 'ss', null, '-1', '1529809169412000', '-1062730939', null, '80', 'cloud-simple-service');
INSERT INTO `zipkin_annotations` VALUES ('0', '2883388841109363350', '2883388841109363350', 'mvc.controller.class', 0x53797341646D696E53747275637475726573436F6E74726F6C6C6572, '6', '1529809169405000', '-1062730939', null, '80', 'cloud-simple-service');
INSERT INTO `zipkin_annotations` VALUES ('0', '2883388841109363350', '2883388841109363350', 'mvc.controller.method', 0x696E646578, '6', '1529809169405000', '-1062730939', null, '80', 'cloud-simple-service');
INSERT INTO `zipkin_annotations` VALUES ('0', '2883388841109363350', '2883388841109363350', 'spring.instance_id', 0x77696E646F777331302E6D6963726F646F6E652E636E3A636C6F75642D73696D706C652D736572766963653A3830, '6', '1529809169405000', '-1062730939', null, '80', 'cloud-simple-service');
INSERT INTO `zipkin_annotations` VALUES ('0', '-3287512792114863461', '-3287512792114863461', 'sr', null, '-1', '1529809211651000', '-1062730939', null, '80', 'cloud-simple-service');
INSERT INTO `zipkin_annotations` VALUES ('0', '-3287512792114863461', '-3287512792114863461', 'ss', null, '-1', '1529809211666000', '-1062730939', null, '80', 'cloud-simple-service');
INSERT INTO `zipkin_annotations` VALUES ('0', '-3287512792114863461', '-3287512792114863461', 'mvc.controller.class', 0x53797341646D696E53747275637475726573436F6E74726F6C6C6572, '6', '1529809211651000', '-1062730939', null, '80', 'cloud-simple-service');
INSERT INTO `zipkin_annotations` VALUES ('0', '-3287512792114863461', '-3287512792114863461', 'mvc.controller.method', 0x696E646578, '6', '1529809211651000', '-1062730939', null, '80', 'cloud-simple-service');
INSERT INTO `zipkin_annotations` VALUES ('0', '-3287512792114863461', '-3287512792114863461', 'spring.instance_id', 0x77696E646F777331302E6D6963726F646F6E652E636E3A636C6F75642D73696D706C652D736572766963653A3830, '6', '1529809211651000', '-1062730939', null, '80', 'cloud-simple-service');
INSERT INTO `zipkin_annotations` VALUES ('0', '859739099607704618', '859739099607704618', 'sr', null, '-1', '1529809217480000', '-1062730939', null, '80', 'cloud-simple-service');
INSERT INTO `zipkin_annotations` VALUES ('0', '859739099607704618', '859739099607704618', 'ss', null, '-1', '1529809217490000', '-1062730939', null, '80', 'cloud-simple-service');
INSERT INTO `zipkin_annotations` VALUES ('0', '859739099607704618', '859739099607704618', 'mvc.controller.class', 0x53797341646D696E47726F757073436F6E74726F6C6C6572, '6', '1529809217480000', '-1062730939', null, '80', 'cloud-simple-service');
INSERT INTO `zipkin_annotations` VALUES ('0', '859739099607704618', '859739099607704618', 'mvc.controller.method', 0x696E646578, '6', '1529809217480000', '-1062730939', null, '80', 'cloud-simple-service');
INSERT INTO `zipkin_annotations` VALUES ('0', '859739099607704618', '859739099607704618', 'spring.instance_id', 0x77696E646F777331302E6D6963726F646F6E652E636E3A636C6F75642D73696D706C652D736572766963653A3830, '6', '1529809217480000', '-1062730939', null, '80', 'cloud-simple-service');
INSERT INTO `zipkin_annotations` VALUES ('0', '-6252813693500601811', '-6252813693500601811', 'sr', null, '-1', '1529809234559000', '-1062730939', null, '80', 'cloud-simple-service');
INSERT INTO `zipkin_annotations` VALUES ('0', '-6252813693500601811', '-6252813693500601811', 'ss', null, '-1', '1529809234567000', '-1062730939', null, '80', 'cloud-simple-service');
INSERT INTO `zipkin_annotations` VALUES ('0', '-6252813693500601811', '-6252813693500601811', 'mvc.controller.class', 0x53797341646D696E5573657273436F6E74726F6C6C6572, '6', '1529809234559000', '-1062730939', null, '80', 'cloud-simple-service');
INSERT INTO `zipkin_annotations` VALUES ('0', '-6252813693500601811', '-6252813693500601811', 'mvc.controller.method', 0x696E646578, '6', '1529809234559000', '-1062730939', null, '80', 'cloud-simple-service');
INSERT INTO `zipkin_annotations` VALUES ('0', '-6252813693500601811', '-6252813693500601811', 'spring.instance_id', 0x77696E646F777331302E6D6963726F646F6E652E636E3A636C6F75642D73696D706C652D736572766963653A3830, '6', '1529809234559000', '-1062730939', null, '80', 'cloud-simple-service');
INSERT INTO `zipkin_annotations` VALUES ('0', '-1304279362368225536', '-1304279362368225536', 'sr', null, '-1', '1529809235771000', '-1062730939', null, '80', 'cloud-simple-service');
INSERT INTO `zipkin_annotations` VALUES ('0', '-1304279362368225536', '-1304279362368225536', 'ss', null, '-1', '1529809235782000', '-1062730939', null, '80', 'cloud-simple-service');
INSERT INTO `zipkin_annotations` VALUES ('0', '-1304279362368225536', '-1304279362368225536', 'mvc.controller.class', 0x53797341646D696E4D656E7573436F6E74726F6C6C6572, '6', '1529809235771000', '-1062730939', null, '80', 'cloud-simple-service');
INSERT INTO `zipkin_annotations` VALUES ('0', '-1304279362368225536', '-1304279362368225536', 'mvc.controller.method', 0x696E646578, '6', '1529809235771000', '-1062730939', null, '80', 'cloud-simple-service');
INSERT INTO `zipkin_annotations` VALUES ('0', '-1304279362368225536', '-1304279362368225536', 'spring.instance_id', 0x77696E646F777331302E6D6963726F646F6E652E636E3A636C6F75642D73696D706C652D736572766963653A3830, '6', '1529809235771000', '-1062730939', null, '80', 'cloud-simple-service');

-- ----------------------------
-- Table structure for `zipkin_dependencies`
-- ----------------------------
DROP TABLE IF EXISTS `zipkin_dependencies`;
CREATE TABLE `zipkin_dependencies` (
  `day` date NOT NULL,
  `parent` varchar(255) NOT NULL,
  `child` varchar(255) NOT NULL,
  `call_count` bigint(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`,`parent`,`child`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

-- ----------------------------
-- Records of zipkin_dependencies
-- ----------------------------

-- ----------------------------
-- Table structure for `zipkin_spans`
-- ----------------------------
DROP TABLE IF EXISTS `zipkin_spans`;
CREATE TABLE `zipkin_spans` (
  `trace_id_high` bigint(20) NOT NULL DEFAULT '0' COMMENT 'If non zero, this means the trace uses 128 bit traceIds instead of 64 bit',
  `trace_id` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `debug` bit(1) DEFAULT NULL,
  `start_ts` bigint(20) DEFAULT NULL COMMENT 'Span.timestamp(): epoch micros used for endTs query and to implement TTL',
  `duration` bigint(20) DEFAULT NULL COMMENT 'Span.duration(): micros used for minDuration and maxDuration query'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

-- ----------------------------
-- Records of zipkin_spans
-- ----------------------------
INSERT INTO `zipkin_spans` VALUES ('0', '6216657633082517953', '6216657633082517953', 'http:/admin/verify', null, null, '1529809088537000', '669416');
INSERT INTO `zipkin_spans` VALUES ('0', '2883388841109363350', '2883388841109363350', 'http:/admin/structures', null, null, '1529809169405000', '7862');
INSERT INTO `zipkin_spans` VALUES ('0', '-3287512792114863461', '-3287512792114863461', 'http:/admin/structures', null, null, '1529809211651000', '15383');
INSERT INTO `zipkin_spans` VALUES ('0', '859739099607704618', '859739099607704618', 'http:/admin/groups', null, null, '1529809217480000', '10545');
INSERT INTO `zipkin_spans` VALUES ('0', '-6252813693500601811', '-6252813693500601811', 'http:/admin/users', null, null, '1529809234559000', '9278');
INSERT INTO `zipkin_spans` VALUES ('0', '-1304279362368225536', '-1304279362368225536', 'http:/admin/menus', null, null, '1529809235771000', '11469');
