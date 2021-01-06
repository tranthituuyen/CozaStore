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

 Date: 04/01/2021 15:04:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chitietsanpham
-- ----------------------------
DROP TABLE IF EXISTS `chitietsanpham`;
CREATE TABLE `chitietsanpham`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `machitiet` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `masanpham` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `size` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mau` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `soluong` int NOT NULL,
  `ngaynhap` timestamp NULL DEFAULT NULL,
  `trangthai` bit(1) NOT NULL DEFAULT b'1',
  `createddate` timestamp NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modifiedby` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_ctsp_msp`(`masanpham`) USING BTREE,
  CONSTRAINT `fk_ctsp_msp` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chitietsanpham
-- ----------------------------
INSERT INTO `chitietsanpham` VALUES (1, 'biker-jacket-den-l', 'biker-jacket', 'xl', 'đen', 1, NULL, b'1', NULL, NULL, NULL, NULL);
INSERT INTO `chitietsanpham` VALUES (2, 'biker-jacket-den-m', 'biker-jacket', 'm', 'đen', 12, NULL, b'1', NULL, NULL, NULL, NULL);
INSERT INTO `chitietsanpham` VALUES (3, 'biker-jacket-nau-l', 'biker-jacket', 'l', 'nâu', 12, NULL, b'1', NULL, NULL, NULL, NULL);
INSERT INTO `chitietsanpham` VALUES (4, 'biker-jacket-nau-m', 'biker-jacket', 'm', 'nâu', 12, NULL, b'1', NULL, NULL, NULL, NULL);
INSERT INTO `chitietsanpham` VALUES (5, 'biker-jacket-nau-xl', 'biker-jacket', 'xl', 'nâu', 12, NULL, b'1', NULL, NULL, NULL, NULL);
INSERT INTO `chitietsanpham` VALUES (6, 'biker-jacket-xam-l', 'biker-jacket', 'l', 'xám', 13, NULL, b'1', NULL, NULL, NULL, NULL);
INSERT INTO `chitietsanpham` VALUES (7, 'biker-jacket-xam-m', 'biker-jacket', 'm', 'xám', 12, NULL, b'1', NULL, NULL, NULL, NULL);
INSERT INTO `chitietsanpham` VALUES (8, 'biker-jacket-xam-xl', 'biker-jacket', 'xl', 'xám', 12, NULL, b'1', NULL, NULL, NULL, NULL);
INSERT INTO `chitietsanpham` VALUES (9, 'bus-long-tee-do-m', 'bus-long-tee', 'm', 'đỏ', 9, NULL, b'1', NULL, NULL, NULL, NULL);
INSERT INTO `chitietsanpham` VALUES (10, 'bus-long-tee-vang-l', 'bus-long-tee', 'l', 'vàng', 8, NULL, b'1', NULL, NULL, NULL, NULL);
INSERT INTO `chitietsanpham` VALUES (11, 'bus-long-tee-xanh-na', 'bus-long-tee', 'l', 'xanh navy', 9, NULL, b'1', NULL, NULL, NULL, NULL);
INSERT INTO `chitietsanpham` VALUES (12, 'finn-shoes-den-42', 'finn-shoes', '42', 'đen', 9, NULL, b'1', NULL, NULL, NULL, NULL);
INSERT INTO `chitietsanpham` VALUES (13, 'finn-shoes-trang-42', 'finn-shoes', '42', 'trắng', 8, NULL, b'1', NULL, NULL, NULL, NULL);
INSERT INTO `chitietsanpham` VALUES (14, 'parcel-bag-den-frees', 'parcel-bag', 'freesize', 'đen', 9, NULL, b'1', NULL, NULL, NULL, NULL);
INSERT INTO `chitietsanpham` VALUES (15, 'sky-sweater-xam-m', 'sky-sweater', 'm', 'xám', 8, NULL, b'1', NULL, NULL, NULL, NULL);
INSERT INTO `chitietsanpham` VALUES (16, 'sky-sweater-xanh-bie', 'sky-sweater', 'l', 'xanh biển nhạt', 0, NULL, b'1', NULL, NULL, NULL, NULL);
INSERT INTO `chitietsanpham` VALUES (17, 'turtle-neck-sweatshi', 'turtle-neck-sweatshi', 'm', 'xanh navy', 9, NULL, b'1', NULL, NULL, NULL, NULL);
INSERT INTO `chitietsanpham` VALUES (18, 'win-coat-be-l', 'win-coat', 'l', 'be', 9, NULL, b'1', NULL, NULL, NULL, NULL);
INSERT INTO `chitietsanpham` VALUES (19, 'win-coat-den-m', 'win-coat', 'm', 'đen', 9, NULL, b'1', NULL, NULL, NULL, NULL);
INSERT INTO `chitietsanpham` VALUES (20, 'win-coat-nau-l', 'win-coat', 'l', 'nâu', 1, NULL, b'1', NULL, NULL, NULL, NULL);
INSERT INTO `chitietsanpham` VALUES (21, 'win-coat-xam-m', 'win-coat', 'm', 'xám', 1, NULL, b'1', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for danhmuc
-- ----------------------------
DROP TABLE IF EXISTS `danhmuc`;
CREATE TABLE `danhmuc`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `madanhmuc` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tendanhmuc` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hinhanh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `madanhmuc`(`madanhmuc`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of danhmuc
-- ----------------------------
INSERT INTO `danhmuc` VALUES (1, 'ao-khoac', 'Áo khoác', '');
INSERT INTO `danhmuc` VALUES (2, 'ao-thun', 'Áo thun', '');
INSERT INTO `danhmuc` VALUES (3, 'balo-tui-xach', 'Balo - Túi xách', '');
INSERT INTO `danhmuc` VALUES (4, 'dong-ho', 'Đồng hồ', '');
INSERT INTO `danhmuc` VALUES (5, 'giay-dep', 'Giày dép', '');
INSERT INTO `danhmuc` VALUES (6, 'quan-dai', 'Quần dài', '');
INSERT INTO `danhmuc` VALUES (7, 'quan-short', 'Quần short', '');
INSERT INTO `danhmuc` VALUES (8, 'so-mi', 'Sơ mi', '');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifiedby` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `role` VALUES (2, 'user', 'user', NULL, NULL, NULL, NULL);

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
  `mota` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trangthai` bit(1) NOT NULL DEFAULT b'1',
  `createddate` timestamp NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modifiedby` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_sp_mdm`(`madanhmuc`) USING BTREE,
  INDEX `masanpham`(`masanpham`) USING BTREE,
  CONSTRAINT `fk_sp_mdm` FOREIGN KEY (`madanhmuc`) REFERENCES `danhmuc` (`madanhmuc`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sanpham
-- ----------------------------
INSERT INTO `sanpham` VALUES (1, 'bali-short', 'quan-short', 'bali short', 349000, 'balishorts_be_pt_1.jpg', '', b'1', NULL, NULL, NULL, NULL);
INSERT INTO `sanpham` VALUES (2, 'basic-cross-bag', 'balo-tui-xach', 'basic cross bag', 349000, 'basiccrossbag-den-pt-1.jpg', '', b'1', NULL, NULL, NULL, NULL);
INSERT INTO `sanpham` VALUES (3, 'berlin-shirt', 'so-mi', 'berlin shirt', 419000, 'berlinshirt_nau_pt.jpg', '', b'1', NULL, NULL, NULL, NULL);
INSERT INTO `sanpham` VALUES (4, 'biker-jacket', 'ao-khoac', 'biker jacket', 1199000, 'BikerV3_Den_PT_2.jpg', '', b'1', NULL, NULL, NULL, NULL);
INSERT INTO `sanpham` VALUES (5, 'bus-long-tee', 'ao-thun', 'bus long tee', 299000, 'buslongtee-vang-pt-1.jpg', '', b'1', NULL, NULL, NULL, NULL);
INSERT INTO `sanpham` VALUES (6, 'collar-shirt', 'so-mi', 'collar shirt', 419000, 'CollarShirt_Den_LB_1.jpg', '', b'1', NULL, NULL, NULL, NULL);
INSERT INTO `sanpham` VALUES (7, 'dos-shirt', 'so-mi', 'dos shirt', 399000, 'dosshirt-den-pt-1.jpg', '', b'1', NULL, NULL, NULL, NULL);
INSERT INTO `sanpham` VALUES (8, 'fall-shirt', 'so-mi', 'fall shirt', 449000, 'fallshirt-be-pt-1.jpg', '', b'1', NULL, NULL, NULL, NULL);
INSERT INTO `sanpham` VALUES (9, 'finn-shoes', 'giay-dep', 'finn shoes', 599000, 'FINN-SHOES-01.jpg', '', b'1', NULL, NULL, NULL, NULL);
INSERT INTO `sanpham` VALUES (10, 'fluffy-blouse', 'so-mi', 'fluffy blouse', 399000, 'FluffyBlouse_Nau_PT_1.jpg', '', b'1', NULL, NULL, NULL, NULL);
INSERT INTO `sanpham` VALUES (11, 'gian-short', 'quan-short', 'gian short', 369000, 'gianshort5.jpg', '', b'1', NULL, NULL, NULL, NULL);
INSERT INTO `sanpham` VALUES (12, 'gingham-shirt-her', 'so-mi', 'gingham shirt', 399000, 'ginghamshirther-xanh-pt-1.jpg', '', b'1', NULL, NULL, NULL, NULL);
INSERT INTO `sanpham` VALUES (13, 'great-life-shirt', 'so-mi', 'great life shirt', 299000, 'great-life-shirt.jpg', '', b'1', NULL, NULL, NULL, NULL);
INSERT INTO `sanpham` VALUES (14, 'henry-shoes', 'giay-dep', 'henry shoes', 499000, 'HENRY-SHOES-DEN.jpg', '', b'1', NULL, NULL, NULL, NULL);
INSERT INTO `sanpham` VALUES (15, 'joy-short', 'so-mi', 'joy short', 349000, 'JoyShorts_Den_PT_3.jpg', '', b'1', NULL, NULL, NULL, NULL);
INSERT INTO `sanpham` VALUES (16, 'low-pocket-shirt', 'so-mi', 'low pocket shirt', 399000, 'lowpocketshirt7.jpg', '', b'1', NULL, NULL, NULL, NULL);
INSERT INTO `sanpham` VALUES (17, 'match-shirt', 'so-mi', 'match shirt', 499000, 'MatchShirt_Den_LB_1.jpg', '', b'1', NULL, NULL, NULL, NULL);
INSERT INTO `sanpham` VALUES (18, 'millen-shirt', 'so-mi', 'millen shirt', 419000, 'MillenShirt_Den_PT_1.jpg', '', b'1', NULL, NULL, NULL, NULL);
INSERT INTO `sanpham` VALUES (19, 'morning-sweatshirt', 'so-mi', 'morning sweatshirt', 349000, 'MorningSS_Trang_PT_2.jpg', '', b'1', NULL, NULL, NULL, NULL);
INSERT INTO `sanpham` VALUES (20, 'parcel-bag', 'balo-tui-xach', 'parcel bag', 399000, 'ParcelBag_PT_2.jpg', '', b'1', NULL, NULL, NULL, NULL);
INSERT INTO `sanpham` VALUES (21, 'sam-shirt', 'so-mi', 'sam shirt', 399000, 'SamShirt_Den_PT_2.jpg', '', b'1', NULL, NULL, NULL, NULL);
INSERT INTO `sanpham` VALUES (22, 'seize-shirt', 'so-mi', 'seize shirt', 449000, 'seizeshirt-xanh-pt-3.jpg', '', b'1', NULL, NULL, NULL, NULL);
INSERT INTO `sanpham` VALUES (23, 'sheer-blouse', 'so-mi', 'sheer blouse', 399000, 'sheerblouse-cam-pt-1.jpg', '', b'1', NULL, NULL, NULL, NULL);
INSERT INTO `sanpham` VALUES (24, 'sheer-shirt', 'so-mi', 'sheer shirt', 449000, 'sheershirt-xanh-pt-2.jpg', '', b'1', NULL, NULL, NULL, NULL);
INSERT INTO `sanpham` VALUES (25, 'sky-sweater', 'ao-khoac', 'sky sweater', 549000, 'SkySweater_Xanh_PT_2.jpg', '', b'1', NULL, NULL, NULL, NULL);
INSERT INTO `sanpham` VALUES (26, 'thames-short', 'quan-short', 'thames short', 250000, 'thames_shorts__1__min-scaled.jpg', '', b'1', NULL, NULL, NULL, NULL);
INSERT INTO `sanpham` VALUES (27, 'turtle-neck-sweatshi', 'so-mi', 'turtle neck sweatshirt', 299000, 'TurtleNeckSS_Den_PT_1.jpg', '', b'1', NULL, NULL, NULL, NULL);
INSERT INTO `sanpham` VALUES (28, 'win-coat', 'ao-khoac', 'win coat', 999000, 'wincoat-xam-pt-1.jpg', '', b'1', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fullname` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int NOT NULL,
  `roleid` bigint NOT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifiedby` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '123456', 'admin', 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (2, 'nva', '123456', 'nguyen van a', 1, 2, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (3, 'nvb', '123456', 'nguyen van b', 1, 2, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
