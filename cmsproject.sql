/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : cmsproject

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 18/03/2020 14:31:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `address_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address_detail` varchar(255) DEFAULT NULL,
  `is_valid` int(11) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
BEGIN;
INSERT INTO `address` VALUES (1, '芜湖碧桂园', '13167582311', '2123', 1);
INSERT INTO `address` VALUES (2, '北京市海淀区西二旗', '13167582311', '北京市海淀区', 1);
INSERT INTO `address` VALUES (3, '泰安市', '13167582311', '泰安市新泰市', 1);
INSERT INTO `address` VALUES (4, '济南市', '13167582311', '山东大学', 1);
INSERT INTO `address` VALUES (5, '北京市', '13167582311', '领秀新硅谷', 1);
INSERT INTO `address` VALUES (6, '芜湖碧桂园', '13167582311', '2123', 1);
INSERT INTO `address` VALUES (7, '北京市海淀区西二旗7', '13167582311', '北京市海淀区', 1);
INSERT INTO `address` VALUES (8, '泰安市', '13167582311', '泰安市新泰市9', 1);
INSERT INTO `address` VALUES (9, '济南市9', '13167582311', '山东大学', 1);
INSERT INTO `address` VALUES (10, '北京市', '13167582311', '领秀新硅谷10', 1);
COMMIT;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `status` bigint(20) DEFAULT '0',
  `avatar` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `city_name` varchar(12) DEFAULT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`admin_id`),
  KEY `IDX_admin_city_id` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
