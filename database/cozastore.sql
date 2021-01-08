/*
 Navicat Premium Data Transfer

 Source Server         : MYSQL
 Source Server Type    : MySQL
 Source Server Version : 100417
 Source Host           : localhost:3306
 Source Schema         : cozastore

 Target Server Type    : MySQL
 Target Server Version : 100417
 File Encoding         : 65001

 Date: 08/01/2021 15:03:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for danhmuc
-- ----------------------------
DROP TABLE IF EXISTS `danhmuc`;
CREATE TABLE `danhmuc`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `madanhmuc` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tendanhmuc` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hinhanh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `modifiedby` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `madanhmuc`(`madanhmuc`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of danhmuc
-- ----------------------------
INSERT INTO `danhmuc` VALUES (1, 'ao-khoac', 'Áo khoác', '', '2021-01-08 04:06:33', 'Tú Uyên', '2021-01-08 04:41:36', 'Tú Uyên');
INSERT INTO `danhmuc` VALUES (2, 'ao-thun', 'Áo thun', '', '2021-01-08 04:16:48', 'Tú Uyên', '2021-01-08 04:41:56', 'Tú Uyên');
INSERT INTO `danhmuc` VALUES (3, 'so-mi', 'Sơ mi', '', '2021-01-08 04:18:08', 'Tú Uyên', '2021-01-08 04:42:16', 'Tú Uyên');
INSERT INTO `danhmuc` VALUES (4, 'quan-dai', 'Quần dài', '', '2021-01-08 04:20:10', 'Tú Uyên', NULL, NULL);
INSERT INTO `danhmuc` VALUES (5, 'quan-short', 'Quần short', '', '2021-01-08 04:20:35', 'Tú Uyên', NULL, NULL);
INSERT INTO `danhmuc` VALUES (6, 'giay-dep', 'Giày dép', '', '2021-01-08 04:21:34', 'Tú Uyên', NULL, NULL);
INSERT INTO `danhmuc` VALUES (7, 'dong-ho', 'Đồng hồ', '', '2021-01-08 04:21:48', 'Tú Uyên', NULL, NULL);
INSERT INTO `danhmuc` VALUES (8, 'balo-tui-xach', 'Balo - Túi xách', '', '2021-01-08 04:22:08', 'Tú Uyên', '2021-01-08 14:04:16', 'Tú Uyên');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for sanpham
-- ----------------------------
DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE `sanpham`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `masanpham` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `madanhmuc` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tensanpham` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gia` int NOT NULL,
  `anhbia` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mota` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `trangthai` bit(1) NOT NULL DEFAULT b'1',
  `createddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `modifiedby` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_sp_mdm`(`madanhmuc`) USING BTREE,
  CONSTRAINT `fk_sp_mdm` FOREIGN KEY (`madanhmuc`) REFERENCES `danhmuc` (`madanhmuc`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1111112 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sanpham
-- ----------------------------
INSERT INTO `sanpham` VALUES (1, 'papa-jacket', 'ao-khoac', 'papa jacket', 899000, 'papajacket-nau-pt-1.jpg', '', b'1', '2021-01-08 13:09:46', 'Tú Uyên', '2021-01-08 14:15:15', 'Tú Uyên');
INSERT INTO `sanpham` VALUES (2, 'collar-shirt', 'so-mi', 'collar shirt', 419000, 'CollarShirt_Trang_LB_1.jpg', '', b'1', '2021-01-08 13:33:28', 'Tú Uyên', '2021-01-08 14:18:32', 'Tú Uyên');
INSERT INTO `sanpham` VALUES (3, 'bus-long-tee', 'ao-thun', 'bus long tee', 299000, 'buslongtee-xanh-pt-2.jpg', '', b'1', '2021-01-08 14:23:03', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (4, 'fall-shirt', 'so-mi', 'fall shirt', 449000, 'fallshirt-be-pt-1.jpg', '', b'1', '2021-01-08 14:24:43', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (5, 'great-life-shirt', 'so-mi', 'great life shirt', 299000, 'great-life-shirt.jpg', '', b'1', '2021-01-08 14:25:36', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (6, 'sheer-blouse', 'so-mi', 'sheer blouse', 399000, 'sheerblouse-cam-pt-1.jpg', '', b'1', '2021-01-08 14:26:39', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (7, 'match-shirt', 'so-mi', 'match shirt', 499000, 'MatchShirt_Den_LB_1.jpg', '', b'1', '2021-01-08 14:44:12', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (8, 'city-sweatshirt', 'ao-thun', 'city sweatshirt', 399000, 'CitySS_Be_PT_1.jpg', '', b'1', '2021-01-08 14:28:57', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (9, 'seize-shirt', 'so-mi', 'seize shirt', 449000, 'seizeshirt-xanh-pt-3.jpg', '', b'1', '2021-01-08 14:46:10', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (10, 'joy-short', 'quan-short', 'joy short', 349000, 'JoyShorts_Nau_PT_2.jpg', '', b'1', '2021-01-08 14:29:48', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (11, 'dos-shirt', 'so-mi', 'dos shirt', 399000, 'dosshirt-den-pt-1.jpg', '', b'1', '2021-01-08 14:31:12', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (12, 'morning-sweatshirt', 'so-mi', 'morning sweatshirt', 349000, 'MorningSS_Trang_PT_2.jpg', '', b'1', '2021-01-08 14:45:05', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (14, 'fluffy-blouse', 'so-mi', 'fluffy blouse', 399000, 'FluffyBlouse_Nau_PT_1.jpg', '', b'1', '2021-01-08 14:38:55', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (15, 'basic-cross-bag', 'balo-tui-xach', 'basic cross bag', 349000, 'basiccrossbag-den-pt-1.jpg', '', b'1', '2021-01-08 14:39:55', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (16, 'biker-jacket', 'ao-khoac', 'biker jacket', 1199000, 'BikerV3_Den_PT_2.jpg', '', b'1', '2021-01-08 14:40:42', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (17, 'finn-shoes', 'giay-dep', 'finn shoes', 599000, 'FINN-SHOES-01.jpg', '', b'1', '2021-01-08 14:41:24', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (18, 'gian-short', 'quan-short', 'gian short', 369000, 'gianshort5.jpg', '', b'1', '2021-01-08 14:42:12', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (19, 'gingham-shirt-her', 'so-mi', 'gingham shirt her', 399000, 'ginghamshirther-xanh-pt-1.jpg', '', b'1', '2021-01-08 14:43:06', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (20, 'sheer-shirt', 'so-mi', 'sheer shirt', 449000, 'sheershirt-xanh-pt-2.jpg', '', b'1', '2021-01-08 14:46:44', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (21, 'parcel-bag', 'balo-tui-xach', 'parcel bag', 399000, 'ParcelBag_PT_2.jpg', '', b'1', '2021-01-08 14:27:34', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (22, 'millen-shirt', 'so-mi', 'millen shirt', 419000, 'MillenShirt_Den_PT_1.jpg', '', b'1', '2021-01-08 14:44:37', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (23, 'bali-short', 'quan-short', 'bali short', 349000, 'balishorts_be_pt_1.jpg', '', b'1', '2021-01-08 14:32:21', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (24, 'joy-shoes', 'giay-dep', 'joy shoes', 520000, 'sss-joy-shoes-den.jpg', '', b'1', '2021-01-08 14:30:29', 'Tú Uyên', '2021-01-08 14:37:11', 'Tú Uyên');
INSERT INTO `sanpham` VALUES (25, 'low-pocket-shirt', 'so-mi', 'low pocket shirt', 399000, 'lowpocketshirt7.jpg', '', b'1', '2021-01-08 14:43:44', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (26, 'sky-sweater', 'ao-thun', 'sky sweater', 549000, 'SkySweater_Xanh_PT_2.jpg', '', b'1', '2021-01-08 14:47:20', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (27, 'thames-short', 'quan-short', 'thames short', 250000, 'thames_shorts__1__min-scaled.jpg', '', b'1', '2021-01-08 14:47:57', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (28, 'win-coat', 'ao-khoac', 'win coat', 999000, 'wincoat-xam-pt-1.jpg', '', b'1', '2021-01-08 14:51:39', 'Tú Uyên', NULL, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  `roleid` int NOT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `modifiedby` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_user_roleid`(`roleid`) USING BTREE,
  CONSTRAINT `fk_user_roleid` FOREIGN KEY (`roleid`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