BEGIN;
INSERT INTO `admin` VALUES (1, 'root', '2018-11-28 21:45:00', 0, 'IMG_1163.jpeg', '123', '北京', 1);
INSERT INTO `admin` VALUES (2, 'yhw', '2018-03-23 12:32:00', 0, '', '123', '山东', 2);
COMMIT;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `city_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(12) DEFAULT NULL,
  `pin_yin` varchar(32) DEFAULT NULL,
  `longitude` float DEFAULT '0',
  `latitude` float DEFAULT '0',
  `area_code` varchar(6) DEFAULT NULL,
  `abbr` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city
-- ----------------------------
BEGIN;
INSERT INTO `city` VALUES (1, '北京', 'Beijing', 116.407, 39.9047, '010', 'BJ');
INSERT INTO `city` VALUES (2, '天津', 'TianJin', 116.407, 39.9047, '012', 'TJ');
INSERT INTO `city` VALUES (3, '石家庄', 'ShiJiaZhuang', 116.407, 39.9047, '0631', 'SJZ');
INSERT INTO `city` VALUES (4, '唐山', 'TangShan', 116.407, 39.9047, '0543', 'TS');
INSERT INTO `city` VALUES (5, '大连', 'DaLian', 116.407, 39.9047, '024', 'DL');
INSERT INTO `city` VALUES (6, '长春', 'ChangChun', 116.407, 39.9047, '0214', 'CHCH');
INSERT INTO `city` VALUES (7, '哈尔滨', 'HaErBin', 116.407, 39.9047, '0875', 'HEB');
INSERT INTO `city` VALUES (8, '济南', 'JiNan', 114.407, 37.9047, '0531', 'JN');
INSERT INTO `city` VALUES (9, '烟台', 'YanTai', 114.407, 37.9047, '0533', 'YT');
INSERT INTO `city` VALUES (10, '淄博', 'ZiBo', 114.407, 37.9047, '0539', 'ZB');
INSERT INTO `city` VALUES (11, '青岛', 'QingDao', 114.407, 41.9047, '0532', 'QD');
INSERT INTO `city` VALUES (12, '泰安', 'TaiAn', 114.407, 41.9047, '0538', 'TA');
COMMIT;

-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `month_sales` int(11) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `activity` varchar(255) DEFAULT NULL,
  `attributes` varchar(255) DEFAULT NULL,
  `specs` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `restaurant_id` bigint(20) DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  KEY `IDX_food_category_id` (`category_id`),
  KEY `IDX_food_restaurant_id` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of food
-- ----------------------------
BEGIN;
INSERT INTO `food` VALUES (1, '小炒肉盖饭', '非常好吃，性价比高', 5, 123, 'real.png', '满20减10', '', '', 1, 1, 0);
INSERT INTO `food` VALUES (2, '韭菜鸡蛋盖饭', '性价比高', 6, 243, 'real.png', '满30减10', '', '', 1, 1, 0);
INSERT INTO `food` VALUES (3, '食品名称1', '食品详情1', 1, 0, 'realWorld.png', '食品活动1', '', '', 1, 1, 0);
INSERT INTO `food` VALUES (4, '兰州拉面', '性价比', 1, 0, 'default.jpg', '满减', '', '', 2, 2, 0);
INSERT INTO `food` VALUES (5, '兰州拉面', '打折', 1, 0, 'default.jpg', '满减', '', '', 1, 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for food_category
-- ----------------------------
DROP TABLE IF EXISTS `food_category`;
CREATE TABLE `food_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  `category_desc` varchar(255) DEFAULT NULL,
  `level` bigint(20) DEFAULT NULL,
  `parent_category_id` bigint(20) DEFAULT NULL,
  `restaurant_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_food_category_restaurant_id` (`restaurant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of food_category
-- ----------------------------
BEGIN;
INSERT INTO `food_category` VALUES (1, '异国料理', '外国人吃饭的口味', 1, 0, 1);
INSERT INTO `food_category` VALUES (2, '日韩料理', '日本和韩国的料理', 2, 1, 2);
INSERT INTO `food_category` VALUES (3, '西餐', '西方人吃的正餐叫西餐', 2, 1, 3);
INSERT INTO `food_category` VALUES (4, '披萨意面', '意大利的一种面', 2, 1, 1);
INSERT INTO `food_category` VALUES (17, '沪菜', '上海菜', 1, 0, 1);
COMMIT;

-- ----------------------------
-- Table structure for order_status
-- ----------------------------
DROP TABLE IF EXISTS `order_status`;
CREATE TABLE `order_status` (
  `status_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1009 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_status
-- ----------------------------
BEGIN;
INSERT INTO `order_status` VALUES (1001, '未支付');
INSERT INTO `order_status` VALUES (1002, '已支付');
INSERT INTO `order_status` VALUES (1003, '已发货');
INSERT INTO `order_status` VALUES (1004, '正在配送');
INSERT INTO `order_status` VALUES (1005, '已接收');
INSERT INTO `order_status` VALUES (1006, '发起退款');
INSERT INTO `order_status` VALUES (1007, '正在退款');
INSERT INTO `order_status` VALUES (1008, '取消订单');
COMMIT;

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `permission_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
BEGIN;
INSERT INTO `permission` VALUES (1, 'ADD', '增加数据');
INSERT INTO `permission` VALUES (2, 'DELETE', '删除数据');
INSERT INTO `permission` VALUES (3, 'UPDATE', '修改数据');
INSERT INTO `permission` VALUES (4, 'QUERY', '查询数据');
COMMIT;

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `shop_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `promotion_info` varchar(255) DEFAULT NULL,
  `float_delivery_fee` int(11) DEFAULT NULL,
  `float_minimum_order_amount` int(11) DEFAULT NULL,
  `is_premium` tinyint(1) DEFAULT NULL,
  `delivery_mode` tinyint(1) DEFAULT NULL,
  `new` tinyint(1) DEFAULT NULL,
  `bao` tinyint(1) DEFAULT NULL,
  `zhun` tinyint(1) DEFAULT NULL,
  `piao` tinyint(1) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `business_license_image` varchar(255) DEFAULT NULL,
  `catering_service_license_image` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recent_order_num` int(11) DEFAULT NULL,
  `rating_count` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `dele` int(11) DEFAULT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop
-- ----------------------------
BEGIN;
INSERT INTO `shop` VALUES (1, '兰州牛肉拉面', '北京市海淀区西二旗北路', 31.2315, 121.457, '店铺简介1', '18842366666', '店铺标语', 5, 20, 1, 1, 1, 1, 1, 1, '05:45', '18:45', 'real.png', 'realWorld.png', 'realWorld.png', '国产料理/面食', 1, 239, 5, 5, 0);
INSERT INTO `shop` VALUES (2, '黄焖鸡米饭', '北京市海淀区西二旗北路', 31.2316, 121.457, '店铺简介1', '18842355555', '店铺标语', 5, 20, 1, 1, 1, 1, 1, 1, '05:45', '18:45', 'real.png', 'realWorld.png', 'realWorld.png', '国产料理/鲁菜', 1, 239, 5, 5, 0);
INSERT INTO `shop` VALUES (3, '新疆大盘鸡', '北京市海淀区西二旗北路', 31.2317, 121.457, '店铺简介1', '18842333333', '店铺标语', 5, 20, 1, 1, 1, 1, 1, 1, '05:45', '18:45', 'real.png', 'realWorld.png', 'realWorld.png', '国产料理/新疆菜', 1, 239, 5, 5, 0);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(12) DEFAULT NULL,
  `register_time` datetime DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `is_active` bigint(20) DEFAULT NULL,
  `balance` bigint(20) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `del_flag` bigint(20) DEFAULT NULL,
  `city_name` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 'wsh', '2019-07-10 10:31:00', '13165872311', 1, 23, '11.png', '123456', 0, '北京');
INSERT INTO `user` VALUES (2, '100phoone', '2019-08-20 23:41:00', '13406208437', 1, 456, 'realworld.png', '123456', 0, '上海');
INSERT INTO `user` VALUES (3, 'da222', '2019-09-18 14:20:00', '13167583421', 1, 34, 'realworld.png', '123456', 0, '山东');
COMMIT;

-- ----------------------------
-- Table structure for user_order
-- ----------------------------
DROP TABLE IF EXISTS `user_order`;
CREATE TABLE `user_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sum_money` bigint(20) DEFAULT '0',
  `time` datetime DEFAULT NULL,
  `order_time` bigint(20) DEFAULT NULL,
  `order_status_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `shop_id` bigint(20) DEFAULT NULL,
  `address_id` bigint(20) DEFAULT NULL,
  `del_flag` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDX_user_order_order_status_id` (`order_status_id`),
  KEY `IDX_user_order_user_id` (`user_id`),
  KEY `IDX_user_order_shop_id` (`shop_id`),
  KEY `IDX_user_order_address_id` (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_order
-- ----------------------------
BEGIN;
INSERT INTO `user_order` VALUES (1, 2019, '2019-09-22 12:00:22', 1569124822, 1001, 1, 1, 1, 0);
INSERT INTO `user_order` VALUES (2, 2019, '2019-09-12 12:12:12', 1568261532, 1001, 1, 3, 1, 0);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
